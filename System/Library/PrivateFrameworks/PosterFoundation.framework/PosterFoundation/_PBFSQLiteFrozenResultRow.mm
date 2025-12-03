@interface _PBFSQLiteFrozenResultRow
- (double)doubleAtIndex:(unint64_t)index;
- (int64_t)integerAtIndex:(unint64_t)index;
- (uint64_t)_indexForKey:(uint64_t)result;
- (void)_initWithResultRow:(void *)row;
@end

@implementation _PBFSQLiteFrozenResultRow

- (int64_t)integerAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_frozenIntegers objectAtIndexedSubscript:index];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (double)doubleAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_frozenDoubles objectAtIndexedSubscript:index];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)_initWithResultRow:(void *)row
{
  v3 = a2;
  if (row)
  {
    v33.receiver = row;
    v33.super_class = PFSQLiteResultRow;
    v4 = objc_msgSendSuper2(&v33, sel_init);
    row = v4;
    if (v4)
    {
      v4[1] = 0;
      v4[3] = [v3 count];
      v5 = objc_alloc(MEMORY[0x1E695DF70]);
      v32 = OUTLINED_FUNCTION_1_5(v5, v6);
      v7 = objc_alloc(MEMORY[0x1E695DF70]);
      v30 = OUTLINED_FUNCTION_1_5(v7, v8);
      v9 = objc_alloc(MEMORY[0x1E695DF70]);
      v11 = OUTLINED_FUNCTION_1_5(v9, v10);
      v12 = objc_alloc(MEMORY[0x1E695DF70]);
      v14 = OUTLINED_FUNCTION_1_5(v12, v13);
      v15 = objc_alloc(MEMORY[0x1E695DF70]);
      v17 = OUTLINED_FUNCTION_1_5(v15, v16);
      v18 = objc_alloc(MEMORY[0x1E695DF70]);
      v20 = OUTLINED_FUNCTION_1_5(v18, v19);
      if (row[3])
      {
        v21 = 0;
        do
        {
          v22 = [OUTLINED_FUNCTION_0_7() keyAtIndex:?];
          [v32 addObject:v22];

          v23 = [OUTLINED_FUNCTION_0_7() objectAtIndex:?];
          [v30 addObject:v23];

          v24 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(OUTLINED_FUNCTION_0_7(), "integerAtIndex:")}];
          [v11 addObject:v24];

          v25 = MEMORY[0x1E696AD98];
          [OUTLINED_FUNCTION_0_7() doubleAtIndex:?];
          v26 = [v25 numberWithDouble:?];
          [v14 addObject:v26];

          v27 = [OUTLINED_FUNCTION_0_7() stringAtIndex:?];
          [v17 addObject:v27];

          v28 = [OUTLINED_FUNCTION_0_7() dataAtIndex:?];
          [v20 addObject:v28];

          ++v21;
        }

        while (v21 < row[3]);
      }

      OUTLINED_FUNCTION_2_6([v32 copy], 32);
      OUTLINED_FUNCTION_2_6([v31 copy], 40);
      OUTLINED_FUNCTION_2_6([v11 copy], 48);
      OUTLINED_FUNCTION_2_6([v14 copy], 56);
      OUTLINED_FUNCTION_2_6([v17 copy], 64);
      OUTLINED_FUNCTION_2_6([v20 copy], 72);
    }
  }

  return row;
}

- (uint64_t)_indexForKey:(uint64_t)result
{
  if (result)
  {
    return [*(result + 32) indexOfObject:a2];
  }

  return result;
}

@end