@interface TSDColorFill
+ (TSDColorFill)blackColor;
+ (TSDColorFill)blueColor;
+ (TSDColorFill)brownColor;
+ (TSDColorFill)clearColor;
+ (TSDColorFill)cyanColor;
+ (TSDColorFill)grayColor;
+ (TSDColorFill)greenColor;
+ (TSDColorFill)magentaColor;
+ (TSDColorFill)orangeColor;
+ (TSDColorFill)purpleColor;
+ (TSDColorFill)randomColor;
+ (TSDColorFill)redColor;
+ (TSDColorFill)whiteColor;
+ (TSDColorFill)yellowColor;
+ (id)colorWithCGColor:(CGColor *)color;
+ (id)colorWithColor:(id)color;
+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
+ (id)colorWithUIColor:(id)color;
+ (id)colorWithWhite:(double)white alpha:(double)alpha;
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNearlyWhite;
- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)appearance;
- (CGColor)CGColor;
- (TSDColorFill)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSDColorFill)initWithCGColor:(CGColor *)color;
- (TSDColorFill)initWithColor:(id)color;
- (TSDColorFill)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (TSDColorFill)initWithUIColor:(id)color;
- (TSDColorFill)initWithWhite:(double)white alpha:(double)alpha;
- (UIColor)UIColor;
- (double)luminance;
- (double)opacity;
- (double)p_hsbComponentWithIndex:(unint64_t)index;
- (id)grayscaleColor;
- (id)invertedColor;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)i_setColor:(id)color;
- (void)paintPath:(CGPath *)path inContext:(CGContext *)context;
- (void)paintRect:(CGRect)rect inContext:(CGContext *)context;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSDColorFill

+ (id)colorWithColor:(id)color
{
  colorCopy = color;
  v5 = [self alloc];
  v7 = objc_msgSend_initWithColor_(v5, v6, colorCopy);

  return v7;
}

+ (id)colorWithCGColor:(CGColor *)color
{
  v4 = [self alloc];
  v6 = objc_msgSend_initWithCGColor_(v4, v5, color);

  return v6;
}

+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v10 = [self alloc];
  v13 = objc_msgSend_initWithRed_green_blue_alpha_(v10, v11, v12, red, green, blue, alpha);

  return v13;
}

+ (id)colorWithWhite:(double)white alpha:(double)alpha
{
  v6 = [self alloc];
  v9 = objc_msgSend_initWithWhite_alpha_(v6, v7, v8, white, alpha);

  return v9;
}

+ (id)colorWithUIColor:(id)color
{
  colorCopy = color;
  v5 = [self alloc];
  v7 = objc_msgSend_initWithUIColor_(v5, v6, colorCopy);

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableColorFill alloc];
  v7 = objc_msgSend_color(self, v5, v6);
  v9 = objc_msgSend_initWithColor_(v4, v8, v7);

  return v9;
}

+ (TSDColorFill)randomColor
{
  RandomRGB = TSUCGColorCreateRandomRGB();
  v4 = objc_msgSend_colorWithCGColor_(TSDColorFill, v3, RandomRGB);
  CGColorRelease(RandomRGB);

  return v4;
}

+ (TSDColorFill)clearColor
{
  v2 = [TSDColorFill alloc];
  v5 = objc_msgSend_clearColor(MEMORY[0x277D81180], v3, v4);
  v7 = objc_msgSend_initWithColor_(v2, v6, v5);

  return v7;
}

+ (TSDColorFill)blackColor
{
  v2 = [TSDColorFill alloc];
  v5 = objc_msgSend_blackColor(MEMORY[0x277D81180], v3, v4);
  v7 = objc_msgSend_initWithColor_(v2, v6, v5);

  return v7;
}

+ (TSDColorFill)whiteColor
{
  v2 = [TSDColorFill alloc];
  v5 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v3, v4);
  v7 = objc_msgSend_initWithColor_(v2, v6, v5);

  return v7;
}

