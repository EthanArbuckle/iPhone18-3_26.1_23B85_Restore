@interface OptionsButton
- (_TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton)initWithCoder:(id)coder;
- (_TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton)initWithFrame:(CGRect)frame;
@end

@implementation OptionsButton

- (_TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton_onShowMenu);
  *v7 = 0;
  v7[1] = 0;
  v8 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton_onDismissMenu);
  *v8 = 0;
  v8[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton_isPresentingMenu) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for OptionsButton();
  return [(OptionsButton *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton_onShowMenu);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton_onDismissMenu);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton_isPresentingMenu) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for OptionsButton();
  coderCopy = coder;
  v7 = [(OptionsButton *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end