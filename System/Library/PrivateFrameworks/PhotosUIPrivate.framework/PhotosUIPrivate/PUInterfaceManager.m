@interface PUInterfaceManager
+ (BOOL)shouldUseAccessibilityLargeTextLayoutWithTraitCollecton:(id)a3;
+ (BOOL)shouldUsePhoneLayoutWithTraitCollection:(id)a3;
+ (PUInterfaceTheme)currentTheme;
+ (id)beginDisablingUserInteractionForReason:(int64_t)a3 withExpectedTimeout:(double)a4;
+ (void)_disabledUserInteractionRequestDidTimeOut:(id)a3;
+ (void)_handleInteractionDisablingTimeout;
+ (void)_handleInteractionDisablingTimeoutForAlbumStackTransition;
+ (void)_handleInteractionDisablingTimeoutForBannerViewImagesJump;
+ (void)_handleInteractionDisablingTimeoutForBurningInTrim;
+ (void)_handleInteractionDisablingTimeoutForOneUpToPhotoEditorTransition;
+ (void)_handleInteractionDisablingTimeoutForOverOneUpTransition;
+ (void)_handleInteractionDisablingTimeoutForPhotoBrowserToPhotoEditorTransition;
+ (void)_handleInteractionDisablingTimeoutForPhotoBrowserZoomTransition;
+ (void)_handleInteractionDisablingTimeoutForPhotoEditorComputingAutoEnhance;
+ (void)_handleInteractionDisablingTimeoutForPhotoEditorRevertingChanges;
+ (void)_handleInteractionDisablingTimeoutForPhotoEditorSavingChanges;
+ (void)_handleInteractionDisablingTimeoutForPhotoEditorToPhotoBrowserTransition;
+ (void)_handleInteractionDisablingTimeoutForPhotoEditorWaitingToDismiss;
+ (void)_handleInteractionDisablingTimeoutForRetouching;
+ (void)_handleInteractionDisablingTimeoutForSearchSelectResult;
+ (void)_handleInteractionDisablingTimeoutForSearchSelectSuggestion;
+ (void)_handleInteractionDisablingTimeoutForStartSlideshowFromGrid;
+ (void)endDisablingUserInteraction:(id)a3;
@end

@implementation PUInterfaceManager

+ (BOOL)shouldUseAccessibilityLargeTextLayoutWithTraitCollecton:(id)a3
{
  v4 = *MEMORY[0x1E69DDA98];
  v5 = a3;
  v6 = [v4 preferredContentSizeCategory];
  v7 = [a1 shouldUsePhoneLayoutWithTraitCollection:v5];

  if (v7)
  {
    LOBYTE(v7) = UIContentSizeCategoryIsAccessibilityCategory(v6);
  }

  return v7;
}

+ (BOOL)shouldUsePhoneLayoutWithTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 horizontalSizeClass] == 1 || objc_msgSend(v3, "verticalSizeClass") == 1;

  return v4;
}

