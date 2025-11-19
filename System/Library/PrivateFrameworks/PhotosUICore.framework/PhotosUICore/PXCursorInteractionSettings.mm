@interface PXCursorInteractionSettings
+ (PXCursorInteractionSettings)sharedInstance;
+ (id)settingsControllerModule;
- (double)paddingForZoomLevel:(int64_t)a3;
- (int64_t)cardInteractionOptions;
- (int64_t)gridInteractionOptions;
- (int64_t)interactionOptionsForZoomLevel:(int64_t)a3 isAllPhotosAspectFit:(BOOL)a4;
- (void)setDefaultValues;
@end

@implementation PXCursorInteractionSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXCursorInteractionSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXCursorInteractionSettings *)self setDampingRatio:0.7];
  [(PXCursorInteractionSettings *)self setYearsPadding:8.0];
  [(PXCursorInteractionSettings *)self setMonthsPadding:8.0];
  [(PXCursorInteractionSettings *)self setDaysPadding:0.0];
  [(PXCursorInteractionSettings *)self setAllPhotosAspectFitPadding:8.0];
  [(PXCursorInteractionSettings *)self setAllPhotosAspectFillPadding:0.0];
  [(PXCursorInteractionSettings *)self setAspectFitAnimationStyle:1];
  [(PXCursorInteractionSettings *)self setAspectFillAnimationStyle:0];
  [(PXCursorInteractionSettings *)self setEnableGridShadows:0];
  [(PXCursorInteractionSettings *)self setEnableGridLift:1];
  [(PXCursorInteractionSettings *)self setEnableCardShadows:0];
  [(PXCursorInteractionSettings *)self setEnableCardLift:1];
  [(PXCursorInteractionSettings *)self setEnableCuratedLibraryEffects:0];
  [(PXCursorInteractionSettings *)self setEnableDetailsEffect:0];
  [(PXCursorInteractionSettings *)self setEnableDaysEffect:0];
}

+ (PXCursorInteractionSettings)sharedInstance
{
  if (sharedInstance_onceToken_191478 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_191478, &__block_literal_global_191479);
  }

  v3 = sharedInstance_sharedInstance_191480;

  return v3;
}

void __45__PXCursorInteractionSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 cursorInteractionSettings];
  v1 = sharedInstance_sharedInstance_191480;
  sharedInstance_sharedInstance_191480 = v0;
}

