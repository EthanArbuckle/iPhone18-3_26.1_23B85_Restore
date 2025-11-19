@interface UIDebugRelationshipBetween
@end

@implementation UIDebugRelationshipBetween

void *___UIDebugRelationshipBetween_block_invoke(void *a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = [a1 firstObject];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = [v6 stringWithFormat:@"<%@: %p>", NSStringFromClass(v7), v5];
  }

  else
  {
    v8 = @"(nil)";
  }

  v9 = [a2 firstObject];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = [v11 stringWithFormat:@"<%@: %p>", NSStringFromClass(v12), v10];
  }

  else
  {
    v13 = @"(nil)";
  }

  v14 = [v3 stringWithFormat:@"To get from %@ to %@", v8, v13];
  if ([a1 count] >= 2)
  {
    [v14 appendString:@" follow the parent hierarchy up\n"];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = [a1 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v41;
      do
      {
        v18 = 0;
        do
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(a1);
          }

          v19 = *(*(&v40 + 1) + 8 * v18);
          if (v19 == [a1 firstObject])
          {
            v20 = @"from ";
          }

          else
          {
            v20 = @"  -> ";
          }

          if (v19)
          {
            v21 = MEMORY[0x1E696AEC0];
            v22 = objc_opt_class();
            v23 = [v21 stringWithFormat:@"<%@: %p>", NSStringFromClass(v22), v19];
          }

          else
          {
            v23 = @"(nil)";
          }

          [v14 appendFormat:@"%@%@\n", v20, v23];
          ++v18;
        }

        while (v16 != v18);
        v16 = [a1 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v16);
    }
  }

  if ([a1 count] >= 2 && objc_msgSend(a2, "count") >= 2)
  {
    [v14 appendString:@"and then"];
  }

  if ([a2 count] >= 2)
  {
    [v14 appendString:@" follow the child hierarchy down\n"];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [a2 reverseObjectEnumerator];
    v24 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v37;
      do
      {
        v27 = 0;
        do
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v36 + 1) + 8 * v27);
          if (v28 == [a2 lastObject])
          {
            v29 = @"from ";
          }

          else
          {
            v29 = @"  -> ";
          }

          if (v28)
          {
            v30 = MEMORY[0x1E696AEC0];
            v31 = objc_opt_class();
            v32 = [v30 stringWithFormat:@"<%@: %p>", NSStringFromClass(v31), v28];
          }

          else
          {
            v32 = @"(nil)";
          }

          [v14 appendFormat:@"%@%@\n", v29, v32];
          ++v27;
        }

        while (v25 != v27);
        v25 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v25);
    }
  }

  return v14;
}

@end