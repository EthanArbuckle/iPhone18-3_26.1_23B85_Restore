@interface CloudQuotaNotificationItemListManager
- (_TtC12PhotosUICore37CloudQuotaNotificationItemListManager)init;
- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)a3;
- (void)cloudQuotaControllerHelper:(id)a3 informationViewDidChange:(id)a4;
@end

@implementation CloudQuotaNotificationItemListManager

- (void)cloudQuotaControllerHelper:(id)a3 informationViewDidChange:(id)a4
{
  v4 = self;
  sub_1A42D7110();
}

- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)a3
{
  v3 = *(**(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager_presentationContext) + 88);
  v4 = self;
  v5 = v3();
  if (v5)
  {
    v6 = v5;

    return v6;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

- (_TtC12PhotosUICore37CloudQuotaNotificationItemListManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end