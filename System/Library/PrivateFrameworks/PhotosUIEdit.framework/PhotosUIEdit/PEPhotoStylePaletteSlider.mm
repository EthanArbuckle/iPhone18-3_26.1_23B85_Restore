@interface PEPhotoStylePaletteSlider
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NSArray)colors;
- (NSString)gradientCast;
- (double)value;
- (id)onValueChanged;
- (void)setColors:(id)colors;
- (void)setGradientCast:(id)cast;
- (void)setValue:(double)value;
- (void)setValue:(double)value notifyObserver:(BOOL)observer;
@end

@implementation PEPhotoStylePaletteSlider

- (double)value
{
  selfCopy = self;
  v3 = PEPhotoStylePaletteSlider.value.getter();

  return v3;
}

- (void)setValue:(double)value
{
  selfCopy = self;
  PEPhotoStylePaletteSlider.value.setter(value);
}

- (NSArray)colors
{
  selfCopy = self;
  v3 = PEPhotoStylePaletteSlider.colors.getter();

  if (v3)
  {
    sub_25E701520(0, &qword_27FD03BF0);
    v4 = sub_25E756D38();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setColors:(id)colors
{
  if (colors)
  {
    sub_25E701520(0, &qword_27FD03BF0);
    sub_25E756D48();
  }

  selfCopy = self;
  PEPhotoStylePaletteSlider.colors.setter();
}

- (NSString)gradientCast
{
  selfCopy = self;
  v3 = PEPhotoStylePaletteSlider.gradientCast.getter();

  return v3;
}

- (void)setGradientCast:(id)cast
{
  castCopy = cast;
  selfCopy = self;
  PEPhotoStylePaletteSlider.gradientCast.setter(castCopy);
}

- (id)onValueChanged
{
  selfCopy = self;
  v3 = PEPhotoStylePaletteSlider.onValueChanged.getter();
  v5 = v4;

  v8[4] = v3;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_25E6FEA3C;
  v8[3] = &block_descriptor_39;
  v6 = _Block_copy(v8);

  return v6;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v10.value.super.isa = self;
  isa = v10.value.super.isa;
  LOBYTE(self) = PEPhotoStylePaletteSlider.point(inside:with:)(__PAIR128__(*&y, *&x), v10);

  return self & 1;
}

- (void)setValue:(double)value notifyObserver:(BOOL)observer
{
  selfCopy = self;
  PEPhotoStylePaletteSlider.setValue(_:notifyObserver:)(value, observer);
}

@end