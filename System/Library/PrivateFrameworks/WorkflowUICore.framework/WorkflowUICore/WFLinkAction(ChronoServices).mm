@interface WFLinkAction(ChronoServices)
- (void)setWidgetFamily:()ChronoServices;
@end

@implementation WFLinkAction(ChronoServices)

- (void)setWidgetFamily:()ChronoServices
{
  v5.receiver = self;
  v5.super_class = &off_2884179E0;
  objc_msgSendSuper2(&v5, sel_setWidgetFamily_);
  v2 = [self widgetFamily] - 1;
  if (v2 <= 0xC && ((0x1E3Fu >> v2) & 1) != 0)
  {
    v3 = **(&unk_279EF53D0 + v2);
    actionConfigurationContext = [self actionConfigurationContext];
    [actionConfigurationContext setWidgetFamily:v3];
  }
}

@end