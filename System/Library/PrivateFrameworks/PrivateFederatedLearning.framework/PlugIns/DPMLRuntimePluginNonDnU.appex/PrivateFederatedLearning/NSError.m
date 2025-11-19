@interface NSError
- (id)describe;
@end

@implementation NSError

- (id)describe
{
  v3 = +[NSMutableArray array];
  v4 = [(NSError *)self domain];
  v5 = [(NSError *)self code];
  v6 = [(NSError *)self userInfo];
  v7 = [v6 objectForKey:NSLocalizedDescriptionKey];
  v8 = [NSString stringWithFormat:@"domain = %@, code = %lu, description = %@", v4, v5, v7];
  [v3 addObject:v8];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [(NSError *)self underlyingErrors];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v22 + 1) + 8 * i) describe];
        [v3 addObjectsFromArray:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  if ([v3 count] >= 2)
  {
    v15 = 1;
    do
    {
      v16 = [v3 objectAtIndexedSubscript:v15];
      v17 = [v3 firstObject];

      if (v17 == v16)
      {
        v19 = @"├── ";
      }

      else
      {
        v18 = [v3 lastObject];

        if (v18 == v16)
        {
          v19 = @"└── ";
        }

        else
        {
          v19 = @"│   ";
        }
      }

      v20 = [(__CFString *)v19 stringByAppendingString:v16];
      [v3 setObject:v20 atIndexedSubscript:v15];

      ++v15;
    }

    while (v15 < [v3 count]);
  }

  return v3;
}

@end