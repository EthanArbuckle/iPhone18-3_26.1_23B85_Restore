@interface PRMonogram
+ (CAGradientLayer)plateOverlayLayer;
+ (double)kerningForFontIndex:(unint64_t)a3 fontSize:(double)a4;
+ (id)_fontSpecs;
+ (id)fontForIndex:(unint64_t)a3 plateDiameter:(double)a4;
+ (id)monogram;
+ (id)monogramWithData:(id)a3;
+ (unint64_t)countOfFonts;
+ (void)updatePlateOverlayLayer:(id)a3;
- (BOOL)_renderTextInContext:(CGContext *)a3 frame:(CGRect)a4;
- (PRMonogram)initWithText:(id)a3 fontIndex:(unint64_t)a4 monogramColor:(id)a5;
- (UIColor)color;
- (UIColor)plateGradientEndColor;
- (UIColor)plateGradientStartColor;
- (UIColor)plateSelectedActiveColor;
- (UIColor)plateSelectedActiveTextColor;
- (UIColor)plateSelectedInactiveColor;
- (id)_initWithData:(id)a3;
- (id)dataRepresentationWithVersion:(unsigned __int8)a3;
- (id)description;
- (id)snapshotWithSize:(CGSize)a3 scale:(double)a4 options:(id)a5;
- (id)stringAttributesForDiameter:(double)a3;
- (void)_takeValuesFromDataRepresentation:(id)a3;
- (void)appendToRecipe:(id)a3 text:(id)a4 fontIndex:(unsigned __int8)a5;
- (void)setFontIndex:(unint64_t)a3;
- (void)setText:(id)a3;
@end

@implementation PRMonogram

+ (id)monogram
{
  v2 = objc_alloc_init(PRMonogram);

  return v2;
}

- (PRMonogram)initWithText:(id)a3 fontIndex:(unint64_t)a4 monogramColor:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = PRMonogram;
  v10 = [(PRMonogram *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_text, a3);
    v11->_fontIndex = 0;
    objc_storeStrong(&v11->_monogramColor, a5);
    v12 = v11;
  }

  return v11;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = [v4 lengthOfBytesUsingEncoding:4];
    if (v5 <= 0xC)
    {
      v6 = [v9 copy];
      goto LABEL_6;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    NSLog(&cfstr_PrmonogramSett.isa, v9, v7, &unk_2870290C0);
  }

  v6 = &stru_2870278B0;
LABEL_6:
  text = self->_text;
  self->_text = &v6->isa;
}

- (UIColor)color
{
  color = self->_color;
  if (color)
  {
    v3 = color;
  }

  else
  {
    v3 = [(PRMonogram *)self plateFlatColor];
  }

  return v3;
}

- (UIColor)plateGradientStartColor
{
  v3 = [(PRMonogram *)self monogramColor];
  if (v3)
  {
    v4 = [(PRMonogram *)self monogramColor];
    v5 = [v4 gradientStartColor];
  }

  else
  {
    v5 = +[PRMonogramColor defaultGradientStartColor];
  }

  return v5;
}

- (UIColor)plateGradientEndColor
{
  v3 = [(PRMonogram *)self monogramColor];
  if (v3)
  {
    v4 = [(PRMonogram *)self monogramColor];
    v5 = [v4 gradientEndColor];
  }

  else
  {
    v5 = +[PRMonogramColor defaultGradientEndColor];
  }

  return v5;
}

- (UIColor)plateSelectedActiveColor
{
  v3 = [(PRMonogram *)self monogramColor];
  if (v3)
  {
    v4 = [(PRMonogram *)self monogramColor];
    v5 = [v4 selectedActiveColor];
  }

  else
  {
    v5 = +[PRMonogramColor defaultSelectedActiveColor];
  }

  return v5;
}

- (UIColor)plateSelectedInactiveColor
{
  v3 = [(PRMonogram *)self monogramColor];
  if (v3)
  {
    v4 = [(PRMonogram *)self monogramColor];
    v5 = [v4 selectedInactiveColor];
  }

  else
  {
    v5 = +[PRMonogramColor defaultSelectedInactiveColor];
  }

  return v5;
}

