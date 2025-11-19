@interface VTBuiltInRTModel
+ (id)sharedInstance;
- (void)dealloc;
@end

@implementation VTBuiltInRTModel

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_75);
  }

  v3 = sharedInstance_sharedRTModel;

  return v3;
}

- (void)dealloc
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating VTBuiltInRTModel", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = VTBuiltInRTModel;
  [(VTBuiltInRTModel *)&v4 dealloc];
}

uint64_t __34__VTBuiltInRTModel_sharedInstance__block_invoke()
{
  sharedInstance_sharedRTModel = objc_alloc_init(VTBuiltInRTModel);

  return MEMORY[0x2821F96F8]();
}

@end