@interface UIStatusBarExternalForegroundStyleAttributes
- (UIEdgeInsets)edgeInsetsForBatteryInsides;
- (UIEdgeInsets)edgeInsetsForBluetoothBatteryInsides;
- (double)scale;
- (id)makeTextFontForStyle:(int64_t)style;
- (id)textForNetworkType:(int)type;
- (int64_t)activityIndicatorStyleWithSyncActivity:(BOOL)activity;
@end

@implementation UIStatusBarExternalForegroundStyleAttributes

- (double)scale
{
  v2 = +[UIScreen _carScreen];
  v3 = v2;
  if (v2)
  {
    mainScreen = v2;
  }

  else
  {
    mainScreen = [objc_opt_self() mainScreen];
  }

  v5 = mainScreen;

  [v5 scale];
  v7 = v6;

  return v7;
}

- (UIEdgeInsets)edgeInsetsForBatteryInsides
{
  [(UIStatusBarExternalForegroundStyleAttributes *)self scale];
  if (v2 <= 2.5)
  {
    v3 = 4.5;
  }

  else
  {
    v3 = 4.33333333;
  }

  v4 = 2.0;
  v5 = 2.0;
  v6 = 2.0;
  result.right = v3;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)edgeInsetsForBluetoothBatteryInsides
{
  v2 = 6.5;
  v3 = 1.0;
  v4 = 6.0;
  v5 = 1.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (int64_t)activityIndicatorStyleWithSyncActivity:(BOOL)activity
{
  if (activity)
  {
    return 18;
  }

  else
  {
    return 17;
  }
}

- (id)makeTextFontForStyle:(int64_t)style
{
  if (style <= 3)
  {
    if (style == 1)
    {
      v6 = 12.0;
      goto LABEL_10;
    }

    if (style == 3)
    {
      v6 = 16.0;
LABEL_10:
      v11 = [off_1E70ECC18 systemFontOfSize:v6];
      goto LABEL_13;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIStatusBarExternalForegroundStyleAttributes.m" lineNumber:99 description:{@"font requested for style %ld but font size was not determined", style}];

    v6 = 0.0;
    goto LABEL_10;
  }

  if (style == 4)
  {
    v7 = off_1E70ECC18;
    v8 = *off_1E70ECD28;
    v9 = 10.0;
  }

  else
  {
    if (style != 5)
    {
      goto LABEL_8;
    }

    v7 = off_1E70ECC18;
    v8 = *off_1E70ECD30;
    v9 = 11.0;
  }

  v11 = [v7 monospacedDigitSystemFontOfSize:v9 weight:v8];
LABEL_13:

  return v11;
}

- (id)textForNetworkType:(int)type
{
  if (!type)
  {
    v3 = @"GPRS";
    goto LABEL_5;
  }

  if (type == 4)
  {
    v3 = @"LTE";
LABEL_5:
    v4 = _UINSLocalizedStringWithDefaultValue(v3, v3);
    goto LABEL_7;
  }

  v6.receiver = self;
  v6.super_class = UIStatusBarExternalForegroundStyleAttributes;
  v4 = [(UIStatusBarForegroundStyleAttributes *)&v6 textForNetworkType:?];
LABEL_7:

  return v4;
}

@end