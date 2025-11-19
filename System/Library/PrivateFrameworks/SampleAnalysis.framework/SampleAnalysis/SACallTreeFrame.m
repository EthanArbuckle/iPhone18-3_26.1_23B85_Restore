@interface SACallTreeFrame
+ (void)enumerateTree:(uint64_t)a3 block:;
- (SACallTreeFrame)initWithFrame:(id)a3 startSampleIndex:(unint64_t)a4 sampleCount:(unint64_t)a5 isLeafFrame:(BOOL)a6;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SACallTreeFrame

- (SACallTreeFrame)initWithFrame:(id)a3 startSampleIndex:(unint64_t)a4 sampleCount:(unint64_t)a5 isLeafFrame:(BOOL)a6
{
  v13.receiver = self;
  v13.super_class = SACallTreeFrame;
  v8 = [(SACallTreeNode *)&v13 initWithStartSampleIndex:a4 sampleCount:a5];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_frame, a3);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    children = v9->_children;
    v9->_children = v10;

    v9->_isLeafFrame = a6;
  }

  return v9;
}

+ (void)enumerateTree:(uint64_t)a3 block:
{
  objc_opt_self();
  v5 = objc_autoreleasePoolPush();
  v6 = malloc_type_malloc(0x800uLL, 0x80040B8603338uLL);
  v7 = malloc_type_malloc(0x400uLL, 0x100004052888210uLL);
  v8 = 0;
  v9 = 0;
  *v6 = a2;
  *v7 = 0;
  v30 = 256;
  while (1)
  {
    v10 = v6[v9];
    v11 = v9;
    if ([v10 count] <= v8)
    {
      break;
    }

    v12 = v9;
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_8:
    v13 = [v10 objectAtIndexedSubscript:v8];
    ++v7[v12];
    LOBYTE(v31.receiver) = 0;
    (*(a3 + 16))(a3, v13, v9, &v31);
    if (v31.receiver)
    {
      goto LABEL_23;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13[5];
      if ([v14 count])
      {
        v9 = (v9 + 1);
        v15 = v30;
        if (v9 >= v30)
        {
          v15 = (2 * v30);
          v6 = reallocf(v6, 8 * v15);
          v7 = reallocf(v7, 4 * v15);
        }

        v30 = v15;
        v6[v9] = v14;
        v7[v9] = 0;
      }

      goto LABEL_20;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_20;
    }

    v29 = v5;
    v16 = v13;
    v17 = [SACallTreeStateChildren alloc];
    v28 = [v16 startSampleIndex];
    v19 = [v16 sampleCount];
    if (v16)
    {
      v20 = objc_getProperty(v16, v18, 88, 1);
      v22 = objc_getProperty(v16, v21, 80, 1);
      v27 = v16[9];
      v23 = v16[10];
      if (!v17)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v27 = 0;
      v20 = 0;
      v22 = 0;
      v23 = 0;
      if (!v17)
      {
LABEL_22:
        v25 = 0;
        goto LABEL_19;
      }
    }

    v31.receiver = v17;
    v31.super_class = SACallTreeStateChildren;
    v24 = objc_msgSendSuper2(&v31, sel_initWithStartSampleIndex_sampleCount_, v28, v19);
    v25 = v24;
    if (v24)
    {
      objc_storeStrong(v24 + 4, v20);
      objc_storeStrong(v25 + 5, v22);
      *(v25 + 6) = v27;
      *(v25 + 7) = v23;
    }

LABEL_19:
    v5 = v29;

    LOBYTE(v31.receiver) = 0;
    (*(a3 + 16))(a3, v25, (v9 + 1), &v31);
    receiver = v31.receiver;

    if (receiver)
    {
      goto LABEL_23;
    }

LABEL_20:
    v8 = v7[v9];
  }

  while (v11)
  {
    v12 = v11 - 1;
    v10 = v6[v11 - 1];
    v8 = v7[--v11];
    if ([v10 count] > v8)
    {
      v9 = v12;
      if (!v10)
      {
        break;
      }

      goto LABEL_8;
    }
  }

LABEL_23:
  free(v6);
  free(v7);
  objc_autoreleasePoolPop(v5);
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  [(SAFrame *)self->_frame writeJSONDictionaryEntriesToStream:?];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SACallTreeNode sampleCount](self, "sampleCount")}];
  SAJSONWriteDictionaryEntry(a3, @"count", v5);
}

@end