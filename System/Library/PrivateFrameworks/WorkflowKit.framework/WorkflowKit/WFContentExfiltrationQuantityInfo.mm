@interface WFContentExfiltrationQuantityInfo
+ (int64_t)deletionItemCountLimitForContentWithContentItemClassName:(id)a3;
+ (int64_t)sharingItemCountLimitForContentWithAttribution:(id)a3;
@end

@implementation WFContentExfiltrationQuantityInfo

+ (int64_t)deletionItemCountLimitForContentWithContentItemClassName:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 isEqualToString:v5];

  if (v6)
  {
    goto LABEL_2;
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v3 isEqualToString:v9];

  if (v10)
  {
    v7 = 10;
    goto LABEL_5;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v3 isEqualToString:v13];

  if (v14 & 1) != 0 || (v15 = objc_opt_class(), NSStringFromClass(v15), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v3 isEqualToString:v16], v16, (v17))
  {
LABEL_2:
    v7 = 50;
  }

  else if ([v3 isEqualToString:@"WFHKSampleContentItem"])
  {
    v7 = 0;
  }

  else
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v3 isEqualToString:v19];

    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_5:

  return v7;
}

+ (int64_t)sharingItemCountLimitForContentWithAttribution:(id)a3
{
  v3 = [a3 origin];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 appDescriptor];
      v5 = [v4 bundleIdentifier];

      if ([v5 isEqualToString:*MEMORY[0x1E69E0E48]])
      {
LABEL_4:
        v6 = 50;
LABEL_8:

        goto LABEL_9;
      }

      if (([v5 isEqualToString:*MEMORY[0x1E69E0E58]] & 1) == 0)
      {
        if ([v5 isEqualToString:*MEMORY[0x1E69E0F08]])
        {
          goto LABEL_4;
        }

        if ([v5 isEqualToString:*MEMORY[0x1E69E0EF0]])
        {
          v6 = 20;
          goto LABEL_8;
        }

        if ([v5 isEqualToString:*MEMORY[0x1E69E0E88]])
        {
          v6 = 100;
          goto LABEL_8;
        }

        if (([v5 isEqualToString:*MEMORY[0x1E69E0EE8]] & 1) == 0)
        {
          if ([v5 isEqualToString:*MEMORY[0x1E69E0ED0]])
          {
            v6 = 100;
          }

          else
          {
            v6 = 0x7FFFFFFFFFFFFFFFLL;
          }

          goto LABEL_8;
        }
      }

      v6 = 10;
      goto LABEL_8;
    }
  }

  v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_9:

  return v6;
}

@end