@interface RemoteExtensionViewController
- (_TtC13iCloudQuotaUI29RemoteExtensionViewController)initWithCoder:(id)coder;
- (_TtC13iCloudQuotaUI29RemoteExtensionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation RemoteExtensionViewController

- (void)loadView
{
  selfCopy = self;
  sub_2756F1D7C();
}

- (_TtC13iCloudQuotaUI29RemoteExtensionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_275797F50();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController) = 0;
    bundleCopy = bundle;
    v7 = sub_275797F10();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for RemoteExtensionViewController();
  v9 = [(RemoteExtensionViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC13iCloudQuotaUI29RemoteExtensionViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13iCloudQuotaUI29RemoteExtensionViewController____lazy_storage___contentViewController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RemoteExtensionViewController();
  coderCopy = coder;
  v5 = [(RemoteExtensionViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end