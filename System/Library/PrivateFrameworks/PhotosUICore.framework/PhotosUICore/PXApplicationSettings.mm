@interface PXApplicationSettings
+ (PXApplicationSettings)sharedInstance;
+ (id)attributedStringTransformedForDisplay:(id)display;
+ (id)settingsControllerModule;
+ (id)stringTransformedForDisplay:(id)display;
- (BOOL)_wantsPseudoStringsForDisplay;
- (void)setDefaultValues;
@end

@implementation PXApplicationSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXApplicationSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXApplicationSettings *)self setDefaultNavigationTimeoutDuration:2.0];
  [(PXApplicationSettings *)self setWantsPseudostringsWithSpecialCharacters:0];
  [(PXApplicationSettings *)self setStringWithSpecialCharacters:@"นี้ लड्डू चाँद लड्डू चाँद"];
  [(PXApplicationSettings *)self setWantsPseudostringsWithIncreasedLength:0];
  [(PXApplicationSettings *)self setPseudoStringsLengthIncreaseFactor:2];
  [(PXApplicationSettings *)self setEnableSlideshowAction:0];
  [(PXApplicationSettings *)self setEnablePlayMovieAction:1];
  [(PXApplicationSettings *)self setShouldClearUndoStackAutomatically:1];
  [(PXApplicationSettings *)self setBackgroundThresholdDurationForUndoActionsInvalidation:480.0];
}

+ (PXApplicationSettings)sharedInstance
{
  if (sharedInstance_onceToken_114050 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_114050, &__block_literal_global_114051);
  }

  v3 = sharedInstance_sharedInstance_114052;

  return v3;
}

void __39__PXApplicationSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 applicationSettings];
  v1 = sharedInstance_sharedInstance_114052;
  sharedInstance_sharedInstance_114052 = v0;
}

- (BOOL)_wantsPseudoStringsForDisplay
{
  if ([(PXApplicationSettings *)self wantsPseudostringsWithSpecialCharacters])
  {
    return 1;
  }

  return [(PXApplicationSettings *)self wantsPseudostringsWithIncreasedLength];
}

+ (id)attributedStringTransformedForDisplay:(id)display
{
  displayCopy = display;
  v4 = +[PXApplicationSettings sharedInstance];
  if (![v4 _wantsPseudoStringsForDisplay])
  {
    v5 = displayCopy;
LABEL_3:

    goto LABEL_4;
  }

  v7 = [displayCopy length];

  v5 = displayCopy;
  if (v7)
  {
    v4 = +[PXApplicationSettings sharedInstance];
    v8 = [displayCopy mutableCopy];
    if ([v4 wantsPseudostringsWithIncreasedLength] && objc_msgSend(v4, "pseudoStringsLengthIncreaseFactor") >= 2)
    {
      v9 = 1;
      do
      {
        [v8 appendAttributedString:displayCopy];
        ++v9;
      }

      while (v9 < [v4 pseudoStringsLengthIncreaseFactor]);
    }

    if ([v4 wantsPseudostringsWithSpecialCharacters])
    {
      v10 = objc_alloc(MEMORY[0x1E696AAB0]);
      stringWithSpecialCharacters = [v4 stringWithSpecialCharacters];
      v12 = [v10 initWithString:stringWithSpecialCharacters];
      [v8 insertAttributedString:v12 atIndex:0];
    }

    v5 = [v8 copy];

    goto LABEL_3;
  }

LABEL_4:

  return v5;
}

+ (id)stringTransformedForDisplay:(id)display
{
  displayCopy = display;
  v4 = +[PXApplicationSettings sharedInstance];
  if (![v4 _wantsPseudoStringsForDisplay])
  {
    v5 = displayCopy;
LABEL_3:

    goto LABEL_4;
  }

  v7 = [displayCopy length];

  v5 = displayCopy;
  if (v7)
  {
    v4 = +[PXApplicationSettings sharedInstance];
    v5 = displayCopy;
    if ([v4 wantsPseudostringsWithIncreasedLength])
    {
      v5 = [displayCopy stringByPaddingToLength:objc_msgSend(displayCopy withString:"length") * objc_msgSend(v4 startingAtIndex:{"pseudoStringsLengthIncreaseFactor"), displayCopy, 0}];
    }

    if ([v4 wantsPseudostringsWithSpecialCharacters])
    {
      stringWithSpecialCharacters = [v4 stringWithSpecialCharacters];
      v9 = [stringWithSpecialCharacters stringByAppendingString:v5];

      v5 = v9;
    }

    goto LABEL_3;
  }

LABEL_4:

  return v5;
}

