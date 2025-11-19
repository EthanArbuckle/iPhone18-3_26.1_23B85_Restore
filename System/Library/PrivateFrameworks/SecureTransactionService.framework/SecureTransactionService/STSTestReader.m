@interface STSTestReader
- (id)startWithHandoverType:(unint64_t)a3 connectionHandler:(id)a4 invalidationHandler:(id)a5 completion:(id)a6;
- (id)startWithHandoverType:(unint64_t)a3 tnepStatusHandler:(id)a4 connectionHandler:(id)a5 invalidationErrorHandler:(id)a6 completion:(id)a7;
@end

@implementation STSTestReader

- (id)startWithHandoverType:(unint64_t)a3 connectionHandler:(id)a4 invalidationHandler:(id)a5 completion:(id)a6
{
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_265394C20;
  v14[3] = &unk_279B93E00;
  v15 = v10;
  v11 = v10;
  v12 = [(STSTestReader *)self startWithHandoverType:a3 tnepStatusHandler:0 connectionHandler:a4 invalidationErrorHandler:v14 completion:a6];

  return v12;
}

- (id)startWithHandoverType:(unint64_t)a3 tnepStatusHandler:(id)a4 connectionHandler:(id)a5 invalidationErrorHandler:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = _os_activity_create(&dword_26536F000, "startWithHandoverType:tnepStatusHandler:connectionHandler:invalidationHandler:completion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  os_activity_scope_leave(&state);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_265394DB4;
  aBlock[3] = &unk_279B940D0;
  v23 = v12;
  v17 = v12;
  v18 = _Block_copy(aBlock);
  v21.receiver = self;
  v21.super_class = STSTestReader;
  v19 = [(STSReader *)&v21 startWithHandoverType:a3 connectionHandler:v18 tnepStatusHandler:v15 invalidationErrorHandler:v14 completion:v13];

  return v19;
}

@end