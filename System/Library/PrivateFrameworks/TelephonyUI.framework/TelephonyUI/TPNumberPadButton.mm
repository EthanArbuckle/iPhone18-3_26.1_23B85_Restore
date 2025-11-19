@interface TPNumberPadButton
+ (CAColorMatrix)buttonColorMatrix;
+ (CGRect)circleBounds;
+ (CGSize)defaultSize;
+ (UIEdgeInsets)paddingOutsideRing;
+ (double)horizontalPadding;
+ (double)outerCircleDiameter;
+ (double)verticalPadding;
+ (id)disabledImageForCharacter:(int64_t)a3;
+ (id)imageForCharacter:(int64_t)a3 highlighted:(BOOL)a4 whiteVersion:(BOOL)a5;
+ (id)localizedLettersForCharacter:(int64_t)a3;
+ (id)localizedLettersForCharacter:(int64_t)a3 featureFlags:(id)a4;
+ (id)scriptKey;
+ (void)loadNumberPadKeyPrototypeView;
+ (void)resetLocale;
+ (void)resetLocaleIfNeeded;
+ (void)updatePrototypeView:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)initForCharacter:(int64_t)a3 style:(int64_t)a4;
- (void)highlightCircleView:(BOOL)a3 animated:(BOOL)a4;
- (void)reloadImagesForCurrentCharacter;
- (void)setColor:(id)a3;
- (void)setGreyedOut:(BOOL)a3;
- (void)updateBackgroundMaterial:(id)a3;
@end

@implementation TPNumberPadButton

+ (CGRect)circleBounds
{
  [objc_opt_class() defaultSize];
  v3 = v2;
  [objc_opt_class() outerCircleDiameter];
  v5 = (v3 - v4) * 0.5;
  [objc_opt_class() defaultSize];
  v7 = v6;
  [objc_opt_class() outerCircleDiameter];
  v9 = (v7 - v8) * 0.5;
  [objc_opt_class() outerCircleDiameter];
  v11 = v10;
  [objc_opt_class() outerCircleDiameter];
  v13 = v12;
  v14 = v5;
  v15 = v9;
  v16 = v11;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)reloadImagesForCurrentCharacter
{
  v3 = [(TPNumberPadButton *)self glyphLayer];

  if (v3)
  {
    v4 = [(TPNumberPadButton *)self glyphLayer];
    [v4 removeFromSuperlayer];
  }

  v5 = [(TPNumberPadButton *)self highlightedGlyphLayer];

  if (v5)
  {
    v6 = [(TPNumberPadButton *)self highlightedGlyphLayer];
    [v6 removeFromSuperlayer];
  }

  v51 = [objc_opt_class() imageForCharacter:{-[TPNumberPadButton character](self, "character")}];
  v7 = [MEMORY[0x1E6979398] layer];
  [v7 setOpaque:0];
  v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v8 scale];
  [v7 setContentsScale:?];

  v9 = v51;
  [v7 setContents:{objc_msgSend(v51, "CGImage")}];
  [v51 size];
  v11 = v10;
  v13 = v12;
  [(TPNumberPadButton *)self frame];
  v15 = v14;
  [v51 size];
  *&v16 = (v15 - v16) * 0.5;
  v17 = roundf(*&v16);
  [(TPNumberPadButton *)self frame];
  v19 = v18;
  [v51 size];
  v21 = (v19 - v20) * 0.5;
  [v7 setFrame:{v17, roundf(v21), v11, v13}];
  if ([objc_opt_class() isUsingGlass])
  {
    v22 = [(TPNumberPadButton *)self circleView];
    v23 = [v22 layer];
    [v23 addSublayer:v7];

    v24 = [(TPNumberPadButton *)self circleView];
    v25 = [v24 layer];
    [v25 bounds];
    MidX = CGRectGetMidX(v53);
    v27 = [(TPNumberPadButton *)self circleView];
    v28 = [v27 layer];
    [v28 bounds];
    [v7 setPosition:{MidX, CGRectGetMidY(v54)}];
  }

  else
  {
    v24 = [(TPNumberPadButton *)self layer];
    [v24 addSublayer:v7];
  }

  [(TPNumberPadButton *)self setGlyphLayer:v7];
  v29 = [objc_opt_class() imageForCharacter:-[TPNumberPadButton character](self highlighted:{"character"), 1}];
  v30 = [MEMORY[0x1E6979398] layer];
  [v30 setOpaque:0];
  v31 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v31 scale];
  [v30 setContentsScale:?];

  [v30 setContents:{objc_msgSend(v29, "CGImage")}];
  [v51 size];
  v33 = v32;
  v35 = v34;
  [(TPNumberPadButton *)self frame];
  v37 = v36;
  [v29 size];
  *&v38 = (v37 - v38) * 0.5;
  v39 = roundf(*&v38);
  [(TPNumberPadButton *)self frame];
  v41 = v40;
  [v29 size];
  v43 = (v41 - v42) * 0.5;
  [v30 setFrame:{v39, roundf(v43), v33, v35}];
  [v30 setOpacity:0.0];
  if ([objc_opt_class() isUsingGlass])
  {
    v44 = [(TPNumberPadButton *)self circleView];
    v45 = [v44 layer];
    [v45 addSublayer:v30];

    v46 = [(TPNumberPadButton *)self circleView];
    v47 = [v46 layer];
    [v47 bounds];
    v48 = CGRectGetMidX(v55);
    v49 = [(TPNumberPadButton *)self circleView];
    v50 = [v49 layer];
    [v50 bounds];
    [v30 setPosition:{v48, CGRectGetMidY(v56)}];
  }

  else
  {
    v46 = [(TPNumberPadButton *)self layer];
    [v46 addSublayer:v30];
  }

  [(TPNumberPadButton *)self setHighlightedGlyphLayer:v30];
  [(TPNumberPadButton *)self setNeedsLayout];
}

