@interface PSUIDevicePasscodeState
+ (id)sharedInstance;
- (BOOL)isPasscodeSet;
- (PSUIDevicePasscodeState)init;
- (id)initPrivate;
@end

@implementation PSUIDevicePasscodeState

+ (id)sharedInstance
{
  if (qword_28156A6E0 != -1)
  {
    dispatch_once(&qword_28156A6E0, &__block_literal_global_6);
  }

  v3 = _MergedGlobals_62;

  return v3;
}

uint64_t __41__PSUIDevicePasscodeState_sharedInstance__block_invoke()
{
  _MergedGlobals_62 = [[PSUIDevicePasscodeState alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v3.receiver = self;
  v3.super_class = PSUIDevicePasscodeState;
  return [(PSUIDevicePasscodeState *)&v3 init];
}

- (PSUIDevicePasscodeState)init
{
  v2 = [(PSUIDevicePasscodeState *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658DE000, v2, OS_LOG_TYPE_ERROR, "Unsupported initializer called", v3, 2u);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (BOOL)isPasscodeSet
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MKBGetDeviceLockState();
  v4 = [(PSUIDevicePasscodeState *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 67109120;
    LODWORD(v10) = v3;
    _os_log_debug_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEBUG, "MKBGetDeviceLockState : %d", &v9, 8u);
  }

  v5 = [(PSUIDevicePasscodeState *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = "OFF";
    if (v3 < 3)
    {
      v8 = "ON";
    }

    v9 = 136315138;
    v10 = v8;
    _os_log_debug_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEBUG, "Passcode : %s", &v9, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3 < 3;
}

@end