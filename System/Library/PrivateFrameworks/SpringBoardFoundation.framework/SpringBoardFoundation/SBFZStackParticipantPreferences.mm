@interface SBFZStackParticipantPreferences
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initInternal;
- (id)succinctDescription;
- (void)_appendBodyDescriptionToStream:(id)a3;
- (void)_describeDifferencesFromOriginal:(id)a3 differenceStream:(id)a4;
- (void)appendDescriptionToStream:(id)a3;
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

- (void)_describeDifferencesFromOriginal:(id)a3 differenceStream:(id)a4
{
  v33 = a3;
  v6 = a4;
  v7 = v6;
  if (v33)
  {
    activationPolicyForParticipantsBelow = self->_activationPolicyForParticipantsBelow;
    if (activationPolicyForParticipantsBelow != v33[2])
    {
      if (activationPolicyForParticipantsBelow > 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = off_1E8080170[activationPolicyForParticipantsBelow];
      }

      v10 = [v6 appendObject:v9 withName:@"activationPolicyForParticipantsBelow"];
    }

    if ((BSEqualObjects() & 1) == 0)
    {
      v11 = [v7 appendObject:self->_assertIsAboveParticipantIdentifiers withName:@"assertIsAboveParticipantIdentifiers"];
    }

    homeGestureConsumption = self->_homeGestureConsumption;
    v13 = v33;
    if (homeGestureConsumption != v33[4])
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
      v13 = v33;
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
      v13 = v33;
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
    v26 = v33;
    if (allowsDimmingWhenForegroundInactive != v33[12])
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
      v26 = v33;
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
    if (allowCameraButtonDeferringWhileFocusLocked != v33[15])
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
    [(SBFZStackParticipantPreferences *)self _appendBodyDescriptionToStream:v6];
  }
}