+ (void)loadNumberPadKeyPrototypeView
{
  if (loadNumberPadKeyPrototypeView_onceToken != -1)
  {
    +[TPNumberPadButton loadNumberPadKeyPrototypeView];
  }
}

void __50__TPNumberPadButton_loadNumberPadKeyPrototypeView__block_invoke()
{
  v0 = [TPNumberPadKey alloc];
  v1 = [(TPNumberPadKey *)v0 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v2 = numberPadKeyPrototypeView;
  numberPadKeyPrototypeView = v1;

  if (numberPadKeyPrototypeView)
  {
    [numberPadKeyPrototypeView systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE098], *(MEMORY[0x1E69DE098] + 8)}];
    prototypeViewSideDimension = v3;
    v4 = objc_opt_new();
    v5 = numberFormatter;
    numberFormatter = v4;

    +[TPNumberPadButton resetLocale];
  }

  else
  {
    v6 = numberFormatter;
    numberFormatter = 0;
  }
}

+ (void)resetLocale
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  [numberFormatter setLocale:v2];

  TPNumberPadKeyResetLocale();
  v3 = [MEMORY[0x1E695DF58] preferredLanguages];
  v9 = [v3 firstObject];

  if ([v9 hasPrefix:@"ar"])
  {
    v4 = 0;
LABEL_11:
    v5 = v9;
    goto LABEL_12;
  }

  if ([v9 hasPrefix:@"bg"])
  {
    v4 = 4;
    goto LABEL_11;
  }

  if ([v9 hasPrefix:@"he"])
  {
    v4 = 2;
    goto LABEL_11;
  }

  if ([v9 hasPrefix:@"kk"])
  {
    v4 = 5;
    goto LABEL_11;
  }

  if ([v9 hasPrefix:@"ru"])
  {
    v4 = 3;
    goto LABEL_11;
  }

  v6 = objc_alloc_init(MEMORY[0x1E69D8BE8]);
  if ([v6 smartDialerLocalizationEnabled])
  {
    v7 = [v9 hasPrefix:@"uk"];

    if (v7)
    {
      v4 = 6;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v8 = [v9 hasPrefix:@"en"] == 0;
  v5 = v9;
  v4 = 7;
  if (!v8)
  {
    v4 = 1;
  }

LABEL_12:
  uiLanguage = v4;
}

+ (void)resetLocaleIfNeeded
{
  if (numberFormatter)
  {
    v2 = [MEMORY[0x1E695DF58] currentLocale];
    v3 = [numberFormatter locale];

    if (v2 != v3)
    {

      +[TPNumberPadButton resetLocale];
    }
  }
}

+ (id)scriptKey
{
  if (uiLanguage > 6)
  {
    return @"other";
  }

  else
  {
    return off_1E7C0C630[uiLanguage];
  }
}

+ (CGSize)defaultSize
{
  [objc_opt_class() outerCircleDiameter];
  v3 = v2;
  [objc_opt_class() horizontalPadding];
  v5 = v3 + v4 * 2.0;
  [objc_opt_class() outerCircleDiameter];
  v7 = v6;
  [objc_opt_class() verticalPadding];
  v9 = v7 + v8 * 2.0;
  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

+ (double)verticalPadding
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  v3 = [v2 screenSizeCategory];

  result = 0.0;
  if (v3 > 5)
  {
    if (v3 > 8)
    {
      if (v3 == 9)
      {
        goto LABEL_18;
      }

      if (v3 == 10)
      {
        return 10.0;
      }

      if (v3 != 11)
      {
        return result;
      }

      return 8.0;
    }

    if (v3 != 6)
    {
      if (v3 != 7)
      {
LABEL_18:
        v7 = _UISolariumEnabled();
        result = 4.5;
        if (v7)
        {
          return 3.5;
        }

        return result;
      }

      return 8.0;
    }

    return 7.5;
  }

  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 != 4)
      {
        return 9.0;
      }

      return 8.0;
    }

    return 7.5;
  }

  if (v3 == 1)
  {
    goto LABEL_18;
  }

  if (v3 == 2)
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    v6 = [v5 isUserInterfaceIdiomPad];

    result = 5.5;
    if ((v6 & 1) == 0)
    {
      return 7.5;
    }
  }

  return result;
}

