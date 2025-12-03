@interface STSTestReader
- (id)startWithHandoverType:(unint64_t)type connectionHandler:(id)handler invalidationHandler:(id)invalidationHandler completion:(id)completion;
- (id)startWithHandoverType:(unint64_t)type tnepStatusHandler:(id)handler connectionHandler:(id)connectionHandler invalidationErrorHandler:(id)errorHandler completion:(id)completion;
@end

@implementation STSTestReader

- (id)startWithHandoverType:(unint64_t)type connectionHandler:(id)handler invalidationHandler:(id)invalidationHandler completion:(id)completion
{
  invalidationHandlerCopy = invalidationHandler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_265394C20;
  v14[3] = &unk_279B93E00;
  v15 = invalidationHandlerCopy;
  v11 = invalidationHandlerCopy;
  v12 = [(STSTestReader *)self startWithHandoverType:type tnepStatusHandler:0 connectionHandler:handler invalidationErrorHandler:v14 completion:completion];

  return v12;
}

- (id)startWithHandoverType:(unint64_t)type tnepStatusHandler:(id)handler connectionHandler:(id)connectionHandler invalidationErrorHandler:(id)errorHandler completion:(id)completion
{
  connectionHandlerCopy = connectionHandler;
  completionCopy = completion;
  errorHandlerCopy = errorHandler;
  handlerCopy = handler;
  v16 = _os_activity_create(&dword_26536F000, "startWithHandoverType:tnepStatusHandler:connectionHandler:invalidationHandler:completion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  os_activity_scope_leave(&state);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_265394DB4;
  aBlock[3] = &unk_279B940D0;
  v23 = connectionHandlerCopy;
  v17 = connectionHandlerCopy;
  v18 = _Block_copy(aBlock);
  v21.receiver = self;
  v21.super_class = STSTestReader;
  v19 = [(STSReader *)&v21 startWithHandoverType:type connectionHandler:v18 tnepStatusHandler:handlerCopy invalidationErrorHandler:errorHandlerCopy completion:completionCopy];

  return v19;
}

@end