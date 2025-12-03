@interface SessionOverlayView
- (_TtC9SeymourUI18SessionOverlayView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)updateConstraints;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation SessionOverlayView

- (void)willMoveToSuperview:(id)superview
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for SessionOverlayView();
  superviewCopy = superview;
  v5 = v12.receiver;
  [(SessionOverlayView *)&v12 willMoveToSuperview:superviewCopy];
  v6 = *&v5[OBJC_IVAR____TtC9SeymourUI18SessionOverlayView_metricContainer];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = 0;
  v11[4] = sub_20C131D50;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_20B7B548C;
  v11[3] = &block_descriptor_79_3;
  v9 = _Block_copy(v11);
  v10 = v6;

  [v7 animateWithDuration:0 delay:v9 options:0 animations:0.5 completion:0.0];

  _Block_release(v9);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20C12E184();
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SessionOverlayView();
  v2 = v3.receiver;
  [(SessionOverlayView *)&v3 safeAreaInsetsDidChange];
  sub_20C12E448();
  sub_20C12E614();
}

- (_TtC9SeymourUI18SessionOverlayView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateConstraints
{
  selfCopy = self;
  sub_20C1305B0();
}

@end