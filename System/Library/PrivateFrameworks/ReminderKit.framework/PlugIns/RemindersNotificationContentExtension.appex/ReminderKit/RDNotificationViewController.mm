@interface RDNotificationViewController
- (NSLayoutConstraint)appLinkSpacingConstraint;
- (NSLayoutConstraint)appLinkWidthConstraint;
- (UIButton)appLinkButton;
- (UILabel)footnoteLabel;
- (UILabel)label;
- (_TtC37RemindersNotificationContentExtension28RDNotificationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveNotification:(id)notification;
- (void)didTapAppLinkButton:(id)button;
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
  selfCopy = self;
  sub_1000018D4();
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100001A18(notificationCopy);
}

- (void)didTapAppLinkButton:(id)button
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000048B0();
  swift_unknownObjectRelease();
  sub_100003140();

  sub_100003C5C(v5);
}

- (_TtC37RemindersNotificationContentExtension28RDNotificationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1000047A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000032CC(v5, v7, bundle);
}

@end