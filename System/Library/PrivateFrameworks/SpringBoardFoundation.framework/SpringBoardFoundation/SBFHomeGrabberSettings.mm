@interface SBFHomeGrabberSettings
+ (id)settingsControllerModule;
- (UIEdgeInsets)coverSheetHomeAffordanceCursorEdgeInsets;
- (UIEdgeInsets)coverSheetSuppressAnimationForPointerInsets;
- (void)setDefaultValues;
@end

@implementation SBFHomeGrabberSettings

- (void)setDefaultValues
{
  v34.receiver = self;
  v34.super_class = SBFHomeGrabberSettings;
  [(PTSettings *)&v34 setDefaultValues];
  if (SBFEffectiveHomeButtonType() == 2)
  {
    [(SBFHomeGrabberSettings *)self setEnabled:1];
  }

  [(SBFHomeGrabberSettings *)self setInitializationStyle:0];
  [(SBFHomeGrabberSettings *)self setRemoveViewOnHide:1];
  [(SBFHomeGrabberSettings *)self setEdgeProtectOverride:0x7FFFFFFFFFFFFFFFLL];
  [(SBFHomeGrabberSettings *)self setAutoHideOverride:0x7FFFFFFFFFFFFFFFLL];
  v3 = _UISolariumEnabled();
  v4 = 2.0;
  if (v3)
  {
    v4 = 1.0;
    v5 = 1.0;
  }

  else
  {
    v5 = 1.5;
  }

  [(SBFHomeGrabberSettings *)self setAutoHideTime:v4];
  [(SBFHomeGrabberSettings *)self setAutoHideTimeOnAppRequest:v5];
  [(SBFHomeGrabberSettings *)self setResetAutoHideTimeOnRotation:1];
  [(SBFHomeGrabberSettings *)self setDelayForUnhideOnTouch:0.1];
  [(SBFHomeGrabberSettings *)self setDelayForUnhideOnAppRequest:0.1];
  [(SBFHomeGrabberSettings *)self setVisualizeHitTestRect:0];
  [(SBFHomeGrabberSettings *)self setConstrainHitTestRectToSafeAreaInset:1];
  [(SBFHomeGrabberSettings *)self setHitTestOutsetTop:10.0];
  [(SBFHomeGrabberSettings *)self setHitTestOutsetSides:10.0];
  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = 0.0;
  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = 5.0;
  }

  [(SBFHomeGrabberSettings *)self setHitTestOutsetDoubleTap:v8];
  [(SBFHomeGrabberSettings *)self setSingleTapGatingEnabled:1];
  [(SBFHomeGrabberSettings *)self setCoverSheetHomeAffordanceCursorTopEdgeInset:-4.0];
  [(SBFHomeGrabberSettings *)self setCoverSheetHomeAffordanceCursorBottomEdgeInset:-4.0];
  [(SBFHomeGrabberSettings *)self setCoverSheetHomeAffordanceCursorLeftEdgeInset:-7.0];
  [(SBFHomeGrabberSettings *)self setCoverSheetHomeAffordanceCursorRightEdgeInset:-7.0];
  [(SBFHomeGrabberSettings *)self setCoverSheetSuppressAnimationForPointerTopEdgeInset:-300.0];
  [(SBFHomeGrabberSettings *)self setCoverSheetSuppressAnimationForPointerBottomEdgeInset:0.0];
  [(SBFHomeGrabberSettings *)self setCoverSheetSuppressAnimationForPointerLeftEdgeInset:-200.0];
  [(SBFHomeGrabberSettings *)self setCoverSheetSuppressAnimationForPointerRightEdgeInset:-200.0];
  [(SBFHomeGrabberSettings *)self setBounceTranslation:2.0];
  [(SBFHomeGrabberSettings *)self setBounceReverseAnimationDelay:0.2];
  v9 = [(SBFHomeGrabberSettings *)self bounceAnimationSettings];
  [v9 setDefaultValues];

  v10 = [(SBFHomeGrabberSettings *)self bounceAnimationSettings];
  [v10 setDampingRatio:0.375278];

  v11 = [(SBFHomeGrabberSettings *)self bounceAnimationSettings];
  [v11 setResponse:0.36276];

  v12 = _UISolariumEnabled();
  if (v12)
  {
    v13 = 0.25;
  }

  else
  {
    v13 = 0.6;
  }

  if (v12)
  {
    v14 = 0.5;
  }

  else
  {
    v14 = 0.25;
  }

  if (v12)
  {
    v15 = 0.5;
  }

  else
  {
    v15 = 3.0;
  }

  v16 = [(SBFHomeGrabberSettings *)self hideAnimationSettings];
  v17 = *MEMORY[0x1E69792B8];
  v18 = *(MEMORY[0x1E69792B8] + 4);
  v19 = *(MEMORY[0x1E69792B8] + 8);
  __42__SBFHomeGrabberSettings_setDefaultValues__block_invoke(v13, *MEMORY[0x1E69792B8], v18, v19, v16, v16, 0);

  v20 = [(SBFHomeGrabberSettings *)self unhideAnimationSettings];
  __42__SBFHomeGrabberSettings_setDefaultValues__block_invoke(v14, v17, v18, v19, v20, v20, 0);

  v21 = [(SBFHomeGrabberSettings *)self lumaResponseAnimationSettings];
  v35 = CAFrameRateRangeMake(30.0, 120.0, 30.0);
  __42__SBFHomeGrabberSettings_setDefaultValues__block_invoke(v15, v35.minimum, v35.maximum, v35.preferred, v22, v21, 21);

  v23 = [(SBFHomeGrabberSettings *)self hideForHomeGestureOwnershipAnimationSettings];
  __42__SBFHomeGrabberSettings_setDefaultValues__block_invoke(0.25, v17, v18, v19, v23, v23, 0);

  v24 = [(SBFHomeGrabberSettings *)self unhideForHomeGestureOwnershipAnimationSettings];
  __42__SBFHomeGrabberSettings_setDefaultValues__block_invoke(0.25, v17, v18, v19, v24, v24, 0);

  v25 = [(SBFHomeGrabberSettings *)self thinToProminentAnimationSettings];
  __42__SBFHomeGrabberSettings_setDefaultValues__block_invoke(0.25, v17, v18, v19, v25, v25, 0);

  v26 = [(SBFHomeGrabberSettings *)self prominentToThinAnimationSettings];
  __42__SBFHomeGrabberSettings_setDefaultValues__block_invoke(0.25, v17, v18, v19, v26, v26, 0);

  v27 = [(SBFHomeGrabberSettings *)self forcedProminentToThinAnimationSettings];
  __42__SBFHomeGrabberSettings_setDefaultValues__block_invoke(0.6, v17, v18, v19, v27, v27, 0);

  v28 = [(SBFHomeGrabberSettings *)self initialLumaResponseAnimationSettings];
  __42__SBFHomeGrabberSettings_setDefaultValues__block_invoke(0.5, v17, v18, v19, v28, v28, 0);

  v29 = [(SBFHomeGrabberSettings *)self rotationFadeOutAnimationSettings];
  __42__SBFHomeGrabberSettings_setDefaultValues__block_invoke(0.1, v17, v18, v19, v29, v29, 0);

  v30 = [(SBFHomeGrabberSettings *)self rotationFadeInAnimationSettings];
  __42__SBFHomeGrabberSettings_setDefaultValues__block_invoke(0.3, v17, v18, v19, v30, v30, 0);

  [(SBFHomeGrabberSettings *)self setEdgeProtectOverride:0x7FFFFFFFFFFFFFFFLL];
  v31 = [(SBFHomeGrabberSettings *)self edgeProtectAnimationSettings];
  [v31 setDefaultValues];

  v32 = [(SBFHomeGrabberSettings *)self edgeProtectAnimationSettings];
  [v32 setResponse:0.444];

  v33 = [(SBFHomeGrabberSettings *)self edgeProtectAnimationSettings];
  [v33 setDampingRatio:0.884];
}

