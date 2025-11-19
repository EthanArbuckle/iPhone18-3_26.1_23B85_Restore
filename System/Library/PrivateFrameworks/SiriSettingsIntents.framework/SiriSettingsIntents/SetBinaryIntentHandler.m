@interface SetBinaryIntentHandler
- (void)confirmSetBinarySetting:(id)a3 completion:(id)a4;
- (void)handleSetBinarySetting:(id)a3 completion:(id)a4;
- (void)resolveTemporalEventTriggerForSetBinarySetting:(INSetBinarySettingIntent *)a3 withCompletion:(id)a4;
@end

@implementation SetBinaryIntentHandler

- (void)handleSetBinarySetting:(id)a3 completion:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v6 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_268DD308C(a3, sub_268DB91B4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (void)confirmSetBinarySetting:(id)a3 completion:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v6 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_268DD390C(a3, sub_268DB91B4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (void)resolveTemporalEventTriggerForSetBinarySetting:(INSetBinarySettingIntent *)a3 withCompletion:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v7 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = a3;
  v4[3] = v7;
  v4[4] = self;
  sub_268DD4B84(&unk_268FA03B0, v4);
}

@end