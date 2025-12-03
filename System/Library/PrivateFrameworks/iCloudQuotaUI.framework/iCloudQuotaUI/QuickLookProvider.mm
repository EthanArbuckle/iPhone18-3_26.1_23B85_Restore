@interface QuickLookProvider
- (_TtC13iCloudQuotaUI17QuickLookProvider)init;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (void)previewControllerDidDismiss:(id)dismiss;
@end

@implementation QuickLookProvider

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  v4 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x60);
  selfCopy = self;
  v6 = v4();
  initWithFPItem_ = [objc_allocWithZone(MEMORY[0x277CDAA48]) initWithFPItem_];

  return initWithFPItem_;
}

- (void)previewControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_27578A870();
}

- (_TtC13iCloudQuotaUI17QuickLookProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end