@interface SXComponentTypeMatching
- (SXComponentTypeMatching)init;
- (id)match:(id)a3;
- (void)addDescription:(id)a3;
- (void)removeDescription:(id)a3;
@end

@implementation SXComponentTypeMatching

- (SXComponentTypeMatching)init
{
  v6.receiver = self;
  v6.super_class = SXComponentTypeMatching;
  v2 = [(SXComponentTypeMatching *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    descriptions = v2->_descriptions;
    v2->_descriptions = v3;
  }

  return v2;
}

- (id)match:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(SXComponentTypeMatching *)self descriptions];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v6)
  {
    v22 = 0;
    v8 = 0;
    goto LABEL_16;
  }

  v7 = v6;
  v22 = 0;
  v8 = 0;
  v9 = *v24;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v23 + 1) + 8 * i);
      v12 = [v4 type];
      v13 = [v11 type];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        if (![v11 role])
        {
          v16 = v22;
          v22 = v11;
          v17 = v8;
LABEL_11:
          v18 = v11;

          v8 = v17;
          continue;
        }

        v15 = [v11 role];
        v16 = v8;
        v17 = v11;
        if (v15 == [v4 role])
        {
          goto LABEL_11;
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v7);
LABEL_16:

  if (v8)
  {
    v19 = v8;
  }

  else
  {
    v19 = v22;
  }

  v20 = v19;

  return v19;
}

- (void)addDescription:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXComponentTypeMatching *)self descriptions];
    [v5 addObject:v4];
  }
}

- (void)removeDescription:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXComponentTypeMatching *)self descriptions];
    [v5 removeObject:v4];
  }
}

@end