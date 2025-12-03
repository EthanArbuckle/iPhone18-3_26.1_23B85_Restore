@interface PSCapabilityManager
+ (id)sharedManager;
- (BOOL)capabilityBoolAnswer:(id)answer;
- (BOOL)hasCapabilities:(id)capabilities;
- (PSCapabilityManager)init;
- (id)applicationDisplayIdentifiers;
- (id)capabilityAnswer:(id)answer;
- (id)preferencesCapabilityAnswer:(id)answer;
- (id)supportPSPhoneNoiseCancellationCapability;
- (id)supportPSPhotoFormatEnhancedProRAWCapability;
- (id)supportPSPhotoFormatProRAWCapability;
- (id)supportPSRecordHDRVideoCapability;
- (id)supportsAutoWhiteBalanceCapability;
- (id)supportsChamoisExternalDisplay;
- (id)supportsContinuityCamera;
- (id)supportsDisplayZoomCapability;
- (id)supportsInEDUModeCapability;
- (id)supportsInStoreDemoModeCapability;
- (id)supportsLightningAdapterCapability;
- (id)supportsListeningExperienceCapbility;
- (id)supportsNightShiftCapability;
- (id)supportsPSCellularDataPlanCapability;
- (id)supportsPSDeveloperSettingsCapability;
- (id)supportsPSExposureNotificationsCapability;
- (id)supportsPSHomeScreenPhoneCapability;
- (id)supportsPSPencilCapability;
- (id)supportsPSTTYCapability;
- (id)supportsPSTrackpadAndMouseCapability;
- (id)supportsPSTrackpadOnlyCapability;
- (id)supportsPictureInPictureCapability;
- (id)supportsRaiseToWakeCapability;
- (id)supportsRetailKioskModeCapability;
- (id)supportsWalletApplePayCapability;
- (void)resetOverrides;
- (void)setOverrideValue:(id)value forKey:(id)key;
@end

@implementation PSCapabilityManager

