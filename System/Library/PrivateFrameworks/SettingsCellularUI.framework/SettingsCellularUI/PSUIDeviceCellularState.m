@interface PSUIDeviceCellularState
+ (id)sharedInstance;
- (BOOL)isConnectedOverCellular;
- (PSUIDeviceCellularState)init;
- (id)initPrivate;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation PSUIDeviceCellularState

+ (id)sharedInstance
{
  if (qword_28156A730 != -1)
  {
    dispatch_once(&qword_28156A730, &__block_literal_global_10);
  }

  v3 = _MergedGlobals_66;

  return v3;
}

uint64_t __41__PSUIDeviceCellularState_sharedInstance__block_invoke()
{
  _MergedGlobals_66 = [[PSUIDeviceCellularState alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v5.receiver = self;
  v5.super_class = PSUIDeviceCellularState;
  v2 = [(PSUIDeviceCellularState *)&v5 init];
  v3 = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  [v3 addObserver:v2 forKeyPath:@"path" options:5 context:0];

  return v2;
}

- (PSUIDeviceCellularState)init
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [(PSUIDeviceCellularState *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[PSUIDeviceCellularState init]";
    _os_log_error_impl(&dword_2658DE000, v2, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called: %s", &v3, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  [v3 removeObserver:self forKeyPath:@"path"];

  v4.receiver = self;
  v4.super_class = PSUIDeviceCellularState;
  [(PSUIDeviceCellularState *)&v4 dealloc];
}

- (BOOL)isConnectedOverCellular
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  v4 = [v3 path];

  if (!v4)
  {
    v6 = [(PSUIDeviceCellularState *)self getLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&dword_2658DE000, v6, OS_LOG_TYPE_ERROR, "[NWPathEvaluator path] empty", &v10, 2u);
    }

    goto LABEL_11;
  }

  if ([v4 status] != 1)
  {
    v6 = [(PSUIDeviceCellularState *)self getLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "Network path is not available", &v10, 2u);
    }

LABEL_11:
    LOBYTE(v5) = 0;
    goto LABEL_12;
  }

  v5 = [v4 usesInterfaceType:2];
  v6 = [(PSUIDeviceCellularState *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "OFF";
    if (v5)
    {
      v7 = "ON";
    }

    v10 = 136315138;
    v11 = v7;
    _os_log_debug_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEBUG, "Cellular : %s", &v10, 0xCu);
  }

LABEL_12:

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__PSUIDeviceCellularState_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__PSUIDeviceCellularState_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[PSUIDeviceCellularState observeValueForKeyPath:ofObject:change:context:]_block_invoke";
    v6 = 2112;
    v7 = @"PSCellularConnectivityChanged";
    _os_log_impl(&dword_2658DE000, v1, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v4, 0x16u);
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"PSCellularConnectivityChanged" object:0];

  v3 = *MEMORY[0x277D85DE8];
}

@end