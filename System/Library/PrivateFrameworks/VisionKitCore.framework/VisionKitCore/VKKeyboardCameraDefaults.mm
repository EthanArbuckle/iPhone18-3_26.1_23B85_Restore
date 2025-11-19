@interface VKKeyboardCameraDefaults
+ (VKKeyboardCameraDefaults)sharedInstance;
- (VKKeyboardCameraDefaults)init;
@end

@implementation VKKeyboardCameraDefaults

+ (VKKeyboardCameraDefaults)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[VKKeyboardCameraDefaults sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

void __42__VKKeyboardCameraDefaults_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VKKeyboardCameraDefaults);
  v1 = sharedInstance_instance;
  sharedInstance_instance = v0;
}

- (VKKeyboardCameraDefaults)init
{
  v10[6] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VKKeyboardCameraDefaults;
  v2 = [(VKKeyboardCameraDefaults *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.KeyboardCamera"];
    defaults = v2->_defaults;
    v2->_defaults = v3;

    v5 = v2->_defaults;
    v9[0] = @"MaskOpacity";
    v9[1] = @"CutoutExpansionScale";
    v10[0] = &unk_1F2C390D8;
    v10[1] = &unk_1F2C390D8;
    v9[2] = @"CutoutRadiusScale";
    v9[3] = @"DimmingOpacity";
    v10[2] = &unk_1F2C390E8;
    v10[3] = &unk_1F2C390F8;
    v9[4] = @"DimmingRadius";
    v9[5] = @"HideTapToRadar";
    v10[4] = &unk_1F2C39108;
    v10[5] = MEMORY[0x1E695E110];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
    [(NSUserDefaults *)v5 registerDefaults:v6];
  }

  return v2;
}

@end