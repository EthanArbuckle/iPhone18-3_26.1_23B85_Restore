@interface BYDevice
+ (id)currentDevice;
- (BYDevice)init;
@end

@implementation BYDevice

+ (id)currentDevice
{
  if (currentDevice_onceToken != -1)
  {
    +[BYDevice currentDevice];
  }

  v3 = currentDevice_sharedDevice;

  return v3;
}

uint64_t __25__BYDevice_currentDevice__block_invoke()
{
  currentDevice_sharedDevice = objc_alloc_init(BYDevice);

  return MEMORY[0x1EEE66BB8]();
}

- (BYDevice)init
{
  v18.receiver = self;
  v18.super_class = BYDevice;
  v2 = [(BYDevice *)&v18 init];
  if (v2)
  {
    v3 = MGGetStringAnswer();
    if (v3)
    {
      v4 = v3;
      v2->_type = CFStringCompare(v3, @"iPad", 0) == kCFCompareEqualTo;
      objc_storeStrong(&v2->_deviceClass, v4);
      CFRelease(v4);
    }

    v5 = MGGetSInt32Answer();
    if ([(BYDevice *)v2 type])
    {
      v6 = v5 == 11 || v5 == 14;
      v7 = 4;
      if (!v6)
      {
        v7 = 0;
      }

      goto LABEL_10;
    }

    v7 = 0;
    if (v5 <= 17)
    {
      if (v5 == 5)
      {
        v7 = 2;
        goto LABEL_10;
      }

      if (v5 == 9)
      {
        v7 = 1;
        goto LABEL_10;
      }

      if (v5 != 15)
      {
LABEL_10:
        v2->_size = v7;
        v2->_mainScreenClass = v5;
        v2->_hasHomeButton = MGGetSInt32Answer() != 2;
        v8 = SpringBoardServicesLibraryCore();
        if (v8)
        {
          v20 = 0;
          v21 = &v20;
          v22 = 0x2020000000;
          v9 = getSBSIsSystemApertureAvailableSymbolLoc_ptr;
          v23 = getSBSIsSystemApertureAvailableSymbolLoc_ptr;
          if (!getSBSIsSystemApertureAvailableSymbolLoc_ptr)
          {
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __getSBSIsSystemApertureAvailableSymbolLoc_block_invoke;
            v19[3] = &unk_1E7D02730;
            v19[4] = &v20;
            __getSBSIsSystemApertureAvailableSymbolLoc_block_invoke(v19);
            v9 = v21[3];
          }

          _Block_object_dispose(&v20, 8);
          if (!v9)
          {
            v17 = +[BYSiriUtilities deviceSupportsSystemAssistantExperience];
            _Block_object_dispose(&v20, 8);
            _Unwind_Resume(v17);
          }

          LOBYTE(v8) = v9();
        }

        v2->_hasDynamicIsland = v8;
        v10 = MGCopyAnswer();
        productType = v2->_productType;
        v2->_productType = v10;

        *&v2->_mgProductType = MGGetProductType();
        type = v2->_type;
        if (type == 1)
        {
          v13 = 0;
        }

        else
        {
          if (type)
          {
LABEL_25:
            v2->_hasCameraButton = MGGetBoolAnswer();
            v2->_isPowerButtonOppositeVolumeButtons = MGGetBoolAnswer();
            v14 = MGCopyAnswer();
            serialNumber = v2->_serialNumber;
            v2->_serialNumber = v14;

            return v2;
          }

          v13 = MGGetBoolAnswer();
        }

        v2->_hasActionButton = v13;
        goto LABEL_25;
      }
    }

    else
    {
      if (v5 <= 29)
      {
        if (v5 != 18)
        {
          if (v5 == 19)
          {
            v7 = 5;
          }

          goto LABEL_10;
        }

LABEL_33:
        v7 = 6;
        goto LABEL_10;
      }

      if (v5 != 30)
      {
        if (v5 != 31)
        {
          goto LABEL_10;
        }

        goto LABEL_33;
      }
    }

    v7 = 3;
    goto LABEL_10;
  }

  return v2;
}

@end