- (UIColor)plateSelectedActiveTextColor
{
  v3 = [(PRMonogram *)self monogramColor];
  if (v3)
  {
    v4 = [(PRMonogram *)self monogramColor];
    v5 = [v4 selectedActiveTextColor];
  }

  else
  {
    v5 = +[PRMonogramColor defaultSelectedActiveTextColor];
  }

  return v5;
}

- (void)setFontIndex:(unint64_t)a3
{
  if (a3 >= 9)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    NSLog(&cfstr_PrmonogramSetf.isa, v4, &unk_2870290D8);

    a3 = 0;
  }

  self->_fontIndex = a3;
}

- (id)stringAttributesForDiameter:(double)a3
{
  v16[4] = *MEMORY[0x277D85DE8];
  v4 = [PRMonogram fontForIndex:[(PRMonogram *)self fontIndex] plateDiameter:a3];
  v5 = [(PRMonogram *)self fontIndex];
  [v4 pointSize];
  [PRMonogram kerningForFontIndex:v5 fontSize:?];
  v7 = v6;
  v8 = objc_opt_new();
  [v8 setAlignment:1];
  [v8 setAllowsDefaultTighteningForTruncation:1];
  v9 = *MEMORY[0x277D740A8];
  v16[0] = v4;
  v10 = *MEMORY[0x277D740C0];
  v15[0] = v9;
  v15[1] = v10;
  v11 = [MEMORY[0x277D75348] whiteColor];
  v16[1] = v11;
  v15[2] = *MEMORY[0x277D740D0];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v15[3] = *MEMORY[0x277D74118];
  v16[2] = v12;
  v16[3] = v8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  return v13;
}

