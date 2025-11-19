@interface STSListener
- (STSListener)init;
- (STSListenerDelegate)delegate;
- (id)startWithDelegate:(id)a3;
- (id)stop;
- (void)didEndSession;
- (void)didEnterField:(id)a3;
- (void)didExitField;
- (void)didStartSession:(id)a3;
- (void)fieldDetectSession:(id)a3 didEnterFieldWithNotification:(id)a4;
- (void)fieldDetectSessionDidEndUnexpectedly:(id)a3;
- (void)fieldDetectSessionDidExitField:(id)a3;
@end

@implementation STSListener

- (STSListener)init
{
  v13.receiver = self;
  v13.super_class = STSListener;
  v5 = [(STSListener *)&v13 init];
  if (v5)
  {
    sub_26539825C(OS_LOG_TYPE_DEFAULT, 0, "[STSListener init]", 29, "Creating listener", v2, v3, v4, v13.receiver);
    ClassName = object_getClassName(v5);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(ClassName, v7);
    v9 = *(v5 + 1);
    *(v5 + 1) = v8;

    v10 = objc_opt_new();
    v11 = *(v5 + 4);
    *(v5 + 4) = v10;

    dispatch_suspend(*(v5 + 1));
  }

  return v5;
}

- (id)startWithDelegate:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_26536F000, "startWithDelegate:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSListener startWithDelegate:]", 44, self, @"Starting withdelegate", v6, v7, v12[0]);
  objc_storeWeak(&self->_delegate, v4);
  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v14 = 0x3032000000;
  v15 = sub_265391338;
  v16 = sub_265391348;
  v17 = 0;
  v8 = [(STSHardwareManagerWrapper *)self->_nfHwManager manager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_265391350;
  v12[3] = &unk_279B94008;
  v12[4] = self;
  v12[5] = &state;
  v9 = [v8 startFieldDetectSession:v12];

  v10 = *(state.opaque[1] + 40);
  _Block_object_dispose(&state, 8);

  return v10;
}

- (id)stop
{
  v3 = _os_activity_create(&dword_26536F000, "stop", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  os_activity_scope_leave(&state);

  nearFieldFdSession = self->_nearFieldFdSession;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_265391508;
  v6[3] = &unk_279B93910;
  v6[4] = self;
  [(NFFieldDetectSession *)nearFieldFdSession endSessionWithCompletion:v6];
  return 0;
}

- (void)didEndSession
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSListener didEndSession]", 76, self, &stru_2876E3E50, v2, v3, v6);
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2653915B8;
  block[3] = &unk_279B93910;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)didStartSession:(id)a3
{
  v4 = a3;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSListener didStartSession:]", 87, self, &stru_2876E3E50, v5, v6, v9[0]);
  callbackQueue = self->_callbackQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26539170C;
  v9[3] = &unk_279B93898;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(callbackQueue, v9);
}

- (void)didEnterField:(id)a3
{
  v4 = a3;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSListener didEnterField:]", 98, self, &stru_2876E3E50, v5, v6, v9[0]);
  callbackQueue = self->_callbackQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_265391860;
  v9[3] = &unk_279B93898;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(callbackQueue, v9);
}

- (void)didExitField
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSListener didExitField]", 110, self, &stru_2876E3E50, v2, v3, v6);
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26539199C;
  block[3] = &unk_279B93910;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)fieldDetectSession:(id)a3 didEnterFieldWithNotification:(id)a4
{
  v5 = a4;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSListener fieldDetectSession:didEnterFieldWithNotification:]", 126, self, @"%@", v6, v7, v5);
  v8 = sub_265399348(v5);

  [(STSListener *)self didEnterField:v8];
}

- (void)fieldDetectSessionDidExitField:(id)a3
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSListener fieldDetectSessionDidExitField:]", 132, self, &stru_2876E3E50, v3, v4, v6);

  MEMORY[0x2821F9670](self, sel_didExitField);
}

- (void)fieldDetectSessionDidEndUnexpectedly:(id)a3
{
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSListener fieldDetectSessionDidEndUnexpectedly:]", 137, self, &stru_2876E3E50, v3, v4, v6);

  MEMORY[0x2821F9670](self, sel_didEndSession);
}

- (STSListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end