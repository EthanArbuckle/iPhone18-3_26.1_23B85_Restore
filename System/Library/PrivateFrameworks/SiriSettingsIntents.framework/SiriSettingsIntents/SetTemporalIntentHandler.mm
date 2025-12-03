@interface SetTemporalIntentHandler
- (void)handleSetTemporalSetting:(id)setting completion:(id)completion;
@end

@implementation SetTemporalIntentHandler

- (void)handleSetTemporalSetting:(id)setting completion:(id)completion
{
  MEMORY[0x277D82BE0](setting);
  v6 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  *(swift_allocObject() + 16) = v6;
  sub_268DD9EC4();

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](setting);
}

@end