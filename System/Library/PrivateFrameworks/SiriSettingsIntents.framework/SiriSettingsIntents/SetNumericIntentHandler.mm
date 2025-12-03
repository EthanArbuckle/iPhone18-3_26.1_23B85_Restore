@interface SetNumericIntentHandler
- (void)confirmSetNumericSetting:(id)setting completion:(id)completion;
- (void)handleSetNumericSetting:(id)setting completion:(id)completion;
@end

@implementation SetNumericIntentHandler

- (void)handleSetNumericSetting:(id)setting completion:(id)completion
{
  MEMORY[0x277D82BE0](setting);
  v6 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_268F87640(setting, sub_268DB91B4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](setting);
}

- (void)confirmSetNumericSetting:(id)setting completion:(id)completion
{
  MEMORY[0x277D82BE0](setting);
  v6 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  *(swift_allocObject() + 16) = v6;
  sub_268F87F60(setting, sub_268DB91B4);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](setting);
}

@end