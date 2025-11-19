@interface QuickLookProvider
- (_TtC13iCloudQuotaUI17QuickLookProvider)init;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (void)previewControllerDidDismiss:(id)a3;
@end

@implementation QuickLookProvider

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v4 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x60);
  v5 = self;
  v6 = v4();
  v7 = [objc_allocWithZone(MEMORY[0x277CDAA48]) initWithFPItem_];

  return v7;
}

- (void)previewControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27578A870();
}

- (_TtC13iCloudQuotaUI17QuickLookProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end