+ (id)sharedManager
{
  if (sharedManager_once != -1)
  {
    +[PSCapabilityManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

void __36__PSCapabilityManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(PSCapabilityManager);
  v1 = sharedManager_manager;
  sharedManager_manager = v0;
}

- (PSCapabilityManager)init
{
  v8.receiver = self;
  v8.super_class = PSCapabilityManager;
  v2 = [(PSCapabilityManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(PSCapabilityManager *)v2 setOverrides:v3];

    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getAXCapabilityManagerClass_softClass;
    v13 = getAXCapabilityManagerClass_softClass;
    if (!getAXCapabilityManagerClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getAXCapabilityManagerClass_block_invoke;
      v9[3] = &unk_1E71DBC78;
      v9[4] = &v10;
      __getAXCapabilityManagerClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_opt_new();
    [(PSCapabilityManager *)v2 setAxCapabilityManager:v6];
  }

  return v2;
}

- (id)capabilityAnswer:(id)answer
{
  answerCopy = answer;
  overrides = [(PSCapabilityManager *)self overrides];
  if (!overrides || (v6 = overrides, -[PSCapabilityManager overrides](self, "overrides"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:answerCopy], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, !v8) || (-[PSCapabilityManager overrides](self, "overrides"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", answerCopy), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    if (!MGIsQuestionValid() || (v11 = MGCopyAnswer()) == 0)
    {
      v11 = [(PSCapabilityManager *)self preferencesCapabilityAnswer:answerCopy];
    }

    v10 = v11;
  }

  overrideForAllBoolValues = [(PSCapabilityManager *)self overrideForAllBoolValues];
  if (overrideForAllBoolValues && (v13 = overrideForAllBoolValues, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, (isKindOfClass & 1) != 0))
  {
    overrideForAllBoolValues2 = [(PSCapabilityManager *)self overrideForAllBoolValues];
  }

  else
  {
    overrideForAllBoolValues2 = v10;
  }

  v16 = overrideForAllBoolValues2;

  return v16;
}

- (BOOL)capabilityBoolAnswer:(id)answer
{
  v3 = [(PSCapabilityManager *)self capabilityAnswer:answer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setOverrideValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  overrides = [(PSCapabilityManager *)self overrides];
  [overrides setObject:valueCopy forKeyedSubscript:keyCopy];
}

- (void)resetOverrides
{
  overrides = [(PSCapabilityManager *)self overrides];
  [overrides removeAllObjects];

  overrideForAllBoolValues = self->_overrideForAllBoolValues;
  self->_overrideForAllBoolValues = 0;
}

- (BOOL)hasCapabilities:(id)capabilities
{
  v46 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = capabilities;
  v4 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    v7 = 0x1E695D000uLL;
    v8 = 0x1E696A000uLL;
    v30 = *v41;
LABEL_3:
    v9 = 0;
    v31 = v5;
    while (1)
    {
      if (*v41 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v40 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [(PSCapabilityManager *)self capabilityAnswer:v10];
        if (!v27 || (objc_opt_class(), v34 = v27, (objc_opt_isKindOfClass() & 1) != 0) && ([v27 BOOLValue] & 1) == 0)
        {

LABEL_32:
          v28 = 0;
          goto LABEL_33;
        }

LABEL_27:
      }

LABEL_28:
      if (++v9 == v5)
      {
        v5 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_30;
      }
    }

    allKeys = [v10 allKeys];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v34 = allKeys;
    v12 = [allKeys countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v35 = v10;
      v33 = v9;
      v14 = *v37;
      v15 = 1;
      v16 = v34;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v16);
          }

          v18 = *(*(&v36 + 1) + 8 * i);
          v19 = [v35 objectForKey:{v18, v30}];
          v20 = [(PSCapabilityManager *)self capabilityAnswer:v18];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [v20 containsObject:v19];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              selfCopy = self;
              v23 = v8;
              v24 = v7;
              intValue = [v20 intValue];
              v26 = intValue == [v19 intValue];
              v7 = v24;
              v8 = v23;
              self = selfCopy;
              v16 = v34;
              v21 = v26;
            }

            else
            {
              v21 = [v20 isEqual:v19];
            }
          }

          v15 &= v21;
        }

        v13 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v13);

      v6 = v30;
      v5 = v31;
      v9 = v33;
      if ((v15 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_30:
  v28 = 1;
LABEL_33:

  return v28;
}

- (id)preferencesCapabilityAnswer:(id)answer
{
  v15 = *MEMORY[0x1E69E9840];
  answerCopy = answer;
  if ([answerCopy isEqualToString:@"PSDisplayZoomCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsDisplayZoomCapability];
LABEL_53:
    v6 = supportsDisplayZoomCapability;
    goto LABEL_54;
  }

  if ([answerCopy isEqualToString:@"PSApplicationDisplayIdentifiersCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self applicationDisplayIdentifiers];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSRaiseToWakeCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsRaiseToWakeCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSAutoWhiteBalanceCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsAutoWhiteBalanceCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSNightShiftCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsNightShiftCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSInStoreDemoModeCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsInStoreDemoModeCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSInEDUModeCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsInEDUModeCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSTTYCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsPSTTYCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSDeveloperSettingsCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsPSDeveloperSettingsCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSWalletApplePayCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsWalletApplePayCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSCellularDataPlanCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsPSCellularDataPlanCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSPencilCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsPSPencilCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSExposureNotificationsCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsPSExposureNotificationsCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSHomeScreenPhoneCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsPSHomeScreenPhoneCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"DeviceHasTrackpadOnly"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsPSTrackpadOnlyCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"DeviceHasTrackpadAndMouse"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsPSTrackpadAndMouseCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"ListeningExperienceCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsListeningExperienceCapbility];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"LightningAdapterCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsLightningAdapterCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSPictureInPictureCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsPictureInPictureCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSStageManagerCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsChamoisExternalDisplay];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSRecordHDRVideoCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportPSRecordHDRVideoCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSPhotoFormatProRAWCapabilities"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportPSPhotoFormatProRAWCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSPhotoFormatEnhancedProRAWCapabilities"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportPSPhotoFormatEnhancedProRAWCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSPhoneNoiseCancellationCapability"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportPSPhoneNoiseCancellationCapability];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"PSContunityCamera"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsContinuityCamera];
    goto LABEL_53;
  }

  if ([answerCopy isEqualToString:@"retail-kiosk-mode"])
  {
    supportsDisplayZoomCapability = [(PSCapabilityManager *)self supportsRetailKioskModeCapability];
    goto LABEL_53;
  }

  axCapabilityManager = [(PSCapabilityManager *)self axCapabilityManager];
  v9 = [axCapabilityManager isAccessibilityCapability:answerCopy];

  if (v9)
  {
    v10 = MEMORY[0x1E696AD98];
    axCapabilityManager2 = [(PSCapabilityManager *)self axCapabilityManager];
    v6 = [v10 numberWithBool:{objc_msgSend(axCapabilityManager2, "isCapabilityAvailable:", answerCopy)}];
  }

  else
  {
    v12 = _PSLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = answerCopy;
      _os_log_impl(&dword_18B008000, v12, OS_LOG_TYPE_DEFAULT, "No capability found for key %@", &v13, 0xCu);
    }

    v6 = 0;
  }

LABEL_54:

  return v6;
}

- (id)supportsPictureInPictureCapability
{
  v2 = MEMORY[0x1E696AD98];
  if (_os_feature_enabled_impl())
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v3 = getPGPictureInPictureProxyClass_softClass;
    v12 = getPGPictureInPictureProxyClass_softClass;
    if (!getPGPictureInPictureProxyClass_softClass)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __getPGPictureInPictureProxyClass_block_invoke;
      v8[3] = &unk_1E71DBC78;
      v8[4] = &v9;
      __getPGPictureInPictureProxyClass_block_invoke(v8);
      v3 = v10[3];
    }

    v4 = v3;
    _Block_object_dispose(&v9, 8);
    isPictureInPictureSupported = [v3 isPictureInPictureSupported];
  }

  else
  {
    isPictureInPictureSupported = 0;
  }

  v6 = [v2 numberWithInt:isPictureInPictureSupported];

  return v6;
}