+ (double)outerCircleDiameter
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  v3 = [v2 screenSizeCategory];

  result = 0.0;
  if (v3 > 5)
  {
    if (v3 <= 8)
    {
      if (v3 == 6)
      {
        return 85.0;
      }

      return 75.0;
    }

    switch(v3)
    {
      case 9:
        return 75.0;
      case 10:
        return 88.0;
      case 11:
        return 75.0;
    }
  }

  else
  {
    if (v3 <= 2)
    {
      if (v3 >= 3)
      {
        return result;
      }

      return 75.0;
    }

    if (v3 != 3)
    {
      if (v3 != 4)
      {
        return 78.0;
      }

      return 75.0;
    }

    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    v6 = [v5 isUserInterfaceIdiomPad];

    result = 85.0;
    if (v6)
    {
      return 83.3000031;
    }
  }

  return result;
}

+ (UIEdgeInsets)paddingOutsideRing
{
  [objc_opt_class() verticalPadding];
  v3 = v2;
  [objc_opt_class() horizontalPadding];
  v5 = v4;
  [objc_opt_class() verticalPadding];
  v7 = v6;
  [objc_opt_class() horizontalPadding];
  v9 = v8;
  v10 = v3;
  v11 = v5;
  v12 = v7;
  result.right = v9;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

+ (void)updatePrototypeView:(id)a3
{
  v7 = a3;
  objc_sync_enter(@"lock");
  objc_storeStrong(&numberPadKeyPrototypeView, a3);
  [numberPadKeyPrototypeView systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE098], *(MEMORY[0x1E69DE098] + 8)}];
  prototypeViewSideDimension = v4;
  v5 = objc_opt_new();
  v6 = numberFormatter;
  numberFormatter = v5;

  +[TPNumberPadButton resetLocale];
  objc_sync_exit(@"lock");
}

+ (id)localizedLettersForCharacter:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E69D8BE8]);
  v6 = [a1 localizedLettersForCharacter:a3 featureFlags:v5];

  return v6;
}

