@interface GetIntentHandler
- (void)confirmGetSetting:(id)setting completion:(id)completion;
- (void)handleGetSetting:(id)setting completion:(id)completion;
@end

@implementation GetIntentHandler

- (void)handleGetSetting:(id)setting completion:(id)completion
{
  MEMORY[0x277D82BE0](setting);
  v6 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_268DE01EC(setting, sub_268DB91B4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](setting);
}

- (void)confirmGetSetting:(id)setting completion:(id)completion
{
  MEMORY[0x277D82BE0](setting);
  v6 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_268DE0CE4(setting, sub_268DB91B4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](setting);
}

@end