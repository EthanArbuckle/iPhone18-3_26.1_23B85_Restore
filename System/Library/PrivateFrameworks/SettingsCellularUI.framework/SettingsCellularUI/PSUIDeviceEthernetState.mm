@interface PSUIDeviceEthernetState
+ (id)sharedInstance;
- (BOOL)isConnectedOverEthernet;
- (PSUIDeviceEthernetState)init;
- (id)initPrivate;
- (void)dealloc;
@end

@implementation PSUIDeviceEthernetState

+ (id)sharedInstance
{
  if (qword_28156A760 != -1)
  {
    dispatch_once(&qword_28156A760, &__block_literal_global_12);
  }

  v3 = _MergedGlobals_69;

  return v3;
}

uint64_t __41__PSUIDeviceEthernetState_sharedInstance__block_invoke()
{
  _MergedGlobals_69 = [[PSUIDeviceEthernetState alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v3.receiver = self;
  v3.super_class = PSUIDeviceEthernetState;
  return [(PSUIDeviceEthernetState *)&v3 init];
}

- (PSUIDeviceEthernetState)init
{
  getLogger = [(PSUIDeviceEthernetState *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called", v3, 2u);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)dealloc
{
  mEMORY[0x277CD9200] = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  [mEMORY[0x277CD9200] removeObserver:self forKeyPath:@"path"];

  v4.receiver = self;
  v4.super_class = PSUIDeviceEthernetState;
  [(PSUIDeviceEthernetState *)&v4 dealloc];
}

- (BOOL)isConnectedOverEthernet
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CD9200] = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  path = [mEMORY[0x277CD9200] path];

  if (!path)
  {
    getLogger = [(PSUIDeviceEthernetState *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "[NWPathEvaluator path] empty", &v10, 2u);
    }

    goto LABEL_11;
  }

  if ([path status] != 1)
  {
    getLogger = [(PSUIDeviceEthernetState *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Network path is not available", &v10, 2u);
    }

LABEL_11:
    LOBYTE(v5) = 0;
    goto LABEL_12;
  }

  v5 = [path usesInterfaceType:3];
  getLogger = [(PSUIDeviceEthernetState *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
  {
    v7 = "OFF";
    if (v5)
    {
      v7 = "ON";
    }

    v10 = 136315138;
    v11 = v7;
    _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "Ethernet : %s", &v10, 0xCu);
  }

LABEL_12:

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

@end