+ (id)settingsControllerModule
{
  v66[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v32 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A0];
  v61 = NSStringFromSelector(sel_animationDuration);
  v60 = [v3 rowWithTitle:@"Animation Duration" valueKeyPath:v61];
  v59 = [v60 minValue:0.05 maxValue:1.0];
  v58 = [v59 px_increment:0.01];
  v65[0] = v58;
  v4 = MEMORY[0x1E69C66A0];
  v57 = NSStringFromSelector(sel_dampingRatio);
  v56 = [v4 rowWithTitle:@"Damping Ratio" valueKeyPath:v57];
  v55 = [v56 minValue:0.01 maxValue:2.0];
  v54 = [v55 px_increment:0.01];
  v65[1] = v54;
  v5 = MEMORY[0x1E69C66A0];
  v53 = NSStringFromSelector(sel_yearsPadding);
  v52 = [v5 rowWithTitle:@"Years Padding" valueKeyPath:v53];
  v51 = [v52 minValue:0.0 maxValue:20.0];
  v50 = [v51 px_increment:2.0];
  v65[2] = v50;
  v6 = MEMORY[0x1E69C66A0];
  v49 = NSStringFromSelector(sel_monthsPadding);
  v48 = [v6 rowWithTitle:@"Months Padding" valueKeyPath:v49];
  v47 = [v48 minValue:0.0 maxValue:20.0];
  v46 = [v47 px_increment:2.0];
  v65[3] = v46;
  v7 = MEMORY[0x1E69C66A0];
  v45 = NSStringFromSelector(sel_allPhotosAspectFitPadding);
  v44 = [v7 rowWithTitle:@"All Photos Aspect Fit Padding" valueKeyPath:v45];
  v43 = [v44 minValue:0.0 maxValue:20.0];
  v42 = [v43 px_increment:2.0];
  v65[4] = v42;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:5];
  v40 = [v2 sectionWithRows:v41 title:@"Curated Library"];
  v66[0] = v40;
  v8 = MEMORY[0x1E69C6638];
  v9 = MEMORY[0x1E69C66A8];
  v39 = NSStringFromSelector(sel_enableGridShadows);
  v38 = [v9 rowWithTitle:@"Enable Shadows" valueKeyPath:v39];
  v64[0] = v38;
  v10 = MEMORY[0x1E69C66A8];
  v37 = NSStringFromSelector(sel_enableGridLift);
  v36 = [v10 rowWithTitle:@"Enable Lift" valueKeyPath:v37];
  v64[1] = v36;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
  v34 = [v8 sectionWithRows:v35 title:@"Padded Grids"];
  v66[1] = v34;
  v11 = MEMORY[0x1E69C6638];
  v12 = MEMORY[0x1E69C66A8];
  v31 = NSStringFromSelector(sel_enableCardShadows);
  v30 = [v12 rowWithTitle:@"Enable Shadows" valueKeyPath:v31];
  v63[0] = v30;
  v13 = MEMORY[0x1E69C66A8];
  v29 = NSStringFromSelector(sel_enableCardLift);
  v28 = [v13 rowWithTitle:@"Enable Lift" valueKeyPath:v29];
  v63[1] = v28;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  v15 = [v11 sectionWithRows:v14 title:@"Cards"];
  v66[2] = v15;
  v16 = MEMORY[0x1E69C6638];
  v17 = MEMORY[0x1E69C66A8];
  v18 = NSStringFromSelector(sel_enableCuratedLibraryEffects);
  v19 = [v17 rowWithTitle:@"Enable Curated Library" valueKeyPath:v18];
  v62[0] = v19;
  v20 = MEMORY[0x1E69C66A8];
  v21 = NSStringFromSelector(sel_enableDetailsEffect);
  v22 = [v20 rowWithTitle:@"Enable Details View" valueKeyPath:v21];
  v62[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  v24 = [v16 sectionWithRows:v23 title:@"Enablement"];
  v66[3] = v24;
  v25 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v66[4] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:5];
  v33 = [v32 moduleWithTitle:@"Cursor Interaction" contents:v26];

  return v33;
}

- (double)paddingForZoomLevel:(int64_t)a3
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      return 0.0;
    }

    if (a3 != 1)
    {
      goto LABEL_20;
    }

    [(PXCursorInteractionSettings *)self yearsPadding];
  }

  else
  {
    switch(a3)
    {
      case 2:

        [(PXCursorInteractionSettings *)self monthsPadding];
        break;
      case 3:

        [(PXCursorInteractionSettings *)self daysPadding];
        break;
      case 4:

        [(PXCursorInteractionSettings *)self allPhotosAspectFitPadding];
        return result;
      default:
LABEL_20:
        v13 = v4;
        v14 = v3;
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"PXCursorInteractionSettings.m" lineNumber:90 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  return result;
}

- (int64_t)interactionOptionsForZoomLevel:(int64_t)a3 isAllPhotosAspectFit:(BOOL)a4
{
  if (a3 <= 2)
  {
    if ((a3 - 1) < 2)
    {

      return [(PXCursorInteractionSettings *)self cardInteractionOptions];
    }

    if (!a3)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (a3 == 3)
  {
    return 0;
  }

  if (a3 != 4)
  {
LABEL_14:
    v14 = v5;
    v15 = v4;
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCursorInteractionSettings.m" lineNumber:74 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (!a4)
  {
    return 0;
  }

  return [(PXCursorInteractionSettings *)self gridInteractionOptions];
}

- (int64_t)cardInteractionOptions
{
  v3 = [(PXCursorInteractionSettings *)self enableCardShadows];
  if ([(PXCursorInteractionSettings *)self enableCardLift])
  {
    return v3 | 2;
  }

  else
  {
    return v3;
  }
}

- (int64_t)gridInteractionOptions
{
  v3 = [(PXCursorInteractionSettings *)self enableGridShadows];
  if ([(PXCursorInteractionSettings *)self enableGridLift])
  {
    return v3 | 2;
  }

  else
  {
    return v3;
  }
}

@end