void __42__SBFHomeGrabberSettings_setDefaultValues__block_invoke(double a1, float a2, float a3, float a4, uint64_t a5, void *a6, uint64_t a7)
{
  v15 = a6;
  [v15 setDefaultValues];
  [v15 setCurve:196608];
  [v15 setDuration:a1];
  *&v12 = a2;
  *&v13 = a3;
  *&v14 = a4;
  [v15 setFrameRateRange:a7 highFrameRateReason:{v12, v13, v14}];
}

- (UIEdgeInsets)coverSheetHomeAffordanceCursorEdgeInsets
{
  coverSheetHomeAffordanceCursorTopEdgeInset = self->_coverSheetHomeAffordanceCursorTopEdgeInset;
  coverSheetHomeAffordanceCursorLeftEdgeInset = self->_coverSheetHomeAffordanceCursorLeftEdgeInset;
  coverSheetHomeAffordanceCursorBottomEdgeInset = self->_coverSheetHomeAffordanceCursorBottomEdgeInset;
  coverSheetHomeAffordanceCursorRightEdgeInset = self->_coverSheetHomeAffordanceCursorRightEdgeInset;
  result.right = coverSheetHomeAffordanceCursorRightEdgeInset;
  result.bottom = coverSheetHomeAffordanceCursorBottomEdgeInset;
  result.left = coverSheetHomeAffordanceCursorLeftEdgeInset;
  result.top = coverSheetHomeAffordanceCursorTopEdgeInset;
  return result;
}

