@interface TUICandidateLabel
+ (double)lineWidthForText:(id)text font:(id)font layoutOrientation:(int64_t)orientation;
- (TUICandidateLabel)initWithCoder:(id)coder;
- (TUICandidateLabel)initWithFrame:(CGRect)frame;
- (__CTLine)createLineFromAttributedText:(id)text;
- (unsigned)lineTruncationType;
- (void)commonInit;
- (void)drawRect:(CGRect)rect;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)width;
- (void)setFont:(id)font;
- (void)setLayoutOrientation:(int64_t)orientation;
- (void)setLineBreakMode:(int64_t)mode;
- (void)setMinimumScaleFactor:(double)factor;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
@end

@implementation TUICandidateLabel

- (void)drawRect:(CGRect)rect
{
  v4 = [(TUICandidateLabel *)self font:rect.origin.x];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  }

  v7 = v6;

  [(TUICandidateLabel *)self bounds];
  v9 = v8;
  v11 = v10;
  text = [(TUICandidateLabel *)self text];

  if (text)
  {
    text2 = [(TUICandidateLabel *)self text];
    v14 = [text2 length];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v16 = objc_alloc(MEMORY[0x1E696AD40]);
    text3 = [(TUICandidateLabel *)self text];
    v18 = [v16 initWithString:text3];

    v19 = *MEMORY[0x1E69DB648];
    [dictionary setValue:v7 forKey:*MEMORY[0x1E69DB648]];
    textColor = [(TUICandidateLabel *)self textColor];

    if (textColor)
    {
      textColor2 = [(TUICandidateLabel *)self textColor];
      [dictionary setValue:textColor2 forKey:*MEMORY[0x1E69DB650]];
    }

    [v18 setAttributes:dictionary range:{0, v14}];
    CapHeight = CTFontGetCapHeight(v7);
    v23 = [(TUICandidateLabel *)self createLineFromAttributedText:v18];
    if (v23)
    {
      v24 = v23;
      BoundsWithOptions = CTLineGetBoundsWithOptions(v23, 0);
      width = BoundsWithOptions.size.width;
      if ([(TUICandidateLabel *)self layoutOrientation:BoundsWithOptions.origin.x]== 1)
      {
        v26 = v11;
      }

      else
      {
        v26 = v9;
      }

      if ([(TUICandidateLabel *)self adjustsFontSizeToFitWidth]&& width > v26)
      {
        v27 = 0;
        v28 = 1.0;
        while (1)
        {
          [(TUICandidateLabel *)self minimumScaleFactor];
          v28 = v29 >= v28 * (v26 / (width + 1.0)) ? v29 : v28 * (v26 / (width + 1.0));
          font = [(TUICandidateLabel *)self font];
          [font pointSize];
          v32 = v28 * v31;

          font2 = [(TUICandidateLabel *)self font];
          v34 = [font2 fontWithSize:v32];

          [dictionary setValue:v34 forKey:v19];
          [v18 setAttributes:dictionary range:{0, v14}];
          CFRelease(v24);
          v35 = [(TUICandidateLabel *)self createLineFromAttributedText:v18];
          if (!v35)
          {
            break;
          }

          v24 = v35;
          CapHeight = CTFontGetCapHeight(v34);
          v61 = CTLineGetBoundsWithOptions(v24, 0);
          width = v61.size.width;
          if (v61.size.width <= v26 || ([(TUICandidateLabel *)self minimumScaleFactor:v61.origin.x], v28 <= v36))
          {

            goto LABEL_25;
          }

          if (width > v26 && v27++ < 4)
          {
            continue;
          }

          goto LABEL_25;
        }
      }

      else
      {
        if (width <= v26)
        {
          goto LABEL_30;
        }

LABEL_25:
        v38 = CFAttributedStringCreate(*MEMORY[0x1E695E480], @"…", dictionary);
        v39 = CTLineCreateWithAttributedString(v38);
        TruncatedLine = CTLineCreateTruncatedLine(v24, v26, [(TUICandidateLabel *)self lineTruncationType], v39);
        if (v39)
        {
          CFRelease(v39);
        }

        CFRelease(v38);
        if (TruncatedLine)
        {
          CFRelease(v24);
        }

        else
        {
LABEL_30:
          TruncatedLine = v24;
        }

        v53 = *(MEMORY[0x1E695EFD0] + 16);
        v54 = *MEMORY[0x1E695EFD0];
        *&v59.a = *MEMORY[0x1E695EFD0];
        *&v59.c = v53;
        v52 = *(MEMORY[0x1E695EFD0] + 32);
        *&v59.tx = v52;
        if ([(TUICandidateLabel *)self layoutOrientation]== 1)
        {
          text4 = [(TUICandidateLabel *)self text];
          _containsEmoji = [text4 _containsEmoji];

          v43 = 0.0;
          if (_containsEmoji)
          {
            [(__CTFont *)v7 pointSize];
            if (v44 <= 16.0)
            {
              v46 = v44 * 0.25;
            }

            else
            {
              v45 = v44 < 24.0;
              v46 = (24.0 - v44) * 0.5;
              if (!v45)
              {
                v46 = 0.0;
              }
            }

            v43 = v46 * 0.5;
          }

          x = v43;
          v51 = v9 * 0.5;
          *&transform.a = v54;
          *&transform.c = v53;
          *&transform.tx = v52;
          CGAffineTransformRotate(&v59, &transform, 1.57079633);
        }

        else
        {
          x = (v11 + CapHeight) * 0.5;
          *&transform.a = v54;
          *&transform.c = v53;
          *&transform.tx = v52;
          v51 = 0.0;
          CGAffineTransformTranslate(&v59, &transform, 0.0, v11);
        }

        v57 = v59;
        CGAffineTransformScale(&transform, &v57, 1.0, -1.0);
        v59 = transform;
        v57 = transform;
        CGAffineTransformInvert(&transform, &v57);
        xa = vaddq_f64(*&transform.tx, vmlaq_n_f64(vmulq_n_f64(*&transform.c, x), *&transform.a, v51));
        window = [(TUICandidateLabel *)self window];
        screen = [window screen];
        [screen scale];
        if (*&v49 > 1.0)
        {
          xa = vdivq_f64(vrndmq_f64(vmulq_n_f64(xa, *&v49)), vdupq_lane_s64(v49, 0));
        }

        CurrentContext = UIGraphicsGetCurrentContext();
        CGContextSaveGState(CurrentContext);
        transform = v59;
        CGContextConcatCTM(CurrentContext, &transform);
        CGContextSetTextPosition(CurrentContext, xa.f64[0], xa.f64[1]);
        CTLineDraw(TruncatedLine, CurrentContext);
        CGContextRestoreGState(CurrentContext);
        CFRelease(TruncatedLine);
      }
    }
  }
}

