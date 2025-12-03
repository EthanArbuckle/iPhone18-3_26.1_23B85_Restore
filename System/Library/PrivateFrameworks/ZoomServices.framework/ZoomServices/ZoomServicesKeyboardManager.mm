@interface ZoomServicesKeyboardManager
+ (id)sharedInstance;
- (int64_t)keyboardCommandForEvent:(id)event;
@end

@implementation ZoomServicesKeyboardManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ZoomServicesKeyboardManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (int64_t)keyboardCommandForEvent:(id)event
{
  eventCopy = event;
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  zoomKeyboardShortcutsEnabled = [mEMORY[0x277CE7E20] zoomKeyboardShortcutsEnabled];

  if (!zoomKeyboardShortcutsEnabled)
  {
    goto LABEL_31;
  }

  if (![(ZoomServicesKeyboardManager *)self inUnitTestMode])
  {
    keyInfo = [eventCopy keyInfo];
    [keyInfo translateKeycode];
  }

  keyInfo2 = [eventCopy keyInfo];
  keyDown = [keyInfo2 keyDown];

  keyInfo3 = [eventCopy keyInfo];
  modifierState = [keyInfo3 modifierState];
  if (!keyDown)
  {
    v20 = ZWCommandOptionShiftModifiers;

    if (modifierState == v20)
    {
      keyInfo4 = [eventCopy keyInfo];
      keyCode = [keyInfo4 keyCode];

      if (keyCode != 9)
      {
        v16 = 15;
        goto LABEL_32;
      }

      mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
      v18 = [mEMORY[0x277CE7E20]2 zoomSwitchZoomModeKbShortcutEnabled] == 0;
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

  keyInfo5 = [eventCopy keyInfo];
  v14 = keyInfo5;
  if (modifierState != v12)
  {
    modifierState2 = [keyInfo5 modifierState];
    v24 = ZWControlOptionModifiers;

    if (modifierState2 == v24)
    {
      mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
      v18 = [mEMORY[0x277CE7E20]2 zoomTempToggleZoomKbShortcutEnabled] == 0;
      v19 = 3;
      goto LABEL_27;
    }

    keyInfo6 = [eventCopy keyInfo];
    modifierState3 = [keyInfo6 modifierState];
    v27 = ZWCommandOptionControlModifiers;

    if (modifierState3 == v27)
    {
      keyInfo7 = [eventCopy keyInfo];
      keyCode2 = [keyInfo7 keyCode];

      v16 = 15;
      if (keyCode2 > 80)
      {
        if (keyCode2 == 81)
        {
          mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
          v18 = [mEMORY[0x277CE7E20]2 zoomResizeZoomWindowKbShortcutEnabled] == 0;
          v19 = 13;
        }

        else
        {
          if (keyCode2 != 82)
          {
            goto LABEL_32;
          }

          mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
          v18 = [mEMORY[0x277CE7E20]2 zoomResizeZoomWindowKbShortcutEnabled] == 0;
          v19 = 11;
        }

        goto LABEL_27;
      }

      if (keyCode2 == 79)
      {
        mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
        v18 = [mEMORY[0x277CE7E20]2 zoomResizeZoomWindowKbShortcutEnabled] == 0;
        v19 = 10;
      }

      else
      {
        if (keyCode2 != 80)
        {
          goto LABEL_32;
        }

        mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
        v18 = [mEMORY[0x277CE7E20]2 zoomResizeZoomWindowKbShortcutEnabled] == 0;
        v19 = 12;
      }

      goto LABEL_27;
    }

LABEL_25:
    keyInfo8 = [eventCopy keyInfo];
    modifierState4 = [keyInfo8 modifierState];
    v32 = ZWControlModifier;

    if (modifierState4 == v32)
    {
      mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
      v18 = [mEMORY[0x277CE7E20]2 zoomScrollWheelKbShortcutEnabled] == 0;
      v19 = 14;
      goto LABEL_27;
    }

LABEL_31:
    v16 = 16;
    goto LABEL_32;
  }

  keyCode3 = [keyInfo5 keyCode];

  v16 = 15;
  if (keyCode3 > 78)
  {
    if (keyCode3 > 80)
    {
      if (keyCode3 == 81)
      {
        mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
        v18 = [mEMORY[0x277CE7E20]2 zoomPanZoomKbShortcutEnabled] == 0;
        v19 = 9;
      }

      else
      {
        if (keyCode3 != 82)
        {
          goto LABEL_32;
        }

        mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
        v18 = [mEMORY[0x277CE7E20]2 zoomPanZoomKbShortcutEnabled] == 0;
        v19 = 8;
      }
    }

    else
    {
      [MEMORY[0x277CE7E20] sharedInstance];
      if (keyCode3 == 79)
        mEMORY[0x277CE7E20]2 = {;
        v18 = [mEMORY[0x277CE7E20]2 zoomPanZoomKbShortcutEnabled] == 0;
        v19 = 7;
      }

      else
        mEMORY[0x277CE7E20]2 = {;
        v18 = [mEMORY[0x277CE7E20]2 zoomPanZoomKbShortcutEnabled] == 0;
        v19 = 6;
      }
    }

    goto LABEL_27;
  }

  if (keyCode3 > 44)
  {
    if (keyCode3 == 45)
    {
      mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
      if ([mEMORY[0x277CE7E20]2 zoomAdjustZoomLevelKbShortcutEnabled])
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
      if (keyCode3 != 46)
      {
        goto LABEL_32;
      }

      mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
      if ([mEMORY[0x277CE7E20]2 zoomAdjustZoomLevelKbShortcutEnabled])
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

  if (keyCode3 == 9)
  {
    mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
    v18 = [mEMORY[0x277CE7E20]2 zoomSwitchZoomModeKbShortcutEnabled] == 0;
    v19 = 4;
    goto LABEL_27;
  }

  if (keyCode3 == 37)
  {
    mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
    v18 = [mEMORY[0x277CE7E20]2 zoomToggleZoomKbShortcutEnabled] == 0;
    v19 = 2;
    goto LABEL_27;
  }

LABEL_32:

  return v16;
}

@end