@interface WeatherMapAnnotationView
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (UIBezierPath)accessibilityPath;
- (_TtC11WeatherMaps24WeatherMapAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (id)_balloonContentView;
- (id)_balloonStrokeColor;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)setAccessibilityPath:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation WeatherMapAnnotationView

- (id)_balloonStrokeColor
{
  v0 = sub_220F87EAC();

  return v0;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_220F86FB4();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_220F8709C();
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_220F87274(a3, a4);
}

- (NSString)accessibilityLabel
{
  sub_220F873F0();
  if (v2)
  {
    v3 = sub_220FC26C0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)accessibilityValue
{
  v2 = self;
  sub_220F874E0();
  v4 = v3;

  if (v4)
  {
    v5 = sub_220FC26C0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v2 = self;
  v3 = sub_220F8767C();

  return v3;
}

- (CGRect)accessibilityFrame
{
  v2 = self;
  v3 = sub_220F87754();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (UIBezierPath)accessibilityPath
{
  v2 = self;
  v3 = sub_220F8784C();

  return v3;
}

- (void)setAccessibilityPath:(id)a3
{
  v5 = a3;
  v6 = self;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = self;
  v3 = sub_220F87980();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (_TtC11WeatherMaps24WeatherMapAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_220FC2700();
  }

  swift_unknownObjectRetain();
  sub_220F87A14();
}

- (id)_balloonContentView
{
  v2 = self;
  v3 = sub_220F87C8C();

  return v3;
}

@end