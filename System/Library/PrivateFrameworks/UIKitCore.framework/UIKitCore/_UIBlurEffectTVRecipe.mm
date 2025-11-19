@interface _UIBlurEffectTVRecipe
+ (id)recipeForStyle:(int64_t)a3;
- (id)recipeForUserInterfaceStyle:(int64_t)a3;
@end

@implementation _UIBlurEffectTVRecipe

+ (id)recipeForStyle:(int64_t)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setStyle:a3];
  v5 = 0;
  if (a3 <= 12)
  {
    if (a3 > 8)
    {
      if (a3 != 9)
      {
        if (a3 == 11)
        {
          v15 = +[UIColor whiteColor];
          [v4 setPreBackdropTint:v15];

          [v4 setPreBackdropTintAlpha:0.04];
          [v4 setPreBackdropBlendMode:*MEMORY[0x1E6979CF8]];
          v6 = +[UIColor whiteColor];
          v8 = 1.3;
          v9 = 50.0;
          v7 = 0.06;
        }

        else
        {
          if (a3 != 12)
          {
            goto LABEL_34;
          }

          v10 = +[UIColor whiteColor];
          [v4 setPreBackdropTint:v10];

          [v4 setPreBackdropTintAlpha:0.05];
          [v4 setPreBackdropBlendMode:*MEMORY[0x1E6979CF8]];
          v6 = +[UIColor whiteColor];
          v8 = 1.8;
          v9 = 50.0;
          v7 = 0.3;
        }

        goto LABEL_33;
      }

      [v4 setStyle:19];
      goto LABEL_28;
    }

    if (a3 != 6)
    {
      if (a3 != 7)
      {
        if (a3 != 8)
        {
          goto LABEL_34;
        }

        [v4 setStyle:18];
        goto LABEL_11;
      }

      [v4 setStyle:17];
LABEL_31:
      v6 = +[UIColor blackColor];
      v8 = 1.4;
      v9 = 50.0;
      v7 = 0.32;
      goto LABEL_33;
    }

    [v4 setStyle:16];
LABEL_26:
    v6 = +[UIColor blackColor];
    v8 = 1.3;
    v9 = 50.0;
    v7 = 0.08;
    goto LABEL_33;
  }

  if (a3 > 16)
  {
    if (a3 <= 18)
    {
      if (a3 != 17)
      {
LABEL_11:
        v6 = +[UIColor blackColor];
        v7 = 0.5;
        v8 = 1.6;
        v9 = 50.0;
LABEL_33:
        [v4 setBackdropTint:v6];

        [v4 setBackdropTintAlpha:v7];
        [v4 setBlurRadius:v9];
        [v4 setSaturation:v8];
        v5 = v4;
        goto LABEL_34;
      }

      goto LABEL_31;
    }

    if (a3 != 19)
    {
      if (a3 != 4019)
      {
        goto LABEL_34;
      }

      v11 = +[UIColor whiteColor];
      [v4 setPreBackdropTint:v11];

      [v4 setPreBackdropTintAlpha:0.3];
      [v4 setPreBackdropBlendMode:*MEMORY[0x1E6979CF8]];
      v6 = +[UIColor whiteColor];
      v8 = 2.0;
      v9 = 0.0;
      goto LABEL_29;
    }

LABEL_28:
    v14 = +[UIColor whiteColor];
    [v4 setPreBackdropTint:v14];

    [v4 setPreBackdropTintAlpha:0.08];
    v6 = +[UIColor blackColor];
    v8 = 1.0;
    v9 = 50.0;
LABEL_29:
    v7 = 0.8;
    goto LABEL_33;
  }

  switch(a3)
  {
    case 13:
      v12 = +[UIColor whiteColor];
      [v4 setPreBackdropTint:v12];

      [v4 setPreBackdropTintAlpha:0.2];
      [v4 setPreBackdropBlendMode:*MEMORY[0x1E6979CF8]];
      v6 = +[UIColor whiteColor];
      v8 = 1.6;
      v9 = 50.0;
      v7 = 0.4;
      goto LABEL_33;
    case 14:
      v8 = 1.0;
      v13 = [UIColor colorWithWhite:0.75 alpha:1.0];
      [v4 setPreBackdropTint:v13];

      [v4 setPreBackdropTintAlpha:0.3];
      [v4 setPreBackdropBlendMode:*MEMORY[0x1E6979CF8]];
      v6 = [UIColor colorWithWhite:0.75 alpha:1.0];
      v9 = 50.0;
      v7 = 0.6;
      goto LABEL_33;
    case 16:
      goto LABEL_26;
  }

LABEL_34:

  return v5;
}

- (id)recipeForUserInterfaceStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    if (qword_1ED498EC0 != -1)
    {
      dispatch_once(&qword_1ED498EC0, &__block_literal_global_38);
    }

    v4 = _MergedGlobals_13_0;
  }

  else
  {
    if (qword_1ED498ED0 != -1)
    {
      dispatch_once(&qword_1ED498ED0, &__block_literal_global_280);
    }

    v4 = qword_1ED498EC8;
  }

  if ([v4 containsIndex:self->_style])
  {
    goto LABEL_9;
  }

  style = self->_style;
  if (style <= 15)
  {
    if (style > 12)
    {
      if (style == 13)
      {
        v7 = objc_opt_class();
        v8 = 18;
        goto LABEL_29;
      }

      if (style == 14)
      {
        v7 = objc_opt_class();
        v8 = 19;
        goto LABEL_29;
      }
    }

    else
    {
      if (style == 11)
      {
        v7 = objc_opt_class();
        v8 = 16;
        goto LABEL_29;
      }

      if (style == 12)
      {
        v7 = objc_opt_class();
        v8 = 17;
        goto LABEL_29;
      }
    }

LABEL_9:
    v5 = self;
    goto LABEL_30;
  }

  if (style <= 17)
  {
    if (style == 16)
    {
      v7 = objc_opt_class();
      v8 = 11;
    }

    else
    {
      v7 = objc_opt_class();
      v8 = 12;
    }
  }

  else if (style == 18)
  {
    v7 = objc_opt_class();
    v8 = 13;
  }

  else
  {
    if (style != 19)
    {
      goto LABEL_9;
    }

    v7 = objc_opt_class();
    v8 = 14;
  }

LABEL_29:
  v5 = [v7 recipeForStyle:v8];
LABEL_30:

  return v5;
}

@end