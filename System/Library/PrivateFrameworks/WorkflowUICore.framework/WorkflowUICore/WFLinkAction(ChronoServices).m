@interface WFLinkAction(ChronoServices)
- (void)setWidgetFamily:()ChronoServices;
@end

@implementation WFLinkAction(ChronoServices)

- (void)setWidgetFamily:()ChronoServices
{
  v5.receiver = a1;
  v5.super_class = &off_2884179E0;
  objc_msgSendSuper2(&v5, sel_setWidgetFamily_);
  v2 = [a1 widgetFamily] - 1;
  if (v2 <= 0xC && ((0x1E3Fu >> v2) & 1) != 0)
  {
    v3 = **(&unk_279EF53D0 + v2);
    v4 = [a1 actionConfigurationContext];
    [v4 setWidgetFamily:v3];
  }
}

@end