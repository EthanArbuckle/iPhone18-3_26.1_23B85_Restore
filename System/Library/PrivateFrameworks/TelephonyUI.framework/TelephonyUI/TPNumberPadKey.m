@interface TPNumberPadKey
+ (float)absoluteTrackingValueForString:(id)a3 pointSize:(float)a4 unitsPerEm:(float)a5;
+ (void)initialize;
- (BOOL)isAsterisk;
- (BOOL)isPound;
- (TPNumberPadKey)initWithFrame:(CGRect)a3;
- (double)digitBaselineForDiameter:(double)a3;
- (double)digitFontSizeForScreenSizeCategory:(unint64_t)a3 language:(unint64_t)a4 showLocalizedLetters:(BOOL)a5;
- (double)letterFontSizeForScreenSizeCategory:(unint64_t)a3 language:(unint64_t)a4 showLocalizedLetters:(BOOL)a5;
- (double)secondaryLetterFontSizeForScreenSizeCategory:(unint64_t)a3;
- (void)doLayoutNow;
- (void)setDigit:(id)a3 primaryLetters:(id)a4 secondaryLetters:(id)a5;
- (void)updateBaselineConstraintConstantsFor:(unint64_t)a3 language:(unint64_t)a4 showLocalizedLetters:(BOOL)a5;
@end

@implementation TPNumberPadKey

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[TPNumberPadKey initialize];
  }
}

