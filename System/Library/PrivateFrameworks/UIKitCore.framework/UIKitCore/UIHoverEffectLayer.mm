@interface UIHoverEffectLayer
+ (BOOL)supportsStyle:(id)style;
- (UIHoverEffectLayer)initWithContainerView:(id)view style:(id)style;
- (UIHoverEffectLayer)initWithLayer:(id)layer;
- (UIView)containerView;
- (void)layoutSublayers;
- (void)setHoverStyle:(id)style;
@end

@implementation UIHoverEffectLayer

- (void)setHoverStyle:(id)style
{
  styleCopy = style;
  selfCopy = self;
  sub_1890E4B68(styleCopy);
}

- (UIView)containerView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIHoverEffectLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  return sub_1890E565C(v4);
}

- (UIHoverEffectLayer)initWithContainerView:(id)view style:(id)style
{
  viewCopy = view;
  styleCopy = style;
  v8 = [(UIHoverEffectLayer *)self init];
  swift_unknownObjectWeakAssign();
  if (styleCopy)
  {
    [(UIHoverEffectLayer *)v8 setHoverStyle:styleCopy];
  }

  return v8;
}

- (void)layoutSublayers
{
  selfCopy = self;
  UIHoverEffectLayer.layoutSublayers()();
}

+ (BOOL)supportsStyle:(id)style
{
  styleCopy = style;
  v4 = sub_1890E6428(styleCopy);

  return v4 & 1;
}

@end