+ (id)localizedLettersForCharacter:(int64_t)a3 featureFlags:(id)a4
{
  if (![a4 smartDialerLocalizationEnabled])
  {
    v5 = &stru_1F2CA8008;
    if (a3 > 4)
    {
      if (a3 > 6)
      {
        if (a3 == 8)
        {
          v10 = uiLanguage;
          goto LABEL_35;
        }

        if (a3 != 7)
        {
          goto LABEL_38;
        }

        v10 = uiLanguage;
LABEL_25:
        if (v10 < 6 && ((0x3Du >> v10) & 1) != 0)
        {
          v11 = off_1E7C0C5D0;
LABEL_37:
          v5 = v11[v10];
          goto LABEL_38;
        }

LABEL_35:
        if (v10 >= 6)
        {
          goto LABEL_38;
        }

        v11 = off_1E7C0C600;
        goto LABEL_37;
      }

      if (a3 != 5)
      {
        v10 = uiLanguage;
        if ((uiLanguage - 3) < 2)
        {
          v5 = @"Ф Х Ц Ч";
          goto LABEL_38;
        }

LABEL_61:
        switch(v10)
        {
          case 0uLL:
            v5 = @"ن ه و ي";
            goto LABEL_38;
          case 5uLL:
            v5 = @"Ұ Ү Ф Х Ц";
            goto LABEL_38;
          case 2uLL:
            v5 = @"ר ש ת";
            goto LABEL_38;
        }

        goto LABEL_25;
      }

      v10 = uiLanguage;
      if ((uiLanguage - 3) < 2)
      {
        v5 = @"Р С Т У";
        goto LABEL_38;
      }

LABEL_57:
      switch(v10)
      {
        case 0uLL:
          v5 = @"ج ح خ";
          goto LABEL_38;
        case 5uLL:
          v5 = @"П Р С Т У";
          goto LABEL_38;
        case 2uLL:
          v5 = @"ז ח ט";
          goto LABEL_38;
      }

      goto LABEL_61;
    }

    if (a3 > 2)
    {
      if (a3 != 3)
      {
        v10 = uiLanguage;
        if ((uiLanguage - 3) < 2)
        {
          v5 = @"М Н О П";
          goto LABEL_38;
        }

LABEL_53:
        switch(v10)
        {
          case 0uLL:
            v5 = @"د ذ ر ز";
            goto LABEL_38;
          case 5uLL:
            v5 = @"М Н Ң О Ө";
            goto LABEL_38;
          case 2uLL:
            v5 = @"י כ ל";
            goto LABEL_38;
        }

        goto LABEL_57;
      }

      v10 = uiLanguage;
      if ((uiLanguage - 3) < 2)
      {
        v5 = @"И Й К Л";
        goto LABEL_38;
      }
    }

    else
    {
      if (a3 == 1)
      {
        v10 = uiLanguage;
        if ((uiLanguage - 3) < 2)
        {
          v5 = @"А Б В Г";
          goto LABEL_38;
        }

        switch(uiLanguage)
        {
          case 0:
            v5 = @"ب ت ة ث";
            goto LABEL_38;
          case 5:
            v5 = @"А Ә Б В Г";
            goto LABEL_38;
          case 2:
            v5 = @"ד ה ו";
            goto LABEL_38;
        }
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_38;
        }

        v10 = uiLanguage;
        if ((uiLanguage - 3) < 2)
        {
          v5 = @"Д Е Ж З";
          goto LABEL_38;
        }
      }

      switch(v10)
      {
        case 0uLL:
          v5 = @"ا ء";
          goto LABEL_38;
        case 5uLL:
          v5 = @"Ғ Д Е Ж З";
          goto LABEL_38;
        case 2uLL:
          v5 = @"א ב ג";
          goto LABEL_38;
      }
    }

    switch(v10)
    {
      case 0uLL:
        v5 = @"س ش ص ض";
        goto LABEL_38;
      case 5uLL:
        v5 = @"И Й К Қ Л";
        goto LABEL_38;
      case 2uLL:
        v5 = @"מ נ";
        goto LABEL_38;
    }

    goto LABEL_53;
  }

  v5 = &stru_1F2CA8008;
  if (uiLanguage != 1 && uiLanguage != 7)
  {
    v7 = TPStringForNumberPadCharacter(a3);
    v8 = [numberFormatter locale];
    v9 = TINumberPadGetDisplayStringForDigit();
    if (v9)
    {
      v5 = v9;
    }
  }

LABEL_38:

  return v5;
}

