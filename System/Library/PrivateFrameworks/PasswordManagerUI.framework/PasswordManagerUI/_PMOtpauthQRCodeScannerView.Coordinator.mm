@interface _PMOtpauthQRCodeScannerView.Coordinator
- (_TtCV17PasswordManagerUIP33_91FE3DB8FE855AA02E71C632A89C8F1E27_PMOtpauthQRCodeScannerView11Coordinator)init;
- (void)QRCodeScannerViewController:(id)a3 didScanQRCodeWithURLValue:(id)a4;
@end

@implementation _PMOtpauthQRCodeScannerView.Coordinator

- (void)QRCodeScannerViewController:(id)a3 didScanQRCodeWithURLValue:(id)a4
{
  v5 = sub_21CB80BE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80B94();
  v11 = *(&self->super.isa + OBJC_IVAR____TtCV17PasswordManagerUIP33_91FE3DB8FE855AA02E71C632A89C8F1E27_PMOtpauthQRCodeScannerView11Coordinator_completion);
  v10 = *&self->completion[OBJC_IVAR____TtCV17PasswordManagerUIP33_91FE3DB8FE855AA02E71C632A89C8F1E27_PMOtpauthQRCodeScannerView11Coordinator_completion];
  v12 = self;

  v11(v9);

  (*(v6 + 8))(v9, v5);
}

- (_TtCV17PasswordManagerUIP33_91FE3DB8FE855AA02E71C632A89C8F1E27_PMOtpauthQRCodeScannerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end