+ (TSDColorFill)grayColor
{
  v2 = [TSDColorFill alloc];
  v5 = objc_msgSend_grayColor(MEMORY[0x277D81180], v3, v4);
  v7 = objc_msgSend_initWithColor_(v2, v6, v5);

  return v7;
}

+ (TSDColorFill)redColor
{
  v2 = [TSDColorFill alloc];
  v5 = objc_msgSend_redColor(MEMORY[0x277D81180], v3, v4);
  v7 = objc_msgSend_initWithColor_(v2, v6, v5);

  return v7;
}

+ (TSDColorFill)greenColor
{
  v2 = [TSDColorFill alloc];
  v5 = objc_msgSend_greenColor(MEMORY[0x277D81180], v3, v4);
  v7 = objc_msgSend_initWithColor_(v2, v6, v5);

  return v7;
}

+ (TSDColorFill)blueColor
{
  v2 = [TSDColorFill alloc];
  v5 = objc_msgSend_blueColor(MEMORY[0x277D81180], v3, v4);
  v7 = objc_msgSend_initWithColor_(v2, v6, v5);

  return v7;
}

+ (TSDColorFill)cyanColor
{
  v2 = [TSDColorFill alloc];
  v5 = objc_msgSend_cyanColor(MEMORY[0x277D81180], v3, v4);
  v7 = objc_msgSend_initWithColor_(v2, v6, v5);

  return v7;
}

+ (TSDColorFill)yellowColor
{
  v2 = [TSDColorFill alloc];
  v5 = objc_msgSend_yellowColor(MEMORY[0x277D81180], v3, v4);
  v7 = objc_msgSend_initWithColor_(v2, v6, v5);

  return v7;
}

+ (TSDColorFill)magentaColor
{
  v2 = [TSDColorFill alloc];
  v5 = objc_msgSend_magentaColor(MEMORY[0x277D81180], v3, v4);
  v7 = objc_msgSend_initWithColor_(v2, v6, v5);

  return v7;
}

+ (TSDColorFill)orangeColor
{
  v2 = [TSDColorFill alloc];
  v5 = objc_msgSend_orangeColor(MEMORY[0x277D81180], v3, v4);
  v7 = objc_msgSend_initWithColor_(v2, v6, v5);

  return v7;
}

+ (TSDColorFill)purpleColor
{
  v2 = [TSDColorFill alloc];
  v5 = objc_msgSend_purpleColor(MEMORY[0x277D81180], v3, v4);
  v7 = objc_msgSend_initWithColor_(v2, v6, v5);

  return v7;
}

+ (TSDColorFill)brownColor
{
  v2 = [TSDColorFill alloc];
  v5 = objc_msgSend_brownColor(MEMORY[0x277D81180], v3, v4);
  v7 = objc_msgSend_initWithColor_(v2, v6, v5);

  return v7;
}

- (TSDColorFill)initWithColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDColorFill initWithColor:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDColorFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 146, 0, "invalid nil value for color");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v11, v12);
  }

  v19.receiver = self;
  v19.super_class = TSDColorFill;
  v15 = [(TSDColorFill *)&v19 init];
  if (v15)
  {
    v16 = objc_msgSend_copy(colorCopy, v13, v14);
    color = v15->_color;
    v15->_color = v16;
  }

  return v15;
}

- (TSDColorFill)initWithCGColor:(CGColor *)color
{
  v4 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D81180], a2, color);
  v6 = objc_msgSend_initWithColor_(self, v5, v4);

  return v6;
}

- (TSDColorFill)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v8 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], a2, v6, red, green, blue, alpha);
  v10 = objc_msgSend_initWithColor_(self, v9, v8);

  return v10;
}

- (TSDColorFill)initWithWhite:(double)white alpha:(double)alpha
{
  v6 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], a2, v4, white, alpha);
  v8 = objc_msgSend_initWithColor_(self, v7, v6);

  return v8;
}

- (TSDColorFill)initWithUIColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDColorFill initWithUIColor:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDColorFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 171, 0, "invalid nil value for '%{public}s'", "uiColor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_colorWithUIColor_(MEMORY[0x277D81180], v4, colorCopy);
  v15 = objc_msgSend_initWithColor_(self, v14, v13);

  return v15;
}

