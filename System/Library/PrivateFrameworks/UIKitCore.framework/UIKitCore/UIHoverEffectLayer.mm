@interface UIHoverEffectLayer
+ (BOOL)supportsStyle:(id)a3;
- (UIHoverEffectLayer)initWithContainerView:(id)a3 style:(id)a4;
- (UIHoverEffectLayer)initWithLayer:(id)a3;
- (UIView)containerView;
- (void)layoutSublayers;
- (void)setHoverStyle:(id)a3;
@end

@implementation UIHoverEffectLayer

- (void)setHoverStyle:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890E4B68(v4);
}

- (UIView)containerView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIHoverEffectLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  return sub_1890E565C(v4);
}

- (UIHoverEffectLayer)initWithContainerView:(id)a3 style:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIHoverEffectLayer *)self init];
  swift_unknownObjectWeakAssign();
  if (v7)
  {
    [(UIHoverEffectLayer *)v8 setHoverStyle:v7];
  }

  return v8;
}

- (void)layoutSublayers
{
  v2 = self;
  UIHoverEffectLayer.layoutSublayers()();
}

+ (BOOL)supportsStyle:(id)a3
{
  v3 = a3;
  v4 = sub_1890E6428(v3);

  return v4 & 1;
}

@end