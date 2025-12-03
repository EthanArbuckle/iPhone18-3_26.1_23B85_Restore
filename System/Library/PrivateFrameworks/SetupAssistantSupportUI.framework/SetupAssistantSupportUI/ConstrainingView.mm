@interface ConstrainingView
- (_TtC23SetupAssistantSupportUIP33_AD4A13777B11A6832A98F7B78726629716ConstrainingView)initWithCoder:(id)coder;
- (_TtC23SetupAssistantSupportUIP33_AD4A13777B11A6832A98F7B78726629716ConstrainingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ConstrainingView

- (_TtC23SetupAssistantSupportUIP33_AD4A13777B11A6832A98F7B78726629716ConstrainingView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  result = sub_265AA79E0();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for ConstrainingView();
  v2 = v8.receiver;
  [(ConstrainingView *)&v8 layoutSubviews];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *((*MEMORY[0x277D85000] & *Strong) + 0xD0);
    v6 = *&v2[OBJC_IVAR____TtC23SetupAssistantSupportUIP33_AD4A13777B11A6832A98F7B78726629716ConstrainingView_internalView];
    v5(v6, v7);
    [v6 setFrame_];
  }
}

- (_TtC23SetupAssistantSupportUIP33_AD4A13777B11A6832A98F7B78726629716ConstrainingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end