- (id)copyWithZone:(_NSZone *)a3
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
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SBFZStackParticipantPreferences *)self activationPolicyForParticipantsBelow];
      if (v6 == [(SBFZStackParticipantPreferences *)v5 activationPolicyForParticipantsBelow])
      {
        v7 = [(SBFZStackParticipantPreferences *)self assertIsAboveParticipantIdentifiers];
        v8 = [(SBFZStackParticipantPreferences *)v5 assertIsAboveParticipantIdentifiers];
        if (BSEqualObjects() && (v9 = [(SBFZStackParticipantPreferences *)self homeGestureConsumption], v9 == [(SBFZStackParticipantPreferences *)v5 homeGestureConsumption]) && (v10 = [(SBFZStackParticipantPreferences *)self homeAffordanceDrawingSuppression], v10 == [(SBFZStackParticipantPreferences *)v5 homeAffordanceDrawingSuppression]) && (v11 = [(SBFZStackParticipantPreferences *)self suppressSystemApertureForSystemChromeSuppression], v11 == [(SBFZStackParticipantPreferences *)v5 suppressSystemApertureForSystemChromeSuppression]))
        {
          v14 = [(SBFZStackParticipantPreferences *)self associatedBundleIdentifiersToSuppressInSystemAperture];
          v15 = [(SBFZStackParticipantPreferences *)v5 associatedBundleIdentifiersToSuppressInSystemAperture];
          if (BSEqualSets())
          {
            v16 = [(SBFZStackParticipantPreferences *)self associatedSceneIdentifiersToSuppressInSystemAperture];
            v17 = [(SBFZStackParticipantPreferences *)v5 associatedSceneIdentifiersToSuppressInSystemAperture];
            if (BSEqualSets())
            {
              v18 = [(SBFZStackParticipantPreferences *)self physicalButtonSceneTargets];
              [(SBFZStackParticipantPreferences *)v5 physicalButtonSceneTargets];
              v19 = v36 = v18;
              if (BSEqualArrays())
              {
                v35 = v19;
                v20 = [(SBFZStackParticipantPreferences *)self captureButtonFullFidelityEventRequestingScenes];
                v33 = [(SBFZStackParticipantPreferences *)v5 captureButtonFullFidelityEventRequestingScenes];
                v34 = v20;
                if (BSEqualArrays())
                {
                  v21 = [(SBFZStackParticipantPreferences *)self foregroundCaptureSceneTargets];
                  v31 = [(SBFZStackParticipantPreferences *)v5 foregroundCaptureSceneTargets];
                  v32 = v21;
                  if (BSEqualArrays())
                  {
                    v22 = [(SBFZStackParticipantPreferences *)self audioCategoriesDisablingVolumeHUD];
                    v29 = [(SBFZStackParticipantPreferences *)v5 audioCategoriesDisablingVolumeHUD];
                    v30 = v22;
                    v19 = v35;
                    if (BSEqualSets() && (v27 = [(SBFZStackParticipantPreferences *)self allowsDimmingWhenForegroundInactive], v27 == [(SBFZStackParticipantPreferences *)v5 allowsDimmingWhenForegroundInactive]))
                    {
                      v23 = [(SBFZStackParticipantPreferences *)self allowsKeyboardArbiterToDetermineFocusTarget];
                      if (v23 == [(SBFZStackParticipantPreferences *)v5 allowsKeyboardArbiterToDetermineFocusTarget])
                      {
                        v24 = [(SBFZStackParticipantPreferences *)self overrideKeyboardFocusTarget];
                        [(SBFZStackParticipantPreferences *)v5 overrideKeyboardFocusTarget];
                        v25 = v28 = v24;
                        if (BSEqualObjects())
                        {
                          v26 = [(SBFZStackParticipantPreferences *)self allowCameraButtonDeferringWhileFocusLocked];
                          v12 = v26 == [(SBFZStackParticipantPreferences *)v5 allowCameraButtonDeferringWhileFocusLocked];
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
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (void)_appendBodyDescriptionToStream:(id)a3
{
  v4 = a3;
  v5 = [(SBFZStackParticipantPreferences *)self activationPolicyForParticipantsBelow];
  if (v5 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E8080170[v5];
  }

  [v4 appendString:v6 withName:@"activationPolicyForParticipantsBelow"];
  v7 = [(SBFZStackParticipantPreferences *)self homeGestureConsumption];
  if (v7 > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E8080188[v7];
  }

  [v4 appendString:v8 withName:@"homeGestureConsumption"];
  v9 = [(SBFZStackParticipantPreferences *)self homeAffordanceDrawingSuppression];
  if (v9 > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E80801A0[v9];
  }

  [v4 appendString:v10 withName:@"homeAffordanceDrawingSuppression"];
  v11 = [(SBFZStackParticipantPreferences *)self assertIsAboveParticipantIdentifiers];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = ___SBFZStackParticipantIdentifierDescriptionsForIdentifiers_block_invoke;
  v37[3] = &unk_1E8080040;
  v13 = v12;
  v38 = v13;
  [v11 enumerateIndexesUsingBlock:v37];

  v14 = [v4 appendObject:v13 withName:@"assertIsAboveParticipantIdentifiers"];
  v15 = [v4 appendBool:-[SBFZStackParticipantPreferences suppressSystemApertureForSystemChromeSuppression](self withName:"suppressSystemApertureForSystemChromeSuppression") ifEqualTo:{@"suppressSystemApertureForSystemChromeSuppression", 1}];
  v16 = [(SBFZStackParticipantPreferences *)self associatedSceneIdentifiersToSuppressInSystemAperture];
  v17 = [v16 description];
  [v4 appendString:v17 withName:@"associatedSceneIdentifiersToSuppressInSystemAperture" skipIfEmpty:1];

  v18 = [(SBFZStackParticipantPreferences *)self associatedBundleIdentifiersToSuppressInSystemAperture];
  v19 = [v18 description];
  [v4 appendString:v19 withName:@"associatedBundleIdentifiersToSuppressInSystemAperture" skipIfEmpty:1];

  v20 = [(SBFZStackParticipantPreferences *)self physicalButtonSceneTargets];
  v21 = [v20 description];
  [v4 appendString:v21 withName:@"physicalButtonSceneTargets" skipIfEmpty:1];

  v22 = [(SBFZStackParticipantPreferences *)self captureButtonFullFidelityEventRequestingScenes];
  v23 = [v22 bs_map:&__block_literal_global_346];
  v24 = [v23 description];
  [v4 appendString:v24 withName:@"captureButtonFullFidelityEventRequestingScenes" skipIfEmpty:1];

  v25 = [(SBFZStackParticipantPreferences *)self foregroundCaptureSceneTargets];
  v26 = [v25 description];
  [v4 appendString:v26 withName:@"foregroundCaptureSceneTargets" skipIfEmpty:1];

  v27 = [(SBFZStackParticipantPreferences *)self audioCategoriesDisablingVolumeHUD];
  v28 = [v27 description];
  [v4 appendString:v28 withName:@"audioCategoriesDisablingVolumeHUD" skipIfEmpty:1];

  v29 = [(SBFZStackParticipantPreferences *)self allowsDimmingWhenForegroundInactive];
  if (v29 > 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = off_1E80801B8[v29];
  }

  [v4 appendString:v30 withName:@"allowsDimmingWhenForegroundInactive"];
  v31 = [(SBFZStackParticipantPreferences *)self allowsKeyboardArbiterToDetermineFocusTarget];
  if (v31 > 2)
  {
    v32 = 0;
  }

  else
  {
    v32 = off_1E80801B8[v31];
  }

  [v4 appendString:v32 withName:@"allowsKeyboardArbiterToDetermineFocusTarget"];
  v33 = [(SBFZStackParticipantPreferences *)self allowCameraButtonDeferringWhileFocusLocked];
  if (v33 > 2)
  {
    v34 = 0;
  }

  else
  {
    v34 = off_1E80801B8[v33];
  }

  [v4 appendString:v34 withName:@"allowCameraButtonDeferringWhileFocusLocked"];
  v35 = [(SBFZStackParticipantPreferences *)self overrideKeyboardFocusTarget];
  v36 = [v4 appendObject:v35 withName:@"overrideKeyboardFocusTarget"];
}

id __66__SBFZStackParticipantPreferences__appendBodyDescriptionToStream___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identityToken];
  v3 = [v2 stringRepresentation];

  return v3;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  [v4 appendProem:self block:&__block_literal_global_348];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SBFZStackParticipantPreferences_appendDescriptionToStream___block_invoke_2;
  v6[3] = &unk_1E807F290;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 appendBodySectionWithName:0 block:v6];
}

@end