- (id)supportsChamoisExternalDisplay
{
  v2 = MEMORY[0x1E696AD98];
  v3 = MGGetBoolAnswer();

  return [v2 numberWithBool:v3];
}

- (id)supportsLightningAdapterCapability
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v2 = getADASManagerClass_softClass;
  v25 = getADASManagerClass_softClass;
  if (!getADASManagerClass_softClass)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getADASManagerClass_block_invoke;
    v20 = &unk_1E71DBC78;
    v21 = &v22;
    __getADASManagerClass_block_invoke(&v17);
    v2 = v23[3];
  }

  v3 = v2;
  _Block_object_dispose(&v22, 8);
  v4 = objc_alloc_init(v2);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v5 = getADAFPreferenceKeyHAENKnownAccessoriesSymbolLoc_ptr;
  v25 = getADAFPreferenceKeyHAENKnownAccessoriesSymbolLoc_ptr;
  if (!getADAFPreferenceKeyHAENKnownAccessoriesSymbolLoc_ptr)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getADAFPreferenceKeyHAENKnownAccessoriesSymbolLoc_block_invoke;
    v20 = &unk_1E71DBC78;
    v21 = &v22;
    v6 = AudioDataAnalysisLibrary();
    v7 = dlsym(v6, "ADAFPreferenceKeyHAENKnownAccessories");
    *(v21[1] + 24) = v7;
    getADAFPreferenceKeyHAENKnownAccessoriesSymbolLoc_ptr = *(v21[1] + 24);
    v5 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v5)
  {
    [PSContactsAuthorizationLevelController dealloc];
    goto LABEL_16;
  }

  v8 = [v4 getPreferenceFor:*v5];
  v9 = MEMORY[0x1E696AD98];
  if ([v8 count])
  {
    v10 = [v9 numberWithInt:1];
    goto LABEL_12;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v11 = getADAFPreferenceKeyConnectedWiredDeviceIsHeadphoneSymbolLoc_ptr;
  v25 = getADAFPreferenceKeyConnectedWiredDeviceIsHeadphoneSymbolLoc_ptr;
  if (!getADAFPreferenceKeyConnectedWiredDeviceIsHeadphoneSymbolLoc_ptr)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getADAFPreferenceKeyConnectedWiredDeviceIsHeadphoneSymbolLoc_block_invoke;
    v20 = &unk_1E71DBC78;
    v21 = &v22;
    v12 = AudioDataAnalysisLibrary();
    v13 = dlsym(v12, "ADAFPreferenceKeyConnectedWiredDeviceIsHeadphone");
    *(v21[1] + 24) = v13;
    getADAFPreferenceKeyConnectedWiredDeviceIsHeadphoneSymbolLoc_ptr = *(v21[1] + 24);
    v11 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v11)
  {
LABEL_16:
    v16 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v22, 8);
    _Unwind_Resume(v16);
  }

  v14 = [v4 getPreferenceFor:*v11];
  v10 = [v9 numberWithInt:v14 != 0];

