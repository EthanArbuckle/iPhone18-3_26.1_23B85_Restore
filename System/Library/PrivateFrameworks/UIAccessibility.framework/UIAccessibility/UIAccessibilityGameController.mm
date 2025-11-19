@interface UIAccessibilityGameController
+ (UIAccessibilityGameController)sharedGameController;
- (UIAccessibilityGameController)init;
- (void)init;
- (void)pressButton:(id)a3;
@end

@implementation UIAccessibilityGameController

+ (UIAccessibilityGameController)sharedGameController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__UIAccessibilityGameController_sharedGameController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedGameController_onceToken != -1)
  {
    dispatch_once(&sharedGameController_onceToken, block);
  }

  v2 = SharedController;

  return v2;
}

uint64_t __53__UIAccessibilityGameController_sharedGameController__block_invoke()
{
  SharedController = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (UIAccessibilityGameController)init
{
  v30[2] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = UIAccessibilityGameController;
  v2 = [(UIAccessibilityGameController *)&v20 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = objc_opt_new();
    eventSource = v2->_eventSource;
    v2->_eventSource = v4;

    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v6 = getGCExtendedGamepadClass_softClass;
    v29 = getGCExtendedGamepadClass_softClass;
    if (!getGCExtendedGamepadClass_softClass)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __getGCExtendedGamepadClass_block_invoke;
      v24 = &unk_1E78AA680;
      v25 = &v26;
      __getGCExtendedGamepadClass_block_invoke(&v21);
      v6 = v27[3];
    }

    v7 = v6;
    _Block_object_dispose(&v26, 8);
    v8 = [[v6 alloc] initWithIdentifier:@"Apple Virtual Game Controller"];
    [v8 setGamepadEventSource:v2->_eventSource];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v9 = getGCControllerClass_softClass;
    v29 = getGCControllerClass_softClass;
    if (!getGCControllerClass_softClass)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __getGCControllerClass_block_invoke;
      v24 = &unk_1E78AA680;
      v25 = &v26;
      __getGCControllerClass_block_invoke(&v21);
      v9 = v27[3];
    }

    v10 = v9;
    _Block_object_dispose(&v26, 8);
    v11 = [v9 alloc];
    v30[0] = v3;
    v30[1] = v8;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v13 = [v11 initWithComponents:v12];
    controller = v2->_controller;
    v2->_controller = v13;

    v15 = v2->_controller;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v16 = get_publishCustomControllerSymbolLoc_ptr;
    v29 = get_publishCustomControllerSymbolLoc_ptr;
    if (!get_publishCustomControllerSymbolLoc_ptr)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __get_publishCustomControllerSymbolLoc_block_invoke;
      v24 = &unk_1E78AA680;
      v25 = &v26;
      v17 = GameControllerLibrary();
      v18 = dlsym(v17, "_publishCustomController");
      *(v25[1] + 24) = v18;
      get_publishCustomControllerSymbolLoc_ptr = *(v25[1] + 24);
      v16 = v27[3];
    }

    _Block_object_dispose(&v26, 8);
    if (!v16)
    {
      [UIAccessibilityGameController init];
    }

    v16(v15);
  }

  return v2;
}

