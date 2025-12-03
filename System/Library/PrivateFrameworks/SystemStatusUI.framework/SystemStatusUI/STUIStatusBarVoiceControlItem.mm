@interface STUIStatusBarVoiceControlItem
- (double)imageOpacityForVoiceControlType:(int64_t)type;
- (id)_overriddenStyleAttributesForVoiceControlType:(int64_t)type;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)overriddenStyleAttributesForData:(id)data identifier:(id)identifier;
- (id)systemImageNameForUpdate:(id)update;
@end

@implementation STUIStatusBarVoiceControlItem

- (id)overriddenStyleAttributesForData:(id)data identifier:(id)identifier
{
  voiceControlEntry = [data voiceControlEntry];
  type = [voiceControlEntry type];

  return [(STUIStatusBarVoiceControlItem *)self _overriddenStyleAttributesForVoiceControlType:type];
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = STUIStatusBarVoiceControlItem;
  v8 = [(STUIStatusBarIndicatorItem *)&v13 applyUpdate:updateCopy toDisplayItem:itemCopy];
  if ([updateCopy dataChanged])
  {
    data = [updateCopy data];
    voiceControlEntry = [data voiceControlEntry];
    type = [voiceControlEntry type];

    [(STUIStatusBarVoiceControlItem *)self imageOpacityForVoiceControlType:type];
    [itemCopy setViewAlpha:?];
  }

  return v8;
}

- (id)systemImageNameForUpdate:(id)update
{
  data = [update data];
  voiceControlEntry = [data voiceControlEntry];

  if (([voiceControlEntry type] - 1) >= 2)
  {
    v5 = @"voice.control.slash";
  }

  else
  {
    v5 = @"voice.control";
  }

  return v5;
}

- (double)imageOpacityForVoiceControlType:(int64_t)type
{
  result = 0.65;
  if ((type - 1) < 2)
  {
    return 1.0;
  }

  return result;
}

- (id)_overriddenStyleAttributesForVoiceControlType:(int64_t)type
{
  if ((type - 1) > 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v3 setImageTintColor:whiteColor];
  }

  return v3;
}

@end