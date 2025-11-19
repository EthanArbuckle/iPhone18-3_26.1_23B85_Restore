@interface SBWallpaperLegacyDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBWallpaperLegacyDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenWallpaperIdentifier"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"kSBProceduralWallpaperHomeDefaultKey" toDefaultValue:0 options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenWallpaperOptions"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"kSBProceduralWallpaperHomeOptionsKey" toDefaultValue:0 options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenWallpaperWasUserSet"];
  v6 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"kSBProceduralWallpaperHomeUserSetKey" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenWallpaperIdentifier"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"kSBProceduralWallpaperLockDefaultKey" toDefaultValue:0 options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenWallpaperOptions"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"kSBProceduralWallpaperLockOptionsKey" toDefaultValue:0 options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenWallpaperWasUserSet"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"kSBProceduralWallpaperLockUserSetKey" toDefaultValue:v6 options:1];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenParallaxFactor"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"SBWallpaperParallaxFactorHomeScreen" toDefaultValue:&unk_1F3D3F388 options:1];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenZoomScale"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"SBWallpaperZoomScaleHomeScreen" toDefaultValue:&unk_1F3D3F388 options:1];

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenCropRectString"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v12 withDefaultKey:@"SBWallpaperCropRectHomeScreenKey" toDefaultValue:0 options:1];

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenSupportsCropping"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v13 withDefaultKey:@"SBWallpaperScrollHomeScreenKey" toDefaultValue:v6 options:1];

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenMagnifyEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v14 withDefaultKey:@"SBWallpaperMagnifyHomeScreenKey" toDefaultValue:v6 options:1];

  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenPortrait"];
  v16 = MEMORY[0x1E695E118];
  [(BSAbstractDefaultDomain *)self _bindProperty:v15 withDefaultKey:@"SBWallpaperPortraitHomeScreenKey" toDefaultValue:MEMORY[0x1E695E118] options:1];

  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenWallpaperName"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v17 withDefaultKey:@"SBWallpaperNameHomeScreenKey" toDefaultValue:0 options:1];

  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenWallpaperKitData"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v18 withDefaultKey:@"SBWallpaperWallpaperKitDataHomeScreenKey" toDefaultValue:0 options:1];

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenParallaxFactor"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v19 withDefaultKey:@"SBWallpaperParallaxFactorLockScreen" toDefaultValue:&unk_1F3D3F388 options:1];

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenZoomScale"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v20 withDefaultKey:@"SBWallpaperZoomScaleLockScreen" toDefaultValue:&unk_1F3D3F388 options:1];

  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenCropRectString"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v21 withDefaultKey:@"SBWallpaperCropRectLockScreenKey" toDefaultValue:0 options:1];

  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenSupportsCropping"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v22 withDefaultKey:@"SBWallpaperScrollLockScreenKey" toDefaultValue:v6 options:1];

  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenMagnifyEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v23 withDefaultKey:@"SBWallpaperMagnifyLockScreenKey" toDefaultValue:v6 options:1];

  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenPortrait"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v24 withDefaultKey:@"SBWallpaperPortraitLockScreenKey" toDefaultValue:v16 options:1];

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenHasVideo"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v25 withDefaultKey:@"SBWallpaperHasVideoKey" toDefaultValue:v6 options:1];

  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenStillTimeInVideo"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v26 withDefaultKey:@"SBWallpaperStillTimeInVideoKey" toDefaultValue:&unk_1F3D3E940 options:1];

  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenWallpaperName"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v27 withDefaultKey:@"SBWallpaperNameLockScreenKey" toDefaultValue:0 options:1];

  v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenWallpaperKitData"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v28 withDefaultKey:@"SBWallpaperWallpaperKitDataLockScreenKey" toDefaultValue:0 options:1];

  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenColorData"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v29 withDefaultKey:@"SBWallpaperColorLockScreen" toDefaultValue:0 options:1];

  v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenColorData"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v30 withDefaultKey:@"SBWallpaperColorHomeScreen" toDefaultValue:0 options:1];

  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenColorName"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v31 withDefaultKey:@"SBWallpaperColorLockScreen" toDefaultValue:0 options:1];

  v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenColorName"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v32 withDefaultKey:@"SBWallpaperColorHomeScreen" toDefaultValue:0 options:1];

  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenImageHashData"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v33 withDefaultKey:@"SBWallpaperImageHashLockScreen" toDefaultValue:0 options:1];

  v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenImageHashData"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v34 withDefaultKey:@"SBWallpaperImageHashHomeScreen" toDefaultValue:0 options:1];

  v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lockScreenGradientData"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v35 withDefaultKey:@"SBWallpaperGradientLockScreen" toDefaultValue:0 options:1];

  v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeScreenGradientData"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v36 withDefaultKey:@"SBWallpaperGradientHomeScreen" toDefaultValue:0 options:1];
}

@end