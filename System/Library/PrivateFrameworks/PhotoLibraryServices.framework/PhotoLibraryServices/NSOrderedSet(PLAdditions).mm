@interface NSOrderedSet(PLAdditions)
- (id)pl_shortDescription;
- (uint64_t)pl_indexOfObjectIdenticalTo:()PLAdditions;
- (uint64_t)pl_isSortedUsingComparator:()PLAdditions;
@end

@implementation NSOrderedSet(PLAdditions)

- (uint64_t)pl_isSortedUsingComparator:()PLAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * v10);
        if (v11 && v4[2](v4, v11, *(*(&v15 + 1) + 8 * v10)) == 1)
        {
          v13 = 0;
          goto LABEL_12;
        }

        v8 = v12;

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v13 = 1;
    v11 = v8;
LABEL_12:
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (uint64_t)pl_indexOfObjectIdenticalTo:()PLAdditions
{
  v4 = a3;
  array = [self array];
  v6 = [array indexOfObjectIdenticalTo:v4];

  return v6;
}

- (id)pl_shortDescription
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"{"];
  v3 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", *(*(&v13 + 1) + 8 * i)];
        [array addObject:v10];
      }

      v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [array componentsJoinedByString:{@", "}];
  [v2 appendString:v11];

  objc_autoreleasePoolPop(v3);
  [v2 appendString:@"}"];

  return v2;
}

@end