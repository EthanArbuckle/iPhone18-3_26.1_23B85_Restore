@interface SetBinaryIntentHandler
- (void)confirmSetBinarySetting:(id)setting completion:(id)completion;
- (void)handleSetBinarySetting:(id)setting completion:(id)completion;
- (void)resolveTemporalEventTriggerForSetBinarySetting:(INSetBinarySettingIntent *)setting withCompletion:(id)completion;
@end

@implementation SetBinaryIntentHandler

- (void)handleSetBinarySetting:(id)setting completion:(id)completion
{
  MEMORY[0x277D82BE0](setting);
  v6 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_268DD308C(setting, sub_268DB91B4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](setting);
}

- (void)confirmSetBinarySetting:(id)setting completion:(id)completion
{
  MEMORY[0x277D82BE0](setting);
  v6 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_268DD390C(setting, sub_268DB91B4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](setting);
}

- (void)resolveTemporalEventTriggerForSetBinarySetting:(INSetBinarySettingIntent *)setting withCompletion:(id)completion
{
  MEMORY[0x277D82BE0](setting);
  v7 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = setting;
  v4[3] = v7;
  v4[4] = self;
  sub_268DD4B84(&unk_268FA03B0, v4);
}

@end