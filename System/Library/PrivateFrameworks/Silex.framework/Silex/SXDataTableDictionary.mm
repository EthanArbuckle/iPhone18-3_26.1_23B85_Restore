@interface SXDataTableDictionary
+ (SXDataTableDictionary)dataTableDictionaryWithRows:(unint64_t)rows andColumns:(unint64_t)columns;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPathForIndex:(unint64_t)index;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPathOfObject:(id)object;
- (SXDataTableDictionary)initWithRows:(unint64_t)rows andColumns:(unint64_t)columns;
- (id)arrayWithObject:(id)object forCount:(unint64_t)count;
- (id)description;
- (id)objectForIndexPath:(id)path;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)indexForIndexPath:(id)path;
- (void)removeAllObjects;
- (void)removeObjectForIndexPath:(id)path;
- (void)setObject:(id)object forIndexPath:(id)path;
@end

@implementation SXDataTableDictionary

+ (SXDataTableDictionary)dataTableDictionaryWithRows:(unint64_t)rows andColumns:(unint64_t)columns
{
  v4 = [objc_alloc(objc_opt_class()) initWithRows:rows andColumns:columns];

  return v4;
}

- (SXDataTableDictionary)initWithRows:(unint64_t)rows andColumns:(unint64_t)columns
{
  if (rows == -1 || columns == -1)
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
      v6->_numberOfRows = rows;
      v6->_numberOfColumns = columns;
      null = [MEMORY[0x1E695DFB0] null];
      rows = [(SXDataTableDictionary *)v7 arrayWithObject:null forCount:columns * rows];
      storage = v7->_storage;
      v7->_storage = rows;

      indexSet = [MEMORY[0x1E696AD50] indexSet];
      indexes = v7->_indexes;
      v7->_indexes = indexSet;
    }
  }

  return v7;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPathOfObject:(id)object
{
  objectCopy = object;
  storage = [(SXDataTableDictionary *)self storage];
  v6 = [storage indexOfObject:objectCopy];

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

- (id)objectForIndexPath:(id)path
{
  v4 = [(SXDataTableDictionary *)self indexForIndexPath:path.var0, path.var1];
  if (v4 == -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = v4;
    storage = [(SXDataTableDictionary *)self storage];
    v7 = [storage objectAtIndex:v5];
  }

  null = [MEMORY[0x1E695DFB0] null];
  if (v7 == null)
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

- (void)setObject:(id)object forIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  objectCopy = object;
  var1 = [(SXDataTableDictionary *)self indexForIndexPath:var0, var1];
  if (var1 != -1)
  {
    v8 = var1;
    if (objectCopy)
    {
      indexes = [(SXDataTableDictionary *)self indexes];
      [indexes addIndex:v8];

      storage = [(SXDataTableDictionary *)self storage];
      [storage replaceObjectAtIndex:v8 withObject:objectCopy];
    }

    else
    {
      [(SXDataTableDictionary *)self removeObjectForIndexPath:var0, var1];
    }
  }
}

- (void)removeObjectForIndexPath:(id)path
{
  v4 = [(SXDataTableDictionary *)self indexForIndexPath:path.var0, path.var1];
  if (v4 != -1)
  {
    v5 = v4;
    indexes = [(SXDataTableDictionary *)self indexes];
    [indexes removeIndex:v5];

    storage = [(SXDataTableDictionary *)self storage];
    null = [MEMORY[0x1E695DFB0] null];
    [storage replaceObjectAtIndex:v5 withObject:null];
  }
}

- (void)removeAllObjects
{
  indexes = [(SXDataTableDictionary *)self indexes];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__SXDataTableDictionary_removeAllObjects__block_invoke;
  v4[3] = &unk_1E8500E10;
  v4[4] = self;
  [indexes enumerateIndexesUsingBlock:v4];
}

uint64_t __41__SXDataTableDictionary_removeAllObjects__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [v2 indexPathForIndex:a2];

  return [v2 removeObjectForIndexPath:{v4, v3}];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = state->var3;
  }

  indexes = [(SXDataTableDictionary *)self indexes];
  v11 = [indexes count];

  if (var0 < v11)
  {
    state->var1 = objects;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    indexes2 = [(SXDataTableDictionary *)self indexes];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__SXDataTableDictionary_countByEnumeratingWithState_objects_count___block_invoke;
    v16[3] = &unk_1E8500E38;
    v16[6] = &v18;
    v16[7] = var0;
    v16[8] = count;
    v16[9] = objects;
    v16[4] = self;
    v16[5] = v17;
    [indexes2 enumerateIndexesUsingBlock:v16];

    _Block_object_dispose(v17, 8);
  }

  v13 = v19;
  state->var0 = v19[3] + var0;
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

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPathForIndex:(unint64_t)index
{
  numberOfColumns = [(SXDataTableDictionary *)self numberOfColumns];
  v6 = index / numberOfColumns * numberOfColumns;
  v7 = index % numberOfColumns;
  v8 = v6 / [(SXDataTableDictionary *)self numberOfColumns];
  v9 = v7;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (unint64_t)indexForIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  if (path.var0 >= [(SXDataTableDictionary *)self numberOfRows]|| var1 >= [(SXDataTableDictionary *)self numberOfColumns])
  {
    return -1;
  }

  else
  {
    return var1 + [(SXDataTableDictionary *)self numberOfColumns]* var0;
  }
}

- (id)arrayWithObject:(id)object forCount:(unint64_t)count
{
  objectCopy = object;
  for (i = [MEMORY[0x1E695DF70] array];
  {
    [i addObject:objectCopy];
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