- (UIEdgeInsets)coverSheetSuppressAnimationForPointerInsets
{
  coverSheetSuppressAnimationForPointerTopEdgeInset = self->_coverSheetSuppressAnimationForPointerTopEdgeInset;
  coverSheetSuppressAnimationForPointerLeftEdgeInset = self->_coverSheetSuppressAnimationForPointerLeftEdgeInset;
  coverSheetSuppressAnimationForPointerBottomEdgeInset = self->_coverSheetSuppressAnimationForPointerBottomEdgeInset;
  coverSheetSuppressAnimationForPointerRightEdgeInset = self->_coverSheetSuppressAnimationForPointerRightEdgeInset;
  result.right = coverSheetSuppressAnimationForPointerRightEdgeInset;
  result.bottom = coverSheetSuppressAnimationForPointerBottomEdgeInset;
  result.left = coverSheetSuppressAnimationForPointerLeftEdgeInset;
  result.top = coverSheetSuppressAnimationForPointerTopEdgeInset;
  return result;
}

+ (id)settingsControllerModule
{
  v99[1] = *MEMORY[0x1E69E9840];
  v2 = SBFIsSAETappyHomeAffordanceAvailable();
  v3 = MEMORY[0x1E69C65E0];
  v4 = [MEMORY[0x1E69C6648] action];
  v5 = [v3 rowWithTitle:@"Restore Defaults" action:v4];
  v99[0] = v5;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:1];

  v94 = [MEMORY[0x1E69C6630] sectionWithRows:v70];
  v92 = [MEMORY[0x1E69C66B0] rowWithTitle:@"Enabled" valueKeyPath:@"enabled"];
  v98[0] = v92;
  v90 = [MEMORY[0x1E69C65F0] rowWithTitle:@"Initialization" valueKeyPath:@"initializationStyle"];
  v88 = [v90 possibleValues:&unk_1F3D3EE38 titles:&unk_1F3D3EE50];
  v98[1] = v88;
  v86 = [MEMORY[0x1E69C66B0] rowWithTitle:@"Remove On Hide" valueKeyPath:@"removeViewOnHide"];
  v98[2] = v86;
  v84 = [MEMORY[0x1E69C65F0] rowWithTitle:@"Edge Protect Override" valueKeyPath:@"edgeProtectOverride"];
  v83 = [v84 possibleValues:&unk_1F3D3EE68 titles:&unk_1F3D3EE80];
  v98[3] = v83;
  v82 = [MEMORY[0x1E69C65F0] rowWithTitle:@"Auto Hide Override" valueKeyPath:@"autoHideOverride"];
  v81 = [v82 possibleValues:&unk_1F3D3EE98 titles:&unk_1F3D3EEB0];
  v98[4] = v81;
  v80 = [MEMORY[0x1E69C6620] rowWithTitle:@"Auto Hide Time - Default" valueKeyPath:@"autoHideTime"];
  v98[5] = v80;
  v79 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"autoHideTime"];
  v78 = [v79 minValue:0.0 maxValue:10.0];
  v98[6] = v78;
  v77 = [MEMORY[0x1E69C6620] rowWithTitle:@"Auto Hide Time - App Request" valueKeyPath:@"autoHideTimeOnAppRequest"];
  v98[7] = v77;
  v76 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"autoHideTimeOnAppRequest"];
  v75 = [v76 minValue:0.0 maxValue:10.0];
  v98[8] = v75;
  v74 = [MEMORY[0x1E69C66B0] rowWithTitle:@"Reset Hide Timer On Rotation" valueKeyPath:@"resetAutoHideTimeOnRotation"];
  v98[9] = v74;
  v73 = [MEMORY[0x1E69C6620] rowWithTitle:@"Touch Unhide Delay" valueKeyPath:@"delayForUnhideOnTouch"];
  v98[10] = v73;
  v72 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"delayForUnhideOnTouch"];
  v71 = [v72 minValue:0.0 maxValue:3.0];
  v98[11] = v71;
  v69 = [MEMORY[0x1E69C6620] rowWithTitle:@"App Request Unhide Delay" valueKeyPath:@"delayForUnhideOnAppRequest"];
  v98[12] = v69;
  v68 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"delayForUnhideOnAppRequest"];
  v67 = [v68 minValue:0.0 maxValue:3.0];
  v98[13] = v67;
  v66 = [MEMORY[0x1E69C66B0] rowWithTitle:@"Visualize Grabber Hit-Test Area" valueKeyPath:@"visualizeHitTestRect"];
  v98[14] = v66;
  v65 = [MEMORY[0x1E69C66B0] rowWithTitle:@"Constrain Grabber Hit-Test Area" valueKeyPath:@"constrainHitTestRectToSafeAreaInset"];
  v98[15] = v65;
  v64 = [MEMORY[0x1E69C6620] rowWithTitle:@"Grabber Hit-Test Outset (Top)" valueKeyPath:@"hitTestOutsetTop"];
  v98[16] = v64;
  v63 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"hitTestOutsetTop"];
  v62 = [v63 minValue:0.0 maxValue:30.0];
  v98[17] = v62;
  v61 = [MEMORY[0x1E69C6620] rowWithTitle:@"Grabber Hit-Test Outset (Sides)" valueKeyPath:@"hitTestOutsetSides"];
  v98[18] = v61;
  v60 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"hitTestOutsetSides"];
  v59 = [v60 minValue:0.0 maxValue:60.0];
  v98[19] = v59;
  v58 = [MEMORY[0x1E69C6620] rowWithTitle:@"Grabber Hit-Test Outset (Double-Tap)" valueKeyPath:@"hitTestOutsetDoubleTap"];
  v57 = [MEMORY[0x1E696AE18] predicateWithValue:v2];
  v56 = [v58 condition:v57];
  v98[20] = v56;
  v55 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"hitTestOutsetDoubleTap"];
  v54 = [v55 minValue:0.0 maxValue:60.0];
  v53 = [MEMORY[0x1E696AE18] predicateWithValue:v2];
  v52 = [v54 condition:v53];
  v98[21] = v52;
  v51 = [MEMORY[0x1E69C66B0] rowWithTitle:@"Gate Single Tap Delivery" valueKeyPath:@"singleTapGatingEnabled"];
  v98[22] = v51;
  v50 = [MEMORY[0x1E69C6620] rowWithTitle:@"Bounce Translation" valueKeyPath:@"bounceTranslation"];
  v98[23] = v50;
  v49 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"bounceTranslation"];
  v48 = [v49 minValue:0.0 maxValue:5.0];
  v98[24] = v48;
  v47 = [MEMORY[0x1E69C6620] rowWithTitle:@"Bounce Reversal Delay" valueKeyPath:@"bounceReverseAnimationDelay"];
  v98[25] = v47;
  v46 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"bounceReverseAnimationDelay"];
  v45 = [v46 minValue:0.0 maxValue:1.0];
  v98[26] = v45;
  v44 = [MEMORY[0x1E69C6620] rowWithTitle:@"Cover Sheet Home Affordance Cursor - Top Inset" valueKeyPath:@"coverSheetHomeAffordanceCursorTopEdgeInset"];
  v98[27] = v44;
  v43 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"coverSheetHomeAffordanceCursorTopEdgeInset"];
  v42 = [v43 minValue:0.0 maxValue:10.0];
  v98[28] = v42;
  v41 = [MEMORY[0x1E69C6620] rowWithTitle:@"Cover Sheet Home Affordance Cursor - Left Inset" valueKeyPath:@"coverSheetHomeAffordanceCursorLeftEdgeInset"];
  v98[29] = v41;
  v40 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"coverSheetHomeAffordanceCursorLeftEdgeInset"];
  v39 = [v40 minValue:0.0 maxValue:10.0];
  v98[30] = v39;
  v38 = [MEMORY[0x1E69C6620] rowWithTitle:@"Cover Sheet Home Affordance Cursor - Bottom Inset" valueKeyPath:@"coverSheetHomeAffordanceCursorBottomEdgeInset"];
  v98[31] = v38;
  v37 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"coverSheetHomeAffordanceCursorBottomEdgeInset"];
  v36 = [v37 minValue:0.0 maxValue:10.0];
  v98[32] = v36;
  v35 = [MEMORY[0x1E69C6620] rowWithTitle:@"Cover Sheet Home Affordance Cursor - Right Inset" valueKeyPath:@"coverSheetHomeAffordanceCursorRightEdgeInset"];
  v98[33] = v35;
  v34 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"coverSheetHomeAffordanceCursorRightEdgeInset"];
  v33 = [v34 minValue:0.0 maxValue:10.0];
  v98[34] = v33;
  v32 = [MEMORY[0x1E69C6620] rowWithTitle:@"Cover Sheet Suppress Animation For Pointer - Top Inset" valueKeyPath:@"coverSheetSuppressAnimationForPointerTopEdgeInset"];
  v98[35] = v32;
  v31 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"coverSheetSuppressAnimationForPointerTopEdgeInset"];
  v6 = [v31 minValue:0.0 maxValue:10.0];
  v98[36] = v6;
  v7 = [MEMORY[0x1E69C6620] rowWithTitle:@"Cover Sheet Suppress Animation For Pointer - Left Inset" valueKeyPath:@"coverSheetSuppressAnimationForPointerLeftEdgeInset"];
  v98[37] = v7;
  v8 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"coverSheetSuppressAnimationForPointerLeftEdgeInset"];
  v9 = [v8 minValue:0.0 maxValue:10.0];
  v98[38] = v9;
  v10 = [MEMORY[0x1E69C6620] rowWithTitle:@"Cover Sheet Suppress Animation For Pointer - Bottom Inset" valueKeyPath:@"coverSheetSuppressAnimationForPointerBottomEdgeInset"];
  v98[39] = v10;
  v11 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"coverSheetSuppressAnimationForPointerBottomEdgeInset"];
  v12 = [v11 minValue:0.0 maxValue:10.0];
  v98[40] = v12;
  v13 = [MEMORY[0x1E69C6620] rowWithTitle:@"Cover Sheet Suppress Animation For Pointer - Right Inset" valueKeyPath:@"coverSheetSuppressAnimationForPointerRightEdgeInset"];
  v98[41] = v13;
  v14 = [MEMORY[0x1E69C6698] rowWithTitle:0 valueKeyPath:@"coverSheetSuppressAnimationForPointerRightEdgeInset"];
  v15 = [v14 minValue:0.0 maxValue:10.0];
  v98[42] = v15;
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:43];

  v93 = [MEMORY[0x1E69C6630] sectionWithRows:v95 title:@"Setup"];
  v91 = [MEMORY[0x1E69C6608] rowWithTitle:@"Bounce" childSettingsKeyPath:@"bounceAnimationSettings"];
  v97[0] = v91;
  v89 = [MEMORY[0x1E69C6608] rowWithTitle:@"Hide" childSettingsKeyPath:@"hideAnimationSettings"];
  v97[1] = v89;
  v87 = [MEMORY[0x1E69C6608] rowWithTitle:@"Unhide" childSettingsKeyPath:@"unhideAnimationSettings"];
  v97[2] = v87;
  v85 = [MEMORY[0x1E69C6608] rowWithTitle:@"Hide For Ownership" childSettingsKeyPath:@"hideForHomeGestureOwnershipAnimationSettings"];
  v97[3] = v85;
  v16 = [MEMORY[0x1E69C6608] rowWithTitle:@"Unhide For Ownership" childSettingsKeyPath:@"unhideForHomeGestureOwnershipAnimationSettings"];
  v97[4] = v16;
  v17 = [MEMORY[0x1E69C6608] rowWithTitle:@"Thin to Prominent" childSettingsKeyPath:@"thinToProminentAnimationSettings"];
  v97[5] = v17;
  v18 = [MEMORY[0x1E69C6608] rowWithTitle:@"Prominent to Thin" childSettingsKeyPath:@"prominentToThinAnimationSettings"];
  v97[6] = v18;
  v19 = [MEMORY[0x1E69C6608] rowWithTitle:@"Forced Prominent to Thin" childSettingsKeyPath:@"forcedProminentToThinAnimationSettings"];
  v97[7] = v19;
  v20 = [MEMORY[0x1E69C6608] rowWithTitle:@"Luma Response" childSettingsKeyPath:@"lumaResponseAnimationSettings"];
  v97[8] = v20;
  v21 = [MEMORY[0x1E69C6608] rowWithTitle:@"Initial Luma Response" childSettingsKeyPath:@"initialLumaResponseAnimationSettings"];
  v97[9] = v21;
  v22 = [MEMORY[0x1E69C6608] rowWithTitle:@"Edge Protect Rubberbanding" childSettingsKeyPath:@"edgeProtectAnimationSettings"];
  v97[10] = v22;
  v23 = [MEMORY[0x1E69C6608] rowWithTitle:@"Rotation: FadeOut" childSettingsKeyPath:@"rotationFadeOutAnimationSettings"];
  v97[11] = v23;
  v24 = [MEMORY[0x1E69C6608] rowWithTitle:@"Rotation: FadeIn" childSettingsKeyPath:@"rotationFadeInAnimationSettings"];
  v97[12] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:13];

  v26 = [MEMORY[0x1E69C6630] sectionWithRows:v25 title:@"Animations"];
  v27 = MEMORY[0x1E69C6630];
  v96[0] = v94;
  v96[1] = v93;
  v96[2] = v26;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:3];
  v29 = [v27 moduleWithTitle:0 contents:v28];

  return v29;
}

@end