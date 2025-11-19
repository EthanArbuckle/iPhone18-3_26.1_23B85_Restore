@interface ZoomServicesKeyboardManager
+ (id)sharedInstance;
- (int64_t)keyboardCommandForEvent:(id)a3;
@end

@implementation ZoomServicesKeyboardManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ZoomServicesKeyboardManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_Manager;

  return v2;
}

uint64_t __45__ZoomServicesKeyboardManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_Manager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (int64_t)keyboardCommandForEvent:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CE7E20] sharedInstance];
  v6 = [v5 zoomKeyboardShortcutsEnabled];

  if (!v6)
  {
    goto LABEL_31;
  }

  if (![(ZoomServicesKeyboardManager *)self inUnitTestMode])
  {
    v7 = [v4 keyInfo];
    [v7 translateKeycode];
  }

  v8 = [v4 keyInfo];
  v9 = [v8 keyDown];

  v10 = [v4 keyInfo];
  v11 = [v10 modifierState];
  if (!v9)
  {
    v20 = ZWCommandOptionShiftModifiers;

    if (v11 == v20)
    {
      v21 = [v4 keyInfo];
      v22 = [v21 keyCode];

      if (v22 != 9)
      {
        v16 = 15;
        goto LABEL_32;
      }

      v17 = [MEMORY[0x277CE7E20] sharedInstance];
      v18 = [v17 zoomSwitchZoomModeKbShortcutEnabled] == 0;
      v19 = 5;
LABEL_27:
      if (v18)
      {
        v16 = 16;
      }

      else
      {
        v16 = v19;
      }

LABEL_30:

      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v12 = ZWCommandOptionModifiers;

  v13 = [v4 keyInfo];
  v14 = v13;
  if (v11 != v12)
  {
    v23 = [v13 modifierState];
    v24 = ZWControlOptionModifiers;

    if (v23 == v24)
    {
      v17 = [MEMORY[0x277CE7E20] sharedInstance];
      v18 = [v17 zoomTempToggleZoomKbShortcutEnabled] == 0;
      v19 = 3;
      goto LABEL_27;
    }

    v25 = [v4 keyInfo];
    v26 = [v25 modifierState];
    v27 = ZWCommandOptionControlModifiers;

    if (v26 == v27)
    {
      v28 = [v4 keyInfo];
      v29 = [v28 keyCode];

      v16 = 15;
      if (v29 > 80)
      {
        if (v29 == 81)
        {
          v17 = [MEMORY[0x277CE7E20] sharedInstance];
          v18 = [v17 zoomResizeZoomWindowKbShortcutEnabled] == 0;
          v19 = 13;
        }

        else
        {
          if (v29 != 82)
          {
            goto LABEL_32;
          }

          v17 = [MEMORY[0x277CE7E20] sharedInstance];
          v18 = [v17 zoomResizeZoomWindowKbShortcutEnabled] == 0;
          v19 = 11;
        }

        goto LABEL_27;
      }

      if (v29 == 79)
      {
        v17 = [MEMORY[0x277CE7E20] sharedInstance];
        v18 = [v17 zoomResizeZoomWindowKbShortcutEnabled] == 0;
        v19 = 10;
      }

      else
      {
        if (v29 != 80)
        {
          goto LABEL_32;
        }

        v17 = [MEMORY[0x277CE7E20] sharedInstance];
        v18 = [v17 zoomResizeZoomWindowKbShortcutEnabled] == 0;
        v19 = 12;
      }

      goto LABEL_27;
    }

LABEL_25:
    v30 = [v4 keyInfo];
    v31 = [v30 modifierState];
    v32 = ZWControlModifier;

    if (v31 == v32)
    {
      v17 = [MEMORY[0x277CE7E20] sharedInstance];
      v18 = [v17 zoomScrollWheelKbShortcutEnabled] == 0;
      v19 = 14;
      goto LABEL_27;
    }

LABEL_31:
    v16 = 16;
    goto LABEL_32;
  }

  v15 = [v13 keyCode];

  v16 = 15;
  if (v15 > 78)
  {
    if (v15 > 80)
    {
      if (v15 == 81)
      {
        v17 = [MEMORY[0x277CE7E20] sharedInstance];
        v18 = [v17 zoomPanZoomKbShortcutEnabled] == 0;
        v19 = 9;
      }

      else
      {
        if (v15 != 82)
        {
          goto LABEL_32;
        }

        v17 = [MEMORY[0x277CE7E20] sharedInstance];
        v18 = [v17 zoomPanZoomKbShortcutEnabled] == 0;
        v19 = 8;
      }
    }

    else
    {
      [MEMORY[0x277CE7E20] sharedInstance];
      if (v15 == 79)
        v17 = {;
        v18 = [v17 zoomPanZoomKbShortcutEnabled] == 0;
        v19 = 7;
      }

      else
        v17 = {;
        v18 = [v17 zoomPanZoomKbShortcutEnabled] == 0;
        v19 = 6;
      }
    }

    goto LABEL_27;
  }

  if (v15 > 44)
  {
    if (v15 == 45)
    {
      v17 = [MEMORY[0x277CE7E20] sharedInstance];
      if ([v17 zoomAdjustZoomLevelKbShortcutEnabled])
      {
        v16 = 1;
      }

      else
      {
        v16 = 16;
      }
    }

    else
    {
      if (v15 != 46)
      {
        goto LABEL_32;
      }

      v17 = [MEMORY[0x277CE7E20] sharedInstance];
      if ([v17 zoomAdjustZoomLevelKbShortcutEnabled])
      {
        v16 = 0;
      }

      else
      {
        v16 = 16;
      }
    }

    goto LABEL_30;
  }

  if (v15 == 9)
  {
    v17 = [MEMORY[0x277CE7E20] sharedInstance];
    v18 = [v17 zoomSwitchZoomModeKbShortcutEnabled] == 0;
    v19 = 4;
    goto LABEL_27;
  }

  if (v15 == 37)
  {
    v17 = [MEMORY[0x277CE7E20] sharedInstance];
    v18 = [v17 zoomToggleZoomKbShortcutEnabled] == 0;
    v19 = 2;
    goto LABEL_27;
  }

LABEL_32:

  return v16;
}

@end