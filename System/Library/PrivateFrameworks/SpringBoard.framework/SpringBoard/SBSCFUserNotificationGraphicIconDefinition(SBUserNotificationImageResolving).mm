@interface SBSCFUserNotificationGraphicIconDefinition(SBUserNotificationImageResolving)
- (id)sb_resolvedImage;
@end

@implementation SBSCFUserNotificationGraphicIconDefinition(SBUserNotificationImageResolving)

- (id)sb_resolvedImage
{
  v26[1] = *MEMORY[0x277D85DE8];
  iconType = [self iconType];

  if (iconType)
  {
    v3 = objc_alloc(MEMORY[0x277D1B1A8]);
    iconType2 = [self iconType];
    v5 = [v3 initWithType:iconType2];
  }

  else
  {
    iconBundleIdentifier = [self iconBundleIdentifier];

    if (!iconBundleIdentifier)
    {
      goto LABEL_6;
    }

    v7 = objc_alloc(MEMORY[0x277D1B1A8]);
    iconType2 = [self iconBundleIdentifier];
    v5 = [v7 initWithBundleIdentifier:iconType2];
  }

  iconBundleIdentifier = v5;

LABEL_6:
  iconDecorationType = [self iconDecorationType];

  if (iconDecorationType)
  {
    v9 = objc_alloc(MEMORY[0x277D1B1B8]);
    iconDecorationType2 = [self iconDecorationType];
    v11 = [v9 initWithType:iconDecorationType2];
  }

  else
  {
    iconDecorationBundleIdentifier = [self iconDecorationBundleIdentifier];

    if (!iconDecorationBundleIdentifier)
    {
      goto LABEL_15;
    }

    v13 = objc_alloc(MEMORY[0x277D1B1B8]);
    iconDecorationType2 = [self iconDecorationBundleIdentifier];
    v11 = [v13 initWithBundleIdentifier:iconDecorationType2];
  }

  iconDecorationBundleIdentifier = v11;

  if (iconDecorationBundleIdentifier)
  {
    iconDecorationPosition = [self iconDecorationPosition];

    if (iconDecorationPosition)
    {
      iconDecorationPosition2 = [self iconDecorationPosition];
      integerValue = [iconDecorationPosition2 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    [iconDecorationBundleIdentifier setPosition:integerValue];
    v26[0] = iconDecorationBundleIdentifier;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v18 = [iconBundleIdentifier iconWithDecorations:v17];

    iconBundleIdentifier = v18;
  }

LABEL_15:
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v21 = v20;

  v22 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, v21}];
  v23 = [iconBundleIdentifier prepareImageForDescriptor:v22];
  v24 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(v23 scale:"CGImage") orientation:{0, v21}];

  return v24;
}

@end