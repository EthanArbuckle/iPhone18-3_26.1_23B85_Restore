@interface TVButton
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI8TVButton)initWithFrame:(CGRect)frame;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TVButton

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = TVButton.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  TVButton.layoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  TVButton.traitCollectionDidChange(_:)(v9);
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  sub_20B51C88C(0, &qword_27C768D70);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = sub_20B9DE930(0, 0, 0, sub_20B9E1078, v4);

  return v5;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu);
  if (v5)
  {
    selfCopy = self;
    v7 = sub_20B584050(v5);
    v5(v7);

    sub_20B583ECC(v5);
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  ObjectType = swift_getObjectType();
  sub_20B51C88C(0, &qword_27C764588);
  sub_20B9E0F28();
  v7 = sub_20C13CF74();
  eventCopy = event;
  selfCopy = self;
  if ((sub_20B9E0E84(v7) & 1) != 0 && (v9 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI8TVButton_controlState), (v9 & 8) != 0))
  {

    sub_20B9DEC5C(v9 | 1, 1);
  }

  else
  {
    v10 = sub_20C13CF64();

    v12.receiver = selfCopy;
    v12.super_class = ObjectType;
    [(TVButton *)&v12 pressesBegan:v10 withEvent:eventCopy];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  ObjectType = swift_getObjectType();
  sub_20B51C88C(0, &qword_27C764588);
  sub_20B9E0F28();
  v7 = sub_20C13CF74();
  eventCopy = event;
  selfCopy = self;
  if (sub_20B9E0E84(v7))
  {

    sub_20B9DEC5C(*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI8TVButton_controlState) & 0xFFFFFFFFFFFFFFFELL, 1);
  }

  else
  {
    v9 = sub_20C13CF64();

    v11.receiver = selfCopy;
    v11.super_class = ObjectType;
    [(TVButton *)&v11 pressesCancelled:v9 withEvent:eventCopy];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  ObjectType = swift_getObjectType();
  sub_20B51C88C(0, &qword_27C764588);
  sub_20B9E0F28();
  v7 = sub_20C13CF74();
  eventCopy = event;
  selfCopy = self;
  if (sub_20B9E0E84(v7))
  {

    sub_20B9DEC5C(*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI8TVButton_controlState) & 0xFFFFFFFFFFFFFFFELL, 1);
    [(TVButton *)selfCopy sendActionsForControlEvents:0x2000];
  }

  else
  {
    v9 = sub_20C13CF64();

    v11.receiver = selfCopy;
    v11.super_class = ObjectType;
    [(TVButton *)&v11 pressesEnded:v9 withEvent:eventCopy];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  TVButton.didUpdateFocus(in:with:)(contextCopy, coordinatorCopy);
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context
{
  _preferredConfigurationForFocusAnimation_inContext_ = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) _preferredConfigurationForFocusAnimation_inContext_];

  return _preferredConfigurationForFocusAnimation_inContext_;
}

- (_TtC9SeymourUI8TVButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end