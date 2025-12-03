@interface TIRequestedInputModes
+ (id)defaultDatabaseURL;
- (TIRequestedInputModes)init;
- (TIRequestedInputModes)initWithURL:(id)l;
- (id)_inputModes;
- (void)_addInputMode:(id)mode date:(id)date handler:(id)handler;
- (void)_inputModes:(id)modes;
- (void)_loadIfNecessaryWithCompletion:(id)completion;
- (void)_removeAllInputModes:(id)modes;
- (void)_removeInputModesBeforeDate:(id)date handler:(id)handler;
- (void)_saveInputModes;
- (void)addInputMode:(id)mode date:(id)date handler:(id)handler;
- (void)inputModes:(id)modes;
- (void)removeAllInputModes:(id)modes;
- (void)removeInputModesBeforeDate:(id)date handler:(id)handler;
@end

@implementation TIRequestedInputModes

- (void)removeAllInputModes:(id)modes
{
  modesCopy = modes;
  dispatchQueue = self->_dispatchQueue;
  v7 = modesCopy;
  v6 = modesCopy;
  TIDispatchAsync();
}

- (void)removeInputModesBeforeDate:(id)date handler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v11 = dateCopy;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = dateCopy;
  TIDispatchAsync();
}

- (void)addInputMode:(id)mode date:(id)date handler:(id)handler
{
  modeCopy = mode;
  dateCopy = date;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15 = modeCopy;
  v16 = dateCopy;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = dateCopy;
  v14 = modeCopy;
  TIDispatchAsync();
}

- (void)inputModes:(id)modes
{
  modesCopy = modes;
  dispatchQueue = self->_dispatchQueue;
  v7 = modesCopy;
  v6 = modesCopy;
  TIDispatchAsync();
}

- (void)_removeAllInputModes:(id)modes
{
  modesCopy = modes;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__TIRequestedInputModes__removeAllInputModes___block_invoke;
  v6[3] = &unk_278732E30;
  v6[4] = self;
  v7 = modesCopy;
  v5 = modesCopy;
  [(TIRequestedInputModes *)self _loadIfNecessaryWithCompletion:v6];
}

uint64_t __46__TIRequestedInputModes__removeAllInputModes___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeAllObjects];
  [*(a1 + 32) _saveInputModes];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_removeInputModesBeforeDate:(id)date handler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__TIRequestedInputModes__removeInputModesBeforeDate_handler___block_invoke;
  v10[3] = &unk_278733820;
  v10[4] = self;
  v11 = dateCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = dateCopy;
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

- (void)_addInputMode:(id)mode date:(id)date handler:(id)handler
{
  modeCopy = mode;
  dateCopy = date;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__TIRequestedInputModes__addInputMode_date_handler___block_invoke;
  v14[3] = &unk_278732940;
  v14[4] = self;
  v15 = modeCopy;
  v16 = dateCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = dateCopy;
  v13 = modeCopy;
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

- (void)_inputModes:(id)modes
{
  modesCopy = modes;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__TIRequestedInputModes__inputModes___block_invoke;
  v6[3] = &unk_278732E30;
  v6[4] = self;
  v7 = modesCopy;
  v5 = modesCopy;
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
  allKeys = [(NSMutableDictionary *)self->_inputModesByDate allKeys];
  v3 = [allKeys copy];

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

- (void)_loadIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = completionCopy;
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

      dictionary = [v8 mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    inputModesByDate = self->_inputModesByDate;
    self->_inputModesByDate = dictionary;

    completionCopy = v11;
  }

  (*(completionCopy + 2))();
}

- (TIRequestedInputModes)initWithURL:(id)l
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = TIRequestedInputModes;
  v5 = [(TIRequestedInputModes *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_didLoad = 0;
    v7 = [lCopy copy];
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