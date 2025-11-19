@interface NotificationViewController
- (_TtC20SeymourNotifications26NotificationViewController)initWithCoder:(id)a3;
- (_TtC20SeymourNotifications26NotificationViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation NotificationViewController

- (_TtC20SeymourNotifications26NotificationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_10000118C();
    v6 = a4;
    v7 = sub_10000117C();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for NotificationViewController();
  v9 = [(NotificationViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC20SeymourNotifications26NotificationViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NotificationViewController();
  v4 = a3;
  v5 = [(NotificationViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end