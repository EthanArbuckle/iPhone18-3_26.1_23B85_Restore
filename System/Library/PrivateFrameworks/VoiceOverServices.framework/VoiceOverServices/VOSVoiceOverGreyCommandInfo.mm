@interface VOSVoiceOverGreyCommandInfo
+ (BOOL)_isStingSupported;
+ (BOOL)isVoiceOverGreyFeatureOn;
+ (id)_pairedDevice;
+ (id)defaultActions;
+ (id)defaultCustomizeGestures;
+ (id)nameForAction:(id)action;
+ (id)symbolNameForAction:(id)action;
@end

@implementation VOSVoiceOverGreyCommandInfo

+ (id)defaultCustomizeGestures
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_283736368;
  v5[1] = &unk_283736380;
  v6[0] = kVOTEventCommandSimpleTap;
  v6[1] = kVOTEventCommandActivateHomeButton;
  v5[2] = &unk_283736398;
  v5[3] = &unk_2837363B0;
  v6[2] = kVOTEventCommandNextElement;
  v6[3] = kVOTEventCommandPreviousElement;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)defaultActions
{
  v6[6] = *MEMORY[0x277D85DE8];
  v6[0] = kVOTEventCommandActivateHomeButton;
  v6[1] = kVOTEventCommandSimpleTap;
  v6[2] = kVOTEventCommandNextElement;
  v6[3] = kVOTEventCommandPreviousElement;
  v6[4] = kVOTEventCommandWatchWakeDoubleTap;
  v6[5] = kVOTEventCommandStartStopToggle;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:6];
  v3 = [v2 mutableCopy];

  if (+[VOSVoiceOverGreyCommandInfo _isStingSupported])
  {
    [v3 insertObject:kVOTEventCommandStingKeycordPress atIndex:1];
    [v3 insertObject:kVOTEventCommandStingPress atIndex:1];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nameForAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:kVOTEventCommandActivateHomeButton])
  {
    v4 = @"action.digital.crown.press";
  }

  else if ([actionCopy isEqualToString:kVOTEventCommandSimpleTap])
  {
    v4 = @"action.double.tap";
  }

  else if ([actionCopy isEqualToString:kVOTEventCommandNextElement])
  {
    v4 = @"action.swipe.left";
  }

  else if ([actionCopy isEqualToString:kVOTEventCommandPreviousElement])
  {
    v4 = @"action.swipe.right";
  }

  else if ([actionCopy isEqualToString:kVOTEventCommandWatchWakeDoubleTap])
  {
    v4 = @"action.taptic.time";
  }

  else if ([actionCopy isEqualToString:kVOTEventCommandStartStopToggle])
  {
    v4 = @"action.magic.tap";
  }

  else if ([actionCopy isEqualToString:kVOTEventCommandStingPress])
  {
    v4 = @"action.sting.press";
  }

  else if ([actionCopy isEqualToString:kVOTEventCommandStingKeycordPress])
  {
    v4 = @"action.sting.keycord.press";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)symbolNameForAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:kVOTEventCommandActivateHomeButton])
  {
    v4 = @"applewatch.crown.fill.arrow.up";
  }

  else if ([actionCopy isEqualToString:kVOTEventCommandSimpleTap])
  {
    v4 = @"hand.tap.fill";
  }

  else if ([actionCopy isEqualToString:kVOTEventCommandNextElement])
  {
    v4 = @"chevron.left.circle.fill";
  }

  else if ([actionCopy isEqualToString:kVOTEventCommandPreviousElement])
  {
    v4 = @"chevron.right.circle.fill";
  }

  else if ([actionCopy isEqualToString:kVOTEventCommandWatchWakeDoubleTap])
  {
    v4 = @"applewatch.radiowaves.left.and.right";
  }

  else if ([actionCopy isEqualToString:kVOTEventCommandStartStopToggle])
  {
    v4 = @"playpause.fill";
  }

  else
  {
    v4 = @"watchdock.applewatch.case";
    if (([actionCopy isEqualToString:kVOTEventCommandStingPress] & 1) == 0 && !objc_msgSend(actionCopy, "isEqualToString:", kVOTEventCommandStingKeycordPress))
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (BOOL)isVoiceOverGreyFeatureOn
{
  v2 = _os_feature_enabled_impl();
  _pairedDevice = [objc_opt_class() _pairedDevice];
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1FD8E157-2B7C-45B6-B939-FFB8BE14E27F"];
  v5 = [_pairedDevice supportsCapability:v4];

  return v2 & v5;
}

+ (id)_pairedDevice
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  activePairedDeviceSelectorBlock = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v4 = [mEMORY[0x277D2BCF8] getAllDevicesWithArchivedAltAccountDevicesMatching:activePairedDeviceSelectorBlock];
  firstObject = [v4 firstObject];

  v6 = [firstObject valueForProperty:*MEMORY[0x277D2BB30]];
  if ([v6 BOOLValue])
  {
    v7 = 0;
  }

  else
  {
    v7 = firstObject;
  }

  v8 = v7;

  return v7;
}

+ (BOOL)_isStingSupported
{
  _pairedDevice = [objc_opt_class() _pairedDevice];
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"15BF559D-D50B-44FE-AC84-DFBA323EC985"];
  v4 = [_pairedDevice supportsCapability:v3];

  return v4;
}

@end