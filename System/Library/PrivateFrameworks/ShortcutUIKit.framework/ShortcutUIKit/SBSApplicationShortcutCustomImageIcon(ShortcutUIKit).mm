@interface SBSApplicationShortcutCustomImageIcon(ShortcutUIKit)
- (id)_scui_iconImageForCachedBitmapData:()ShortcutUIKit scale:;
- (id)_scui_iconImageWithAssetProvider:()ShortcutUIKit;
@end

@implementation SBSApplicationShortcutCustomImageIcon(ShortcutUIKit)

- (id)_scui_iconImageWithAssetProvider:()ShortcutUIKit
{
  imageData = [self imageData];
  if (!imageData)
  {
    goto LABEL_5;
  }

  dataType = [self dataType];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  if (dataType == 1)
  {
    v7 = [self _scui_iconImageForCachedBitmapData:imageData scale:v6];
    goto LABEL_7;
  }

  if (dataType)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [MEMORY[0x277D755B8] imageWithData:imageData scale:v6];
LABEL_7:
  v8 = v7;
LABEL_8:
  if ([self isTemplate])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v8 imageWithRenderingMode:v9];

  return v10;
}

- (id)_scui_iconImageForCachedBitmapData:()ShortcutUIKit scale:
{
  v2 = LICreateIconFromCachedBitmap();
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277D755B8] imageWithCGImage:v2 scale:0 orientation:self];
    CGImageRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end