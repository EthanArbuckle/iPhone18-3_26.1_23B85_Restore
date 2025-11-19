@interface SiriSharedUIVariableBlurView
- (_TtC12SiriSharedUI28SiriSharedUIVariableBlurView)initWithCoder:(id)a3;
- (_TtC12SiriSharedUI28SiriSharedUIVariableBlurView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SiriSharedUIVariableBlurView

- (_TtC12SiriSharedUI28SiriSharedUIVariableBlurView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI28SiriSharedUIVariableBlurView_backdropLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CD9E08]) init];
  result = sub_21E4DD468();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SiriSharedUIVariableBlurView();
  v2 = v4.receiver;
  [(SiriSharedUIVariableBlurView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC12SiriSharedUI28SiriSharedUIVariableBlurView_backdropLayer];
  [v2 bounds];
  [v3 setFrame_];
}

- (_TtC12SiriSharedUI28SiriSharedUIVariableBlurView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end