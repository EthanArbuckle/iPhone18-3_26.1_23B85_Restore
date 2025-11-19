@interface SetTemporalIntentHandler
- (void)handleSetTemporalSetting:(id)a3 completion:(id)a4;
@end

@implementation SetTemporalIntentHandler

- (void)handleSetTemporalSetting:(id)a3 completion:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v6 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  *(swift_allocObject() + 16) = v6;
  sub_268DD9EC4();

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

@end