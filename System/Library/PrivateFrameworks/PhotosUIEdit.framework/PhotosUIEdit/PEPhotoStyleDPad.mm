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
- (PEPhotoStyleDPad)initWithNibName:(id)name bundle:(id)bundle;
- (UIColor)backgroundColor;
- (id)onValueChanged;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundImage:(CGImage *)image;
- (void)setDefaultValue:(CGPoint)value;
- (void)setDefaultValue:(CGPoint)value animated:(BOOL)animated;
- (void)setGradientCast:(id)cast;
- (void)setIsDottedGridAnimated:(BOOL)animated;
- (void)setPulsingValueIndicator:(BOOL)indicator;
- (void)setSnapIndicatorToGrid:(BOOL)grid;
- (void)setStaticDottedGridImage:(CGImage *)image;
- (void)setValue:(CGPoint)value;
- (void)setValue:(CGPoint)value animated:(BOOL)animated;
- (void)setValue:(CGPoint)value notifyObserver:(BOOL)observer;
@end

@implementation PEPhotoStyleDPad

- (CGPoint)value
{
  selfCopy = self;
  v3 = PEPhotoStyleDPad.value.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)setValue:(CGPoint)value
{
  selfCopy = self;
  PEPhotoStyleDPad.value.setter();
}

- (CGPoint)defaultValue
{
  selfCopy = self;
  v3 = PEPhotoStyleDPad.defaultValue.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)setDefaultValue:(CGPoint)value
{
  selfCopy = self;
  PEPhotoStyleDPad.defaultValue.setter();
}

- (CGImage)backgroundImage
{
  selfCopy = self;
  v3 = PEPhotoStyleDPad.backgroundImage.getter();

  return v3;
}

- (void)setBackgroundImage:(CGImage *)image
{
  imageCopy = image;
  selfCopy = self;
  PEPhotoStyleDPad.backgroundImage.setter(image);
}

- (UIColor)backgroundColor
{
  selfCopy = self;
  v3 = PEPhotoStyleDPad.backgroundColor.getter();

  return v3;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  PEPhotoStyleDPad.backgroundColor.setter(color);
}

- (NSString)gradientCast
{
  selfCopy = self;
  v3 = PEPhotoStyleDPad.gradientCast.getter();

  return v3;
}

- (void)setGradientCast:(id)cast
{
  castCopy = cast;
  selfCopy = self;
  PEPhotoStyleDPad.gradientCast.setter(castCopy);
}

- (CGImage)staticDottedGridImage
{
  selfCopy = self;
  v3 = PEPhotoStyleDPad.staticDottedGridImage.getter();

  return v3;
}

- (void)setStaticDottedGridImage:(CGImage *)image
{
  imageCopy = image;
  selfCopy = self;
  PEPhotoStyleDPad.staticDottedGridImage.setter(image);
}

- (id)onValueChanged
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = PEPhotoStyleDPad.isActive.getter();

  return v3 & 1;
}

- (BOOL)pulsingValueIndicator
{
  selfCopy = self;
  v3 = PEPhotoStyleDPad.pulsingValueIndicator.getter();

  return v3 & 1;
}

- (void)setPulsingValueIndicator:(BOOL)indicator
{
  selfCopy = self;
  PEPhotoStyleDPad.pulsingValueIndicator.setter();
}

- (BOOL)isDottedGridAnimated
{
  selfCopy = self;
  v3 = PEPhotoStyleDPad.isDottedGridAnimated.getter();

  return v3;
}

- (void)setIsDottedGridAnimated:(BOOL)animated
{
  selfCopy = self;
  PEPhotoStyleDPad.isDottedGridAnimated.setter(animated);
}

- (BOOL)snapIndicatorToGrid
{
  selfCopy = self;
  v3 = PEPhotoStyleDPad.snapIndicatorToGrid.getter();

  return v3 & 1;
}

- (void)setSnapIndicatorToGrid:(BOOL)grid
{
  selfCopy = self;
  PEPhotoStyleDPad.snapIndicatorToGrid.setter(grid);
}

- (void)setValue:(CGPoint)value animated:(BOOL)animated
{
  y = value.y;
  x = value.x;
  selfCopy = self;
  PEPhotoStyleDPad.setValue(_:animated:)(__PAIR128__(*&y, *&x), animated);
}

- (void)setDefaultValue:(CGPoint)value animated:(BOOL)animated
{
  y = value.y;
  x = value.x;
  selfCopy = self;
  PEPhotoStyleDPad.setDefaultValue(_:animated:)(__PAIR128__(*&y, *&x), animated);
}

- (void)setValue:(CGPoint)value notifyObserver:(BOOL)observer
{
  y = value.y;
  x = value.x;
  selfCopy = self;
  PEPhotoStyleDPad.setValue(_:notifyObserver:)(__PAIR128__(*&y, *&x), observer);
}

- (PEPhotoStyleDPad)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_25E756CC8();
  }

  bundleCopy = bundle;
  PEPhotoStyleDPad.init(nibName:bundle:)();
}

@end