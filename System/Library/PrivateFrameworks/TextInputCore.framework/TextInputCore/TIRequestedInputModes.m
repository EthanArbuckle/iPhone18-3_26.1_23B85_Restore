@interface TIRequestedInputModes
+ (id)defaultDatabaseURL;
- (TIRequestedInputModes)init;
- (TIRequestedInputModes)initWithURL:(id)a3;
- (id)_inputModes;
- (void)_addInputMode:(id)a3 date:(id)a4 handler:(id)a5;
- (void)_inputModes:(id)a3;
- (void)_loadIfNecessaryWithCompletion:(id)a3;
- (void)_removeAllInputModes:(id)a3;
- (void)_removeInputModesBeforeDate:(id)a3 handler:(id)a4;
- (void)_saveInputModes;
- (void)addInputMode:(id)a3 date:(id)a4 handler:(id)a5;
- (void)inputModes:(id)a3;
- (void)removeAllInputModes:(id)a3;
- (void)removeInputModesBeforeDate:(id)a3 handler:(id)a4;
@end

@implementation TIRequestedInputModes

- (void)removeAllInputModes:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7 = v4;
  v6 = v4;
  TIDispatchAsync();
}

- (void)removeInputModesBeforeDate:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  v11 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  TIDispatchAsync();
}

- (void)addInputMode:(id)a3 date:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  TIDispatchAsync();
}

- (void)inputModes:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7 = v4;
  v6 = v4;
  TIDispatchAsync();
}

- (void)_removeAllInputModes:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__TIRequestedInputModes__removeAllInputModes___block_invoke;
  v6[3] = &unk_278732E30;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(TIRequestedInputModes *)self _loadIfNecessaryWithCompletion:v6];
}

uint64_t __46__TIRequestedInputModes__removeAllInputModes___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeAllObjects];
  [*(a1 + 32) _saveInputModes];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_removeInputModesBeforeDate:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__TIRequestedInputModes__removeInputModesBeforeDate_handler___block_invoke;
  v10[3] = &unk_278733820;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(TIRequestedInputModes *)self _loadIfNecessaryWithCompletion:v10];
}

void __61__TIRequestedInputModes__removeInputModesBeforeDate_handler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__TIRequestedInputModes__removeInputModesBeforeDate_handler___block_invoke_2;
  v8[3] = &unk_278732968;
  v9 = *(a1 + 40);
  v3 = [v2 keysOfEntriesPassingTest:v8];
  if ([v3 count])
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = [v3 allObjects];
    [v4 removeObjectsForKeys:v5];

    [*(a1 + 32) _saveInputModes];
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 32) _inputModes];
  (*(v6 + 16))(v6, v7);
}

BOOL __61__TIRequestedInputModes__removeInputModesBeforeDate_handler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v4 earlierDate:v3];

  return v5 == v4;
}

- (void)_addInputMode:(id)a3 date:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__TIRequestedInputModes__addInputMode_date_handler___block_invoke;
  v14[3] = &unk_278732940;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(TIRequestedInputModes *)self _loadIfNecessaryWithCompletion:v14];
}

void __52__TIRequestedInputModes__addInputMode_date_handler___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 32) setObject:*(a1 + 48) forKey:*(a1 + 40)];
  if (!v5 || ([*(a1 + 48) timeIntervalSinceDate:v5], v2 > 86400.0))
  {
    [*(a1 + 32) _saveInputModes];
  }

  v3 = *(a1 + 56);
  v4 = [*(a1 + 32) _inputModes];
  (*(v3 + 16))(v3, v4);
}

- (void)_inputModes:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__TIRequestedInputModes__inputModes___block_invoke;
  v6[3] = &unk_278732E30;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(TIRequestedInputModes *)self _loadIfNecessaryWithCompletion:v6];
}

void __37__TIRequestedInputModes__inputModes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _inputModes];
  (*(v1 + 16))(v1, v2);
}

- (id)_inputModes
{
  v2 = [(NSMutableDictionary *)self->_inputModesByDate allKeys];
  v3 = [v2 copy];

  return v3;
}

- (void)_saveInputModes
{
  databaseURL = self->_databaseURL;
  if (databaseURL)
  {
    inputModesByDate = self->_inputModesByDate;
    v4 = databaseURL;
    v5 = [(NSMutableDictionary *)inputModesByDate copy];
    [v5 writeToURL:v4 atomically:1];
  }
}

- (void)_loadIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (!self->_didLoad)
  {
    self->_didLoad = 1;
    if (self->_databaseURL)
    {
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:?];
      v6 = v5;
      v7 = MEMORY[0x277CBEC10];
      if (v5)
      {
        v7 = v5;
      }

      v8 = v7;

      v9 = [v8 mutableCopy];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
    }

    inputModesByDate = self->_inputModesByDate;
    self->_inputModesByDate = v9;

    v4 = v11;
  }

  (*(v4 + 2))();
}

- (TIRequestedInputModes)initWithURL:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TIRequestedInputModes;
  v5 = [(TIRequestedInputModes *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_didLoad = 0;
    v7 = [v4 copy];
    databaseURL = v6->_databaseURL;
    v6->_databaseURL = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v10 = dispatch_queue_create("com.apple.TextInput.requested-input-modes", v9);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v10;
  }

  return v6;
}

- (TIRequestedInputModes)init
{
  v3 = +[TIRequestedInputModes defaultDatabaseURL];
  v4 = [(TIRequestedInputModes *)self initWithURL:v3];

  return v4;
}

+ (id)defaultDatabaseURL
{
  v2 = TI_KB_USER_DIRECTORY();
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2 isDirectory:1];
  v4 = [v3 URLByAppendingPathComponent:@"requested_linguistic_assets.plist"];

  return v4;
}

@end