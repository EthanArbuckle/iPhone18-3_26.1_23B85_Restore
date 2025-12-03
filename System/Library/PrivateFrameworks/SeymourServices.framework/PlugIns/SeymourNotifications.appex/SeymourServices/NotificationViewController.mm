@interface NotificationViewController
- (_TtC20SeymourNotifications26NotificationViewController)initWithCoder:(id)coder;
- (_TtC20SeymourNotifications26NotificationViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation NotificationViewController

- (_TtC20SeymourNotifications26NotificationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_10000118C();
    bundleCopy = bundle;
    v7 = sub_10000117C();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for NotificationViewController();
  v9 = [(NotificationViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC20SeymourNotifications26NotificationViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NotificationViewController();
  coderCopy = coder;
  v5 = [(NotificationViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end