+ (id)imageForCharacter:(int64_t)a3 highlighted:(BOOL)a4 whiteVersion:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  +[TPNumberPadButton loadNumberPadKeyPrototypeView];
  +[TPNumberPadButton resetLocaleIfNeeded];
  v8 = 0;
  v9 = &stru_1F2CA8008;
  v10 = 1;
  if (a3 <= 5)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v11 = [numberFormatter stringFromNumber:&unk_1F2CB10D8];
        v8 = 0;
        v10 = 1;
        v9 = @"G H I";
      }

      else if (a3 == 4)
      {
        v11 = [numberFormatter stringFromNumber:&unk_1F2CB10F0];
        v8 = 0;
        v10 = 1;
        v9 = @"J K L";
      }

      else
      {
        v11 = [numberFormatter stringFromNumber:&unk_1F2CB1108];
        v8 = 0;
        v10 = 1;
        v9 = @"M N O";
      }

      goto LABEL_30;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        v11 = [numberFormatter stringFromNumber:&unk_1F2CB10A8];
        v8 = 0;
        v10 = 1;
        v9 = @"A B C";
      }

      else
      {
        v11 = &stru_1F2CA8008;
        if (a3 == 2)
        {
          v11 = [numberFormatter stringFromNumber:&unk_1F2CB10C0];
          v8 = 0;
          v10 = 1;
          v9 = @"D E F";
        }
      }

      goto LABEL_30;
    }

    v11 = [numberFormatter stringFromNumber:&unk_1F2CB1090];
    v8 = 0;
    v10 = 1;
LABEL_29:
    v9 = &stru_1F2CA8008;
    goto LABEL_30;
  }

  if (a3 <= 8)
  {
    if (a3 == 6)
    {
      v11 = [numberFormatter stringFromNumber:&unk_1F2CB1120];
      v8 = 0;
      v10 = 1;
      v9 = @"P Q R S";
    }

    else if (a3 == 7)
    {
      v11 = [numberFormatter stringFromNumber:&unk_1F2CB1138];
      v8 = 0;
      v10 = 1;
      v9 = @"T U V";
    }

    else
    {
      v11 = [numberFormatter stringFromNumber:&unk_1F2CB1150];
      v8 = 0;
      v10 = 1;
      v9 = @"W X Y Z";
    }

    goto LABEL_30;
  }

  if (a3 == 9)
  {
    v11 = @"*";
LABEL_28:
    v8 = 1;
    goto LABEL_29;
  }

  if (a3 == 11)
  {
    v11 = @"#";
    goto LABEL_28;
  }

  v11 = &stru_1F2CA8008;
  if (a3 == 10)
  {
    v11 = [numberFormatter stringFromNumber:&unk_1F2CB1078];
    v12 = [a1 usesTelephonyGlyphsWhereAvailable];
    v10 = 0;
    v8 = v12 ^ 1;
    if (v12)
    {
      v9 = @"+";
    }

    else
    {
      v9 = &stru_1F2CA8008;
    }
  }

