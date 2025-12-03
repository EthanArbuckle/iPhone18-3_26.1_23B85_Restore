@interface _UISharedTextureViewport
- (_TtC5UIKit24_UISharedTextureViewport)init;
- (_TtC5UIKit24_UISharedTextureViewport)initWithCoder:(id)coder;
- (_TtC5UIKit24_UISharedTextureViewport)initWithFrame:(CGRect)frame;
- (void)_connectPortal;
- (void)_disconnectPortal;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UISharedTextureViewport

- (void)willMoveToWindow:(id)window
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  windowCopy = window;
  v5 = v7.receiver;
  [(UIView *)&v7 willMoveToWindow:windowCopy];
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver_];

  sub_188DCF74C();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_188DCF800();
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(UIView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__portal];
  [v2 bounds];
  [v3 setFrame_];
}

- (_TtC5UIKit24_UISharedTextureViewport)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__connection) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_TtC5UIKit24_UISharedTextureViewport)initWithFrame:(CGRect)frame
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__connection) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_TtC5UIKit24_UISharedTextureViewport)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__connection) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)_disconnectPortal
{
  selfCopy = self;
  sub_188DCF74C();
}

- (void)_connectPortal
{
  selfCopy = self;
  sub_188DD0118();
}

@end