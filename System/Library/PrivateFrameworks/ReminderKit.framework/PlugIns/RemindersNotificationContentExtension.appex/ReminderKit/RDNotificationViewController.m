@interface RDNotificationViewController
- (NSLayoutConstraint)appLinkSpacingConstraint;
- (NSLayoutConstraint)appLinkWidthConstraint;
- (UIButton)appLinkButton;
- (UILabel)footnoteLabel;
- (UILabel)label;
- (_TtC37RemindersNotificationContentExtension28RDNotificationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveNotification:(id)a3;
- (void)didTapAppLinkButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation RDNotificationViewController

- (UILabel)label
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)footnoteLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIButton)appLinkButton
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSLayoutConstraint)appLinkSpacingConstraint
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSLayoutConstraint)appLinkWidthConstraint
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000018D4();
}

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100001A18(v4);
}

- (void)didTapAppLinkButton:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1000048B0();
  swift_unknownObjectRelease();
  sub_100003140();

  sub_100003C5C(v5);
}

- (_TtC37RemindersNotificationContentExtension28RDNotificationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1000047A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000032CC(v5, v7, a4);
}

@end