@interface UISegmentedControlTVStyleProvider
- (double)defaultHeightForControlSize:(int)a3 traitCollection:(id)a4;
- (id)fontColorForSegment:(id)a3 enabled:(BOOL)a4 selected:(BOOL)a5 state:(unint64_t)a6;
@end

@implementation UISegmentedControlTVStyleProvider

- (double)defaultHeightForControlSize:(int)a3 traitCollection:(id)a4
{
  if (a3 != 1)
  {
    return 70.0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = UISegmentedControlTVStyleProvider;
  [(UISegmentedControlDefaultStyleProvider *)&v7 defaultHeightForControlSize:*&a3 traitCollection:a4];
  return result;
}

- (id)fontColorForSegment:(id)a3 enabled:(BOOL)a4 selected:(BOOL)a5 state:(unint64_t)a6
{
  v7 = a3;
  v8 = [v7 traitCollection];
  v9 = [v8 userInterfaceStyle];

  if (a6 > 3)
  {
    if (a6 == 4)
    {
      v13 = [v7 tintColor];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [objc_opt_class() _tvDefaultTextColorSelected];
      }

      v16 = v15;

      goto LABEL_21;
    }

    if (a6 == 6)
    {
      v11 = [objc_opt_class() _tvDefaultTextColorDisabledSelected];
      goto LABEL_20;
    }

    if (a6 != 8)
    {
      goto LABEL_16;
    }

LABEL_11:
    v11 = [objc_opt_class() _tvDefaultTextColorFocused];
    goto LABEL_20;
  }

  if (!a6)
  {
    v12 = objc_opt_class();
    if (v9 == 2)
    {
      [v12 _tvDefaultTextColorNormalUserInterfaceStyleDark];
    }

    else
    {
      [v12 _tvDefaultTextColorNormalUserInterfaceStyleLight];
    }

    goto LABEL_7;
  }

  if (a6 == 1)
  {
    goto LABEL_11;
  }

  if (a6 != 2)
  {
LABEL_16:
    v11 = [v7 _disabledColor];
    goto LABEL_20;
  }

  v10 = objc_opt_class();
  if (v9 == 2)
  {
    [v10 _tvDefaultTextColorDisabledUserInterfaceStyleDark];
  }

  else
  {
    [v10 _tvDefaultTextColorDisabledUserInterfaceStyleLight];
  }

  v11 = LABEL_7:;
LABEL_20:
  v16 = v11;
LABEL_21:

  return v16;
}

@end