LABEL_30:
  v40 = v8;
  v41 = v10;
  v44 = v11;
  v13 = MEMORY[0x1E696AEC0];
  v14 = +[TPNumberPadButton scriptKey];
  if (v6)
  {
    v15 = @"hi";
  }

  else
  {
    v15 = &stru_1F2CA8008;
  }

  if (v5)
  {
    v16 = @"white";
  }

  else
  {
    v16 = @"mask";
  }

  v17 = v5;
  if ([a1 usesBoldAssets])
  {
    v18 = @"-bold";
  }

  else
  {
    v18 = &stru_1F2CA8008;
  }

  v19 = [a1 isCarPlay];
  v20 = @"-carplay";
  if (!v19)
  {
    v20 = &stru_1F2CA8008;
  }

  v21 = v44;
  v43 = v9;
  v22 = [v13 stringWithFormat:@"%@-%@-%@-%@-%@%@%@.png", v14, v44, v9, v15, v16, v18, v20];

  v23 = +[TPFileStorageManager sharedInstance];
  v24 = [v23 imageWithName:v22];

  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v39 = v6;
    v26 = [a1 localizedLettersForCharacter:1];
    v27 = v41 & ([v26 isEqualToString:&stru_1F2CA8008] ^ 1);

    if (v27 == 1)
    {
      v28 = [a1 localizedLettersForCharacter:a3];
      v29 = v9;
    }

    else
    {
      v29 = 0;
      v28 = v9;
    }

    objc_sync_enter(@"lock");
    v43 = v28;
    [numberPadKeyPrototypeView setDigit:v44 primaryLetters:v28 secondaryLetters:v29];
    v30 = numberPadKeyPrototypeView;
    v31 = uiLanguage;
    [objc_opt_class() defaultSize];
    v33 = v32;
    v34 = [a1 isCarPlay];
    v35 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v30 setFontStylesForHighlightState:v39 language:v31 showLocalizedLetters:v27 shouldCenterDigit:v40 fontColor:v17 circleDiameter:v34 isCarPlay:v33 screenSizeCategory:{objc_msgSend(v35, "screenSizeCategory")}];

    [numberPadKeyPrototypeView doLayoutNow];
    *&v46.width = prototypeViewSideDimension;
    *&v46.height = prototypeViewSideDimension;
    UIGraphicsBeginImageContextWithOptions(v46, 0, 0.0);
    v36 = [numberPadKeyPrototypeView layer];
    [v36 renderInContext:UIGraphicsGetCurrentContext()];

    v25 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v37 = +[TPFileStorageManager sharedInstance];
    [v37 saveImage:v25 withName:v22];

    objc_sync_exit(@"lock");
    v21 = v44;
  }

  return v25;
}

+ (double)horizontalPadding
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  v3 = [v2 screenSizeCategory];

  v4 = 0.0;
  if (v3 <= 5)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
LABEL_22:
        v6 = [MEMORY[0x1E69DCEB0] mainScreen];
        v7 = [v6 isUserInterfaceIdiomPad];

        if (v7)
        {
          return 13.6000004;
        }

        else
        {
          return 15.0;
        }
      }

      if (v3 == 4)
      {
        return 13.6000004;
      }

      return 12.0;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v5 = [MEMORY[0x1E69DCEB0] mainScreen];
        if ([v5 isUserInterfaceIdiomPad])
        {
          v4 = 10.0;
        }

        else
        {
          v4 = 14.0;
        }
      }

      return v4;
    }

    return 10.0;
  }

  if (v3 <= 8)
  {
    if (v3 != 6)
    {
      if (v3 != 7)
      {
        return 10.0;
      }

      return 13.5;
    }

    goto LABEL_22;
  }

  switch(v3)
  {
    case 9:
      return 10.0;
    case 10:
      return 12.0;
    case 11:
      return 13.5;
  }

  return v4;
}

+ (CAColorMatrix)buttonColorMatrix
{
  *&retstr->var0 = xmmword_1B48EBC80;
  *&retstr->var4 = xmmword_1B48EBC90;
  *&retstr->var8 = xmmword_1B48EBCA0;
  retstr->var12 = 1.264;
  *&retstr->var15 = 0;
  *&retstr->var13 = 0;
  retstr->var17 = 0.0;
  *&retstr->var18 = 1065353216;
  return result;
}

+ (id)disabledImageForCharacter:(int64_t)a3
{
  v3 = [objc_opt_class() imageForCharacter:a3 highlighted:0 whiteVersion:0];
  v4 = [MEMORY[0x1E69DC888] systemGrayColor];
  v5 = [v3 _flatImageWithColor:v4];

  return v5;
}

