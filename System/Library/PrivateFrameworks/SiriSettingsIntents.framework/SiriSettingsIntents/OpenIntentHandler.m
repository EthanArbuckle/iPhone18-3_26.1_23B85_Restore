@interface OpenIntentHandler
- (void)handleOpenSetting:(id)a3 completion:(id)a4;
@end

@implementation OpenIntentHandler

- (void)handleOpenSetting:(id)a3 completion:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v6 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_268DB6584(a3, sub_268DB91B4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

@end