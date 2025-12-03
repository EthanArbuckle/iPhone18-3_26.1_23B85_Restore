@interface SetLabeledIntentHandler
- (void)handleSetLabeledSetting:(id)setting completion:(id)completion;
@end

@implementation SetLabeledIntentHandler

- (void)handleSetLabeledSetting:(id)setting completion:(id)completion
{
  MEMORY[0x277D82BE0](setting);
  v6 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_268E95C78(setting, sub_268DB91B4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](setting);
}

@end