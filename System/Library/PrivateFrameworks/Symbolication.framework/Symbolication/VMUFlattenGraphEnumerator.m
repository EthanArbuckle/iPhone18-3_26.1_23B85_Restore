@interface VMUFlattenGraphEnumerator
- (VMUFlattenGraphEnumerator)initWithGraph:(id)a3 graphEnumerator:(id)a4;
- (void)dealloc;
- (void)enumerateEdgesOfNode:(unsigned int)a3 withBlock:(id)a4;
@end

@implementation VMUFlattenGraphEnumerator

- (VMUFlattenGraphEnumerator)initWithGraph:(id)a3 graphEnumerator:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = VMUFlattenGraphEnumerator;
  v7 = [(VMUGraphEnumerator *)&v14 initWithGraph:a3];
  graphEnumerator = v7->_graphEnumerator;
  v7->_graphEnumerator = v6;

  v9 = [(VMUGraphEnumerator *)v7 graph];
  LODWORD(v6) = [v9 nodeNamespaceSize];
  v10 = malloc_type_calloc(1uLL, ((v6 + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v10 = v6;
  v7->_deliveredReachable = v10;

  v11 = [(VMUGraphEnumerator *)v7 graph];
  LODWORD(v6) = [v11 nodeNamespaceSize];
  v12 = malloc_type_calloc(1uLL, ((v6 + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v12 = v6;
  v7->_topLevel = v12;

  return v7;
}

- (void)dealloc
{
  free(self->_deliveredReachable);
  free(self->_topLevel);
  v3.receiver = self;
  v3.super_class = VMUFlattenGraphEnumerator;
  [(VMUFlattenGraphEnumerator *)&v3 dealloc];
}

- (void)enumerateEdgesOfNode:(unsigned int)a3 withBlock:(id)a4
{
  v6 = a4;
  if (!self->_iteratingTopLevel)
  {
    deliveredReachable = self->_deliveredReachable;
    if (*deliveredReachable <= a3 || (v8 = a3 >> 3, v9 = *(deliveredReachable + v8 + 4), v10 = 1 << (a3 & 7), (v10 & v9) == 0) || (v11 = self->_topLevel, *v11 > a3) && (v10 & *(v11 + v8 + 4)) != 0)
    {
      v45 = v6;
      self->_iteratingTopLevel = 1;
      v12 = [(VMUGraphEnumerator *)self graph];
      v13 = [v12 nodeNamespaceSize];
      v14 = malloc_type_calloc(1uLL, ((v13 + 7) >> 3) + 4, 0xB2EC2458uLL);
      *v14 = v13;

      v57 = 0;
      v58 = &v57;
      v59 = 0x2020000000;
      v60 = 0;
      v15 = [(VMUGraphEnumerator *)self graph];
      v16 = 4 * [v15 nodeNamespaceSize];
      v17 = malloc_type_malloc(v16, 0x100004052888210uLL);
      __pattern4[0] = -1;
      memset_pattern4(v17, __pattern4, v16);

      v18 = v58;
      v19 = v58[3];
      v17[v19] = a3;
      v18[3] = v19 + 1;
      v20 = v14 + 1;
      v21 = v58;
      v22 = v58[3];
      if (v22 >= 1)
      {
        while (1)
        {
          v23 = v22 - 1;
          v21[3] = v23;
          v24 = v17[v23];
          if (*v14 <= v24)
          {
            goto LABEL_10;
          }

          v25 = *(v20 + (v24 >> 3));
          v26 = 1 << (v24 & 7);
          if ((v26 & v25) == 0)
          {
            break;
          }

LABEL_11:
          v22 = v21[3];
          if (v22 <= 0)
          {
            goto LABEL_12;
          }
        }

        *(v20 + (v24 >> 3)) = v25 | v26;
LABEL_10:
        graphEnumerator = self->_graphEnumerator;
        v51 = MEMORY[0x1E69E9820];
        v52 = 3221225472;
        v53 = __60__VMUFlattenGraphEnumerator_enumerateEdgesOfNode_withBlock___block_invoke;
        v54 = &unk_1E8278648;
        v55 = &v57;
        v56 = v17;
        [VMUGraphEnumerator enumerateEdgesOfNode:"enumerateEdgesOfNode:withBlock:" withBlock:?];
        v21 = v58;
        goto LABEL_11;
      }

LABEL_12:
      free(v17);
      topLevel = self->_topLevel;
      if (*topLevel > a3)
      {
        *(topLevel + (a3 >> 3) + 4) |= 1 << (a3 & 7);
      }

      v29 = self->_deliveredReachable;
      v30 = *v29;
      if (*v29 >= *v14)
      {
        v30 = *v14;
      }

      v31 = v30 + 7;
      if (v31 >= 8)
      {
        v32 = (v14 + 1);
        v33 = v29 + 1;
        v34 = v31 >> 3;
        do
        {
          v35 = *v32++;
          *v33++ |= v35;
          --v34;
        }

        while (v34);
      }

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v47 = __60__VMUFlattenGraphEnumerator_enumerateEdgesOfNode_withBlock___block_invoke_2;
      v48 = &unk_1E8278698;
      v50 = a3;
      v49 = v45;
      v36 = v46;
      v37 = *v14;
      if (*v14)
      {
        v38 = 0;
        v39 = 1;
        do
        {
          v40 = v38 >> 3;
          v41 = *(v20 + v40);
          v42 = v39;
          if (*(v20 + v40))
          {
            do
            {
              if (v41)
              {
                v47(v36, v42 - 1);
              }

              if (v41 < 2)
              {
                break;
              }

              v41 >>= 1;
            }

            while (v42++ < v37);
          }

          v38 += 8;
          v39 += 8;
        }

        while (v38 < v37);
      }

      free(v14);
      *(&self->super.super.isa + v44) = 0;

      _Block_object_dispose(&v57, 8);
      v6 = v45;
    }
  }
}

uint64_t __60__VMUFlattenGraphEnumerator_enumerateEdgesOfNode_withBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 40);
  v5 = *(*(result + 32) + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  *(v4 + 4 * v6) = a4;
  return result;
}

uint64_t __60__VMUFlattenGraphEnumerator_enumerateEdgesOfNode_withBlock___block_invoke_2(uint64_t result, int a2)
{
  v2 = 0;
  if (*(result + 40) != a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

@end