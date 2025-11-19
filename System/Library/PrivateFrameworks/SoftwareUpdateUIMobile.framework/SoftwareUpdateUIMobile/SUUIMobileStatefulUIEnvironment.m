@interface SUUIMobileStatefulUIEnvironment
- (id)betaUpdatesOperationWithManager:(id)a3 identifier:(id)a4 completionQueue:(id)a5;
- (id)nerdOperationWithManager:(id)a3 identifier:(id)a4 completionQueue:(id)a5;
- (id)scanOperationWithManager:(id)a3 identifier:(id)a4 completionQueue:(id)a5;
- (id)statefulErrorWithError:(id)a3;
- (id)updateOperationWithManager:(id)a3 identifier:(id)a4 delegateCallbackQueue:(id)a5 completionQueue:(id)a6;
- (unint64_t)options;
@end

@implementation SUUIMobileStatefulUIEnvironment

- (unint64_t)options
{
  MEMORY[0x277D82BE0](self);
  v4 = SUUIMobileStatefulUIEnvironment.options.getter();
  MEMORY[0x277D82BD8](self);
  return v4;
}

- (id)statefulErrorWithError:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v7 = sub_26B122614(a3);

  MEMORY[0x277D82BD8](self);

  return v7;
}

- (id)scanOperationWithManager:(id)a3 identifier:(id)a4 completionQueue:(id)a5
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  MEMORY[0x277D82BE0](self);
  v8 = sub_26B128C38();
  v13 = sub_26B122798(a3, v8, v6, a5);

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a3);

  return v13;
}

- (id)updateOperationWithManager:(id)a3 identifier:(id)a4 delegateCallbackQueue:(id)a5 completionQueue:(id)a6
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  MEMORY[0x277D82BE0](a6);
  MEMORY[0x277D82BE0](self);
  v9 = sub_26B128C38();
  v15 = sub_26B122C44(a3, v9, v7, a5, a6);

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a6);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a3);

  return v15;
}

- (id)nerdOperationWithManager:(id)a3 identifier:(id)a4 completionQueue:(id)a5
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  MEMORY[0x277D82BE0](self);
  v8 = sub_26B128C38();
  v13 = sub_26B123110(a3, v8, v6);

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a3);

  return v13;
}

- (id)betaUpdatesOperationWithManager:(id)a3 identifier:(id)a4 completionQueue:(id)a5
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  MEMORY[0x277D82BE0](self);
  v8 = sub_26B128C38();
  v13 = sub_26B12347C(a3, v8, v6, a5);

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a3);

  return v13;
}

@end