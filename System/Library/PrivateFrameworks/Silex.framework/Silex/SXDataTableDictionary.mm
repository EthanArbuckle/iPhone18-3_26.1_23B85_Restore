@interface SXDataTableDictionary
+ (SXDataTableDictionary)dataTableDictionaryWithRows:(unint64_t)a3 andColumns:(unint64_t)a4;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPathForIndex:(unint64_t)a3;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPathOfObject:(id)a3;
- (SXDataTableDictionary)initWithRows:(unint64_t)a3 andColumns:(unint64_t)a4;
- (id)arrayWithObject:(id)a3 forCount:(unint64_t)a4;
- (id)description;
- (id)objectForIndexPath:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)indexForIndexPath:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForIndexPath:(id)a3;
- (void)setObject:(id)a3 forIndexPath:(id)a4;
@end

@implementation SXDataTableDictionary

+ (SXDataTableDictionary)dataTableDictionaryWithRows:(unint64_t)a3 andColumns:(unint64_t)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithRows:a3 andColumns:a4];

  return v4;
}

- (SXDataTableDictionary)initWithRows:(unint64_t)a3 andColumns:(unint64_t)a4
{
  if (a3 == -1 || a4 == -1)
  {

    return 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SXDataTableDictionary;
    v6 = [(SXDataTableDictionary *)&v14 init];
    v7 = v6;
    if (v6)
    {
      v6->_numberOfRows = a3;
      v6->_numberOfColumns = a4;
      v8 = [MEMORY[0x1E695DFB0] null];
      v9 = [(SXDataTableDictionary *)v7 arrayWithObject:v8 forCount:a4 * a3];
      storage = v7->_storage;
      v7->_storage = v9;

      v11 = [MEMORY[0x1E696AD50] indexSet];
      indexes = v7->_indexes;
      v7->_indexes = v11;
    }
  }

  return v7;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPathOfObject:(id)a3
{
  v4 = a3;
  v5 = [(SXDataTableDictionary *)self storage];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = -1;
    v8 = -1;
  }

  else
  {
    v7 = [(SXDataTableDictionary *)self indexPathForIndex:v6];
  }

  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (id)objectForIndexPath:(id)a3
{
  v4 = [(SXDataTableDictionary *)self indexForIndexPath:a3.var0, a3.var1];
  if (v4 == -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = v4;
    v6 = [(SXDataTableDictionary *)self storage];
    v7 = [v6 objectAtIndex:v5];
  }

  v8 = [MEMORY[0x1E695DFB0] null];
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v9;
}

- (void)setObject:(id)a3 forIndexPath:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v11 = a3;
  v7 = [(SXDataTableDictionary *)self indexForIndexPath:var0, var1];
  if (v7 != -1)
  {
    v8 = v7;
    if (v11)
    {
      v9 = [(SXDataTableDictionary *)self indexes];
      [v9 addIndex:v8];

      v10 = [(SXDataTableDictionary *)self storage];
      [v10 replaceObjectAtIndex:v8 withObject:v11];
    }

    else
    {
      [(SXDataTableDictionary *)self removeObjectForIndexPath:var0, var1];
    }
  }
}

- (void)removeObjectForIndexPath:(id)a3
{
  v4 = [(SXDataTableDictionary *)self indexForIndexPath:a3.var0, a3.var1];
  if (v4 != -1)
  {
    v5 = v4;
    v6 = [(SXDataTableDictionary *)self indexes];
    [v6 removeIndex:v5];

    v8 = [(SXDataTableDictionary *)self storage];
    v7 = [MEMORY[0x1E695DFB0] null];
    [v8 replaceObjectAtIndex:v5 withObject:v7];
  }
}

- (void)removeAllObjects
{
  v3 = [(SXDataTableDictionary *)self indexes];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__SXDataTableDictionary_removeAllObjects__block_invoke;
  v4[3] = &unk_1E8500E10;
  v4[4] = self;
  [v3 enumerateIndexesUsingBlock:v4];
}

uint64_t __41__SXDataTableDictionary_removeAllObjects__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [v2 indexPathForIndex:a2];

  return [v2 removeObjectForIndexPath:{v4, v3}];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  var0 = a3->var0;
  if (!a3->var0)
  {
    a3->var2 = a3->var3;
  }

  v10 = [(SXDataTableDictionary *)self indexes];
  v11 = [v10 count];

  if (var0 < v11)
  {
    a3->var1 = a4;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    v12 = [(SXDataTableDictionary *)self indexes];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__SXDataTableDictionary_countByEnumeratingWithState_objects_count___block_invoke;
    v16[3] = &unk_1E8500E38;
    v16[6] = &v18;
    v16[7] = var0;
    v16[8] = a5;
    v16[9] = a4;
    v16[4] = self;
    v16[5] = v17;
    [v12 enumerateIndexesUsingBlock:v16];

    _Block_object_dispose(v17, 8);
  }

  v13 = v19;
  a3->var0 = v19[3] + var0;
  v14 = v13[3];
  _Block_object_dispose(&v18, 8);
  return v14;
}

void *__67__SXDataTableDictionary_countByEnumeratingWithState_objects_count___block_invoke(void *result, uint64_t a2)
{
  v2 = *(result[5] + 8);
  v3 = *(v2 + 24);
  if (v3 >= result[7])
  {
    v4 = result;
    if (*(*(result[6] + 8) + 24) < result[8])
    {
      v5 = result[4];
      v6 = [v5 indexPathForIndex:a2];
      result = [v5 objectForIndexPath:{v6, v7}];
      *(v4[9] + 8 * (*(*(v4[6] + 8) + 24))++) = result;
      v2 = *(v4[5] + 8);
      v3 = *(v2 + 24);
    }
  }

  *(v2 + 24) = v3 + 1;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPathForIndex:(unint64_t)a3
{
  v5 = [(SXDataTableDictionary *)self numberOfColumns];
  v6 = a3 / v5 * v5;
  v7 = a3 % v5;
  v8 = v6 / [(SXDataTableDictionary *)self numberOfColumns];
  v9 = v7;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (unint64_t)indexForIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  if (a3.var0 >= [(SXDataTableDictionary *)self numberOfRows]|| var1 >= [(SXDataTableDictionary *)self numberOfColumns])
  {
    return -1;
  }

  else
  {
    return var1 + [(SXDataTableDictionary *)self numberOfColumns]* var0;
  }
}

- (id)arrayWithObject:(id)a3 forCount:(unint64_t)a4
{
  v5 = a3;
  for (i = [MEMORY[0x1E695DF70] array];
  {
    [i addObject:v5];
  }

  return i;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{\n"];
  if ([(SXDataTableDictionary *)self numberOfRows])
  {
    v4 = 0;
    do
    {
      if ([(SXDataTableDictionary *)self numberOfColumns])
      {
        v5 = 0;
        do
        {
          v6 = [(SXDataTableDictionary *)self objectForIndexPath:v4, v5];
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{row: %lu, column: %lu}", v4, v5];
          v8 = [v6 description];
          [v3 appendFormat:@"\t%@ = %@ \n", v7, v8];

          ++v5;
        }

        while (v5 < [(SXDataTableDictionary *)self numberOfColumns]);
      }

      ++v4;
    }

    while (v4 < [(SXDataTableDictionary *)self numberOfRows]);
  }

  [v3 appendString:@"}"];

  return v3;
}

@end