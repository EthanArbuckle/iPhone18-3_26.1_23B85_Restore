@interface RemoteExtensionViewController
- (_TtC13iCloudQuotaUI29RemoteExtensionViewController)initWithCoder:(id)a3;
- (_TtC13iCloudQuotaUI29RemoteExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation RemoteExtensionViewController

- (void)loadView
{
  v2 = self;
  sub_2756F1D7C();
}

- (_TtC13iCloudQuotaUI29RemoteExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_275797F50();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController) = 0;
    v6 = a4;
    v7 = sub_275797F10();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for RemoteExtensionViewController();
  v9 = [(RemoteExtensionViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC13iCloudQuotaUI29RemoteExtensionViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RemoteExtensionViewController();
  v4 = a3;
  v5 = [(RemoteExtensionViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end