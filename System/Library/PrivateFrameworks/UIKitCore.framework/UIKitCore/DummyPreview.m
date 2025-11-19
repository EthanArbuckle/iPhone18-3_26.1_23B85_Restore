@interface DummyPreview
- (NSString)description;
- (_TtC5UIKitP33_3B71486064EBB3A7715396E0775E2F5F12DummyPreview)initWithView:(id)a3 parameters:(id)a4 target:(id)a5;
@end

@implementation DummyPreview

- (_TtC5UIKitP33_3B71486064EBB3A7715396E0775E2F5F12DummyPreview)initWithView:(id)a3 parameters:(id)a4 target:(id)a5
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DummyPreview();
  return [(UITargetedPreview *)&v9 initWithView:a3 parameters:a4 target:a5];
}

- (NSString)description
{
  v2 = self;
  v3 = [(UITargetedPreview *)v2 view];
  v4 = [(UIView *)v3 layer];

  v5 = [(CALayer *)v4 name];
  if (!v5)
  {
    v8.receiver = v2;
    v8.super_class = type metadata accessor for DummyPreview();
    v5 = [(UITargetedPreview *)&v8 description];
  }

  sub_18A4A7288();

  v6 = sub_18A4A7258();

  return v6;
}

@end