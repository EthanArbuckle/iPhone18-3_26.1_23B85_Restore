@interface NSError
- (id)describe;
@end

@implementation NSError

- (id)describe
{
  v3 = +[NSMutableArray array];
  domain = [(NSError *)self domain];
  code = [(NSError *)self code];
  userInfo = [(NSError *)self userInfo];
  v7 = [userInfo objectForKey:NSLocalizedDescriptionKey];
  v8 = [NSString stringWithFormat:@"domain = %@, code = %lu, description = %@", domain, code, v7];
  [v3 addObject:v8];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  underlyingErrors = [(NSError *)self underlyingErrors];
  v10 = [underlyingErrors countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(underlyingErrors);
        }

        describe = [*(*(&v22 + 1) + 8 * i) describe];
        [v3 addObjectsFromArray:describe];
      }

      v11 = [underlyingErrors countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  if ([v3 count] >= 2)
  {
    v15 = 1;
    do
    {
      v16 = [v3 objectAtIndexedSubscript:v15];
      firstObject = [v3 firstObject];

      if (firstObject == v16)
      {
        v19 = @"├── ";
      }

      else
      {
        lastObject = [v3 lastObject];

        if (lastObject == v16)
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