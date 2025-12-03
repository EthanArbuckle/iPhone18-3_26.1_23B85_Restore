@interface NSMutableDictionary(SCRCMutableDictionaryExtras)
- (void)scrc_mergeEntriesFromDictionary:()SCRCMutableDictionaryExtras factory:;
@end

@implementation NSMutableDictionary(SCRCMutableDictionaryExtras)

- (void)scrc_mergeEntriesFromDictionary:()SCRCMutableDictionaryExtras factory:
{
  v24 = a3;
  v6 = a4;
  keyEnumerator = [v24 keyEnumerator];
  objc_opt_class();
  objc_opt_class();
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v9 = nextObject;
    do
    {
      v10 = [v24 objectForKey:v9];
      v11 = [self objectForKey:v9];
      if (objc_opt_isKindOfClass())
      {
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];

          v11 = dictionary;
        }

        [v11 scrc_mergeEntriesFromDictionary:v10 factory:v6];
        selfCopy2 = self;
        v14 = v11;
      }

      else
      {
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 isEqualToString:@"@undefine"])
        {

LABEL_21:
          [self removeObjectForKey:v9];
          goto LABEL_22;
        }

        if (v6)
        {
          if (objc_opt_isKindOfClass())
          {
            if ([v10 hasPrefix:@"@"])
            {
              if ([v10 hasSuffix:@""]))
              {
                v15 = objc_msgSend(v10, "rangeOfString:", @"(");
                if (v15 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v16 = v15;
                  v17 = [v10 substringWithRange:{1, v15 - 1}];
                  v18 = [v10 substringWithRange:{v16 + 1, objc_msgSend(v10, "length") - v16 - 2}];
                  v23 = v17;
                  v19 = [v6 scrc_dictionaryValueForClassKey:v17 withSpecifier:v18];
                  v20 = v19;
                  if (v19)
                  {
                    v22 = v19;

                    v10 = v22;
                  }
                }
              }
            }
          }
        }

        if (!v10)
        {
          goto LABEL_21;
        }

        selfCopy2 = self;
        v14 = v10;
      }

      [selfCopy2 setObject:v14 forKey:v9];

LABEL_22:
      nextObject2 = [keyEnumerator nextObject];

      v9 = nextObject2;
    }

    while (nextObject2);
  }
}

@end