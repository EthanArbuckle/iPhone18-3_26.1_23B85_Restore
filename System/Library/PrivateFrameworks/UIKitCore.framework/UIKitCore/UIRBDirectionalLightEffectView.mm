@interface UIRBDirectionalLightEffectView
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)update:(id)update;
@end

@implementation UIRBDirectionalLightEffectView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for UIRBDirectionalLightEffectView();
  v2 = v4.receiver;
  [(UIView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView];
  [v2 bounds];
  [v3 setFrame_];
  sub_189230C30();
}

- (void)update:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_189230D80(updateCopy);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_189230FA4();
}

@end