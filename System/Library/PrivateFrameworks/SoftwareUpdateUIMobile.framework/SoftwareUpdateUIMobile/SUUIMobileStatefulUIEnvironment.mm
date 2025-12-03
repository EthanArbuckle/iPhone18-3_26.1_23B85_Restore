@interface SUUIMobileStatefulUIEnvironment
- (id)betaUpdatesOperationWithManager:(id)manager identifier:(id)identifier completionQueue:(id)queue;
- (id)nerdOperationWithManager:(id)manager identifier:(id)identifier completionQueue:(id)queue;
- (id)scanOperationWithManager:(id)manager identifier:(id)identifier completionQueue:(id)queue;
- (id)statefulErrorWithError:(id)error;
- (id)updateOperationWithManager:(id)manager identifier:(id)identifier delegateCallbackQueue:(id)queue completionQueue:(id)completionQueue;
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

- (id)statefulErrorWithError:(id)error
{
  MEMORY[0x277D82BE0](error);
  MEMORY[0x277D82BE0](self);
  v7 = sub_26B122614(error);

  MEMORY[0x277D82BD8](self);

  return v7;
}

- (id)scanOperationWithManager:(id)manager identifier:(id)identifier completionQueue:(id)queue
{
  MEMORY[0x277D82BE0](manager);
  MEMORY[0x277D82BE0](identifier);
  MEMORY[0x277D82BE0](queue);
  MEMORY[0x277D82BE0](self);
  v8 = sub_26B128C38();
  v13 = sub_26B122798(manager, v8, v6, queue);

  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](queue);
  MEMORY[0x277D82BD8](manager);

  return v13;
}

- (id)updateOperationWithManager:(id)manager identifier:(id)identifier delegateCallbackQueue:(id)queue completionQueue:(id)completionQueue
{
  MEMORY[0x277D82BE0](manager);
  MEMORY[0x277D82BE0](identifier);
  MEMORY[0x277D82BE0](queue);
  MEMORY[0x277D82BE0](completionQueue);
  MEMORY[0x277D82BE0](self);
  v9 = sub_26B128C38();
  v15 = sub_26B122C44(manager, v9, v7, queue, completionQueue);

  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](completionQueue);
  MEMORY[0x277D82BD8](queue);
  MEMORY[0x277D82BD8](manager);

  return v15;
}

- (id)nerdOperationWithManager:(id)manager identifier:(id)identifier completionQueue:(id)queue
{
  MEMORY[0x277D82BE0](manager);
  MEMORY[0x277D82BE0](identifier);
  MEMORY[0x277D82BE0](queue);
  MEMORY[0x277D82BE0](self);
  v8 = sub_26B128C38();
  v13 = sub_26B123110(manager, v8, v6);

  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](queue);
  MEMORY[0x277D82BD8](manager);

  return v13;
}

- (id)betaUpdatesOperationWithManager:(id)manager identifier:(id)identifier completionQueue:(id)queue
{
  MEMORY[0x277D82BE0](manager);
  MEMORY[0x277D82BE0](identifier);
  MEMORY[0x277D82BE0](queue);
  MEMORY[0x277D82BE0](self);
  v8 = sub_26B128C38();
  v13 = sub_26B12347C(manager, v8, v6, queue);

  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](queue);
  MEMORY[0x277D82BD8](manager);

  return v13;
}

@end