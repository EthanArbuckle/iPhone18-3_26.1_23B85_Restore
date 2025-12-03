@interface SBSApplicationShortcutSystemIcon(ShortcutUIKit)
- (__CFString)_scui_iconImageName;
- (id)_scui_iconImageWithAssetProvider:()ShortcutUIKit;
@end

@implementation SBSApplicationShortcutSystemIcon(ShortcutUIKit)

- (id)_scui_iconImageWithAssetProvider:()ShortcutUIKit
{
  systemImageName = [self systemImageName];
  if (!systemImageName)
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D755D0];
  v4 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D76918]];
  [v4 pointSize];
  v5 = [v3 configurationWithPointSize:4 weight:3 scale:?];

  v6 = [MEMORY[0x277D755B8] systemImageNamed:systemImageName withConfiguration:v5];

  if (!v6)
  {
LABEL_3:
    _scui_iconImageName = [self _scui_iconImageName];
    if (_scui_iconImageName)
    {
      v8 = MEMORY[0x277D755B8];
      v9 = ShortcutUIKitBundle();
      v10 = [v8 imageNamed:_scui_iconImageName inBundle:v9 compatibleWithTraitCollection:0];

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
  type = [self type];
  if (type > 0x1C)
  {
    return @"UnreadDot";
  }

  else
  {
    return off_279BC2AE8[type];
  }
}

@end