- (__CTLine)createLineFromAttributedText:(id)text
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E6965AA8];
  v4 = MEMORY[0x1E696AD98];
  textCopy = text;
  v6 = [v4 numberWithInt:{-[TUICandidateLabel layoutOrientation](self, "layoutOrientation") == 1}];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = CTTypesetterCreateWithAttributedStringAndOptions(textCopy, v7);

  if (!v8)
  {
    return 0;
  }

  v13.location = 0;
  v13.length = 0;
  Line = CTTypesetterCreateLine(v8, v13);
  CFRelease(v8);
  return Line;
}

- (unsigned)lineTruncationType
{
  lineBreakMode = self->_lineBreakMode;
  if (lineBreakMode == 5)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (lineBreakMode == 3)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (void)setLineBreakMode:(int64_t)mode
{
  if (self->_lineBreakMode != mode)
  {
    self->_lineBreakMode = mode;
    [(TUICandidateLabel *)self setNeedsDisplay];
  }
}

- (void)setLayoutOrientation:(int64_t)orientation
{
  if (self->_layoutOrientation != orientation)
  {
    self->_layoutOrientation = orientation;
    [(TUICandidateLabel *)self setNeedsDisplay];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_textColor isEqual:?]& 1) == 0)
  {
    v4 = [colorCopy copy];
    textColor = self->_textColor;
    self->_textColor = v4;

    [(TUICandidateLabel *)self setNeedsDisplay];
  }
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)width
{
  if (self->_adjustsFontSizeToFitWidth != width)
  {
    self->_adjustsFontSizeToFitWidth = width;
    [(TUICandidateLabel *)self setNeedsDisplay];
  }
}

- (void)setMinimumScaleFactor:(double)factor
{
  if (self->_minimumScaleFactor != factor)
  {
    self->_minimumScaleFactor = factor;
    if ([(TUICandidateLabel *)self adjustsFontSizeToFitWidth])
    {

      [(TUICandidateLabel *)self setNeedsDisplay];
    }
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (([(UIFont *)self->_font isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_font, font);
    [(TUICandidateLabel *)self setNeedsDisplay];
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v4 = [textCopy copy];
    text = self->_text;
    self->_text = v4;

    [(TUICandidateLabel *)self setNeedsDisplay];
  }
}

- (TUICandidateLabel)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TUICandidateLabel;
  v3 = [(TUICandidateLabel *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateLabel *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUICandidateLabel;
  v3 = [(TUICandidateLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateLabel *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  [(TUICandidateLabel *)self setContentMode:3];
  [(TUICandidateLabel *)self setOpaque:0];

  [(TUICandidateLabel *)self setLineBreakMode:4];
}

+ (double)lineWidthForText:(id)text font:(id)font layoutOrientation:(int64_t)orientation
{
  v21[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  fontCopy = font;
  if (textCopy)
  {
    v9 = [textCopy length];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:textCopy];
    [dictionary setValue:fontCopy forKey:*MEMORY[0x1E69DB648]];
    [v11 setAttributes:dictionary range:{0, v9}];
    if (orientation == 1)
    {
      v20 = *MEMORY[0x1E6965AA8];
      v21[0] = MEMORY[0x1E695E118];
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v13 = CTTypesetterCreateWithAttributedStringAndOptions(v11, v12);

      if (!v13)
      {
        goto LABEL_5;
      }

      v22.location = 0;
      v22.length = 0;
      Line = CTTypesetterCreateLine(v13, v22);
      CFRelease(v13);
      if (!Line)
      {
        goto LABEL_5;
      }
    }

    else
    {
      Line = CTLineCreateWithAttributedString(v11);
      if (!Line)
      {
LABEL_5:
        v15 = 0.0;
LABEL_15:

        goto LABEL_16;
      }
    }

    BoundsWithOptions = CTLineGetBoundsWithOptions(Line, 0);
    v15 = ceil(BoundsWithOptions.size.width);
    CFRelease(Line);
    if ([textCopy _containsEmoji])
    {
      [fontCopy pointSize];
      v17 = 0.0;
      if (v16 < 24.0)
      {
        v17 = (24.0 - v16) * 0.5;
      }

      if (v16 <= 16.0)
      {
        v18 = v16 * 0.25;
      }

      else
      {
        v18 = v17;
      }

      v15 = v15 + v18;
    }

    goto LABEL_15;
  }

  v15 = 0.0;
LABEL_16:

  return v15;
}

@end