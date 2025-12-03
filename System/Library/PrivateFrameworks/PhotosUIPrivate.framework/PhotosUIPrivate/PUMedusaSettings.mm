@interface PUMedusaSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
+ (void)runSizeTest;
@end

@implementation PUMedusaSettings

+ (void)runSizeTest
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_runSizeTest object:0];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  windows = [mEMORY[0x1E69DC668] windows];
  firstObject = [windows firstObject];

  v5 = _isShrinking;
  sharedInstance = [self sharedInstance];
  [sharedInstance _testIncrement];
  if (v5)
  {
    v8 = -v7;
  }

  else
  {
    v8 = v7;
  }

  [firstObject bounds];
  v10 = v8 + v9;
  [firstObject bounds];
  height = v22.size.height;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v10;
  if (CGRectGetWidth(v22) >= 320.0)
  {
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v10;
    v23.size.height = height;
    Width = CGRectGetWidth(v23);
    px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [px_mainScreen bounds];
    v15 = v14;

    if (Width > v15)
    {
      px_mainScreen2 = [MEMORY[0x1E69DCEB0] px_mainScreen];
      [px_mainScreen2 bounds];
      v18 = v17;

      _isShrinking = 1;
      [firstObject _adjustSizeClassesAndResizeWindowToFrame:{0.0, 0.0, v18, height}];
      goto LABEL_9;
    }
  }

  else
  {
    _isShrinking = 0;
    v10 = 320.0;
  }

  [firstObject _adjustSizeClassesAndResizeWindowToFrame:{0.0, 0.0, v10, height}];
  sharedInstance2 = [self sharedInstance];
  [sharedInstance2 _testInterval];
  [self performSelector:sel_runSizeTest withObject:0 afterDelay:?];

LABEL_9:
}

+ (id)settingsControllerModule
{
  v45[1] = *MEMORY[0x1E69E9840];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __44__PUMedusaSettings_settingsControllerModule__block_invoke;
  v41[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v41[4] = self;
  v38 = [MEMORY[0x1E69C6658] actionWithHandler:v41];
  v3 = MEMORY[0x1E69C6638];
  v4 = [MEMORY[0x1E69C65E8] rowWithTitle:@"Cancel Test" action:v38];
  v45[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  v37 = [v3 sectionWithRows:v5];

  v6 = [MEMORY[0x1E69C6618] rowWithTitle:@"Increment/Decrement by" valueKeyPath:@"_testIncrement"];
  v7 = [v6 between:0.0 and:100.0];

  [v7 setPrecision:1];
  v36 = v7;
  [v7 setValueValidatator:&__block_literal_global_17];
  v8 = [MEMORY[0x1E69C6618] rowWithTitle:@"Increment Interval" valueKeyPath:@"_testInterval"];
  v9 = [v8 between:0.0 and:5.0];

  [v9 setPrecision:2];
  v10 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Start Delay" valueKeyPath:@"_testStartDelay"];
  v35 = [v10 possibleValues:&unk_1F2B7CF20 titles:&unk_1F2B7CF38];

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __44__PUMedusaSettings_settingsControllerModule__block_invoke_53;
  v40[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v40[4] = self;
  v34 = [MEMORY[0x1E69C6658] actionWithHandler:v40];
  v11 = MEMORY[0x1E69C6638];
  v44[0] = v7;
  v44[1] = v9;
  v44[2] = v35;
  v12 = [MEMORY[0x1E69C65E8] rowWithTitle:@"Size Test" action:v34];
  v44[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
  v33 = [v11 sectionWithRows:v13 title:@"Dynamic"];

  v14 = [MEMORY[0x1E69C6618] rowWithTitle:@"Enter Width" valueKeyPath:@"_desiredWidth"];
  px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [px_mainScreen bounds];
  v17 = [v14 between:320.0 and:v16];

  [v17 setPrecision:1];
  [v17 setValueValidatator:&__block_literal_global_71];
  v18 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Slide Width" valueKeyPath:@"_desiredWidth"];
  px_mainScreen2 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [px_mainScreen2 bounds];
  v21 = [v18 minValue:320.0 maxValue:v20];

  [v21 setValueValidatator:&__block_literal_global_77_41124];
  v22 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Delay" valueKeyPath:@"_widthDelay"];
  v23 = [v22 possibleValues:&unk_1F2B7CF50 titles:&unk_1F2B7CF68];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __44__PUMedusaSettings_settingsControllerModule__block_invoke_5;
  v39[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v39[4] = self;
  v24 = [MEMORY[0x1E69C6658] actionWithHandler:v39];
  v25 = MEMORY[0x1E69C6638];
  v43[0] = v21;
  v43[1] = v17;
  v43[2] = v23;
  v26 = [MEMORY[0x1E69C65E8] rowWithTitle:@"Set Width" action:v24];
  v43[3] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
  v28 = [v25 sectionWithRows:v27 title:@"Specific"];

  v29 = MEMORY[0x1E69C6638];
  v42[0] = v37;
  v42[1] = v33;
  v42[2] = v28;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
  v31 = [v29 moduleWithTitle:@"Medusa" contents:v30];

  return v31;
}

uint64_t __44__PUMedusaSettings_settingsControllerModule__block_invoke_53(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedInstance];
  [v2 _testStartDelay];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PUMedusaSettings_settingsControllerModule__block_invoke_2_54;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);

  return 1;
}

uint64_t __44__PUMedusaSettings_settingsControllerModule__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedInstance];
  [v2 _widthDelay];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PUMedusaSettings_settingsControllerModule__block_invoke_6;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);

  return 1;
}

