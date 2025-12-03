@interface OpenIntentHandler
- (void)handleOpenSetting:(id)setting completion:(id)completion;
@end

@implementation OpenIntentHandler

- (void)handleOpenSetting:(id)setting completion:(id)completion
{
  MEMORY[0x277D82BE0](setting);
  v6 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_268DB6584(setting, sub_268DB91B4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](setting);
}

@end