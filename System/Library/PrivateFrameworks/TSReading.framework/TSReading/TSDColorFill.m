@interface TSDColorFill
+ (id)blackColor;
+ (id)blueColor;
+ (id)brownColor;
+ (id)clearColor;
+ (id)colorWithCGColor:(CGColor *)a3;
+ (id)colorWithColor:(id)a3;
+ (id)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (id)colorWithUIColor:(id)a3;
+ (id)colorWithWhite:(double)a3 alpha:(double)a4;
+ (id)cyanColor;
+ (id)grayColor;
+ (id)greenColor;
+ (id)magentaColor;
+ (id)orangeColor;
+ (id)purpleColor;
+ (id)randomColor;
+ (id)redColor;
+ (id)whiteColor;
+ (id)yellowColor;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNearlyWhite;
- (CGColor)CGColor;
- (TSDColorFill)initWithCGColor:(CGColor *)a3;
- (TSDColorFill)initWithColor:(id)a3;
- (TSDColorFill)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (TSDColorFill)initWithUIColor:(id)a3;
- (TSDColorFill)initWithWhite:(double)a3 alpha:(double)a4;
- (double)luminance;
- (double)opacity;
- (double)p_hsbComponentWithIndex:(unint64_t)a3;
- (id)UIColor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)grayscaleColor;
- (id)invertedColor;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)mixingTypeWithObject:(id)a3;
- (void)applyToCALayer:(id)a3 withScale:(double)a4;
- (void)applyToCAShapeLayer:(id)a3 withScale:(double)a4;
- (void)dealloc;
- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4;
@end

@implementation TSDColorFill

+ (id)colorWithColor:(id)a3
{
  v3 = [[a1 alloc] initWithColor:a3];

  return v3;
}

+ (id)colorWithCGColor:(CGColor *)a3
{
  v3 = [[a1 alloc] initWithCGColor:a3];

  return v3;
}

+ (id)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v6 = [[a1 alloc] initWithRed:a3 green:a4 blue:a5 alpha:a6];

  return v6;
}

+ (id)colorWithWhite:(double)a3 alpha:(double)a4
{
  v4 = [[a1 alloc] initWithWhite:a3 alpha:a4];

  return v4;
}

+ (id)colorWithUIColor:(id)a3
{
  v3 = [[a1 alloc] initWithUIColor:a3];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(TSDColorFill *)self color];

  return [v4 initWithColor:v5];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableColorFill alloc];
  v5 = [(TSDColorFill *)self color];

  return [(TSDColorFill *)v4 initWithColor:v5];
}

+ (id)randomColor
{
  RandomRGB = TSUCGColorCreateRandomRGB();
  v3 = [TSDColorFill colorWithCGColor:RandomRGB];
  CGColorRelease(RandomRGB);
  return v3;
}

+ (id)clearColor
{
  v2 = [[a1 alloc] initWithWhite:0.0 alpha:0.0];

  return v2;
}

+ (id)blackColor
{
  v2 = [[a1 alloc] initWithWhite:0.0 alpha:1.0];

  return v2;
}

+ (id)whiteColor
{
  v2 = [[a1 alloc] initWithWhite:1.0 alpha:1.0];

  return v2;
}

+ (id)grayColor
{
  v2 = [[a1 alloc] initWithWhite:0.5 alpha:1.0];

  return v2;
}

+ (id)redColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)greenColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)blueColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)cyanColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)yellowColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)magentaColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)orangeColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.5 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)purpleColor
{
  v2 = [[a1 alloc] initWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];

  return v2;
}

+ (id)brownColor
{
  v2 = [[a1 alloc] initWithRed:0.6 green:0.4 blue:0.2 alpha:1.0];

  return v2;
}

- (TSDColorFill)initWithColor:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDColorFill initWithColor:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDColorFill.m"), 138, @"invalid nil value for '%s'", "color"}];
  }

  v9.receiver = self;
  v9.super_class = TSDColorFill;
  v7 = [(TSDColorFill *)&v9 init];
  if (v7)
  {
    v7->mColor = [a3 copy];
  }

  return v7;
}

- (TSDColorFill)initWithCGColor:(CGColor *)a3
{
  v4 = [MEMORY[0x277D6C2A8] colorWithCGColor:a3];

  return [(TSDColorFill *)self initWithColor:v4];
}

