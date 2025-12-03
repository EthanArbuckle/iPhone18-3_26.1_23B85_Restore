@interface _UIStatusBarVoiceControlItem
- (double)imageOpacityForVoiceControlType:(int64_t)type;
- (id)_overriddenStyleAttributesForVoiceControlType:(int64_t)type;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)imageForUpdate:(id)update;
- (id)overriddenStyleAttributesForData:(id)data identifier:(id)identifier;
- (id)systemImageNameForUpdate:(id)update;
@end

@implementation _UIStatusBarVoiceControlItem

- (id)overriddenStyleAttributesForData:(id)data identifier:(id)identifier
{
  voiceControlEntry = [data voiceControlEntry];
  type = [voiceControlEntry type];

  return [(_UIStatusBarVoiceControlItem *)self _overriddenStyleAttributesForVoiceControlType:type];
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = _UIStatusBarVoiceControlItem;
  v8 = [(_UIStatusBarIndicatorItem *)&v13 applyUpdate:updateCopy toDisplayItem:itemCopy];
  if ([updateCopy dataChanged])
  {
    data = [updateCopy data];
    voiceControlEntry = [data voiceControlEntry];
    type = [voiceControlEntry type];

    [(_UIStatusBarVoiceControlItem *)self imageOpacityForVoiceControlType:type];
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
    v5 = @"mic.slash.fill";
  }

  else
  {
    v5 = @"mic.fill";
  }

  return v5;
}

- (id)imageForUpdate:(id)update
{
  updateCopy = update;
  v13.receiver = self;
  v13.super_class = _UIStatusBarVoiceControlItem;
  v5 = [(_UIStatusBarIndicatorItem *)&v13 imageForUpdate:updateCopy];
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v6 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v8 = _UIInternalPreference_EnableWorkaroundFor50826562;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_EnableWorkaroundFor50826562)
    {
      while (v6 >= v8)
      {
        _UIInternalPreferenceSync(v6, &_UIInternalPreference_EnableWorkaroundFor50826562, @"EnableWorkaroundFor50826562", _UIInternalPreferenceUpdateBool);
        v8 = _UIInternalPreference_EnableWorkaroundFor50826562;
        if (v6 == _UIInternalPreference_EnableWorkaroundFor50826562)
        {
          goto LABEL_4;
        }
      }

      if (byte_1EA95E334)
      {
        data = [updateCopy data];
        voiceControlEntry = [data voiceControlEntry];
        type = [voiceControlEntry type];

        if (type)
        {
          [v5 _contentInsets];
          v12 = [v5 _imageWithContentInsets:?];

          v5 = v12;
        }
      }
    }
  }

LABEL_4:

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
    v3 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
    v4 = +[UIColor whiteColor];
    [v3 setImageTintColor:v4];
  }

  return v3;
}

@end