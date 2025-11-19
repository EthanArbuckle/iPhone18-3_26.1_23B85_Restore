@interface SetNumericIntentHandler
- (void)confirmSetNumericSetting:(id)a3 completion:(id)a4;
- (void)handleSetNumericSetting:(id)a3 completion:(id)a4;
@end

@implementation SetNumericIntentHandler

- (void)handleSetNumericSetting:(id)a3 completion:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v6 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_268F87640(a3, sub_268DB91B4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (void)confirmSetNumericSetting:(id)a3 completion:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v6 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  *(swift_allocObject() + 16) = v6;
  sub_268F87F60(a3, sub_268DB91B4);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

@end