- (id)snapshotWithSize:(CGSize)a3 scale:(double)a4 options:(id)a5
{
  height = a3.height;
  width = a3.width;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v10 = DeviceRGB;
    v11 = (width * a4);
    v12 = CGBitmapContextCreate(0, v11, v11, 8uLL, 4 * v11, DeviceRGB, 0x2001u);
    if (v12)
    {
      v13 = v12;
      v14 = v11;
      v15 = [MEMORY[0x277D75348] whiteColor];
      CGContextSetFillColorWithColor(v13, [v15 CGColor]);

      CGContextSetAlpha(v13, 0.9);
      v31.origin.x = 0.0;
      v31.origin.y = 0.0;
      v31.size.width = v14;
      v31.size.height = v14;
      CGContextFillRect(v13, v31);
      v16 = [(PRMonogram *)self plateGradientStartColor];
      v17 = CGColorRetain([v16 CGColor]);

      if (v17)
      {
        v18 = [(PRMonogram *)self plateGradientEndColor];
        v19 = CGColorRetain([v18 CGColor]);

        if (v19)
        {
          Mutable = CFArrayCreateMutable(0, 2, MEMORY[0x277CBF128]);
          if (Mutable)
          {
            v21 = Mutable;
            CFArrayAppendValue(Mutable, v17);
            CFArrayAppendValue(v21, v19);
            CGContextSetAlpha(v13, 1.0);
            v22 = CGGradientCreateWithColors(v10, v21, 0);
            if (v22)
            {
              v23 = v22;
              v29.x = 0.0;
              v29.y = 0.0;
              v30.x = 0.0;
              v30.y = v14;
              CGContextDrawLinearGradient(v13, v22, v29, v30, 0);
              [(PRMonogram *)self _renderTextInContext:v13 frame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v14, v14];
              Image = CGBitmapContextCreateImage(v13);
              if (Image)
              {
                v25 = Image;
                v26 = [MEMORY[0x277D755B8] pr_imageWithCGImage:Image size:width scale:{height, a4}];
                CGImageRelease(v25);
              }

              else
              {
                v26 = 0;
              }

              CGGradientRelease(v23);
            }

            else
            {
              v26 = 0;
            }

            CFRelease(v21);
          }

          else
          {
            v26 = 0;
          }

          CGColorRelease(v19);
        }

        else
        {
          v26 = 0;
        }

        CGColorRelease(v17);
      }

      else
      {
        v26 = 0;
      }

      CGContextRelease(v13);
    }

    else
    {
      v26 = 0;
    }

    CGColorSpaceRelease(v10);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BOOL)_renderTextInContext:(CGContext *)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = [(PRMonogram *)self text];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  [(PRMonogram *)self stringAttributesForDiameter:CGRectGetWidth(v30)];
  v11 = CTLineCreateWithString();

  if (!v11)
  {
    return 0;
  }

  descent = 0.0;
  ascent = 0.0;
  TypographicBounds = CTLineGetTypographicBounds(v11, &ascent, &descent, 0);
  v13 = TypographicBounds > 0.0;
  if (TypographicBounds > 0.0)
  {
    v24 = TypographicBounds;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    MidX = CGRectGetMidX(v31);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    MidY = CGRectGetMidY(v32);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v16 = CGRectGetWidth(v33) * 0.800000012 / v24;
    if (v16 > 1.0)
    {
      v16 = 1.0;
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __41__PRMonogram__renderTextInContext_frame___block_invoke;
    v25[3] = &__block_descriptor_88_e5_v8__0l;
    v25[4] = a3;
    *&v25[5] = MidX;
    *&v25[6] = MidY;
    *&v25[7] = v16;
    v17.f64[0] = v24;
    v17.f64[1] = ascent - descent;
    __asm { FMOV            V0.2D, #0.5 }

    v26 = vmulq_f64(v17, _Q0);
    v27 = v11;
    UIGraphicsPushContext(a3);
    __41__PRMonogram__renderTextInContext_frame___block_invoke(v25);
    UIGraphicsPopContext();
  }

  CFRelease(v11);
  return v13;
}

void __41__PRMonogram__renderTextInContext_frame___block_invoke(uint64_t a1)
{
  CGContextTranslateCTM(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  CGContextScaleCTM(*(a1 + 32), *(a1 + 56), *(a1 + 56));
  CGContextSetTextPosition(*(a1 + 32), -*(a1 + 64), -*(a1 + 72));
  v2 = *(a1 + 80);
  v3 = *(a1 + 32);

  CTLineDraw(v2, v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  text = self->_text;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fontIndex];
  v6 = [v3 stringWithFormat:@"<PRMonogram %p _text %@ _fontIndex %@>", self, text, v5];

  v7 = [(PRMonogram *)self monogramColor];

  if (v7)
  {
    v8 = [(PRMonogram *)self monogramColor];
    v9 = [v8 colorName];
    v10 = [v6 stringByAppendingFormat:@" color %@", v9];

    v6 = v10;
  }

  return v6;
}

+ (id)_fontSpecs
{
  if (_fontSpecs_onceToken != -1)
  {
    +[PRMonogram _fontSpecs];
  }

  v3 = _fontSpecs_fontSpecs;

  return v3;
}

void __24__PRMonogram__fontSpecs__block_invoke()
{
  v11[9] = *MEMORY[0x277D85DE8];
  v0 = [_PRMonogramFontSpec specForFontWithName:0 baseSize:105.0 tracking:0.0];
  v1 = [_PRMonogramFontSpec specForFontWithName:@"AmericanTypewriter-CondensedBold" baseSize:113.0 tracking:30.0, v0];
  v11[1] = v1;
  v2 = [_PRMonogramFontSpec specForFontWithName:@"Baskerville-Bold" baseSize:98.0 tracking:0.0];
  v11[2] = v2;
  v3 = [_PRMonogramFontSpec specForFontWithName:@"Futura-Medium" baseSize:89.0 tracking:-20.0];
  v11[3] = v3;
  v4 = [_PRMonogramFontSpec specForFontWithName:@"Cochin-BoldItalic" baseSize:86.0 tracking:40.0];
  v11[4] = v4;
  v5 = [_PRMonogramFontSpec specForFontWithName:@"SuperClarendon-Regular" baseSize:94.0 tracking:-20.0];
  v11[5] = v5;
  v6 = [_PRMonogramFontSpec specForFontWithName:@"Palatino-Bold" baseSize:95.0 tracking:-10.0];
  v11[6] = v6;
  v7 = [_PRMonogramFontSpec specForFontWithName:@"Noteworthy-Bold" baseSize:105.0 tracking:0.0];
  v11[7] = v7;
  v8 = [_PRMonogramFontSpec specForFontWithName:@"HoeflerText-Regular" baseSize:118.0 tracking:-20.0];
  v11[8] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:9];
  v10 = _fontSpecs_fontSpecs;
  _fontSpecs_fontSpecs = v9;
}

+ (unint64_t)countOfFonts
{
  v2 = [a1 _fontSpecs];
  v3 = [v2 count];

  return v3;
}

+ (id)fontForIndex:(unint64_t)a3 plateDiameter:(double)a4
{
  v6 = [a1 _fontSpecs];
  v7 = [v6 objectAtIndexedSubscript:a3];

  [v7 baseSize];
  v9 = v8 * a4 / 225.0;
  v10 = [v7 fontName];

  v11 = MEMORY[0x277D74300];
  if (v10)
  {
    v12 = [v7 fontName];
    v13 = [v11 fontWithName:v12 size:v9];
  }

  else
  {
    v13 = [MEMORY[0x277D74300] systemFontOfSize:*MEMORY[0x277CC4958] weight:v9 design:*MEMORY[0x277CC49A0]];
  }

  return v13;
}

+ (double)kerningForFontIndex:(unint64_t)a3 fontSize:(double)a4
{
  v6 = [a1 _fontSpecs];
  v7 = [v6 objectAtIndexedSubscript:a3];

  [v7 tracking];
  v9 = v8 * a4 / 1000.0;

  return v9;
}

+ (CAGradientLayer)plateOverlayLayer
{
  v3 = objc_alloc_init(MEMORY[0x277CD9EB0]);
  [a1 updatePlateOverlayLayer:v3];

  return v3;
}

+ (void)updatePlateOverlayLayer:(id)a3
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[PRMonogramColor defaultGradientStartColor];
  v7[0] = [v4 CGColor];
  v5 = +[PRMonogramColor defaultGradientEndColor];
  v7[1] = [v5 CGColor];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  [v3 setColors:v6];

  [v3 setStartPoint:{0.5, 1.0}];
  [v3 setEndPoint:{0.5, 0.0}];
}

