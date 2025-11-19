@interface UITextField
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3;
- (BOOL)_allowsChangingFirstResponderForFocusUpdateWithContext:(id)a3;
- (BOOL)_canDrawContent;
- (BOOL)_delegateShouldBeginEditing;
- (BOOL)_delegateShouldChangeCharactersInTextStorageRanges:(id)a3 replacementString:(id)a4 delegateCares:(BOOL *)a5;
- (BOOL)_delegateShouldClear;
- (BOOL)_delegateShouldEndEditing;
- (BOOL)_delegateShouldScrollToVisibleWhenBecomingFirstResponder;
- (BOOL)_finishResignFirstResponder;
- (BOOL)_hasContent;
- (BOOL)_hasFloatingFieldEditor;
- (BOOL)_implementsEditMenu;
- (BOOL)_inPopover;
- (BOOL)_inVibrantContentView;
- (BOOL)_isAccessoryViewAnimatable:(id)a3;
- (BOOL)_isDisplayingLookupViewController;
- (BOOL)_isDisplayingReferenceLibraryViewController;
- (BOOL)_isDisplayingShareViewController;
- (BOOL)_isDisplayingShortcutViewController;
- (BOOL)_isDisplayingTextService;
- (BOOL)_isPasscodeStyle;
- (BOOL)_isShowingPlaceholder;
- (BOOL)_isShowingPrefix;
- (BOOL)_ownsInputAccessoryView;
- (BOOL)_partsShouldBeMini;
- (BOOL)_restoreFirstResponder;
- (BOOL)_shouldAnimateTransitionForAccessoryView:(id)a3;
- (BOOL)_shouldCollectAsKeyView;
- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)a3;
- (BOOL)_shouldObscureInput;
- (BOOL)_shouldResignOnEditingDidEndOnExit;
- (BOOL)_shouldShrinkPlaceholderToFitForAccessibility;
- (BOOL)_shouldUnobscureTextWithContentCover;
- (BOOL)_showsBackgroundCoverView;
- (BOOL)_showsClearButton:(BOOL)a3;
- (BOOL)_showsClearButtonWhenNonEmpty:(BOOL)a3;
- (BOOL)_showsContentCoverView;
- (BOOL)_showsLeftView;
- (BOOL)_showsRightView;
- (BOOL)_showsTrailingView;
- (BOOL)_supportsImagePasteCached;
- (BOOL)_textNeedsSanitizing:(id)a3;
- (BOOL)_wantsBaselineUpdatingFollowingConstraintsPass;
- (BOOL)automaticallyAdjustsWritingDirection;
- (BOOL)becomeFirstResponder;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canBecomeFocused;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)drawTextInRectIfNeeded:(CGRect)a3;
- (BOOL)fieldEditor:(id)a3 shouldInsertText:(id)a4 replacingRanges:(id)a5;
- (BOOL)fieldEditorShouldExtendCaretHeight:(id)a3;
- (BOOL)hasMarkedText;
- (BOOL)hasSelection;
- (BOOL)hasText;
- (BOOL)isEditing;
- (BOOL)isTextDragActive;
- (BOOL)isTextDropActive;
- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5;
- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRanges:(id)a4 replacementText:(id)a5;
- (BOOL)keyboardInputChanged:(id)a3;
- (BOOL)keyboardInputShouldDelete:(id)a3;
- (BOOL)resignFirstResponder;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)supportsAdaptiveImageGlyph;
- (CGPoint)_originForTextFieldLabel:(id)a3;
- (CGPoint)_scrollOffset;
- (CGPoint)constrainedPoint:(CGPoint)a3;
- (CGPoint)contentOffsetForSameViewDrops;
- (CGPoint)drawingScale;
- (CGPoint)textContainerOrigin;
- (CGRect)_availableTextRectExcludingButtonsForBounds:(CGRect)a3;
- (CGRect)_availableTextRectForBounds:(CGRect)a3 forEditing:(BOOL)a4;
- (CGRect)_backgroundBounds;
- (CGRect)_baselineLeftViewRectForBounds:(CGRect)a3;
- (CGRect)_boundingRectForRange:(id)a3;
- (CGRect)_clipRectForFadedEdges;
- (CGRect)_prefixFrame;
- (CGRect)_responderExternalTouchRectForWindow:(id)a3;
- (CGRect)_responderSelectionRectForWindow:(id)a3;
- (CGRect)_selectionClipRect;
- (CGRect)_suffixFrame;
- (CGRect)_textCanvasViewFrameIncludingContentInsetsFromFontsWhenNotContainedByFieldEditor;
- (CGRect)adjustedCaretRectForCaretRect:(CGRect)a3;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)clearButtonRect;
- (CGRect)clearButtonRectForBounds:(CGRect)bounds;
- (CGRect)closestCaretRectInMarkedTextRangeForPoint:(CGPoint)a3;
- (CGRect)editRect;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)firstRectForRange:(id)a3;
- (CGRect)frameForDictationResultPlaceholder:(id)a3;
- (CGRect)iconRect;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (CGSize)_clearButtonSize:(CGRect)a3;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)_leftViewOffset;
- (CGSize)_rightViewOffset;
- (CGSize)_textSize;
- (CGSize)_textSizeUsingFullFontSize:(BOOL)a3;
- (CGSize)_visionOverrideNaturalHeight:(CGSize)a3;
- (CGSize)clearButtonOffset;
- (CGSize)shadowOffset;
- (Class)_defaultiOSBackgroundProviderClass;
- (Class)_intelligenceBaseClass;
- (Class)_preferredBackgroundProviderClass;
- (NSArray)_selectedRanges;
- (NSArray)attributedPlaceholders;
- (NSArray)placeholders;
- (NSAttributedString)attributedPlaceholder;
- (NSAttributedString)attributedText;
- (NSDictionary)linkTextAttributes;
- (NSDictionary)typingAttributes;
- (NSLayoutManager)layoutManager;
- (NSString)description;
- (NSString)placeholder;
- (NSString)searchText;
- (NSString)text;
- (NSTextContainer)textContainer;
- (NSTextStorage)textStorage;
- (UIColor)selectionHighlightColor;
- (UIDragInteraction)textDragInteraction;
- (UIDropInteraction)textDropInteraction;
- (UIEdgeInsets)_padding;
- (UIEdgeInsets)_visionOverrideHorizontalInsets:(UIEdgeInsets)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)textContainerInset;
- (UIFieldEditor)_fieldEditor;
- (UITextBorderStyle)borderStyle;
- (UITextDragDelegate)textDragDelegate;
- (UITextDropDelegate)textDropDelegate;
- (UITextField)initWithCoder:(id)a3;
- (UITextField)initWithFrame:(CGRect)a3;
- (UITextFieldViewMode)leftViewMode;
- (UITextFieldViewMode)rightViewMode;
- (UITextInputAssistantItem)inputAssistantItem;
- (UITextInputDelegate)inputDelegate;
- (UITextInputTokenizer)tokenizer;
- (UITextPasteDelegate)pasteDelegate;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (UITextRange)selectedTextRange;
- (UIView)_backgroundView;
- (UIView)inputAccessoryView;
- (UIView)leftView;
- (UIView)recentsAccessoryView;
- (UIView)rightView;
- (UIView)textInputView;
- (_NSRange)_rangeForClearButton;
- (_NSRange)_rangeForSetText;
- (_NSRange)_unobscuredSecureRange;
- (_NSRange)_visibleRangeWithLayout:(BOOL)a3;
- (_NSRange)fieldEditor:(id)a3 willChangeSelectionFromCharacterRange:(_NSRange)a4 toCharacterRange:(_NSRange)a5;
- (_NSRange)insertFilteredText:(id)a3;
- (_NSRange)selectionRange;
- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6;
- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 nextToNeighbor:(id)a5 edge:(int)a6 attribute:(int64_t)a7 multiplier:(double)a8;
- (double)_backgroundStrokeWidth;
- (double)_baselineOffsetForLast:(BOOL)a3 autolayoutOnly:(BOOL)a4;
- (double)_clearButtonMarginX;
- (double)_clearButtonPadX;
- (double)_fieldEditorHeight;
- (double)_fullFontSize;
- (double)_passcodeStyleAlpha;
- (double)_roundedRectBackgroundCornerRadius;
- (double)actualMinimumFontSize;
- (float)_marginTop;
- (float)_marginTopForBounds:(CGRect)a3;
- (float)_newFontSize:(float)a3 maxSize:(float)a4;
- (id)_NSTextRangeFromNSRange:(_NSRange)a3;
- (id)_activityItemsConfigurationAtLocation:(CGPoint)a3;
- (id)_attributedStringForInsertionOfAttributedString:(id)a3;
- (id)_attributedText;
- (id)_backgroundFillColor;
- (id)_backgroundStrokeColor;
- (id)_baselineCalculatorSourceCoordinateSpace;
- (id)_clearButtonImageForState:(unint64_t)a3;
- (id)_contentSnapshot;
- (id)_copyFont:(id)a3 newSize:(float)a4 maxSize:(float)a5;
- (id)_defaultFont;
- (id)_defaultPromptString;
- (id)_dictationInterpretations;
- (id)_editingProcessor;
- (id)_effectivePasteConfiguration;
- (id)_encodableSubviews;
- (id)_fieldEditorHostAllowingCreation:(BOOL)a3;
- (id)_implicitPasteConfigurationClasses;
- (id)_initWithFrame:(CGRect)a3 textLayoutManagerEnabled:(BOOL)a4;
- (id)_inputController;
- (id)_interactionState;
- (id)_internalTextLayoutController;
- (id)_placeholderColor;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4;
- (id)_preferredMetricsProvider;
- (id)_proxyTextInput;
- (id)_replaceRange:(id)a3 withAttributedText:(id)a4 updatingSelection:(BOOL)a5;
- (id)_systemBackgroundView;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_text;
- (id)_textGeometry;
- (id)_tvTypingAttributes;
- (id)_uiktest_placeholderLabelColor;
- (id)_viewForLoweringBaselineLayoutAttribute:(int)a3;
- (id)_visualSelectionRangeForExtent:(id)a3 forPoint:(CGPoint)a4 fromPosition:(id)a5 inDirection:(int64_t)a6;
- (id)annotatedSubstringForRange:(id)a3;
- (id)attributedTextInRange:(id)a3;
- (id)automaticallySelectedOverlay;
- (id)backgroundColor;
- (id)characterRangeAtPoint:(CGPoint)a3;
- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4;
- (id)clearButton;
- (id)closestPositionToPoint:(CGPoint)a3;
- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4;
- (id)createPlaceholderLabelWithFont:(id)a3 andTextAlignment:(int64_t)a4;
- (id)createTextLabelWithTextColor:(id)a3;
- (id)customOverlayContainer;
- (id)defaultClearButtonImageForState:(unint64_t)a3;
- (id)delegate;
- (id)documentFragmentForPasteboardItemAtIndex:(int64_t)a3;
- (id)editMenuForTextRange:(id)a3 suggestedActions:(id)a4;
- (id)fieldEditor:(id)a3 willChangeSelectionFromCharacterRanges:(id)a4 toCharacterRanges:(id)a5;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)insertDictationResultPlaceholder;
- (id)insertTextPlaceholderWithSize:(CGSize)a3;
- (id)largeContentTitle;
- (id)metadataDictionariesForDictationResults;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)obtainSelectionGrabberSuppressionAssertion;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5;
- (id)positionFromPosition:(id)a3 offset:(int64_t)a4;
- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4;
- (id)rangeWithTextAlternatives:(id *)a3 atPosition:(id)a4;
- (id)selectedAttributedText;
- (id)selectedText;
- (id)selectionContainerView;
- (id)selectionRectsForRange:(id)a3;
- (id)supportedPasteboardTypesForCurrentSelection;
- (id)textInRange:(id)a3;
- (id)textInputTraits;
- (id)textLabel;
- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4;
- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4;
- (id)undoManager;
- (id)valueForKey:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (id)willGenerateCancelPreview;
- (int)textSelectionBehavior;
- (int64_t)_blurEffectStyle;
- (int64_t)_blurEffectStyleForAppearance;
- (int64_t)_currentTextAlignment;
- (int64_t)_keyboardAppearance;
- (int64_t)_systemDefaultFocusGroupPriority;
- (int64_t)_userInterfaceStyle;
- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4;
- (int64_t)comparePosition:(id)a3 toPosition:(id)a4;
- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4;
- (unint64_t)_textLengthToDeleteBeforeSelectedRangeForSmartDelete;
- (void)__resumeBecomeFirstResponder;
- (void)_activateSelectionView;
- (void)_addFieldEditorToView;
- (void)_addShortcut:(id)a3;
- (void)_addTextCanvasViewAdjustingFrame:(BOOL)a3;
- (void)_adjustFontForAccessibilityTraits:(BOOL)a3;
- (void)_applicableContentOutsetsFromFontsOversize:(int)a3 extremeSizing:;
- (void)_applyHighlightedAnimated:(BOOL)a3;
- (void)_attachFieldEditor;
- (void)_backgroundProviderClassOrImageBackgroundProviderClass:(void *)a1;
- (void)_becomeFirstResponder;
- (void)_clearButtonClicked:(id)a3;
- (void)_clearSelectionUI;
- (void)_contentCoverStateDidChange;
- (void)_createInteractionAssistant;
- (void)_define:(id)a3;
- (void)_deleteBackwardAndNotify:(BOOL)a3;
- (void)_detachFieldEditorDiscardingEdits:(BOOL)a3 animated:(BOOL)a4;
- (void)_detectCustomDrawing;
- (void)_didAttachFieldEditor;
- (void)_didChangeSecureTextEntry;
- (void)_didDetachFieldEditor;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_didUpdateAfterDetachingFieldEditor;
- (void)_drawTextInRect:(CGRect)a3 forLabel:(id)a4;
- (void)_enabledDidChangeAnimated:(BOOL)a3;
- (void)_encodeBackgroundColorWithCoder:(id)a3;
- (void)_ensureSelectionContainerViewSubviewOrdering;
- (void)_forceObscureAllText;
- (void)_highlightedDidChangeAnimated:(BOOL)a3;
- (void)_increaseContrastSettingChanged:(id)a3;
- (void)_initIncreasedContrastNotifications;
- (void)_initTextCanvasView;
- (void)_initTextLayoutController;
- (void)_initTextStorage;
- (void)_initTraitChangeRegistrations;
- (void)_initialScrollDidFinish:(id)a3;
- (void)_insertAttributedText:(id)a3 withAnimation:(int64_t)a4 completion:(id)a5;
- (void)_insertAttributedTextWithoutClosingTyping:(id)a3;
- (void)_installSelectGestureRecognizer;
- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4;
- (void)_invalidateAfterUpdatingEditingAttributes;
- (void)_invalidateAllGlyphsAndTextLayout;
- (void)_invalidateBackgroundProviderForced:(BOOL)a3;
- (void)_invalidateCachedDefaultClearButtonImages;
- (void)_invalidateDefaultFont;
- (void)_invalidateDefaultFullFontSize;
- (void)_invalidateMetricsProvider;
- (void)_invalidatePasscodeStyleFromStyle:(BOOL)a3;
- (void)_layoutContentAndExtras;
- (void)_layoutContentOnly;
- (void)_layoutFieldEditor;
- (void)_layoutLabels;
- (void)_legibilityWeightDidChange;
- (void)_logWarningForMenuControllerUsage;
- (void)_nonDestructivelyResignFirstResponder;
- (void)_noteThatKeyboardAppearanceHasChanged;
- (void)_notifyDidBeginEditing;
- (void)_notifyDidEndEditing;
- (void)_notifySystemKeyboardOfAppearanceChange;
- (void)_pasteSessionDidFinish:(id)a3;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_promptForReplace:(id)a3;
- (void)_propagateCuiProperties;
- (void)_removeFieldEditorAndHost;
- (void)_replaceRange:(id)a3 withAttributedText:(id)a4 usingAnimation:(int64_t)a5 completion:(id)a6;
- (void)_replaceRangeUsingColorWipe:(id)a3 withAttributedText:(id)a4 completion:(id)a5;
- (void)_resetSelectionUI;
- (void)_resignFirstResponder;
- (void)_sanitizeText:(id)a3;
- (void)_scrollRangeToVisible:(_NSRange)a3 animated:(BOOL)a4;
- (void)_selectGestureChanged:(id)a3;
- (void)_selectionMayChange:(id)a3;
- (void)_setActualLeftView:(id)a3;
- (void)_setActualLeftViewMode:(int64_t)a3;
- (void)_setActualRightView:(id)a3;
- (void)_setActualRightViewMode:(int64_t)a3;
- (void)_setAttributedPlaceholder:(id)a3;
- (void)_setAttributedText:(id)a3 setCaretSelectionAfterText:(BOOL)a4;
- (void)_setAttributedTextOnFieldEditor:(id)a3 setCaretSelectionAfterText:(BOOL)a4;
- (void)_setBackgroundCoverView:(id)a3;
- (void)_setBackgroundCoverViewMode:(int64_t)a3;
- (void)_setBackgroundFillColor:(id)a3;
- (void)_setBackgroundProvider:(id)a3;
- (void)_setBackgroundStrokeColor:(id)a3;
- (void)_setBackgroundStrokeWidth:(double)a3;
- (void)_setBlurEnabled:(BOOL)a3;
- (void)_setContentCoverUnsecuresText:(BOOL)a3;
- (void)_setContentCoverView:(id)a3;
- (void)_setContentCoverViewMode:(int64_t)a3;
- (void)_setCuiCatalog:(id)a3;
- (void)_setCuiStyleEffectConfiguration:(id)a3;
- (void)_setCursorAccessories:(id)a3;
- (void)_setDisableFocus:(BOOL)a3;
- (void)_setEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)_setExtremeSizingEnabled:(BOOL)a3;
- (void)_setForcesClearButtonHighContrastAppearance:(BOOL)a3;
- (void)_setForegroundViewsAlpha:(double)a3;
- (void)_setFullFontSize:(id)a3;
- (void)_setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)_setInteractionState:(id)a3;
- (void)_setLeadingPadding:(double)a3;
- (void)_setLeftViewOffset:(CGSize)a3;
- (void)_setMetricsProvider:(id)a3;
- (void)_setOverridePasscodeStyle:(BOOL)a3;
- (void)_setOverridePlaceholder:(id)a3 alignment:(int64_t)a4;
- (void)_setPadding:(UIEdgeInsets)a3;
- (void)_setPasscodeStyleAlpha:(double)a3;
- (void)_setPlaceholder:(id)a3;
- (void)_setPrefix:(id)a3;
- (void)_setRightViewOffset:(CGSize)a3;
- (void)_setRoundedRectBackgroundCornerRadius:(double)a3;
- (void)_setSelectedRanges:(id)a3;
- (void)_setShouldDisplayDictationPlaceholderMessage:(BOOL)a3;
- (void)_setShouldUpdatePlaceholderTextAlignmentWhenOverridden:(BOOL)a3;
- (void)_setSuffix:(id)a3 withColor:(id)a4;
- (void)_setSupportsKeyboardNavigationForSuggestions:(BOOL)a3;
- (void)_setSuppressContentChangedNotification:(BOOL)a3;
- (void)_setTextColor:(id)a3;
- (void)_setTextInRange:(_NSRange)a3 replacementText:(id)a4;
- (void)_setTrailingPadding:(double)a3;
- (void)_setVisualEffectViewEnabled:(BOOL)a3 backgroundColor:(id)a4;
- (void)_setupDefaultStyleEffectConfiguration;
- (void)_share:(id)a3;
- (void)_showSymbolAnimatableLeftViewNowIfNeeded;
- (void)_showSymbolAnimatableRightViewNowIfNeeded;
- (void)_sizeChanged:(BOOL)a3;
- (void)_stopObservingFieldEditorScroll;
- (void)_syncTypingAttributesWithDefaultAttribute:(id)a3;
- (void)_transitionFromAccessoryView:(id)a3 toView:(id)a4 allowingAnimation:(BOOL)a5;
- (void)_translate:(id)a3;
- (void)_transliterateChinese:(id)a3;
- (void)_tvUpdateAppearanceForUserInterfaceStyle;
- (void)_tvUpdateTextColor;
- (void)_uninstallSelectGestureRecognizer;
- (void)_updateAutosizeStyleIfNeeded;
- (void)_updateBaselineInformationDependentOnBoundsAllowingInvalidation:(BOOL)a3;
- (void)_updateButtonsAllowingAnimation:(BOOL)a3;
- (void)_updateForTintColor;
- (void)_updateLabel;
- (void)_updateLabelAppearance;
- (void)_updatePlaceholderPosition;
- (void)_updateSelectionGestures;
- (void)_updateSuffix:(id)a3;
- (void)_updateTextEffectsConfigurationIfNeeded;
- (void)_willUpdateAfterDetachingFieldEditor;
- (void)_windowBecameKey;
- (void)_windowResignedKey;
- (void)addTextAlternatives:(id)a3;
- (void)becomeDropResponder;
- (void)beginFloatingCursorAtPoint:(CGPoint)a3;
- (void)beginSelectionChange;
- (void)cancelAutoscroll;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)captureTextFromCamera:(id)a3;
- (void)clearText;
- (void)copy:(id)a3;
- (void)createPlaceholderIfNecessary;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)a3 includingSelectedTextAndDisplayedViewControllers:(BOOL)a4;
- (void)decreaseSize:(id)a3;
- (void)deleteBackward;
- (void)didGenerateCancelPreview:(id)a3;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)draggingFinished:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)droppingFinished;
- (void)droppingStarted;
- (void)encodeRestorableStateWithCoder:(id)a3 includingSelectedTextAndDisplayedViewControllers:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
- (void)endFloatingCursor;
- (void)endSelectionChange;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)fieldEditorDidChange:(id)a3;
- (void)fieldEditorDidChangeSelection:(id)a3;
- (void)finishedSettingPlaceholder;
- (void)finishedSettingTextOrAttributedText;
- (void)floatingContentView:(id)a3 isTransitioningFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)increaseSize:(id)a3;
- (void)insertAdaptiveImageGlyph:(id)a3 replacementRange:(id)a4;
- (void)insertAttributedText:(id)a3;
- (void)insertDictationResult:(id)a3 withCorrectionIdentifier:(id)a4;
- (void)insertInputSuggestion:(id)a3;
- (void)insertText:(id)a3;
- (void)insertText:(id)a3 alternatives:(id)a4 style:(int64_t)a5;
- (void)interactionTintColorDidChange;
- (void)invalidateDropCaret;
- (void)keyboardInputChangedSelection:(id)a3;
- (void)layoutSubviews;
- (void)makeTextWritingDirectionLeftToRight:(id)a3;
- (void)makeTextWritingDirectionNatural:(id)a3;
- (void)makeTextWritingDirectionRightToLeft:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)paste:(id)a3;
- (void)pasteAndMatchStyle:(id)a3;
- (void)pasteItemProviders:(id)a3;
- (void)performCancelAnimations;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)removeAnnotation:(id)a3 forRange:(id)a4;
- (void)removeDictationResultPlaceholder:(id)a3 willInsertResult:(BOOL)a4;
- (void)removeEmojiAlternatives;
- (void)removeFromSuperview;
- (void)removeTextPlaceholder:(id)a3;
- (void)replace:(id)a3;
- (void)replaceRange:(id)a3 withAnnotatedString:(id)a4 relativeReplacementRange:(_NSRange)a5;
- (void)replaceRange:(id)a3 withAttributedText:(id)a4;
- (void)replaceRange:(id)a3 withText:(id)a4;
- (void)replaceRangeWithTextWithoutClosingTyping:(id)a3 replacementText:(id)a4;
- (void)resignDropResponderWithDropPerformed:(BOOL)a3;
- (void)sanitizeAttributedText:(id)a3;
- (void)scrollTextFieldToVisibleIfNecessary;
- (void)select:(id)a3;
- (void)selectAll;
- (void)selectAll:(id)a3;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)adjustsFontSizeToFitWidth;
- (void)setAllowsAttachments:(BOOL)a3;
- (void)setAllowsEditingTextAttributes:(BOOL)allowsEditingTextAttributes;
- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setAttributedPlaceholder:(NSAttributedString *)attributedPlaceholder;
- (void)setAttributedPlaceholders:(id)a3;
- (void)setAttributes:(id)a3 range:(_NSRange)a4;
- (void)setAutomaticallyAdjustsWritingDirection:(BOOL)a3;
- (void)setBackground:(UIImage *)background;
- (void)setBackgroundColor:(id)a3;
- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4;
- (void)setBecomesFirstResponderOnClearButtonTap:(BOOL)a3;
- (void)setBorderStyle:(UITextBorderStyle)borderStyle;
- (void)setBounds:(CGRect)a3;
- (void)setClearButtonMode:(UITextFieldViewMode)clearButtonMode;
- (void)setClearButtonOffset:(CGSize)a3;
- (void)setClearButtonStyle:(int64_t)a3;
- (void)setClearingBehavior:(int64_t)a3;
- (void)setClearsOnInsertion:(BOOL)clearsOnInsertion;
- (void)setClearsPlaceholderOnBeginEditing:(BOOL)a3;
- (void)setClipsToBounds:(BOOL)a3;
- (void)setContentOffsetForSameViewDrops:(CGPoint)a3;
- (void)setContentVerticalAlignment:(int64_t)a3;
- (void)setContinuousSpellCheckingEnabled:(BOOL)a3;
- (void)setControlSize:(int)a3;
- (void)setDefaultTextAttributes:(NSDictionary *)defaultTextAttributes;
- (void)setDelegate:(id)delegate;
- (void)setDevicePasscodeEntry:(BOOL)a3;
- (void)setDisabledBackground:(UIImage *)disabledBackground;
- (void)setDisplaySecureEditsUsingPlainText:(BOOL)a3;
- (void)setDisplaySecureTextUsingPlainText:(BOOL)a3;
- (void)setFont:(UIFont *)font;
- (void)setFont:(id)a3 fullFontSize:(id)a4 ambientOnly:(BOOL)a5;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIcon:(id)a3;
- (void)setInputAccessoryView:(UIView *)inputAccessoryView;
- (void)setInputAssistantItem:(id)a3;
- (void)setInputDelegate:(id)a3;
- (void)setKeyboardAppearance:(int64_t)a3;
- (void)setLabel:(id)a3;
- (void)setLabelOffset:(float)a3;
- (void)setLeftView:(UIView *)leftView;
- (void)setLeftViewMode:(UITextFieldViewMode)leftViewMode;
- (void)setLinkTextAttributes:(id)a3;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setMarkedTextStyle:(id)a3;
- (void)setMinimumFontSize:(CGFloat)minimumFontSize;
- (void)setNeedsLayout;
- (void)setPasswordRules:(id)a3;
- (void)setPlaceholder:(NSString *)placeholder;
- (void)setPlaceholders:(id)a3;
- (void)setProgress:(float)a3;
- (void)setRecentsAccessoryView:(id)a3;
- (void)setRightView:(UIView *)rightView;
- (void)setRightViewMode:(UITextFieldViewMode)rightViewMode;
- (void)setSecureTextEntry:(BOOL)a3;
- (void)setSelectedTextRange:(id)a3;
- (void)setSelectionRange:(_NSRange)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setShadowBlur:(double)a3;
- (void)setShadowColor:(id)a3;
- (void)setShadowOffset:(CGSize)a3;
- (void)setSizingRule:(int64_t)a3;
- (void)setSupportsAdaptiveImageGlyph:(BOOL)a3;
- (void)setText:(NSString *)text;
- (void)setTextAlignment:(NSTextAlignment)textAlignment;
- (void)setTextCentersVertically:(BOOL)a3;
- (void)setTextSelectionBehavior:(int)a3;
- (void)setTypingAttributes:(NSDictionary *)typingAttributes;
- (void)setUndoEnabled:(BOOL)a3;
- (void)startAutoscroll:(CGPoint)a3;
- (void)takeTraitsFrom:(id)a3;
- (void)tintColorDidChange;
- (void)toggleBoldface:(id)a3;
- (void)toggleItalics:(id)a3;
- (void)toggleUnderline:(id)a3;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFloatingCursorAtPoint:(CGPoint)a3;
- (void)updateFloatingCursorAtPoint:(CGPoint)a3 animated:(BOOL)a4;
- (void)validateCommand:(id)a3;
- (void)willDismissEditMenuWithAnimator:(id)a3;
- (void)willMoveToWindow:(id)a3;
- (void)willPresentEditMenuWithAnimator:(id)a3;
@end

@implementation UITextField

- (Class)_preferredBackgroundProviderClass
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    if (!dyld_program_sdk_at_least() || (_UIAquaDuckVisualProvidersEnabled() & 1) == 0)
    {
      _UISolariumEnabled();
    }

    goto LABEL_10;
  }

  v5 = [(UIView *)self traitCollection];
  if ([v5 userInterfaceIdiom] == 2)
  {

LABEL_10:
    v8 = objc_opt_class();
    goto LABEL_11;
  }

  v6 = [(UIView *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 8 || [(UITextField *)self _isPasscodeStyle])
  {
    goto LABEL_10;
  }

  v8 = [(UITextField *)self _defaultiOSBackgroundProviderClass];
LABEL_11:

  return [(UITextField *)self _backgroundProviderClassOrImageBackgroundProviderClass:v8];
}

- (void)_invalidateMetricsProvider
{
  v3 = [(UITextField *)self _preferredMetricsProvider];
  v5 = v3;
  if (v3)
  {
    [(UITextField *)self _setMetricsProvider:v3];
  }

  else
  {
    v4 = objc_opt_new();
    [(UITextField *)self _setMetricsProvider:v4];
  }
}

- (id)_preferredMetricsProvider
{
  v4 = [(UITextField *)self _backgroundProvider];
  v5 = [v4 preferredMetricsProvider];

  if (!v5)
  {
    preferredBorderStyle = self->_preferredBorderStyle;
    if (preferredBorderStyle > 1)
    {
      if (preferredBorderStyle == 2)
      {
        v7 = +[_UITextFieldBezelBackgroundProvider bezelStyleMetricsProvider];
        goto LABEL_13;
      }

      if (preferredBorderStyle == 3)
      {
        v7 = +[_UITextFieldSystemBackgroundProvider systemStyleMetricsProvider];
        goto LABEL_13;
      }
    }

    else
    {
      if (!preferredBorderStyle)
      {
        v7 = objc_opt_new();
        goto LABEL_13;
      }

      if (preferredBorderStyle == 1)
      {
        v7 = +[_UITextFieldLineBackgroundProvider lineStyleMetricsProvider];
LABEL_13:
        v5 = v7;
        goto LABEL_14;
      }
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = v8;
    v10 = self->_preferredBorderStyle;
    if (v10 > 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E7126430[v10];
    }

    [v8 handleFailureInMethod:a2 object:self file:@"UITextField.m" lineNumber:5274 description:{@"No metrics provider for border style %@.", v11}];

    v5 = 0;
  }

LABEL_14:

  return v5;
}

- (void)_initTextStorage
{
  v3 = objc_opt_new();
  v4 = [(_UITextFieldVisualStyle *)self->_visualStyle defaultTextColor];
  [(_UICascadingTextStorage *)v3 setTextColor:v4];

  [(_UICascadingTextStorage *)v3 setTextAlignment:4];
  v5 = objc_opt_self();
  [(_UICascadingTextStorage *)self->_textStorage _setIntentResolver:v5];

  textStorage = self->_textStorage;
  self->_textStorage = v3;
}

- (void)_initTextLayoutController
{
  if ((*(&self->_textFieldFlags + 4) & 0x10) != 0)
  {
    v16 = [[_UIObscurableTextContentStorage alloc] initWithTextStorage:self->_textStorage];
    v7 = [off_1E70ECBB0 alloc];
    v6 = [v7 initWithSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v8 = [[_UITextKit2LayoutController alloc] initWithTextView:0 textContentStorage:v16 textContainer:v6];
    textLayoutController = self->_textLayoutController;
    self->_textLayoutController = v8;

    v10 = [(_UITextLayoutController *)self->_textLayoutController firstTextContainer];
    textContainer = self->_textContainer;
    self->_textContainer = v10;

    v12 = [(NSTextContainer *)self->_textContainer textLayoutManager];
    [v12 setUsesFontLeading:0];

    v13 = [(NSTextContainer *)self->_textContainer textLayoutManager];
    [v13 setLimitsLayoutForSuspiciousContents:1];

    v14 = [(UITextField *)self keyboardType];
    LODWORD(v13) = (v14 > 0xB) | (0x6CFu >> v14);
    v15 = [(NSTextContainer *)self->_textContainer textLayoutManager];
    [v15 setResolvesNaturalAlignmentWithBaseWritingDirection:v13 & 1];
  }

  else
  {
    v3 = objc_alloc_init(off_1E70ECBB0);
    v4 = self->_textContainer;
    self->_textContainer = v3;

    v16 = objc_alloc_init(_UIFieldEditorLayoutManager);
    [(_UIObscurableTextContentStorage *)v16 setUsesFontLeading:0];
    if (dyld_program_sdk_at_least())
    {
      [(_UIObscurableTextContentStorage *)v16 setLimitsLayoutForSuspiciousContents:1];
    }

    [(_UICascadingTextStorage *)self->_textStorage addLayoutManager:v16];
    [(_UIObscurableTextContentStorage *)v16 addTextContainer:self->_textContainer];
    v5 = [[_UITextKit1LayoutController alloc] initWithTextView:self->_textContainer textContainer:?];
    v6 = self->_textLayoutController;
    self->_textLayoutController = v5;
  }
}

- (void)_initTextCanvasView
{
  [(_UIHomeAffordanceObservationRecord *)self->_textLayoutController setLegacyViewServiceSessionIdentifier:?];
  v3 = [(_UITextLayoutController *)self->_textLayoutController dequeueCanvasViewForTextContainer:self->_textContainer];
  textCanvasView = self->_textCanvasView;
  self->_textCanvasView = v3;

  [(_UITextCanvas *)self->_textCanvasView setContext:self];

  [(UITextField *)self _addTextCanvasViewAdjustingFrame:0];
}

- (id)_defaultFont
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    if ([(UITextField *)self controlSize]== 1)
    {
      [off_1E70ECC18 smallSystemFontSize];
    }

    else
    {
      [off_1E70ECC18 defaultFontSize];
    }

    v5 = [off_1E70ECC18 systemFontOfSize:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_detectCustomDrawing
{
  if (qword_1ED49AA98 != -1)
  {
    dispatch_once(&qword_1ED49AA98, &__block_literal_global_622);
  }

  v3 = [(UITextField *)self methodForSelector:sel_drawRect_];
  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFFFFBFFFLL | ((v3 != qword_1ED49AA90) << 14));
}

uint64_t __35__UITextField__detectCustomDrawing__block_invoke()
{
  result = [UITextField instanceMethodForSelector:sel_drawRect_];
  qword_1ED49AA90 = result;
  return result;
}

- (void)_initIncreasedContrastNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__increaseContrastSettingChanged_ name:@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification" object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__increaseContrastSettingChanged_ name:@"UIAccessibilityReduceTransparencyStatusDidChangeNotification" object:0];
}

- (void)_showSymbolAnimatableLeftViewNowIfNeeded
{
  if ([(UITextField *)self _showsLeftView]&& [(UITextField *)self _isAccessoryViewAnimatable:self->_leftView])
  {
    leftView = self->_leftView;

    [(UITextField *)self _transitionFromAccessoryView:0 toView:leftView allowingAnimation:0];
  }
}

- (UITextBorderStyle)borderStyle
{
  result = [(_UITextFieldBackgroundProvider *)self->_backgroundProvider associatedBorderStyle];
  if (result == -1)
  {
    return self->_preferredBorderStyle;
  }

  return result;
}

- (NSTextStorage)textStorage
{
  v3 = [(UITextField *)self _fieldEditor];
  v4 = [v3 _textLayoutController];

  textStorage = self->_textStorage;

  return textStorage;
}

- (void)_setupDefaultStyleEffectConfiguration
{
  if (dyld_program_sdk_at_least())
  {
    v3 = objc_alloc_init(MEMORY[0x1E6999430]);
    v4 = [(UIView *)self traitCollection];
    v5 = [(UITraitCollection *)v4 _styleEffectAppearanceName];
    [v3 setAppearanceName:v5];

    cuiStyleEffectConfiguration = self->_cuiStyleEffectConfiguration;
    self->_cuiStyleEffectConfiguration = v3;
  }
}

- (BOOL)_showsRightView
{
  if (!self->_rightView)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  rightViewMode = self->_rightViewMode;
  if (rightViewMode == 3)
  {
    goto LABEL_10;
  }

  textFieldFlags = self->_textFieldFlags;
  if (rightViewMode != 2)
  {
    if (rightViewMode == 1)
    {
      return (*&textFieldFlags >> 8) & 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    return v5;
  }

  v6 = *(&self->super.super._viewFlags + 2);
  if (![(UITextField *)self _hasContent])
  {
LABEL_10:
    LOBYTE(v5) = 1;
    return v5;
  }

  LOBYTE(v5) = (*&textFieldFlags & 0x100) == 0;
  if (!(*&textFieldFlags & 0x100 | v6 & 0x400000))
  {
    LOBYTE(v5) = ![(UITextField *)self _hasDictationButton];
  }

  return v5;
}

- (BOOL)_isPasscodeStyle
{
  v3 = [(UITextField *)self textInputTraits];
  v4 = [v3 keyboardAppearance] == 127 && (*(&self->_textFieldFlags + 2) & 0x10) == 0;

  return v4;
}

- (Class)_defaultiOSBackgroundProviderClass
{
  preferredBorderStyle = self->_preferredBorderStyle;
  if (preferredBorderStyle > 1)
  {
    if (preferredBorderStyle == 2 || preferredBorderStyle == 3)
    {
      goto LABEL_8;
    }

LABEL_6:
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = v5;
    v7 = self->_preferredBorderStyle;
    if (v7 > 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = off_1E7126430[v7];
    }

    [v5 handleFailureInMethod:a2 object:self file:@"UITextField.m" lineNumber:5258 description:{@"No background provider for border style %@.", v8}];

    v9 = 0;
    goto LABEL_9;
  }

  if (preferredBorderStyle > 1)
  {
    goto LABEL_6;
  }

LABEL_8:
  v9 = objc_opt_class();
LABEL_9:

  return [(UITextField *)self _backgroundProviderClassOrImageBackgroundProviderClass:v9];
}

- (double)_clearButtonPadX
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  result = 3.0;
  if (v3 == 6)
  {
    return 0.0;
  }

  return result;
}

- (void)_invalidateAllGlyphsAndTextLayout
{
  v3 = [(UITextField *)self textLayoutController];
  v4 = [v3 documentRange];
  if (([v4 isEmpty] & 1) == 0)
  {
    [v3 invalidateLayoutForRange:v4];
    [(UIView *)self setNeedsDisplay];
  }

  [(UIView *)self _invalidateBaselineConstraints];
  if ([(UIView *)self _shouldNotifyGeometryObserversForBaselineChanges])
  {
    v23 = 0;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v10 = 0u;
    v9 = 0u;
    v8 = 2048;
    [(UIView *)self _notifyGeometryObserversWithChangeInfo:?];
  }

  if ((*(&self->super.super._viewFlags + 16) & 8) != 0)
  {
    v5 = [(UIView *)self superview];
    v6 = v5;
    if (v5 && (*(v5 + 95) & 0x40) == 0)
    {
      v7 = [(UIView *)self superview];
      [v7 setNeedsLayout];
    }
  }
}

- (id)textInputTraits
{
  traits = self->_traits;
  if (!traits)
  {
    v4 = objc_alloc_init(UITextInputTraits);
    v5 = self->_traits;
    self->_traits = v4;

    traits = self->_traits;
  }

  [(UITextInputTraits *)traits setIsSingleLineDocument:1];
  nonAtomTraits = self->_nonAtomTraits;
  if (nonAtomTraits)
  {
    [(UITextInputTraits *)self->_traits setTextSelectionBehavior:[(UITextInputTraits *)nonAtomTraits textSelectionBehavior]];
    v7 = self->_traits;
    v8 = [(UITextInputTraits *)self->_nonAtomTraits insertionPointColor];
    [(UITextInputTraits *)v7 setInsertionPointColor:v8];

    v9 = self->_traits;
    v10 = [(UITextInputTraits *)self->_nonAtomTraits selectionHighlightColor];
    [(UITextInputTraits *)v9 setSelectionHighlightColor:v10];

    v11 = self->_traits;
    v12 = [(UITextInputTraits *)self->_nonAtomTraits selectionDragDotImage];
    [(UITextInputTraits *)v11 setSelectionDragDotImage:v12];

    [(UITextInputTraits *)self->_traits setTextLoupeVisibility:[(UITextInputTraits *)self->_nonAtomTraits textLoupeVisibility]];
  }

  v13 = self->_traits;

  return v13;
}

- (id)_inputController
{
  v2 = [(UITextField *)self _fieldEditor];
  v3 = [v2 _inputController];

  return v3;
}

- (UIFieldEditor)_fieldEditor
{
  fieldEditor = self->_fieldEditor;
  if (!fieldEditor)
  {
    v4 = [objc_alloc(objc_msgSend(objc_opt_class() "_fieldEditorClass"))];
    v5 = self->_fieldEditor;
    self->_fieldEditor = v4;

    fieldEditor = self->_fieldEditor;
  }

  return fieldEditor;
}

- (BOOL)_shouldObscureInput
{
  v3 = [(UITextField *)self isSecureTextEntry];
  if (v3)
  {
    if (([(UITextField *)self displaySecureTextUsingPlainText]& 1) != 0)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(UITextField *)self _shouldUnobscureTextWithContentCover];
    }
  }

  return v3;
}

- (BOOL)isEditing
{
  if (!self->_deferringBecomeFirstResponder && (*(&self->_textFieldFlags + 1) & 1) == 0 || ![(UIView *)self isFirstResponder])
  {
    return 0;
  }

  return [(UITextField *)self isEditable];
}

- (BOOL)_canDrawContent
{
  textFieldFlags = self->_textFieldFlags;
  if ((*&textFieldFlags & 0x4000) != 0)
  {
    v8 = v2;
    v9 = v3;
    v7.receiver = self;
    v7.super_class = UITextField;
    return [(UIView *)&v7 _canDrawContent];
  }

  else if ((*&textFieldFlags & 0x200000000) != 0)
  {
    backgroundProvider = self->_backgroundProvider;

    return [(_UITextFieldBackgroundProvider *)backgroundProvider drawsContent];
  }

  else
  {
    return 0;
  }
}

- (void)setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = UITextField;
  [(UIView *)&v3 setNeedsLayout];
  if (*(&self->_textFieldFlags + 1))
  {
    [(UIScrollView *)self->_fieldEditor setNeedsLayout];
  }
}

- (id)backgroundColor
{
  v3 = [(_UITextFieldBackgroundProvider *)self->_backgroundProvider overridingGetBackgroundColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_3:
    v6 = v5;
    goto LABEL_6;
  }

  v7 = [(UITextField *)self _contentView];

  if (v7 == self)
  {
    v10.receiver = self;
    v10.super_class = UITextField;
    v5 = [(UIView *)&v10 backgroundColor];
    goto LABEL_3;
  }

  v8 = [(UITextField *)self _contentView];
  v6 = [v8 backgroundColor];

LABEL_6:

  return v6;
}

- (BOOL)_showsLeftView
{
  if (!self->_leftView)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  leftViewMode = self->_leftViewMode;
  if (leftViewMode == 3)
  {
    goto LABEL_11;
  }

  textFieldFlags = self->_textFieldFlags;
  if (leftViewMode != 2)
  {
    if (leftViewMode == 1)
    {
      return (*&textFieldFlags >> 8) & 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    return v5;
  }

  v6 = *(&self->super.super._viewFlags + 2);
  if (![(UITextField *)self _hasContent])
  {
LABEL_11:
    LOBYTE(v5) = 1;
    return v5;
  }

  LOBYTE(v5) = (*&textFieldFlags & 0x100) == 0;
  if ((*&textFieldFlags & 0x100) == 0 && (v6 & 0x400000) != 0)
  {
    LOBYTE(v5) = ![(UITextField *)self _hasDictationButton];
  }

  return v5;
}

- (BOOL)_hasContent
{
  v2 = [(UITextField *)self _text];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)_text
{
  if (*(&self->_textFieldFlags + 1))
  {
    v3 = [(UITextField *)self _fieldEditor];
    v2 = [v3 text];
  }

  else
  {
    v2 = [(NSConcreteTextStorage *)self->_textStorage string];
  }

  return v2;
}

- (void)_updateLabelAppearance
{
  if (*(&self->_textFieldFlags + 1))
  {
    [(UITextField *)self _syncTypingAttributesWithDefaultAttribute:*off_1E70EC920];
  }
}

- (UITextPosition)beginningOfDocument
{
  v2 = [(UITextField *)self _fieldEditor];
  v3 = [v2 beginningOfDocument];

  return v3;
}

- (id)_systemBackgroundView
{
  v2 = self;
  v3 = v2;
  if (v2 && (*(&v2->_textFieldFlags + 4) & 4) != 0)
  {
    backgroundProvider = v2->_backgroundProvider;
  }

  else
  {
    backgroundProvider = 0;
  }

  v5 = backgroundProvider;

  v6 = [(_UITextFieldBackgroundProvider *)v5 backgroundView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_showSymbolAnimatableRightViewNowIfNeeded
{
  if ([(UITextField *)self _showsRightView]&& [(UITextField *)self _isAccessoryViewAnimatable:self->_rightView])
  {
    rightView = self->_rightView;

    [(UITextField *)self _transitionFromAccessoryView:0 toView:rightView allowingAnimation:0];
  }
}

- (void)createPlaceholderIfNecessary
{
  if (!self->_placeholderLabel)
  {
    v3 = self->_textStorage;
    v6 = [(_UICascadingTextStorage *)v3 font];
    v4 = [(UITextField *)self createPlaceholderLabelWithFont:v6 andTextAlignment:[(_UICascadingTextStorage *)v3 textAlignment]];
    placeholderLabel = self->_placeholderLabel;
    self->_placeholderLabel = v4;
  }
}

- (void)finishedSettingPlaceholder
{
  [(UITextField *)self setNeedsLayout];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (id)_textGeometry
{
  draggableGeometry = self->_draggableGeometry;
  if (!draggableGeometry)
  {
    v4 = [[_UITextStorageDraggableGeometry alloc] initWithView:self textStorage:self->_textStorage];
    v5 = self->_draggableGeometry;
    self->_draggableGeometry = v4;

    draggableGeometry = self->_draggableGeometry;
  }

  return draggableGeometry;
}

- (void)_createInteractionAssistant
{
  if (!self->_interactionAssistant)
  {
    v3 = [[UITextInteractionAssistant alloc] initWithView:self];
    interactionAssistant = self->_interactionAssistant;
    self->_interactionAssistant = v3;
  }
}

- (BOOL)_implementsEditMenu
{
  v2 = [(UITextField *)self delegate];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)_ensureSelectionContainerViewSubviewOrdering
{
  if (!self->_selectionContainerView)
  {
    return;
  }

  v3 = [(UITextField *)self visualStyle];
  v9 = [v3 parentViewForTextContentView];

  v4 = [(UITextField *)self _backgroundView];
  v5 = [v4 superview];

  if (v5 == v9)
  {
    selectionContainerView = self->_selectionContainerView;
    v8 = [(UITextField *)self _backgroundView];
    [v9 insertSubview:selectionContainerView aboveSubview:v8];
LABEL_8:

    goto LABEL_9;
  }

  v6 = self->_selectionContainerView;
  if (*(&self->_textFieldFlags + 1))
  {
    v8 = [(UITextField *)self _fieldEditor];
    [v9 insertSubview:v6 belowSubview:v8];
    goto LABEL_8;
  }

  [v9 insertSubview:self->_selectionContainerView atIndex:0];
LABEL_9:
}

- (UIView)_backgroundView
{
  v2 = self;
  v3 = v2;
  if (v2 && (*(&v2->_textFieldFlags + 4) & 4) != 0)
  {
    backgroundProvider = v2->_backgroundProvider;
  }

  else
  {
    backgroundProvider = 0;
  }

  v5 = backgroundProvider;

  v6 = [(_UITextFieldBackgroundProvider *)v5 backgroundView];

  return v6;
}

- (id)selectionContainerView
{
  selectionContainerView = self->_selectionContainerView;
  if (!selectionContainerView)
  {
    v4 = [_UITouchPassthroughView alloc];
    v5 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_selectionContainerView;
    self->_selectionContainerView = v5;

    [(UITextField *)self _ensureSelectionContainerViewSubviewOrdering];
    selectionContainerView = self->_selectionContainerView;
  }

  return selectionContainerView;
}

- (CGRect)_selectionClipRect
{
  if ((*(&self->_textFieldFlags + 1) & 1) != 0 && [(UITextField *)self _tvHasFloatingFieldEditor])
  {
    v3 = [(UITextField *)self _fieldEditor];
    [v3 _selectionClipRect];
  }

  else
  {
    [(UIView *)self bounds];
    [(UITextField *)self editingRectForBounds:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v3 = [(UITextField *)self textInputView];
    [v3 convertRect:self fromView:{v9, v11, v13, v15}];
  }

  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = UITextField;
  [(UIView *)&v3 tintColorDidChange];
  [(UITextField *)self _updateForTintColor];
}

- (void)_updateForTintColor
{
  v3 = [(UITextField *)self textInputTraits];
  v4 = [(UIView *)self _inheritedInteractionTintColor];
  [v3 _setColorsToMatchTintColor:v4];

  if (*(&self->_textFieldFlags + 1))
  {
    v5 = [(UITextField *)self interactionAssistant];
    [v5 deactivateSelection];

    fieldEditor = self->_fieldEditor;
    v7 = [(UIView *)self _inheritedInteractionTintColor];
    [(UIFieldEditor *)fieldEditor _setColorsToMatchTintColor:v7];

    v8 = [(UITextField *)self interactionAssistant];
    [v8 activateSelection];
  }

  [(UITextField *)self _invalidateCachedDefaultClearButtonImages];
}

- (void)interactionTintColorDidChange
{
  v3 = _clearButtonImages;
  _clearButtonImages = 0;

  v4.receiver = self;
  v4.super_class = UITextField;
  [(UIView *)&v4 interactionTintColorDidChange];
}

- (void)finishedSettingTextOrAttributedText
{
  [(UITextField *)self setNeedsLayout];
  [(UITextField *)self _invalidateDefaultFullFontSize];
  [(UIView *)self invalidateIntrinsicContentSize];
  if ([(UITextField *)self _shouldObscureInput])
  {

    [(UITextField *)self _forceObscureAllText];
  }

  else
  {
    v3 = [(UITextField *)self _fieldEditor];
    [v3 _unobscureAllText];
  }
}

- (void)_invalidateDefaultFullFontSize
{
  if ([(UITextField *)self adjustsFontSizeToFitWidth]&& [(_UIFullFontSize *)self->_fullFontSize setNeedsEvaluation])
  {
    [(UITextField *)self setNeedsLayout];

    [(UIView *)self _invalidateBaselineConstraints];
  }
}

- (NSString)placeholder
{
  v3 = [(NSAttributedString *)self->_overriddenPlaceholder string];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UILabel *)self->_placeholderLabel text];
  }

  v6 = v5;

  return v6;
}

- (void)_invalidateCachedDefaultClearButtonImages
{
  [(NSMutableDictionary *)self->_cachedDefaultClearButtonImages removeAllObjects];
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    v5 = [(UITextField *)self _clearButtonImageForState:0];
    v6 = [(UIButton *)self->_clearButton configuration];
    [v6 setImage:v5];

    v7 = [(UIButton *)self->_clearButton _visualProvider];
    [v7 applyConfiguration];
  }

  else
  {
    v7 = [(UIButton *)self->_clearButton _visualProvider];
    [v7 _updateImageView];
  }
}

- (void)_uninstallSelectGestureRecognizer
{
  if (self->_selectGestureRecognizer)
  {
    [(UIView *)self removeGestureRecognizer:?];
    selectGestureRecognizer = self->_selectGestureRecognizer;
    self->_selectGestureRecognizer = 0;
  }
}

- (void)_layoutContentOnly
{
  v21 = self->_selectionContainerView;
  v3 = [(UITextField *)self visualStyle];
  v4 = [v3 parentViewForTextContentView];

  if ([(UITextField *)self _showsContentCoverView])
  {
    if (*(&self->_textFieldFlags + 1))
    {
      [(UIScrollView *)self->_fieldEditor removeFromSuperview];
    }

    if (v21)
    {
      v5 = [(UIView *)self->_selectionContainerView superview];

      if (v4 != v5)
      {
        [v4 addSubview:v21];
      }
    }

    v6 = [(_UITextCanvas *)self->_textCanvasView superview];

    if (v4 != v6)
    {
      [v4 addSubview:self->_textCanvasView];
    }

    contentCoverView = self->_contentCoverView;
    if (contentCoverView)
    {
      v8 = [(UIView *)contentCoverView superview];

      if (v4 != v8)
      {
        [v4 addSubview:self->_contentCoverView];
      }

      [v4 bringSubviewToFront:self->_contentCoverView];
      [(UITextField *)self editRect];
      [(UIView *)self->_contentCoverView setFrame:?];
    }
  }

  else
  {
    [(UIView *)self->_contentCoverView removeFromSuperview];
    textFieldFlags = self->_textFieldFlags;
    if ((*&textFieldFlags & 0x100) != 0)
    {
      v10 = [(UIView *)self->_fieldEditor superview];

      if (!v10)
      {
        [(UITextField *)self _addFieldEditorToView];
        goto LABEL_24;
      }

      textFieldFlags = self->_textFieldFlags;
    }

    if ((*&textFieldFlags & 0x100) == 0)
    {
      if (v21)
      {
        v11 = [(UIView *)self->_selectionContainerView superview];

        if (v4 != v11)
        {
          [v4 addSubview:v21];
        }
      }

      v12 = [(_UITextCanvas *)self->_textCanvasView superview];

      if (v4 != v12)
      {
        [v4 addSubview:self->_textCanvasView];
      }

      [v4 bringSubviewToFront:self->_textCanvasView];
    }
  }

LABEL_24:
  v13 = [(UITextField *)self textInputView];
  [v13 bounds];
  [(UIView *)v21 setFrame:?];

  v14 = [(UITextField *)self interactionAssistant];
  v15 = [v14 _legacySelectionView];
  [v15 deferredUpdateSelectionRects];

  if ([(UITextField *)self _showsBackgroundCoverView])
  {
    [v4 insertSubview:self->_backgroundCoverView belowSubview:self->_textCanvasView];
    [(UIView *)self bounds];
    [(UITextField *)self borderRectForBounds:?];
    [(UIView *)self->_backgroundCoverView setFrame:?];
    if ([(UITextField *)self borderStyle]== UITextBorderStyleRoundedRect)
    {
      preferredBackgroundCornerRadius = self->_preferredBackgroundCornerRadius;
      v17 = [(UIView *)self->_backgroundCoverView layer];
      v18 = v17;
      v19 = preferredBackgroundCornerRadius;
    }

    else
    {
      v17 = [(UIView *)self->_backgroundCoverView layer];
      v18 = v17;
      v19 = 0.0;
    }

    [v17 setCornerRadius:v19];
  }

  else
  {
    [(UIView *)self->_backgroundCoverView removeFromSuperview];
  }

  v20 = [(_UITextCanvas *)self->_textCanvasView superview];

  if (v4 == v20)
  {
    [(UITextField *)self _textCanvasViewFrameIncludingContentInsetsFromFontsWhenNotContainedByFieldEditor];
    [(_UITextCanvas *)self->_textCanvasView setFrame:?];
    [(_UITextCanvas *)self->_textCanvasView setNeedsDisplay];
  }

  [(UITextField *)self _layoutFieldEditor];
  [(_UITextFieldBackgroundProvider *)self->_backgroundProvider layoutIfNeeded];
}

- (BOOL)_showsContentCoverView
{
  if (!self->_contentCoverView)
  {
    return 0;
  }

  result = [(UIView *)self isFirstResponder];
  contentCoverViewMode = self->_contentCoverViewMode;
  if (contentCoverViewMode == 3)
  {
    return 1;
  }

  if (contentCoverViewMode != 2)
  {
    if (contentCoverViewMode == 1)
    {
      return result;
    }

    return 0;
  }

  return !result;
}

- (UIView)textInputView
{
  v3 = [(UIFieldEditor *)self->_fieldEditor textInputView];
  textCanvasView = v3;
  if (!v3)
  {
    textCanvasView = self->_textCanvasView;
  }

  v5 = textCanvasView;

  return textCanvasView;
}

- (NSTextContainer)textContainer
{
  v3 = [(UITextField *)self _fieldEditor];
  v4 = [v3 _textLayoutController];

  return [(UITextField *)self _textContainer];
}

- (void)_layoutContentAndExtras
{
  [(UITextField *)self _updateLabel];
  [(UITextField *)self _updatePlaceholderPosition];
  [(UITextField *)self _updateAutosizeStyleIfNeeded];
  [(UITextField *)self _updateButtons];
  [(_UITextFieldBackgroundProvider *)self->_backgroundProvider layoutIfNeeded];
  [(UITextField *)self _layoutLabels];

  [(UITextField *)self _layoutContentOnly];
}

- (void)_layoutLabels
{
  v3 = [(UITextField *)self _fieldEditor];
  v4 = [v3 _hasDictationPlaceholder];

  v5 = [(UITextField *)self _hasContent]| v4;
  v6 = [(UILabel *)self->_placeholderLabel text];
  if (![v6 length] || (v5 & 1) != 0 || (*(&self->_textFieldFlags + 3) & 8) != 0)
  {

LABEL_7:
    [(UIView *)self->_placeholderLabel removeFromSuperview];
    goto LABEL_8;
  }

  [(UIView *)self bounds];
  [(UITextField *)self placeholderRectForBounds:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ([(UITextField *)self _shouldShrinkPlaceholderToFitForAccessibility])
  {
    v15 = 1;
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v15 = *&self->_textFieldFlags >> 7;
  }

  [(UILabel *)self->_placeholderLabel setAdjustsFontSizeToFitWidth:v15];
  [(UILabel *)self->_placeholderLabel setBaselineAdjustment:v16];
  v23 = [(UILabel *)self->_placeholderLabel font];
  [v23 pointSize];
  v25 = v24;

  if (v25 <= 0.0)
  {
    v26 = [objc_opt_class() defaultFont];
    [v26 pointSize];
    v25 = v27;
  }

  if (v25 == 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = self->_minimumFontSize / v25;
  }

  [(UILabel *)self->_placeholderLabel setMinimumScaleFactor:v28];
  [(UILabel *)self->_placeholderLabel setFrame:v8, v10, v12, v14];
  if ([(UITextField *)self isEditing]&& [(UITextField *)self clearsPlaceholderOnBeginEditing])
  {
    goto LABEL_7;
  }

  v29 = [(UITextField *)self _fieldEditorHost];
  v30 = v29;
  if (v29)
  {
    [v29 addPlaceholderLabel:self->_placeholderLabel];
  }

  else
  {
    v31 = [(UITextField *)self _contentView];
    [v31 addSubview:self->_placeholderLabel];
  }

  v32 = [(UITextField *)self _inputController];
  [v32 _selectionGeometryChanged];

LABEL_8:
  prefixLabel = self->_prefixLabel;
  if (prefixLabel)
  {
    [(UITextField *)self _prefixFrame];
    [(UILabel *)prefixLabel setFrame:?];
    v18 = [(UITextField *)self _contentView];
    [v18 addSubview:self->_prefixLabel];

    if (([(UITextField *)self isEditing]| v5))
    {
      [(_UICascadingTextStorage *)self->_textStorage textColor];
    }

    else
    {
      [(UILabel *)self->_placeholderLabel color];
    }
    v19 = ;
    [(UILabel *)self->_prefixLabel setColor:v19];
    [(UIView *)self->_placeholderLabel frame];
    [(UILabel *)self->_placeholderLabel setFrame:?];
    [(UILabel *)self->_prefixLabel setNeedsDisplay];
  }

  suffixLabel = self->_suffixLabel;
  if (suffixLabel)
  {
    [(UITextField *)self _suffixFrame];
    [(UILabel *)suffixLabel setFrame:?];
    v21 = [(UITextField *)self _contentView];
    [v21 addSubview:self->_suffixLabel];

    v22 = self->_suffixLabel;

    [(UILabel *)v22 setNeedsDisplay];
  }
}

- (BOOL)_shouldShrinkPlaceholderToFitForAccessibility
{
  if (!dyld_program_sdk_at_least() || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_TextFieldShrinksPlaceholderToFitForAXSizes, @"TextFieldShrinksPlaceholderToFitForAXSizes") & 1) == 0 && !byte_1ED48B61C)
  {
    return 0;
  }

  v4 = [(UIView *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  return IsAccessibilityCategory;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = UITextField;
  [(UIView *)&v6 layoutSubviews];
  v3 = [(UITextField *)self _contentFloatingContainerView];
  [(UIView *)self bounds];
  [v3 setFrame:?];
  [v3 setNeedsLayout];
  [v3 layoutIfNeeded];
  [(UITextField *)self _tvUpdateContentBackdropView];
  fieldEditor = self->_fieldEditor;
  if (fieldEditor)
  {
    v5 = [(UIView *)fieldEditor superview];

    if (!v5)
    {
      [(UIView *)self->_fieldEditor layoutIfNeeded];
    }
  }

  [(UITextField *)self _layoutContentAndExtras];
}

- (void)_updateAutosizeStyleIfNeeded
{
  if ([(UITextField *)self adjustsFontSizeToFitWidth]&& ((*(&self->_textFieldFlags + 1) & 1) == 0 || ![(UITextField *)self _tvHasFloatingFieldEditor]))
  {
    v3 = [(UITextField *)self _shouldObscureInput];
    if ((*(&self->_textFieldFlags + 2) & 2) != 0)
    {
      v5 = [(UITextField *)self attributedText];
      v4 = [v5 string];
    }

    else
    {
      v4 = [(UITextField *)self text];
    }

    v6 = self->_textStorage;
    v7 = [(_UICascadingTextStorage *)v6 font];
    v8 = [v4 length];
    v9 = v8 == 0;
    if (v8)
    {
      if (v3)
      {
        v84[0] = 0;
        v10 = [v7 _ui_bulletStringWithFont:v84];
        v60 = v84[0];
        v69 = 0;
        v70 = &v69;
        v71 = 0x2020000000;
        v72 = 0;
        v11 = [v4 length];
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __43__UITextField__updateAutosizeStyleIfNeeded__block_invoke;
        v83[3] = &unk_1E70FDB08;
        v83[4] = &v69;
        [v4 enumerateSubstringsInRange:0 options:v11 usingBlock:{2, v83}];
        v12 = [&stru_1EFB14550 stringByPaddingToLength:v70[3] withString:v10 startingAtIndex:0];

        v9 = (*(&self->_textFieldFlags + 1) & 1) != 0 && [v12 length] == 0;
        _Block_object_dispose(&v69, 8);

        v14 = 0;
        v13 = v60;
LABEL_19:
        v79 = 0;
        v80 = &v79;
        v81 = 0x2020000000;
        v15 = [(_UICascadingTextStorage *)v6 font];
        [v15 pointSize];
        v17 = v16;

        v82 = v17;
        [(UITextField *)self _fullFontSize];
        v19 = v18;
        if (v9)
        {
          if (v80[6] != v19)
          {
            v20 = [(_UICascadingTextStorage *)v6 font];
            *&v21 = v19;
            *&v22 = v19;
            v23 = [(UITextField *)self _copyFont:v20 newSize:v21 maxSize:v22];

            v24 = [(_UIFullFontSize *)self->_fullFontSize overrideUnlessDefault:v19];
            [(UITextField *)self setFont:v23 fullFontSize:v24 ambientOnly:v14];
          }

LABEL_54:
          _Block_object_dispose(&v79, 8);

          return;
        }

        [(UITextField *)self editRect];
        v26 = v25;
        v27 = [(UITextField *)self textInputTraits];
        v28 = [v27 insertionPointWidth];

        v29 = v26 - v28 + -10.0;
        v75 = 0;
        v76 = &v75;
        v77 = 0x2020000000;
        v78 = 0;
        v69 = 0;
        v70 = &v69;
        v71 = 0x3032000000;
        v72 = __Block_byref_object_copy__213;
        v73 = __Block_byref_object_dispose__213;
        v74 = 0;
        if (v14)
        {
          v30 = *(v80 + 6);
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = __43__UITextField__updateAutosizeStyleIfNeeded__block_invoke_2;
          v61[3] = &unk_1E7126340;
          v66 = v19;
          v67 = v26 - v28 + -10.0;
          v63 = &v79;
          v64 = &v75;
          v61[4] = self;
          v68 = v30;
          v65 = &v69;
          v62 = v7;
          [(_UICascadingTextStorage *)v6 coordinateAccess:v61];

LABEL_48:
          v56 = v70[5];
          if (v56 && ([v56 isEqual:v7] & 1) == 0)
          {
            v57 = v70[5];
            v58 = [(_UIFullFontSize *)self->_fullFontSize overrideUnlessDefault:v19];
            [(UITextField *)self setFont:v57 fullFontSize:v58 ambientOnly:0];
          }

          if (*(v76 + 6))
          {
            v59 = [(UITextField *)self interactionAssistant];
            [v59 setNeedsSelectionDisplayUpdate];
          }

          _Block_object_dispose(&v69, 8);

          _Block_object_dispose(&v75, 8);
          goto LABEL_54;
        }

        if (v3)
        {
          [v7 pointSize];
          v31 = [v13 fontWithSize:?];
          v32 = v31;
          if (v31 != v7)
          {
            goto LABEL_28;
          }
        }

        v32 = 0;
LABEL_28:
        if (v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = v7;
        }

        [v12 _legacy_sizeWithFont:v33];
        v35 = v34;
        v36 = v29;
        while (1)
        {
          v37 = v80;
          v38 = v80[6];
          if (v38 >= v19 || v35 >= v36)
          {
            break;
          }

          ++*(v76 + 6);
          v37[6] = v38 + 1.0;
          v40 = [UITextField _copyFont:"_copyFont:newSize:maxSize:" newSize:v7 maxSize:?];
          v41 = v70[5];
          v70[5] = v40;

          *&v42 = v80[6];
          *&v43 = v19;
          v44 = [(UITextField *)self _copyFont:v32 newSize:v42 maxSize:v43];

          v45 = v44;
          if (!v44)
          {
            v45 = v70[5];
          }

          [v12 _legacy_sizeWithFont:v45];
          v35 = v46;
          v32 = v44;
        }

        while (1)
        {
          [(UITextField *)self actualMinimumFontSize];
          if (v47 >= v38 || v35 <= v36)
          {
            break;
          }

          --*(v76 + 6);
          v80[6] = v80[6] + -1.0;
          v49 = [UITextField _copyFont:"_copyFont:newSize:maxSize:" newSize:v7 maxSize:?];
          v50 = v70[5];
          v70[5] = v49;

          *&v51 = v80[6];
          *&v52 = v19;
          v53 = [(UITextField *)self _copyFont:v32 newSize:v51 maxSize:v52];

          v54 = v53;
          if (!v53)
          {
            v54 = v70[5];
          }

          [v12 _legacy_sizeWithFont:v54];
          v35 = v55;
          v38 = v80[6];
          v32 = v53;
        }

        goto LABEL_48;
      }

      v12 = v4;
    }

    else
    {
      v12 = [(UITextField *)self placeholder];

      if (v3)
      {
        v13 = 0;
        v14 = 0;
        v9 = 1;
        goto LABEL_19;
      }
    }

    if ((*(&self->_textFieldFlags + 2) & 2) != 0)
    {
      v14 = dyld_program_sdk_at_least();
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    goto LABEL_19;
  }
}

- (BOOL)_showsBackgroundCoverView
{
  if (!self->_backgroundCoverView)
  {
    return 0;
  }

  result = [(UIView *)self isFirstResponder];
  backgroundCoverViewMode = self->_backgroundCoverViewMode;
  if (backgroundCoverViewMode == 3)
  {
    return 1;
  }

  if (backgroundCoverViewMode != 2)
  {
    if (backgroundCoverViewMode == 1)
    {
      return result;
    }

    return 0;
  }

  return !result;
}

- (CGRect)_textCanvasViewFrameIncludingContentInsetsFromFontsWhenNotContainedByFieldEditor
{
  v3 = [(UITextField *)self _fieldEditor];
  [v3 _contentInsetsFromFonts];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self bounds];
  [(UITextField *)self textRectForBounds:?];
  v13 = v7 + v12;
  v15 = v5 + v14;
  v17 = v16 - (v7 + v11);
  v19 = v18 - (v5 + v9);
  result.size.height = v19;
  result.size.width = v17;
  result.origin.y = v15;
  result.origin.x = v13;
  return result;
}

- (UIEdgeInsets)_padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_layoutFieldEditor
{
  v3 = [(UITextField *)self _fieldEditor];
  v19 = v3;
  if (v3)
  {
    v4 = [(UIView *)self isFirstResponder];
    v5 = v4;
    textFieldFlags = self->_textFieldFlags;
    if ((*&textFieldFlags & 0x1E) != 0 && !v4)
    {
      v9 = *MEMORY[0x1E695F058];
      v11 = *(MEMORY[0x1E695F058] + 8);
      v13 = *(MEMORY[0x1E695F058] + 16);
      v15 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      [(UIView *)self bounds];
      [(UITextField *)self editingRectForBounds:?];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      textFieldFlags = self->_textFieldFlags;
    }

    if ((*&textFieldFlags & 0x1E) == 0)
    {
      [v19 frame];
      if (![(UITextField *)self _tvHasFloatingFieldEditor])
      {
        [v19 setFrame:{v9, v11, v13, v15}];
      }
    }

    v3 = v19;
    if (v5)
    {
      if ([(UITextField *)self adjustsFontSizeToFitWidth])
      {
        v16 = [(UITextField *)self textInputTraits];
        v17 = v13 - [v16 insertionPointWidth];

        [v19 contentSize];
        if (v18 <= v17)
        {
          [v19 setScrollXOffset:0 scrollYOffset:{objc_msgSend(v19, "scrollYOffset")}];
        }
      }

      [v19 scrollSelectionToVisible:0];
      v3 = v19;
    }
  }

  [v3 _applyCorrectTextContainerSize];
}

- (UIView)leftView
{
  v2 = 8;
  if ((*(&self->super.super._viewFlags + 2) & 0x400000) == 0)
  {
    v2 = 7;
  }

  return *(&self->super.super.super.super.isa + OBJC_IVAR___UITextField__fieldEditor[v2]);
}

- (UIView)rightView
{
  v2 = 7;
  if ((*(&self->super.super._viewFlags + 2) & 0x400000) == 0)
  {
    v2 = 8;
  }

  return *(&self->super.super.super.super.isa + OBJC_IVAR___UITextField__fieldEditor[v2]);
}

- (id)clearButton
{
  clearButton = self->_clearButton;
  if (clearButton)
  {
    goto LABEL_15;
  }

  [(UITextField *)self clearButtonRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(UIView *)self traitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6)
  {
    v14 = +[UIButtonConfiguration filledButtonConfiguration];
    [v14 setButtonSize:1];
    v15 = [(UITextField *)self _clearButtonImageForState:0];
    [v14 setImage:v15];

    v16 = [(UIView *)self traitCollection];
    v17 = [v16 preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(v17))
    {
      if (UIContentSizeCategoryCompareToCategory(v17, &cfstr_Uictcontentsiz_11.isa) != NSOrderedAscending)
      {
        v18 = 1;
LABEL_9:

        v21 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleFootnote" scale:v18];
        [v14 setPreferredSymbolConfigurationForImage:v21];

        v22 = [(UIButton *)_UITextFieldClearButton buttonWithConfiguration:v14 primaryAction:0];
        v23 = self->_clearButton;
        self->_clearButton = v22;

        goto LABEL_10;
      }

      UIContentSizeCategoryCompareToCategory(v17, &cfstr_Uictcontentsiz_9.isa);
    }

    v18 = 2;
    goto LABEL_9;
  }

  v19 = [(UIButton *)[_UITextFieldClearButton alloc] initWithFrame:v5, v7, v9, v11];
  v20 = self->_clearButton;
  self->_clearButton = v19;

  [(_UITextFieldClearButton *)self->_clearButton setImageProvider:self];
LABEL_10:
  [(UIControl *)self->_clearButton addTarget:self action:sel__clearButtonClicked_ forControlEvents:64];
  [(UIView *)self->_clearButton setOpaque:0];
  [(UIView *)self->_clearButton setBackgroundColor:0];
  v24 = v9 + -44.0;
  if (v9 + -44.0 > 0.0)
  {
    v24 = 0.0;
  }

  v25 = v24 * 0.5;
  v26 = v11 + -44.0;
  if (v11 + -44.0 > 0.0)
  {
    v26 = 0.0;
  }

  [(UIView *)self->_clearButton _setTouchInsets:v26 * 0.5, v25, v26 * 0.5, v25];
  clearButton = self->_clearButton;
LABEL_15:

  return clearButton;
}

- (CGPoint)textContainerOrigin
{
  [(UIFieldEditor *)self->_fieldEditor textContainerOrigin];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)_clipRectForFadedEdges
{
  if ([objc_opt_class() _wantsFadedEdges] && !-[UITextField _fieldEditorAttached](self, "_fieldEditorAttached"))
  {
    [(_UITextCanvas *)self->_textCanvasView bounds];
  }

  else
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_updateLabel
{
  label = self->_label;
  if (!label)
  {
    return;
  }

  [(UIView *)label sizeToFit];
  [(UIView *)self->_label frame];
  v5 = v4;
  iconView = self->_iconView;
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    if (!iconView)
    {
      [(UIView *)self bounds];
      v7 = v10 - v5 + -6.0 - self->_labelOffset;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (iconView)
  {
LABEL_7:
    [(UITextField *)self iconRect];
    v7 = self->_labelOffset + v8 + v9 + 3.0;
    goto LABEL_9;
  }

  v7 = self->_labelOffset + 6.0;
LABEL_9:
  [(UIView *)self bounds];
  [(UITextField *)self _availableTextRectForBounds:0 forEditing:?];
  v11 = self->_label;

  [(UILabel *)v11 setFrame:v7];
}

- (void)_updatePlaceholderPosition
{
  v3 = [(UILabel *)self->_placeholderLabel text];
  v4 = [v3 length];

  if (v4)
  {
    if ([(UILabel *)self->_placeholderLabel textAlignment]!= NSTextAlignmentCenter)
    {
      v5 = [(UITextField *)self _currentTextAlignment];
      if (v5 != [(UILabel *)self->_placeholderLabel textAlignment])
      {
        placeholderLabel = self->_placeholderLabel;

        [(UILabel *)placeholderLabel setTextAlignment:v5];
      }
    }
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = 0.0;
  v3 = 0.0;
  if ((*(&self->_textFieldFlags + 4) & 0x40) != 0)
  {
    [(UITextField *)self textRectForBounds:0.0, 0.0, 100.0, 100.0];
    v7 = v5 == 0.0 && v5 + v6 == 100.0;
    if (v7 && self->_padding.left == 0.0)
    {
      v3 = 0.0;
      if (self->_padding.right == 0.0)
      {
        [(UITextField *)self _applicableContentOutsetsFromFontsOversize:0 extremeSizing:?];
        v3 = v8 + 0.0;
        v2 = v9 + 0.0;
      }
    }

    else
    {
      v3 = 0.0;
    }
  }

  v10 = 0.0;
  v11 = 0.0;
  v12 = v2;
  result.right = v12;
  result.bottom = v11;
  result.left = v3;
  result.top = v10;
  return result;
}

- (UIColor)selectionHighlightColor
{
  v3 = [(UITextField *)self textInputTraits];
  v4 = [v3 selectionHighlightColor];

  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled](UITextSelectionDisplayInteraction, "isModernSelectionViewEnabled") && (-[UIView traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 userInterfaceStyle], v5, v6 == 2))
  {
    v7 = [v4 colorWithAlphaComponent:0.35];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (int)textSelectionBehavior
{
  if ([(UITextField *)self clearsOnInsertion])
  {
    return 3;
  }

  traits = self->_traits;

  return [(UITextInputTraits *)traits textSelectionBehavior];
}

- (CGRect)clearButtonRect
{
  [(UIView *)self bounds];

  [(UITextField *)self clearButtonRectForBounds:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)clearButtonOffset
{
  width = self->_clearButtonOffset.width;
  height = self->_clearButtonOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UITextRange)selectedTextRange
{
  v2 = [(UITextField *)self _fieldEditor];
  v3 = [v2 selectedTextRange];

  return v3;
}

- (BOOL)_wantsBaselineUpdatingFollowingConstraintsPass
{
  if ((*(&self->super.super._viewFlags + 7) & 2) != 0 && (*(&self->_textFieldFlags + 3) & 0x80) != 0)
  {
    return 1;
  }

  v3.receiver = self;
  v3.super_class = UITextField;
  return [(UIView *)&v3 _wantsBaselineUpdatingFollowingConstraintsPass];
}

- (CGRect)_backgroundBounds
{
  [(UIView *)self bounds];

  [(UITextField *)self borderRectForBounds:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)didMoveToWindow
{
  v3 = [(UIView *)self window];
  if (!v3)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    if (!v4)
    {
      return;
    }

    v5 = v4;
    v6 = [(UIView *)self isUserInteractionEnabled];

    if (!v6)
    {
      return;
    }

    v7 = +[UIKeyboardImpl activeInstance];
    [v7 removeASPVisualEffectsIfNecessary:self];
    v3 = v7;
  }
}

- (BOOL)_partsShouldBeMini
{
  v3 = [(UITextField *)self borderStyle];
  if (v3)
  {

    LOBYTE(v3) = [(UITextField *)self _heightShouldBeMini];
  }

  return v3;
}

- (int64_t)_currentTextAlignment
{
  v2 = [(UITextField *)self _textStorage];
  v3 = [v2 _ui_resolvedTextAlignment];

  return v3;
}

- (double)_fullFontSize
{
  fullFontSize = self->_fullFontSize;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__UITextField__fullFontSize__block_invoke;
  v4[3] = &unk_1E70F66A0;
  v4[4] = self;
  [(_UIFullFontSize *)fullFontSize valueWithEvaluationIfNeeded:v4];
  return result;
}

- (CGRect)editRect
{
  [(UIView *)self bounds];

  [(UITextField *)self editingRectForBounds:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (NSString)text
{
  v3 = [(UITextField *)self _text];
  v4 = [(UITextField *)self textInputTraits];
  v5 = [v4 textTrimmingSet];

  if (v5)
  {
    v6 = [v3 _stringByTrimmingCharactersInCFCharacterSet:v5];

    v3 = v6;
  }

  v7 = [(UITextField *)self _shouldObscureInput];
  v8 = [v3 copy];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [MEMORY[0x1E696AEC0] _newZStringWithString:v8];
  }

  else
  {
    v10 = [v8 copy];
  }

  v11 = v10;

  return v11;
}

- (double)_clearButtonMarginX
{
  v2 = [(UIView *)self traitCollection];
  [v2 userInterfaceIdiom];

  return 8.0;
}

- (_NSRange)selectionRange
{
  v2 = [(UITextField *)self _fieldEditor];
  v3 = [v2 selectionRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (double)_roundedRectBackgroundCornerRadius
{
  v3 = [(UITextField *)self _backgroundView];
  v4 = v3;
  if (v3)
  {
    [v3 _continuousCornerRadius];
    preferredBackgroundCornerRadius = v5;
  }

  else
  {
    preferredBackgroundCornerRadius = self->_preferredBackgroundCornerRadius;
  }

  return preferredBackgroundCornerRadius;
}

- (void)_didChangeSecureTextEntry
{
  [(UITextField *)self _setNeedsStyleRecalc];
  v3 = [(UITextField *)self _shouldObscureInput];
  [(_UITextLayoutController *)self->_textLayoutController setDocumentObscured:v3];
  v4 = [(UITextField *)self _fieldEditor];
  [v4 setSecureTextEntry:{-[UITextField isSecureTextEntry](self, "isSecureTextEntry")}];

  if (v3)
  {
    v5 = 18;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(_UITextCanvas *)self->_textCanvasView layer];
  [v6 setDisableUpdateMask:v5];

  v7 = +[UIKeyboardImpl activeInstance];
  v8 = [v7 inputDelegateManager];
  v9 = [v8 keyInputDelegate];

  if (v9 == self)
  {
    v10 = +[UIKeyboardImpl activeInstance];
    [v10 setDelegate:self];
  }

  if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(UIView *)self semanticContentAttribute]]== UIUserInterfaceLayoutDirectionRightToLeft && [(UITextField *)self textAlignment]== NSTextAlignmentNatural)
  {
    [(UITextField *)self setTextAlignment:2];
  }

  if (v3)
  {
    [(UITextField *)self selectionRange];
    if (v11)
    {
      [(UITextField *)self selectAll];
    }
  }

  v12 = [(UITextField *)self interactionAssistant];
  [v12 updateDisplayedSelection];
}

- (BOOL)_shouldUnobscureTextWithContentCover
{
  v3 = [(UITextField *)self _showsContentCoverView];
  if (v3)
  {

    LOBYTE(v3) = [(UITextField *)self _contentCoverUnsecuresText];
  }

  return v3;
}

- (void)_noteThatKeyboardAppearanceHasChanged
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__notifySystemKeyboardOfAppearanceChange object:0];

  [(UITextField *)self performSelector:sel__notifySystemKeyboardOfAppearanceChange withObject:0 afterDelay:0.0];
}

- (id)automaticallySelectedOverlay
{
  v3 = [(UITextField *)self customOverlayContainer];
  if (v3)
  {
    v4 = v3;
    v5 = v4;
    goto LABEL_16;
  }

  v6 = [(UIView *)self _scroller];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = [(UIView *)self superview];
  if (v7)
  {
    v4 = v7;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_14;
      }

      v8 = [v4 superview];

      v4 = v8;
    }

    while (v8);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || ([v6 _flipsHorizontalAxis])
  {
    goto LABEL_15;
  }

  v4 = v6;
  if (![v4 isScrollEnabled])
  {
    goto LABEL_14;
  }

  if ([v4 _canScrollY])
  {
    v5 = v4;
    goto LABEL_16;
  }

  v5 = v4;
  if (([v4 _canScrollX] & 1) == 0)
  {
LABEL_14:

LABEL_15:
    v9 = [(UIView *)self keyboardSceneDelegate];
    v5 = [v9 containerView];

    v4 = v6;
  }

LABEL_16:

  return v5;
}

- (id)customOverlayContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = 0;
  if ((objc_opt_respondsToSelector() & 1) != 0 && WeakRetained != self)
  {
    v4 = [(UITextField *)WeakRetained customOverlayContainer];
  }

  return v4;
}

- (double)actualMinimumFontSize
{
  v3 = dyld_program_sdk_at_least();
  minimumFontSize = self->_minimumFontSize;
  if ((v3 & 1) == 0)
  {
    [off_1E70ECC18 systemMinimumFontSize];
    if (minimumFontSize < v5)
    {
      return v5;
    }
  }

  return minimumFontSize;
}

- (BOOL)canBecomeFirstResponder
{
  LODWORD(v3) = [(UIView *)self isUserInteractionEnabled];
  if (v3)
  {
    v4 = [(UIView *)self _containedInAbsoluteResponderChain];
    v5 = v4;
    if (v4 && (*(&self->_textFieldFlags + 1) & 4) != 0)
    {
      v9 = 0;
    }

    else
    {
      if ([(UIControl *)self isEnabled])
      {
        v6 = [(UITextField *)self _delegateShouldBeginEditing];
        v7 = 512;
        if (!v6)
        {
          v7 = 0;
        }

        v8 = *&self->_textFieldFlags & 0xFFFFFFFFFFFFFDFFLL | v7;
      }

      else
      {
        v8 = *&self->_textFieldFlags & 0xFFFFFFFFFFFFFDFFLL;
      }

      self->_textFieldFlags = v8;
      v9 = (2 * v8) & 0x400;
      if (v5)
      {
        v9 = 0;
      }
    }

    textFieldFlags = self->_textFieldFlags;
    self->_textFieldFlags = (*&textFieldFlags & 0xFFFFFFFFFFFFFBFFLL | v9);
    return (*&textFieldFlags >> 9) & 1;
  }

  return v3;
}

- (BOOL)_delegateShouldBeginEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained textFieldShouldBeginEditing:self];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = 1;
      goto LABEL_7;
    }

    v4 = [WeakRetained textFieldShouldStartEditing:self];
  }

  v5 = v4;
LABEL_7:

  return v5;
}

uint64_t __33__UITextField__attachFieldEditor__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) editRect];

  return [v1 setFrame:?];
}

- (id)_editingProcessor
{
  v3 = objc_getAssociatedObject(self, &EditingProcessorKey);
  if (!v3)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = objc_opt_new();
      [v3 setDelegate:self->_visualStyle];
      objc_setAssociatedObject(self, &EditingProcessorKey, v3, 1);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)becomeFirstResponder
{
  v3 = [(UIView *)self keyboardSceneDelegate];
  if (-[UITextField keyboardAppearance](self, "keyboardAppearance") == 127 || -[UIView isFirstResponder](self, "isFirstResponder") && ([v3 responder], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 != self))
  {
    [v3 _beginIgnoringReloadInputViews];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(UIView *)self isFirstResponder];
  v14.receiver = self;
  v14.super_class = UITextField;
  v7 = [(UIView *)&v14 becomeFirstResponder];
  if (v7)
  {
    [(UITextField *)self scrollTextFieldToVisibleIfNecessary];
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:self selector:sel__receivedKeyboardDidShowNotification_ name:@"UIKeyboardDidShowNotification" object:0];

    if ([(NSConcreteTextStorage *)self->_textStorage length])
    {
      if (v6 && [(UITextField *)self textSelectionBehavior]== 3)
      {
        [(UIFieldEditor *)self->_fieldEditor _updateTextSelectionFromBehavior];
      }
    }

    else
    {
      [(UITextField *)self setClearsOnInsertion:0];
    }

    if ((*(&self->_textFieldFlags + 1) & 1) != 0 && [(UIScrollView *)self->_fieldEditor isScrollAnimating])
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      v10 = [(UITextField *)self _fieldEditor];
      [v9 addObserver:self selector:sel__initialScrollDidFinish_ name:@"UITextSelectionDidScroll" object:v10];
    }

    else if ([(UITextField *)self _showsContentCoverView])
    {
      [(UITextField *)self setNeedsLayout];
    }

    else
    {
      [(UITextField *)self _activateSelectionView];
    }

    v11 = [(UITextField *)self textInputTraits];
    v12 = [(UIView *)self _inheritedInteractionTintColor];
    [v11 _setColorsToMatchTintColor:v12];

    if (v5)
    {
      [v3 _endIgnoringReloadInputViews];
      [(UIResponder *)self reloadInputViews];
    }
  }

  else if ((v5 & 1) != 0 && [v3 _endIgnoringReloadInputViews])
  {
    [v3 forceReloadInputViews];
  }

  return v7;
}

- (void)_becomeFirstResponder
{
  v6.receiver = self;
  v6.super_class = UITextField;
  [(UIResponder *)&v6 _becomeFirstResponder];
  v3 = [(UITextField *)self textInputTraits];
  if ([v3 deferBecomingResponder])
  {
    deferringBecomeFirstResponder = self->_deferringBecomeFirstResponder;

    if (!deferringBecomeFirstResponder)
    {
      self->_deferringBecomeFirstResponder = 1;
      return;
    }
  }

  else
  {
  }

  self->_deferringBecomeFirstResponder = 0;
  [(UITextField *)self _attachFieldEditor];
  v5 = [(UITextField *)self _fieldEditor];
  [v5 setScrollEnabled:0];

  [(_UITextFieldBackgroundProvider *)self->_backgroundProvider didChangeFirstResponder];
  [(UITextField *)self _updateSelectionGestures];
  [(UITextField *)self _notifyDidBeginEditing];
}

- (void)_addFieldEditorToView
{
  v3 = [(UITextField *)self _fieldEditorHostAllowingCreation:1];
  v4 = [(UITextField *)self _fieldEditor];
  [v3 addFieldEditor:v4];

  [(UITextField *)self _invalidateAllGlyphsAndTextLayout];
}

- (void)_notifyDidBeginEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained textFieldDidBecomeFirstResponder:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained textFieldDidBeginEditing:self];
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"UITextFieldTextDidBeginEditingNotification" object:self];
}

- (UIView)inputAccessoryView
{
  inputAccessoryView = self->_inputAccessoryView;
  if (inputAccessoryView)
  {
    v3 = inputAccessoryView;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITextField;
    v3 = [(UIResponder *)&v5 inputAccessoryView];
  }

  return v3;
}

- (void)_attachFieldEditor
{
  if ([(UITextField *)self _showsContentCoverView])
  {

    [(UITextField *)self _invalidateAllGlyphsAndTextLayout];
  }

  else
  {
    v3 = [(UITextField *)self _fieldEditor];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __33__UITextField__attachFieldEditor__block_invoke;
    v13 = &unk_1E70F35B8;
    v4 = v3;
    v14 = v4;
    v15 = self;
    [UIView performWithoutAnimation:&v10];
    textFieldFlags = self->_textFieldFlags;
    if ((*&textFieldFlags & 0x100) == 0)
    {
      self->_textFieldFlags = (*&textFieldFlags | 0x100);
      [(UITextField *)self _willAttachFieldEditor:v10];
      [(UITextField *)self _addFieldEditorToView];
      [v4 activateEditor];
    }

    if ([(UIView *)self isFirstResponder:v10])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if ([(UITextField *)self clearsOnBeginEditing]&& [(UITextField *)self _delegateShouldClear])
      {
        v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1EFB14550];
        [v4 setAttributedText:v7];
      }

      v8 = [(UITextField *)self _inputController];
      [v8 setAllowsEditingTextAttributes:(*&self->_textFieldFlags >> 16) & 1];

      if ((*&textFieldFlags & 0x100) == 0)
      {
        [(UIControl *)self _sendActionsForEvents:0x10000 withEvent:0];
        v9 = [MEMORY[0x1E696AD88] defaultCenter];
        [v9 addObserver:self selector:sel__applicationResuming_ name:@"UIApplicationResumedNotification" object:UIApp];
      }

      [(UITextField *)self _activateSelectionView];
    }

    if ((*&textFieldFlags & 0x100) == 0)
    {
      [(UITextField *)self _didAttachFieldEditor];
    }

    [(UITextField *)self setNeedsLayout];
  }
}

- (void)_activateSelectionView
{
  v3 = [(UITextField *)self inputDelegate];

  if (v3)
  {
    v4 = [(UITextField *)self interactionAssistant];
    [v4 setSelectionDisplayVisible:1];

    v5 = [(UITextField *)self interactionAssistant];
    [v5 activateSelection];
  }
}

- (void)_didAttachFieldEditor
{
  v4 = objc_getAssociatedObject(self, &EditingTokenKey);
  if (v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UITextField.m" lineNumber:6443 description:@"The textfield is already editing?!"];
  }

  v5 = [(UITextField *)self _editingProcessor];
  value = [v5 beginEditingWithTextStorage:self->_textStorage];

  if (value)
  {
    objc_setAssociatedObject(self, &EditingTokenKey, value, 0x301);
    [(UITextField *)self _invalidateAfterUpdatingEditingAttributes];
  }

  v6 = [(UITextField *)self _inputController];
  [v6 _updateEmptyStringAttributes];

  [(UITextField *)self _ensureSelectionContainerViewSubviewOrdering];
}

- (UITextInputDelegate)inputDelegate
{
  v2 = [(UITextField *)self _fieldEditor];
  v3 = [v2 inputDelegate];

  return v3;
}

- (void)_updateSelectionGestures
{
  v6 = [(UITextField *)self interactionAssistant];
  if ([(UITextField *)self isTextDragActive]|| [(UITextField *)self isTextDropActive])
  {
    if ([(UIView *)self isFirstResponder])
    {
      [v6 deactivateSelection];
    }

    goto LABEL_5;
  }

  v3 = [(UITextField *)self _showsContentCoverView];
  v4 = [(UIView *)self isFirstResponder];
  if (v3)
  {
    v5 = v6;
    if (v4)
    {
      [v6 deactivateSelection];
      [v6 hideSelectionCommands];
LABEL_5:
      [v6 clearGestureRecognizers:1];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = v6;
    if (v4)
    {
      [v6 activateSelection];
      v5 = v6;
    }
  }

  [v5 setGestureRecognizers];
LABEL_6:
}

- (BOOL)isTextDragActive
{
  textDragDropSupport = self->_textDragDropSupport;
  if (!textDragDropSupport)
  {
    v4 = [UITextDragDropSupport installTextDragDropOnView:self];
    v5 = self->_textDragDropSupport;
    self->_textDragDropSupport = v4;

    textDragDropSupport = self->_textDragDropSupport;
  }

  return [(UITextDragDropSupport *)textDragDropSupport isDragActive];
}

- (BOOL)isTextDropActive
{
  textDragDropSupport = self->_textDragDropSupport;
  if (!textDragDropSupport)
  {
    v4 = [UITextDragDropSupport installTextDragDropOnView:self];
    v5 = self->_textDragDropSupport;
    self->_textDragDropSupport = v4;

    textDragDropSupport = self->_textDragDropSupport;
  }

  return [(UITextDragDropSupport *)textDragDropSupport isDropActive];
}

- (BOOL)_supportsImagePasteCached
{
  textFieldFlags = self->_textFieldFlags;
  if ((*&textFieldFlags & 0x40000000000) == 0)
  {
    v4 = [(UIResponder *)self _supportsImagePaste];
    v5 = 0x40000000000;
    if (v4)
    {
      v5 = 0xC0000000000;
    }

    textFieldFlags = (*&self->_textFieldFlags & 0xFFFFF3FFFFFFFFFFLL | v5);
    self->_textFieldFlags = textFieldFlags;
  }

  return (*&textFieldFlags >> 43) & 1;
}

- (void)scrollTextFieldToVisibleIfNecessary
{
  if ([(UIResponder *)self _textInputSource]!= 3)
  {
    v3 = [(UIView *)self _scroller];
    if (v3)
    {
      while (1)
      {
        v18 = v3;
        if ([v3 isScrollEnabled])
        {
          break;
        }

        v4 = [v18 _scroller];

        v3 = v4;
        if (!v4)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      v18 = 0;
    }

    v5 = [(UIView *)self superview];
    [(UIView *)self frame];
    [v5 convertRect:v18 toView:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    if (![v18 isDecelerating] || (objc_msgSend(v18, "_animatedTargetOffset"), v15 = v14, v17 = v16, objc_msgSend(v18, "bounds"), v20.origin.x = v15, v20.origin.y = v17, v21.origin.x = v7, v21.origin.y = v9, v21.size.width = v11, v21.size.height = v13, !CGRectContainsRect(v20, v21)))
    {
      if ([(UITextField *)self _delegateShouldScrollToVisibleWhenBecomingFirstResponder])
      {
        [v18 scrollRectToVisible:1 animated:{v7, v9, v11, v13}];
      }
    }
  }
}

- (BOOL)_delegateShouldScrollToVisibleWhenBecomingFirstResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained _textFieldShouldScrollToVisibleWhenBecomingFirstResponder:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_delegateShouldEndEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained textFieldShouldEndEditing:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_finishResignFirstResponder
{
  v6.receiver = self;
  v6.super_class = UITextField;
  v3 = [(UIResponder *)&v6 _finishResignFirstResponder];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:@"UIKeyboardDidShowNotification" object:0];

  return v3;
}

- (void)_willUpdateAfterDetachingFieldEditor
{
  [(UITextField *)self willChangeValueForKey:@"text"];

  [(UITextField *)self willChangeValueForKey:@"attributedText"];
}

- (void)_resignFirstResponder
{
  if (self->_deferringBecomeFirstResponder)
  {
    v4.receiver = self;
    v4.super_class = UITextField;
    [(UIResponder *)&v4 _resignFirstResponder];
  }

  else
  {
    if (![(UITextField *)self isTextDragActive])
    {
      [(UITextField *)self _detachFieldEditor];
    }

    v3.receiver = self;
    v3.super_class = UITextField;
    [(UIResponder *)&v3 _resignFirstResponder];
    [(_UITextFieldBackgroundProvider *)self->_backgroundProvider didChangeFirstResponder];
    [(UIControl *)self _sendActionsForEvents:0x40000 withEvent:0];
    [(UITextField *)self _updateSelectionGestures];
    [(UITextField *)self _notifyDidEndEditing];
  }
}

- (void)_stopObservingFieldEditorScroll
{
  fieldEditor = self->_fieldEditor;
  if (fieldEditor)
  {
    v4 = MEMORY[0x1E696AD88];
    v5 = fieldEditor;
    v6 = [v4 defaultCenter];
    [v6 removeObserver:self name:@"UITextSelectionDidScroll" object:v5];
  }
}

- (void)_didDetachFieldEditor
{
  objc_setAssociatedObject(self, &EditingTokenKey, 0, 1);
  v3 = [(UITextField *)self _inputController];
  [v3 _updateEmptyStringAttributes];
}

- (_NSRange)_rangeForSetText
{
  v2 = [(NSConcreteTextStorage *)self->_textStorage length];
  v3 = 0;
  result.length = v2;
  result.location = v3;
  return result;
}

- (BOOL)resignFirstResponder
{
  if ((*(&self->_textFieldFlags + 1) & 8) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v3 = [(UITextField *)self _showsContentCoverView];
    *&self->_textFieldFlags |= 0x800uLL;
    v11.receiver = self;
    v11.super_class = UITextField;
    v4 = [(UIResponder *)&v11 resignFirstResponder];
    *&self->_textFieldFlags &= ~0x800uLL;
    if (v4)
    {
      v5 = [(UITextField *)self interactionAssistant];
      [v5 setSelectionDisplayVisible:0];

      v6 = [(UITextField *)self interactionAssistant];
      [v6 deactivateSelection];

      v7 = [(UITextField *)self _inputController];
      [v7 didEndEditing];
    }

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 removeObserver:self name:@"UIKeyboardDidShowNotification" object:0];

    if (v3 && [(UITextField *)self _shouldObscureInput])
    {
      v9 = [(UITextField *)self _fieldEditor];
      [v9 _obscureAllText];
    }
  }

  return v4;
}

- (id)metadataDictionariesForDictationResults
{
  if (*(&self->_textFieldFlags + 1))
  {
    v3 = [(UITextField *)self _fieldEditor];
    v2 = [v3 metadataDictionariesForDictationResults];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_didUpdateAfterDetachingFieldEditor
{
  [(UITextField *)self didChangeValueForKey:@"text"];
  v3 = objc_getAssociatedObject(self, &EditingTokenKey);
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v5 = [v3 endEditing];
    v4 = v6;
    if (v5)
    {
      [(UIView *)self invalidateIntrinsicContentSize];
      v4 = v6;
    }
  }
}

- (void)_notifyDidEndEditing
{
  v8[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained textFieldDidResignFirstResponder:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained textFieldDidEndEditing:self reason:0];
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained textFieldDidEndEditing:self];
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = @"UITextFieldEndEditingReasonKey";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 postNotificationName:@"UITextFieldTextDidEndEditingNotification" object:self userInfo:v6];
}

- (void)_forceObscureAllText
{
  if (*(&self->_textFieldFlags + 1))
  {
    v3 = [(UITextField *)self _fieldEditor];
    [v3 _obscureAllText];
  }
}

- (void)_removeFieldEditorAndHost
{
  v3 = objc_getAssociatedObject(self, &FieldEditorHostKey);
  if (v3)
  {
    v4 = v3;
    [v3 removeFieldEditor];
    objc_setAssociatedObject(self, &FieldEditorHostKey, 0, 1);
    v3 = v4;
  }
}

- (void)removeFromSuperview
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 removeASPVisualEffectsIfNecessary:self];

  v4.receiver = self;
  v4.super_class = UITextField;
  [(UIView *)&v4 removeFromSuperview];
}

- (UITextInputAssistantItem)inputAssistantItem
{
  inputAssistantItem = self->_inputAssistantItem;
  if (inputAssistantItem)
  {
    v3 = inputAssistantItem;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITextField;
    v3 = [(UIResponder *)&v5 inputAssistantItem];
  }

  return v3;
}

- (BOOL)hasText
{
  if ((*(&self->_textFieldFlags + 1) & 1) == 0)
  {
    return [(NSConcreteTextStorage *)self->_textStorage length]!= 0;
  }

  v3 = [(UITextField *)self _fieldEditor];
  v4 = [v3 hasText];

  return v4;
}

- (UITextInputTokenizer)tokenizer
{
  v2 = [(UITextField *)self _fieldEditor];
  v3 = [v2 tokenizer];

  return v3;
}

- (UITextPosition)endOfDocument
{
  v2 = [(UITextField *)self _fieldEditor];
  v3 = [v2 endOfDocument];

  return v3;
}

- (BOOL)supportsAdaptiveImageGlyph
{
  if ((*(&self->_textFieldFlags + 5) & 2) != 0)
  {
    v4 = [(UITextField *)self _inputController];
    v5 = [v4 supportsAdaptiveImageGlyph];

    LOBYTE(v3) = v5;
  }

  else
  {
    v3 = dyld_program_sdk_at_least();
    if (v3)
    {

      LOBYTE(v3) = [(UITextField *)self _supportsImagePasteCached];
    }
  }

  return v3;
}

- (id)_placeholderColor
{
  v2 = [(UITextField *)self visualStyle];
  v3 = [v2 placeholderColor];

  return v3;
}

- (void)_updateTextEffectsConfigurationIfNeeded
{
  if (!self->_cuiStyleEffectConfiguration)
  {
    return;
  }

  v3 = [(UIView *)self traitCollection];
  v4 = [(UITraitCollection *)v3 _styleEffectAppearanceName];

  v5 = [(CUIStyleEffectConfiguration *)self->_cuiStyleEffectConfiguration appearanceName];
  v10 = v4;
  v6 = v5;
  if (v10 == v6)
  {
  }

  else
  {
    if (v10 && v6)
    {
      v7 = [v10 isEqual:v6];

      if (v7)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v8 = [(CUIStyleEffectConfiguration *)self->_cuiStyleEffectConfiguration copy];
    [v8 setAppearanceName:v10];
    cuiStyleEffectConfiguration = self->_cuiStyleEffectConfiguration;
    self->_cuiStyleEffectConfiguration = v8;

    [(UITextField *)self _propagateCuiProperties];
  }

LABEL_11:
}

- (void)_propagateCuiProperties
{
  fieldEditor = self->_fieldEditor;
  if (fieldEditor)
  {
    [(UIFieldEditor *)fieldEditor _updateLayoutManagerStyleEffectConfiguration];
  }

  if (self->_placeholderLabel)
  {
    v4 = [(UITextField *)self _cuiCatalog];
    [(UILabel *)self->_placeholderLabel _setCuiCatalog:v4];

    v5 = [(UITextField *)self _cuiStyleEffectConfiguration];
    [(UILabel *)self->_placeholderLabel _setCuiStyleEffectConfiguration:v5];
  }

  if (self->_suffixLabel)
  {
    v6 = [(UITextField *)self _cuiCatalog];
    [(UILabel *)self->_suffixLabel _setCuiCatalog:v6];

    v7 = [(UITextField *)self _cuiStyleEffectConfiguration];
    [(UILabel *)self->_suffixLabel _setCuiStyleEffectConfiguration:v7];
  }

  if (self->_prefixLabel)
  {
    v8 = [(UITextField *)self _cuiCatalog];
    [(UILabel *)self->_prefixLabel _setCuiCatalog:v8];

    v9 = [(UITextField *)self _cuiStyleEffectConfiguration];
    [(UILabel *)self->_prefixLabel _setCuiStyleEffectConfiguration:v9];
  }

  if (self->_label)
  {
    v10 = [(UITextField *)self _cuiCatalog];
    [(UILabel *)self->_label _setCuiCatalog:v10];

    v11 = [(UITextField *)self _cuiStyleEffectConfiguration];
    [(UILabel *)self->_label _setCuiStyleEffectConfiguration:v11];
  }
}

- (void)_notifySystemKeyboardOfAppearanceChange
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v4 responder];

  if (v3 == self)
  {
    [v4 traitCollectionDidChange];
  }
}

- (id)obtainSelectionGrabberSuppressionAssertion
{
  v2 = [(UITextField *)self interactionAssistant];
  v3 = [v2 obtainSelectionGrabberSuppressionAssertion];

  return v3;
}

- (NSString)searchText
{
  if ([(UITextField *)self hasMarkedText])
  {
    v3 = [(UITextField *)self _fieldEditor];
    v4 = [v3 text];
    v5 = [v3 markedTextRange];
    if (v5)
    {
      v6 = +[UIKeyboardImpl activeInstance];
      v7 = [v6 searchStringForMarkedText];
      v8 = v7;
      v9 = &stru_1EFB14550;
      if (v7)
      {
        v9 = v7;
      }

      v10 = v9;

      v11 = [(_UITextLayoutController *)self->_textLayoutController characterRangeForTextRange:v5];
      v13 = [v4 stringByReplacingCharactersInRange:v11 withString:{v12, v10}];

      v4 = v13;
    }

    v14 = [(UITextField *)self textInputTraits];
    v15 = [v14 textTrimmingSet];

    if (v15)
    {
      v16 = [v4 _stringByTrimmingCharactersInCFCharacterSet:v15];

      v4 = v16;
    }
  }

  else
  {
    v4 = [(UITextField *)self text];
  }

  if (dyld_program_sdk_at_least())
  {
    v17 = [v4 mutableCopy];
    [(UITextField *)self _sanitizeText:v17];

    v4 = v17;
  }

  v18 = [(UITextField *)self _shouldObscureInput];
  v19 = v4;
  v20 = v19;
  if (v19 && v18)
  {
    v21 = [MEMORY[0x1E696AEC0] _newZStringWithString:v19];
  }

  else
  {
    v21 = v19;
  }

  v22 = v21;

  return v22;
}

- (BOOL)hasMarkedText
{
  v2 = [(UITextField *)self _fieldEditor];
  v3 = [v2 markedTextRange];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_shouldCollectAsKeyView
{
  if (![(UIView *)self isUserInteractionEnabled]|| ![(UIControl *)self isEnabled])
  {
    return 0;
  }

  return [(UITextField *)self isEditable];
}

- (id)_internalTextLayoutController
{
  v2 = [(UITextField *)self textLayoutController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (Class)_intelligenceBaseClass
{
  sub_188A34624(0, &qword_1EA934D60);

  return swift_getObjCClassFromMetadata();
}

- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4
{
  v5 = a4;
  v6 = self;
  _sSo11UITextFieldC5UIKitE27_intelligenceCollectContent2in9collectorySo6CGRectV_21UIIntelligenceSupport0J16ElementCollectorCtF_0(v5);
}

- (id)largeContentTitle
{
  v3 = [(UIView *)self _largeContentStoredProperties];
  v4 = [v3 didSetLargeContentTitle];

  if (v4)
  {
    v9.receiver = self;
    v9.super_class = UITextField;
    v5 = [(UIView *)&v9 largeContentTitle];
  }

  else
  {
    v6 = [(UITextField *)self attributedText];
    v5 = [v6 string];

    if (![v5 length])
    {
      v7 = [(UITextField *)self placeholder];

      v5 = v7;
    }
  }

  return v5;
}

- (void)_insertAttributedText:(id)a3 withAnimation:(int64_t)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(UITextField *)self selectedTextRange];
  if (!v9)
  {
    v10 = [(UITextField *)self endOfDocument];
    v11 = [(UITextField *)self endOfDocument];
    v9 = [(UITextField *)self textRangeFromPosition:v10 toPosition:v11];
  }

  [(UITextField *)self _replaceRange:v9 withAttributedText:v12 usingAnimation:a4 completion:v8];
}

- (void)_replaceRange:(id)a3 withAttributedText:(id)a4 usingAnimation:(int64_t)a5 completion:(id)a6
{
  v14 = a3;
  v11 = a4;
  v12 = a6;
  if (a5 == 1)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UITextInput+AnimatedInsertion.m" lineNumber:107 description:@"Vertical wipe animation is currently not supported on UITextField."];
  }

  else if (a5 == 2)
  {
    [(UITextField *)self _replaceRangeUsingColorWipe:v14 withAttributedText:v11 completion:v12];
  }
}

- (void)_replaceRangeUsingColorWipe:(id)a3 withAttributedText:(id)a4 completion:(id)a5
{
  v37[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(UITextField *)self _replaceRange:a3 withAttributedText:a4 updatingSelection:1];
  [(UITextField *)self _boundingRectForRange:v9];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(UITextField *)self _textCanvasView];
  v19 = [_UIIntelligentTextInsertionAnimatedColor alloc];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __92__UITextField_AnimatedInsertion___replaceRangeUsingColorWipe_withAttributedText_completion___block_invoke;
  v34[3] = &unk_1E710AF98;
  v35 = v18;
  v20 = v18;
  v21 = [(_UIIntelligentTextInsertionAnimatedColor *)v19 initWithBounds:v34 invalidationHandler:v11, v13, v15, v17];
  v22 = [(UITextField *)self typingAttributes];
  v23 = [(UITextField *)self textColor];
  v24 = ResolvedReplacementColorForTypingAttributes(v22, v23);
  [(_UIIntelligentTextInsertionAnimatedColor *)v21 setResolvedColor:v24];

  v36 = *off_1E70EC920;
  v37[0] = v21;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v26 = [(UITextField *)self textLayoutController];
  [v26 addRenderingAttributes:v25 forRange:v9];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __92__UITextField_AnimatedInsertion___replaceRangeUsingColorWipe_withAttributedText_completion___block_invoke_2;
  v30[3] = &unk_1E70F5F08;
  v30[4] = self;
  v31 = v25;
  v32 = v9;
  v33 = v8;
  v27 = v8;
  v28 = v9;
  v29 = v25;
  PerformStandardAnimatedColorInsertionAnimation(v21, v30);
}

uint64_t __92__UITextField_AnimatedInsertion___replaceRangeUsingColorWipe_withAttributedText_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) textLayoutController];
  v3 = [*(a1 + 40) allKeys];
  [v2 removeRenderingAttributes:v3 forRange:*(a1 + 48)];

  result = *(a1 + 56);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (CGPoint)drawingScale
{
  v2 = 1.0;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_setCuiCatalog:(id)a3
{
  v5 = a3;
  if (self->_cuiCatalog != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cuiCatalog, a3);
    [(UITextField *)self _propagateCuiProperties];
    v5 = v6;
  }
}

- (void)_setCuiStyleEffectConfiguration:(id)a3
{
  if (self->_cuiStyleEffectConfiguration != a3)
  {
    v4 = [a3 copy];
    if (!v4)
    {
      if (dyld_program_sdk_at_least())
      {
        v4 = objc_alloc_init(MEMORY[0x1E6999430]);
      }

      else
      {
        v4 = 0;
      }
    }

    v5 = [v4 appearanceName];

    if (!v5)
    {
      v6 = [(UIView *)self traitCollection];
      v7 = [(UITraitCollection *)v6 _styleEffectAppearanceName];
      [v4 setAppearanceName:v7];
    }

    cuiStyleEffectConfiguration = self->_cuiStyleEffectConfiguration;
    self->_cuiStyleEffectConfiguration = v4;

    [(UITextField *)self _propagateCuiProperties];
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  p_viewFlags = &self->super.super._viewFlags;
  v5 = *(&self->super.super._viewFlags + 4);
  v12.receiver = self;
  v12.super_class = UITextField;
  [(UIView *)&v12 setSemanticContentAttribute:a3];
  if (((*(p_viewFlags + 4) ^ v5) & 0x400000) != 0)
  {
    rightView = self->_rightView;
    v7 = self->_leftView;
    [(UITextField *)self _setActualLeftView:rightView];
    [(UITextField *)self _setActualRightView:v7];
    leftViewMode = self->_leftViewMode;
    [(UITextField *)self _setActualLeftViewMode:self->_rightViewMode];
    [(UITextField *)self _setActualRightViewMode:leftViewMode];
    width = self->_leftViewOffset.width;
    height = self->_leftViewOffset.height;
    v11 = self->_rightViewOffset.height;
    self->_leftViewOffset.width = -self->_rightViewOffset.width;
    self->_leftViewOffset.height = v11;
    self->_rightViewOffset.width = -width;
    self->_rightViewOffset.height = height;
  }
}

- (id)_initWithFrame:(CGRect)a3 textLayoutManagerEnabled:(BOOL)a4
{
  v4 = a4;
  v18.receiver = self;
  v18.super_class = UITextField;
  v5 = [(UIControl *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [_UITextFieldVisualStyle inferredVisualStyleWithStyleSubject:v5];
    visualStyle = v5->_visualStyle;
    v5->_visualStyle = v6;

    [(UITextField *)v5 _setupDefaultStyleEffectConfiguration];
    v5->_preferredBorderStyle = 0;
    v5->_preferredBackgroundCornerRadius = 5.0;
    [(UITextField *)v5 _invalidateBackgroundProviderForced:1];
    v5->_tvUseVibrancy = 1;
    [(UIView *)v5 setOpaque:0];
    [(UITextField *)v5 _clearButtonPadX];
    v5->_clearButtonOffset.width = v8;
    v5->_clearButtonOffset.height = 1.0;
    v9 = 32;
    if (v4)
    {
      v9 = 0x1000000020;
    }

    v5->_textFieldFlags = (*&v5->_textFieldFlags & 0xFFFFFFEFFFFFFFFFLL | v9);
    [(UIControl *)v5 setContentHorizontalAlignment:1];
    [(UITextField *)v5 setContentVerticalAlignment:0];
    *&v5->_textFieldFlags |= 0x100000000000uLL;
    v10 = +[_UIFullFontSize defaultValue];
    [(UITextField *)v5 _setFullFontSize:v10];

    [(UITextField *)v5 _initTextStorage];
    [(UITextField *)v5 _initTextLayoutController];
    [(UITextField *)v5 _initTextCanvasView];
    v5->_foregroundViewsAlpha = 1.0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__UITextField__initWithFrame_textLayoutManagerEnabled___block_invoke;
    v16[3] = &unk_1E70F3590;
    v11 = v5;
    v17 = v11;
    [UIView _performSystemAppearanceModifications:v16];

    v12 = dyld_program_sdk_at_least();
    v13 = [(UITextField *)v11 _contentView];
    [v13 setClipsToBounds:v12 ^ 1u];

    [off_1E70ECC18 systemMinimumFontSize];
    v11->_minimumFontSize = v14;
    *&v5->_textFieldFlags |= 0x10000000uLL;
    [(UITextField *)v11 _detectCustomDrawing];
    [(UITextField *)v11 _initIncreasedContrastNotifications];
    [(UIControl *)v11 setSymbolAnimationEnabled:1];
    [(UITextField *)v11 setAutomaticallyAdjustsWritingDirection:_os_feature_enabled_impl()];
    [(UITextField *)v11 _initTraitChangeRegistrations];
  }

  return v5;
}

void __55__UITextField__initWithFrame_textLayoutManagerEnabled___block_invoke(uint64_t a1)
{
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v2 = [*(*(a1 + 32) + 816) textColor];
  [v4 setObject:v2 forKeyedSubscript:*off_1E70EC920];

  v3 = [*(a1 + 32) _defaultFont];
  [v4 setObject:v3 forKeyedSubscript:*off_1E70EC918];

  [*(a1 + 32) setDefaultTextAttributes:v4];
  if ([objc_opt_class() _wantsFadedEdges])
  {
    [*(a1 + 32) setNonEditingLinebreakMode:2];
  }
}

- (UITextField)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [objc_opt_class() _isTextLayoutManagerEnabled];

  return [(UITextField *)self _initWithFrame:v8 textLayoutManagerEnabled:x, y, width, height];
}

- (UITextField)initWithCoder:(id)a3
{
  v78[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v77.receiver = self;
  v77.super_class = UITextField;
  v5 = [(UIControl *)&v77 initWithCoder:v4];

  if (!v5)
  {
    goto LABEL_106;
  }

  v6 = [_UITextFieldVisualStyle inferredVisualStyleWithStyleSubject:v5];
  visualStyle = v5->_visualStyle;
  v5->_visualStyle = v6;

  v8 = [objc_opt_class() _isTextLayoutManagerEnabled];
  v9 = 0x1000000000;
  if (!v8)
  {
    v9 = 0;
  }

  v5->_textFieldFlags = (*&v5->_textFieldFlags & 0xFFFFFFEFFFFFFFFFLL | v9);
  [(UITextField *)v5 _setupDefaultStyleEffectConfiguration];
  v10 = [v4 containsValueForKey:@"UIRoundedRectBackgroundCornerRadius"];
  v11 = 5.0;
  if (v10)
  {
    [v4 decodeDoubleForKey:{@"UIRoundedRectBackgroundCornerRadius", 5.0}];
  }

  v5->_preferredBackgroundCornerRadius = v11;
  [(UITextField *)v5 _invalidateBackgroundProviderForced:1];
  if ([v4 containsValueForKey:@"UIAllowsEditingTextAttributes"])
  {
    v12 = [v4 decodeBoolForKey:@"UIAllowsEditingTextAttributes"];
    v13 = 0x10000;
    if (!v12)
    {
      v13 = 0;
    }

    v5->_textFieldFlags = (*&v5->_textFieldFlags & 0xFFFFFFFFFFFEFFFFLL | v13);
  }

  v14 = [v4 decodeObjectForKey:@"UIText"];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &stru_1EFB14550;
  }

  v16 = [v4 decodeObjectForKey:@"UIAttributedText"];
  v17 = [v16 mutableCopy];

  if (!v17)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v15];
  }

  [(UITextField *)v5 sanitizeAttributedText:v17];
  v76 = v15;
  if (![v17 length])
  {
    if ([v4 containsValueForKey:@"UITextAlignment"])
    {
      v21 = [v4 decodeIntegerForKey:@"UITextAlignment"];
    }

    else
    {
      v21 = 4;
    }

    goto LABEL_27;
  }

  v18 = [v17 attribute:*off_1E70EC988 atIndex:0 effectiveRange:0];
  v19 = v18;
  if (v18 && [v18 alignment] != 4)
  {
    v20 = [v19 alignment];
    goto LABEL_24;
  }

  if ([v4 containsValueForKey:@"UITextAlignment"])
  {
    v20 = [v4 decodeIntegerForKey:@"UITextAlignment"];
LABEL_24:
    v21 = v20;
    goto LABEL_25;
  }

  v21 = 4;
LABEL_25:

LABEL_27:
  [(UITextField *)v5 _initTextStorage];
  v22 = [v4 decodeObjectForKey:@"UIFont"];
  v23 = v22;
  if (v22)
  {
    [v22 pointSize];
    v24 = [_UIFullFontSize valued:?];
    [(UITextField *)v5 _setFullFontSize:v24];

    [(_UICascadingTextStorage *)v5->_textStorage setFont:v23];
  }

  else
  {
    v25 = +[_UIFullFontSize defaultValue];
    [(UITextField *)v5 _setFullFontSize:v25];
  }

  v26 = [v4 decodeObjectForKey:@"UITextColor"];
  if (v26)
  {
    [(_UICascadingTextStorage *)v5->_textStorage setTextColor:v26];
  }

  if (v21 != 4)
  {
    [(_UICascadingTextStorage *)v5->_textStorage setTextAlignment:v21];
  }

  *&v5->_textFieldFlags |= 0x20000uLL;
  [(_UICascadingTextStorage *)v5->_textStorage setAttributedString:v17];
  if ([v4 containsValueForKey:@"UIAdjustsFontForContentSizeCategory"])
  {
    -[UITextField setAdjustsFontForContentSizeCategory:](v5, "setAdjustsFontForContentSizeCategory:", [v4 decodeBoolForKey:@"UIAdjustsFontForContentSizeCategory"]);
  }

  v27 = [v4 decodeObjectForKey:@"UIDelegate"];
  objc_storeWeak(&v5->_delegate, v27);

  if ([v4 decodeBoolForKey:@"UIClearsOnBeginEditing"])
  {
    v5->_textFieldFlags = (*&v5->_textFieldFlags & 0xFFFFFFFFFFF3FFFFLL | 0x40000);
  }

  v28 = [v4 decodeBoolForKey:@"UIAdjustsFontSizeToFit"];
  v29 = 128;
  if (!v28)
  {
    v29 = 0;
  }

  v5->_textFieldFlags = (*&v5->_textFieldFlags & 0xFFFFFFFFFFFFFF7FLL | v29);
  if ([v4 containsValueForKey:@"UIMinimumFontSize"])
  {
    [v4 decodeFloatForKey:@"UIMinimumFontSize"];
    v31 = v30;
    if (v31 < 0.0)
    {
      v31 = 0.0;
    }
  }

  else
  {
    [off_1E70ECC18 systemMinimumFontSize];
  }

  v5->_minimumFontSize = v31;
  v75 = v23;
  if ([v4 containsValueForKey:@"UIBorderStyle"])
  {
    v32 = [v4 decodeIntegerForKey:@"UIBorderStyle"];
  }

  else
  {
    v32 = 0;
  }

  v5->_clearButtonMode = 0;
  if ([v4 containsValueForKey:@"UIClearButtonMode"])
  {
    v5->_clearButtonMode = [v4 decodeIntegerForKey:@"UIClearButtonMode"];
  }

  [(UITextField *)v5 _initTextLayoutController];
  [(UITextField *)v5 _initTextCanvasView];
  v5->_foregroundViewsAlpha = 1.0;
  v33 = [v4 decodeObjectForKey:@"UIPlaceholder"];
  if (v33)
  {
    [(UITextField *)v5 createPlaceholderIfNecessary];
    [(UILabel *)v5->_placeholderLabel setText:v33];
  }

  v34 = [v4 decodeObjectForKey:@"UILeftView"];
  leftView = v5->_leftView;
  v5->_leftView = v34;

  v36 = [v4 decodeObjectForKey:@"UIRightView"];
  rightView = v5->_rightView;
  v5->_rightView = v36;

  if ((*(&v5->super.super._viewFlags + 2) & 0x400000) != 0)
  {
    v38 = 496;
  }

  else
  {
    v38 = 512;
  }

  v39 = *(&v5->super.super.super.super.isa + v38);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v41 = 0x200000000000;
  if ((isKindOfClass & 1) == 0)
  {
    v41 = 0;
  }

  v5->_textFieldFlags = (*&v5->_textFieldFlags & 0xFFFFDFFFFFFFFFFFLL | v41);
  v42 = [v4 decodeObjectForKey:@"UITextFieldBackground"];
  background = v5->_background;
  v5->_background = v42;

  v44 = [v4 decodeObjectForKey:@"UITextFieldDisabledBackground"];
  disabledBackground = v5->_disabledBackground;
  v5->_disabledBackground = v44;

  *&v5->_textFieldFlags |= 0x20uLL;
  if ([v4 containsValueForKey:@"UIBecomesFirstResponderOnClearButtonTap"])
  {
    v5->_textFieldFlags = (*&v5->_textFieldFlags & 0xFFFFFFFFFFFFFFDFLL | (32 * ([v4 decodeIntegerForKey:@"UIBecomesFirstResponderOnClearButtonTap"] & 1)));
  }

  [v4 decodeCGSizeForKey:@"UIClearButtonOffset"];
  v5->_clearButtonOffset.width = v46;
  v5->_clearButtonOffset.height = v47;
  [v4 decodeUIEdgeInsetsForKey:@"UIPadding"];
  v5->_padding.top = v48;
  v5->_padding.left = v49;
  v5->_padding.bottom = v50;
  v5->_padding.right = v51;
  if ([v4 containsValueForKey:@"UIAutocapitalizationType"])
  {
    v52 = [v4 decodeIntegerForKey:@"UIAutocapitalizationType"];
  }

  else
  {
    v52 = 0;
  }

  [(UITextField *)v5 setAutocapitalizationType:v52];
  if ([v4 containsValueForKey:@"UIAutocorrectionType"])
  {
    v53 = [v4 decodeIntegerForKey:@"UIAutocorrectionType"];
  }

  else
  {
    v53 = 0;
  }

  [(UITextField *)v5 setAutocorrectionType:v53];
  if ([v4 containsValueForKey:@"UISpellCheckingType"])
  {
    v54 = [v4 decodeIntegerForKey:@"UISpellCheckingType"];
  }

  else
  {
    v54 = 0;
  }

  [(UITextField *)v5 setSpellCheckingType:v54];
  if ([v4 containsValueForKey:@"UIDisableTextColorUpdateOnTraitCollectionChange"])
  {
    v55 = [v4 decodeBoolForKey:@"UIDisableTextColorUpdateOnTraitCollectionChange"];
    p_disableTextColorUpdateOnTraitCollectionChange = &v5->_disableTextColorUpdateOnTraitCollectionChange;
    v5->_disableTextColorUpdateOnTraitCollectionChange = v55;
    if (!v55)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  p_disableTextColorUpdateOnTraitCollectionChange = &v5->_disableTextColorUpdateOnTraitCollectionChange;
  if (v5->_disableTextColorUpdateOnTraitCollectionChange)
  {
LABEL_72:
    objc_storeStrong(&v5->_tvCustomTextColor, v26);
  }

LABEL_73:
  if ([v4 containsValueForKey:@"UIKeyboardAppearance"])
  {
    v57 = [v4 decodeIntegerForKey:@"UIKeyboardAppearance"];
  }

  else
  {
    v57 = 0;
  }

  [(UITextField *)v5 setKeyboardAppearance:v57];
  if ([v4 containsValueForKey:@"UIKeyboardType"])
  {
    v58 = [v4 decodeIntegerForKey:@"UIKeyboardType"];
  }

  else
  {
    v58 = 0;
  }

  [(UITextField *)v5 setKeyboardType:v58];
  if ([v4 containsValueForKey:@"UIReturnKeyType"])
  {
    v59 = [v4 decodeIntegerForKey:@"UIReturnKeyType"];
  }

  else
  {
    v59 = 0;
  }

  [(UITextField *)v5 setReturnKeyType:v59];
  -[UITextField setEnablesReturnKeyAutomatically:](v5, "setEnablesReturnKeyAutomatically:", [v4 decodeBoolForKey:@"UIEnablesReturnKeyAutomatically"]);
  v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UITextContentType"];
  [(UITextField *)v5 setTextContentType:v60];

  if ([v4 containsValueForKey:@"UITextSmartInsertDeleteType"])
  {
    v61 = [v4 decodeIntegerForKey:@"UITextSmartInsertDeleteType"];
  }

  else
  {
    v61 = 0;
  }

  [(UITextField *)v5 setSmartInsertDeleteType:v61];
  if ([v4 containsValueForKey:@"UITextSmartQuotesType"])
  {
    v62 = [v4 decodeIntegerForKey:@"UITextSmartQuotesType"];
  }

  else
  {
    v62 = 0;
  }

  [(UITextField *)v5 setSmartQuotesType:v62];
  if ([v4 containsValueForKey:@"UITextSmartDashesType"])
  {
    v63 = [v4 decodeIntegerForKey:@"UITextSmartDashesType"];
  }

  else
  {
    v63 = 0;
  }

  [(UITextField *)v5 setSmartDashesType:v63];
  if ([v4 containsValueForKey:@"UITextInlinePredictionType"])
  {
    v64 = [v4 decodeIntegerForKey:@"UITextInlinePredictionType"];
  }

  else
  {
    v64 = 0;
  }

  [(UITextField *)v5 setInlinePredictionType:v64];
  if ([v4 containsValueForKey:@"UILetterformAwareSizingRule"])
  {
    v5->_textFieldFlags = (*&v5->_textFieldFlags & 0xFFFFFFBFFFFFFFFFLL | (([v4 decodeIntegerForKey:@"UILetterformAwareSizingRule"] & 1) << 38));
  }

  -[UITextField setSecureTextEntry:](v5, "setSecureTextEntry:", [v4 decodeBoolForKey:@"UISecureTextEntry"]);
  v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UITextInputPasswordRules"];
  [(UITextField *)v5 setPasswordRules:v65];

  v66 = [v4 decodeObjectForKey:@"UIIcon"];
  [(UITextField *)v5 setIcon:v66];

  [(UITextField *)v5 setBorderStyle:v32];
  v67 = [(UIView *)v5 tintColor];

  if (v67)
  {
    [(UITextField *)v5 _updateForTintColor];
  }

  *&v5->_textFieldFlags |= 0x10000000uLL;
  v68 = [(UITextField *)v5 _contentFloatingContainerView];

  if (v68)
  {
    v78[0] = v5->_iconView;
    v78[1] = v5->_placeholderLabel;
    v78[2] = v5->_label;
    v78[3] = v5->_clearButton;
    v69 = 0;
    v78[4] = v5->_contentBackdropView;
    do
    {
      v70 = v78[v69];
      if (v70)
      {
        v71 = [(UITextField *)v5 _contentView];
        [v71 addSubview:v70];
      }

      ++v69;
    }

    while (v69 != 5);
    for (i = 4; i != -1; --i)
    {
    }
  }

  v5->_tvUseVibrancy = !*p_disableTextColorUpdateOnTraitCollectionChange;
  [(UITextField *)v5 _detectCustomDrawing];
  [(UITextField *)v5 _initIncreasedContrastNotifications];
  [(UIControl *)v5 setSymbolAnimationEnabled:1];
  [(UITextField *)v5 _initTraitChangeRegistrations];

LABEL_106:
  v73 = v5;

  return v73;
}

- (void)_initTraitChangeRegistrations
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0x1EFE32440;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v4 = [(UIView *)self _registerForTraitTokenChanges:v3 withTarget:self action:sel__preferredContentSizeCategoryDidChange];

  v15 = 0x1EFE324A0;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v6 = [(UIView *)self _registerForTraitTokenChanges:v5 withTarget:self action:sel__legibilityWeightDidChange];

  if (_TextFieldScalesClearButton())
  {
    v7 = objc_opt_self();
    v12 = v7;
    v8 = objc_opt_self();
    v13 = v8;
    v9 = objc_opt_self();
    v14 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];

    v11 = [(UIView *)self registerForTraitChanges:v10 withTarget:self action:sel__invalidateCachedDefaultClearButtonImages, v12, v13];
  }
}

- (id)_encodableSubviews
{
  v2 = [(UITextField *)self _contentView];
  v3 = [v2 subviews];

  return v3;
}

- (void)_populateArchivedSubviews:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = UITextField;
  [(UIView *)&v6 _populateArchivedSubviews:v4];
  [(_UITextFieldBackgroundProvider *)self->_backgroundProvider populateArchivedSubviews:v4];
  if (self->_iconView)
  {
    [v4 removeObject:?];
  }

  if (self->_placeholderLabel)
  {
    [v4 removeObject:?];
  }

  if (self->_label)
  {
    [v4 removeObject:?];
  }

  if (self->_clearButton)
  {
    [v4 removeObject:?];
  }

  if (self->_contentBackdropView)
  {
    [v4 removeObject:?];
  }

  if (self->_textCanvasView)
  {
    [v4 removeObject:?];
  }

  if (self->_fieldEditor)
  {
    [v4 removeObject:?];
  }

  v5 = [(UITextInteractionAssistant *)self->_interactionAssistant _selectionViewManager];
  [v5 _filterArchivedSubviews:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = UITextField;
  [(UIControl *)&v40 encodeWithCoder:v4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [v4 encodeConditionalObject:WeakRetained];
  }

  if ([(UITextField *)self adjustsFontForContentSizeCategory])
  {
    [v4 encodeBool:1 forKey:@"UIAdjustsFontForContentSizeCategory"];
  }

  v6 = self->_textStorage;
  v7 = [(_UICascadingTextStorage *)self->_textStorage font];

  if (v7)
  {
    v8 = [(_UICascadingTextStorage *)v6 font];
    [v4 encodeObject:v8 forKey:@"UIFont"];
  }

  v9 = [(UITextField *)self placeholder];

  if (v9)
  {
    v10 = [(UITextField *)self placeholder];
    [v4 encodeObject:v10 forKey:@"UIPlaceholder"];
  }

  if ((*(&self->_textFieldFlags + 1) & 0x20) != 0)
  {
    [v4 encodeInteger:-[_UICascadingTextStorage textAlignment](v6 forKey:{"textAlignment"), @"UITextAlignment"}];
  }

  if ([(NSConcreteTextStorage *)v6 length])
  {
    if ((*(&self->_textFieldFlags + 2) & 2) != 0)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v6];
      [v4 encodeObject:v11 forKey:@"UIAttributedText"];
    }

    v12 = [(NSConcreteTextStorage *)v6 string];
    [v4 encodeObject:v12 forKey:@"UIText"];
  }

  v13 = [(UIImageView *)self->_iconView image];

  if (v13)
  {
    v14 = [(UIImageView *)self->_iconView image];
    [v4 encodeObject:v14 forKey:@"UIIcon"];
  }

  v15 = [(_UICascadingTextStorage *)v6 textColor];

  if (v15)
  {
    v16 = [(_UICascadingTextStorage *)v6 textColor];
    [v4 encodeObject:v16 forKey:@"UITextColor"];
  }

  leftView = self->_leftView;
  if (leftView)
  {
    [v4 encodeObject:leftView forKey:@"UILeftView"];
  }

  rightView = self->_rightView;
  if (rightView)
  {
    [v4 encodeObject:rightView forKey:@"UIRightView"];
  }

  background = self->_background;
  if (background)
  {
    [v4 encodeObject:background forKey:@"UITextFieldBackground"];
  }

  disabledBackground = self->_disabledBackground;
  if (disabledBackground)
  {
    [v4 encodeObject:disabledBackground forKey:@"UITextFieldDisabledBackground"];
  }

  v21 = [(UITextField *)self borderStyle];
  if (v21)
  {
    [v4 encodeInteger:v21 forKey:@"UIBorderStyle"];
  }

  if ([(UITextField *)self clearsOnBeginEditing])
  {
    [v4 encodeBool:1 forKey:@"UIClearsOnBeginEditing"];
  }

  textFieldFlags = self->_textFieldFlags;
  if ((*&textFieldFlags & 0x80) != 0)
  {
    [v4 encodeBool:1 forKey:@"UIAdjustsFontSizeToFit"];
    textFieldFlags = self->_textFieldFlags;
    if ((*&textFieldFlags & 0x20) != 0)
    {
LABEL_33:
      if ((*&textFieldFlags & 0x10000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*&textFieldFlags & 0x20) != 0)
  {
    goto LABEL_33;
  }

  [v4 encodeBool:0 forKey:@"UIBecomesFirstResponderOnClearButtonTap"];
  if ((*&self->_textFieldFlags & 0x10000) != 0)
  {
LABEL_34:
    [v4 encodeBool:1 forKey:@"UIAllowsEditingTextAttributes"];
  }

LABEL_35:
  minimumFontSize = self->_minimumFontSize;
  if (minimumFontSize != 0.0)
  {
    *&minimumFontSize = minimumFontSize;
    [v4 encodeFloat:@"UIMinimumFontSize" forKey:minimumFontSize];
  }

  clearButtonMode = self->_clearButtonMode;
  if (clearButtonMode)
  {
    [v4 encodeInteger:clearButtonMode forKey:@"UIClearButtonMode"];
  }

  if (self->_clearButtonOffset.width != 0.0 || self->_clearButtonOffset.height != 0.0)
  {
    [v4 encodeCGSize:@"UIClearButtonOffset" forKey:?];
  }

  v25 = *&self->_padding.top;
  v26 = *&self->_padding.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v25), vceqzq_f64(v26))))))
  {
    [v4 encodeUIEdgeInsets:@"UIPadding" forKey:{*&v25, *&v26}];
  }

  v27 = [(UITextField *)self autocapitalizationType];
  if (v27)
  {
    [v4 encodeInteger:v27 forKey:@"UIAutocapitalizationType"];
  }

  v28 = [(UITextField *)self autocorrectionType];
  if (v28)
  {
    [v4 encodeInteger:v28 forKey:@"UIAutocorrectionType"];
  }

  v29 = [(UITextField *)self spellCheckingType];
  if (v29)
  {
    [v4 encodeInteger:v29 forKey:@"UISpellCheckingType"];
  }

  v30 = [(UITextField *)self keyboardAppearance];
  if (v30)
  {
    [v4 encodeInteger:v30 forKey:@"UIKeyboardAppearance"];
  }

  v31 = [(UITextField *)self keyboardType];
  if (v31)
  {
    [v4 encodeInteger:v31 forKey:@"UIKeyboardType"];
  }

  v32 = [(UITextField *)self returnKeyType];
  if (v32)
  {
    [v4 encodeInteger:v32 forKey:@"UIReturnKeyType"];
  }

  if ([(UITextField *)self enablesReturnKeyAutomatically])
  {
    [v4 encodeBool:1 forKey:@"UIEnablesReturnKeyAutomatically"];
  }

  if ([(UITextField *)self isSecureTextEntry])
  {
    [v4 encodeBool:1 forKey:@"UISecureTextEntry"];
  }

  v33 = [(UITextField *)self passwordRules];
  if (v33)
  {
    [v4 encodeObject:v33 forKey:@"UITextInputPasswordRules"];
  }

  v34 = [(UITextField *)self textContentType];
  if (v34)
  {
    [v4 encodeObject:v34 forKey:@"UITextContentType"];
  }

  v35 = [(UITextField *)self smartInsertDeleteType];
  if (v35)
  {
    [v4 encodeInteger:v35 forKey:@"UITextSmartInsertDeleteType"];
  }

  v36 = [(UITextField *)self smartQuotesType];
  if (v36)
  {
    [v4 encodeInteger:v36 forKey:@"UITextSmartQuotesType"];
  }

  v37 = [(UITextField *)self smartDashesType];
  if (v37)
  {
    [v4 encodeInteger:v37 forKey:@"UITextSmartDashesType"];
  }

  v38 = [(UITextField *)self inlinePredictionType];
  if (v38)
  {
    [v4 encodeInteger:v38 forKey:@"UITextInlinePredictionType"];
  }

  [v4 encodeBool:self->_disableTextColorUpdateOnTraitCollectionChange forKey:@"UIDisableTextColorUpdateOnTraitCollectionChange"];
  [(UITextField *)self _roundedRectBackgroundCornerRadius];
  if (fabs(v39 + -5.0) > 0.00000011920929)
  {
    [v4 encodeDouble:@"UIRoundedRectBackgroundCornerRadius" forKey:?];
  }

  if ((*(&self->_textFieldFlags + 4) & 0x40) != 0)
  {
    [v4 encodeInteger:1 forKey:@"UILetterformAwareSizingRule"];
  }
}

- (void)_encodeBackgroundColorWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(UITextField *)self backgroundColor];
  if (v4)
  {
    [v5 encodeObject:v4 forKey:@"UIBackgroundColor"];
  }
}

- (void)dealloc
{
  v7[3] = *MEMORY[0x1E69E9840];
  [(UITextField *)self _stopObservingFieldEditorScroll];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v7[0] = @"UIKeyboardDidShowNotification";
  v7[1] = @"UIAccessibilityReduceTransparencyStatusDidChangeNotification";
  v7[2] = @"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  interactionAssistant = self->_interactionAssistant;
  self->_interactionAssistant = 0;

  [(UITextField *)self setInputView:0];
  [(UITextField *)self setInputAccessoryView:0];
  v6.receiver = self;
  v6.super_class = UITextField;
  [(UIView *)&v6 dealloc];
}

- (NSString)description
{
  v15.receiver = self;
  v15.super_class = UITextField;
  v3 = [(UIView *)&v15 description];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(UITextField *)self borderStyle];
  if (v6 > UITextBorderStyleRoundedRect)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E7126430[v6];
  }

  backgroundProvider = self->_backgroundProvider;
  if (!backgroundProvider)
  {
    backgroundProvider = @"(nil)";
  }

  v9 = [v5 stringWithFormat:@" borderStyle = %@; background = %@", v7, backgroundProvider];;
  v10 = [v4 rangeOfString:@"; layer ="];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v4 length] - 1;
  }

  [v4 insertString:v9 atIndex:v10];
  v11 = [(UITextField *)self placeholder];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@" placeholder = %@", v11];;
    [v4 insertString:v12 atIndex:v10];
  }

  v13 = [v4 copy];

  return v13;
}

- (void)_sizeChanged:(BOOL)a3
{
  if (a3)
  {
    self->_firstBaselineOffsetFromTop = 0.0;
    self->_lastBaselineOffsetFromBottom = 0.0;
    if ((*(&self->super.super._viewFlags + 7) & 2) != 0)
    {
      if (!self->_didInvalidateBaselineConstraintsOnHeightChange || ([(UIView *)self bounds], Height = CGRectGetHeight(v10), [(UIView *)self _calculatedIntrinsicHeight], Height == v5))
      {
        self->_didInvalidateBaselineConstraintsOnHeightChange = 1;
        [(UIView *)self _invalidateBaselineConstraints];
      }
    }

    if ((*&self->_textFieldFlags & 1) != 0 || [(UIControl *)self contentVerticalAlignment]== UIControlContentVerticalAlignmentCenter || [(UIControl *)self contentVerticalAlignment]== UIControlContentVerticalAlignmentBottom)
    {
      [(UITextField *)self _setNeedsStyleRecalc];
    }
  }

  v6 = [(UITextField *)self interactionAssistant];
  v7 = [v6 _selectionView];
  [v7 updateSelectionRects];

  [(UILabel *)self->_placeholderLabel setNeedsDisplay];
  [(_UITextCanvas *)self->_textCanvasView setNeedsDisplay];
  backgroundProvider = self->_backgroundProvider;

  [(_UITextFieldBackgroundProvider *)backgroundProvider setNeedsDisplay];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v14.receiver = self;
  v14.super_class = UITextField;
  [(UIView *)&v14 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UITextField *)self _sizeChanged:height != v11];
    v13 = +[UIKeyboardImpl activeInstance];
    [v13 textFrameChanged:self];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = UITextField;
  [(UIView *)&v13 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UITextField *)self _sizeChanged:height != v11];
  }
}

- (CGRect)_responderSelectionRectForWindow:(id)a3
{
  if (*(&self->_textFieldFlags + 1))
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITextField;
    [(UIView *)&v7 _responderSelectionRectForWindow:a3];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_responderExternalTouchRectForWindow:(id)a3
{
  if (*(&self->_textFieldFlags + 1))
  {
    v13 = a3;
    v14 = [(UITextField *)self _fieldEditor];
    [v14 _responderExternalTouchRectForWindow:v13];
    v6 = v15;
    v8 = v16;
    v10 = v17;
    v12 = v18;
  }

  else
  {
    v23.receiver = self;
    v23.super_class = UITextField;
    v4 = a3;
    [(UIView *)&v23 _responderExternalTouchRectForWindow:v4];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  v19 = v6;
  v20 = v8;
  v21 = v10;
  v22 = v12;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGSize)_textSizeUsingFullFontSize:(BOOL)a3
{
  v3 = a3;
  [(UIResponder *)self _caretRect];
  v6 = v5;
  v7 = self->_textStorage;
  v8 = v7;
  if ((*(&self->_textFieldFlags + 2) & 2) != 0)
  {
    v9 = [(_UICascadingTextStorage *)v7 _UIKBStringWideAttributeValueForKey:*off_1E70EC918];
    if (v9 && [(NSConcreteTextStorage *)v8 length])
    {
      [(_UICascadingTextStorage *)v8 size];
      v11 = v10;
      v13 = v12;
      goto LABEL_13;
    }
  }

  v9 = [(_UICascadingTextStorage *)v8 font];
  if (v3)
  {
    [(UITextField *)self _fullFontSize];
    v14 = [v9 fontWithSize:?];

    v9 = v14;
  }

  if (!v9)
  {
    [off_1E70ECC18 defaultFontSize];
    v9 = [off_1E70ECC18 systemFontOfSize:?];
  }

  v15 = [(UITextField *)self text];
  v16 = [(__CFString *)v15 length];
  v17 = @" ";
  if (v16)
  {
    v17 = v15;
  }

  v18 = v17;

  [(__CFString *)v18 _legacy_sizeWithFont:v9];
  v11 = v19;
  v13 = v20;

LABEL_13:
  if (v13 >= v6)
  {
    v6 = v13;
  }

  v21 = v11;
  v22 = v6;
  result.height = v22;
  result.width = v21;
  return result;
}

- (CGSize)_textSize
{
  [(UITextField *)self _textSizeUsingFullFontSize:0];
  result.height = v3;
  result.width = v2;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  [(UITextField *)self alignmentRectInsets];
  v10 = v9 == 0.0;
  if (v11 != 0.0)
  {
    v10 = 0;
  }

  if (v8 != 0.0)
  {
    v10 = 0;
  }

  if (v7 != 0.0)
  {
    v10 = 0;
  }

  if (has_internal_diagnostics)
  {
    if (!v10)
    {
      v31 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v31, OS_LOG_TYPE_FAULT, "Text Field not expected to have alignmentRectInsets.", buf, 2u);
      }
    }
  }

  else if (!v10)
  {
    v32 = *(__UILogGetCategoryCachedImpl("Assert", &_baselineOffsetsAtSize____s_category) + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "Text Field not expected to have alignmentRectInsets.", buf, 2u);
    }
  }

  v12 = self->_textStorage;
  *buf = 0;
  v36 = buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__213;
  v39 = __Block_byref_object_dispose__213;
  v40 = 0;
  if ((*(&self->_textFieldFlags + 2) & 2) == 0 || (v34[0] = 0, v34[1] = v34, v34[2] = 0x2020000000, v34[3] = 0, -[UITextField attributedText](self, "attributedText"), v13 = objc_claimAutoreleasedReturnValue(), -[UITextField attributedText](self, "attributedText"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 length], v16 = *off_1E70EC918, v33[0] = MEMORY[0x1E69E9820], v33[1] = 3221225472, v33[2] = __38__UITextField__baselineOffsetsAtSize___block_invoke, v33[3] = &unk_1E7126288, v33[4] = v34, v33[5] = buf, objc_msgSend(v13, "enumerateAttribute:inRange:options:usingBlock:", v16, 0, v15, 0, v33), v14, v13, _Block_object_dispose(v34, 8), !*(v36 + 5)))
  {
    v17 = [(_UICascadingTextStorage *)v12 font];
    [(UITextField *)self _fullFontSize];
    v18 = [v17 fontWithSize:?];
    v19 = *(v36 + 5);
    *(v36 + 5) = v18;

    if (!*(v36 + 5))
    {
      [off_1E70ECC18 defaultFontSize];
      v20 = [off_1E70ECC18 systemFontOfSize:?];
      v21 = *(v36 + 5);
      *(v36 + 5) = v20;
    }
  }

  [(UITextField *)self _intrinsicSizeWithinSize:width, height];
  v23 = v22;
  v25 = v24;
  [(UITextField *)self textRectForBounds:0.0, 0.0, v22, v24];
  [(UITextField *)self _marginTopForBounds:0.0, 0.0, v23, v25];
  [*(v36 + 5) lineHeight];
  [*(v36 + 5) descender];
  UIRoundToViewScale(self);
  v27 = v26;
  v28 = v25 - v26;
  _Block_object_dispose(buf, 8);

  v29 = v27;
  v30 = v28;
  result.var1 = v30;
  result.var0 = v29;
  return result;
}

void __38__UITextField__baselineOffsetsAtSize___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 lineHeight];
  v5 = *(*(a1 + 32) + 8);
  if (v4 > *(v5 + 24))
  {
    *(v5 + 24) = v4;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  v4 = [(UIView *)self superview:a3.width];
  kdebug_trace();

  if (self)
  {
    [(UITextField *)self textRectForBounds:0.0, 0.0, 100.0, 100.0];
    v6 = v5;
    v8 = v7;
    v10 = 100.0 - (v7 + v9);
    v12 = 100.0 - (v5 + v11);
  }

  else
  {
    v12 = 0.0;
    v10 = 0.0;
    v6 = 0.0;
    v8 = 0.0;
  }

  v13 = [(UIView *)self traitCollection];
  v14 = [v13 userInterfaceIdiom];

  if (v14 == 6)
  {
    [(UITextField *)self _visionOverrideHorizontalInsets:v8, v6, v10, v12];
    v8 = v15;
    v6 = v16;
    v10 = v17;
    v12 = v18;
  }

  [(UITextField *)self _textSizeUsingFullFontSize:1];
  v20 = v19;
  v22 = v21;
  placeholderLabel = self->_placeholderLabel;
  if (placeholderLabel)
  {
    [(UILabel *)placeholderLabel _intrinsicSizeWithinSize:3.40282347e38, 3.40282347e38];
    if (v20 < v24)
    {
      v20 = v24;
    }

    if (v22 < v25)
    {
      v22 = v25;
    }
  }

  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  v30 = v12 + v6 + v20 + left + right;
  v31 = v10 + v8 + v22 + top + bottom;
  textFieldFlags = self->_textFieldFlags;
  if ((*&textFieldFlags & 0x6000000000) != 0)
  {
    v33 = bottom == 0.0;
    if (v8 != 0.0)
    {
      v33 = 0;
    }

    if (v10 != 0.0)
    {
      v33 = 0;
    }

    v34 = top == 0.0 && v33;
    v35 = right == 0.0;
    if (v6 != 0.0)
    {
      v35 = 0;
    }

    if (v12 != 0.0)
    {
      v35 = 0;
    }

    v36 = left == 0.0 && v35;
    v37 = (*&textFieldFlags >> 38) & 1;
    if ((v34 | v37 & v36) == 1)
    {
      [(UITextField *)self _applicableContentOutsetsFromFontsOversize:v37 extremeSizing:(*&textFieldFlags >> 37) & 1];
      v42 = v31 + v40 + v41;
      if (v34)
      {
        v31 = v42;
      }

      if (v36)
      {
        v30 = v30 + v38 + v39;
      }
    }
  }

  v43 = [(UITextField *)self _metricsProvider];
  [v43 intrinsicSizeForContentSize:{v30, v31}];
  v45 = v44;
  v47 = v46;

  v48 = [(UIView *)self traitCollection];
  v49 = [v48 userInterfaceIdiom];

  if (v49 == 6)
  {
    [(UITextField *)self _visionOverrideNaturalHeight:v45, v47];
  }

  if (kdebug_is_enabled())
  {
    v50 = [(UITextField *)self description];
    [v50 UTF8String];
    kdebug_trace_string();

    v51 = [(UIView *)self superview];
    kdebug_trace();
  }

  UICeilToViewScale(self);
  v53 = v52;
  UICeilToViewScale(self);
  v55 = v54;
  v56 = v53;
  result.height = v55;
  result.width = v56;
  return result;
}

- (void)_applicableContentOutsetsFromFontsOversize:(int)a3 extremeSizing:
{
  if (a1 && a2 | a3)
  {
    if (*(a1 + 905))
    {
      v4 = [a1 _fieldEditor];
      [v4 _fullContentInsetsFromFonts];
    }

    else
    {
      v4 = [a1 text];
      v5 = +[UILabel _tooBigChars];
      v6 = [v4 rangeOfCharacterFromSet:v5];

      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ((*(a1 + 906) & 2) != 0)
        {
          v8 = *(a1 + 816);
          v7 = [v8 font];
          [UILabel _insetsForAttributedString:v8 withDefaultFont:v7 inView:a1];
        }

        else
        {
          v7 = [a1 font];
          [UILabel _insetsForString:v4 withFont:v7 inView:a1];
        }
      }
    }
  }
}

- (void)_installSelectGestureRecognizer
{
  if (!self->_selectGestureRecognizer)
  {
    v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__selectGestureChanged_];
    selectGestureRecognizer = self->_selectGestureRecognizer;
    self->_selectGestureRecognizer = v3;

    [(UITapGestureRecognizer *)self->_selectGestureRecognizer setAllowedPressTypes:&unk_1EFE2DBD0];
    [(UIGestureRecognizer *)self->_selectGestureRecognizer setDelegate:self];
    v5 = self->_selectGestureRecognizer;

    [(UIView *)self addGestureRecognizer:v5];
  }
}

- (void)_selectGestureChanged:(id)a3
{
  if ([a3 state] == 3)
  {
    [(UITextField *)self _setHighlighted:0 animated:1];

    [(UITextField *)self becomeFirstResponder];
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![UIDictationController takesPressesBegan:v6 forTextView:self])
  {
    v8 = +[UIKeyboard activeKeyboard];
    v9 = [v8 canHandlePresses:v6 withEvent:v7];

    if (!v9)
    {
      v11 = [v7 _lastPreparedPress];
      if ([v11 type] == 4)
      {
        v12 = [(UIControl *)self isEnabled];

        if (v12)
        {
          [(UITextField *)self _setHighlighted:1 animated:1];
          goto LABEL_9;
        }
      }

      else
      {
      }

      v13.receiver = self;
      v13.super_class = UITextField;
      [(UIResponder *)&v13 pressesBegan:v6 withEvent:v7];
      goto LABEL_9;
    }

    v10 = +[UIKeyboard activeKeyboard];
    [v10 pressesBegan:v6 withEvent:v7];
  }

LABEL_9:
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![UIDictationController takesPressesChanged:v6 forTextView:self])
  {
    v8 = +[UIKeyboard activeKeyboard];
    v9 = [v8 canHandlePresses:v6 withEvent:v7];

    if (v9)
    {
      v10 = +[UIKeyboard activeKeyboard];
      [v10 pressesChanged:v6 withEvent:v7];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = UITextField;
      [(UIResponder *)&v11 pressesChanged:v6 withEvent:v7];
    }
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![UIDictationController takesPressesEnded:v6 forTextView:self])
  {
    v8 = +[UIKeyboard activeKeyboard];
    v9 = [v8 canHandlePresses:v6 withEvent:v7];

    if (!v9)
    {
      v11 = [v7 _lastPreparedPress];
      if ([v11 type] == 4)
      {
        v12 = [(UIControl *)self isHighlighted];

        if (v12)
        {
          [(UITextField *)self _setHighlighted:0 animated:1];
          goto LABEL_9;
        }
      }

      else
      {
      }

      v13.receiver = self;
      v13.super_class = UITextField;
      [(UIResponder *)&v13 pressesEnded:v6 withEvent:v7];
      goto LABEL_9;
    }

    v10 = +[UIKeyboard activeKeyboard];
    [v10 pressesEnded:v6 withEvent:v7];
  }

LABEL_9:
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[UIKeyboard activeKeyboard];
  v9 = [v8 canHandlePresses:v6 withEvent:v7];

  if (!v9)
  {
    v11 = [v7 _lastPreparedPress];
    if ([v11 type] == 4)
    {
      v12 = [(UIControl *)self isHighlighted];

      if (v12)
      {
        [(UITextField *)self _setHighlighted:0 animated:1];
        goto LABEL_8;
      }
    }

    else
    {
    }

    v13.receiver = self;
    v13.super_class = UITextField;
    [(UIResponder *)&v13 pressesCancelled:v6 withEvent:v7];
    goto LABEL_8;
  }

  v10 = +[UIKeyboard activeKeyboard];
  [v10 pressesCancelled:v6 withEvent:v7];

LABEL_8:
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(UITextField *)self _animateNextHighlightChange];
  v9.receiver = self;
  v9.super_class = UITextField;
  LOBYTE(self) = [(UIControl *)&v9 beginTrackingWithTouch:v7 withEvent:v6];

  return self;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(UITextField *)self _animateNextHighlightChange];
  v9.receiver = self;
  v9.super_class = UITextField;
  LOBYTE(self) = [(UIControl *)&v9 continueTrackingWithTouch:v7 withEvent:v6];

  return self;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(UITextField *)self _animateNextHighlightChange];
  v8.receiver = self;
  v8.super_class = UITextField;
  [(UIControl *)&v8 endTrackingWithTouch:v7 withEvent:v6];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4 = a3;
  [(UITextField *)self _animateNextHighlightChange];
  v5.receiver = self;
  v5.super_class = UITextField;
  [(UIControl *)&v5 cancelTrackingWithEvent:v4];
}

- (void)_setDisableFocus:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)_setForegroundViewsAlpha:(double)a3
{
  self->_foregroundViewsAlpha = a3;
  [(UIView *)self->_iconView setAlpha:?];
  v5 = [(UITextField *)self leftView];
  [(UITextField *)self _maximumAlphaForLeadingView];
  [v5 setAlpha:v6 * a3];

  v7 = [(UITextField *)self rightView];
  [v7 setAlpha:a3];

  v8 = [(UITextField *)self _clearButton];
  [v8 setAlpha:a3];

  [(_UITextCanvas *)self->_textCanvasView setAlpha:a3];
  placeholderLabel = self->_placeholderLabel;
  [(UITextField *)self _placeholderLabelAlphaForForegroundViewsAlpha:a3];

  [(UIView *)placeholderLabel setAlpha:?];
}

- (BOOL)canBecomeFocused
{
  if (*(&self->_textFieldFlags + 3))
  {
    return 0;
  }

  v3.receiver = self;
  v3.super_class = UITextField;
  return [(UIControl *)&v3 canBecomeFocused];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v4.receiver = self;
  v4.super_class = UITextField;
  [(UIView *)&v4 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
}

- (BOOL)_allowsChangingFirstResponderForFocusUpdateWithContext:(id)a3
{
  v4 = a3;
  if (-[UITextField _supportsKeyboardNavigationForSuggestions](self, "_supportsKeyboardNavigationForSuggestions") && -[UIView isFirstResponder](self, "isFirstResponder") && ([v4 nextFocusedItem], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [[_UIDynamicFocusGroupMap alloc] initWithCoordinateSpace:self];
    v7 = [(_UIDynamicFocusGroupMap *)v6 focusGroupIdentifierForItem:self];
    self = [v4 nextFocusedItem];
    v8 = [(_UIDynamicFocusGroupMap *)v6 focusGroupIdentifierForItem:self];

    LODWORD(self) = [v7 isEqualToString:v8] ^ 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UITextField;
    LOBYTE(self) = [(UIResponder *)&v10 _allowsChangingFirstResponderForFocusUpdateWithContext:v4];
  }

  return self;
}

- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)a3
{
  v5 = [(UITextField *)self _supportsKeyboardNavigationForSuggestions];
  if (a3 == 2 && v5)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = UITextField;
  return [(UIResponder *)&v7 _shouldForwardMovementToFocusEngine:a3];
}

- (int64_t)_systemDefaultFocusGroupPriority
{
  if ([(UITextField *)self _supportsKeyboardNavigationForSuggestions])
  {
    return 2000;
  }

  v4.receiver = self;
  v4.super_class = UITextField;
  return [(UIView *)&v4 _systemDefaultFocusGroupPriority];
}

- (id)_systemDefaultFocusGroupIdentifier
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 focusGroupContainmentBehavior];

  if ((v4 & 0x200) != 0)
  {
    v5 = _UIFocusGroupIdentifierForInstance(self);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITextField;
    v5 = [(UIControl *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return v5;
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4
{
  v6 = a4;
  v7 = [(UITextField *)self _contentFloatingContainerView];

  if (v7)
  {
    v8 = [(UITextField *)self _contentFloatingContainerView];
    v9 = [v8 _preferredConfigurationForFocusAnimation:a3 inContext:v6];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UITextField;
    v9 = [(UIView *)&v11 _preferredConfigurationForFocusAnimation:a3 inContext:v6];
  }

  return v9;
}

- (void)_setSupportsKeyboardNavigationForSuggestions:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)_initialScrollDidFinish:(id)a3
{
  [(UITextField *)self _activateSelectionView];

  [(UITextField *)self _stopObservingFieldEditorScroll];
}

- (void)__resumeBecomeFirstResponder
{
  [(UITextField *)self _becomeFirstResponder];

  [(UIResponder *)self reloadInputViews];
}

- (void)_nonDestructivelyResignFirstResponder
{
  *&self->_textFieldFlags |= 0x200000uLL;
  [(UITextField *)self resignFirstResponder];
  *&self->_textFieldFlags &= ~0x200000uLL;
}

- (void)_windowBecameKey
{
  if ((*(&self->_textFieldFlags + 1) & 1) == 0)
  {
    [(UITextField *)self _becomeFirstResponder];
  }

  v3.receiver = self;
  v3.super_class = UITextField;
  [(UIResponder *)&v3 _windowBecameKey];
}

- (void)_windowResignedKey
{
  v2.receiver = self;
  v2.super_class = UITextField;
  [(UIResponder *)&v2 _windowResignedKey];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1ED49AAA0 != -1)
  {
    dispatch_once(&qword_1ED49AAA0, &__block_literal_global_2339);
  }

  if (_MergedGlobals_55 == 1)
  {
    v8.receiver = self;
    v8.super_class = UITextField;
    [(UIControl *)&v8 touchesCancelled:v6 withEvent:v7];
  }

  else
  {
    [(UITextField *)self touchesEnded:v6 withEvent:v7];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1ED49AAA0 != -1)
  {
    dispatch_once(&qword_1ED49AAA0, &__block_literal_global_2339);
  }

  if (_MergedGlobals_55 == 1)
  {
    v8.receiver = self;
    v8.super_class = UITextField;
    [(UIControl *)&v8 touchesEnded:v6 withEvent:v7];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v49.receiver = self;
  v49.super_class = UITextField;
  v10 = [(UIControl *)&v49 hitTest:v9 withEvent:x, y];
  v11 = [(UIView *)self->_clearButton superview];
  if (v11 == self)
  {
    v13 = v9;
    v14 = 0;
  }

  else
  {
    v4 = [(UIView *)self->_leftView superview];
    if (v4 == self)
    {
      v13 = v9;
      v14 = 0;
    }

    else
    {
      v12 = [(UIView *)self->_rightView superview];
      v5 = v12;
      if (v12 != self)
      {

LABEL_44:
        goto LABEL_45;
      }

      v13 = v9;
      v14 = 1;
    }
  }

  v15 = v10 == self;
  if (v10 == self || (*(&self->_textFieldFlags + 1) & 1) == 0)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v27 = [(UITextField *)self _fieldEditor];
  v15 = v10 == v27;

  if (v14)
  {
LABEL_11:
  }

LABEL_12:
  if (v11 != self)
  {

    if (v15)
    {
      goto LABEL_14;
    }

LABEL_20:
    v9 = v13;
    goto LABEL_45;
  }

  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_14:
  [(UITextField *)self editRect];
  v17 = v16;
  v19 = v18;
  [(UITextField *)self _textSize];
  v21 = v20;
  v22 = [(UITextField *)self _textStorage];
  v23 = [v22 _ui_resolvedTextAlignment];

  if (v23)
  {
    v24 = v17 + v19;
    v25 = v17 + v19 - v21 + -20.0;
    if (v17 >= v25)
    {
      v25 = v17;
    }

    v26 = v25;
    v9 = v13;
    if (v23 == 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v26 = v17;
    v24 = v17 + v19;
    v9 = v13;
  }

  if (v24 >= v17 + v21 + 20.0)
  {
    v24 = v17 + v21 + 20.0;
  }

LABEL_26:
  v28 = v24;
  [(UIView *)self bounds];
  v31 = fmin(v30 * 0.15, 48.0);
  if (v29 + v31 <= v26)
  {
    v32 = v29 + v31;
  }

  else
  {
    v32 = v26;
  }

  v33 = v29 + v30 - v31;
  if (v33 > v28)
  {
    v28 = v33;
  }

  if (x <= v32)
  {
    v34 = 496;
    v35 = [(UIView *)self->_leftView superview];
    v36 = v35;
    if (v35 == self)
    {
      v37 = UIViewIgnoresTouchEvents(self->_leftView);

      if ((v37 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
    }
  }

  if (x >= v28)
  {
    v38 = [(UIView *)self->_clearButton superview];
    v39 = v38;
    if (v38 == self)
    {
      v40 = UIViewIgnoresTouchEvents(self->_clearButton);

      if ((v40 & 1) == 0)
      {
        clearButton = self->_clearButton;
        goto LABEL_43;
      }
    }

    else
    {
    }

    v34 = 512;
    v11 = [(UIView *)self->_rightView superview];
    if (v11 != self)
    {
      goto LABEL_44;
    }

    v41 = UIViewIgnoresTouchEvents(self->_rightView);

    if ((v41 & 1) == 0)
    {
LABEL_41:
      clearButton = *(&self->super.super.super.super.isa + v34);
LABEL_43:
      v11 = v10;
      v10 = clearButton;
      goto LABEL_44;
    }
  }

LABEL_45:
  v43 = v10;
  if (v10 != self->_leftView)
  {
    v43 = v10;
    if (v10 != self->_rightView)
    {
      v43 = v10;
      if (v10 != self->_clearButton)
      {
        if ([(_UITextFieldBackgroundProvider *)self->_backgroundProvider hitTestView:v10])
        {
          v43 = self;
          goto LABEL_55;
        }

        if (*(&self->_textFieldFlags + 1))
        {
          v44 = [(UITextField *)self _fieldEditor];
          v45 = v44;
          if (v10 == v44)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v43 = self;
            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_55;
            }
          }

          else
          {
          }
        }

        v43 = v10;
      }
    }
  }

LABEL_55:
  v47 = v43;

  return v47;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self traitCollection];
  if ([v5 _focusSystemState] == 2)
  {
    [(UITextField *)self _installSelectGestureRecognizer];
  }

  else
  {
    [(UITextField *)self _uninstallSelectGestureRecognizer];
  }

  v6 = [v4 userInterfaceIdiom];
  if (v6 == [v5 userInterfaceIdiom])
  {
    [(_UITextFieldBackgroundProvider *)self->_backgroundProvider traitCollectionDidChange:v4];
  }

  else
  {
    [(UITextField *)self _invalidateBackgroundProvider];
  }

  v7 = [v5 userInterfaceStyle];
  if (v7 != [v4 userInterfaceStyle])
  {
    [(UITextField *)self _updateTextEffectsConfigurationIfNeeded];
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UITextField *)self setNeedsLayout];
  }

  v8.receiver = self;
  v8.super_class = UITextField;
  [(UIView *)&v8 traitCollectionDidChange:v4];
}

- (void)_preferredContentSizeCategoryDidChange
{
  [(UITextField *)self _adjustFontForAccessibilityTraits:0];
  if (_TextFieldScalesClearButton())
  {

    [(UITextField *)self _invalidateCachedDefaultClearButtonImages];
  }
}

- (void)_legibilityWeightDidChange
{
  [(UITextField *)self _adjustFontForAccessibilityTraits:1];
  if (_TextFieldScalesClearButton())
  {

    [(UITextField *)self _invalidateCachedDefaultClearButtonImages];
  }
}

- (void)_tvUpdateAppearanceForUserInterfaceStyle
{
  if (!self->_disableTextColorUpdateOnTraitCollectionChange)
  {
    [(UITextField *)self _tvUpdateTextColor];
  }

  [(UITextField *)self _tvUpdateContentBackdropView];
}

- (void)_setFullFontSize:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[_UIFullFontSize defaultValue];
  }

  obj = v4;
  if (![(_UIFullFontSize *)self->_fullFontSize isEqual:v4])
  {
    objc_storeStrong(&self->_fullFontSize, obj);
    if ([(UITextField *)self adjustsFontSizeToFitWidth])
    {
      if ([(_UIFullFontSize *)self->_fullFontSize needsEvaluation])
      {
        [(UITextField *)self setNeedsLayout];
      }
    }
  }
}

double __28__UITextField__fullFontSize__block_invoke(uint64_t a1)
{
  [off_1E70ECC18 defaultFontSize];
  v3 = v2;
  if ((*(*(a1 + 32) + 906) & 2) != 0 && dyld_program_sdk_at_least())
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v4 = [*(a1 + 32) attributedText];
    v5 = [v4 length];

    v6 = [*(a1 + 32) attributedText];
    v7 = *off_1E70EC918;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __28__UITextField__fullFontSize__block_invoke_2;
    v9[3] = &unk_1E71262C8;
    *&v9[6] = v3;
    v9[7] = v5;
    v9[4] = &v14;
    v9[5] = &v10;
    [v6 enumerateAttribute:v7 inRange:0 options:v5 usingBlock:{0, v9}];

    if (*(v11 + 24) == 1)
    {
      v3 = v15[3];
    }

    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v14, 8);
  }

  return v3;
}

double __28__UITextField__fullFontSize__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    [a2 pointSize];
  }

  else
  {
    v6 = *(a1 + 48);
  }

  v7 = v6;
  v8 = *(*(a1 + 32) + 8);
  result = *(v8 + 24) + ((a4 * v7) / *(a1 + 56));
  *(v8 + 24) = result;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (void)_invalidateDefaultFont
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __37__UITextField__invalidateDefaultFont__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView _performSystemAppearanceModifications:v2];
}

void __37__UITextField__invalidateDefaultFont__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultTextAttributes];
  v4 = [v2 mutableCopy];

  v3 = [*(a1 + 32) _defaultFont];
  [v4 setObject:v3 forKeyedSubscript:*off_1E70EC918];

  [*(a1 + 32) setDefaultTextAttributes:v4];
}

- (CGSize)_visionOverrideNaturalHeight:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(UIView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  if ([(NSString *)v6 isEqualToString:@"UICTContentSizeCategoryXXXL"])
  {
    height = 48.0;
  }

  else if (UIContentSizeCategoryIsAccessibilityCategory(v6))
  {
    height = 52.0;
  }

  v7 = width;
  v8 = height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)_visionOverrideHorizontalInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(UIView *)self traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v8))
  {
    left = 20.0;
    right = 20.0;
  }

  v9 = top;
  v10 = left;
  v11 = bottom;
  v12 = right;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (void)setFont:(id)a3 fullFontSize:(id)a4 ambientOnly:(BOOL)a5
{
  v5 = a5;
  v22 = a3;
  v8 = a4;
  v9 = self->_textStorage;
  v10 = v9;
  if (v5)
  {
    if (v22)
    {
      v11 = [(_UICascadingTextStorage *)v9 defaultAttributes];
      v12 = [v11 mutableCopy];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = objc_opt_new();
      }

      v15 = v14;

      [v15 setObject:v22 forKeyedSubscript:*off_1E70EC918];
      [(_UICascadingTextStorage *)v10 setDefaultAttributes:v15];
    }
  }

  else
  {
    [(_UICascadingTextStorage *)v9 setFont:v22];
  }

  if (!self->_overriddenPlaceholder)
  {
    [(UILabel *)self->_placeholderLabel setFont:v22];
  }

  [(UILabel *)self->_label setFont:v22];
  [(UILabel *)self->_suffixLabel setFont:v22];
  [(UILabel *)self->_prefixLabel setFont:v22];
  [(UITextField *)self _setFullFontSize:v8];
  if (v5)
  {
    if (v22)
    {
      v16 = [(_UICascadingTextStorage *)v10 defaultAttributes];
      v17 = [v16 mutableCopy];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = objc_opt_new();
      }

      v20 = v19;

      [v20 setObject:v22 forKeyedSubscript:*off_1E70EC918];
      [(_UICascadingTextStorage *)v10 setDefaultAttributes:v20];
    }
  }

  else
  {
    [(_UICascadingTextStorage *)v10 setFont:v22];
  }

  if ([(UITextField *)self _shouldObscureInput])
  {
    [(UITextField *)self _forceObscureAllText];
  }

  [(UITextField *)self _syncTypingAttributesWithDefaultAttribute:*off_1E70EC918];
  v21 = [(UITextField *)self _inputController];
  [v21 _updateEmptyStringAttributes];
  [v21 _selectionGeometryChanged];
  [(UITextField *)self setNeedsLayout];
  [(UIView *)self invalidateIntrinsicContentSize];
  if (!v5)
  {
    [(UITextField *)self _didSetFont:v22];
  }

  [(UITextField *)self _invalidateAllGlyphsAndTextLayout];
}

- (float)_newFontSize:(float)a3 maxSize:(float)a4
{
  if (a3 <= a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = a4;
  }

  [(UITextField *)self actualMinimumFontSize];
  if (v6 > v5)
  {
    [(UITextField *)self actualMinimumFontSize];
    return v7;
  }

  return v5;
}

- (id)_copyFont:(id)a3 newSize:(float)a4 maxSize:(float)a5
{
  if (!a3)
  {
    return 0;
  }

  v8 = a3;
  *&v9 = a4;
  *&v10 = a5;
  [(UITextField *)self _newFontSize:v9 maxSize:v10];
  v12 = [v8 fontWithSize:v11];

  return v12;
}

- (float)_marginTop
{
  [(UIView *)self bounds];

  [(UITextField *)self _marginTopForBounds:?];
  return result;
}

- (float)_marginTopForBounds:(CGRect)a3
{
  if ((*&self->_textFieldFlags & 1) != 0 || [(UIControl *)self contentVerticalAlignment:a3.origin.x]== UIControlContentVerticalAlignmentCenter || [(UIControl *)self contentVerticalAlignment]== UIControlContentVerticalAlignmentBottom)
  {
    v4 = [(UITextField *)self font:a3.origin.x];
    [v4 lineHeight];

    [(UITextField *)self textRectForBounds:0.0, 0.0, 100.0, 100.0];
    [(UIControl *)self contentVerticalAlignment];
  }

  else
  {
    v7 = self->_textStorage;
    v8 = [(_UICascadingTextStorage *)v7 font];
    [v8 pointSize];
    v10 = v9;

    [(UITextField *)self _fullFontSize];
    v12 = v11;
    if (v12 > v10)
    {
      v13 = [(_UICascadingTextStorage *)v7 font];
      *&v14 = v12;
      *&v15 = v12;
      v16 = [(UITextField *)self _copyFont:v13 newSize:v14 maxSize:v15];

      [v16 ascender];
      v17 = [(_UICascadingTextStorage *)v7 font];
      [v17 ascender];
    }
  }

  UIRoundToViewScale(self);
  return v5;
}

- (id)_clearButtonImageForState:(unint64_t)a3
{
  if (a3)
  {
    v3 = 0;
    goto LABEL_15;
  }

  v5 = [(UIView *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 3)
  {
    v7 = +[UIColor whiteColor];
    v8 = 2;
  }

  else
  {
    v8 = [(UITextField *)self _partsShouldBeMini];
    v7 = 0;
  }

  v9 = [(UIView *)self tintColor];
  v10 = [(UIView *)self traitCollection];
  v3 = _GetTextFieldClearButtonWithCustomColorContrastSettings(0, v8, v7, v9, v10, [(UIView *)self _accessibilityResolvedInterfaceStyle]== 1, [(UITextField *)self _forcesClearButtonHighContrastAppearance]);

  if (_TextFieldScalesClearButton())
  {
    v11 = [(UIView *)self traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 != 6)
    {
      v13 = [(UITextField *)self font];
      v14 = [(UIView *)self traitCollection];
      v15 = [v14 preferredContentSizeCategory];
      if (UIContentSizeCategoryIsAccessibilityCategory(v15))
      {
        if (UIContentSizeCategoryCompareToCategory(v15, &cfstr_Uictcontentsiz_11.isa) != NSOrderedAscending)
        {
          v16 = 1;
LABEL_13:

          v17 = [UIImageSymbolConfiguration configurationWithFont:v13 scale:v16];
          v18 = [v3 imageWithConfiguration:v17];

          v3 = v18;
          goto LABEL_14;
        }

        UIContentSizeCategoryCompareToCategory(v15, &cfstr_Uictcontentsiz_9.isa);
      }

      v16 = 2;
      goto LABEL_13;
    }
  }

LABEL_14:

LABEL_15:

  return v3;
}

- (BOOL)_shouldAnimateTransitionForAccessoryView:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self window];
  if (v5 && [(UITextField *)self _isAccessoryViewAnimatable:v4])
  {
    v6 = [(UIView *)self traitCollection];
    v7 = [v6 userInterfaceIdiom] != 6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isAccessoryViewAnimatable:(id)a3
{
  v4 = a3;
  if ([(UIControl *)self _allowsSymbolAnimations])
  {
    v5 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 _imageViewIfNeeded];
      v7 = [v6 image];
      v8 = [v7 isSymbolImage];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_transitionFromAccessoryView:(id)a3 toView:(id)a4 allowingAnimation:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(UITextField *)self _contentView];
  if (v8)
  {
    v11 = [v8 superview];

    if (v11 == v10)
    {
      if (v5 && [(UITextField *)self _shouldAnimateTransitionForAccessoryView:v8])
      {
        v12 = v8;
        v13 = [v12 _imageViewIfNeeded];
        v14 = [MEMORY[0x1E6982258] disappearDownEffect];
        v15 = [MEMORY[0x1E6982278] options];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __69__UITextField__transitionFromAccessoryView_toView_allowingAnimation___block_invoke;
        v24[3] = &unk_1E71262F0;
        v25 = v12;
        v16 = v12;
        [v13 addSymbolEffect:v14 options:v15 animated:1 completion:v24];
      }

      else
      {
        [v8 removeFromSuperview];
      }
    }
  }

  if (v9)
  {
    v17 = [v9 superview];

    if (v17 != v10)
    {
      if (v5 && [(UITextField *)self _shouldAnimateTransitionForAccessoryView:v9])
      {
        v18 = v9;
        v19 = [v18 _imageViewIfNeeded];
        v20 = [MEMORY[0x1E6982258] disappearDownEffect];
        v21 = [MEMORY[0x1E6982278] options];
        [v19 addSymbolEffect:v20 options:v21 animated:0];

        [v10 addSubview:v18];
        v22 = [v18 _imageViewIfNeeded];

        v23 = [MEMORY[0x1E6982238] appearUpEffect];
        [v22 addSymbolEffect:v23];
      }

      else
      {
        [v10 addSubview:v9];
      }
    }
  }
}

void __69__UITextField__transitionFromAccessoryView_toView_allowingAnimation___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isFinished])
  {
    [*(a1 + 32) removeFromSuperview];
    v5 = [*(a1 + 32) _imageViewIfNeeded];
    v3 = [MEMORY[0x1E6982238] appearUpEffect];
    v4 = [MEMORY[0x1E6982278] options];
    [v5 addSymbolEffect:v3 options:v4 animated:0];
  }
}

- (void)_updateButtonsAllowingAnimation:(BOOL)a3
{
  v3 = a3;
  v9 = [(UITextField *)self _contentView];
  v5 = [(UIView *)self->_clearButton superview];

  if ([(UITextField *)self _showsClearButton:[(UITextField *)self isEditing]])
  {
    v6 = [(UITextField *)self clearButton];
    v7 = +[UIView areAnimationsEnabled];
    v8 = v5 == v9 && v7;
    [UIView setAnimationsEnabled:v8];
    [(UITextField *)self clearButtonRect];
    [(UIButton *)self->_clearButton setFrame:?];
    [(UIView *)self->_clearButton setUserInteractionEnabled:1];
    [(_UITextFieldClearButton *)self->_clearButton setPointerInteractionEnabled:[(UITextField *)self _hasCustomClearButtonImage]^ 1];
    [(UITextField *)self _transitionFromAccessoryView:0 toView:self->_clearButton allowingAnimation:v3];
    [UIView setAnimationsEnabled:v7];
  }

  else
  {
    [(UITextField *)self _transitionFromAccessoryView:self->_clearButton toView:0 allowingAnimation:v3];
  }

  if (self->_leftView)
  {
    if ([(UITextField *)self _showsLeftView])
    {
      [(UITextField *)self _transitionFromAccessoryView:0 toView:self->_leftView allowingAnimation:v3];
      [(UIView *)self bounds];
      [(UITextField *)self leftViewRectForBounds:?];
      [(UIView *)self->_leftView setFrame:?];
    }

    else
    {
      [(UITextField *)self _transitionFromAccessoryView:self->_leftView toView:0 allowingAnimation:v3];
    }
  }

  if (self->_rightView)
  {
    if ([(UITextField *)self _showsRightView])
    {
      [(UITextField *)self _transitionFromAccessoryView:0 toView:self->_rightView allowingAnimation:v3];
      [(UIView *)self bounds];
      [(UITextField *)self rightViewRectForBounds:?];
      [(UIView *)self->_rightView setFrame:?];
    }

    else
    {
      [(UITextField *)self _transitionFromAccessoryView:self->_rightView toView:0 allowingAnimation:v3];
    }
  }
}

void __43__UITextField__updateAutosizeStyleIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 size];
  v5 = v4;
  v6 = [v3 length];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 24);
  if (v8 >= *(a1 + 72) || v5 >= *(a1 + 76))
  {
    v15 = *(v7 + 24);
  }

  else
  {
    v9 = *off_1E70EC918;
    v10 = MEMORY[0x1E69E9820];
    do
    {
      ++*(*(*(a1 + 56) + 8) + 24);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + 1.0;
      v11 = *(*(*(a1 + 48) + 8) + 24) / v8;
      v32[0] = v10;
      v32[1] = 3221225472;
      v32[2] = __43__UITextField__updateAutosizeStyleIfNeeded__block_invoke_3;
      v32[3] = &unk_1E7126318;
      v32[4] = *(a1 + 32);
      v12 = *(a1 + 72);
      v34 = v11;
      v35 = v12;
      v13 = v3;
      v33 = v13;
      [v13 enumerateAttribute:v9 inRange:0 options:v6 usingBlock:{0, v32}];
      [v13 size];
      v5 = v14;
      v8 = *(*(*(a1 + 48) + 8) + 24);

      v15 = *(*(*(a1 + 48) + 8) + 24);
    }

    while (v15 < *(a1 + 72) && v5 < *(a1 + 76));
  }

  v16 = v15;
  [*(a1 + 32) actualMinimumFontSize];
  if (v17 < v16)
  {
    v19 = *off_1E70EC918;
    do
    {
      v17 = *(a1 + 76);
      if (v5 <= v17)
      {
        break;
      }

      --*(*(*(a1 + 56) + 8) + 24);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + -1.0;
      v20 = *(*(*(a1 + 48) + 8) + 24) / v8;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __43__UITextField__updateAutosizeStyleIfNeeded__block_invoke_4;
      v28[3] = &unk_1E7126318;
      v28[4] = *(a1 + 32);
      v21 = *(a1 + 72);
      v30 = v20;
      v31 = v21;
      v22 = v3;
      v29 = v22;
      [v22 enumerateAttribute:v19 inRange:0 options:v6 usingBlock:{0, v28}];
      [v22 size];
      v5 = v23;
      v8 = *(*(*(a1 + 48) + 8) + 24);

      v24 = *(*(*(a1 + 48) + 8) + 24);
      [*(a1 + 32) actualMinimumFontSize];
    }

    while (v17 < v24);
  }

  LODWORD(v17) = *(*(*(a1 + 48) + 8) + 24);
  if (*&v17 != *(a1 + 80))
  {
    LODWORD(v18) = *(a1 + 72);
    v25 = [*(a1 + 32) _copyFont:*(a1 + 40) newSize:v17 maxSize:v18];
    v26 = *(*(a1 + 64) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }
}

void __43__UITextField__updateAutosizeStyleIfNeeded__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  [v8 pointSize];
  LODWORD(v9) = *(a1 + 52);
  v11 = v10 * *(a1 + 48);
  *&v11 = v11;
  v12 = [v7 _copyFont:v8 newSize:v11 maxSize:v9];

  [*(a1 + 40) addAttribute:*off_1E70EC918 value:v12 range:{a3, a4}];
}

void __43__UITextField__updateAutosizeStyleIfNeeded__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  [v8 pointSize];
  LODWORD(v9) = *(a1 + 52);
  v11 = v10 * *(a1 + 48);
  *&v11 = v11;
  v12 = [v7 _copyFont:v8 newSize:v11 maxSize:v9];

  [*(a1 + 40) addAttribute:*off_1E70EC918 value:v12 range:{a3, a4}];
}

- (BOOL)_showsClearButtonWhenNonEmpty:(BOOL)a3
{
  if ([(UITextField *)self clearButtonMode])
  {
    if ([(UITextField *)self clearButtonMode]== UITextFieldViewModeAlways)
    {
      v5 = 0;
      goto LABEL_13;
    }

    if ([(UIView *)self isFirstResponder])
    {
      v6 = 1;
      if (!a3)
      {
LABEL_7:
        v7 = [(UITextField *)self _hasContent];
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *(&self->_textFieldFlags + 1) & 1;
      if (!a3)
      {
        goto LABEL_7;
      }
    }

    v7 = 1;
LABEL_10:
    if ([(UITextField *)self clearButtonMode]== UITextFieldViewModeWhileEditing)
    {
      v5 = v6 & v7 ^ 1;
    }

    else
    {
      v5 = ([(UITextField *)self clearButtonMode]== UITextFieldViewModeUnlessEditing) & v6 & v7;
    }

    goto LABEL_13;
  }

  v5 = 1;
LABEL_13:
  v8 = *(&self->super.super._viewFlags + 2);
  if ((v8 & 0x400000) != 0)
  {
    v9 = [(UITextField *)self _showsLeftView];
  }

  else
  {
    v9 = [(UITextField *)self _showsRightView];
  }

  if ((v5 | v9))
  {
    return 0;
  }

  if (([(UITextField *)self _currentTextAlignment]^ ((v8 & 0x400000uLL) >> 21)) == 2 && ![(UITextField *)self _hasContent])
  {
    return [(UITextField *)self clearButtonMode]== UITextFieldViewModeAlways;
  }

  return 1;
}

- (BOOL)_showsTrailingView
{
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    return [(UITextField *)self _showsLeftView];
  }

  else
  {
    return [(UITextField *)self _showsRightView];
  }
}

- (BOOL)_showsClearButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIView *)self traitCollection];
  if ([v5 userInterfaceIdiom] == 3 && !-[UITextField _showsTrailingView](self, "_showsTrailingView"))
  {
    v7 = _UISolariumEnabled();

    if ((v7 & 1) == 0)
    {
      v8 = [(UIView *)self traitCollection];
      v9 = [v8 interactionModel];

      return v9 & 1;
    }
  }

  else
  {
  }

  if ([(UITextField *)self _hasContent])
  {

    return [(UITextField *)self _showsClearButtonWhenNonEmpty:v3];
  }

  else
  {

    return [(UITextField *)self _showsClearButtonWhenEmpty];
  }
}

- (BOOL)_isShowingPlaceholder
{
  v2 = [(UIView *)self->_placeholderLabel superview];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_isShowingPrefix
{
  v2 = [(UIView *)self->_prefixLabel superview];
  v3 = v2 != 0;

  return v3;
}

- (CGRect)_availableTextRectExcludingButtonsForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(UITextField *)self _metricsProvider];
  [v7 contentFrameForBounds:{x, y, width, height}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)_availableTextRectForBounds:(CGRect)a3 forEditing:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  v9 = *(&self->super.super._viewFlags + 2);
  x = a3.origin.x;
  [(UITextField *)self _availableTextRectExcludingButtonsForBounds:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(UITextField *)self shadowBlur];
  if (v18 != 0.0)
  {
    v19 = v18;
    [(UITextField *)self shadowOffset];
    v21 = -(fabs(v19) + fabs(v20));
    v71.origin.x = v11;
    v71.origin.y = v13;
    v71.size.width = v15;
    v71.size.height = v17;
    v72 = CGRectInset(v71, 0.0, v21);
    v11 = v72.origin.x;
    v13 = v72.origin.y;
    v15 = v72.size.width;
    v17 = v72.size.height;
  }

  if (self->_iconView)
  {
    [(UITextField *)self iconRect];
    v23 = v22;
    v24 = v23;
    v11 = v11 + v24;
    v15 = v15 - v24;
  }

  label = self->_label;
  if (label)
  {
    [(UIView *)label frame];
    if ((v9 & 0x400000) != 0)
    {
      v31 = v26;
      [(UIView *)self bounds];
      v33 = v32 - v31;
      v15 = v15 - v33;
      v11 = v31 - v15;
    }

    else
    {
      v28 = v27;
      [(UIView *)self->_label frame];
      *&v29 = v29 + v28;
      v30 = *&v29;
      v11 = v11 + v30;
      v15 = v15 - v30;
    }
  }

  if ([(UITextField *)self _showsLeftView])
  {
    [(UITextField *)self leftViewRectForBounds:x, y, width, height];
    v67 = v34;
    v68 = v13;
    v35 = v17;
    v37 = v36;
    [(UITextField *)self _baselineLeftViewRectForBounds:x, y, width, height];
    v38 = v37 + v67;
    v17 = v35;
    v13 = v68;
    v40 = fmin(v15, v38 - v39);
    v11 = v11 + v40;
    v15 = v15 - v40;
  }

  suffixLabel = self->_suffixLabel;
  if (suffixLabel)
  {
    v42 = [(UILabel *)suffixLabel text];
    v43 = [(UILabel *)self->_suffixLabel font];
    [v42 _legacy_sizeWithFont:v43];
    v45 = fmin(v15, v44);

    v15 = v15 - v45;
  }

  prefixLabel = self->_prefixLabel;
  if (prefixLabel)
  {
    v47 = [(UILabel *)prefixLabel text];
    v48 = [(UILabel *)self->_prefixLabel font];
    [v47 _legacy_sizeWithFont:v48];
    v50 = fmin(v15, v49);

    v11 = v11 + v50;
    v15 = v15 - v50;
  }

  [(UITextField *)self clearButtonRect];
  v52 = v51;
  [(UITextField *)self _clearButtonMarginX];
  v54 = v53 + v52;
  IsRightToLeftInputModeActive = UIKeyboardIsRightToLeftInputModeActive();
  if ((v9 & 0x400000) != 0)
  {
    if (IsRightToLeftInputModeActive)
    {
      v56 = [(_UICascadingTextStorage *)self->_textStorage _ui_resolvedTextAlignment]!= 0;
    }

    else
    {
      v56 = 0;
    }

    if ([(UITextField *)self _showsLeftView]&& !v56 || [(UITextField *)self _hasContent]&& [(UITextField *)self _showsClearButtonWhenNonEmpty:v4]|| ![(UITextField *)self _hasContent]&& [(UITextField *)self _showsClearButtonWhenEmpty])
    {
      v15 = v15 - v54;
      v11 = v11 + v54;
    }

    if ([(UITextField *)self _showsRightView])
    {
      [(UIView *)self bounds];
      MaxX = CGRectGetMaxX(v73);
      [(UITextField *)self rightViewRectForBounds:x, y, width, height];
      v58 = fmin(v15, MaxX - CGRectGetMinX(v74));
LABEL_40:
      v15 = v15 - v58;
    }
  }

  else
  {
    if (((IsRightToLeftInputModeActive & 1) != 0 || [(_UICascadingTextStorage *)self->_textStorage _ui_resolvedTextAlignment]== 2 || [(UITextField *)self _hasContent]) && [(UITextField *)self _showsClearButtonWhenNonEmpty:v4]|| ![(UITextField *)self _hasContent]&& [(UITextField *)self _showsClearButtonWhenEmpty])
    {
      v15 = v15 - v54;
      goto LABEL_41;
    }

    if ([(UITextField *)self _showsRightView])
    {
      if (dyld_program_sdk_at_least())
      {
        v75.origin.x = v11;
        v75.origin.y = v13;
        v75.size.width = v15;
        v75.size.height = v17;
        v59 = CGRectGetMaxX(v75);
        [(UITextField *)self rightViewRectForBounds:x, y, width, height];
        v60 = v59 - CGRectGetMinX(v76);
      }

      else
      {
        [(UITextField *)self rightViewRectForBounds:x, y, width, height];
      }

      v58 = fmin(v15, v60);
      goto LABEL_40;
    }
  }

LABEL_41:
  if (v15 >= 0.0)
  {
    v61 = v15;
  }

  else
  {
    v61 = 0.0;
  }

  [(UIView *)self _currentScreenScale];

  v63 = UIRectIntegralWithScale(v11, v13, v61, v17, v62);
  result.size.height = v66;
  result.size.width = v65;
  result.origin.y = v64;
  result.origin.x = v63;
  return result;
}

- (id)_viewForLoweringBaselineLayoutAttribute:(int)a3
{
  textFieldFlags = self->_textFieldFlags;
  v4 = *&textFieldFlags >= 0 && (a3 - 11) >= 2;
  v5 = 0x80000000;
  if (v4)
  {
    v5 = 0;
  }

  self->_textFieldFlags = (v5 | *&textFieldFlags & 0xFFFFFFFF7FFFFFFFLL);
  v8.receiver = self;
  v8.super_class = UITextField;
  v6 = [(UIView *)&v8 _viewForLoweringBaselineLayoutAttribute:?];

  return v6;
}

- (double)_baselineOffsetForLast:(BOOL)a3 autolayoutOnly:(BOOL)a4
{
  v4 = a3;
  if (a4 && (*(&self->super.super._viewFlags + 7) & 2) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = v9;
    v11 = @"_firstBaselineOffsetFromTop";
    if (v4)
    {
      v11 = @"_baselineOffsetFromBottom";
    }

    [v9 handleFailureInMethod:a2 object:self file:@"UITextField.m" lineNumber:3235 description:{@"-[UITextField %@] only valid when using auto layout", v11}];
  }

  p_firstBaselineOffsetFromTop = &self->_firstBaselineOffsetFromTop;
  if (self->_firstBaselineOffsetFromTop == 0.0 && self->_lastBaselineOffsetFromBottom == 0.0)
  {
    [(UITextField *)self _updateBaselineInformationDependentOnBoundsAllowingInvalidation:0];
  }

  if (v4)
  {
    p_firstBaselineOffsetFromTop = &self->_lastBaselineOffsetFromBottom;
  }

  return *p_firstBaselineOffsetFromTop;
}

- (UIEdgeInsets)textContainerInset
{
  [(UIFieldEditor *)self->_fieldEditor textContainerInset];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)_baselineCalculatorSourceCoordinateSpace
{
  [(_UITextCanvas *)self->_textCanvasView frame];
  if ((v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = self->_textCanvasView;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateBaselineInformationDependentOnBoundsAllowingInvalidation:(BOOL)a3
{
  v3 = a3;
  v6 = [(UIView *)self _wantsAutolayout];
  v7 = v6;
  if (v3 && !v6)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"UITextField.m" lineNumber:3289 description:@"invalidation is only applicable to auto layout"];

    if (v7)
    {
      goto LABEL_4;
    }
  }

  else if (v6)
  {
LABEL_4:
    [(UIView *)self bounds];
    v11 = v10;
    v13 = v12;
    goto LABEL_7;
  }

  v11 = *MEMORY[0x1E695EFF8];
  v13 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIView *)self bounds];
  [(UITextField *)self sizeThatFits:v15, v16];
  v8 = v17;
  v9 = v18;
LABEL_7:
  v19 = v11;
  v20 = v13;
  if (CGRectGetHeight(*(&v8 - 2)) <= 0.0)
  {
    v28 = 0.0;
    if (!v7)
    {
      v26 = 0.0;
      goto LABEL_13;
    }

    [(UIView *)self _calculatedIntrinsicHeight];
    v26 = 0.0;
    if (v29 <= 0.0)
    {
      goto LABEL_13;
    }
  }

  [(UITextField *)self _layoutContentOnly];
  v21 = [(UITextField *)self _inputController];
  v22 = [(UITextField *)self textLayoutController];
  v23 = [v21 typingAttributes];
  [(UITextField *)self textContainerOrigin];
  v24 = [_UITextLayoutControllerBase baselineCalculatorForView:v22 typingAttributes:self usesLineFragmentOrigin:v23 fallbackTextContainerOrigin:0];

  [v24 firstBaselineOffsetFromTop];
  v26 = v25;
  [v24 lastBaselineOffsetFromBottom];
  v28 = v27;

LABEL_13:
  if (self->_firstBaselineOffsetFromTop == v26 && self->_lastBaselineOffsetFromBottom == v28)
  {
    return;
  }

  if (!v7)
  {
    v30 = 0;
LABEL_19:
    self->_firstBaselineOffsetFromTop = v26;
    self->_lastBaselineOffsetFromBottom = v28;
    if (v3)
    {
      v31 = v30;
      [(UIView *)self _invalidateBaselineConstraints];
      v30 = v31;
    }

    goto LABEL_21;
  }

  v30 = [(UIView *)self _layoutEngineCreateIfNecessary];
  if (v30)
  {
    goto LABEL_19;
  }

LABEL_21:
}

- (void)setSizingRule:(int64_t)a3
{
  if (((*&self->_textFieldFlags >> 38) & 1) != a3)
  {
    if ((*(&self->super.super._viewFlags + 7) & 2) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = [(UIView *)self superview];
      if (v5)
      {
        v14 = v5;
        [(UIView *)self bounds];
        v7 = v6;
        v9 = v8;
        [(UITextField *)self sizeThatFits:v6, v8];
        v13 = vabdd_f64(v7, v10) > 2.22044605e-16;
        v12 = vabdd_f64(v9, v11);
        v13 = v13 || v12 > 2.22044605e-16;
        if (v13)
        {
          [v14 setNeedsLayout];
        }

        v5 = v14;
      }
    }

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFBFFFFFFFFFLL | ((a3 == 1) << 38));
  }
}

- (void)_setExtremeSizingEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UITextField *)self _isExtremeSizingEnabled]!= a3)
  {
    if ((*(&self->super.super._viewFlags + 7) & 2) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = [(UIView *)self superview];
      if (v5)
      {
        v11 = v5;
        [(UIView *)self bounds];
        width = v13.size.width;
        height = v13.size.height;
        v8 = CGRectGetHeight(v13);
        [(UITextField *)self sizeThatFits:width, height];
        if (v8 == v9)
        {
          [v11 setNeedsLayout];
        }

        v5 = v11;
      }
    }

    v10 = 0x2000000000;
    if (!v3)
    {
      v10 = 0;
    }

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFDFFFFFFFFFLL | v10);
  }
}

- (CGRect)_suffixFrame
{
  v3 = [(UITextField *)self _isShowingPlaceholder];
  placeholderLabel = self;
  if (v3)
  {
    placeholderLabel = self->_placeholderLabel;
  }

  v5 = [placeholderLabel text];
  v6 = [(UITextField *)self font];
  [v5 _legacy_sizeWithFont:v6];
  v8 = v7;

  [(UIView *)self bounds];
  [(UITextField *)self _availableTextRectForBounds:[(UITextField *)self isEditing] forEditing:v9, v10, v11, v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(UIView *)self bounds];
  [(UITextField *)self placeholderRectForBounds:?];
  v22 = v21;
  v45 = v23;
  v24 = [(UILabel *)self->_suffixLabel text];
  v25 = [(UILabel *)self->_suffixLabel font];
  [v24 _legacy_sizeWithFont:v25];
  v27 = v26;

  v46.origin.x = v14;
  v46.origin.y = v16;
  v46.size.width = v18;
  v46.size.height = v20;
  MaxX = CGRectGetMaxX(v46);
  left = self->_padding.left;
  v30 = left + self->_padding.right;
  v31 = v18 - v30;
  v32 = v14 + left;
  v33 = v8 + v30;
  if (v8 >= v31)
  {
    v8 = v33;
  }

  else
  {
    v18 = v31;
    v14 = v32;
  }

  v34 = [(_UICascadingTextStorage *)self->_textStorage _ui_resolvedTextAlignment];
  v35 = v14;
  v36 = v16;
  v37 = v18;
  v38 = v20;
  if (v34 == 1)
  {
    v39 = v8 * 0.5 + CGRectGetMidX(*&v35) + -1.0;
  }

  else if (v34 == 2)
  {
    v39 = CGRectGetMaxX(*&v35);
  }

  else
  {
    v39 = v8 + CGRectGetMinX(*&v35);
  }

  if (v39 >= MaxX)
  {
    v40 = MaxX;
  }

  else
  {
    v40 = v39;
  }

  v41 = v40;
  v42 = v22;
  v43 = v27;
  v44 = v45;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (CGRect)_prefixFrame
{
  v3 = [(UITextField *)self _isShowingPlaceholder];
  placeholderLabel = self;
  if (v3)
  {
    placeholderLabel = self->_placeholderLabel;
  }

  v5 = [placeholderLabel text];
  v6 = [(UITextField *)self font];
  [v5 _legacy_sizeWithFont:v6];
  v8 = v7;

  [(UIView *)self bounds];
  [(UITextField *)self _availableTextRectForBounds:[(UITextField *)self isEditing] forEditing:v9, v10, v11, v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(UILabel *)self->_prefixLabel text];
  v22 = [(UILabel *)self->_prefixLabel font];
  [v21 _legacy_sizeWithFont:v22];
  v24 = v23;

  [(UIView *)self bounds];
  [(UITextField *)self placeholderRectForBounds:?];
  v26 = v25;
  v46 = v27;
  v47.origin.x = v14;
  v47.origin.y = v16;
  v47.size.width = v18;
  v47.size.height = v20;
  MinX = CGRectGetMinX(v47);
  left = self->_padding.left;
  v30 = left + self->_padding.right;
  v31 = v18 - v30;
  v32 = v14 + left;
  v33 = v8 + v30;
  if (v8 >= v31)
  {
    v8 = v33;
  }

  else
  {
    v18 = v31;
    v14 = v32;
  }

  v34 = [(_UICascadingTextStorage *)self->_textStorage _ui_resolvedTextAlignment];
  v35 = v14;
  v36 = v16;
  v37 = v18;
  v38 = v20;
  if (v34 == 1)
  {
    v40 = CGRectGetMidX(*&v35) + v8 * -0.5 - v24 + -1.0;
  }

  else
  {
    if (v34 == 2)
    {
      v39 = CGRectGetMaxX(*&v35) - v8;
    }

    else
    {
      v39 = CGRectGetMinX(*&v35);
    }

    v40 = v39 - v24;
  }

  if (v40 >= MinX - v24)
  {
    v41 = v40;
  }

  else
  {
    v41 = MinX - v24;
  }

  v42 = v41;
  v43 = v26;
  v44 = v24;
  v45 = v46;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (void)floatingContentView:(id)a3 isTransitioningFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  [(UITextField *)self _tvUpdateContentBackdropView:a3];
  [(UITextField *)self _tvUpdateTextColor];

  [(UITextField *)self _layoutContentAndExtras];
}

- (NSLayoutManager)layoutManager
{
  v11 = *MEMORY[0x1E69E9840];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  textFieldFlags = self->_textFieldFlags;
  if (has_internal_diagnostics)
  {
    if ((*&textFieldFlags & 0x1000000000) != 0)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v9 = 138412290;
        v10 = self;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "TextKit1 layout manager requested from field (%@) configured to use TextKit2", &v9, 0xCu);
      }
    }
  }

  else if ((*&textFieldFlags & 0x1000000000) != 0)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &layoutManager___s_category_0) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = self;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "TextKit1 layout manager requested from field (%@) configured to use TextKit2", &v9, 0xCu);
    }
  }

  v5 = [(_UITextLayoutController *)self->_textLayoutController layoutManager];

  return v5;
}

- (CGRect)adjustedCaretRectForCaretRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(UILabel *)self->_placeholderLabel textAlignment]== NSTextAlignmentCenter && ![(UITextField *)self _hasContent])
  {
    v8 = [(UILabel *)self->_placeholderLabel text];
    if (![v8 length])
    {
LABEL_8:

      goto LABEL_9;
    }

    v9 = [(UIView *)self->_placeholderLabel superview];

    if (v9)
    {
      placeholderLabel = self->_placeholderLabel;
      v11 = [(UITextField *)self textInputView];
      [(UIView *)placeholderLabel convertRect:v11 fromView:x, y, width, height];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      [(UIView *)self->_placeholderLabel bounds];
      v19 = v18;
      v21 = v20;
      [(UILabel *)self->_placeholderLabel textRectForBounds:?];
      v23 = v22;
      v24 = round(v19 + (v21 - v22) * 0.5);
      v25 = [(UILabel *)self->_placeholderLabel text];
      LODWORD(v11) = [v25 _isNaturallyRTL];

      v26 = -v15;
      if (v11)
      {
        v26 = v23;
      }

      v27 = v26 + v24;
      v28 = self->_placeholderLabel;
      v8 = [(UITextField *)self textInputView];
      [(UIView *)v28 convertRect:v8 toView:v27, v13, v15, v17];
      x = v29;
      y = v30;
      width = v31;
      height = v32;
      goto LABEL_8;
    }
  }

LABEL_9:
  v33 = x;
  v34 = y;
  v35 = width;
  v36 = height;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (void)setMinimumFontSize:(CGFloat)minimumFontSize
{
  if (minimumFontSize < 0.0)
  {
    minimumFontSize = 0.0;
  }

  self->_minimumFontSize = minimumFontSize;
}

- (CGPoint)_scrollOffset
{
  v2 = [(UITextField *)self _fieldEditor];
  [v2 contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGSize)_leftViewOffset
{
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    v2 = 680;
    width = -self->_rightViewOffset.width;
  }

  else
  {
    v2 = 664;
    width = self->_leftViewOffset.width;
  }

  v4 = *(&self->super.super.super._responderFlags + v2);
  result.height = v4;
  result.width = width;
  return result;
}

- (void)_setLeftViewOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UITextField *)self _leftViewOffset];
  if (v7 != width || v6 != height)
  {
    if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
    {
      v9 = 680;
      self->_rightViewOffset.width = -width;
    }

    else
    {
      v9 = 664;
      self->_leftViewOffset.width = width;
    }

    *(&self->super.super.super._responderFlags + v9) = height;

    [(UITextField *)self setNeedsLayout];
  }
}

- (CGSize)_rightViewOffset
{
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    v2 = 664;
    width = -self->_leftViewOffset.width;
  }

  else
  {
    v2 = 680;
    width = self->_rightViewOffset.width;
  }

  v4 = *(&self->super.super.super._responderFlags + v2);
  result.height = v4;
  result.width = width;
  return result;
}

- (void)_setRightViewOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UITextField *)self _rightViewOffset];
  if (v7 != width || v6 != height)
  {
    if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
    {
      v9 = 664;
      self->_leftViewOffset.width = -width;
    }

    else
    {
      v9 = 680;
      self->_rightViewOffset.width = width;
    }

    *(&self->super.super.super._responderFlags + v9) = height;

    [(UITextField *)self setNeedsLayout];
  }
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((valueForKey__checkedPlaceholderLabel & 1) == 0 && [v4 isEqualToString:@"_placeholderLabel"])
  {
    UIKVCAccessProhibited(v5, @"UITextField");
    valueForKey__checkedPlaceholderLabel = 1;
  }

  v8.receiver = self;
  v8.super_class = UITextField;
  v6 = [(UITextField *)&v8 valueForKey:v5];

  return v6;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self textInputTraits];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)takeTraitsFrom:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self textInputTraits];
  [v5 takeTraitsFrom:v4];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if ([objc_opt_class() instancesRespondToSelector:a3])
  {
    v5 = [(UITextField *)self textInputTraits];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITextField;
    v5 = [(UITextField *)&v7 forwardingTargetForSelector:a3];
  }

  return v5;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  }

  v7 = v6;

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = UITextField;
  if ([(UITextField *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UITextField *)self textInputTraits];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)_increaseContrastSettingChanged:(id)a3
{
  [(UITextField *)self _invalidateCachedDefaultClearButtonImages];

  [(UITextField *)self setNeedsLayout];
}

- (void)_setForcesClearButtonHighContrastAppearance:(BOOL)a3
{
  if (((((*&self->_textFieldFlags & 0x20000000) == 0) ^ a3) & 1) == 0)
  {
    v9 = v3;
    v8 = 0x20000000;
    if (!a3)
    {
      v8 = 0;
    }

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFDFFFFFFFLL | v8);
    [(UITextField *)self _invalidateCachedDefaultClearButtonImages:v4];

    [(UITextField *)self setNeedsLayout];
  }
}

- (void)setDevicePasscodeEntry:(BOOL)a3
{
  v3 = a3;
  v5 = [(UITextField *)self textInputTraits];
  if ([v5 isDevicePasscodeEntry] != v3)
  {
    [v5 setDevicePasscodeEntry:v3];
    [(UITextField *)self _didChangeSecureTextEntry];
  }
}

- (void)setSecureTextEntry:(BOOL)a3
{
  v3 = a3;
  v5 = [(UITextField *)self textInputTraits];
  if ([v5 isSecureTextEntry] != v3)
  {
    [v5 setSecureTextEntry:v3];
    [(UITextField *)self _didChangeSecureTextEntry];
  }
}

- (void)setDisplaySecureTextUsingPlainText:(BOOL)a3
{
  v3 = a3;
  v6 = [(UITextField *)self textInputTraits];
  if ([v6 displaySecureTextUsingPlainText] != v3)
  {
    [v6 setDisplaySecureTextUsingPlainText:v3];
    [(_UITextLayoutController *)self->_textLayoutController setDocumentObscured:[(UITextField *)self _shouldObscureInput]];
    v5 = [(UITextField *)self _fieldEditor];
    [v5 setDisplaySecureTextUsingPlainText:v3];
  }
}

- (void)setDisplaySecureEditsUsingPlainText:(BOOL)a3
{
  v3 = a3;
  v6 = [(UITextField *)self textInputTraits];
  if ([v6 displaySecureEditsUsingPlainText] != v3)
  {
    [v6 setDisplaySecureEditsUsingPlainText:v3];
    v5 = [(UITextField *)self _fieldEditor];
    [v5 setDisplaySecureEditsUsingPlainText:v3];
  }
}

- (void)setKeyboardAppearance:(int64_t)a3
{
  v6 = [(UITextField *)self textInputTraits];
  v5 = [(UITextField *)self _isPasscodeStyle];
  if ([v6 keyboardAppearance] != a3)
  {
    [v6 setKeyboardAppearance:a3];
    [(UITextField *)self _noteThatKeyboardAppearanceHasChanged];
    [(UITextField *)self _invalidatePasscodeStyleFromStyle:v5];
  }
}

- (void)setPasswordRules:(id)a3
{
  v7 = a3;
  v4 = [(UITextField *)self textInputTraits];
  v5 = [v4 passwordRules];
  v6 = [v7 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    [v4 setPasswordRules:v7];
  }
}

- (void)_invalidatePasscodeStyleFromStyle:(BOOL)a3
{
  v5 = [(UITextField *)self _isPasscodeStyle];
  if (a3 || !v5)
  {
    if (v5 || !a3)
    {
      return;
    }

    v13 = [(_UICascadingTextStorage *)self->_textStorage defaultAttributes];
    v14 = [v13 mutableCopy];

    [v14 removeObjectForKey:*off_1E70EC950];
    [(_UICascadingTextStorage *)self->_textStorage setDefaultAttributes:v14];
    [(UITextField *)self setTextColor:0];
    [(UITextField *)self _invalidateBackgroundProvider];
    [(UITextField *)self setNeedsLayout];
  }

  else
  {
    v6 = +[UIDevice currentDevice];
    v7 = [v6 userInterfaceIdiom];

    v8 = 16.0;
    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = 18.0;
      v9 = &unk_1EFE2EF88;
    }

    else
    {
      v9 = &unk_1EFE2EF98;
    }

    v14 = [off_1E70ECC18 systemFontOfSize:v8];
    v10 = [(_UICascadingTextStorage *)self->_textStorage defaultAttributes];
    v11 = [v10 mutableCopy];

    [v11 setObject:v9 forKey:*off_1E70EC950];
    [(_UICascadingTextStorage *)self->_textStorage setDefaultAttributes:v11];
    [(_UICascadingTextStorage *)self->_textStorage setFont:v14];
    [(UITextField *)self setContentVerticalAlignment:0];
    v12 = +[UIColor whiteColor];
    [(UITextField *)self setTextColor:v12];

    [(UITextField *)self _invalidateBackgroundProvider];
    [(UITextField *)self setNeedsLayout];
  }
}

- (id)annotatedSubstringForRange:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  v6 = [v5 annotatedSubstringForRange:v4];

  return v6;
}

- (void)replaceRange:(id)a3 withAnnotatedString:(id)a4 relativeReplacementRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a4;
  v10 = a3;
  v11 = [(UITextField *)self _inputController];
  [v11 replaceRange:v10 withAnnotatedString:v9 relativeReplacementRange:{location, length}];
}

- (void)removeAnnotation:(id)a3 forRange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextField *)self _inputController];
  [v8 removeAnnotation:v7 forRange:v6];
}

- (void)setLinkTextAttributes:(id)a3
{
  v4 = [a3 copy];
  linkTextAttributes = self->_linkTextAttributes;
  self->_linkTextAttributes = v4;

  v6 = [(_UITextLayoutController *)self->_textLayoutController documentRange];
  if (([v6 isEmpty] & 1) == 0)
  {
    [(_UITextLayoutController *)self->_textLayoutController invalidateLayoutForRange:v6];
    [(_UITextCanvas *)self->_textCanvasView setNeedsDisplay];
  }
}

- (NSDictionary)linkTextAttributes
{
  v13[1] = *MEMORY[0x1E69E9840];
  linkTextAttributes = self->_linkTextAttributes;
  if (linkTextAttributes)
  {
    v3 = linkTextAttributes;
  }

  else
  {
    v6 = [(UIView *)self tintColor];
    if (!v6)
    {
      v6 = [(UIView *)self _normalInheritedTintColor];
      if ([(UIView *)self tintAdjustmentMode]== UIViewTintAdjustmentModeDimmed)
      {
        v10 = 0.0;
        v11 = 0.0;
        [v6 getWhite:&v11 alpha:&v10];
        v7 = [UIColor colorWithWhite:v11 alpha:v10 * 0.8];

        v6 = v7;
      }

      if (!v6)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInMethod:a2 object:self file:@"UITextField.m" lineNumber:4461 description:@"Unable to derive tintColor!"];

        v6 = 0;
      }
    }

    v12 = *off_1E70EC920;
    v13[0] = v6;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  return v3;
}

- (void)setAllowsAttachments:(BOOL)a3
{
  if (((((*&self->_textFieldFlags & 0x4000000) == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    v5 = 0x4000000;
    if (!a3)
    {
      v5 = 0;
    }

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFBFFFFFFLL | v5);
    v6 = [(UITextField *)self _fieldEditor];
    [v6 setAllowsAttachments:v3];

    if (!v3)
    {
      textStorage = self->_textStorage;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __36__UITextField_setAllowsAttachments___block_invoke;
      v8[3] = &unk_1E7126368;
      v8[4] = self;
      [(_UICascadingTextStorage *)textStorage coordinateAccess:v8];
    }
  }
}

void __36__UITextField_setAllowsAttachments___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *off_1E70EC8C8;
  v5 = [*(*(a1 + 32) + 816) length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__UITextField_setAllowsAttachments___block_invoke_2;
  v7[3] = &unk_1E70F3050;
  v8 = v3;
  v6 = v3;
  [v6 enumerateAttribute:v4 inRange:0 options:v5 usingBlock:{2, v7}];
}

- (id)_attributedText
{
  if (*(&self->_textFieldFlags + 1))
  {
    v3 = [(UITextField *)self _fieldEditor];
    v2 = [v3 attributedText];
  }

  else
  {
    v2 = self->_textStorage;
  }

  return v2;
}

- (NSAttributedString)attributedText
{
  if ((*(&self->_textFieldFlags + 2) & 2) == 0)
  {
    v3 = [(UITextField *)self text];
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v3];
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = [(UITextField *)self font];

      if (v6)
      {
        v7 = [(UITextField *)self font];
        [v5 setObject:v7 forKey:*off_1E70EC918];
      }

      v8 = [(UITextField *)self textColor];

      if (v8)
      {
        v9 = [(UITextField *)self textColor];
        [v5 setObject:v9 forKey:*off_1E70EC920];
      }

      [v4 setAttributes:v5 range:{0, objc_msgSend(v4, "length")}];
    }

    else
    {
      v4 = 0;
    }

    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_9:
    v10 = [v4 mutableCopy];
    v11 = [v10 mutableString];
    v12 = [(UITextField *)self textInputTraits];
    [v11 _removeCharactersFromSet:{objc_msgSend(v12, "textTrimmingSet")}];

    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v10];
    goto LABEL_13;
  }

  v4 = [(UITextField *)self _attributedText];
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_12:
  v13 = 0;
LABEL_13:

  return v13;
}

- (void)setText:(NSString *)text
{
  textFieldFlags = self->_textFieldFlags;
  v7 = text;
  if ((*&textFieldFlags & 0x800000000) != 0)
  {
    v5 = [(UITextField *)self _rangeForClearButton];
  }

  else
  {
    v5 = [(UITextField *)self _rangeForSetText];
  }

  [(UITextField *)self _setTextInRange:v5 replacementText:v6, v7];
}

- (void)_setTextInRange:(_NSRange)a3 replacementText:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  *&self->_textFieldFlags &= ~0x20000uLL;
  v16 = v7;
  if (v7)
  {
    v8 = [(UITextField *)self _textNeedsSanitizing:v7];
    v9 = v16;
    if (!v8)
    {
      v10 = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = &stru_1EFB14550;
  }

  v10 = [(__CFString *)v9 mutableCopy];
  [(UITextField *)self _sanitizeText:v10];
LABEL_6:
  textFieldFlags = self->_textFieldFlags;
  if ((*&textFieldFlags & 0x100) != 0)
  {
    self->_textFieldFlags = (*&textFieldFlags | 0x8000);
    v15 = [(UITextField *)self _fieldEditor];
    [v15 setTextInRange:location replacementText:{length, v10}];

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFFFF7FFFLL | (((*&textFieldFlags >> 15) & 1) << 15));
  }

  else if ([(__CFString *)v10 length]| length)
  {
    v12 = objc_alloc(MEMORY[0x1E696AAB0]);
    v13 = [(_UICascadingTextStorage *)self->_textStorage defaultAttributes];
    v14 = [v12 initWithString:v10 attributes:v13];

    [(NSConcreteTextStorage *)self->_textStorage replaceCharactersInRange:location withAttributedString:length, v14];
  }

  [(UITextField *)self finishedSettingTextOrAttributedText];
}

- (void)_setAttributedTextOnFieldEditor:(id)a3 setCaretSelectionAfterText:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v11;
  }

  else
  {
    v6 = [v11 mutableCopy];
  }

  v7 = v6;
  *&self->_textFieldFlags |= 0x20000uLL;
  v8 = [(UITextField *)self _fieldEditor];
  v9 = [(UITextField *)self _rangeForSetText];
  [v8 _setAttributedTextInRange:v9 replacementText:v10 andSetCaretSelectionAfterText:{v7, v4}];
}

- (BOOL)_textNeedsSanitizing:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self textInputTraits];
  v6 = [v5 textTrimmingSet];

  if (v6 && [v4 rangeOfCharacterFromSet:v6] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 1;
  }

  else
  {
    v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\r\n\uFFFC"];
    v8 = [v4 rangeOfCharacterFromSet:v7] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (void)sanitizeAttributedText:(id)a3
{
  v5 = a3;
  v4 = [v5 mutableString];
  [(UITextField *)self _sanitizeText:v4];

  +[_NSAttributedStringIntentResolver resolveAttributedString:inRange:](_UIAttributedStringIntentResolver, "resolveAttributedString:inRange:", v5, 0, [v5 length]);
}

- (void)_sanitizeText:(id)a3
{
  v6 = a3;
  v4 = [(UITextField *)self textInputTraits];
  [v6 _removeCharactersFromSet:{objc_msgSend(v4, "textTrimmingSet")}];

  if (![(UITextField *)self allowsAttachments])
  {
    v5 = [MEMORY[0x1E696AEC0] _stringWithUnichar:65532];
    [v6 replaceOccurrencesOfString:v5 withString:&stru_1EFB14550 options:2 range:{0, objc_msgSend(v6, "length")}];
  }

  [v6 replaceOccurrencesOfString:@"\r\n" withString:@"\n" options:2 range:{0, objc_msgSend(v6, "length")}];
  [v6 replaceOccurrencesOfString:@"\r" withString:@"\n" options:2 range:{0, objc_msgSend(v6, "length")}];
  [v6 replaceOccurrencesOfString:@"\n" withString:@" " options:2 range:{0, objc_msgSend(v6, "length")}];
}

- (void)_scrollRangeToVisible:(_NSRange)a3 animated:(BOOL)a4
{
  if (*(&self->_textFieldFlags + 1))
  {
    [(UIFieldEditor *)self->_fieldEditor _scrollRangeToVisible:a3.location animated:a3.length, a4];
  }
}

- (void)_setAttributedText:(id)a3 setCaretSelectionAfterText:(BOOL)a4
{
  v4 = a4;
  *&self->_textFieldFlags |= 0x20000uLL;
  v6 = [a3 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1EFB14550];
  }

  v13 = v8;

  v9 = [v13 mutableString];
  [(UITextField *)self sanitizeAttributedText:v13];
  if (*(&self->_textFieldFlags + 1))
  {
    [(UITextField *)self _setAttributedTextOnFieldEditor:v13 setCaretSelectionAfterText:v4];
  }

  else
  {
    v10 = self->_textStorage;
    v11 = [(UITextField *)self _rangeForSetText];
    [(NSConcreteTextStorage *)v10 replaceCharactersInRange:v11 withAttributedString:v12, v13];
    [(_UICascadingTextStorage *)v10 _restoreOriginalFontAttribute];
    [(_UICascadingTextStorage *)v10 setLineBreakMode:[(UITextField *)self nonEditingLinebreakMode]];
  }

  [(UITextField *)self finishedSettingTextOrAttributedText];
}

- (void)_syncTypingAttributesWithDefaultAttribute:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(&self->_textFieldFlags + 1))
  {
    v15 = v4;
    if (![v4 isEqualToString:*off_1E70EC918] || (v6 = -[UITextField _tvHasFloatingFieldEditor](self, "_tvHasFloatingFieldEditor"), v5 = v15, !v6))
    {
      v7 = [(UITextField *)self _fieldEditor];
      v8 = [v7 _textStorage];
      v9 = [v8 defaultAttributes];

      v10 = [(UITextField *)self _inputController];
      v11 = [v9 objectForKey:v15];
      [v10 _addToTypingAttributes:v15 value:v11];

      v12 = [v7 _textContainer];
      v13 = [(UITextField *)self _inputController];
      v14 = [v13 typingAttributes];
      [v12 setAttributesForExtraLineFragment:v14];

      v5 = v15;
    }
  }
}

- (void)_setTextColor:(id)a3
{
  [(_UICascadingTextStorage *)self->_textStorage setTextColor:a3];

  [(UITextField *)self _updateLabelAppearance];
}

- (void)setShadowColor:(id)a3
{
  [(_UICascadingTextStorage *)self->_textStorage setShadowColor:a3];
  v4 = *off_1E70EC9B0;

  [(UITextField *)self _syncTypingAttributesWithDefaultAttribute:v4];
}

- (void)setShadowOffset:(CGSize)a3
{
  [(_UICascadingTextStorage *)self->_textStorage setShadowOffset:a3.width, a3.height];
  v4 = *off_1E70EC9B0;

  [(UITextField *)self _syncTypingAttributesWithDefaultAttribute:v4];
}

- (CGSize)shadowOffset
{
  [(_UICascadingTextStorage *)self->_textStorage shadowOffset];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setShadowBlur:(double)a3
{
  [(_UICascadingTextStorage *)self->_textStorage setShadowBlur:a3];
  v4 = *off_1E70EC9B0;

  [(UITextField *)self _syncTypingAttributesWithDefaultAttribute:v4];
}

- (void)setClearsOnInsertion:(BOOL)clearsOnInsertion
{
  v3 = clearsOnInsertion;
  if ([(UITextField *)self clearsOnInsertion]!= clearsOnInsertion)
  {
    v5 = 0x80000;
    if (!v3)
    {
      v5 = 0;
    }

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFFF3FFFFLL | v5);
    [(UITextInputTraits *)self->_traits setTextSelectionBehavior:[(UITextField *)self textSelectionBehavior]];
    if ([(UITextField *)self isEditing])
    {
      v6 = [(UITextField *)self interactionAssistant];
      v7 = v6;
      if (v3)
      {
        [v6 deactivateSelection];

        v8 = [(UITextField *)self _text];
        -[UITextField setSelectionRange:](self, "setSelectionRange:", 0, [v8 length]);
      }

      else
      {
        [v6 activateSelection];

        v9 = [(UITextField *)self interactionAssistant];
        [v9 setSelectionDisplayVisible:1];

        v8 = [(UITextField *)self _fieldEditor];
        [v8 setTextSelectionBehavior:{-[UITextInputTraits textSelectionBehavior](self->_traits, "textSelectionBehavior")}];
      }

      [(UITextField *)self _updateSelectionGestures];
    }
  }
}

- (void)setClearingBehavior:(int64_t)a3
{
  textFieldFlags = self->_textFieldFlags;
  if (((*&textFieldFlags >> 18) & 3) == a3)
  {
    return;
  }

  self->_textFieldFlags = (*&textFieldFlags & 0xFFFFFFFFFFF3FFFFLL | ((a3 & 3) << 18));
  [(UITextInputTraits *)self->_traits setTextSelectionBehavior:[(UITextField *)self textSelectionBehavior]];
  if (![(UITextField *)self isEditing])
  {
    return;
  }

  switch(a3)
  {
    case 0:
      v8 = [(UITextField *)self interactionAssistant];
      [v8 activateSelection];

      v9 = [(UITextField *)self interactionAssistant];
      [v9 setSelectionDisplayVisible:1];

      v10 = [(UITextField *)self interactionAssistant];
      [v10 setSelectionHighlightMode:0];

      v7 = [(UITextField *)self _fieldEditor];
      [v7 setTextSelectionBehavior:{-[UITextInputTraits textSelectionBehavior](self->_traits, "textSelectionBehavior")}];
      goto LABEL_11;
    case 3:
      v6 = [(UITextField *)self interactionAssistant];
      [v6 setSelectionHighlightMode:1];
      goto LABEL_9;
    case 2:
      v6 = [(UITextField *)self interactionAssistant];
      [v6 deactivateSelection];
LABEL_9:

      v7 = [(UITextField *)self _text];
      -[UITextField setSelectionRange:](self, "setSelectionRange:", 0, [v7 length]);
LABEL_11:

      break;
  }

  [(UITextField *)self _updateSelectionGestures];
}

- (void)setFont:(UIFont *)font
{
  v10 = font;
  v4 = self->_textStorage;
  v5 = [(_UICascadingTextStorage *)v4 font];
  if (v5 != v10)
  {
    v6 = [(_UICascadingTextStorage *)v4 font];
    v7 = [v6 isEqual:v10];

    if (v7)
    {
      goto LABEL_8;
    }

    if (v10)
    {
      [(UIFont *)v10 pointSize];
      v5 = [_UIFullFontSize valued:?];
      v8 = self;
      v9 = v10;
    }

    else
    {
      v5 = +[_UIFullFontSize defaultValue];
      v8 = self;
      v9 = 0;
    }

    [(UITextField *)v8 setFont:v9 fullFontSize:v5];
  }

LABEL_8:
}

- (void)setClipsToBounds:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UITextField;
  [(UIView *)&v4 setClipsToBounds:a3];
  [(UIScrollView *)self->_fieldEditor setNeedsLayout];
}

- (id)defaultClearButtonImageForState:(unint64_t)a3
{
  cachedDefaultClearButtonImages = self->_cachedDefaultClearButtonImages;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)cachedDefaultClearButtonImages objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [(UITextField *)self _clearButtonImageForState:a3];
    if (v7)
    {
      v8 = self->_cachedDefaultClearButtonImages;
      if (!v8)
      {
        v9 = [MEMORY[0x1E695DF90] dictionary];
        v10 = self->_cachedDefaultClearButtonImages;
        self->_cachedDefaultClearButtonImages = v9;

        v8 = self->_cachedDefaultClearButtonImages;
      }

      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v11];
    }
  }

  return v7;
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    [(UITextField *)self _adjustFontForAccessibilityTraits:0];
  }
}

- (void)_adjustFontForAccessibilityTraits:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory || a3)
  {
    v4 = [(UIView *)self traitCollection];
    v5 = [(UITextField *)self font];
    v6 = [v5 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v4];

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v7 = [(UITextField *)self font];
    v8 = 0;
    if (v7 && v6)
    {
      v9 = [(UITextField *)self font];
      v8 = [v9 isEqual:v6] ^ 1;
    }

    v22 = v8;
    if (*(v20 + 24) == 1)
    {
      [v6 pointSize];
      v10 = [_UIFullFontSize valued:?];
      [(UITextField *)self setFont:v6 fullFontSize:v10 ambientOnly:1];
    }

    v11 = self->_textStorage;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __49__UITextField__adjustFontForAccessibilityTraits___block_invoke;
    v16 = &unk_1E7126390;
    v12 = v4;
    v17 = v12;
    v18 = &v19;
    [(_UICascadingTextStorage *)v11 coordinateEditing:&v13];
    if (*(v20 + 24) == 1)
    {
      [(UIView *)self invalidateIntrinsicContentSize:v13];
      [(UITextField *)self _didSetFont:v6];
    }

    _Block_object_dispose(&v19, 8);
  }
}

void __49__UITextField__adjustFontForAccessibilityTraits___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__UITextField__adjustFontForAccessibilityTraits___block_invoke_2;
  v8[3] = &unk_1E70F3078;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v6;
  v9 = v5;
  v7 = v3;
  [v7 enumerateAttributesInRange:0 options:v4 usingBlock:{0x100000, v8}];
}

void __49__UITextField__adjustFontForAccessibilityTraits___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  v7 = [v14 objectForKeyedSubscript:*off_1E70EC978];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v14 objectForKeyedSubscript:*off_1E70EC918];
  }

  v10 = v9;

  v11 = [v10 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:*(a1 + 32)];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && ([v10 isEqual:v11] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) addAttribute:*off_1E70EC918 value:v12 range:{a3, a4}];
  }
}

- (void)setTextAlignment:(NSTextAlignment)textAlignment
{
  v5 = self->_textStorage;
  *&self->_textFieldFlags |= 0x2000uLL;
  v7 = v5;
  if ([(_UICascadingTextStorage *)v5 textAlignment]!= textAlignment)
  {
    [(UILabel *)self->_placeholderLabel setTextAlignment:textAlignment];
    [(_UICascadingTextStorage *)v7 setTextAlignment:textAlignment];
    [(UITextField *)self _syncTypingAttributesWithDefaultAttribute:*off_1E70EC988];
    v6 = [(UITextField *)self _inputController];
    [v6 _selectionGeometryChanged];
  }
}

- (void)setDefaultTextAttributes:(NSDictionary *)defaultTextAttributes
{
  v5 = self->_textStorage;
  v6 = defaultTextAttributes;
  [(_UICascadingTextStorage *)v5 setDefaultAttributes:0];
  v7 = [(_UICascadingTextStorage *)v5 defaultAttributes];
  v8 = [v7 mutableCopy];

  [v8 addEntriesFromDictionary:v6];
  v9 = [v8 objectForKey:*off_1E70EC918];
  [(UITextField *)self setFont:v9];

  v10 = [(NSDictionary *)v6 objectForKey:*off_1E70EC988];

  -[UITextField setTextAlignment:](self, "setTextAlignment:", [v10 alignment]);
  [(_UICascadingTextStorage *)v5 setDefaultAttributes:v8];
  v11 = [(NSConcreteTextStorage *)v5 length];
  [(NSConcreteTextStorage *)v5 setAttributes:MEMORY[0x1E695E0F8] range:0, v11];
  [(UITextField *)self _invalidateAllGlyphsAndTextLayout];
  if (*(&self->_textFieldFlags + 1))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__UITextField_setDefaultTextAttributes___block_invoke;
    v13[3] = &unk_1E70F7970;
    v13[4] = self;
    [v8 enumerateKeysAndObjectsUsingBlock:v13];
    v12 = [(UITextField *)self _inputController];
    [v12 _selectionGeometryChanged];
  }

  [(UITextField *)self setNeedsLayout];
}

void __40__UITextField_setDefaultTextAttributes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 _inputController];
  [v7 _addToTypingAttributes:v6 value:v5];
}

- (void)_setShouldUpdatePlaceholderTextAlignmentWhenOverridden:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setContentVerticalAlignment:(int64_t)a3
{
  if ([(UIControl *)self contentVerticalAlignment]!= a3)
  {
    v5.receiver = self;
    v5.super_class = UITextField;
    [(UIControl *)&v5 setContentVerticalAlignment:a3];
    [(UITextField *)self _setNeedsStyleRecalc];
    [(UIView *)self _invalidateBaselineConstraints];
  }
}

- (void)setControlSize:(int)a3
{
  if (self->_controlSize != a3)
  {
    self->_controlSize = a3;
    [(UITextField *)self _invalidateBackgroundProvider];
    [(UITextField *)self _invalidateDefaultFont];
    backgroundProvider = self->_backgroundProvider;

    [(_UITextFieldBackgroundProvider *)backgroundProvider controlSizeDidChange:0];
  }
}

- (void)setBorderStyle:(UITextBorderStyle)borderStyle
{
  if (self->_preferredBorderStyle != borderStyle)
  {
    self->_preferredBorderStyle = borderStyle;
    [(UITextField *)self _invalidateBackgroundProvider];
    backgroundProvider = self->_backgroundProvider;

    [(_UITextFieldBackgroundProvider *)backgroundProvider borderStyleDidChange:0];
  }
}

- (void)_invalidateBackgroundProviderForced:(BOOL)a3
{
  v5 = [(UITextField *)self _preferredBackgroundProviderClass];
  if (a3 || ([(UITextField *)self _backgroundProvider], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_class(), v6, v5 != v7))
  {
    v8 = objc_opt_new();
    if (v8)
    {
      [(UITextField *)self _setBackgroundProvider:v8];
    }

    else
    {
      v9 = objc_opt_new();
      [(UITextField *)self _setBackgroundProvider:v9];
    }
  }

  [(UITextField *)self _invalidateMetricsProvider];
}

- (void)_setBackgroundProvider:(id)a3
{
  v4 = a3;
  backgroundProvider = self->_backgroundProvider;
  v6 = v4;
  v7 = backgroundProvider;
  v8 = v7;
  if (v7 == v6)
  {
  }

  else
  {
    if (v6 && v7)
    {
      v9 = [(_UITextFieldBackgroundProvider *)v6 isEqual:v7];

      if (v9)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __38__UITextField__setBackgroundProvider___block_invoke;
    v18 = &unk_1E70F35B8;
    v19 = self;
    v20 = v6;
    v10 = _Block_copy(&v15);
    if ([UIView _isInAnimationBlockWithAnimationsEnabled:v15])
    {
      [UIView transitionWithView:self duration:5242880 options:v10 animations:0 completion:0.35];
    }

    else
    {
      v10[2](v10);
    }

    v11 = objc_opt_respondsToSelector();
    v12 = 0x200000000;
    if ((v11 & 1) == 0)
    {
      v12 = 0;
    }

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFDFFFFFFFFLL | v12);
    v13 = objc_opt_respondsToSelector();
    v14 = 0x400000000;
    if ((v13 & 1) == 0)
    {
      v14 = 0;
    }

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFBFFFFFFFFLL | v14);
    [(_UITextFieldBackgroundProvider *)self->_backgroundProvider setNeedsDisplay];
  }

LABEL_16:
}

void __38__UITextField__setBackgroundProvider___block_invoke(uint64_t a1)
{
  v5 = *(*(a1 + 32) + 952);
  v2 = [v5 drawsContent];
  v3 = v2 ^ [*(a1 + 40) drawsContent];
  if (v3 == 1)
  {
    v4 = [*(a1 + 32) _backgroundColor];
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 32) _backgroundProviderWillChange:*(a1 + 40)];
  [v5 removeFromTextField];
  objc_storeStrong((*(a1 + 32) + 952), *(a1 + 40));
  if (v3)
  {
    [*(a1 + 32) _setBackgroundColor:v4];
  }

  [*(a1 + 40) addToTextField:*(a1 + 32)];
  [*(a1 + 32) _backgroundProviderDidChange];
}

- (void)_backgroundProviderClassOrImageBackgroundProviderClass:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    if (a1[59] && ([a2 isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      v3 = objc_opt_class();
    }

    a1 = v3;
    v2 = vars8;
  }

  return a1;
}

- (void)_setMetricsProvider:(id)a3
{
  v5 = a3;
  backgroundProvider = self->_backgroundProvider;
  metricsProvider = self->_metricsProvider;
  v10 = v5;
  v8 = metricsProvider;
  if (v8 == v10)
  {

    goto LABEL_7;
  }

  if (v10 && v8)
  {
    v9 = [(_UITextFieldBackgroundProvider *)v10 isEqual:v8];

    if (!v9)
    {
      goto LABEL_10;
    }

LABEL_7:
    if (backgroundProvider != v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  [(UITextField *)self _metricsProviderWillChange:v10];
  objc_storeStrong(&self->_metricsProvider, a3);
  [(UITextField *)self _metricsProviderDidChange];
LABEL_11:
  [(UITextField *)self _setNeedsStyleRecalc];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self _invalidateBaselineConstraints];
LABEL_12:
}

- (id)createPlaceholderLabelWithFont:(id)a3 andTextAlignment:(int64_t)a4
{
  v5 = objc_alloc([(UITextField *)self _placeholderLabelClass:a3]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v7 = [(UITextField *)self _placeholderColor];
  [v6 setTextColor:v7];

  [v6 setOpaque:0];
  [v6 setBackgroundColor:0];
  v8 = [(_UICascadingTextStorage *)self->_textStorage font];
  [v6 setFont:v8];

  [v6 setTextAlignment:{-[_UICascadingTextStorage textAlignment](self->_textStorage, "textAlignment")}];
  [v6 _setOverrideUserInterfaceRenderingMode:{-[UITextField _preferredRenderingModeForPlaceholder](self, "_preferredRenderingModeForPlaceholder")}];
  v9 = [(UITextField *)self _cuiCatalog];
  [v6 _setCuiCatalog:v9];

  v10 = [(UITextField *)self _cuiStyleEffectConfiguration];
  [v6 _setCuiStyleEffectConfiguration:v10];

  return v6;
}

- (id)createTextLabelWithTextColor:(id)a3
{
  v3 = a3;
  v4 = [UITextFieldLabel alloc];
  v5 = [(UILabel *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [off_1E70ECC18 defaultFontSize];
  v6 = [off_1E70ECC18 systemFontOfSize:?];
  [(UILabel *)v5 setFont:v6];

  [(UIView *)v5 setOpaque:0];
  [(UIView *)v5 setBackgroundColor:0];
  [(UIView *)v5 setContentMode:3];
  if (v3)
  {
    [(UILabel *)v5 setTextColor:v3];
  }

  return v5;
}

- (void)setPlaceholders:(id)a3
{
  v4 = [a3 copy];
  placeholders = self->_placeholders;
  self->_placeholders = v4;

  v6 = [(NSArray *)self->_placeholders firstObject];
  [(UITextField *)self setPlaceholder:v6];
}

- (void)setPlaceholder:(NSString *)placeholder
{
  if (self->_overriddenPlaceholder)
  {
    v4 = MEMORY[0x1E696AAB0];
    v5 = placeholder;
    v6 = [v4 alloc];
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &stru_1EFB14550;
    }

    v8 = [v6 initWithString:v7];

    overriddenPlaceholder = self->_overriddenPlaceholder;
    self->_overriddenPlaceholder = v8;
  }

  else
  {
    v10 = placeholder;
    [(UITextField *)self _setPlaceholder:v10];
    overriddenPlaceholder = v10;
  }
}

- (void)_setPlaceholder:(id)a3
{
  v8 = a3;
  if ([v8 length])
  {
    [(UITextField *)self createPlaceholderIfNecessary];
  }

  if ([v8 length] || (-[UILabel text](self->_placeholderLabel, "text"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5))
  {
    v6 = [(UILabel *)self->_placeholderLabel text];
    v7 = [v8 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      [(UILabel *)self->_placeholderLabel setText:v8];
      [(UITextField *)self finishedSettingPlaceholder];
    }
  }
}

- (NSArray)placeholders
{
  placeholders = self->_placeholders;
  if (!placeholders)
  {
    self->_placeholders = MEMORY[0x1E695E0F0];
    placeholders = self->_placeholders;
  }

  return placeholders;
}

- (void)setAttributedPlaceholders:(id)a3
{
  v4 = [a3 copy];
  attributedPlaceholders = self->_attributedPlaceholders;
  self->_attributedPlaceholders = v4;

  v6 = [(NSArray *)self->_attributedPlaceholders firstObject];
  [(UITextField *)self setAttributedPlaceholder:v6];
}

- (void)setAttributedPlaceholder:(NSAttributedString *)attributedPlaceholder
{
  v5 = attributedPlaceholder;
  v6 = v5;
  if (self->_overriddenPlaceholder)
  {
    objc_storeStrong(&self->_overriddenPlaceholder, attributedPlaceholder);
  }

  else
  {
    [(UITextField *)self _setAttributedPlaceholder:v5];
  }
}

- (void)_setAttributedPlaceholder:(id)a3
{
  v8 = a3;
  if ([v8 length])
  {
    [(UITextField *)self createPlaceholderIfNecessary];
  }

  if ([v8 length] || (-[UILabel attributedText](self->_placeholderLabel, "attributedText"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5))
  {
    v6 = [(UILabel *)self->_placeholderLabel attributedText];
    v7 = [v8 isEqualToAttributedString:v6];

    if ((v7 & 1) == 0)
    {
      [(UILabel *)self->_placeholderLabel setAttributedText:v8];
      [(UITextField *)self finishedSettingPlaceholder];
    }
  }
}

- (NSArray)attributedPlaceholders
{
  attributedPlaceholders = self->_attributedPlaceholders;
  if (!attributedPlaceholders)
  {
    self->_attributedPlaceholders = MEMORY[0x1E695E0F0];
    attributedPlaceholders = self->_attributedPlaceholders;
  }

  return attributedPlaceholders;
}

- (NSAttributedString)attributedPlaceholder
{
  overriddenPlaceholder = self->_overriddenPlaceholder;
  if (overriddenPlaceholder)
  {
    v3 = overriddenPlaceholder;
  }

  else
  {
    v3 = [(UILabel *)self->_placeholderLabel attributedText];
  }

  return v3;
}

- (void)_setSuffix:(id)a3 withColor:(id)a4
{
  v15 = a3;
  v6 = a4;
  suffixLabel = self->_suffixLabel;
  if (suffixLabel)
  {
    [(UIView *)suffixLabel removeFromSuperview];
    v8 = self->_suffixLabel;
    self->_suffixLabel = 0;

    [(UITextField *)self setNeedsLayout];
  }

  if ([v15 length])
  {
    v9 = v6;
    if (!v6)
    {
      v9 = +[UIColor placeholderTextColor];
    }

    v10 = [(UITextField *)self createTextLabelWithTextColor:v9];
    v11 = self->_suffixLabel;
    self->_suffixLabel = v10;

    if (!v6)
    {
    }

    [(UILabel *)self->_suffixLabel setText:v15];
    v12 = [(UITextField *)self font];
    [(UILabel *)self->_suffixLabel setFont:v12];

    [(UILabel *)self->_suffixLabel setTextAlignment:[(UITextField *)self _suffixLabelTextAlignment]];
    v13 = [(UITextField *)self _cuiCatalog];
    [(UILabel *)self->_suffixLabel _setCuiCatalog:v13];

    v14 = [(UITextField *)self _cuiStyleEffectConfiguration];
    [(UILabel *)self->_suffixLabel _setCuiStyleEffectConfiguration:v14];

    [(UITextField *)self setNeedsLayout];
  }
}

- (void)_updateSuffix:(id)a3
{
  suffixLabel = self->_suffixLabel;
  if (suffixLabel)
  {
    [(UILabel *)suffixLabel setText:a3];

    [(UITextField *)self setNeedsLayout];
  }

  else
  {

    [(UITextField *)self _setSuffix:a3 withColor:0];
  }
}

- (void)_setPrefix:(id)a3
{
  v4 = a3;
  prefixLabel = self->_prefixLabel;
  v15 = v4;
  if (prefixLabel)
  {
    [(UIView *)prefixLabel removeFromSuperview];
    v6 = self->_prefixLabel;
    self->_prefixLabel = 0;

    v4 = v15;
  }

  if ([v4 length])
  {
    v7 = +[UIColor placeholderTextColor];
    placeholderLabel = self->_placeholderLabel;
    if (placeholderLabel)
    {
      v9 = [(UILabel *)placeholderLabel textColor];

      v7 = v9;
    }

    v10 = [(UITextField *)self createTextLabelWithTextColor:v7];
    v11 = self->_prefixLabel;
    self->_prefixLabel = v10;

    [(UILabel *)self->_prefixLabel setText:v15];
    v12 = [(UITextField *)self font];
    [(UILabel *)self->_prefixLabel setFont:v12];

    v13 = [(UITextField *)self _cuiCatalog];
    [(UILabel *)self->_prefixLabel _setCuiCatalog:v13];

    v14 = [(UITextField *)self _cuiStyleEffectConfiguration];
    [(UILabel *)self->_prefixLabel _setCuiStyleEffectConfiguration:v14];

    [(UITextField *)self setNeedsLayout];
  }
}

- (void)setClearsPlaceholderOnBeginEditing:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)adjustsFontSizeToFitWidth
{
  if (((((*&self->_textFieldFlags & 0x80) == 0) ^ adjustsFontSizeToFitWidth) & 1) == 0)
  {
    v3 = 128;
    if (!adjustsFontSizeToFitWidth)
    {
      v3 = 0;
    }

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFFFFFF7FLL | v3);
    [(UITextField *)self _setNeedsStyleRecalc];
  }
}

- (void)setBackground:(UIImage *)background
{
  v5 = background;
  if (self->_background != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_background, background);
    [(UITextField *)self _invalidateBackgroundProvider];
    v6 = [(UITextField *)self _backgroundProvider];
    [v6 setNeedsDisplay];

    v5 = v7;
  }
}

- (void)setDisabledBackground:(UIImage *)disabledBackground
{
  v5 = disabledBackground;
  if (self->_disabledBackground != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_disabledBackground, disabledBackground);
    [(UITextField *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setAllowsEditingTextAttributes:(BOOL)allowsEditingTextAttributes
{
  v3 = allowsEditingTextAttributes;
  if (([(UITextField *)self isSecureTextEntry]& 1) == 0)
  {
    v5 = 0x10000;
    if (!v3)
    {
      v5 = 0;
    }

    v6 = *&self->_textFieldFlags & 0xFFFFFFFFFFFEFFFFLL | v5;
    self->_textFieldFlags = v6;
    if (v3)
    {
      self->_textFieldFlags = (v6 | 0x20000);
    }
  }
}

- (id)_attributedStringForInsertionOfAttributedString:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  v6 = [v5 _inputController];
  v7 = [v6 _attributedStringForInsertionOfAttributedString:v4];

  return v7;
}

- (NSDictionary)typingAttributes
{
  v2 = [(UITextField *)self _fieldEditor];
  v3 = [v2 typingAttributes];

  return v3;
}

- (void)setTypingAttributes:(NSDictionary *)typingAttributes
{
  textFieldFlags = self->_textFieldFlags;
  if ((*&textFieldFlags & 0x100) != 0)
  {
    self->_textFieldFlags = (*&textFieldFlags | 0x20000);
    v6 = typingAttributes;
    v7 = [(UITextField *)self _fieldEditor];
    [v7 setTypingAttributes:v6];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  backgroundProvider = self->_backgroundProvider;
  if (backgroundProvider)
  {
    v6 = [(_UITextFieldBackgroundProvider *)backgroundProvider overridingSetBackgroundColor:v4];

    v4 = v6;
  }

  v7 = [(UITextField *)self _contentView];

  if (v7 != self)
  {
    v8 = [(UITextField *)self _contentView];
    [v8 setBackgroundColor:v4];

    v4 = 0;
  }

  v9.receiver = self;
  v9.super_class = UITextField;
  [(UIView *)&v9 setBackgroundColor:v4];
}

- (void)setClearButtonMode:(UITextFieldViewMode)clearButtonMode
{
  if (self->_clearButtonMode != clearButtonMode)
  {
    self->_clearButtonMode = clearButtonMode;
    [(UITextField *)self setNeedsLayout];
  }
}

- (UITextFieldViewMode)leftViewMode
{
  v2 = 10;
  if ((*(&self->super.super._viewFlags + 18) & 0x40) == 0)
  {
    v2 = 9;
  }

  return *(&self->super.super.super.super.isa + OBJC_IVAR___UITextField__fieldEditor[v2]);
}

- (void)setLeftView:(UIView *)leftView
{
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    [(UITextField *)self _setActualRightView:leftView];
  }

  else
  {
    [(UITextField *)self _setActualLeftView:leftView];
  }
}

- (void)setLeftViewMode:(UITextFieldViewMode)leftViewMode
{
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    [(UITextField *)self _setActualRightViewMode:leftViewMode];
  }

  else
  {
    [(UITextField *)self _setActualLeftViewMode:leftViewMode];
  }
}

- (void)_setActualLeftView:(id)a3
{
  v5 = a3;
  if (self->_leftView != v5)
  {
    v9 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self->_leftView _setProxyPointerInteraction:0];
    }

    [(UIView *)self->_leftView _setOverrideUserInterfaceRenderingMode:-1];
    [(UITextField *)self _transitionFromAccessoryView:self->_leftView toView:0 allowingAnimation:0];
    objc_storeStrong(&self->_leftView, a3);
    if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = 0x200000000000;
      if ((isKindOfClass & 1) == 0)
      {
        v7 = 0;
      }

      self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFDFFFFFFFFFFFLL | v7);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(UIControl *)self pointerInteraction];
      [(UIView *)self->_leftView _setProxyPointerInteraction:v8];
    }

    [(UIView *)self->_leftView _setOverrideUserInterfaceRenderingMode:1];
    [(UITextField *)self _showSymbolAnimatableLeftViewNowIfNeeded];
    [(UITextField *)self setNeedsLayout];
    v5 = v9;
  }
}

- (void)_setActualLeftViewMode:(int64_t)a3
{
  if (self->_leftViewMode != a3)
  {
    self->_leftViewMode = a3;
    [(UITextField *)self _showSymbolAnimatableLeftViewNowIfNeeded];

    [(UITextField *)self setNeedsLayout];
  }
}

- (UITextFieldViewMode)rightViewMode
{
  v2 = 9;
  if ((*(&self->super.super._viewFlags + 18) & 0x40) == 0)
  {
    v2 = 10;
  }

  return *(&self->super.super.super.super.isa + OBJC_IVAR___UITextField__fieldEditor[v2]);
}

- (void)setRightView:(UIView *)rightView
{
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    [(UITextField *)self _setActualLeftView:rightView];
  }

  else
  {
    [(UITextField *)self _setActualRightView:rightView];
  }
}

- (void)setRightViewMode:(UITextFieldViewMode)rightViewMode
{
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    [(UITextField *)self _setActualLeftViewMode:rightViewMode];
  }

  else
  {
    [(UITextField *)self _setActualRightViewMode:rightViewMode];
  }
}

- (void)_setActualRightView:(id)a3
{
  v5 = a3;
  if (self->_rightView != v5)
  {
    v9 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self->_rightView _setProxyPointerInteraction:0];
    }

    [(UIView *)self->_rightView _setOverrideUserInterfaceRenderingMode:-1];
    [(UITextField *)self _transitionFromAccessoryView:self->_rightView toView:0 allowingAnimation:0];
    objc_storeStrong(&self->_rightView, a3);
    if ((*(&self->super.super._viewFlags + 18) & 0x40) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = 0x200000000000;
      if ((isKindOfClass & 1) == 0)
      {
        v7 = 0;
      }

      self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFDFFFFFFFFFFFLL | v7);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(UIControl *)self pointerInteraction];
      [(UIView *)self->_rightView _setProxyPointerInteraction:v8];
    }

    [(UIView *)self->_rightView _setOverrideUserInterfaceRenderingMode:1];
    [(UITextField *)self _showSymbolAnimatableRightViewNowIfNeeded];
    [(UITextField *)self setNeedsLayout];
    v5 = v9;
  }
}

- (void)_setActualRightViewMode:(int64_t)a3
{
  if (self->_rightViewMode != a3)
  {
    self->_rightViewMode = a3;
    [(UITextField *)self _showSymbolAnimatableRightViewNowIfNeeded];

    [(UITextField *)self setNeedsLayout];
  }
}

- (void)_setContentCoverView:(id)a3
{
  v5 = a3;
  contentCoverView = self->_contentCoverView;
  if (contentCoverView != v5)
  {
    v7 = v5;
    [(UIView *)contentCoverView removeFromSuperview];
    objc_storeStrong(&self->_contentCoverView, a3);
    [(UIView *)self->_contentCoverView setUserInteractionEnabled:0];
    [(UITextField *)self _contentCoverStateDidChange];
    v5 = v7;
  }
}

- (void)_setContentCoverViewMode:(int64_t)a3
{
  if (self->_contentCoverViewMode != a3)
  {
    self->_contentCoverViewMode = a3;
    [(UITextField *)self _contentCoverStateDidChange];
  }
}

- (void)_setContentCoverUnsecuresText:(BOOL)a3
{
  if (((((*&self->_textFieldFlags & 0x10000000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x10000000;
    if (!a3)
    {
      v4 = 0;
    }

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFEFFFFFFFLL | v4);
    if ([(UITextField *)self _showsContentCoverView])
    {

      [(UITextField *)self _contentCoverStateDidChange];
    }
  }
}

- (void)_contentCoverStateDidChange
{
  [(UITextField *)self setNeedsLayout];
  if ([(UIView *)self isFirstResponder])
  {
    if ([(UITextField *)self _showsContentCoverView])
    {
      [(UITextField *)self _detachFieldEditor];
    }

    else
    {
      [(UITextField *)self _attachFieldEditor];
    }
  }

  v3 = [(UITextField *)self _shouldObscureInput];
  [(_UITextLayoutController *)self->_textLayoutController setDocumentObscured:v3];
  if (v3)
  {
    [(UIFieldEditor *)self->_fieldEditor _obscureAllText];
  }

  else
  {
    [(UITextField *)self _invalidateAllGlyphsAndTextLayout];
  }

  [(UITextField *)self _updateSelectionGestures];
}

- (void)_setBackgroundCoverView:(id)a3
{
  v5 = a3;
  backgroundCoverView = self->_backgroundCoverView;
  if (backgroundCoverView != v5)
  {
    v7 = v5;
    [(UIView *)backgroundCoverView removeFromSuperview];
    objc_storeStrong(&self->_backgroundCoverView, a3);
    [(UIView *)self->_backgroundCoverView setUserInteractionEnabled:0];
    [(UITextField *)self _backgroundCoverStateDidChange];
    v5 = v7;
  }
}

- (void)_setBackgroundCoverViewMode:(int64_t)a3
{
  if (self->_backgroundCoverViewMode != a3)
  {
    self->_backgroundCoverViewMode = a3;
    [(UITextField *)self _backgroundCoverStateDidChange];
  }
}

- (void)setInputAccessoryView:(UIView *)inputAccessoryView
{
  v5 = inputAccessoryView;
  if (self->_inputAccessoryView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_inputAccessoryView, inputAccessoryView);
    v5 = v6;
  }
}

- (void)setRecentsAccessoryView:(id)a3
{
  v5 = a3;
  if (self->_recentsAccessoryView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_recentsAccessoryView, a3);
    v5 = v6;
  }
}

- (UIView)recentsAccessoryView
{
  recentsAccessoryView = self->_recentsAccessoryView;
  if (recentsAccessoryView)
  {
    v3 = recentsAccessoryView;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITextField;
    v3 = [(UIResponder *)&v5 inputAccessoryView];
  }

  return v3;
}

- (BOOL)_ownsInputAccessoryView
{
  if (self->_inputAccessoryView)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = UITextField;
  return [(UIResponder *)&v5 _ownsInputAccessoryView];
}

- (void)setInputAssistantItem:(id)a3
{
  v5 = a3;
  if (self->_inputAssistantItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_inputAssistantItem, a3);
    v5 = v6;
  }
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  [(UITextField *)self _availableTextRectForBounds:0 forEditing:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(UITextField *)self isEditing])
  {
    [(UITextField *)self editingRectForBounds:x, y, width, height];
  }

  else
  {
    [(UITextField *)self textRectForBounds:x, y, width, height];
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  [(UILabel *)self->_placeholderLabel textRectForBounds:x, y, width, height];
  v17 = v16;
  v18 = [(UIControl *)self contentVerticalAlignment];
  if (v18 != UIControlContentVerticalAlignmentTop)
  {
    v19 = v15 - v17;
    if (v18 != UIControlContentVerticalAlignmentBottom)
    {
      UIRoundToViewScale(self);
    }

    v13 = v13 + v19;
  }

  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v17;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  [(UITextField *)self _availableTextRectForBounds:1 forEditing:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)_clearButtonSize:(CGRect)a3
{
  v4 = [(UIView *)self traitCollection:a3.origin.x];
  v5 = [v4 userInterfaceIdiom];

  v6 = 28.0;
  if (v5 != 6 && (v6 = 19.0, _TextFieldScalesClearButton()) && (clearButton = self->_clearButton) != 0)
  {
    v8 = [(UIButton *)clearButton imageForState:0];
    [v8 size];
    v10 = v9;
    v12 = v11;

    v13 = v10;
    v14 = v12;
  }

  else
  {
    v13 = v6;
    v14 = v6;
  }

  result.height = v14;
  result.width = v13;
  return result;
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = MEMORY[0x1E695F058];
  rect = *(MEMORY[0x1E695F058] + 8);
  [(UITextField *)self _clearButtonSize:bounds.origin.x];
  v10 = v9;
  v12 = v11;
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    MinX = CGRectGetMinX(v34);
    [(UITextField *)self _clearButtonMarginX];
    UIRoundToViewScale(self);
    v22 = round(MinX + v21);
    [(UITextField *)self clearButtonOffset];
    v19 = v22 - v23;
  }

  else
  {
    v13 = *v8;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    MaxX = CGRectGetMaxX(v32);
    v33.origin.x = v13;
    v33.origin.y = rect;
    v33.size.width = v10;
    v33.size.height = v12;
    v15 = MaxX - CGRectGetWidth(v33);
    [(UITextField *)self _clearButtonMarginX];
    UIRoundToViewScale(self);
    v17 = round(v15 - v16);
    [(UITextField *)self clearButtonOffset];
    v19 = v17 + v18;
  }

  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MidY = CGRectGetMidY(v35);
  v36.origin.x = v19;
  v36.origin.y = rect;
  v36.size.width = v10;
  v36.size.height = v12;
  v25 = round(MidY - (CGRectGetHeight(v36) * 0.5 + 1.0));
  [(UITextField *)self clearButtonOffset];
  v27 = v26 + v25;
  v28 = v19;
  v29 = v10;
  v30 = v12;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v27;
  result.origin.x = v28;
  return result;
}

- (CGRect)_baselineLeftViewRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (ShouldSizeLeftOrRightViewToFit(self->_leftView))
  {
    [(UIView *)self->_leftView systemLayoutSizeFittingSize:width, height];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    [(UIView *)self->_leftView frame];
    v9 = v12;
    v11 = v13;
  }

  v14 = self->_leftViewOffset.width;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  CGRectGetMidY(v20);
  UIRoundToViewScale(self);
  v16 = v15 + self->_leftViewOffset.height;
  v17 = v14;
  v18 = v9;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v16;
  result.origin.x = v17;
  return result;
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (ShouldSizeLeftOrRightViewToFit(self->_rightView))
  {
    [(UIView *)self->_rightView systemLayoutSizeFittingSize:width, height];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    [(UIView *)self->_rightView frame];
    v9 = v12;
    v11 = v13;
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  CGRectGetMaxX(v21);
  UIRoundToViewScale(self);
  v15 = v14 + self->_rightViewOffset.width;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGRectGetMidY(v22);
  UIRoundToViewScale(self);
  v17 = v16 + self->_rightViewOffset.height;
  v18 = v15;
  v19 = v9;
  v20 = v11;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v17;
  result.origin.x = v18;
  return result;
}

- (void)_drawTextInRect:(CGRect)a3 forLabel:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if (self->_placeholderLabel == v9)
  {
    v10 = v9;
    [(UITextField *)self drawPlaceholderInRect:x, y, width, height];
  }

  else if (self->_suffixLabel == v9)
  {
    v10 = v9;
    [(UITextField *)self drawSuffixInRect:x, y, width, height];
  }

  else
  {
    if (self->_prefixLabel != v9)
    {
      goto LABEL_8;
    }

    v10 = v9;
    [(UITextField *)self drawPrefixInRect:x, y, width, height];
  }

  v9 = v10;
LABEL_8:
}

- (void)setTextSelectionBehavior:(int)a3
{
  [(UITextInputTraits *)self->_traits setTextSelectionBehavior:*&a3];
  v4 = [(UITextField *)self textSelectionBehavior];
  traits = self->_traits;

  [(UITextInputTraits *)traits setTextSelectionBehavior:v4];
}

- (id)_fieldEditorHostAllowingCreation:(BOOL)a3
{
  v3 = a3;
  v5 = objc_getAssociatedObject(self, &FieldEditorHostKey);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v3;
  }

  if (!v6)
  {
    v5 = [_UIFieldEditorHost fieldEditorHostForTextField:self];
    objc_setAssociatedObject(self, &FieldEditorHostKey, v5, 1);
  }

  return v5;
}

- (void)_detachFieldEditorDiscardingEdits:(BOOL)a3 animated:(BOOL)a4
{
  v31 = *MEMORY[0x1E69E9840];
  fieldEditor = self->_fieldEditor;
  if (fieldEditor)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(UIFieldEditor *)fieldEditor _scrollAnimationEndedAction];

    if (v8)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("Text", &qword_1ED49AA78);
      if (*CategoryCachedImpl)
      {
        v10 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Detaching field editor while detaching was already in progress. Bailing.", buf, 2u);
        }
      }
    }

    else
    {
      [(UITextField *)self _stopObservingFieldEditorScroll];
      if (v6 && ([(UIScrollView *)self->_fieldEditor contentOffset], v13 > 0.0))
      {
        objc_initWeak(buf, self);
        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __58__UITextField__detachFieldEditorDiscardingEdits_animated___block_invoke;
        v26 = &unk_1E71263B8;
        objc_copyWeak(&v27, buf);
        v28 = v7;
        [(UIFieldEditor *)self->_fieldEditor _setScrollAnimationEndedAction:&v23];
        [(UIFieldEditor *)self->_fieldEditor setContentOffset:1 animated:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v23, v24, v25, v26];
        objc_destroyWeak(&v27);
        objc_destroyWeak(buf);
      }

      else
      {
        if (!v7)
        {
          [(UITextField *)self _willUpdateAfterDetachingFieldEditor];
        }

        [(UIFieldEditor *)self->_fieldEditor deactivateEditorDiscardingEdits:v7];
        *&self->_textFieldFlags &= ~0x100uLL;
        if (!v7)
        {
          [(UITextField *)self _didUpdateAfterDetachingFieldEditor];
        }

        [(UITextField *)self _didDetachFieldEditor];
        if ([(UIView *)self isFirstResponder])
        {
          if ((*(&self->_textFieldFlags + 1) & 8) == 0)
          {
            [(UIControl *)self _sendActionsForEvents:0x40000 withEvent:0];
          }

          v14 = [MEMORY[0x1E696AD88] defaultCenter];
          [v14 removeObserver:self name:@"UIApplicationResumedNotification" object:0];

          [(UITextField *)self _removeFieldEditorAndHost];
          if ((*(&self->_textFieldFlags + 2) & 2) != 0)
          {
            v15 = [(UIFieldEditor *)self->_fieldEditor _inputController];
            v16 = [v15 typingAttributes];

            if (!v16 || [v16 count])
            {
              [(_UICascadingTextStorage *)self->_textStorage setDefaultAttributes:v16];
            }
          }

          v17 = [(UITextField *)self interactionAssistant];
          [v17 deactivateSelection];
        }

        else
        {
          [(UITextField *)self _removeFieldEditorAndHost];
        }

        [(UITextField *)self _addTextCanvasViewAdjustingFrame:1];

        [(UITextField *)self setNeedsLayout];
      }
    }
  }

  else
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v12 = [(UITextField *)self _fieldEditorHost];

    if (has_internal_diagnostics)
    {
      if (v12)
      {
        v18 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          v22 = [(UITextField *)self _fieldEditorHost];
          *buf = 138412290;
          v30 = v22;
          _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Detaching non-existing fieldeditor, but have a host (%@)", buf, 0xCu);
        }
      }
    }

    else if (v12)
    {
      v19 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49AA70) + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        v21 = [(UITextField *)self _fieldEditorHost];
        *buf = 138412290;
        v30 = v21;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Detaching non-existing fieldeditor, but have a host (%@)", buf, 0xCu);
      }
    }

    [(UITextField *)self _removeFieldEditorAndHost];
  }
}

void __58__UITextField__detachFieldEditorDiscardingEdits_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _detachFieldEditorDiscardingEdits:*(a1 + 40) animated:0];
  [WeakRetained layoutIfNeeded];
}

- (id)_defaultPromptString
{
  overriddenPlaceholder = self->_overriddenPlaceholder;
  if (overriddenPlaceholder)
  {
    v4 = [(NSAttributedString *)overriddenPlaceholder string];
  }

  else
  {
    v5 = [(UITextField *)self attributedPlaceholder];
    v6 = [v5 string];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(UITextField *)self placeholder];
    }

    v4 = v8;
  }

  return v4;
}

- (void)_invalidateAfterUpdatingEditingAttributes
{
  [(UITextField *)self setTypingAttributes:0];

  [(UITextField *)self _invalidateAllGlyphsAndTextLayout];
}

- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (-[UITextField isEditing](self, "isEditing") || -[UITextField _showsContentCoverView](self, "_showsContentCoverView") && [v9 isEqualToString:@"\n"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([v9 isEqualToString:@"\n"])
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(UITextField *)WeakRetained textFieldShouldReturn:self];
LABEL_15:

        goto LABEL_16;
      }

      if ([(UITextField *)self _shouldEndEditingOnReturn])
      {
        [(UIView *)self endEditing:0];
        v11 = 0;
        goto LABEL_15;
      }
    }

    v12 = [(UITextField *)self _fieldEditor];
    v13 = [v12 selectionRanges];

    v15 = 0;
    v11 = [(UITextField *)self _delegateShouldChangeCharactersInTextStorageRanges:v13 replacementString:v9 delegateCares:&v15];
    if ((v15 & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && WeakRetained != self)
    {
      v11 = [(UITextField *)WeakRetained keyboardInput:v8 shouldInsertText:v9 isMarkedText:v5];
    }

    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696B098];
  v10 = a5;
  v11 = a3;
  v12 = [v9 valueWithRange:{location, length}];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  LOBYTE(length) = [(UITextField *)self keyboardInput:v11 shouldReplaceTextInRanges:v13 replacementText:v10];

  return length;
}

- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRanges:(id)a4 replacementText:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(UITextField *)self isEditing])
  {
    v9 = [(UITextField *)self _delegateShouldChangeCharactersInTextStorageRanges:v7 replacementString:v8 delegateCares:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)keyboardInputShouldDelete:(id)a3
{
  v4 = a3;
  if ([(UITextField *)self isEditing])
  {
    v5 = [(UITextField *)self _inputController];
    v6 = [v5 _rangesForBackwardsDelete];

    v12 = 0;
    [v6 unionRange];
    if (v7 && (v8 = [(UITextField *)self _delegateShouldChangeCharactersInTextStorageRanges:v6 replacementString:&stru_1EFB14550 delegateCares:&v12], (v12 & 1) != 0))
    {
      v9 = v8;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = 1;
      if ((objc_opt_respondsToSelector() & 1) != 0 && WeakRetained != self)
      {
        v9 = [(UITextField *)WeakRetained keyboardInputShouldDelete:v4];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)keyboardInputChanged:(id)a3
{
  v4 = a3;
  if ([(UITextField *)self isEditing])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ((objc_opt_respondsToSelector() & 1) == 0 || WeakRetained == self)
    {
      [(UITextField *)self setNeedsLayout];
      v6 = 1;
    }

    else
    {
      v6 = [(UITextField *)WeakRetained keyboardInputChanged:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)keyboardInputChangedSelection:(id)a3
{
  v5 = a3;
  if ([(UITextField *)self isEditing])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ((objc_opt_respondsToSelector() & 1) != 0 && WeakRetained != self)
    {
      [(UITextField *)WeakRetained keyboardInputChangedSelection:v5];
    }
  }
}

- (void)fieldEditorDidChange:(id)a3
{
  if ([(UITextField *)self adjustsFontSizeToFitWidth])
  {
    [(UITextField *)self _setNeedsStyleRecalc];
  }

  v4 = [(UITextField *)self _hasContent];
  if (self->_clearButtonMode || v4 == [(UITextField *)self _isShowingPlaceholder])
  {
    [(UITextField *)self setNeedsLayout];
  }

  if (([(UITextField *)self _shouldSendContentChangedNotificationsIfOnlyMarkedTextChanged]|| ![(UITextField *)self hasMarkedText]) && (*(&self->_textFieldFlags + 1) & 0x80) == 0)
  {
    [(UIControl *)self _sendActionsForEvents:0x20000 withEvent:0];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"UITextFieldTextDidChangeNotification" object:self];
  }

  if (v4)
  {
    [(UIView *)self invalidateIntrinsicContentSize];
    [(UITextField *)self setNeedsLayout];
  }

  else
  {
    [(UITextField *)self _invalidateAllGlyphsAndTextLayout];
  }

  suffixLabel = self->_suffixLabel;
  if (suffixLabel)
  {
    [(UITextField *)self _suffixFrame];
    [(UILabel *)suffixLabel setFrame:?];
  }

  prefixLabel = self->_prefixLabel;
  if (prefixLabel)
  {
    [(UITextField *)self _prefixFrame];
    [(UILabel *)prefixLabel setFrame:?];
  }

  v8 = [(UITextField *)self _fieldEditorHost];
  [v8 layoutIfNeeded];
}

- (_NSRange)fieldEditor:(id)a3 willChangeSelectionFromCharacterRange:(_NSRange)a4 toCharacterRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a4.length;
  v8 = a4.location;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    location = [WeakRetained textField:self willChangeSelectionFromCharacterRange:v8 toCharacterRange:{v7, location, length}];
    length = v11;
  }

  v12 = location;
  v13 = length;
  result.length = v13;
  result.location = v12;
  return result;
}

- (id)fieldEditor:(id)a3 willChangeSelectionFromCharacterRanges:(id)a4 toCharacterRanges:(id)a5
{
  v7 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v10 = [WeakRetained textField:self willChangeSelectionFromCharacterRanges:v7 toCharacterRanges:v8];

    v8 = v10;
  }

  return v8;
}

- (void)fieldEditorDidChangeSelection:(id)a3
{
  v8 = a3;
  textDragDropSupport = self->_textDragDropSupport;
  if (!textDragDropSupport)
  {
    v5 = [UITextDragDropSupport installTextDragDropOnView:self];
    v6 = self->_textDragDropSupport;
    self->_textDragDropSupport = v5;

    textDragDropSupport = self->_textDragDropSupport;
  }

  [(UITextDragDropSupport *)textDragDropSupport notifyTextInteraction];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained textFieldDidChangeSelection:self];
  }
}

- (BOOL)fieldEditor:(id)a3 shouldInsertText:(id)a4 replacingRanges:(id)a5
{
  v7 = a4;
  v8 = a5;
  textDragDropSupport = self->_textDragDropSupport;
  if (!textDragDropSupport)
  {
    v10 = [UITextDragDropSupport installTextDragDropOnView:self];
    v11 = self->_textDragDropSupport;
    self->_textDragDropSupport = v10;

    textDragDropSupport = self->_textDragDropSupport;
  }

  [(UITextDragDropSupport *)textDragDropSupport notifyTextInteraction];
  v12 = [(UITextField *)self _delegateShouldChangeCharactersInTextStorageRanges:v8 replacementString:v7 delegateCares:0];
  [(UITextField *)self disableClearsOnInsertion];

  return v12;
}

- (BOOL)fieldEditorShouldExtendCaretHeight:(id)a3
{
  v3 = [(UITextField *)self _metricsProvider];
  v4 = [v3 shouldExtendCaretHeight];

  return v4;
}

- (id)supportedPasteboardTypesForCurrentSelection
{
  v3 = qword_1ED49AA80;
  if (!qword_1ED49AA80)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = qword_1ED49AA80;
    qword_1ED49AA80 = v4;

    v6 = qword_1ED49AA80;
    v7 = [*MEMORY[0x1E6983030] identifier];
    [v6 addObject:v7];

    [qword_1ED49AA80 addObjectsFromArray:UIPasteboardTypeListString];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = qword_1ED49AA88;
    qword_1ED49AA88 = v8;

    [qword_1ED49AA88 addObject:*MEMORY[0x1E69E2FD8]];
    v10 = qword_1ED49AA88;
    v11 = [*MEMORY[0x1E6982F90] identifier];
    [v10 addObject:v11];

    v12 = qword_1ED49AA88;
    v13 = [*MEMORY[0x1E6982F98] identifier];
    [v12 addObject:v13];

    [qword_1ED49AA88 addObjectsFromArray:qword_1ED49AA80];
    v3 = qword_1ED49AA80;
  }

  if ((*&self->_textFieldFlags & 0x10000) != 0)
  {
    v14 = qword_1ED49AA88;
  }

  else
  {
    v14 = v3;
  }

  return v14;
}

- (id)_dictationInterpretations
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v3 = MEMORY[0x1E695DEC8];
  v4 = [(UITextField *)self text];
  v5 = [v3 arrayWithObject:v4];

  return v5;
}

- (id)documentFragmentForPasteboardItemAtIndex:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained documentFragmentForPasteboardItemAtIndex:a3 inTextField:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setClearButtonStyle:(int64_t)a3
{
  if (a3 <= 2)
  {
    [(UITextField *)self setClearButtonMode:qword_18A682DB8[a3]];
  }
}

- (void)drawRect:(CGRect)a3
{
  if ((*(&self->_textFieldFlags + 4) & 2) != 0)
  {
    [(UIView *)self bounds:a3.origin.x];
    [(UITextField *)self borderRectForBounds:?];
    backgroundProvider = self->_backgroundProvider;

    [(_UITextFieldBackgroundProvider *)backgroundProvider drawInBounds:?];
  }
}

- (void)_setPadding:(UIEdgeInsets)a3
{
  p_padding = &self->_padding;
  v4 = *&self->_padding.top;
  v5 = *&self->_padding.bottom;
  v6.f64[0] = a3.top;
  v6.f64[1] = a3.left;
  v7.f64[0] = a3.bottom;
  v7.f64[1] = a3.right;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, v4), vceqq_f64(v7, v5)))))
  {
    return;
  }

  if (a3.bottom != v5.f64[0])
  {
    p_padding->top = a3.top;
    self->_padding.left = a3.left;
    self->_padding.bottom = a3.bottom;
    self->_padding.right = a3.right;
LABEL_6:
    [(UIView *)self _invalidateBaselineConstraints];
    goto LABEL_7;
  }

  p_padding->top = a3.top;
  self->_padding.left = a3.left;
  self->_padding.bottom = a3.bottom;
  self->_padding.right = a3.right;
  if (a3.top != v4.f64[0])
  {
    goto LABEL_6;
  }

LABEL_7:

  [(UITextField *)self _setNeedsStyleRecalc];
}

- (void)_setLeadingPadding:(double)a3
{
  left = a3;
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    right = a3;
    left = self->_padding.left;
  }

  else
  {
    right = self->_padding.right;
  }

  [(UITextField *)self _setPadding:self->_padding.top, left, self->_padding.bottom, right];
}

- (void)_setTrailingPadding:(double)a3
{
  left = a3;
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    right = self->_padding.right;
  }

  else
  {
    right = a3;
    left = self->_padding.left;
  }

  [(UITextField *)self _setPadding:self->_padding.top, left, self->_padding.bottom, right];
}

- (void)_setEnabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(UIControl *)self isEnabled]!= a3)
  {
    if (!v5 && (*(&self->_textFieldFlags + 1) & 1) != 0 && [(UITextField *)self canResignFirstResponder])
    {
      v7 = [(UITextField *)self resignFirstResponder];
      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = (*(&self->_textFieldFlags + 1) & 1) == 0;
      if (v5)
      {
LABEL_9:
        v8.receiver = self;
        v8.super_class = UITextField;
        [(UIControl *)&v8 setEnabled:v5];
        [(UITextField *)self _enabledDidChangeAnimated:v4];
        return;
      }
    }

    if (!v7)
    {
      return;
    }

    goto LABEL_9;
  }
}

- (void)_enabledDidChangeAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(UITextField *)self _backgroundProvider];
  [v4 enabledDidChangeAnimated:v3];
}

- (void)_setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(UIControl *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = UITextField;
  [(UIControl *)&v8 setHighlighted:v5];
  if (v7 != [(UIControl *)self isHighlighted])
  {
    [(UITextField *)self _highlightedDidChangeAnimated:v4];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  textFieldFlags = self->_textFieldFlags;
  self->_textFieldFlags = (*&textFieldFlags & 0xFFFFFFFEFFFFFFFFLL);
  [(UITextField *)self _setHighlighted:a3 animated:HIDWORD(*&textFieldFlags) & 1];
}

- (void)_highlightedDidChangeAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(UITextField *)self _backgroundProvider];
  [v4 highlightedDidChangeAnimated:v3];
}

- (void)selectAll
{
  v3 = [(UITextField *)self _text];
  -[UITextField setSelectionRange:](self, "setSelectionRange:", 0, [v3 length]);
}

- (void)_clearSelectionUI
{
  v3 = [(UITextField *)self interactionAssistant];
  v4 = [v3 activeSelection];
  [v4 clearSelection];

  v5 = [(UITextField *)self interactionAssistant];
  [v5 updateDisplayedSelection];
}

- (void)_resetSelectionUI
{
  v3 = [(UITextField *)self interactionAssistant];
  v4 = [v3 activeSelection];
  [v4 selectionChanged];

  v5 = [(UITextField *)self interactionAssistant];
  [v5 updateDisplayedSelection];
}

- (void)clearText
{
  if (*(&self->_textFieldFlags + 1))
  {
    v6 = [(UITextField *)self _fieldEditor];
    v4 = [(UITextField *)self _rangeForSetText];
    [v6 setTextInRange:v4 replacementText:{v5, &stru_1EFB14550}];
  }
}

- (id)_tvTypingAttributes
{
  v3 = [(UITextField *)self typingAttributes];
  v4 = [v3 mutableCopy];

  [(UITextField *)self _fieldEditorHeight];
  v6 = v5;
  v7 = [(UITextField *)self font];
  v8 = [v7 fontWithSize:v6];

  if (v8)
  {
    [v4 setObject:v8 forKey:*off_1E70EC918];
  }

  return v4;
}

- (void)_setBlurEnabled:(BOOL)a3
{
  textFieldFlags = self->_textFieldFlags;
  if (((((*&textFieldFlags & 0x400000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x400000;
    if (!a3)
    {
      v4 = 0;
    }

    self->_textFieldFlags = (*&textFieldFlags & 0xFFFFFFFFFFBFFFFFLL | v4);
  }
}

- (void)_setVisualEffectViewEnabled:(BOOL)a3 backgroundColor:(id)a4
{
  v4 = 0x800000;
  if (!a3)
  {
    v4 = 0;
  }

  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFF7FFFFFLL | v4);
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = NSStringFromSelector(sel_textInputTraits);
    [(UITextField *)self willChangeValueForKey:v5];

    objc_storeWeak(&self->_delegate, obj);
    v6 = NSStringFromSelector(sel_textInputTraits);
    [(UITextField *)self didChangeValueForKey:v6];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v6.receiver = self;
  v6.super_class = UITextField;
  [(UITextField *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
}

- (void)setSelectionRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(UITextField *)self _fieldEditor];
  [v5 setSelection:{location, length}];
}

- (NSArray)_selectedRanges
{
  v2 = [(UITextField *)self _fieldEditor];
  v3 = [v2 selectionRanges];

  return v3;
}

- (void)_setSelectedRanges:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  [v5 setSelectionRanges:v4];
}

- (void)setIcon:(id)a3
{
  v13 = a3;
  v4 = [(UIImageView *)self->_iconView image];

  v5 = v13;
  if (v4 != v13)
  {
    iconView = self->_iconView;
    if (v13)
    {
      if (iconView)
      {
        [(UIImageView *)iconView setImage:?];
        [(UIView *)self->_iconView sizeToFit];
      }

      else
      {
        v8 = [[UIImageView alloc] initWithImage:v13];
        v9 = self->_iconView;
        self->_iconView = v8;

        v10 = [(UITextField *)self _contentView];
        [v10 addSubview:self->_iconView];

        v11 = [(UITextField *)self _contentView];
        [v11 bringSubviewToFront:self->_iconView];
      }

      v12 = self->_iconView;
      [(UITextField *)self iconRect];
      [(UIImageView *)v12 setFrame:?];
    }

    else
    {
      [(UIView *)iconView removeFromSuperview];
      v7 = self->_iconView;
      self->_iconView = 0;
    }

    [(UITextField *)self setNeedsLayout];
    v5 = v13;
  }
}

- (void)setBecomesFirstResponderOnClearButtonTap:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (CGRect)iconRect
{
  iconView = self->_iconView;
  if (iconView)
  {
    [(UIView *)iconView frame];
    v5 = 0.0;
    v6 = 0.0;
  }

  else
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v3 = *(MEMORY[0x1E695F058] + 16);
    v4 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)setProgress:(float)a3
{
  if (objc_opt_respondsToSelector())
  {
    backgroundProvider = self->_backgroundProvider;

    [(_UITextFieldBackgroundProvider *)backgroundProvider setProgress:a3];
  }
}

- (void)setLabelOffset:(float)a3
{
  label = self->_label;
  if (label)
  {
    [(UIView *)label frame];
    v7 = v6 - self->_labelOffset;
    self->_labelOffset = a3;
    v8 = self->_label;
    v9 = v7 + a3;

    [(UILabel *)v8 setFrame:v9];
  }

  else
  {
    self->_labelOffset = a3;
  }
}

- (id)textLabel
{
  [(UIView *)self->_label sizeToFit];
  label = self->_label;

  return label;
}

- (void)setLabel:(id)a3
{
  v20 = a3;
  v4 = [(UILabel *)self->_label text];
  if ([v4 length] || objc_msgSend(v20, "length"))
  {
    v5 = [(UILabel *)self->_label text];
    v6 = [v5 isEqualToString:v20];

    v7 = v20;
    if (v6)
    {
      goto LABEL_15;
    }

    v8 = [v20 length];
    label = self->_label;
    if (v8)
    {
      if (!label)
      {
        v10 = objc_alloc_init(UILabel);
        v11 = self->_label;
        self->_label = v10;

        v12 = [(UITextField *)self _contentView];
        [v12 addSubview:self->_label];

        [(UILabel *)self->_label setEnabled:0];
        [(UIView *)self->_label setOpaque:0];
        [(UIView *)self->_label setBackgroundColor:0];
        v13 = [(UITextField *)self _cuiCatalog];
        [(UILabel *)self->_label _setCuiCatalog:v13];

        v14 = [(UITextField *)self _cuiStyleEffectConfiguration];
        [(UILabel *)self->_label _setCuiStyleEffectConfiguration:v14];

        v15 = self->_textStorage;
        v16 = [(_UICascadingTextStorage *)v15 font];

        if (v16)
        {
          v17 = self->_label;
          v18 = [(_UICascadingTextStorage *)v15 font];
          [(UILabel *)v17 setFont:v18];
        }

        label = self->_label;
      }

      [(UILabel *)label setText:v20];
      [(UIView *)self->_label sizeToFit];
    }

    else if (label)
    {
      [(UIView *)label removeFromSuperview];
      v19 = self->_label;
      self->_label = 0;
    }

    [(UITextField *)self setNeedsLayout];
  }

  else
  {
  }

  v7 = v20;
LABEL_15:
}

- (void)setTextCentersVertically:(BOOL)a3
{
  if ((*&self->_textFieldFlags & 1) != a3)
  {
    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFFFFFFFELL | a3);
    [(UITextField *)self _setNeedsStyleRecalc];
  }
}

- (void)setUndoEnabled:(BOOL)a3
{
  v3 = 4096;
  if (a3)
  {
    v3 = 0;
  }

  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)_clearButtonClicked:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([(UITextField *)self _delegateShouldClear])
  {
    textFieldFlags = self->_textFieldFlags;
    if ((*&textFieldFlags & 0x100) != 0)
    {
      v6 = [(UITextField *)self _fieldEditor];
      [v6 selectionRange];
      if (v7)
      {
        [v6 setSelection:{0, 0}];
      }

      [v6 clearText];
      v8 = self->_textFieldFlags;
      self->_textFieldFlags = (*&v8 | 0x8000);
      [(UITextField *)self fieldEditorDidChange:v6];
      self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFFFF7FFFLL | (((*&v8 >> 15) & 1) << 15));
    }

    else
    {
      self->_textFieldFlags = (*&textFieldFlags | 0x800000000);
      [(UITextField *)self setText:&stru_1EFB14550];
      *&self->_textFieldFlags &= ~0x800000000uLL;
      [(UIControl *)self _sendActionsForEvents:0x20000 withEvent:0];
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 postNotificationName:@"UITextFieldTextDidChangeNotification" object:self];
    }

    v9 = +[UIKeyboardImpl activeInstance];
    [v9 textChanged:0];

    v10 = +[UIKeyboardImpl activeInstance];
    [v10 didClearText];

    if (+[UIDictationController isRunning])
    {
      v11 = +[UIDictationController sharedInstance];
      [v11 resetDictation];
    }

    [(UITextField *)self setClearsOnInsertion:0];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained textFieldDidClear:self];
    }

    else if (objc_opt_respondsToSelector())
    {
      [WeakRetained textFieldClearButtonPressed:self];
    }

    if ((*&self->_textFieldFlags & 0x120) == 0x20)
    {
      [(UITextField *)self becomeFirstResponder];
    }
  }
}

- (void)setClearButtonOffset:(CGSize)a3
{
  if (self->_clearButtonOffset.width != a3.width || self->_clearButtonOffset.height != a3.height)
  {
    self->_clearButtonOffset = a3;
    [(UITextField *)self setNeedsLayout];
  }
}

- (id)undoManager
{
  if ([(UITextField *)self isUndoEnabled])
  {
    v3 = [(UITextField *)self _fieldEditor];
    v4 = [v3 undoManager];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGPoint)_originForTextFieldLabel:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  v6 = [v5 superview];
  v7 = v6;
  if (!v6)
  {
    v6 = self;
  }

  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(UITextField *)self _marginTopForBounds:v9, v11, v13, v15];
  v17 = v16;
  left = self->_padding.left;
  if ((*(&self->_textFieldFlags + 4) & 0x40) != 0 && left == 0.0)
  {
    [(UITextField *)self _availableTextRectForBounds:[(UITextField *)self isEditing] forEditing:v9, v11, v13, v15];
    [(UIView *)self alignmentRectForFrame:?];
    left = left + CGRectGetMinX(v25);
  }

  v19 = v17;
  if (self->_placeholderLabel == v4 || v4 == 0)
  {
    v21 = left;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = v21;
  v23 = v19;
  result.y = v23;
  result.x = v22;
  return result;
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = UITextField;
  [(UIControl *)&v13 _didMoveFromWindow:v6 toWindow:v7];
  if (v7 && dyld_program_sdk_at_least())
  {
    v8 = [v7 traitCollection];
    v9 = [v8 userInterfaceIdiom];
    v10 = [v6 traitCollection];
    if (v9 == [v10 userInterfaceIdiom])
    {
    }

    else
    {
      v11 = [v7 traitCollection];
      v12 = [v11 userInterfaceIdiom];

      if (v12 == 3)
      {
        [(UITextField *)self _adjustFontForAccessibilityTraits:1];
      }
    }
  }
}

- (BOOL)_hasFloatingFieldEditor
{
  v2 = self;
  v3 = [(UITextField *)self _fieldEditor];
  LOBYTE(v2) = [v3 isDescendantOfView:v2];

  return v2 ^ 1;
}

- (BOOL)_inVibrantContentView
{
  v3 = [(UITextField *)self _fieldEditor];
  v4 = [(UIVisualEffectView *)self->_contentBackdropView contentView];
  v5 = [v3 isDescendantOfView:v4];

  return v5;
}

- (double)_fieldEditorHeight
{
  v2 = [(UITextField *)self _fieldEditor];
  [v2 frame];
  v4 = round(v3 * 0.6857);

  return v4;
}

- (id)_uiktest_placeholderLabelColor
{
  v2 = [(UITextField *)self _placeholderLabel];
  v3 = [v2 textColor];

  return v3;
}

- (void)beginSelectionChange
{
  v2 = [(UITextField *)self _fieldEditor];
  [v2 beginSelectionChange];
}

- (void)endSelectionChange
{
  v2 = [(UITextField *)self _fieldEditor];
  [v2 endSelectionChange];
}

- (BOOL)hasSelection
{
  v2 = [(UITextField *)self _fieldEditor];
  [v2 selectionRange];
  v4 = v3 != 0;

  return v4;
}

- (void)startAutoscroll:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextField *)self _fieldEditor];
  v7 = [(UITextField *)self textInputView];
  [v6 convertPoint:v7 fromView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(UITextField *)self _fieldEditor];
  [v12 startAutoscroll:{v9, v11}];
}

- (void)cancelAutoscroll
{
  v2 = [(UITextField *)self _fieldEditor];
  [v2 cancelAutoscroll];
}

- (BOOL)_restoreFirstResponder
{
  if ((*(&self->_textFieldFlags + 1) & 8) != 0)
  {
    return 0;
  }

  v3 = [(UITextField *)self interactionAssistant];
  v4 = v3;
  if (v3)
  {
    [v3 checkEditabilityAndSetFirstResponderIfNecessary];
    v5 = [(UIView *)self isFirstResponder];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITextField;
    v5 = [(UIResponder *)&v8 _restoreFirstResponder];
  }

  v6 = v5;

  return v6;
}

- (void)beginFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UITextField *)self interactionAssistant];
  [v5 beginFloatingCursorAtPoint:{x, y}];
}

- (void)updateFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UITextField *)self interactionAssistant];
  [v5 updateFloatingCursorAtPoint:{x, y}];
}

- (void)updateFloatingCursorAtPoint:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v7 = [(UITextField *)self interactionAssistant];
  [v7 updateFloatingCursorAtPoint:v4 animated:{x, y}];
}

- (void)endFloatingCursor
{
  v2 = [(UITextField *)self interactionAssistant];
  [v2 endFloatingCursor];
}

- (id)selectedText
{
  v3 = [(UITextField *)self _fieldEditor];
  v4 = [(UITextField *)self _fieldEditor];
  v5 = [v4 selectedTextRange];
  v6 = [v3 textInRange:v5];

  v7 = [(UITextField *)self _shouldObscureInput];
  v8 = v6;
  v9 = v8;
  if (v8 && v7)
  {
    v10 = [MEMORY[0x1E696AEC0] _newZStringWithString:v8];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  return v11;
}

- (id)selectedAttributedText
{
  v3 = [(UITextField *)self attributedText];
  v4 = [(UITextField *)self selectionRange];
  v6 = [v3 attributedSubstringFromRange:{v4, v5}];

  return v6;
}

- (id)_activityItemsConfigurationAtLocation:(CGPoint)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [UIActivityItemsConfiguration alloc];
  v5 = [(UITextField *)self selectedText];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [(UIActivityItemsConfiguration *)v4 initWithObjects:v6];

  return v7;
}

- (CGRect)closestCaretRectInMarkedTextRangeForPoint:(CGPoint)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)constrainedPoint:(CGPoint)a3
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)_proxyTextInput
{
  if (self->_fieldEditor)
  {
    self = self->_fieldEditor;
  }

  return self;
}

- (void)cut:(id)a3
{
  v5 = a3;
  if ([(UITextField *)self keyboardInputShouldDelete:self])
  {
    v4 = [(UITextField *)self _inputController];
    [v4 cut:v5];
  }
}

- (void)copy:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 copy:v4];

  v6 = [(UITextField *)self interactionAssistant];
  [v6 hideSelectionCommands];
}

- (void)_define:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 _define:v4];
}

- (void)_translate:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 _translate:v4];
}

- (void)_share:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 _share:v4];
}

- (BOOL)_isDisplayingTextService
{
  v2 = [(UITextField *)self _inputController];
  v3 = [v2 _isDisplayingTextService];

  return v3;
}

- (BOOL)_isDisplayingShortcutViewController
{
  v2 = [(UITextField *)self _inputController];
  v3 = [v2 _isDisplayingShortcutViewController];

  return v3;
}

- (BOOL)_isDisplayingReferenceLibraryViewController
{
  v2 = [(UITextField *)self _inputController];
  v3 = [v2 _isDisplayingReferenceLibraryViewController];

  return v3;
}

- (BOOL)_isDisplayingShareViewController
{
  v2 = [(UITextField *)self _inputController];
  v3 = [v2 _isDisplayingShareViewController];

  return v3;
}

- (BOOL)_isDisplayingLookupViewController
{
  v2 = [(UITextField *)self _inputController];
  v3 = [v2 _isDisplayingLookupViewController];

  return v3;
}

- (void)_selectionMayChange:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 _selectionMayChange:v4];
}

- (void)_setBackgroundStrokeColor:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _systemBackgroundView];
  [v5 setStrokeColor:v4];
}

- (id)_backgroundStrokeColor
{
  v2 = [(UITextField *)self _systemBackgroundView];
  v3 = [v2 strokeColor];

  return v3;
}

- (void)_setBackgroundFillColor:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _systemBackgroundView];
  [v5 setFillColor:v4];
}

- (id)_backgroundFillColor
{
  v2 = [(UITextField *)self _systemBackgroundView];
  v3 = [v2 fillColor];

  return v3;
}

- (void)_setBackgroundStrokeWidth:(double)a3
{
  v4 = [(UITextField *)self _systemBackgroundView];
  [v4 setLineWidth:a3];
}

- (double)_backgroundStrokeWidth
{
  v2 = [(UITextField *)self _systemBackgroundView];
  [v2 lineWidth];
  v4 = v3;

  return v4;
}

- (void)setAttributes:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (*(&self->_textFieldFlags + 1))
  {
    v8 = a3;
    v9 = [(UITextField *)self _inputController];
    [v9 setAttributes:v8 range:{location, length}];
  }

  else
  {
    textStorage = self->_textStorage;
    v9 = a3;
    [NSConcreteTextStorage setAttributes:"setAttributes:range:" range:?];
  }
}

- (void)_insertAttributedTextWithoutClosingTyping:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 _insertAttributedTextWithoutClosingTyping:v4];
}

- (void)_addShortcut:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 _addShortcut:v4];
}

- (void)paste:(id)a3
{
  if (*(&self->_textFieldFlags + 1))
  {
    v5 = a3;
    v6 = [(UITextField *)self _fieldEditor];
    [v6 _clearOnEditIfNeeded];

    v7 = [(UITextField *)self _inputController];
    [v7 paste:v5];
  }
}

- (void)pasteAndMatchStyle:(id)a3
{
  if (*(&self->_textFieldFlags + 1))
  {
    v5 = a3;
    v6 = [(UITextField *)self _fieldEditor];
    [v6 _clearOnEditIfNeeded];

    v7 = [(UITextField *)self _inputController];
    [v7 pasteAndMatchStyle:v5];
  }
}

- (id)_effectivePasteConfiguration
{
  v8.receiver = self;
  v8.super_class = UITextField;
  v3 = [(UIResponder *)&v8 _effectivePasteConfiguration];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(UITextField *)self _implicitPasteConfigurationClasses];
    v5 = [UIPasteConfiguration _pasteConfigurationForAcceptingClasses:v6];
  }

  return v5;
}

- (id)_implicitPasteConfigurationClasses
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(UITextField *)self isEditable])
  {
    v3 = [(UITextField *)self allowsEditingTextAttributes];
    v4 = objc_opt_class();
    if (v3)
    {
      v12 = v4;
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v5 = MEMORY[0x1E695DEC8];
      v6 = &v12;
      v7 = 3;
    }

    else
    {
      v10 = v4;
      v11 = objc_opt_class();
      v5 = MEMORY[0x1E695DEC8];
      v6 = &v10;
      v7 = 2;
    }

    v8 = [v5 arrayWithObjects:v6 count:{v7, v10, v11, v12, v13, v14}];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (void)pasteItemProviders:(id)a3
{
  if (*(&self->_textFieldFlags + 1))
  {
    v5 = a3;
    v6 = [(UITextField *)self _fieldEditor];
    [v6 _clearOnEditIfNeeded];

    v7 = [(UITextField *)self _inputController];
    [v7 pasteItemProviders:v5];
  }
}

- (void)_pasteSessionDidFinish:(id)a3
{
  if ([(UITextField *)self _shouldObscureInput])
  {
    [(UITextField *)self _forceObscureAllText];

    [(UITextField *)self setNeedsLayout];
  }
}

- (void)select:(id)a3
{
  v3 = [(UITextField *)self interactionAssistant];
  [v3 selectWord];
}

- (void)selectAll:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self interactionAssistant];
  [v5 selectAll:v4];
}

- (void)makeTextWritingDirectionRightToLeft:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 makeTextWritingDirectionRightToLeft:v4];
}

- (void)makeTextWritingDirectionNatural:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 makeTextWritingDirectionNatural:v4];
}

- (void)makeTextWritingDirectionLeftToRight:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 makeTextWritingDirectionLeftToRight:v4];
}

- (void)toggleBoldface:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 toggleBoldface:v4];
}

- (void)toggleItalics:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 toggleItalics:v4];
}

- (void)toggleUnderline:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 toggleUnderline:v4];
}

- (void)increaseSize:(id)a3
{
  v4 = [(UITextField *)self _inputController];
  [v4 increaseSize:self];
}

- (void)decreaseSize:(id)a3
{
  v4 = [(UITextField *)self _inputController];
  [v4 decreaseSize:self];
}

- (void)replace:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 replace:v4];
}

- (void)_promptForReplace:(id)a3
{
  v3 = [(UITextField *)self interactionAssistant];
  [v3 scheduleReplacements];
}

- (void)_transliterateChinese:(id)a3
{
  v3 = [(UITextField *)self interactionAssistant];
  [v3 scheduleChineseTransliteration];
}

- (void)captureTextFromCamera:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 captureTextFromCamera:v4];
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 validateCommand:v4];
}

- (BOOL)_inPopover
{
  v2 = [(UIView *)self superview];
  if (v2)
  {
    v3 = v2;
    do
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        break;
      }

      v5 = [v3 superview];

      v3 = v5;
    }

    while (v5);
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v8 = sel_paste_ == a3 || sel_select_ == a3 || sel_selectAll_ == a3;
  if (v8 && [(UITextField *)self _isPasscodeStyle])
  {
    v9 = 0;
  }

  else
  {
    v10 = [(UITextField *)self _inputController];
    v11 = [v10 _canHandleResponderAction:a3];

    if (v11)
    {
      v12 = [(UITextField *)self _inputController];
      v9 = [v12 _shouldHandleResponderAction:a3 withSender:v6];
    }

    else
    {
      v14.receiver = self;
      v14.super_class = UITextField;
      v9 = [(UIView *)&v14 canPerformAction:a3 withSender:v6];
    }
  }

  return v9;
}

- (id)textInRange:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  v6 = [v5 textInRange:v4];

  v7 = [(UITextField *)self _shouldObscureInput];
  v8 = v6;
  v9 = v8;
  if (v8 && v7)
  {
    v10 = [MEMORY[0x1E696AEC0] _newZStringWithString:v8];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  return v11;
}

- (void)insertAttributedText:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  [v5 insertAttributedText:v4];
}

- (id)attributedTextInRange:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  v6 = [v5 attributedTextInRange:v4];

  return v6;
}

- (void)replaceRange:(id)a3 withText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextField *)self _fieldEditor];
  [v8 replaceRange:v7 withText:v6];
}

- (void)replaceRange:(id)a3 withAttributedText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextField *)self _fieldEditor];
  [v8 replaceRange:v7 withAttributedText:v6];
}

- (id)_replaceRange:(id)a3 withAttributedText:(id)a4 updatingSelection:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(UITextField *)self _fieldEditor];
  v11 = [v10 replaceRange:v9 withAttributedText:v8 updatingSelection:v5];

  return v11;
}

- (void)replaceRangeWithTextWithoutClosingTyping:(id)a3 replacementText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextField *)self _fieldEditor];
  [v8 replaceRangeWithTextWithoutClosingTyping:v7 replacementText:v6];
}

- (void)setSelectedTextRange:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  [v5 setSelectedTextRange:v4];
}

- (id)_NSTextRangeFromNSRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(UITextField *)self _internalTextLayoutController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _rangeForCharacterRange:{location, length}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setMarkedTextStyle:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  [v5 setMarkedTextStyle:v4];
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(UITextField *)self _fieldEditor];
  [v8 setMarkedText:v7 selectedRange:{location, length}];
}

- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(UITextField *)self _fieldEditor];
  [v8 setAttributedMarkedText:v7 selectedRange:{location, length}];
}

- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextField *)self _fieldEditor];
  v9 = [v8 textRangeFromPosition:v7 toPosition:v6];

  return v9;
}

- (id)positionFromPosition:(id)a3 offset:(int64_t)a4
{
  v6 = a3;
  v7 = [(UITextField *)self _fieldEditor];
  v8 = [v7 positionFromPosition:v6 offset:a4];

  return v8;
}

- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5
{
  v8 = a3;
  v9 = [(UITextField *)self _fieldEditor];
  v10 = [v9 positionFromPosition:v8 inDirection:a4 offset:a5];

  return v10;
}

- (int64_t)comparePosition:(id)a3 toPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextField *)self _fieldEditor];
  v9 = [v8 comparePosition:v7 toPosition:v6];

  return v9;
}

- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextField *)self _fieldEditor];
  v9 = [v8 offsetFromPosition:v7 toPosition:v6];

  return v9;
}

- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(UITextField *)self _fieldEditor];
  v8 = [v7 positionWithinRange:v6 farthestInDirection:a4];

  return v8;
}

- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(UITextField *)self _fieldEditor];
  v8 = [v7 characterRangeByExtendingPosition:v6 inDirection:a4];

  return v8;
}

- (id)_visualSelectionRangeForExtent:(id)a3 forPoint:(CGPoint)a4 fromPosition:(id)a5 inDirection:(int64_t)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a5;
  v12 = a3;
  v13 = [(UITextField *)self _fieldEditor];
  v14 = [v13 _visualSelectionRangeForExtent:v12 forPoint:v11 fromPosition:a6 inDirection:{x, y}];

  return v14;
}

- (void)setInputDelegate:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  [v5 setInputDelegate:v4];
}

- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(UITextField *)self _fieldEditor];
  v8 = [v7 baseWritingDirectionForPosition:v6 inDirection:a4];

  return v8;
}

- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4
{
  v6 = a4;
  v7 = [(UITextField *)self _fieldEditor];
  [v7 setBaseWritingDirection:a3 forRange:v6];
}

- (CGRect)firstRectForRange:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  [v5 firstRectForRange:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)caretRectForPosition:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  [v5 caretRectForPosition:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(UITextField *)self adjustedCaretRectForCaretRect:v7, v9, v11, v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(UITextField *)self _inputController];
  v8 = [v7 textStylingAtPosition:v6 inDirection:a4];

  return v8;
}

- (id)selectionRectsForRange:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  v6 = [v5 selectionRectsForRange:v4];

  return v6;
}

- (id)closestPositionToPoint:(CGPoint)a3
{
  x = a3.x;
  v5 = [(_UITextLayoutController *)self->_textLayoutController beginningOfDocument:a3.x];
  [(UITextField *)self caretRectForPosition:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v19.origin.x = v7;
  v19.origin.y = v9;
  v19.size.width = v11;
  v19.size.height = v13;
  MidY = CGRectGetMidY(v19);
  v15 = [(UITextField *)self _fieldEditor];
  v16 = [v15 closestPositionToPoint:{x, MidY}];

  return v16;
}

- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4
{
  x = a3.x;
  textLayoutController = self->_textLayoutController;
  v7 = a4;
  v8 = [(_UITextLayoutController *)textLayoutController beginningOfDocument];
  [(UITextField *)self caretRectForPosition:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v22.origin.x = v10;
  v22.origin.y = v12;
  v22.size.width = v14;
  v22.size.height = v16;
  MidY = CGRectGetMidY(v22);
  v18 = [(UITextField *)self _fieldEditor];
  v19 = [v18 closestPositionToPoint:v7 withinRange:{x, MidY}];

  return v19;
}

- (void)_setCursorAccessories:(id)a3
{
  interactionAssistant = self->_interactionAssistant;
  v4 = a3;
  v6 = [(UITextInteractionAssistant *)interactionAssistant _selectionViewManager];
  v5 = [v6 _cursorAccessoryViewController];
  [v5 setAccessories:v4];
}

- (id)characterRangeAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UITextField *)self _fieldEditor];
  v6 = [v5 characterRangeAtPoint:{x, y}];

  return v6;
}

- (void)insertDictationResult:(id)a3 withCorrectionIdentifier:(id)a4
{
  v6 = a4;
  v10 = [a3 singleLineResult];
  v7 = [v10 phrases];
  v8 = [v7 count];

  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v10 dictationPhraseArray];
      [(UITextField *)self insertDictationResult:v9];
    }

    else
    {
      v9 = [(UITextField *)self _fieldEditor];
      [v9 insertDictationResult:v10 withCorrectionIdentifier:v6];
    }
  }
}

- (id)insertTextPlaceholderWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(UITextField *)self _fieldEditor];
  v6 = [v5 insertTextPlaceholderWithSize:{width, height}];

  return v6;
}

- (void)removeTextPlaceholder:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  [v5 removeTextPlaceholder:v4];
}

- (id)insertDictationResultPlaceholder
{
  v2 = [(UITextField *)self _fieldEditor];
  v3 = [v2 insertDictationResultPlaceholder];

  return v3;
}

- (CGRect)frameForDictationResultPlaceholder:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  [v5 frameForDictationResultPlaceholder:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)removeDictationResultPlaceholder:(id)a3 willInsertResult:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UITextField *)self _fieldEditor];
  [v7 removeDictationResultPlaceholder:v6 willInsertResult:v4];
}

- (void)_setOverridePlaceholder:(id)a3 alignment:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (!self->_overriddenPlaceholder)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    v22 = v6;
    v9 = [(UITextField *)self attributedPlaceholder];
    v10 = v9;
    v11 = v9 ? v9 : [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
    overriddenPlaceholder = self->_overriddenPlaceholder;
    self->_overriddenPlaceholder = v11;

    v19 = [(UITextField *)self _placeholderLabel];
    self->_overriddenPlaceholderAlignment = [v19 textAlignment];

    [(UITextField *)self _setAttributedPlaceholder:v22];
    v20 = [(UITextField *)self _placeholderLabel];
    [v20 setTextAlignment:a4];

    v21 = objc_opt_respondsToSelector();
    v7 = v22;
    if ((v21 & 1) == 0)
    {
      goto LABEL_14;
    }

    placeholderLabel = self->_placeholderLabel;
    v17 = 1;
LABEL_12:
    [(UITextFieldLabel *)placeholderLabel setShouldRenderWithoutTextField:v17];
    goto LABEL_13;
  }

  v22 = v6;
  if (!v6)
  {
    [(UITextField *)self _setAttributedPlaceholder:?];
    overriddenPlaceholderAlignment = self->_overriddenPlaceholderAlignment;
    v13 = [(UITextField *)self _placeholderLabel];
    [v13 setTextAlignment:overriddenPlaceholderAlignment];

    v14 = self->_overriddenPlaceholder;
    self->_overriddenPlaceholder = 0;

    v15 = objc_opt_respondsToSelector();
    v7 = 0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_14;
    }

    placeholderLabel = self->_placeholderLabel;
    v17 = 0;
    goto LABEL_12;
  }

  [(UITextField *)self _setAttributedPlaceholder:v6];
  v8 = [(UITextField *)self _placeholderLabel];
  [v8 setTextAlignment:a4];

LABEL_13:
  v7 = v22;
LABEL_14:
}

- (id)rangeWithTextAlternatives:(id *)a3 atPosition:(id)a4
{
  v6 = a4;
  v7 = [(UITextField *)self _fieldEditor];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UITextField *)self _fieldEditor];
    v10 = [v9 rangeWithTextAlternatives:a3 atPosition:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_shouldResignOnEditingDidEndOnExit
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(UIControl *)self _hasActionForEventMask:0x80000];
}

- (void)_setShouldDisplayDictationPlaceholderMessage:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)_setSuppressContentChangedNotification:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (_NSRange)_rangeForClearButton
{
  v2 = [(NSConcreteTextStorage *)self->_textStorage length];
  v3 = 0;
  result.length = v2;
  result.location = v3;
  return result;
}

- (BOOL)_delegateShouldClear
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained textFieldShouldClear:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_delegateShouldChangeCharactersInTextStorageRanges:(id)a3 replacementString:(id)a4 delegateCares:(BOOL *)a5
{
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [(UITextField *)self _textRangesForTextStorageRanges:v9];

  v12 = objc_opt_respondsToSelector();
  v13 = objc_opt_respondsToSelector();
  if (v13)
  {
    v14 = [WeakRetained textField:self shouldChangeCharactersInRanges:v11 replacementString:v8];
  }

  else
  {
    if ((v12 & 1) == 0)
    {
      v17 = 1;
      if (!a5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v15 = [v11 unionRange];
    v14 = [WeakRetained textField:self shouldChangeCharactersInRange:v15 replacementString:{v16, v8}];
  }

  v17 = v14;
  if (a5)
  {
LABEL_6:
    *a5 = (v12 | v13) & 1;
  }

LABEL_7:

  return v17;
}

- (void)insertText:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  [v5 insertText:v4];
}

- (void)insertText:(id)a3 alternatives:(id)a4 style:(int64_t)a5
{
  v6 = [off_1E70ECBA0 attributedText:a3 withAlternativeTexts:a4 style:a5];
  [(UITextField *)self insertAttributedText:v6];
}

- (void)addTextAlternatives:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _inputController];
  [v5 addTextAlternatives:v4];
}

- (void)removeEmojiAlternatives
{
  v2 = [(UITextField *)self _inputController];
  [v2 removeEmojiAlternatives];
}

- (_NSRange)insertFilteredText:(id)a3
{
  v4 = a3;
  v5 = [(UITextField *)self _fieldEditor];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 insertFilteredText:v4];
    v8 = v7;
  }

  else
  {
    [v5 insertText:v4];
    v8 = [v4 length];
    v6 = 0;
  }

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (void)deleteBackward
{
  v2 = [(UITextField *)self _fieldEditor];
  [v2 deleteBackward];
}

- (void)_deleteBackwardAndNotify:(BOOL)a3
{
  if (a3)
  {

    [(UITextField *)self deleteBackward];
  }

  else
  {
    v4 = [(UITextField *)self _fieldEditor];
    [v4 _deleteBackwardAndNotify:0];
  }
}

- (unint64_t)_textLengthToDeleteBeforeSelectedRangeForSmartDelete
{
  v2 = [(UITextField *)self _inputController];
  v3 = [v2 textLengthToDeleteBeforeSelectedRangeForSmartDelete];

  return v3;
}

- (void)setContinuousSpellCheckingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(UITextField *)self _inputController];
  [v4 setContinuousSpellCheckingEnabled:v3];
}

- (void)_setRoundedRectBackgroundCornerRadius:(double)a3
{
  if (a3 >= 0.0)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0.0;
  }

  if (self->_preferredBackgroundCornerRadius != v3)
  {
    self->_preferredBackgroundCornerRadius = v3;
    v4 = [(UITextField *)self _systemBackgroundView];
    [v4 setCornerRadius:v3];
  }
}

- (void)_tvUpdateTextColor
{
  if ([(UITextField *)self _fieldEditorAttached])
  {
    v8 = [(_UITextFieldVisualStyle *)self->_visualStyle defaultTextColorForKeyboardAppearance];
    [(UITextField *)self _setTextColor:v8];
  }

  else
  {
    if ([(UIView *)self isFocused])
    {
      tvCustomFocusedTextColor = self->_tvCustomFocusedTextColor;
      if (tvCustomFocusedTextColor)
      {
        v4 = tvCustomFocusedTextColor;
      }

      else
      {
        v4 = [(_UITextFieldVisualStyle *)self->_visualStyle defaultFocusedTextColor];
      }

      v7 = v4;
      [(_UICascadingTextStorage *)self->_textStorage setTextColor:v4];
      self->_tvUseVibrancy = 0;
    }

    else
    {
      tvCustomTextColor = self->_tvCustomTextColor;
      if (tvCustomTextColor)
      {
        v6 = tvCustomTextColor;
      }

      else
      {
        v6 = [(_UITextFieldVisualStyle *)self->_visualStyle defaultTextColor];
      }

      v7 = v6;
      [(_UICascadingTextStorage *)self->_textStorage setTextColor:v6];
      self->_tvUseVibrancy = self->_tvCustomTextColor == 0;
    }

    [(UITextField *)self _updateLabelAppearance];
  }
}

- (int64_t)_blurEffectStyleForAppearance
{
  v2 = [UISystemInputViewController _canonicalTraitsForResponder:self];
  v3 = _UISolariumEnabled();
  v4 = [v2 keyboardAppearance];
  v5 = 4016;
  v6 = 4012;
  if (v4 == 1)
  {
    v6 = 4013;
  }

  if (v4 != 9)
  {
    v5 = v6;
  }

  if (v4 == 10)
  {
    v5 = 5006;
  }

  v7 = 17;
  if (v4 == 10)
  {
    v7 = 7;
  }

  if (v4 == 2)
  {
    v7 = 12;
  }

  if (v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (int64_t)_blurEffectStyle
{
  if (dyld_program_sdk_at_least() && !_UISolariumEnabled())
  {
    return 5006;
  }

  return [(UITextField *)self _blurEffectStyleForAppearance];
}

- (void)insertInputSuggestion:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained textField:self insertInputSuggestion:v5];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __65__UITextField_pointerInteraction_regionForRequest_defaultRegion___block_invoke;
  v20 = &unk_1E71263E8;
  v11 = v9;
  v21 = v11;
  v22 = self;
  v12 = _Block_copy(&v17);
  if ([(UITextField *)self _showsLeftView:v17]&& v12[2](v12, self->_leftView))
  {
    [(UIView *)self->_leftView frame];
    v13 = @"_UITextFieldLeftViewRegion";
LABEL_7:
    v14 = [UIPointerRegion regionWithRect:v13 identifier:?];
    goto LABEL_9;
  }

  if ([(UITextField *)self _showsRightView]&& v12[2](v12, self->_rightView))
  {
    [(UIView *)self->_rightView frame];
    v13 = @"_UITextFieldRightViewRegion";
    goto LABEL_7;
  }

  v15 = [(UITextField *)self interactionAssistant];
  v14 = [v15 pointerInteraction:v8 regionForRequest:v11 defaultRegion:v10];

LABEL_9:

  return v14;
}

uint64_t __65__UITextField_pointerInteraction_regionForRequest_defaultRegion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(a1 + 32) location];
  v22.x = v12;
  v22.y = v13;
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  if (CGRectContainsPoint(v23, v22) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v3 alpha], v14 + 0.0001 >= 0.0) && (objc_msgSend(v3, "isHidden") & 1) == 0)
  {
    v17 = [v3 superview];
    v18 = *(a1 + 40);
    v19 = v17;
    v20 = v18;
    v21 = v20;
    if (v19 == v20)
    {
      v15 = 1;
    }

    else
    {
      v15 = 0;
      if (v19 && v20)
      {
        v15 = [v19 isEqual:v20];
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = [v8 isEqual:@"_UITextFieldLeftViewRegion"];

  if (v9)
  {
    v10 = &OBJC_IVAR___UITextField__leftView;
  }

  else
  {
    v11 = [v7 identifier];
    v12 = [v11 isEqual:@"_UITextFieldRightViewRegion"];

    if (!v12)
    {
LABEL_8:
      v14 = [(UITextField *)self interactionAssistant];
      v17 = [v14 pointerInteraction:v6 styleForRegion:v7];
      goto LABEL_14;
    }

    v10 = &OBJC_IVAR___UITextField__rightView;
  }

  v13 = *(&self->super.super.super.super.isa + *v10);
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = v13;
  v15 = [v13 _pointerEffect];
  if ([v15 isMemberOfClass:objc_opt_class()])
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __49__UITextField_pointerInteraction_styleForRegion___block_invoke;
    v21[3] = &unk_1E7126410;
    v21[4] = self;
    v22 = v14;
    v23 = v9 ^ 1;
    v16 = [v22 _shapeInContainer:self proposal:v21];
  }

  else
  {
    v16 = [v14 _shapeInContainer:self];
  }

  v18 = [v14 pointerStyleProvider];
  v19 = v18;
  if (!v18 || ((*(v18 + 16))(v18, v14, v15, v16), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17 = [UIPointerStyle styleWithEffect:v15 shape:v16];
  }

LABEL_14:

  return v17;
}

id __49__UITextField_pointerInteraction_styleForRegion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v24 = CGRectInset(v23, 2.0, 2.0);
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v6 = *(a1 + 32);
  [*(a1 + 40) _visualBounds];
  [v6 convertRect:*(a1 + 40) fromView:?];
  MidX = CGRectGetMidX(v25);
  v8 = x;
  v9 = y;
  v10 = width;
  v11 = height;
  if (*(a1 + 48) == 1)
  {
    MaxX = CGRectGetMaxX(*&v8);
    v13 = MaxX - MidX + MaxX - MidX;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v14 = CGRectGetMaxX(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = v13;
    v27.size.height = height;
    v15 = v14 - CGRectGetWidth(v27);
  }

  else
  {
    MinX = CGRectGetMinX(*&v8);
    v13 = MidX - MinX + MidX - MinX;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v15 = CGRectGetMinX(v28);
  }

  if ([*(a1 + 32) borderStyle] == 3)
  {
    v17 = *(*(a1 + 32) + 944) + -2.0;
LABEL_8:
    v20 = [UIPointerShape shapeWithRoundedRect:v15 cornerRadius:y, v13, height, v17];
    goto LABEL_10;
  }

  [*(a1 + 32) _cornerRadius];
  if (v18 > 0.0)
  {
    [*(a1 + 32) _cornerRadius];
    v17 = v19 + -2.0;
    goto LABEL_8;
  }

  v20 = [UIPointerShape shapeWithRoundedRect:v15, y, v13, height];
LABEL_10:

  return v20;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(UITextField *)self interactionAssistant];
  [v11 pointerInteraction:v10 willEnterRegion:v9 animator:v8];
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(UITextField *)self interactionAssistant];
  [v11 pointerInteraction:v10 willExitRegion:v9 animator:v8];
}

- (UIDragInteraction)textDragInteraction
{
  textDragDropSupport = self->_textDragDropSupport;
  if (textDragDropSupport)
  {
    v4 = textDragDropSupport;
LABEL_4:
    v7 = [(UIView *)self interactions];
    v8 = [(UITextDragDropSupport *)v4 dragInteraction];
    if ([v7 indexOfObject:v8] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(UITextDragDropSupport *)v4 dragInteraction];
    }

    goto LABEL_8;
  }

  v5 = [UITextDragDropSupport installTextDragDropOnView:self];
  v6 = self->_textDragDropSupport;
  self->_textDragDropSupport = v5;

  v4 = self->_textDragDropSupport;
  if (v4)
  {
    goto LABEL_4;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (UIDropInteraction)textDropInteraction
{
  textDragDropSupport = self->_textDragDropSupport;
  if (textDragDropSupport)
  {
    v4 = textDragDropSupport;
LABEL_4:
    v7 = [(UIView *)self interactions];
    v8 = [(UITextDragDropSupport *)v4 dropInteraction];
    if ([v7 indexOfObject:v8] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(UITextDragDropSupport *)v4 dropInteraction];
    }

    goto LABEL_8;
  }

  v5 = [UITextDragDropSupport installTextDragDropOnView:self];
  v6 = self->_textDragDropSupport;
  self->_textDragDropSupport = v5;

  v4 = self->_textDragDropSupport;
  if (v4)
  {
    goto LABEL_4;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)invalidateDropCaret
{
  textDragDropSupport = self->_textDragDropSupport;
  if (!textDragDropSupport)
  {
    v4 = [UITextDragDropSupport installTextDragDropOnView:self];
    v5 = self->_textDragDropSupport;
    self->_textDragDropSupport = v4;

    textDragDropSupport = self->_textDragDropSupport;
  }

  [(UITextDragDropSupport *)textDragDropSupport invalidateDropCaret];
}

- (void)draggingFinished:(id)a3
{
  v6 = a3;
  [(UITextField *)self _updateSelectionGestures];
  if (![(UIView *)self isFirstResponder])
  {
    [(UITextField *)self _detachFieldEditor];
  }

  if (([v6 dragTearoffOccured] & 1) == 0)
  {
    [(UITextField *)self selectionRange];
    if (v4)
    {
      v5 = [(UITextField *)self interactionAssistant];
      [v5 showSelectionCommands];
    }
  }
}

- (id)willGenerateCancelPreview
{
  v3 = MEMORY[0x1E696B098];
  v4 = [(UITextField *)self _fieldEditor];
  [v4 contentOffset];
  v5 = [v3 valueWithPoint:?];

  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v8 = [(UITextField *)self _fieldEditor];
  [v8 setContentOffset:{v6, v7}];

  return v5;
}

- (void)didGenerateCancelPreview:(id)a3
{
  [a3 CGPointValue];
  v5 = v4;
  v7 = v6;
  v8 = [(UITextField *)self _fieldEditor];
  [v8 setContentOffset:{v5, v7}];
}

- (void)performCancelAnimations
{
  if (![(UIView *)self isFirstResponder]&& [(UITextField *)self _fieldEditorAttached])
  {
    fieldEditor = self->_fieldEditor;
    v4 = [(UITextField *)self beginningOfDocument];
    [(UITextField *)self caretRectForPosition:v4];
    [(UIScrollView *)fieldEditor scrollRectToVisible:1 animated:?];
  }
}

- (void)becomeDropResponder
{
  if (![(UIView *)self isFirstResponder]&& (*(&self->_textFieldFlags + 1) & 1) == 0)
  {
    [(UITextField *)self _attachFieldEditor];
    v3 = *MEMORY[0x1E695EFF8];
    v4 = *(MEMORY[0x1E695EFF8] + 8);
    v5 = [(UITextField *)self _fieldEditor];
    [v5 setContentOffset:{v3, v4}];

    v6 = [(UITextField *)self _fieldEditor];
    [v6 setScrollEnabled:1];
  }
}

- (void)resignDropResponderWithDropPerformed:(BOOL)a3
{
  if (![(UIView *)self isFirstResponder]&& (*(&self->_textFieldFlags + 1) & 1) != 0)
  {
    v5 = [(UITextField *)self _fieldEditor];
    [v5 setScrollEnabled:0];

    v6 = 0;
    if (!a3)
    {
      v6 = ![(UITextField *)self isTextDragActive];
    }

    v7 = [(UITextField *)self _fieldEditor];
    [v7 _contentOffsetAnimationDuration];
    v9 = dispatch_time(0, (v8 * 1000000000.0));
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__UITextField_resignDropResponderWithDropPerformed___block_invoke;
    v10[3] = &unk_1E70F35E0;
    v10[4] = self;
    v11 = v6;
    dispatch_after(v9, MEMORY[0x1E69E96A0], v10);
  }

  [(UITextField *)self _updateSelectionGestures];
}

uint64_t __52__UITextField_resignDropResponderWithDropPerformed___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isFirstResponder];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _detachFieldEditorDiscardingEdits:v4 animated:1];
  }

  return result;
}

- (CGPoint)contentOffsetForSameViewDrops
{
  v2 = [(UITextField *)self _fieldEditor];
  [v2 contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setContentOffsetForSameViewDrops:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UITextField *)self _fieldEditor];
  [v5 setContentOffset:{x, y}];
}

- (void)droppingStarted
{
  *&self->_textFieldFlags |= 0x8000000uLL;
  [(UITextField *)self setNeedsLayout];
  if (![(UIView *)self isFirstResponder])
  {

    [(UITextField *)self _notifyDidBeginEditing];
  }
}

- (void)droppingFinished
{
  *&self->_textFieldFlags &= ~0x8000000uLL;
  [(UITextField *)self setNeedsLayout];
  if (![(UIView *)self isFirstResponder])
  {

    [(UITextField *)self _notifyDidEndEditing];
  }
}

- (_NSRange)_visibleRangeWithLayout:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(UITextField *)self textInputView];
  [v13 convertRect:self fromView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(UITextField *)self textInputView];
  [v22 bounds];
  v52.origin.x = v23;
  v52.origin.y = v24;
  v52.size.width = v25;
  v52.size.height = v26;
  v48.origin.x = v15;
  v48.origin.y = v17;
  v48.size.width = v19;
  v48.size.height = v21;
  v49 = CGRectIntersection(v48, v52);
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;

  [(UITextField *)self textContainerOrigin];
  v32 = -v31;
  v34 = -v33;
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v51 = CGRectOffset(v50, v32, v34);
  v35 = v51.origin.x;
  v36 = v51.origin.y;
  v37 = v51.size.width;
  v38 = v51.size.height;
  textLayoutController = self->_textLayoutController;
  v40 = [(UITextField *)self textContainer];
  v41 = [(_UITextLayoutController *)textLayoutController textRangeForBounds:v40 inTextContainer:v3 layoutIfNeeded:v35, v36, v37, v38];

  v42 = [(_UITextLayoutController *)self->_textLayoutController characterRangeForTextRange:v41];
  v44 = v43;

  v45 = v42;
  v46 = v44;
  result.length = v46;
  result.location = v45;
  return result;
}

- (CGRect)_boundingRectForRange:(id)a3
{
  [(_UITextLayoutController *)self->_textLayoutController boundingRectForRange:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_addTextCanvasViewAdjustingFrame:(BOOL)a3
{
  v5 = [(UITextField *)self visualStyle];
  v6 = [v5 parentViewForTextContentView];

  v7 = [(_UITextCanvas *)self->_textCanvasView superview];

  if (v7 != v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__UITextField__addTextCanvasViewAdjustingFrame___block_invoke;
    v8[3] = &unk_1E70F5AF0;
    v10 = a3;
    v8[4] = self;
    v9 = v6;
    [UIView performWithoutAnimation:v8];
    [(UIView *)self _invalidateBaselineConstraints];
  }
}

uint64_t __48__UITextField__addTextCanvasViewAdjustingFrame___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    [*(*(a1 + 32) + 968) removeFromSuperview];
    [*(a1 + 32) _textCanvasViewFrameIncludingContentInsetsFromFontsWhenNotContainedByFieldEditor];
    [*(*(a1 + 32) + 968) setFrame:?];
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 968);

  return [v2 addSubview:v3];
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    if (!self->_textDragDropSupport)
    {
      v5 = [UITextDragDropSupport installTextDragDropOnView:self];
      textDragDropSupport = self->_textDragDropSupport;
      self->_textDragDropSupport = v5;
    }

    [(UITextField *)self _createInteractionAssistant];
    v7 = [v8 _focusSystem];

    if (v7)
    {
      [(UITextField *)self _installSelectGestureRecognizer];
    }

    else
    {
      [(UITextField *)self _uninstallSelectGestureRecognizer];
    }

    v4 = v8;
  }
}

- (int64_t)_keyboardAppearance
{
  v2 = [UISystemInputViewController _canonicalTraitsForResponder:self];
  v3 = [v2 keyboardAppearance];

  return v3;
}

- (int64_t)_userInterfaceStyle
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  return v3;
}

- (BOOL)drawTextInRectIfNeeded:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ((dyld_program_sdk_at_least() & 1) != 0 || (v8 = [(UITextField *)self _fieldEditorAttached]))
  {
    [(UITextField *)self drawTextInRect:x, y, width, height];
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (_NSRange)_unobscuredSecureRange
{
  v2 = [(UIFieldEditor *)self->_fieldEditor _unobscuredSecureRange];
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)editMenuForTextRange:(id)a3 suggestedActions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UITextField *)self _implementsEditMenu])
  {
    v8 = [(_UITextLayoutController *)self->_textLayoutController characterRangeForTextRange:v6];
    v10 = v9;
    v11 = [(UITextField *)self delegate];
    v12 = [v11 textField:self editMenuForCharactersInRange:v8 suggestedActions:{v10, v7}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)willPresentEditMenuWithAnimator:(id)a3
{
  v7 = a3;
  v4 = [(UITextField *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UITextField *)self delegate];
    [v6 textField:self willPresentEditMenuWithAnimator:v7];
  }
}

- (void)willDismissEditMenuWithAnimator:(id)a3
{
  v8 = a3;
  v4 = [(UITextField *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UITextField *)self delegate];
    [v6 textField:self willDismissEditMenuWithAnimator:v8];
  }

  v7 = +[UIKeyboardImpl activeInstance];
  [v7 willDismissEditMenu];
}

- (void)_logWarningForMenuControllerUsage
{
  v2 = *(__UILogGetCategoryCachedImpl("Text", &_logWarningForMenuControllerUsage___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Using UIMenuController to add items into text menus is deprecated. Please implement the UITextFieldDelegate API textField:editMenuForCharactersInRange:suggestedActions: instead.", v3, 2u);
  }
}

- (void)_setOverridePasscodeStyle:(BOOL)a3
{
  textFieldFlags = self->_textFieldFlags;
  if (((((*&textFieldFlags & 0x100000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x100000;
    if (!a3)
    {
      v4 = 0;
    }

    self->_textFieldFlags = (*&textFieldFlags & 0xFFFFFFFFFFEFFFFFLL | v4);
    [(UITextField *)self setNeedsLayout];
  }
}

- (double)_passcodeStyleAlpha
{
  v2 = objc_getAssociatedObject(self, &_UITextFieldPasscodeStyleAlphaKey);
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.25;
  }

  return v5;
}

- (void)_setPasscodeStyleAlpha:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  objc_setAssociatedObject(self, &_UITextFieldPasscodeStyleAlphaKey, v4, 1);

  textCanvasView = self->_textCanvasView;

  [(_UITextCanvas *)textCanvasView setNeedsDisplay];
}

- (id)_contentSnapshot
{
  [(UIView *)self bounds];
  [(UIView *)self convertRect:self->_textCanvasView toView:?];
  v4 = v3;
  v6 = v5;
  [(_UITextCanvas *)self->_textCanvasView bounds];
  v8 = v7;
  v9 = [[UIGraphicsImageRenderer alloc] initWithBounds:0.0, v4, v7, v6];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __31__UITextField__contentSnapshot__block_invoke;
  v13[3] = &unk_1E70F6F38;
  v13[4] = self;
  v13[5] = 0;
  *&v13[6] = v4;
  *&v13[7] = v8;
  *&v13[8] = v6;
  v10 = [(UIGraphicsImageRenderer *)v9 imageWithActions:v13];
  v11 = [[UIImageView alloc] initWithImage:v10];

  return v11;
}

uint64_t __31__UITextField__contentSnapshot__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 968);
  [v1 convertRect:*(a1 + 40) fromView:{*(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  return [v1 drawRect:?];
}

- (void)_applyHighlightedAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(UITextField *)self _contentFloatingContainerView];
  [v5 setControlState:-[UIControl state](self animated:{"state"), v3}];
}

- (void)setSupportsAdaptiveImageGlyph:(BOOL)a3
{
  v3 = a3;
  *&self->_textFieldFlags |= 0x20000000000uLL;
  v4 = [(UITextField *)self _inputController];
  [v4 setSupportsAdaptiveImageGlyph:v3];
}

- (void)insertAdaptiveImageGlyph:(id)a3 replacementRange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextField *)self _inputController];
  [v8 insertAdaptiveImageGlyph:v7 replacementRange:v6];
}

- (UITextPasteDelegate)pasteDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pasteDelegate);

  return WeakRetained;
}

- (UITextDragDelegate)textDragDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textDragDelegate);

  return WeakRetained;
}

- (UITextDropDelegate)textDropDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textDropDelegate);

  return WeakRetained;
}

- (void)encodeRestorableStateWithCoder:(id)a3 includingSelectedTextAndDisplayedViewControllers:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UITextField *)self selectionRange];
  v9 = v8;
  v13.receiver = self;
  v13.super_class = UITextField;
  [(UIResponder *)&v13 encodeRestorableStateWithCoder:v6];
  if ([(UIView *)self isFirstResponder])
  {
    [v6 encodeBool:1 forKey:@"kTextFirstResponderKey"];
    [v6 encodeInt:v9 forKey:@"kTextSelectedTextLengthKey"];
    [v6 encodeInt:v7 forKey:@"kTextSelectedTextLocationKey"];
  }

  if (v4)
  {
    v10 = [(UITextField *)self selectedText];
    if ([v10 length])
    {
      [v6 encodeObject:v10 forKey:@"kTextSelectedTextKey"];
    }

    if ([(UITextField *)self _isDisplayingShortcutViewController])
    {
      [UIApp ignoreSnapshotOnNextApplicationLaunch];
    }

    if ([(UITextField *)self _isDisplayingReferenceLibraryViewController])
    {
      v11 = +[UIDevice currentDevice];
      v12 = [v11 userInterfaceIdiom];

      if (!v12)
      {
        [UIApp ignoreSnapshotOnNextApplicationLaunch];
      }

      [v6 encodeBool:1 forKey:@"kTextDisplayingReferenceLibraryViewControllerKey"];
    }

    if ([(UITextField *)self _isDisplayingShareViewController])
    {
      [UIApp ignoreSnapshotOnNextApplicationLaunch];
    }
  }
}

- (void)decodeRestorableStateWithCoder:(id)a3 includingSelectedTextAndDisplayedViewControllers:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = UITextField;
  [(UIResponder *)&v10 decodeRestorableStateWithCoder:v6];
  if ([v6 containsValueForKey:@"kTextFirstResponderKey"] && objc_msgSend(v6, "decodeBoolForKey:", @"kTextFirstResponderKey"))
  {
    [(UITextField *)self becomeFirstResponder];
  }

  if ([v6 containsValueForKey:@"kTextSelectedTextLengthKey"])
  {
    if ([v6 containsValueForKey:@"kTextSelectedTextLocationKey"])
    {
      v7 = [v6 decodeIntForKey:@"kTextSelectedTextLengthKey"];
      v8 = [v6 decodeIntForKey:@"kTextSelectedTextLocationKey"];
      [(UITextField *)self becomeFirstResponder];
      [(UITextField *)self setSelectionRange:v8, v7];
      if (v4)
      {
        v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"kTextSelectedTextKey"];
        if (v9)
        {
          [v6 decodeBoolForKey:@"kTextDisplayingShortcutViewControllerKey"];
          [v6 decodeBoolForKey:@"kTextDisplayingReferenceLibraryViewControllerKey"];
          [v6 decodeBoolForKey:@"kTextDisplayingShareViewControllerKey"];
        }
      }
    }
  }
}

- (id)_interactionState
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(UITextField *)self encodeRestorableStateWithCoder:v3 includingSelectedTextAndDisplayedViewControllers:0];
  v4 = [v3 encodedData];

  return v4;
}

- (void)_setInteractionState:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ACD0];
  v5 = a3;
  v10 = 0;
  v6 = [[v4 alloc] initForReadingFromData:v5 error:&v10];

  v7 = v10;
  if (v6)
  {
    [(UITextField *)self decodeRestorableStateWithCoder:v6 includingSelectedTextAndDisplayedViewControllers:0];
  }

  else
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Text", &_setInteractionState____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "[UITextField(_UIInteractionStateRestorable) _setInteractionState:]";
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%s: Error decoding interaction state (%@)", buf, 0x16u);
      }
    }
  }
}

- (BOOL)automaticallyAdjustsWritingDirection
{
  v2 = [(UITextField *)self _inputController];
  v3 = [v2 automaticallyAdjustsWritingDirection];

  return v3;
}

- (void)setAutomaticallyAdjustsWritingDirection:(BOOL)a3
{
  v3 = a3;
  v4 = [(UITextField *)self _inputController];
  [v4 setAutomaticallyAdjustsWritingDirection:v3];
}

- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6
{
  if ((a3 - 5) > 1)
  {
    v8.receiver = self;
    v8.super_class = UITextField;
    [(UIView *)&v8 _autolayoutSpacingAtEdge:*&a3 forAttribute:a4 inContainer:a5 isGuide:a6];
  }

  else
  {
    _UIViewBaselineToEdgeSpacing([(UITextField *)self _fontInfoForBaselineSpacing], a3);

    UICeilToViewScale(self);
  }

  return result;
}

- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 nextToNeighbor:(id)a5 edge:(int)a6 attribute:(int64_t)a7 multiplier:(double)a8
{
  v10 = *&a6;
  v13 = *&a3;
  if ((a3 - 5) > 1)
  {
    goto LABEL_12;
  }

  v15 = a4 - 11;
  if (os_variant_has_internal_diagnostics())
  {
    if (v15 < 2)
    {
      goto LABEL_4;
    }

    v17 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "UIKit problem: invalid argument for internal layout spacing method", buf, 2u);
    }

LABEL_12:
    v19.receiver = self;
    v19.super_class = UITextField;
    [(UIView *)&v19 _autolayoutSpacingAtEdge:v13 forAttribute:a4 nextToNeighbor:a5 edge:v10 attribute:a7 multiplier:a8];
    return result;
  }

  if (v15 >= 2)
  {
    v18 = *(__UILogGetCategoryCachedImpl("Assert", &_autolayoutSpacingAtEdge_forAttribute_nextToNeighbor_edge_attribute_multiplier____s_category_1023) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "UIKit problem: invalid argument for internal layout spacing method", buf, 2u);
    }

    goto LABEL_12;
  }

LABEL_4:

  _UIViewBaselineSpacing(self, a5, v13);
  return result;
}

@end