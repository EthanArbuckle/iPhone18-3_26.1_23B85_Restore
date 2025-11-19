@interface SKUIFieldSettingDescriptionView
- (void)beginEdits;
- (void)commitEdits;
@end

@implementation SKUIFieldSettingDescriptionView

- (void)beginEdits
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFieldSettingDescriptionView beginEdits]";
}

- (void)commitEdits
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFieldSettingDescriptionView commitEdits]";
}

@end