+ (id)monogramWithData:(id)a3
{
  v3 = a3;
  v4 = [[PRMonogram alloc] _initWithData:v3];

  return v4;
}

- (id)_initWithData:(id)a3
{
  v4 = a3;
  v5 = [(PRMonogram *)self init];
  v6 = v5;
  if (v4 && v5)
  {
    [(PRMonogram *)v5 _takeValuesFromDataRepresentation:v4];
  }

  return v6;
}

- (void)appendToRecipe:(id)a3 text:(id)a4 fontIndex:(unsigned __int8)a5
{
  v7 = a3;
  v8 = [a4 copy];
  v9 = v8;
  if (v8 && [v8 UTF8String])
  {
    v10 = strlen([v9 UTF8String]);
    v15 = a5 & 0xF | (16 * v10);
    [v7 appendBytes:&v15 length:1];
    v11 = [v9 UTF8String];
    v12 = v7;
    v13 = v10;
  }

  else
  {
    v14 = a5 & 0xF;
    v11 = &v14;
    v12 = v7;
    v13 = 1;
  }

  [v12 appendBytes:v11 length:v13];
}

- (id)dataRepresentationWithVersion:(unsigned __int8)a3
{
  v23 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [v4 appendBytes:&v23 length:1];
  v5 = [(PRMonogram *)self text];

  if (v5)
  {
    v6 = [(PRMonogram *)self text];
    v7 = [v6 UTF8String];

    if (!v7)
    {
      NSLog(&cfstr_PrmonogramCann_0.isa);
    }
  }

  else
  {
    NSLog(&cfstr_PrmonogramCann.isa);
  }

  v8 = [(PRMonogram *)self text];
  [(PRMonogram *)self appendToRecipe:v4 text:v8 fontIndex:[(PRMonogram *)self fontIndex]];

  if (v23)
  {
    v9 = [(PRMonogram *)self monogramColor];
    v10 = [v9 colorName];
    [(PRMonogram *)self appendToRecipe:v4 text:v10];
  }

  else
  {
    v21 = 0.0;
    v22 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v11 = [(PRMonogram *)self color];
    v12 = [v11 getRed:&v22 green:&v21 blue:&v20 alpha:&v19];

    if (v12)
    {
      v13.f64[0] = v22;
      v13.f64[1] = v21;
      v14.f64[0] = v20;
      v14.f64[1] = v19;
      v15 = vdupq_n_s64(0x406FE00000000000uLL);
      v16 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vmulq_f64(v13, v15)), vcvtq_s64_f64(vmulq_f64(v14, v15))));
    }

    else
    {
      v19 = 1.0;
      v20 = 1.0;
      v21 = 1.0;
      v22 = 1.0;
      v16 = 0xFF00FF00FF00FFLL;
    }

    v18 = vuzp1_s8(v16, v16).u32[0];
    [v4 appendBytes:&v18 length:4];
  }

  return v4;
}

