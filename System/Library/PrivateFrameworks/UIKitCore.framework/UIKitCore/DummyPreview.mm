@interface DummyPreview
- (NSString)description;
- (_TtC5UIKitP33_3B71486064EBB3A7715396E0775E2F5F12DummyPreview)initWithView:(id)view parameters:(id)parameters target:(id)target;
@end

@implementation DummyPreview

- (_TtC5UIKitP33_3B71486064EBB3A7715396E0775E2F5F12DummyPreview)initWithView:(id)view parameters:(id)parameters target:(id)target
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DummyPreview();
  return [(UITargetedPreview *)&v9 initWithView:view parameters:parameters target:target];
}

- (NSString)description
{
  selfCopy = self;
  view = [(UITargetedPreview *)selfCopy view];
  layer = [(UIView *)view layer];

  name = [(CALayer *)layer name];
  if (!name)
  {
    v8.receiver = selfCopy;
    v8.super_class = type metadata accessor for DummyPreview();
    name = [(UITargetedPreview *)&v8 description];
  }

  sub_18A4A7288();

  v6 = sub_18A4A7258();

  return v6;
}

@end