- (TSDColorFill)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v7 = [MEMORY[0x277D6C2A8] colorWithRed:a3 green:a4 blue:a5 alpha:a6];

  return [(TSDColorFill *)self initWithColor:v7];
}

- (TSDColorFill)initWithWhite:(double)a3 alpha:(double)a4
{
  v5 = [MEMORY[0x277D6C2A8] colorWithWhite:a3 alpha:a4];

  return [(TSDColorFill *)self initWithColor:v5];
}

- (TSDColorFill)initWithUIColor:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDColorFill initWithUIColor:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDColorFill.m"), 167, @"invalid nil value for '%s'", "uiColor"}];
  }

  v7 = [MEMORY[0x277D6C2A8] colorWithUIColor:a3];

  return [(TSDColorFill *)self initWithColor:v7];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDColorFill;
  [(TSDColorFill *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    objc_opt_class();
    v4 = TSUDynamicCast();
    if (v4)
    {
      v5 = v4;
      v6 = [(TSDColorFill *)self color];
      v7 = [v5 color];

      LOBYTE(v4) = [(TSUColor *)v6 isEqual:v7];
    }
  }

  return v4;
}

- (id)UIColor
{
  v2 = [(TSDColorFill *)self color];

  return [(TSUColor *)v2 UIColor];
}

- (id)grayscaleColor
{
  v3 = objc_opt_class();
  v4 = [(TSUColor *)[(TSDColorFill *)self color] grayscaleColor];

  return [v3 colorWithColor:v4];
}

- (id)invertedColor
{
  v3 = objc_opt_class();
  v4 = [(TSUColor *)[(TSDColorFill *)self color] invertedColor];

  return [v3 colorWithColor:v4];
}

- (BOOL)isNearlyWhite
{
  v2 = [(TSDColorFill *)self color];

  return [(TSUColor *)v2 isNearlyWhite];
}

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(TSDColorFill *)self color];

  [(TSUColor *)v9 paintRect:a4 inContext:x, y, width, height];
}

- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  v6 = [(TSDColorFill *)self color];

  [(TSUColor *)v6 paintPath:a3 inContext:a4];
}

- (void)applyToCALayer:(id)a3 withScale:(double)a4
{
  if (![(TSDColorFill *)self canApplyToCALayer])
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDColorFill applyToCALayer:withScale:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDColorFill.m"), 253, @"Applying color fill with unsupported properties to CALayer"}];
  }

  [a3 setContents:0];
  v8 = [(TSDColorFill *)self isClear];
  v9 = 0;
  if (!v8)
  {
    v9 = [(TSDColorFill *)self CGColor];
  }

  [a3 setBackgroundColor:v9];
}

- (void)applyToCAShapeLayer:(id)a3 withScale:(double)a4
{
  v5 = [(TSDColorFill *)self CGColor];

  [a3 setFillColor:v5];
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__TSDColorFill_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48B38;
  v4[4] = a3;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __37__TSDColorFill_mixingTypeWithObject___block_invoke()
{
  objc_opt_class();
  if (!TSUDynamicCast())
  {
    v0 = [MEMORY[0x277D6C290] currentHandler];
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDColorFill mixingTypeWithObject:]_block_invoke"];
    [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDColorFill.m"), 304, @"nil object after cast"}];
  }

  return 4;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__TSDColorFill_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

id __49__TSDColorFill_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [objc_msgSend(*(a1 + 40) "color")];

  return [TSDColorFill colorWithColor:v2];
}

- (double)p_hsbComponentWithIndex:(unint64_t)a3
{
  v7 = *MEMORY[0x277D85DE8];
  [-[TSUColor UIColor](-[TSDColorFill color](self color];
  return *(&v5 + a3);
}

- (CGColor)CGColor
{
  v2 = [(TSDColorFill *)self color];

  return [(TSUColor *)v2 CGColor];
}

- (double)opacity
{
  v2 = [(TSDColorFill *)self color];

  [(TSUColor *)v2 alphaComponent];
  return result;
}

- (double)luminance
{
  Components = CGColorGetComponents([(TSDColorFill *)self CGColor]);
  result = Components[1] * 0.715200007 + *Components * 0.212599993 + Components[2] * 0.0722000003 * Components[3];
  v4 = 1.0;
  v5 = result < 0.0 || result > 1.0;
  if (result <= 1.0 || result < 0.0)
  {
    v4 = 0.0;
  }

  if (v5)
  {
    return v4;
  }

  return result;
}

@end