- (TPNumberPadKey)initWithFrame:(CGRect)a3
{
  v40.receiver = self;
  v40.super_class = TPNumberPadKey;
  v3 = [(TPNumberPadKey *)&v40 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    digit = v3->_digit;
    v3->_digit = v4;

    v6 = objc_opt_new();
    letters = v3->_letters;
    v3->_letters = v6;

    v8 = objc_opt_new();
    secondaryLetters = v3->_secondaryLetters;
    v3->_secondaryLetters = v8;

    [(TPNumberPadKey *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_secondaryLetters setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_letters setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_digit setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TPNumberPadKey *)v3 addSubview:v3->_digit];
    [(TPNumberPadKey *)v3 addSubview:v3->_letters];
    [(TPNumberPadKey *)v3 addSubview:v3->_secondaryLetters];
    v10 = [(TPNumberPadKey *)v3 widthAnchor];
    v11 = [v10 constraintEqualToConstant:75.0];
    [v11 setActive:1];

    v12 = [(TPNumberPadKey *)v3 heightAnchor];
    v13 = [v12 constraintEqualToConstant:75.0];
    [v13 setActive:1];

    v14 = [(UILabel *)v3->_digit centerXAnchor];
    v15 = [(TPNumberPadKey *)v3 centerXAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(UILabel *)v3->_secondaryLetters centerXAnchor];
    v18 = [(TPNumberPadKey *)v3 centerXAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = [(UILabel *)v3->_digit centerYAnchor];
    v21 = [(TPNumberPadKey *)v3 centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    LODWORD(v23) = 1132068864;
    [v22 setPriority:v23];
    [v22 setActive:1];
    v24 = [(UILabel *)v3->_letters centerXAnchor];
    v25 = [(TPNumberPadKey *)v3 centerXAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    v27 = [(UILabel *)v3->_letters firstBaselineAnchor];
    v28 = [(UILabel *)v3->_digit firstBaselineAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:14.0];
    letterBaseline = v3->_letterBaseline;
    v3->_letterBaseline = v29;

    v31 = [(UILabel *)v3->_digit firstBaselineAnchor];
    v32 = [(TPNumberPadKey *)v3 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:44.0];
    digitBaseline = v3->_digitBaseline;
    v3->_digitBaseline = v33;

    v35 = [(UILabel *)v3->_secondaryLetters firstBaselineAnchor];
    v36 = [(UILabel *)v3->_letters firstBaselineAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    secondaryLetterBaseline = v3->_secondaryLetterBaseline;
    v3->_secondaryLetterBaseline = v37;

    [(NSLayoutConstraint *)v3->_secondaryLetterBaseline setActive:1];
    [(NSLayoutConstraint *)v3->_digitBaseline setActive:1];
    [(NSLayoutConstraint *)v3->_letterBaseline setActive:1];
  }

  return v3;
}

+ (float)absoluteTrackingValueForString:(id)a3 pointSize:(float)a4 unitsPerEm:(float)a5
{
  v7 = [a3 length];
  v8 = -175.0;
  v9 = 0.0;
  if (isBold)
  {
    v9 = -175.0;
  }

  else
  {
    v8 = -25.0;
  }

  if (v7 < 6)
  {
    v8 = v9;
  }

  return (v8 / a5) * a4;
}

- (double)digitBaselineForDiameter:(double)a3
{
  if (a3 == 65.0)
  {
    return 38.0;
  }

  if (a3 != 83.0)
  {
    return 44.0;
  }

  return 47.0;
}

- (BOOL)isAsterisk
{
  v2 = [(TPNumberPadKey *)self digit];
  v3 = [v2 text];
  v4 = [v3 isEqualToString:@"*"];

  return v4;
}

- (BOOL)isPound
{
  v2 = [(TPNumberPadKey *)self digit];
  v3 = [v2 text];
  v4 = [v3 isEqualToString:@"#"];

  return v4;
}

- (double)digitFontSizeForScreenSizeCategory:(unint64_t)a3 language:(unint64_t)a4 showLocalizedLetters:(BOOL)a5
{
  v5 = a5;
  v7 = 36.0;
  if (a3 <= 5)
  {
    if (a3 == 3)
    {
      v8 = [MEMORY[0x1E69DCEB0] mainScreen];
      if ([v8 isUserInterfaceIdiomPad])
      {
        v7 = 36.0;
      }

      else
      {
        v7 = 40.0;
      }
    }

    else if (a3 == 5)
    {
      v7 = 37.0;
      if (a4)
      {
        return v7;
      }

      goto LABEL_15;
    }

LABEL_14:
    if (a4)
    {
      return v7;
    }

    goto LABEL_15;
  }

  if (a3 != 6)
  {
    if (a3 == 10)
    {
      v7 = 41.0;
      if (a4)
      {
        return v7;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = 40.0;
  if (a4)
  {
    return v7;
  }

LABEL_15:
  if (useIndicDigits == 1 && v5)
  {
    return v7 + 2.0;
  }

  return v7;
}

- (double)letterFontSizeForScreenSizeCategory:(unint64_t)a3 language:(unint64_t)a4 showLocalizedLetters:(BOOL)a5
{
  v5 = a5;
  v7 = 10.0;
  if (a3 == 3)
  {
    v9 = [MEMORY[0x1E69DCEB0] mainScreen];
    if (![v9 isUserInterfaceIdiomPad])
    {
      v7 = 12.0;
    }

    if (a4)
    {
      goto LABEL_9;
    }

    return v7 + 1.0;
  }

  if (a3 == 10)
  {
    v8 = 12.0;
  }

  else
  {
    v8 = 10.0;
  }

  if (a3 == 6)
  {
    v7 = 12.0;
  }

  else
  {
    v7 = v8;
  }

  if (!a4)
  {
    return v7 + 1.0;
  }

LABEL_9:
  if (v5)
  {
    if (a4 == 2)
    {
      return v7 + 1.0;
    }

    else
    {
      return v7 + -1.0;
    }
  }

  return v7;
}

- (double)secondaryLetterFontSizeForScreenSizeCategory:(unint64_t)a3
{
  v3 = 9.0;
  if (a3 == 3)
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    if (![v5 isUserInterfaceIdiomPad])
    {
      v3 = 11.0;
    }
  }

  else
  {
    v4 = 10.0;
    if (a3 != 10)
    {
      v4 = 9.0;
    }

    if (a3 == 6)
    {
      return 11.0;
    }

    else
    {
      return v4;
    }
  }

  return v3;
}

- (void)updateBaselineConstraintConstantsFor:(unint64_t)a3 language:(unint64_t)a4 showLocalizedLetters:(BOOL)a5
{
  v5 = a5;
  if (a3 == 6)
  {
    v9 = 1;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_9:
    if (useIndicDigits == 1)
    {
      v13 = [(TPNumberPadKey *)self letterBaseline];
      [v13 setConstant:14.0];
    }

    v10 = v9 == 0;
    v11 = 12.0;
    v12 = 14.0;
    goto LABEL_12;
  }

  if (a3 != 3)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  v9 = [v8 isUserInterfaceIdiomPad] ^ 1;

  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (!v5)
  {
    goto LABEL_16;
  }

  v10 = v9 == 0;
  v11 = 11.0;
  v12 = 13.0;
LABEL_12:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = [(TPNumberPadKey *)self secondaryLetterBaseline];
  [v15 setConstant:v14];

LABEL_16:
  if (v9)
  {
    v16 = 16.0;
  }

  else
  {
    v16 = 14.0;
  }

  v17 = [(TPNumberPadKey *)self letterBaseline];
  [v17 setConstant:v16];
}

- (void)setDigit:(id)a3 primaryLetters:(id)a4 secondaryLetters:(id)a5
{
  v13 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(TPNumberPadKey *)self digit];
  [v10 setText:v9];

  v11 = [(TPNumberPadKey *)self letters];
  [v11 setText:v8];

  if (v13)
  {
    v12 = [(TPNumberPadKey *)self secondaryLetters];
    [v12 setText:v13];
  }
}

- (void)doLayoutNow
{
  [(TPNumberPadKey *)self setNeedsLayout];
  [(TPNumberPadKey *)self setNeedsDisplay];

  [(TPNumberPadKey *)self layoutIfNeeded];
}

@end