- (id)initForCharacter:(int64_t)a3 style:(int64_t)a4
{
  v55[1] = *MEMORY[0x1E69E9840];
  [objc_opt_class() defaultSize];
  v52.receiver = self;
  v52.super_class = TPNumberPadButton;
  v8 = [(TPNumberPadButton *)&v52 initWithFrame:0.0, 0.0, v6, v7];
  p_isa = &v8->super.super.super.super.isa;
  if (v8)
  {
    [(TPNumberPadButton *)v8 setCharacter:a3];
    if (a3 == 13)
    {
      v10 = [p_isa defaultColor];
      [p_isa setBackgroundColor:v10];

      goto LABEL_27;
    }

    v11 = [_TPNumberPadCircleBackgroundView alloc];
    [objc_opt_class() circleBounds];
    v12 = [(_TPNumberPadCircleBackgroundView *)v11 initWithFrame:?];
    v13 = p_isa[61];
    p_isa[61] = v12;

    [p_isa[61] setProxyControl:p_isa];
    [p_isa[61] frame];
    v15 = v14 * 0.5;
    v16 = [p_isa[61] layer];
    [v16 setCornerRadius:v15];

    v17 = [p_isa buttonColor];
    [p_isa setColor:v17];

    [objc_opt_class() unhighlightedCircleViewAlpha];
    v19 = v18;
    v20 = [p_isa circleView];
    [v20 setAlpha:v19];

    if ([objc_opt_class() isUsingGlass])
    {
      v21 = [p_isa color];
      v22 = [MEMORY[0x1E69DC888] clearColor];

      v23 = [objc_opt_class() isUsingClearGlass];
      if (v21 == v22)
      {
        v33 = p_isa[61];
        if (v23)
        {
          [p_isa[61] tuui_applyFlexibleSmallGlassBackground];
        }

        else
        {
          [p_isa[61] tuui_applyFlexibleSmallRegularGlassBackground];
        }

        goto LABEL_26;
      }

      if (v23)
      {
        v24 = p_isa[61];
        v25 = [p_isa color];
        [v24 tuui_applyFlexibleClearGlassBackgroundWithTintColor:v25];
      }

      else
      {
        v34 = [p_isa color];

        v35 = p_isa[61];
        if (!v34)
        {
          [p_isa[61] tuui_applyFlexibleClearGlassWithShadowBackground];
          goto LABEL_26;
        }

        v25 = [p_isa color];
        [v35 tuui_applyFlexibleRegularGlassBackgroundWithTintColor:v25];
      }

LABEL_26:
      [p_isa addSubview:p_isa[61]];
      [p_isa reloadImagesForCurrentCharacter];
      [p_isa addTarget:p_isa action:sel_touchDown forControlEvents:1];
      [p_isa addTarget:p_isa action:sel_touchUp forControlEvents:64];
      [p_isa addTarget:p_isa action:sel_touchUp forControlEvents:128];
      [p_isa addTarget:p_isa action:sel_touchCancelled forControlEvents:256];
      goto LABEL_27;
    }

    if ([objc_opt_class() usesButtonColorMatrixFilters])
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      v26 = objc_opt_class();
      if (v26)
      {
        [v26 buttonColorMatrix];
      }

      else
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
      }

      if ([objc_opt_class() usesEmergencyCallButtonColorMatrixFilters])
      {
        v47 = xmmword_1B48EBCB0;
        v48 = xmmword_1B48EBCC0;
        v49 = xmmword_1B48EBCD0;
        v50 = xmmword_1B48EBCE0;
        v51 = xmmword_1B48EBCF0;
      }

      v46[2] = v49;
      v46[3] = v50;
      v46[4] = v51;
      v46[0] = v47;
      v46[1] = v48;
      v27 = [MEMORY[0x1E69DC898] _colorEffectCAMatrix:v46];
      v28 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
      v55[0] = v27;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
      [v28 setBackgroundEffects:v36];

      if (([objc_opt_class() usesEmergencyCallButtonColorMatrixFilters] & 1) != 0 || objc_msgSend(objc_opt_class(), "usesButtonBlurEffect"))
      {
        v37 = [MEMORY[0x1E69DC730] effectWithBlurRadius:100.0];
        v54[0] = v27;
        v54[1] = v37;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
        [v28 setBackgroundEffects:v38];
      }

      [p_isa[61] frame];
      [v28 setFrame:?];
      v39 = [p_isa[61] layer];
      [v39 cornerRadius];
      v41 = v40;
      v42 = [v28 layer];
      [v42 setCornerRadius:v41];

      [v28 setClipsToBounds:1];
      [p_isa setBackDropVisualEffectView:v28];
      [p_isa addSubview:v28];
    }

    else
    {
      if (![objc_opt_class() usesButtonSaturationFilters])
      {
        goto LABEL_26;
      }

      v27 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v28 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
      [v28 setName:@"saturation"];
      [v28 setValue:&unk_1F2CB1198 forKey:@"inputAmount"];
      v29 = objc_alloc_init(MEMORY[0x1E6979310]);
      v53 = v28;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
      [v29 setFilters:v30];

      [p_isa[61] frame];
      [v29 setFrame:?];
      v31 = [p_isa[61] layer];
      [v31 cornerRadius];
      [v29 setCornerRadius:?];

      [v29 setScale:0.5];
      [v29 setGroupName:@"TPNumberPadButton"];
      v32 = [v27 layer];
      [v32 addSublayer:v29];

      [p_isa addSubview:v27];
    }

    goto LABEL_26;
  }

