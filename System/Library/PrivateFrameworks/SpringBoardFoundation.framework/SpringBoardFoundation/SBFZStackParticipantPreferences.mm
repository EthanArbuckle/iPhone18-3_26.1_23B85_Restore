@interface SBFZStackParticipantPreferences
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initInternal;
- (id)succinctDescription;
- (void)_appendBodyDescriptionToStream:(id)stream;
- (void)_describeDifferencesFromOriginal:(id)original differenceStream:(id)stream;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation SBFZStackParticipantPreferences

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = SBFZStackParticipantPreferences;
  result = [(SBFZStackParticipantPreferences *)&v3 init];
  if (result)
  {
    *(result + 2) = 0;
  }

  return result;
}

- (void)_describeDifferencesFromOriginal:(id)original differenceStream:(id)stream
{
  originalCopy = original;
  streamCopy = stream;
  v7 = streamCopy;
  if (originalCopy)
  {
    activationPolicyForParticipantsBelow = self->_activationPolicyForParticipantsBelow;
    if (activationPolicyForParticipantsBelow != originalCopy[2])
    {
      if (activationPolicyForParticipantsBelow > 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = off_1E8080170[activationPolicyForParticipantsBelow];
      }

      v10 = [streamCopy appendObject:v9 withName:@"activationPolicyForParticipantsBelow"];
    }

    if ((BSEqualObjects() & 1) == 0)
    {
      v11 = [v7 appendObject:self->_assertIsAboveParticipantIdentifiers withName:@"assertIsAboveParticipantIdentifiers"];
    }

    homeGestureConsumption = self->_homeGestureConsumption;
    v13 = originalCopy;
    if (homeGestureConsumption != originalCopy[4])
    {
      if (homeGestureConsumption > 2)
      {
        v14 = 0;
      }

      else
      {
        v14 = off_1E8080188[homeGestureConsumption];
      }

      [v7 appendString:v14 withName:@"homeGestureConsumption"];
      v13 = originalCopy;
    }

    homeAffordanceDrawingSuppression = self->_homeAffordanceDrawingSuppression;
    if (homeAffordanceDrawingSuppression != v13[5])
    {
      if (homeAffordanceDrawingSuppression > 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = off_1E80801A0[homeAffordanceDrawingSuppression];
      }

      [v7 appendString:v16 withName:@"homeAffordanceDrawingSuppression"];
      v13 = originalCopy;
    }

    suppressSystemApertureForSystemChromeSuppression = self->_suppressSystemApertureForSystemChromeSuppression;
    if (suppressSystemApertureForSystemChromeSuppression != *(v13 + 8))
    {
      v18 = [v7 appendBool:suppressSystemApertureForSystemChromeSuppression withName:@"suppressSystemApertureForSystemChromeSuppression"];
    }

    if ((BSEqualObjects() & 1) == 0)
    {
      v19 = [v7 appendObject:self->_associatedSceneIdentifiersToSuppressInSystemAperture withName:@"associatedSceneIdentifiersToSuppressInSystemAperture"];
    }

    if ((BSEqualObjects() & 1) == 0)
    {
      v20 = [v7 appendObject:self->_associatedBundleIdentifiersToSuppressInSystemAperture withName:@"associatedBundleIdentifiersToSuppressInSystemAperture"];
    }

    if ((BSEqualObjects() & 1) == 0)
    {
      v21 = [v7 appendObject:self->_physicalButtonSceneTargets withName:@"physicalButtonSceneTargets"];
    }

    if ((BSEqualObjects() & 1) == 0)
    {
      v22 = [v7 appendObject:self->_captureButtonFullFidelityEventRequestingScenes withName:@"captureButtonFullFidelityEventRequestingScenes"];
    }

    if ((BSEqualObjects() & 1) == 0)
    {
      v23 = [v7 appendObject:self->_foregroundCaptureSceneTargets withName:@"foregroundCaptureSceneTargets"];
    }

    if ((BSEqualObjects() & 1) == 0)
    {
      v24 = [v7 appendObject:self->_audioCategoriesDisablingVolumeHUD withName:@"audioCategoriesDisablingVolumeHUD"];
    }

    allowsDimmingWhenForegroundInactive = self->_allowsDimmingWhenForegroundInactive;
    v26 = originalCopy;
    if (allowsDimmingWhenForegroundInactive != originalCopy[12])
    {
      if (allowsDimmingWhenForegroundInactive > 2)
      {
        v27 = 0;
      }

      else
      {
        v27 = off_1E80801B8[allowsDimmingWhenForegroundInactive];
      }

      [v7 appendString:v27 withName:@"allowsDimmingWhenForegroundInactive"];
      v26 = originalCopy;
    }

    allowsKeyboardArbiterToDetermineFocusTarget = self->_allowsKeyboardArbiterToDetermineFocusTarget;
    if (allowsKeyboardArbiterToDetermineFocusTarget != v26[13])
    {
      if (allowsKeyboardArbiterToDetermineFocusTarget > 2)
      {
        v29 = 0;
      }

      else
      {
        v29 = off_1E80801B8[allowsKeyboardArbiterToDetermineFocusTarget];
      }

      [v7 appendString:v29 withName:@"allowsKeyboardArbiterToDetermineFocusTarget"];
    }

    if ((BSEqualObjects() & 1) == 0)
    {
      v30 = [v7 appendObject:self->_overrideKeyboardFocusTarget withName:@"overrideKeyboardFocusTarget"];
    }

    allowCameraButtonDeferringWhileFocusLocked = self->_allowCameraButtonDeferringWhileFocusLocked;
    if (allowCameraButtonDeferringWhileFocusLocked != originalCopy[15])
    {
      if (allowCameraButtonDeferringWhileFocusLocked > 2)
      {
        v32 = 0;
      }

      else
      {
        v32 = off_1E80801B8[allowCameraButtonDeferringWhileFocusLocked];
      }

      [v7 appendString:v32 withName:@"allowCameraButtonDeferringWhileFocusLocked"];
    }
  }

  else
  {
    [(SBFZStackParticipantPreferences *)self _appendBodyDescriptionToStream:streamCopy];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setActivationPolicyForParticipantsBelow:self->_activationPolicyForParticipantsBelow];
  [v4 setAssertIsAboveParticipantIdentifiers:self->_assertIsAboveParticipantIdentifiers];
  [v4 setHomeGestureConsumption:self->_homeGestureConsumption];
  [v4 setHomeAffordanceDrawingSuppression:self->_homeAffordanceDrawingSuppression];
  [v4 setSuppressSystemApertureForSystemChromeSuppression:self->_suppressSystemApertureForSystemChromeSuppression];
  [v4 setAssociatedSceneIdentifiersToSuppressInSystemAperture:self->_associatedSceneIdentifiersToSuppressInSystemAperture];
  [v4 setAssociatedBundleIdentifiersToSuppressInSystemAperture:self->_associatedBundleIdentifiersToSuppressInSystemAperture];
  [v4 setPhysicalButtonSceneTargets:self->_physicalButtonSceneTargets];
  [v4 setCaptureButtonFullFidelityEventRequestingScenes:self->_captureButtonFullFidelityEventRequestingScenes];
  [v4 setForegroundCaptureSceneTargets:self->_foregroundCaptureSceneTargets];
  [v4 setAudioCategoriesDisablingVolumeHUD:self->_audioCategoriesDisablingVolumeHUD];
  [v4 setAllowsDimmingWhenForegroundInactive:self->_allowsDimmingWhenForegroundInactive];
  [v4 setAllowsKeyboardArbiterToDetermineFocusTarget:self->_allowsKeyboardArbiterToDetermineFocusTarget];
  [v4 setOverrideKeyboardFocusTarget:self->_overrideKeyboardFocusTarget];
  [v4 setAllowCameraButtonDeferringWhileFocusLocked:self->_allowCameraButtonDeferringWhileFocusLocked];
  return v4;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      activationPolicyForParticipantsBelow = [(SBFZStackParticipantPreferences *)self activationPolicyForParticipantsBelow];
      if (activationPolicyForParticipantsBelow == [(SBFZStackParticipantPreferences *)v5 activationPolicyForParticipantsBelow])
      {
        assertIsAboveParticipantIdentifiers = [(SBFZStackParticipantPreferences *)self assertIsAboveParticipantIdentifiers];
        assertIsAboveParticipantIdentifiers2 = [(SBFZStackParticipantPreferences *)v5 assertIsAboveParticipantIdentifiers];
        if (BSEqualObjects() && (v9 = [(SBFZStackParticipantPreferences *)self homeGestureConsumption], v9 == [(SBFZStackParticipantPreferences *)v5 homeGestureConsumption]) && (v10 = [(SBFZStackParticipantPreferences *)self homeAffordanceDrawingSuppression], v10 == [(SBFZStackParticipantPreferences *)v5 homeAffordanceDrawingSuppression]) && (v11 = [(SBFZStackParticipantPreferences *)self suppressSystemApertureForSystemChromeSuppression], v11 == [(SBFZStackParticipantPreferences *)v5 suppressSystemApertureForSystemChromeSuppression]))
        {
          associatedBundleIdentifiersToSuppressInSystemAperture = [(SBFZStackParticipantPreferences *)self associatedBundleIdentifiersToSuppressInSystemAperture];
          associatedBundleIdentifiersToSuppressInSystemAperture2 = [(SBFZStackParticipantPreferences *)v5 associatedBundleIdentifiersToSuppressInSystemAperture];
          if (BSEqualSets())
          {
            associatedSceneIdentifiersToSuppressInSystemAperture = [(SBFZStackParticipantPreferences *)self associatedSceneIdentifiersToSuppressInSystemAperture];
            associatedSceneIdentifiersToSuppressInSystemAperture2 = [(SBFZStackParticipantPreferences *)v5 associatedSceneIdentifiersToSuppressInSystemAperture];
            if (BSEqualSets())
            {
              physicalButtonSceneTargets = [(SBFZStackParticipantPreferences *)self physicalButtonSceneTargets];
              [(SBFZStackParticipantPreferences *)v5 physicalButtonSceneTargets];
              v19 = v36 = physicalButtonSceneTargets;
              if (BSEqualArrays())
              {
                v35 = v19;
                captureButtonFullFidelityEventRequestingScenes = [(SBFZStackParticipantPreferences *)self captureButtonFullFidelityEventRequestingScenes];
                captureButtonFullFidelityEventRequestingScenes2 = [(SBFZStackParticipantPreferences *)v5 captureButtonFullFidelityEventRequestingScenes];
                v34 = captureButtonFullFidelityEventRequestingScenes;
                if (BSEqualArrays())
                {
                  foregroundCaptureSceneTargets = [(SBFZStackParticipantPreferences *)self foregroundCaptureSceneTargets];
                  foregroundCaptureSceneTargets2 = [(SBFZStackParticipantPreferences *)v5 foregroundCaptureSceneTargets];
                  v32 = foregroundCaptureSceneTargets;
                  if (BSEqualArrays())
                  {
                    audioCategoriesDisablingVolumeHUD = [(SBFZStackParticipantPreferences *)self audioCategoriesDisablingVolumeHUD];
                    audioCategoriesDisablingVolumeHUD2 = [(SBFZStackParticipantPreferences *)v5 audioCategoriesDisablingVolumeHUD];
                    v30 = audioCategoriesDisablingVolumeHUD;
                    v19 = v35;
                    if (BSEqualSets() && (v27 = [(SBFZStackParticipantPreferences *)self allowsDimmingWhenForegroundInactive], v27 == [(SBFZStackParticipantPreferences *)v5 allowsDimmingWhenForegroundInactive]))
                    {
                      allowsKeyboardArbiterToDetermineFocusTarget = [(SBFZStackParticipantPreferences *)self allowsKeyboardArbiterToDetermineFocusTarget];
                      if (allowsKeyboardArbiterToDetermineFocusTarget == [(SBFZStackParticipantPreferences *)v5 allowsKeyboardArbiterToDetermineFocusTarget])
                      {
                        overrideKeyboardFocusTarget = [(SBFZStackParticipantPreferences *)self overrideKeyboardFocusTarget];
                        [(SBFZStackParticipantPreferences *)v5 overrideKeyboardFocusTarget];
                        v25 = v28 = overrideKeyboardFocusTarget;
                        if (BSEqualObjects())
                        {
                          allowCameraButtonDeferringWhileFocusLocked = [(SBFZStackParticipantPreferences *)self allowCameraButtonDeferringWhileFocusLocked];
                          v12 = allowCameraButtonDeferringWhileFocusLocked == [(SBFZStackParticipantPreferences *)v5 allowCameraButtonDeferringWhileFocusLocked];
                        }

                        else
                        {
                          v12 = 0;
                        }
                      }

                      else
                      {
                        v12 = 0;
                      }

                      v19 = v35;
                    }

                    else
                    {
                      v12 = 0;
                    }
                  }

                  else
                  {
                    v12 = 0;
                    v19 = v35;
                  }
                }

                else
                {
                  v12 = 0;
                  v19 = v35;
                }
              }

              else
              {
                v12 = 0;
              }
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (void)_appendBodyDescriptionToStream:(id)stream
{
  streamCopy = stream;
  activationPolicyForParticipantsBelow = [(SBFZStackParticipantPreferences *)self activationPolicyForParticipantsBelow];
  if (activationPolicyForParticipantsBelow > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E8080170[activationPolicyForParticipantsBelow];
  }

  [streamCopy appendString:v6 withName:@"activationPolicyForParticipantsBelow"];
  homeGestureConsumption = [(SBFZStackParticipantPreferences *)self homeGestureConsumption];
  if (homeGestureConsumption > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E8080188[homeGestureConsumption];
  }

  [streamCopy appendString:v8 withName:@"homeGestureConsumption"];
  homeAffordanceDrawingSuppression = [(SBFZStackParticipantPreferences *)self homeAffordanceDrawingSuppression];
  if (homeAffordanceDrawingSuppression > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E80801A0[homeAffordanceDrawingSuppression];
  }

  [streamCopy appendString:v10 withName:@"homeAffordanceDrawingSuppression"];
  assertIsAboveParticipantIdentifiers = [(SBFZStackParticipantPreferences *)self assertIsAboveParticipantIdentifiers];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = ___SBFZStackParticipantIdentifierDescriptionsForIdentifiers_block_invoke;
  v37[3] = &unk_1E8080040;
  v13 = v12;
  v38 = v13;
  [assertIsAboveParticipantIdentifiers enumerateIndexesUsingBlock:v37];

  v14 = [streamCopy appendObject:v13 withName:@"assertIsAboveParticipantIdentifiers"];
  v15 = [streamCopy appendBool:-[SBFZStackParticipantPreferences suppressSystemApertureForSystemChromeSuppression](self withName:"suppressSystemApertureForSystemChromeSuppression") ifEqualTo:{@"suppressSystemApertureForSystemChromeSuppression", 1}];
  associatedSceneIdentifiersToSuppressInSystemAperture = [(SBFZStackParticipantPreferences *)self associatedSceneIdentifiersToSuppressInSystemAperture];
  v17 = [associatedSceneIdentifiersToSuppressInSystemAperture description];
  [streamCopy appendString:v17 withName:@"associatedSceneIdentifiersToSuppressInSystemAperture" skipIfEmpty:1];

  associatedBundleIdentifiersToSuppressInSystemAperture = [(SBFZStackParticipantPreferences *)self associatedBundleIdentifiersToSuppressInSystemAperture];
  v19 = [associatedBundleIdentifiersToSuppressInSystemAperture description];
  [streamCopy appendString:v19 withName:@"associatedBundleIdentifiersToSuppressInSystemAperture" skipIfEmpty:1];

  physicalButtonSceneTargets = [(SBFZStackParticipantPreferences *)self physicalButtonSceneTargets];
  v21 = [physicalButtonSceneTargets description];
  [streamCopy appendString:v21 withName:@"physicalButtonSceneTargets" skipIfEmpty:1];

  captureButtonFullFidelityEventRequestingScenes = [(SBFZStackParticipantPreferences *)self captureButtonFullFidelityEventRequestingScenes];
  v23 = [captureButtonFullFidelityEventRequestingScenes bs_map:&__block_literal_global_346];
  v24 = [v23 description];
  [streamCopy appendString:v24 withName:@"captureButtonFullFidelityEventRequestingScenes" skipIfEmpty:1];

  foregroundCaptureSceneTargets = [(SBFZStackParticipantPreferences *)self foregroundCaptureSceneTargets];
  v26 = [foregroundCaptureSceneTargets description];
  [streamCopy appendString:v26 withName:@"foregroundCaptureSceneTargets" skipIfEmpty:1];

  audioCategoriesDisablingVolumeHUD = [(SBFZStackParticipantPreferences *)self audioCategoriesDisablingVolumeHUD];
  v28 = [audioCategoriesDisablingVolumeHUD description];
  [streamCopy appendString:v28 withName:@"audioCategoriesDisablingVolumeHUD" skipIfEmpty:1];

  allowsDimmingWhenForegroundInactive = [(SBFZStackParticipantPreferences *)self allowsDimmingWhenForegroundInactive];
  if (allowsDimmingWhenForegroundInactive > 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = off_1E80801B8[allowsDimmingWhenForegroundInactive];
  }

  [streamCopy appendString:v30 withName:@"allowsDimmingWhenForegroundInactive"];
  allowsKeyboardArbiterToDetermineFocusTarget = [(SBFZStackParticipantPreferences *)self allowsKeyboardArbiterToDetermineFocusTarget];
  if (allowsKeyboardArbiterToDetermineFocusTarget > 2)
  {
    v32 = 0;
  }

  else
  {
    v32 = off_1E80801B8[allowsKeyboardArbiterToDetermineFocusTarget];
  }

  [streamCopy appendString:v32 withName:@"allowsKeyboardArbiterToDetermineFocusTarget"];
  allowCameraButtonDeferringWhileFocusLocked = [(SBFZStackParticipantPreferences *)self allowCameraButtonDeferringWhileFocusLocked];
  if (allowCameraButtonDeferringWhileFocusLocked > 2)
  {
    v34 = 0;
  }

  else
  {
    v34 = off_1E80801B8[allowCameraButtonDeferringWhileFocusLocked];
  }

  [streamCopy appendString:v34 withName:@"allowCameraButtonDeferringWhileFocusLocked"];
  overrideKeyboardFocusTarget = [(SBFZStackParticipantPreferences *)self overrideKeyboardFocusTarget];
  v36 = [streamCopy appendObject:overrideKeyboardFocusTarget withName:@"overrideKeyboardFocusTarget"];
}

id __66__SBFZStackParticipantPreferences__appendBodyDescriptionToStream___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identityToken];
  v3 = [v2 stringRepresentation];

  return v3;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  [streamCopy appendProem:self block:&__block_literal_global_348];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SBFZStackParticipantPreferences_appendDescriptionToStream___block_invoke_2;
  v6[3] = &unk_1E807F290;
  v6[4] = self;
  v7 = streamCopy;
  v5 = streamCopy;
  [v5 appendBodySectionWithName:0 block:v6];
}

@end