LABEL_12:

  return v10;
}

- (id)supportsListeningExperienceCapbility
{
  v2 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:_os_feature_enabled_impl() & v3];

  return v4;
}

- (id)supportsPSTrackpadOnlyCapability
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"HasPointerDevice"];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults2 BOOLForKey:@"HasMouse"];

  v6 = MEMORY[0x1E696AD98];

  return [v6 numberWithInt:v3 & (v5 ^ 1u)];
}

- (id)supportsPSTrackpadAndMouseCapability
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"HasPointerDevice"];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults2 BOOLForKey:@"HasMouse"];

  v6 = MEMORY[0x1E696AD98];

  return [v6 numberWithInt:v3 & v5];
}

- (id)supportsPSHomeScreenPhoneCapability
{
  v2 = MEMORY[0x1E696AD98];
  v3 = _os_feature_enabled_impl();

  return [v2 numberWithBool:v3];
}

- (id)supportsPSPencilCapability
{
  v2 = MEMORY[0x1E696AD98];
  v3 = MGGetBoolAnswer();

  return [v2 numberWithBool:v3];
}

- (id)supportsPSCellularDataPlanCapability
{
  sharedInstance = [getPSUICellularPlanManagerCacheClass() sharedInstance];
  embeddedPlanItems = [sharedInstance embeddedPlanItems];
  if ([embeddedPlanItems count])
  {
    sharedInstance2 = [getPSUICellularPlanManagerCacheClass() sharedInstance];
    isAnyLocalFlowTypeSupported = [sharedInstance2 isAnyLocalFlowTypeSupported];
  }

  else
  {
    isAnyLocalFlowTypeSupported = 0;
  }

  v6 = MEMORY[0x1E696AD98];

  return [v6 numberWithInt:isAnyLocalFlowTypeSupported];
}

- (id)supportsWalletApplePayCapability
{
  v2 = MEMORY[0x1E696AD98];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v2 numberWithBool:{objc_msgSend(standardUserDefaults, "BOOLForKey:", @"showPassbookRow"}];

  return v4;
}

- (id)supportsPSExposureNotificationsCapability
{
  v2 = MGCopyAnswer();
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isEqualToString:", @"iPhone"}];

  return v3;
}

- (id)supportsDisplayZoomCapability
{
  v2 = MEMORY[0x1E696AD98];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v2 numberWithBool:{objc_msgSend(currentDevice, "sf_deviceSupportsDisplayZoom")}];

  return v4;
}

- (id)supportsRaiseToWakeCapability
{
  v2 = MEMORY[0x1E696AD98];
  isWakeGestureAvailable = [MEMORY[0x1E6963518] isWakeGestureAvailable];

  return [v2 numberWithBool:isWakeGestureAvailable];
}