LABEL_27:
  v43 = TPStringForNumberPadCharacter(a3);
  [p_isa setAccessibilityLabel:v43];

  v44 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (void)updateBackgroundMaterial:(id)a3
{
  v8 = a3;
  v4 = [(TPNumberPadButton *)self backDropVisualEffectView];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_class() isUsingGlass];

    if ((v6 & 1) == 0)
    {
      v7 = [(TPNumberPadButton *)self backDropVisualEffectView];
      [v7 setBackgroundEffects:v8];
    }
  }
}

- (void)setColor:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_color, a3);
  if ([(TPNumberPadButton *)self character]!= 13)
  {
    v5 = [(TPNumberPadButton *)self circleView];
    [v5 setBackgroundColor:v9];

    [objc_opt_class() unhighlightedCircleViewAlpha];
    v7 = v6;
    v8 = [(TPNumberPadButton *)self circleView];
    [v8 setAlpha:v7];
  }
}

- (void)setGreyedOut:(BOOL)a3
{
  v5 = [(TPNumberPadButton *)self glyphLayer];

  if (v5)
  {
    v6 = [(TPNumberPadButton *)self glyphLayer];
    [v6 removeFromSuperlayer];

    [(TPNumberPadButton *)self setGlyphLayer:0];
  }

  v7 = [(TPNumberPadButton *)self character];
  v8 = objc_opt_class();
  if (a3)
  {
    [v8 disabledImageForCharacter:v7];
  }

  else
  {
    [v8 imageForCharacter:v7];
  }
  v24 = ;
  v9 = [MEMORY[0x1E6979398] layer];
  [v9 setOpaque:0];
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 scale];
  [v9 setContentsScale:?];

  v11 = v24;
  [v9 setContents:{objc_msgSend(v24, "CGImage")}];
  [v24 size];
  [v9 setFrame:{0.0, 0.0, v12, v13}];
  [(TPNumberPadButton *)self frame];
  v23 = v14;
  [(TPNumberPadButton *)self frame];
  v15.f64[0] = v23;
  v15.f64[1] = v16;
  __asm { FMOV            V0.2D, #0.5 }

  [v9 setPosition:{vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v15, _Q0))))}];
  v22 = [(TPNumberPadButton *)self layer];
  [v22 addSublayer:v9];

  [(TPNumberPadButton *)self setGlyphLayer:v9];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(TPNumberPadButton *)self bounds];
  v10.x = x;
  v10.y = y;
  if (CGRectContainsPoint(v11, v10))
  {
    v7 = self->_circleView;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)highlightCircleView:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__TPNumberPadButton_highlightCircleView_animated___block_invoke;
  v10[3] = &unk_1E7C0C070;
  v10[4] = self;
  v11 = a3;
  v6 = _Block_copy(v10);
  v7 = v6;
  if (v4)
  {
    if (v5)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 0.850000024;
    }

    v9 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v6 controlPoint1:v8 controlPoint2:0.0 animations:{0.0, 0.0, 1.0}];
    [v9 startAnimation];
  }

  else
  {
    (*(v6 + 2))(v6);
  }
}

void __50__TPNumberPadButton_highlightCircleView_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) circleView];
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  if (v3 == 1)
  {
    [v5 highlightedCircleViewAlpha];
  }

  else
  {
    [v5 unhighlightedCircleViewAlpha];
  }

  [v2 setAlpha:?];

  v6 = [*(a1 + 32) highlightedButtonColor];

  if (v6)
  {
    v7 = *(a1 + 32);
    if (*(a1 + 40))
    {
      [v7 highlightedButtonColor];
    }

    else
    {
      [v7 buttonColor];
    }
    v8 = ;
    [*(a1 + 32) setColor:v8];
  }
}

@end