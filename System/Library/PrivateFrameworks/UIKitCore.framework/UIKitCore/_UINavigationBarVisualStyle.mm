@interface _UINavigationBarVisualStyle
+ (id)visualStyleForIdiom:(int64_t)idiom;
- (UIEdgeInsets)buttonContentEdgeInsets;
- (_UINavigationBarVisualStyle)initWithIdiom:(int64_t)idiom;
- (double)backButtonIndicatorSpacing;
- (double)barHeightForMetrics:(int64_t)metrics;
- (double)leftBackTitleMarginForCustomBackButtonBackground:(id)background;
- (id)buttonFontForStyle:(int64_t)style;
- (id)defaultTitleColorForUserInterfaceStyle:(int64_t)style barStyle:(int64_t)barStyle;
- (id)timingFunctionForAnimationInView:(id)view withKeyPath:(id)path isInteractive:(BOOL)interactive;
- (int64_t)navigationBar:(id)bar metricsForOrientation:(int64_t)orientation hasPrompt:(BOOL)prompt;
@end

@implementation _UINavigationBarVisualStyle

- (UIEdgeInsets)buttonContentEdgeInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (id)visualStyleForIdiom:(int64_t)idiom
{
  idiomCopy = idiom;
  if (idiom == -1)
  {
    v4 = +[UIDevice currentDevice];
    idiomCopy = [v4 userInterfaceIdiom];
  }

  if ((idiomCopy - 2) > 6)
  {
    v5 = off_1E70EBCC0;
  }

  else
  {
    v5 = off_1E70F7E70[idiomCopy - 2];
  }

  v6 = [objc_alloc(*v5) initWithIdiom:idiomCopy];

  return v6;
}

- (_UINavigationBarVisualStyle)initWithIdiom:(int64_t)idiom
{
  v5.receiver = self;
  v5.super_class = _UINavigationBarVisualStyle;
  result = [(_UINavigationBarVisualStyle *)&v5 init];
  if (result)
  {
    result->_idiom = idiom;
  }

  return result;
}

- (id)timingFunctionForAnimationInView:(id)view withKeyPath:(id)path isInteractive:(BOOL)interactive
{
  viewCopy = view;
  if ([path isEqualToString:@"opacity"])
  {
    [viewCopy alpha];
    HIDWORD(v11) = 1068079513;
    if (v8 < 0.05 || (objc_opt_respondsToSelector() & 1) != 0 && [viewCopy _isFadingInFromCustomAlpha])
    {
      v12 = MEMORY[0x1E69793D0];
      LODWORD(v11) = 1036831949;
      LODWORD(v8) = 0.75;
      LODWORD(v9) = 0.75;
    }

    else
    {
      v12 = MEMORY[0x1E69793D0];
      LODWORD(v11) = 1063675494;
      LODWORD(v8) = 0.25;
      LODWORD(v9) = 0.25;
    }

    LODWORD(v10) = LODWORD(v11);
    v14 = [v12 functionWithControlPoints:v8 :v11 :v9 :v10];
  }

  else
  {
    if (interactive)
    {
      v13 = MEMORY[0x1E6979ED8];
    }

    else
    {
      v13 = MEMORY[0x1E6979EA0];
    }

    v14 = [MEMORY[0x1E69793D0] functionWithName:*v13];
  }

  v15 = v14;

  return v15;
}

- (double)backButtonIndicatorSpacing
{
  v2 = dyld_program_sdk_at_least();
  result = 7.5;
  if (v2)
  {
    return 8.0;
  }

  return result;
}

- (double)barHeightForMetrics:(int64_t)metrics
{
  metrics = self->_metrics;
  self->_metrics = metrics;
  if ((metrics - 101) >= 2)
  {
    [(_UINavigationBarVisualStyle *)self barHeight];
  }

  else
  {
    [(_UINavigationBarVisualStyle *)self barPromptHeight];
  }

  self->_metrics = metrics;
  return result;
}

- (id)buttonFontForStyle:(int64_t)style
{
  [(_UINavigationBarVisualStyle *)self buttonFontSize];
  if (style == 2)
  {
    [off_1E70ECC18 boldSystemFontOfSize:?];
  }

  else
  {
    [off_1E70ECC18 systemFontOfSize:?];
  }
  v4 = ;

  return v4;
}

- (double)leftBackTitleMarginForCustomBackButtonBackground:(id)background
{
  backgroundCopy = background;
  if ([(_UINavigationBarVisualStyle *)self shouldForceLegacyLeftBackTitleMarginForCustomBackButtonBackground:backgroundCopy])
  {
    [(_UINavigationBarVisualStyle *)self _legacyLeftTitleMargin];
  }

  else
  {
    [(_UINavigationBarVisualStyle *)self leftBackTitleMargin];
  }

  v6 = v5;
  [backgroundCopy capInsets];
  v8 = v7;

  return fmax(v6, v8);
}

- (int64_t)navigationBar:(id)bar metricsForOrientation:(int64_t)orientation hasPrompt:(BOOL)prompt
{
  v5 = 101;
  if ((orientation - 1) >= 2)
  {
    v5 = 102;
  }

  if (prompt)
  {
    return v5;
  }

  else
  {
    return (orientation - 3) < 0xFFFFFFFFFFFFFFFELL;
  }
}

- (id)defaultTitleColorForUserInterfaceStyle:(int64_t)style barStyle:(int64_t)barStyle
{
  if ((barStyle - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v4 = ;

  return v4;
}

@end