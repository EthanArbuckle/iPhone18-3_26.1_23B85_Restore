@interface TSDColorFill
+ (id)blackColor;
+ (id)blueColor;
+ (id)brownColor;
+ (id)clearColor;
+ (id)colorWithCGColor:(CGColor *)color;
+ (id)colorWithColor:(id)color;
+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
+ (id)colorWithUIColor:(id)color;
+ (id)colorWithWhite:(double)white alpha:(double)alpha;
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
- (BOOL)isEqual:(id)equal;
- (BOOL)isNearlyWhite;
- (CGColor)CGColor;
- (TSDColorFill)initWithCGColor:(CGColor *)color;
- (TSDColorFill)initWithColor:(id)color;
- (TSDColorFill)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (TSDColorFill)initWithUIColor:(id)color;
- (TSDColorFill)initWithWhite:(double)white alpha:(double)alpha;
- (double)luminance;
- (double)opacity;
- (double)p_hsbComponentWithIndex:(unint64_t)index;
- (id)UIColor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)grayscaleColor;
- (id)invertedColor;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)mixingTypeWithObject:(id)object;
- (void)applyToCALayer:(id)layer withScale:(double)scale;
- (void)applyToCAShapeLayer:(id)layer withScale:(double)scale;
- (void)dealloc;
- (void)paintPath:(CGPath *)path inContext:(CGContext *)context;
- (void)paintRect:(CGRect)rect inContext:(CGContext *)context;
@end

@implementation TSDColorFill

+ (id)colorWithColor:(id)color
{
  v3 = [[self alloc] initWithColor:color];

  return v3;
}

+ (id)colorWithCGColor:(CGColor *)color
{
  v3 = [[self alloc] initWithCGColor:color];

  return v3;
}

+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v6 = [[self alloc] initWithRed:red green:green blue:blue alpha:alpha];

  return v6;
}

+ (id)colorWithWhite:(double)white alpha:(double)alpha
{
  v4 = [[self alloc] initWithWhite:white alpha:alpha];

  return v4;
}

+ (id)colorWithUIColor:(id)color
{
  v3 = [[self alloc] initWithUIColor:color];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  color = [(TSDColorFill *)self color];

  return [v4 initWithColor:color];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableColorFill alloc];
  color = [(TSDColorFill *)self color];

  return [(TSDColorFill *)v4 initWithColor:color];
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
  v2 = [[self alloc] initWithWhite:0.0 alpha:0.0];

  return v2;
}

+ (id)blackColor
{
  v2 = [[self alloc] initWithWhite:0.0 alpha:1.0];

  return v2;
}

+ (id)whiteColor
{
  v2 = [[self alloc] initWithWhite:1.0 alpha:1.0];

  return v2;
}

+ (id)grayColor
{
  v2 = [[self alloc] initWithWhite:0.5 alpha:1.0];

  return v2;
}