- (void)pressButton:(id)a3
{
  v4 = a3;
  get_GCGamepadEventImplClass();
  v5 = objc_opt_new();
  switch([v4 button])
  {
    case 1:
      LODWORD(v6) = 1.0;
      [v5 setButtonAValue:v6];
      break;
    case 2:
      LODWORD(v6) = 1.0;
      [v5 setButtonBValue:v6];
      break;
    case 3:
      LODWORD(v6) = 1.0;
      [v5 setButtonXValue:v6];
      break;
    case 4:
      LODWORD(v6) = 1.0;
      [v5 setButtonYValue:v6];
      break;
    case 5:
      LODWORD(v6) = 1.0;
      [v5 setButtonLeftShoulder:v6];
      break;
    case 6:
      LODWORD(v6) = 1.0;
      [v5 setLeftTrigger:v6];
      break;
    case 7:
      LODWORD(v6) = 1.0;
      [v5 setButtonRightShoulder:v6];
      break;
    case 8:
      LODWORD(v6) = 1.0;
      [v5 setRightTrigger:v6];
      break;
    case 9:
      LODWORD(v6) = 1.0;
      [v5 setDpadUpValue:v6];
      break;
    case 10:
      LODWORD(v6) = 1.0;
      [v5 setDpadDownValue:v6];
      break;
    case 11:
      LODWORD(v6) = 1.0;
      [v5 setDpadLeftValue:v6];
      break;
    case 12:
      LODWORD(v6) = 1.0;
      [v5 setDpadRightValue:v6];
      break;
    case 13:
      [v4 xMagnitude];
      v8 = v7;
      [v4 yMagnitude];
      v10 = *&v9;
      if (v8 <= 0.0)
      {
        *&v9 = fabsf(v8);
        [v5 setLeftThumbstickLeft:v9];
      }

      else
      {
        *&v9 = v8;
        [v5 setLeftThumbstickRight:v9];
      }

      if (v10 <= 0.0)
      {
        *&v11 = fabsf(v10);
        [v5 setLeftThumbstickDown:v11];
      }

      else
      {
        *&v11 = v10;
        [v5 setLeftThumbstickUp:v11];
      }

      break;
    case 14:
      [v4 xMagnitude];
      v13 = v12;
      [v4 yMagnitude];
      v15 = *&v14;
      if (v13 <= 0.0)
      {
        *&v14 = fabsf(v13);
        [v5 setRightThumbstickLeft:v14];
      }

      else
      {
        *&v14 = v13;
        [v5 setRightThumbstickRight:v14];
      }

      if (v15 <= 0.0)
      {
        *&v16 = fabsf(v15);
        [v5 setRightThumbstickDown:v16];
      }

      else
      {
        *&v16 = v15;
        [v5 setRightThumbstickUp:v16];
      }

      break;
    default:
      break;
  }

  v17 = [(UIAccessibilityGameController *)self eventSource];
  [v17 publishGamepadEvent:v5];
  v20 = v4;
  v21 = v17;
  v18 = v17;
  v19 = v4;
  AXPerformBlockOnMainThreadAfterDelay();
}

void __45__UIAccessibilityGameController_pressButton___block_invoke(uint64_t a1)
{
  get_GCGamepadEventImplClass();
  v2 = objc_opt_new();
  switch([*(a1 + 32) button])
  {
    case 1:
      [v2 setButtonAValue:0.0];
      break;
    case 2:
      [v2 setButtonBValue:0.0];
      break;
    case 3:
      [v2 setButtonXValue:0.0];
      break;
    case 4:
      [v2 setButtonYValue:0.0];
      break;
    case 5:
      [v2 setButtonLeftShoulder:0.0];
      break;
    case 6:
      [v2 setLeftTrigger:0.0];
      break;
    case 7:
      [v2 setButtonRightShoulder:0.0];
      break;
    case 8:
      [v2 setRightTrigger:0.0];
      break;
    case 9:
      [v2 setDpadUpValue:0.0];
      break;
    case 10:
      [v2 setDpadDownValue:0.0];
      break;
    case 11:
      [v2 setDpadLeftValue:0.0];
      break;
    case 12:
      [v2 setDpadRightValue:0.0];
      break;
    case 13:
      [v2 setLeftThumbstickUp:0.0];
      [v2 setLeftThumbstickDown:0.0];
      [v2 setLeftThumbstickLeft:0.0];
      [v2 setLeftThumbstickRight:0.0];
      break;
    case 14:
      [v2 setRightThumbstickUp:0.0];
      [v2 setRightThumbstickDown:0.0];
      [v2 setRightThumbstickLeft:0.0];
      [v2 setRightThumbstickRight:0.0];
      break;
    default:
      break;
  }

  [*(a1 + 40) publishGamepadEvent:v2];
}

- (void)init
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _publishCustomControllerSoft(GCController *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"UIAccessibilityGameController.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

@end