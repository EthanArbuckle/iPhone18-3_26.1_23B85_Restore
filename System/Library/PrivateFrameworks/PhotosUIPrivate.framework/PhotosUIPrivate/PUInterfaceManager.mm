@interface PUInterfaceManager
+ (BOOL)shouldUseAccessibilityLargeTextLayoutWithTraitCollecton:(id)collecton;
+ (BOOL)shouldUsePhoneLayoutWithTraitCollection:(id)collection;
+ (PUInterfaceTheme)currentTheme;
+ (id)beginDisablingUserInteractionForReason:(int64_t)reason withExpectedTimeout:(double)timeout;
+ (void)_disabledUserInteractionRequestDidTimeOut:(id)out;
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
+ (void)endDisablingUserInteraction:(id)interaction;
@end

@implementation PUInterfaceManager

+ (BOOL)shouldUseAccessibilityLargeTextLayoutWithTraitCollecton:(id)collecton
{
  v4 = *MEMORY[0x1E69DDA98];
  collectonCopy = collecton;
  preferredContentSizeCategory = [v4 preferredContentSizeCategory];
  v7 = [self shouldUsePhoneLayoutWithTraitCollection:collectonCopy];

  if (v7)
  {
    LOBYTE(v7) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  }

  return v7;
}

+ (BOOL)shouldUsePhoneLayoutWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy horizontalSizeClass] == 1 || objc_msgSend(collectionCopy, "verticalSizeClass") == 1;

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

        [self endDisablingUserInteraction:*(*(&v8 + 1) + 8 * v7++)];
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

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForBurningInTrim
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForOverOneUpTransition
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForOneUpToPhotoEditorTransition
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForPhotoEditorComputingAutoEnhance
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForPhotoEditorWaitingToDismiss
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForPhotoEditorRevertingChanges
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForPhotoEditorSavingChanges
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForPhotoEditorToPhotoBrowserTransition
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForPhotoBrowserToPhotoEditorTransition
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForAlbumStackTransition
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForSearchSelectSuggestion
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForSearchSelectResult
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForBannerViewImagesJump
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForStartSlideshowFromGrid
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_handleInteractionDisablingTimeoutForPhotoBrowserZoomTransition
{
  if (PFOSVariantHasInternalUI())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"No call to +endDisablingUserInteraction: did occur in time for: %@", __disabledUserInteractionTokens}];
  }

  [self _handleInteractionDisablingTimeout];
}

+ (void)_disabledUserInteractionRequestDidTimeOut:(id)out
{
  anyObject = [__disabledUserInteractionTokens anyObject];
  switch([anyObject reason])
  {
    case 0:
      [self _handleInteractionDisablingTimeout];
      break;
    case 1:
      [self _handleInteractionDisablingTimeoutForPhotoBrowserZoomTransition];
      break;
    case 2:
      [self _handleInteractionDisablingTimeoutForStartSlideshowFromGrid];
      break;
    case 3:
      [self _handleInteractionDisablingTimeoutForBannerViewImagesJump];
      break;
    case 4:
      [self _handleInteractionDisablingTimeoutForSearchSelectResult];
      break;
    case 5:
      [self _handleInteractionDisablingTimeoutForSearchSelectSuggestion];
      break;
    case 6:
      [self _handleInteractionDisablingTimeoutForAlbumStackTransition];
      break;
    case 7:
      [self _handleInteractionDisablingTimeoutForPhotoBrowserToPhotoEditorTransition];
      break;
    case 8:
      [self _handleInteractionDisablingTimeoutForPhotoEditorToPhotoBrowserTransition];
      break;
    case 9:
      [self _handleInteractionDisablingTimeoutForOneUpToPhotoEditorTransition];
      goto LABEL_5;
    case 10:
LABEL_5:
      [self _handleInteractionDisablingTimeoutForOverOneUpTransition];
      break;
    case 11:
      [self _handleInteractionDisablingTimeoutForPhotoEditorSavingChanges];
      break;
    case 12:
      [self _handleInteractionDisablingTimeoutForPhotoEditorRevertingChanges];
      break;
    case 13:
      [self _handleInteractionDisablingTimeoutForPhotoEditorWaitingToDismiss];
      break;
    case 14:
      [self _handleInteractionDisablingTimeoutForPhotoEditorComputingAutoEnhance];
      break;
    case 16:
      [self _handleInteractionDisablingTimeoutForBurningInTrim];
      break;
    case 17:
      [self _handleInteractionDisablingTimeoutForRetouching];
      break;
    default:
      break;
  }
}

+ (void)endDisablingUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([__disabledUserInteractionTokens containsObject:?])
  {
    [__disabledUserInteractionTokens removeObject:interactionCopy];
    if (![__disabledUserInteractionTokens count])
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];
      [mEMORY[0x1E69DC668] endIgnoringInteractionEvents];
      [px_firstKeyWindow endDisablingInterfaceAutorotation];
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

+ (id)beginDisablingUserInteractionForReason:(int64_t)reason withExpectedTimeout:(double)timeout
{
  if (!reason)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUInterfaceManager.m" lineNumber:66 description:@"Need a valid interaction disabling reason."];
  }

  v7 = objc_alloc_init(_PUDisabledUserInteractionToken);
  [(_PUDisabledUserInteractionToken *)v7 setReason:reason];
  if (PFOSVariantHasInternalUI())
  {
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    v9 = [callStackSymbols description];

    [(_PUDisabledUserInteractionToken *)v7 setIdentifier:v9];
  }

  if (![__disabledUserInteractionTokens count])
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];
    [mEMORY[0x1E69DC668] beginIgnoringInteractionEvents];
    [px_firstKeyWindow beginDisablingInterfaceAutorotation];
    v12 = MEMORY[0x1E695DFF0];
    UIAnimationDragCoefficient();
    timeout = [v12 scheduledTimerWithTimeInterval:self target:sel__disabledUserInteractionRequestDidTimeOut_ selector:0 userInfo:0 repeats:v13 * timeout];
    v15 = __disabledUserInteractionTimeoutTimer;
    __disabledUserInteractionTimeoutTimer = timeout;
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
  interfaceThemeClass = [v2 interfaceThemeClass];

  if (!interfaceThemeClass)
  {
    interfaceThemeClass = objc_opt_class();
  }

  if (([currentTheme_currentTheme isMemberOfClass:interfaceThemeClass] & 1) == 0)
  {
    v4 = objc_alloc_init(interfaceThemeClass);
    v5 = currentTheme_currentTheme;
    currentTheme_currentTheme = v4;
  }

  v6 = currentTheme_currentTheme;

  return v6;
}

@end