@interface TextResults
- (TextResults)init;
- (id)transcriptionOfPath:(id)a3 tokenProcessingBlock:(id)a4;
- (void)addColumn:(id)a3;
- (void)sortCols;
@end

@implementation TextResults

- (TextResults)init
{
  v6.receiver = self;
  v6.super_class = TextResults;
  v2 = [(TextResults *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    mutableCols = v2->_mutableCols;
    v2->_mutableCols = v3;
  }

  return v2;
}

- (void)addColumn:(id)a3
{
  mutableCols = self->_mutableCols;
  if (mutableCols)
  {
    [(NSMutableArray *)mutableCols addObject:a3];
  }
}

- (void)sortCols
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_mutableCols;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) sortRowsInAscendingOrder];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)transcriptionOfPath:(id)a3 tokenProcessingBlock:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AD60] string];
  if ([v5 length])
  {
    v8 = 0;
    v9 = 0;
    v24 = v5;
    do
    {
      v10 = [(NSMutableArray *)self->_mutableCols objectAtIndexedSubscript:v9];
      v29 = v9;
      v11 = [v5 indexAtPosition:v9];
      v28 = v10;
      v27 = [v10 rows];
      v26 = [v27 objectAtIndexedSubscript:v11];
      v12 = [v26 tokens];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v12;
      v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v13)
      {
        v14 = v13;
        v32 = *v34;
        do
        {
          v15 = 0;
          v30 = v8;
          v16 = -v8;
          do
          {
            if (*v34 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v33 + 1) + 8 * v15);
            if (v16 == v15)
            {
              v18 = &stru_1F2BB4348;
            }

            else
            {
              v18 = @" ";
            }

            v19 = [v7 length];
            v20 = [(__CFString *)v18 length];
            v21 = [v17 string];
            [v7 appendFormat:@"%@%@", v18, v21];

            v22 = [v7 length];
            if (v6)
            {
              v6[2](v6, v17, v20 + v19, v22 - (v20 + v19));
            }

            ++v15;
          }

          while (v14 != v15);
          v8 = v14 + v30;
          v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v14);
      }

      v9 = v29 + 1;
      v5 = v24;
    }

    while (v29 + 1 < [v24 length]);
  }

  return v7;
}

@end