@interface UISegmentedControlTVStyleProvider
- (double)defaultHeightForControlSize:(int)size traitCollection:(id)collection;
- (id)fontColorForSegment:(id)segment enabled:(BOOL)enabled selected:(BOOL)selected state:(unint64_t)state;
@end

@implementation UISegmentedControlTVStyleProvider

- (double)defaultHeightForControlSize:(int)size traitCollection:(id)collection
{
  if (size != 1)
  {
    return 70.0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = UISegmentedControlTVStyleProvider;
  [(UISegmentedControlDefaultStyleProvider *)&v7 defaultHeightForControlSize:*&size traitCollection:collection];
  return result;
}

- (id)fontColorForSegment:(id)segment enabled:(BOOL)enabled selected:(BOOL)selected state:(unint64_t)state
{
  segmentCopy = segment;
  traitCollection = [segmentCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (state > 3)
  {
    if (state == 4)
    {
      tintColor = [segmentCopy tintColor];
      v14 = tintColor;
      if (tintColor)
      {
        _tvDefaultTextColorSelected = tintColor;
      }

      else
      {
        _tvDefaultTextColorSelected = [objc_opt_class() _tvDefaultTextColorSelected];
      }

      v16 = _tvDefaultTextColorSelected;

      goto LABEL_21;
    }

    if (state == 6)
    {
      _tvDefaultTextColorDisabledSelected = [objc_opt_class() _tvDefaultTextColorDisabledSelected];
      goto LABEL_20;
    }

    if (state != 8)
    {
      goto LABEL_16;
    }

LABEL_11:
    _tvDefaultTextColorDisabledSelected = [objc_opt_class() _tvDefaultTextColorFocused];
    goto LABEL_20;
  }

  if (!state)
  {
    v12 = objc_opt_class();
    if (userInterfaceStyle == 2)
    {
      [v12 _tvDefaultTextColorNormalUserInterfaceStyleDark];
    }

    else
    {
      [v12 _tvDefaultTextColorNormalUserInterfaceStyleLight];
    }

    goto LABEL_7;
  }

  if (state == 1)
  {
    goto LABEL_11;
  }

  if (state != 2)
  {
LABEL_16:
    _tvDefaultTextColorDisabledSelected = [segmentCopy _disabledColor];
    goto LABEL_20;
  }

  v10 = objc_opt_class();
  if (userInterfaceStyle == 2)
  {
    [v10 _tvDefaultTextColorDisabledUserInterfaceStyleDark];
  }

  else
  {
    [v10 _tvDefaultTextColorDisabledUserInterfaceStyleLight];
  }

  _tvDefaultTextColorDisabledSelected = LABEL_7:;
LABEL_20:
  v16 = _tvDefaultTextColorDisabledSelected;
LABEL_21:

  return v16;
}

@end