void __44__PUMedusaSettings_settingsControllerModule__block_invoke_6(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 windows];
  v9 = [v3 firstObject];

  v4 = [*(a1 + 32) sharedInstance];
  [v4 _desiredWidth];
  v6 = v5;
  [v9 bounds];
  v8 = v7;

  [v9 _adjustSizeClassesAndResizeWindowToFrame:{0.0, 0.0, v6, v8}];
}

uint64_t __44__PUMedusaSettings_settingsControllerModule__block_invoke_4(uint64_t a1, void *a2)
{
  [a2 floatValue];
  v3 = v2;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v4 = round(*&PUMainScreenScale_screenScale * v3) / *&PUMainScreenScale_screenScale;
  v5 = MEMORY[0x1E696AD98];

  return [v5 numberWithDouble:v4];
}

uint64_t __44__PUMedusaSettings_settingsControllerModule__block_invoke_3(uint64_t a1, void *a2)
{
  [a2 floatValue];
  v3 = v2;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v4 = round(*&PUMainScreenScale_screenScale * v3) / *&PUMainScreenScale_screenScale;
  v5 = MEMORY[0x1E696AD98];

  return [v5 numberWithDouble:v4];
}

void __44__PUMedusaSettings_settingsControllerModule__block_invoke_2_54(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 windows];
  v9 = [v3 firstObject];

  v4 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [v4 bounds];
  v6 = v5;
  [v9 bounds];
  v8 = v7;

  [v9 _adjustSizeClassesAndResizeWindowToFrame:{0.0, 0.0, v6, v8}];
  _isShrinking = 1;
  [*(a1 + 32) runSizeTest];
}

uint64_t __44__PUMedusaSettings_settingsControllerModule__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 floatValue];
  v3 = v2;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v4 = round(*&PUMainScreenScale_screenScale * v3) / *&PUMainScreenScale_screenScale;
  v5 = MEMORY[0x1E696AD98];

  return [v5 numberWithDouble:v4];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_41183 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_41183, &__block_literal_global_41184);
  }

  v3 = sharedInstance_sharedInstance_41185;

  return v3;
}

void __34__PUMedusaSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 medusaSettings];
  v1 = sharedInstance_sharedInstance_41185;
  sharedInstance_sharedInstance_41185 = v0;
}

@end