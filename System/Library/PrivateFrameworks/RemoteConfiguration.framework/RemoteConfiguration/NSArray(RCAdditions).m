@interface NSArray(RCAdditions)
- (BOOL)rc_containsObjectPassingTest:()RCAdditions;
- (id)rc_arrayByTransformingWithBlock:()RCAdditions;
- (id)rc_arrayByTransformingWithBlockWithIndex:()RCAdditions;
- (id)rc_description;
- (id)rc_firstObjectPassingTest:()RCAdditions;
@end

@implementation NSArray(RCAdditions)

- (id)rc_description
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v9 = [MEMORY[0x277CBEB68] null];
          v10 = [v7 isEqual:v9];

          v8 = @"<null>";
          if ((v10 & 1) == 0)
          {
            if (v7)
            {
              v11 = [v7 description];
              v12 = v11;
              v13 = @"<nil description>";
              if (v11)
              {
                v13 = v11;
              }

              v8 = v13;
            }

            else
            {
              v8 = @"<nil>";
            }
          }
        }

        [v2 addObject:v8];
      }

      v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = [v2 componentsJoinedByString:{@", "}];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)rc_firstObjectPassingTest:()RCAdditions
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSArray(RCAdditions) rc_firstObjectPassingTest:];
  }

  v5 = [a1 objectEnumerator];
  v6 = [v5 rc_firstObjectPassingTest:v4];

  return v6;
}

- (BOOL)rc_containsObjectPassingTest:()RCAdditions
{
  v1 = [a1 rc_firstObjectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (id)rc_arrayByTransformingWithBlockWithIndex:()RCAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__NSArray_RCAdditions__rc_arrayByTransformingWithBlockWithIndex___block_invoke;
  v11[3] = &unk_27822F3C8;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)rc_arrayByTransformingWithBlock:()RCAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__NSArray_RCAdditions__rc_arrayByTransformingWithBlock___block_invoke;
  v8[3] = &unk_27822F3F0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 rc_arrayByTransformingWithBlockWithIndex:v8];

  return v6;
}

- (void)rc_firstObjectPassingTest:()RCAdditions .cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "testBlock"];
  *buf = 136315906;
  v3 = "[NSArray(RCAdditions) rc_firstObjectPassingTest:]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Categories/NSArray+RCAdditions.m";
  v6 = 1024;
  v7 = 18;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end