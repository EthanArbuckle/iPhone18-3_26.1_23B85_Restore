@interface STUIStatusBarVoiceControlItem
- (double)imageOpacityForVoiceControlType:(int64_t)a3;
- (id)_overriddenStyleAttributesForVoiceControlType:(int64_t)a3;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)overriddenStyleAttributesForData:(id)a3 identifier:(id)a4;
- (id)systemImageNameForUpdate:(id)a3;
@end

@implementation STUIStatusBarVoiceControlItem

- (id)overriddenStyleAttributesForData:(id)a3 identifier:(id)a4
{
  v5 = [a3 voiceControlEntry];
  v6 = [v5 type];

  return [(STUIStatusBarVoiceControlItem *)self _overriddenStyleAttributesForVoiceControlType:v6];
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = STUIStatusBarVoiceControlItem;
  v8 = [(STUIStatusBarIndicatorItem *)&v13 applyUpdate:v6 toDisplayItem:v7];
  if ([v6 dataChanged])
  {
    v9 = [v6 data];
    v10 = [v9 voiceControlEntry];
    v11 = [v10 type];

    [(STUIStatusBarVoiceControlItem *)self imageOpacityForVoiceControlType:v11];
    [v7 setViewAlpha:?];
  }

  return v8;
}

- (id)systemImageNameForUpdate:(id)a3
{
  v3 = [a3 data];
  v4 = [v3 voiceControlEntry];

  if (([v4 type] - 1) >= 2)
  {
    v5 = @"voice.control.slash";
  }

  else
  {
    v5 = @"voice.control";
  }

  return v5;
}

- (double)imageOpacityForVoiceControlType:(int64_t)a3
{
  result = 0.65;
  if ((a3 - 1) < 2)
  {
    return 1.0;
  }

  return result;
}

- (id)_overriddenStyleAttributesForVoiceControlType:(int64_t)a3
{
  if ((a3 - 1) > 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    v4 = [MEMORY[0x277D75348] whiteColor];
    [v3 setImageTintColor:v4];
  }

  return v3;
}

@end