@interface _UINavigationBarVisualStyle
+ (id)visualStyleForIdiom:(int64_t)a3;
- (UIEdgeInsets)buttonContentEdgeInsets;
- (_UINavigationBarVisualStyle)initWithIdiom:(int64_t)a3;
- (double)backButtonIndicatorSpacing;
- (double)barHeightForMetrics:(int64_t)a3;
- (double)leftBackTitleMarginForCustomBackButtonBackground:(id)a3;
- (id)buttonFontForStyle:(int64_t)a3;
- (id)defaultTitleColorForUserInterfaceStyle:(int64_t)a3 barStyle:(int64_t)a4;
- (id)timingFunctionForAnimationInView:(id)a3 withKeyPath:(id)a4 isInteractive:(BOOL)a5;
- (int64_t)navigationBar:(id)a3 metricsForOrientation:(int64_t)a4 hasPrompt:(BOOL)a5;
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

+ (id)visualStyleForIdiom:(int64_t)a3
{
  v3 = a3;
  if (a3 == -1)
  {
    v4 = +[UIDevice currentDevice];
    v3 = [v4 userInterfaceIdiom];
  }

  if ((v3 - 2) > 6)
  {
    v5 = off_1E70EBCC0;
  }

  else
  {
    v5 = off_1E70F7E70[v3 - 2];
  }

  v6 = [objc_alloc(*v5) initWithIdiom:v3];

  return v6;
}

- (_UINavigationBarVisualStyle)initWithIdiom:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UINavigationBarVisualStyle;
  result = [(_UINavigationBarVisualStyle *)&v5 init];
  if (result)
  {
    result->_idiom = a3;
  }

  return result;
}

- (id)timingFunctionForAnimationInView:(id)a3 withKeyPath:(id)a4 isInteractive:(BOOL)a5
{
  v7 = a3;
  if ([a4 isEqualToString:@"opacity"])
  {
    [v7 alpha];
    HIDWORD(v11) = 1068079513;
    if (v8 < 0.05 || (objc_opt_respondsToSelector() & 1) != 0 && [v7 _isFadingInFromCustomAlpha])
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
    if (a5)
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

- (double)barHeightForMetrics:(int64_t)a3
{
  metrics = self->_metrics;
  self->_metrics = a3;
  if ((a3 - 101) >= 2)
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

- (id)buttonFontForStyle:(int64_t)a3
{
  [(_UINavigationBarVisualStyle *)self buttonFontSize];
  if (a3 == 2)
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

- (double)leftBackTitleMarginForCustomBackButtonBackground:(id)a3
{
  v4 = a3;
  if ([(_UINavigationBarVisualStyle *)self shouldForceLegacyLeftBackTitleMarginForCustomBackButtonBackground:v4])
  {
    [(_UINavigationBarVisualStyle *)self _legacyLeftTitleMargin];
  }

  else
  {
    [(_UINavigationBarVisualStyle *)self leftBackTitleMargin];
  }

  v6 = v5;
  [v4 capInsets];
  v8 = v7;

  return fmax(v6, v8);
}

- (int64_t)navigationBar:(id)a3 metricsForOrientation:(int64_t)a4 hasPrompt:(BOOL)a5
{
  v5 = 101;
  if ((a4 - 1) >= 2)
  {
    v5 = 102;
  }

  if (a5)
  {
    return v5;
  }

  else
  {
    return (a4 - 3) < 0xFFFFFFFFFFFFFFFELL;
  }
}

- (id)defaultTitleColorForUserInterfaceStyle:(int64_t)a3 barStyle:(int64_t)a4
{
  if ((a4 - 3) > 0xFFFFFFFFFFFFFFFDLL)
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