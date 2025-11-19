@interface _UINavigationBarPhonePadVisualStyle
- (double)backIndicatorBottomMargin;
- (double)barHeight;
- (double)barPromptHeight;
- (double)buttonHeight;
- (double)navigationItemBaselineOffset;
- (double)topBackMargin;
- (double)topMargin;
- (double)topTitleMargin;
- (int64_t)navigationBar:(id)a3 metricsForOrientation:(int64_t)a4 hasPrompt:(BOOL)a5;
@end

@implementation _UINavigationBarPhonePadVisualStyle

- (double)buttonHeight
{
  metrics = self->super._metrics;
  result = 24.0;
  if (metrics != 1 && metrics != 102)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = _UINavigationBarPhonePadVisualStyle;
    [(_UINavigationBarVisualStyle *)&v6 buttonHeight];
  }

  return result;
}

- (double)barHeight
{
  metrics = self->super._metrics;
  result = 32.0;
  if (metrics != 1 && metrics != 102)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = _UINavigationBarPhonePadVisualStyle;
    [(_UINavigationBarVisualStyle *)&v6 barHeight];
  }

  return result;
}

- (double)barPromptHeight
{
  metrics = self->super._metrics;
  result = 54.0;
  if (metrics != 1 && metrics != 102)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = _UINavigationBarPhonePadVisualStyle;
    [(_UINavigationBarVisualStyle *)&v6 barPromptHeight];
  }

  return result;
}

- (double)topMargin
{
  result = 9.0;
  if (!self->super._inPopover)
  {
    metrics = self->super._metrics;
    result = 4.0;
    if (metrics != 1 && metrics != 102)
    {
      v7 = v2;
      v8 = v3;
      v6.receiver = self;
      v6.super_class = _UINavigationBarPhonePadVisualStyle;
      [(_UINavigationBarVisualStyle *)&v6 topMargin];
    }
  }

  return result;
}

- (double)topTitleMargin
{
  metrics = self->super._metrics;
  result = 1.0;
  if (metrics != 1 && metrics != 102)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = _UINavigationBarPhonePadVisualStyle;
    [(_UINavigationBarVisualStyle *)&v6 topTitleMargin];
  }

  return result;
}

- (double)topBackMargin
{
  metrics = self->super._metrics;
  result = 5.0;
  if (metrics != 1 && metrics != 102)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = _UINavigationBarPhonePadVisualStyle;
    [(_UINavigationBarVisualStyle *)&v6 topBackMargin];
  }

  return result;
}

- (double)navigationItemBaselineOffset
{
  metrics = self->super._metrics;
  result = 11.0;
  if (metrics != 1 && metrics != 102)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = _UINavigationBarPhonePadVisualStyle;
    [(_UINavigationBarVisualStyle *)&v6 navigationItemBaselineOffset];
  }

  return result;
}

- (double)backIndicatorBottomMargin
{
  metrics = self->super._metrics;
  result = 7.5;
  if (metrics != 1 && metrics != 102)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = _UINavigationBarPhonePadVisualStyle;
    [(_UINavigationBarVisualStyle *)&v6 backIndicatorBottomMargin];
  }

  return result;
}

- (int64_t)navigationBar:(id)a3 metricsForOrientation:(int64_t)a4 hasPrompt:(BOOL)a5
{
  v5 = a5;
  v8 = (a4 - 3) < 2;
  v9 = a3;
  if (_UIUseMiniHeightInLandscape(v8))
  {
    v10 = a4;
  }

  else
  {
    v10 = 1;
  }

  v13.receiver = self;
  v13.super_class = _UINavigationBarPhonePadVisualStyle;
  v11 = [(_UINavigationBarVisualStyle *)&v13 navigationBar:v9 metricsForOrientation:v10 hasPrompt:v5];

  return v11;
}

@end