- (void)_takeValuesFromDataRepresentation:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length] <= 2)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
    NSLog(&cfstr_PrmonogramFail.isa, v5);
LABEL_3:

    goto LABEL_4;
  }

  v6 = [v4 bytes];
  v7 = *v6;
  if (v7 > 1)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_4;
    }

    v19 = v6[1];
    v20 = v19 >> 4;
    if (v19 > 0xCF || [v4 length] < v20 + 2)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v7];
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v20];
      NSLog(&cfstr_PrmonogramFail_0.isa, v5, v21, v22);

      goto LABEL_3;
    }

    [v4 getBytes:v29 range:{2, v20}];
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v29 length:v20 encoding:4];
    [(PRMonogram *)self setText:v18];
LABEL_20:

    goto LABEL_4;
  }

  v8 = v6[1];
  v9 = v8 >> 4;
  v10 = &v6[v8 >> 4];
  v11 = v10[2];
  if ((v8 & 0xF) <= 8)
  {
    v12 = v8 & 0xF;
  }

  else
  {
    v12 = 0;
  }

  self->_fontIndex = v12;
  if (!v7 && v8 <= 0xCF && [v4 length] == v9 + 6)
  {
    [v4 getBytes:v29 range:{2, v9}];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v29 length:v9 encoding:4];
    [(PRMonogram *)self setText:v13];

    LOBYTE(v14) = v10[2];
    LOBYTE(v15) = v10[3];
    LOBYTE(v16) = v10[4];
    LOBYTE(v17) = v10[5];
    v18 = [MEMORY[0x277D75348] colorWithRed:v14 / 255.0 green:v15 / 255.0 blue:v16 / 255.0 alpha:v17 / 255.0];
    [(PRMonogram *)self setColor:v18];
    goto LABEL_20;
  }

  [v4 getBytes:v29 range:{2, v9}];
  v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v29 length:v9 encoding:4];
  [(PRMonogram *)self setText:v23];

  if (v11 >= 0x10)
  {
    MEMORY[0x28223BE20]();
    v25 = &v28[-v24];
    [v4 getBytes:&v28[-v24] range:?];
    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v25 length:v11 >> 4 encoding:4];
    v27 = [[PRMonogramColor alloc] initWithColorName:v26];
    [(PRMonogram *)self setMonogramColor:v27];
  }

LABEL_4:
}

@end