- (id)supportsAutoWhiteBalanceCapability
{
  if ((supportsAutoWhiteBalanceCapability_cached & 1) == 0)
  {
    v2 = objc_alloc_init(getCBClientClass());
    v3 = v2;
    if (v2)
    {
      adaptationClient = [v2 adaptationClient];
      supportsAutoWhiteBalanceCapability_supported = [adaptationClient supported];

      supportsAutoWhiteBalanceCapability_cached = 1;
    }
  }

  v5 = MEMORY[0x1E696AD98];
  v6 = supportsAutoWhiteBalanceCapability_supported;

  return [v5 numberWithBool:v6];
}

- (id)supportsNightShiftCapability
{
  if ((supportsNightShiftCapability_cached & 1) == 0)
  {
    v2 = objc_alloc_init(getCBClientClass());
    v3 = v2;
    if (v2)
    {
      blueLightClient = [v2 blueLightClient];
      supportsNightShiftCapability_supported = [blueLightClient supported];

      supportsNightShiftCapability_cached = 1;
    }
  }

  v5 = MEMORY[0x1E696AD98];
  v6 = supportsNightShiftCapability_supported;

  return [v5 numberWithBool:v6];
}

- (id)supportsInStoreDemoModeCapability
{
  v2 = MEMORY[0x1E696AD98];
  isRunningInStoreDemoMode = [MEMORY[0x1E69DC668] isRunningInStoreDemoMode];

  return [v2 numberWithBool:isRunningInStoreDemoMode];
}

- (id)supportsInEDUModeCapability
{
  v2 = MEMORY[0x1E696AD98];
  v3 = PSIsInEDUMode();

  return [v2 numberWithBool:v3];
}

- (id)applicationDisplayIdentifiers
{
  v2 = SBSCopyDisplayIdentifiers();
  allObjects = [v2 allObjects];

  return allObjects;
}

- (id)supportsPSTTYCapability
{
  v2 = MEMORY[0x1E696AD98];
  if ([getRTTTelephonyUtilitiesClass() softwareTTYIsSupported])
  {
    hardwareTTYIsSupported = 1;
  }

  else
  {
    hardwareTTYIsSupported = [getRTTTelephonyUtilitiesClass() hardwareTTYIsSupported];
  }

  return [v2 numberWithInt:hardwareTTYIsSupported];
}

- (id)supportsPSDeveloperSettingsCapability
{
  v2 = MEMORY[0x1E696AD98];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v2 numberWithBool:{objc_msgSend(currentDevice, "sf_isDeveloperModeEnabled")}];

  return v4;
}

- (id)supportPSRecordHDRVideoCapability
{
  v2 = [objc_alloc(getCAMCaptureCapabilitiesClass()) initWithHostProcess:0];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isHDR10BitVideoSupported")}];

  return v3;
}

- (id)supportPSPhotoFormatProRAWCapability
{
  v2 = [objc_alloc(getCAMCaptureCapabilitiesClass()) initWithHostProcess:0];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isLinearDNGSupported")}];

  return v3;
}

- (id)supportPSPhotoFormatEnhancedProRAWCapability
{
  v2 = [objc_alloc(getCAMCaptureCapabilitiesClass()) initWithHostProcess:0];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "enhancedRAWResolutionSupported")}];

  return v3;
}

- (id)supportPSPhoneNoiseCancellationCapability
{
  v2 = MEMORY[0x1E696AD98];
  mEMORY[0x1E698D710] = [MEMORY[0x1E698D710] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(mEMORY[0x1E698D710], "isEarpieceActiveNoiseCancelationEnabled")}];

  return v4;
}

- (id)supportsRetailKioskModeCapability
{
  v2 = MEMORY[0x1E696AD98];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v2 numberWithBool:{objc_msgSend(currentDevice, "sf_inRetailKioskMode")}];

  return v4;
}

- (id)supportsContinuityCamera
{
  v2 = MEMORY[0x1E696AD98];
  BoolAnswer = AVGestaltGetBoolAnswer();

  return [v2 numberWithBool:BoolAnswer];
}

@end