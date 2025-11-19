@interface SASymbol
+ (void)symbolWithOffsetIntoSegment:(uint64_t)a3 length:(void *)a4 name:;
- (id)addInlineSourceInfoWithOffsetIntoSegment:(uint64_t)a3 length:(int)a4 lineNum:(int)a5 columnNum:(void *)a6 filePath:;
- (id)addNonInlineSourceInfoWithOffsetIntoSegment:(uint64_t)a3 length:(int)a4 lineNum:(int)a5 columnNum:(void *)a6 filePath:;
- (id)debugDescription;
@end

@implementation SASymbol

- (id)addInlineSourceInfoWithOffsetIntoSegment:(uint64_t)a3 length:(int)a4 lineNum:(int)a5 columnNum:(void *)a6 filePath:
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_27:
    v17 = 0;
    goto LABEL_21;
  }

  if (!a3)
  {
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [a1 debugDescription];
      *buf = 136315906;
      v40 = [v25 UTF8String];
      v41 = 2080;
      v42 = [a6 UTF8String];
      v43 = 1024;
      v44 = a4;
      v45 = 1024;
      v46 = a5;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "%s: inlining 0-length source info %s:%d,%d", buf, 0x22u);
    }

    *__error() = v23;
    v26 = [a1 debugDescription];
    v27 = v26;
    v28 = [v26 UTF8String];
    v29 = a6;
    [a6 UTF8String];
    _SASetCrashLogMessage(4565, "%s: inlining 0-length source info %s:%d,%d", v30, v31, v32, v33, v34, v35, v28);

    _os_crash();
    __break(1u);
    goto LABEL_27;
  }

  v10 = a1;
  objc_sync_enter(v10);
  v11 = v10[4];
  if (!v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v13 = v10[4];
    v10[4] = v12;

    v11 = v10[4];
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __87__SASymbol_addInlineSourceInfoWithOffsetIntoSegment_length_lineNum_columnNum_filePath___block_invoke;
  v38[3] = &__block_descriptor_48_e22_q16__0__SASourceInfo_8l;
  v38[4] = a2;
  v38[5] = a3;
  v14 = SABinarySearchArray(v11, 1536, v38);
  v15 = v14;
  if (v14)
  {
    v16 = v14 - 1;
    while (1)
    {
      v17 = [v10[4] objectAtIndexedSubscript:v16];
      if ([v17 offsetIntoSegment] != a2 || objc_msgSend(v17, "length") != a3)
      {
        break;
      }

      if (a6)
      {
        v18 = [v17 filePath];
        if (v18)
        {
          v19 = [v17 filePath];
          if ([a6 isEqualToString:v19] && objc_msgSend(v17, "lineNum") == a4)
          {
            v20 = [v17 columnNum] == a5;

            if (v20)
            {
              goto LABEL_20;
            }
          }

          else
          {
          }
        }
      }

      if (--v16 == -1)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_19:
  v17 = [SASourceInfo sourceInfoWithOffsetIntoSegment:a2 length:a3 lineNum:a4 columnNum:a5 filePath:a6];
  [v10[4] insertObject:v17 atIndex:v15];
LABEL_20:
  objc_sync_exit(v10);

LABEL_21:
  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)addNonInlineSourceInfoWithOffsetIntoSegment:(uint64_t)a3 length:(int)a4 lineNum:(int)a5 columnNum:(void *)a6 filePath:
{
  v47 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = a1;
    objc_sync_enter(v11);
    v12 = v11[4];
    if (!v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      v14 = v11[4];
      v11[4] = v13;

      v12 = v11[4];
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __90__SASymbol_addNonInlineSourceInfoWithOffsetIntoSegment_length_lineNum_columnNum_filePath___block_invoke;
    v37[3] = &__block_descriptor_40_e22_q16__0__SASourceInfo_8l;
    v37[4] = a2;
    v15 = SABinarySearchArray(v12, 1280, v37);
    if (v15 < [v11[4] count])
    {
      v16 = a5;
      v17 = a6;
      v18 = [v11[4] objectAtIndexedSubscript:v15];
      if ([v18 offsetIntoSegment] == a2)
      {
LABEL_18:
        objc_sync_exit(v11);

        goto LABEL_19;
      }

      v19 = a3 + a2;
      if (a3 + a2 > [v18 offsetIntoSegment])
      {
        v20 = *__error();
        v21 = _sa_logt();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v34 = [v18 debugDescription];
          *buf = 138413570;
          v39 = v17;
          v40 = 1024;
          *v41 = a4;
          *&v41[4] = 1024;
          *&v41[6] = v16;
          *v42 = 2048;
          *&v42[2] = a2;
          v43 = 2048;
          v44 = v19;
          v45 = 2112;
          v46 = v34;
          v35 = v34;
          _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "new source info %@:%d,%d (0x%llx-0x%llx) overlaps existing %@", buf, 0x36u);
        }

        *__error() = v20;
        a3 = [v18 offsetIntoSegment] - a2;
      }

      a6 = v17;
      a5 = v16;
    }

    if (v15)
    {
      v36 = a4;
      v22 = a5;
      v23 = a6;
      v24 = [v11[4] objectAtIndexedSubscript:v15 - 1];
      v25 = [v24 offsetIntoSegment];
      if ([v24 length] + v25 > a2)
      {
        v26 = *__error();
        v27 = _sa_logt();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v33 = [v24 debugDescription];
          *buf = 138413570;
          v39 = v33;
          v40 = 2112;
          *v41 = v23;
          *&v41[8] = 1024;
          *v42 = v36;
          *&v42[4] = 1024;
          *&v42[6] = v22;
          v43 = 2048;
          v44 = a2;
          v45 = 2048;
          v46 = a3 + a2;
          _os_log_error_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_ERROR, "existing source info %@ overlaps new %@:%d,%d (0x%llx-0x%llx)", buf, 0x36u);
        }

        *__error() = v26;
        v28 = [v24 offsetIntoSegment];
        v29 = [v24 length];
        v30 = [v24 offsetIntoSegment];
        a3 = a3 + a2 - (v28 + v29);
        a2 = [v24 length] + v30;
      }

      a6 = v23;
      a5 = v22;
      a4 = v36;
    }

    v18 = [SASourceInfo sourceInfoWithOffsetIntoSegment:a2 length:a3 lineNum:a4 columnNum:a5 filePath:a6];
    [v11[4] insertObject:v18 atIndex:v15];
    goto LABEL_18;
  }

  v18 = 0;
