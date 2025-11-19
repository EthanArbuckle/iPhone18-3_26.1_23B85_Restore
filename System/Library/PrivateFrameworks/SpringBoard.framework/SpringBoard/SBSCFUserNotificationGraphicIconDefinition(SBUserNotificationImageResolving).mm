@interface SBSCFUserNotificationGraphicIconDefinition(SBUserNotificationImageResolving)
- (id)sb_resolvedImage;
@end

@implementation SBSCFUserNotificationGraphicIconDefinition(SBUserNotificationImageResolving)

- (id)sb_resolvedImage
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 iconType];

  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D1B1A8]);
    v4 = [a1 iconType];
    v5 = [v3 initWithType:v4];
  }

  else
  {
    v6 = [a1 iconBundleIdentifier];

    if (!v6)
    {
      goto LABEL_6;
    }

    v7 = objc_alloc(MEMORY[0x277D1B1A8]);
    v4 = [a1 iconBundleIdentifier];
    v5 = [v7 initWithBundleIdentifier:v4];
  }

  v6 = v5;

LABEL_6:
  v8 = [a1 iconDecorationType];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D1B1B8]);
    v10 = [a1 iconDecorationType];
    v11 = [v9 initWithType:v10];
  }

  else
  {
    v12 = [a1 iconDecorationBundleIdentifier];

    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = objc_alloc(MEMORY[0x277D1B1B8]);
    v10 = [a1 iconDecorationBundleIdentifier];
    v11 = [v13 initWithBundleIdentifier:v10];
  }

  v12 = v11;

  if (v12)
  {
    v14 = [a1 iconDecorationPosition];

    if (v14)
    {
      v15 = [a1 iconDecorationPosition];
      v16 = [v15 integerValue];
    }

    else
    {
      v16 = 0;
    }

    [v12 setPosition:v16];
    v26[0] = v12;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v18 = [v6 iconWithDecorations:v17];

    v6 = v18;
  }

LABEL_15:
  v19 = [MEMORY[0x277D759A0] mainScreen];
  [v19 scale];
  v21 = v20;

  v22 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, v21}];
  v23 = [v6 prepareImageForDescriptor:v22];
  v24 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(v23 scale:"CGImage") orientation:{0, v21}];

  return v24;
}

@end