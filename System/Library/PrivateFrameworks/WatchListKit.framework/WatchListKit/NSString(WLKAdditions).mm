@interface NSString(WLKAdditions)
- (id)wlk_stringByAppendingPathComponents:()WLKAdditions;
- (unint64_t)wlk_unsignedLongLongValue;
@end

@implementation NSString(WLKAdditions)

- (unint64_t)wlk_unsignedLongLongValue
{
  uTF8String = [self UTF8String];

  return strtoull(uTF8String, 0, 0);
}

- (id)wlk_stringByAppendingPathComponents:()WLKAdditions
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (wlk_stringByAppendingPathComponents__onceToken != -1)
  {
    [NSString(WLKAdditions) wlk_stringByAppendingPathComponents:];
  }

  v5 = objc_alloc(MEMORY[0x277CCAB68]);
  v6 = [self stringByTrimmingCharactersInSet:wlk_stringByAppendingPathComponents___slash];
  v7 = [v5 initWithString:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) stringByTrimmingCharactersInSet:wlk_stringByAppendingPathComponents___slash];
        [v7 appendFormat:@"/%@", v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end