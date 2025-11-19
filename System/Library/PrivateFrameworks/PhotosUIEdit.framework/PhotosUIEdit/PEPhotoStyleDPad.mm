@interface PEPhotoStyleDPad
- (BOOL)isActive;
- (BOOL)isDottedGridAnimated;
- (BOOL)pulsingValueIndicator;
- (BOOL)snapIndicatorToGrid;
- (CGImage)backgroundImage;
- (CGImage)staticDottedGridImage;
- (CGPoint)defaultValue;
- (CGPoint)value;
- (NSString)gradientCast;
- (PEPhotoStyleDPad)initWithNibName:(id)a3 bundle:(id)a4;
- (UIColor)backgroundColor;
- (id)onValueChanged;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundImage:(CGImage *)a3;
- (void)setDefaultValue:(CGPoint)a3;
- (void)setDefaultValue:(CGPoint)a3 animated:(BOOL)a4;
- (void)setGradientCast:(id)a3;
- (void)setIsDottedGridAnimated:(BOOL)a3;
- (void)setPulsingValueIndicator:(BOOL)a3;
- (void)setSnapIndicatorToGrid:(BOOL)a3;
- (void)setStaticDottedGridImage:(CGImage *)a3;
- (void)setValue:(CGPoint)a3;
- (void)setValue:(CGPoint)a3 animated:(BOOL)a4;
- (void)setValue:(CGPoint)a3 notifyObserver:(BOOL)a4;
@end

@implementation PEPhotoStyleDPad

- (CGPoint)value
{
  v2 = self;
  v3 = PEPhotoStyleDPad.value.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)setValue:(CGPoint)a3
{
  v3 = self;
  PEPhotoStyleDPad.value.setter();
}

- (CGPoint)defaultValue
{
  v2 = self;
  v3 = PEPhotoStyleDPad.defaultValue.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)setDefaultValue:(CGPoint)a3
{
  v3 = self;
  PEPhotoStyleDPad.defaultValue.setter();
}

- (CGImage)backgroundImage
{
  v2 = self;
  v3 = PEPhotoStyleDPad.backgroundImage.getter();

  return v3;
}

- (void)setBackgroundImage:(CGImage *)a3
{
  v5 = a3;
  v6 = self;
  PEPhotoStyleDPad.backgroundImage.setter(a3);
}

- (UIColor)backgroundColor
{
  v2 = self;
  v3 = PEPhotoStyleDPad.backgroundColor.getter();

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  PEPhotoStyleDPad.backgroundColor.setter(a3);
}

- (NSString)gradientCast
{
  v2 = self;
  v3 = PEPhotoStyleDPad.gradientCast.getter();

  return v3;
}

- (void)setGradientCast:(id)a3
{
  v4 = a3;
  v5 = self;
  PEPhotoStyleDPad.gradientCast.setter(v4);
}

- (CGImage)staticDottedGridImage
{
  v2 = self;
  v3 = PEPhotoStyleDPad.staticDottedGridImage.getter();

  return v3;
}

- (void)setStaticDottedGridImage:(CGImage *)a3
{
  v5 = a3;
  v6 = self;
  PEPhotoStyleDPad.staticDottedGridImage.setter(a3);
}

- (id)onValueChanged
{
  v2 = self;
  v3 = PEPhotoStyleDPad.onValueChanged.getter();
  v5 = v4;

  v8[4] = v3;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_25E71E704;
  v8[3] = &block_descriptor_60;
  v6 = _Block_copy(v8);

  return v6;
}

- (BOOL)isActive
{
  v2 = self;
  v3 = PEPhotoStyleDPad.isActive.getter();

  return v3 & 1;
}

- (BOOL)pulsingValueIndicator
{
  v2 = self;
  v3 = PEPhotoStyleDPad.pulsingValueIndicator.getter();

  return v3 & 1;
}

- (void)setPulsingValueIndicator:(BOOL)a3
{
  v3 = self;
  PEPhotoStyleDPad.pulsingValueIndicator.setter();
}

- (BOOL)isDottedGridAnimated
{
  v2 = self;
  v3 = PEPhotoStyleDPad.isDottedGridAnimated.getter();

  return v3;
}

- (void)setIsDottedGridAnimated:(BOOL)a3
{
  v4 = self;
  PEPhotoStyleDPad.isDottedGridAnimated.setter(a3);
}

- (BOOL)snapIndicatorToGrid
{
  v2 = self;
  v3 = PEPhotoStyleDPad.snapIndicatorToGrid.getter();

  return v3 & 1;
}

- (void)setSnapIndicatorToGrid:(BOOL)a3
{
  v4 = self;
  PEPhotoStyleDPad.snapIndicatorToGrid.setter(a3);
}

- (void)setValue:(CGPoint)a3 animated:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  v7 = self;
  PEPhotoStyleDPad.setValue(_:animated:)(__PAIR128__(*&y, *&x), a4);
}

- (void)setDefaultValue:(CGPoint)a3 animated:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  v7 = self;
  PEPhotoStyleDPad.setDefaultValue(_:animated:)(__PAIR128__(*&y, *&x), a4);
}

- (void)setValue:(CGPoint)a3 notifyObserver:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  v7 = self;
  PEPhotoStyleDPad.setValue(_:notifyObserver:)(__PAIR128__(*&y, *&x), a4);
}

- (PEPhotoStyleDPad)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_25E756CC8();
  }

  v5 = a4;
  PEPhotoStyleDPad.init(nibName:bundle:)();
}

@end