LABEL_19:
  v31 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (void)symbolWithOffsetIntoSegment:(uint64_t)a3 length:(void *)a4 name:
{
  v7 = objc_alloc_init(objc_opt_self());
  v7[1] = a2;
  v7[2] = a3;
  v8 = [a4 copy];
  v9 = v7[3];
  v7[3] = v8;

  return v7;
}

uint64_t __51__SASymbol_nonInlineSourceInfoAtOffsetIntoSegment___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 offsetIntoSegment];
  if (v4 >= [a2 length] + v5)
  {
    return 1;
  }

  v6 = *(a1 + 32);
  if (v6 >= [a2 offsetIntoSegment])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t __90__SASymbol_addNonInlineSourceInfoWithOffsetIntoSegment_length_lineNum_columnNum_filePath___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4 > [a2 offsetIntoSegment])
  {
    return 1;
  }

  v6 = *(a1 + 32);
  if (v6 >= [a2 offsetIntoSegment])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t __87__SASymbol_addInlineSourceInfoWithOffsetIntoSegment_length_lineNum_columnNum_filePath___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 offsetIntoSegment];
  v5 = *(a1 + 32);
  if (v5 > v4)
  {
    return 1;
  }

  if (v5 < v4)
  {
    return -1;
  }

  v7 = [a2 length];
  v8 = *(a1 + 40);
  v9 = v8 > v7;
  v10 = v8 < v7;
  if (v9)
  {
    return -1;
  }

  else
  {
    return v10;
  }
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self->_name)
  {
    name = self->_name;
  }

  else
  {
    name = @"???";
  }

  v5 = [v3 initWithFormat:@"%@ (0x%llx-0x%llx, %lu source infos)", name, self->_offsetIntoSegment, self->_length + self->_offsetIntoSegment, -[NSMutableArray count](self->_sourceInfos, "count")];

  return v5;
}

@end