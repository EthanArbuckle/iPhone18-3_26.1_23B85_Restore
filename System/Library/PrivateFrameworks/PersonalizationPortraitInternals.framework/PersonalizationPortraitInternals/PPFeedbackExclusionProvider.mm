@interface PPFeedbackExclusionProvider
+ (id)excludedBundleIdsForClientBundleId:(int)id domain:;
@end

@implementation PPFeedbackExclusionProvider

+ (id)excludedBundleIdsForClientBundleId:(int)id domain:
{
  v4 = a2;
  objc_opt_self();
  if (v4)
  {
    if (id)
    {
      v5 = *MEMORY[0x277D3A650];
      if ([v4 isEqualToString:*MEMORY[0x277D3A650]])
      {
        v6 = objc_autoreleasePoolPush();
        v7 = objc_alloc(MEMORY[0x277CBEB98]);
        v8 = [v7 initWithObjects:{v5, *MEMORY[0x277D3A608], *MEMORY[0x277D3A5F0], 0}];
LABEL_7:
        v10 = v8;
        objc_autoreleasePoolPop(v6);
        goto LABEL_9;
      }
    }

    else
    {
      v9 = *MEMORY[0x277D3A668];
      if ([v4 isEqualToString:*MEMORY[0x277D3A668]])
      {
        v6 = objc_autoreleasePoolPush();
        v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v9, 0, v12, v13}];
        goto LABEL_7;
      }
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

@end