+ (void)_handleInteractionDisablingTimeout
{
  v13 = *MEMORY[0x1E69E9840];
  NSLog(&cfstr_DisabledUserIn.isa, a2);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [__disabledUserInteractionTokens copy];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [a1 endDisablingUserInteraction:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (void)_handleInteractionDisablingTimeoutForRetouching
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForBurningInTrim
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForOverOneUpTransition
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForOneUpToPhotoEditorTransition
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForPhotoEditorComputingAutoEnhance
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForPhotoEditorWaitingToDismiss
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForPhotoEditorRevertingChanges
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForPhotoEditorSavingChanges
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForPhotoEditorToPhotoBrowserTransition
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForPhotoBrowserToPhotoEditorTransition
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForAlbumStackTransition
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForSearchSelectSuggestion
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForSearchSelectResult
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForBannerViewImagesJump
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForStartSlideshowFromGrid
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForPhotoBrowserZoomTransition
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [a1 _handleInteractionDisablingTimeout];
}

+ (void)_disabledUserInteractionRequestDidTimeOut:(id)a3
{
  v4 = [__disabledUserInteractionTokens anyObject];
  switch([v4 reason])
  {
    case 0:
      [a1 _handleInteractionDisablingTimeout];
      break;
    case 1:
      [a1 _handleInteractionDisablingTimeoutForPhotoBrowserZoomTransition];
      break;
    case 2:
      [a1 _handleInteractionDisablingTimeoutForStartSlideshowFromGrid];
      break;
    case 3:
      [a1 _handleInteractionDisablingTimeoutForBannerViewImagesJump];
      break;
    case 4:
      [a1 _handleInteractionDisablingTimeoutForSearchSelectResult];
      break;
    case 5:
      [a1 _handleInteractionDisablingTimeoutForSearchSelectSuggestion];
      break;
    case 6:
      [a1 _handleInteractionDisablingTimeoutForAlbumStackTransition];
      break;
    case 7:
      [a1 _handleInteractionDisablingTimeoutForPhotoBrowserToPhotoEditorTransition];
      break;
    case 8:
      [a1 _handleInteractionDisablingTimeoutForPhotoEditorToPhotoBrowserTransition];
      break;
    case 9:
      [a1 _handleInteractionDisablingTimeoutForOneUpToPhotoEditorTransition];
      goto LABEL_5;
    case 10:
LABEL_5:
      [a1 _handleInteractionDisablingTimeoutForOverOneUpTransition];
      break;
    case 11:
      [a1 _handleInteractionDisablingTimeoutForPhotoEditorSavingChanges];
      break;
    case 12:
      [a1 _handleInteractionDisablingTimeoutForPhotoEditorRevertingChanges];
      break;
    case 13:
      [a1 _handleInteractionDisablingTimeoutForPhotoEditorWaitingToDismiss];
      break;
    case 14:
      [a1 _handleInteractionDisablingTimeoutForPhotoEditorComputingAutoEnhance];
      break;
    case 16:
      [a1 _handleInteractionDisablingTimeoutForBurningInTrim];
      break;
    case 17:
      [a1 _handleInteractionDisablingTimeoutForRetouching];
      break;
    default:
      break;
  }
}

+ (void)endDisablingUserInteraction:(id)a3
{
  v6 = a3;
  if ([__disabledUserInteractionTokens containsObject:?])
  {
    [__disabledUserInteractionTokens removeObject:v6];
    if (![__disabledUserInteractionTokens count])
    {
      v3 = [MEMORY[0x1E69DC668] sharedApplication];
      v4 = [v3 px_firstKeyWindow];
      [v3 endIgnoringInteractionEvents];
      [v4 endDisablingInterfaceAutorotation];
      [__disabledUserInteractionTimeoutTimer invalidate];
      v5 = __disabledUserInteractionTimeoutTimer;
      __disabledUserInteractionTimeoutTimer = 0;
    }
  }

  else if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Call to +endDisablingUserInteraction: without corresponding call to +beginDisablingUserInteraction"];
  }

  else
  {
    NSLog(&cfstr_IgnoreUnbalana.isa);
  }
}

+ (id)beginDisablingUserInteractionForReason:(int64_t)a3 withExpectedTimeout:(double)a4
{
  if (!a3)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PUInterfaceManager.m" lineNumber:66 description:@"Need a valid interaction disabling reason."];
  }

  v7 = objc_alloc_init(_PUDisabledUserInteractionToken);
  [(_PUDisabledUserInteractionToken *)v7 setReason:a3];
  if (PFOSVariantHasInternalUI())
  {
    v8 = [MEMORY[0x1E696AF00] callStackSymbols];
    v9 = [v8 description];

    [(_PUDisabledUserInteractionToken *)v7 setIdentifier:v9];
  }

  if (![__disabledUserInteractionTokens count])
  {
    v10 = [MEMORY[0x1E69DC668] sharedApplication];
    v11 = [v10 px_firstKeyWindow];
    [v10 beginIgnoringInteractionEvents];
    [v11 beginDisablingInterfaceAutorotation];
    v12 = MEMORY[0x1E695DFF0];
    UIAnimationDragCoefficient();
    v14 = [v12 scheduledTimerWithTimeInterval:a1 target:sel__disabledUserInteractionRequestDidTimeOut_ selector:0 userInfo:0 repeats:v13 * a4];
    v15 = __disabledUserInteractionTimeoutTimer;
    __disabledUserInteractionTimeoutTimer = v14;
  }

  v16 = __disabledUserInteractionTokens;
  if (!__disabledUserInteractionTokens)
  {
    v17 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:2];
    v18 = __disabledUserInteractionTokens;
    __disabledUserInteractionTokens = v17;

    v16 = __disabledUserInteractionTokens;
  }

  [v16 addObject:v7];

  return v7;
}

+ (PUInterfaceTheme)currentTheme
{
  v2 = +[PURootSettings sharedInstance];
  v3 = [v2 interfaceThemeClass];

  if (!v3)
  {
    v3 = objc_opt_class();
  }

  if (([currentTheme_currentTheme isMemberOfClass:v3] & 1) == 0)
  {
    v4 = objc_alloc_init(v3);
    v5 = currentTheme_currentTheme;
    currentTheme_currentTheme = v4;
  }

  v6 = currentTheme_currentTheme;

  return v6;
}

@end