- (void)i_setColor:(id)color
{
  v4 = objc_msgSend_copy(color, a2, color);
  color = self->_color;
  self->_color = v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      v8 = v5;
      v9 = objc_msgSend_color(self, v6, v7);
      v12 = objc_msgSend_color(v8, v10, v11);
      isEqual = objc_msgSend_isEqual_(v9, v13, v12);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (UIColor)UIColor
{
  v3 = objc_msgSend_color(self, a2, v2);
  v6 = objc_msgSend_UIColor(v3, v4, v5);

  return v6;
}

- (id)grayscaleColor
{
  v3 = objc_msgSend_color(self, a2, v2);
  v6 = objc_msgSend_grayscaleColor(v3, v4, v5);
  v8 = objc_msgSend_colorWithColor_(TSDColorFill, v7, v6);

  return v8;
}

- (id)invertedColor
{
  v3 = objc_msgSend_color(self, a2, v2);
  v6 = objc_msgSend_invertedColor(v3, v4, v5);
  v8 = objc_msgSend_colorWithColor_(TSDColorFill, v7, v6);

  return v8;
}

- (BOOL)isNearlyWhite
{
  v3 = objc_msgSend_color(self, a2, v2);
  isNearlyWhite = objc_msgSend_isNearlyWhite(v3, v4, v5);

  return isNearlyWhite;
}

- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)appearance
{
  appearanceCopy = appearance;
  v4 = objc_msgSend_color(self, a2, appearance);
  LOBYTE(appearanceCopy) = objc_msgSend_requiresOutlineOnBackgroundWithAppearance_(v4, v5, appearanceCopy);

  return appearanceCopy;
}

- (void)paintRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_msgSend_color(self, a2, context);
  objc_msgSend_paintRect_inContext_(v10, v9, context, x, y, width, height);
}

- (void)paintPath:(CGPath *)path inContext:(CGContext *)context
{
  v7 = objc_msgSend_color(self, a2, path);
  objc_msgSend_paintPath_inContext_(v7, v6, path, context);
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDColorFill mixingTypeWithObject:context:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDColorFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 282, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  return 4;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();

  v10 = objc_msgSend_color(self, v8, v9);
  v13 = objc_msgSend_color(v7, v11, v12);
  v15 = objc_msgSend_blendedColorWithFraction_ofColor_(v10, v14, v13, fraction);

  v17 = objc_msgSend_colorWithColor_(TSDColorFill, v16, v15);

  return v17;
}

- (double)p_hsbComponentWithIndex:(unint64_t)index
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_color(self, a2, index, 0, 0, 0, 0);
  v7 = objc_msgSend_UIColor(v4, v5, v6);
  objc_msgSend_getHue_saturation_brightness_alpha_(v7, v8, &v10, &v10 + 8, &v11, &v11 + 8);

  return *(&v10 + index);
}

- (CGColor)CGColor
{
  v3 = objc_msgSend_color(self, a2, v2);
  v6 = objc_msgSend_CGColor(v3, v4, v5);

  return v6;
}

- (double)opacity
{
  v3 = objc_msgSend_color(self, a2, v2);
  objc_msgSend_alphaComponent(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)luminance
{
  v3 = objc_msgSend_CGColor(self, a2, v2);
  Components = CGColorGetComponents(v3);
  result = fmax(Components[1] * 0.715200007 + *Components * 0.212599993 + Components[2] * 0.0722000003 * Components[3], 0.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSDColorFill alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, archive, unarchiverCopy);

  return v8;
}

- (TSDColorFill)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v5 = TSPTSUColorCreateFromMessage();
  v7 = objc_msgSend_initWithColor_(self, v6, v5);

  return v7;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v8 = objc_msgSend_color(self, v6, v7);
  *(archive + 10) |= 1u;
  if (!*(archive + 6))
  {
    v9 = *(archive + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 6) = MEMORY[0x277C9BAF0](v9);
  }

  TSPTSUColorCopyToMessage();
}

@end