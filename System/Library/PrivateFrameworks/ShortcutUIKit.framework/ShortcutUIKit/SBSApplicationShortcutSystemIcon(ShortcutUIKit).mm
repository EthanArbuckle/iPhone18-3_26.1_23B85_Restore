@interface SBSApplicationShortcutSystemIcon(ShortcutUIKit)
- (__CFString)_scui_iconImageName;
- (id)_scui_iconImageWithAssetProvider:()ShortcutUIKit;
@end

@implementation SBSApplicationShortcutSystemIcon(ShortcutUIKit)

- (id)_scui_iconImageWithAssetProvider:()ShortcutUIKit
{
  v2 = [a1 systemImageName];
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D755D0];
  v4 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D76918]];
  [v4 pointSize];
  v5 = [v3 configurationWithPointSize:4 weight:3 scale:?];

  v6 = [MEMORY[0x277D755B8] systemImageNamed:v2 withConfiguration:v5];

  if (!v6)
  {
LABEL_3:
    v7 = [a1 _scui_iconImageName];
    if (v7)
    {
      v8 = MEMORY[0x277D755B8];
      v9 = ShortcutUIKitBundle();
      v10 = [v8 imageNamed:v7 inBundle:v9 compatibleWithTraitCollection:0];

      v6 = [v10 imageWithRenderingMode:2];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (__CFString)_scui_iconImageName
{
  v1 = [a1 type];
  if (v1 > 0x1C)
  {
    return @"UnreadDot";
  }

  else
  {
    return off_279BC2AE8[v1];
  }
}

@end