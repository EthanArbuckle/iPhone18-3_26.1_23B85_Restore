@interface PEPhotoStylePaletteSlider
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (NSArray)colors;
- (NSString)gradientCast;
- (double)value;
- (id)onValueChanged;
- (void)setColors:(id)a3;
- (void)setGradientCast:(id)a3;
- (void)setValue:(double)a3;
- (void)setValue:(double)a3 notifyObserver:(BOOL)a4;
@end

@implementation PEPhotoStylePaletteSlider

- (double)value
{
  v2 = self;
  v3 = PEPhotoStylePaletteSlider.value.getter();

  return v3;
}

- (void)setValue:(double)a3
{
  v4 = self;
  PEPhotoStylePaletteSlider.value.setter(a3);
}

- (NSArray)colors
{
  v2 = self;
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

- (void)setColors:(id)a3
{
  if (a3)
  {
    sub_25E701520(0, &qword_27FD03BF0);
    sub_25E756D48();
  }

  v4 = self;
  PEPhotoStylePaletteSlider.colors.setter();
}

- (NSString)gradientCast
{
  v2 = self;
  v3 = PEPhotoStylePaletteSlider.gradientCast.getter();

  return v3;
}

- (void)setGradientCast:(id)a3
{
  v4 = a3;
  v5 = self;
  PEPhotoStylePaletteSlider.gradientCast.setter(v4);
}

- (id)onValueChanged
{
  v2 = self;
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v10.value.super.isa = self;
  isa = v10.value.super.isa;
  LOBYTE(self) = PEPhotoStylePaletteSlider.point(inside:with:)(__PAIR128__(*&y, *&x), v10);

  return self & 1;
}

- (void)setValue:(double)a3 notifyObserver:(BOOL)a4
{
  v6 = self;
  PEPhotoStylePaletteSlider.setValue(_:notifyObserver:)(a3, a4);
}

@end