+ (id)settingsControllerModule
{
  v63[6] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v40 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A0];
  v57 = NSStringFromSelector(sel_defaultNavigationTimeoutDuration);
  v56 = [v3 rowWithTitle:@"Navigation Timeout" valueKeyPath:v57];
  v55 = [v56 minValue:0.0 maxValue:10.0];
  v54 = [v55 px_increment:0.2];
  v62 = v54;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
  v52 = [v2 sectionWithRows:v53 title:@"Durations"];
  v63[0] = v52;
  v4 = MEMORY[0x1E69C6638];
  v5 = MEMORY[0x1E69C66A8];
  v51 = NSStringFromSelector(sel_wantsPseudostringsWithSpecialCharacters);
  v50 = [v5 rowWithTitle:@"Special Characters" valueKeyPath:v51];
  v61[0] = v50;
  v6 = MEMORY[0x1E69C66A8];
  v49 = NSStringFromSelector(sel_wantsPseudostringsWithIncreasedLength);
  v48 = [v6 rowWithTitle:@"Increased Length" valueKeyPath:v49];
  v61[1] = v48;
  v7 = MEMORY[0x1E69C65F8];
  v47 = NSStringFromSelector(sel_pseudoStringsLengthIncreaseFactor);
  v46 = [v7 rowWithTitle:@"Factor" valueKeyPath:v47];
  v44 = [v46 px_possibleValues:&unk_1F1910C90];
  v8 = MEMORY[0x1E696AE18];
  v45 = NSStringFromSelector(sel_wantsPseudostringsWithIncreasedLength);
  v43 = [v8 predicateWithFormat:@"%K == YES", v45];
  v42 = [v44 condition:v43];
  v61[2] = v42;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];
  v38 = [v4 sectionWithRows:v39 title:@"Pseudo Strings"];
  v63[1] = v38;
  v9 = MEMORY[0x1E69C6638];
  v10 = MEMORY[0x1E69C66A8];
  v37 = NSStringFromSelector(sel_enableSlideshowAction);
  v36 = [v10 rowWithTitle:@"Slideshow (Legacy)" valueKeyPath:v37];
  v60[0] = v36;
  v11 = MEMORY[0x1E69C66A8];
  v35 = NSStringFromSelector(sel_enablePlayMovieAction);
  v34 = [v11 rowWithTitle:@"Play as Slideshow" valueKeyPath:v35];
  v60[1] = v34;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
  v32 = [v9 sectionWithRows:v33 title:@"Actions"];
  v63[2] = v32;
  v12 = MEMORY[0x1E69C6638];
  v13 = MEMORY[0x1E69C66A8];
  v31 = NSStringFromSelector(sel_shouldClearUndoStackAutomatically);
  v30 = [v13 rowWithTitle:@"Clear Undo After Background" valueKeyPath:v31];
  v59[0] = v30;
  v14 = MEMORY[0x1E69C66A0];
  v29 = NSStringFromSelector(sel_backgroundThresholdDurationForUndoActionsInvalidation);
  v28 = [v14 rowWithTitle:@"Max Background (seconds)" valueKeyPath:v29];
  v15 = [v28 minValue:0.0 maxValue:3600.0];
  v16 = [v15 px_increment:5.0];
  v59[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
  v18 = [v12 sectionWithRows:v17 title:@"Undo"];
  v63[3] = v18;
  v19 = MEMORY[0x1E69C6638];
  v20 = MEMORY[0x1E69C65E8];
  v21 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_124952];
  v22 = [v20 rowWithTitle:@"GreenTea Status" action:v21];
  v58 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  v24 = [v19 sectionWithRows:v23 title:@"GreenTea"];
  v63[4] = v24;
  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v63[5] = px_restoreDefaultsSection;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:6];
  v41 = [v40 moduleWithTitle:@"Application" contents:v26];

  return v41;
}

uint64_t __53__PXApplicationSettings_UI__settingsControllerModule__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = PLIsChinaSKU();
  v5 = MEMORY[0x1E696AEC0];
  v6 = @"NO";
  if (v4)
  {
    v6 = @"YES";
  }

  v7 = v6;
  v8 = [v5 stringWithFormat:@"Is device in GreenTea: %@", v7];

  v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"GreenTea Status" message:v8 preferredStyle:1];
  v10 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
  [v9 addAction:v10];

  [v3 presentViewController:v9 animated:1 completion:0];
  return 1;
}

@end