+ (id)redColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)greenColor
{
  v2 = [[self alloc] initWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)blueColor
{
  v2 = [[self alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)cyanColor
{
  v2 = [[self alloc] initWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)yellowColor
{
  v2 = [[self alloc] initWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)magentaColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)orangeColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.5 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)purpleColor
{
  v2 = [[self alloc] initWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];

  return v2;
}

+ (id)brownColor
{
  v2 = [[self alloc] initWithRed:0.6 green:0.4 blue:0.2 alpha:1.0];

  return v2;
}

- (TSDColorFill)initWithColor:(id)color
{
  if (!color)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDColorFill initWithColor:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDColorFill.m"), 138, @"invalid nil value for '%s'", "color"}];
  }

  v9.receiver = self;
  v9.super_class = TSDColorFill;
  v7 = [(TSDColorFill *)&v9 init];
  if (v7)
  {
    v7->mColor = [color copy];
  }

  return v7;
}

- (TSDColorFill)initWithCGColor:(CGColor *)color
{
  v4 = [MEMORY[0x277D6C2A8] colorWithCGColor:color];

  return [(TSDColorFill *)self initWithColor:v4];
}

- (TSDColorFill)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v7 = [MEMORY[0x277D6C2A8] colorWithRed:red green:green blue:blue alpha:alpha];

  return [(TSDColorFill *)self initWithColor:v7];
}

- (TSDColorFill)initWithWhite:(double)white alpha:(double)alpha
{
  v5 = [MEMORY[0x277D6C2A8] colorWithWhite:white alpha:alpha];

  return [(TSDColorFill *)self initWithColor:v5];
}

- (TSDColorFill)initWithUIColor:(id)color
{
  if (!color)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDColorFill initWithUIColor:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDColorFill.m"), 167, @"invalid nil value for '%s'", "uiColor"}];
  }

  v7 = [MEMORY[0x277D6C2A8] colorWithUIColor:color];

  return [(TSDColorFill *)self initWithColor:v7];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDColorFill;
  [(TSDColorFill *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
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
      color = [(TSDColorFill *)self color];
      color2 = [v5 color];

      LOBYTE(v4) = [(TSUColor *)color isEqual:color2];
    }
  }

  return v4;
}

- (id)UIColor
{
  color = [(TSDColorFill *)self color];

  return [(TSUColor *)color UIColor];
}

- (id)grayscaleColor
{
  v3 = objc_opt_class();
  grayscaleColor = [(TSUColor *)[(TSDColorFill *)self color] grayscaleColor];

  return [v3 colorWithColor:grayscaleColor];
}

- (id)invertedColor
{
  v3 = objc_opt_class();
  invertedColor = [(TSUColor *)[(TSDColorFill *)self color] invertedColor];

  return [v3 colorWithColor:invertedColor];
}

- (BOOL)isNearlyWhite
{
  color = [(TSDColorFill *)self color];

  return [(TSUColor *)color isNearlyWhite];
}

- (void)paintRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  color = [(TSDColorFill *)self color];

  [(TSUColor *)color paintRect:context inContext:x, y, width, height];
}

- (void)paintPath:(CGPath *)path inContext:(CGContext *)context
{
  color = [(TSDColorFill *)self color];

  [(TSUColor *)color paintPath:path inContext:context];
}

- (void)applyToCALayer:(id)layer withScale:(double)scale
{
  if (![(TSDColorFill *)self canApplyToCALayer])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDColorFill applyToCALayer:withScale:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDColorFill.m"), 253, @"Applying color fill with unsupported properties to CALayer"}];
  }

  [layer setContents:0];
  isClear = [(TSDColorFill *)self isClear];
  cGColor = 0;
  if (!isClear)
  {
    cGColor = [(TSDColorFill *)self CGColor];
  }

  [layer setBackgroundColor:cGColor];
}

- (void)applyToCAShapeLayer:(id)layer withScale:(double)scale
{
  cGColor = [(TSDColorFill *)self CGColor];

  [layer setFillColor:cGColor];
}

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__TSDColorFill_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48B38;
  v4[4] = object;
  return TSDMixingTypeWithObject(self, object, v4);
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

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__TSDColorFill_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = object;
  v5[5] = self;
  *&v5[6] = fraction;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
}

id __49__TSDColorFill_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [objc_msgSend(*(a1 + 40) "color")];

  return [TSDColorFill colorWithColor:v2];
}

- (double)p_hsbComponentWithIndex:(unint64_t)index
{
  v7 = *MEMORY[0x277D85DE8];
  [-[TSUColor UIColor](-[TSDColorFill color](self color];
  return *(&v5 + index);
}

- (CGColor)CGColor
{
  color = [(TSDColorFill *)self color];

  return [(TSUColor *)color CGColor];
}

- (double)opacity
{
  color = [(TSDColorFill *)self color];

  [(TSUColor *)color alphaComponent];
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