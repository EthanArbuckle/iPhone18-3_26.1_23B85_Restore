@interface UITextField
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size;
- (BOOL)_allowsChangingFirstResponderForFocusUpdateWithContext:(id)context;
- (BOOL)_canDrawContent;
- (BOOL)_delegateShouldBeginEditing;
- (BOOL)_delegateShouldChangeCharactersInTextStorageRanges:(id)ranges replacementString:(id)string delegateCares:(BOOL *)cares;
- (BOOL)_delegateShouldClear;
- (BOOL)_delegateShouldEndEditing;
- (BOOL)_delegateShouldScrollToVisibleWhenBecomingFirstResponder;
- (BOOL)_finishResignFirstResponder;
- (BOOL)_hasContent;
- (BOOL)_hasFloatingFieldEditor;
- (BOOL)_implementsEditMenu;
- (BOOL)_inPopover;
- (BOOL)_inVibrantContentView;
- (BOOL)_isAccessoryViewAnimatable:(id)animatable;
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
- (BOOL)_shouldAnimateTransitionForAccessoryView:(id)view;
- (BOOL)_shouldCollectAsKeyView;
- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)engine;
- (BOOL)_shouldObscureInput;
- (BOOL)_shouldResignOnEditingDidEndOnExit;
- (BOOL)_shouldShrinkPlaceholderToFitForAccessibility;
- (BOOL)_shouldUnobscureTextWithContentCover;
- (BOOL)_showsBackgroundCoverView;
- (BOOL)_showsClearButton:(BOOL)button;
- (BOOL)_showsClearButtonWhenNonEmpty:(BOOL)empty;
- (BOOL)_showsContentCoverView;
- (BOOL)_showsLeftView;
- (BOOL)_showsRightView;
- (BOOL)_showsTrailingView;
- (BOOL)_supportsImagePasteCached;
- (BOOL)_textNeedsSanitizing:(id)sanitizing;
- (BOOL)_wantsBaselineUpdatingFollowingConstraintsPass;
- (BOOL)automaticallyAdjustsWritingDirection;
- (BOOL)becomeFirstResponder;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canBecomeFocused;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)drawTextInRectIfNeeded:(CGRect)needed;
- (BOOL)fieldEditor:(id)editor shouldInsertText:(id)text replacingRanges:(id)ranges;
- (BOOL)fieldEditorShouldExtendCaretHeight:(id)height;
- (BOOL)hasMarkedText;
- (BOOL)hasSelection;
- (BOOL)hasText;
- (BOOL)isEditing;
- (BOOL)isTextDragActive;
- (BOOL)isTextDropActive;
- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText;
- (BOOL)keyboardInput:(id)input shouldReplaceTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)keyboardInput:(id)input shouldReplaceTextInRanges:(id)ranges replacementText:(id)text;
- (BOOL)keyboardInputChanged:(id)changed;
- (BOOL)keyboardInputShouldDelete:(id)delete;
- (BOOL)resignFirstResponder;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)supportsAdaptiveImageGlyph;
- (CGPoint)_originForTextFieldLabel:(id)label;
- (CGPoint)_scrollOffset;
- (CGPoint)constrainedPoint:(CGPoint)point;
- (CGPoint)contentOffsetForSameViewDrops;
- (CGPoint)drawingScale;
- (CGPoint)textContainerOrigin;
- (CGRect)_availableTextRectExcludingButtonsForBounds:(CGRect)bounds;
- (CGRect)_availableTextRectForBounds:(CGRect)bounds forEditing:(BOOL)editing;
- (CGRect)_backgroundBounds;
- (CGRect)_baselineLeftViewRectForBounds:(CGRect)bounds;
- (CGRect)_boundingRectForRange:(id)range;
- (CGRect)_clipRectForFadedEdges;
- (CGRect)_prefixFrame;
- (CGRect)_responderExternalTouchRectForWindow:(id)window;
- (CGRect)_responderSelectionRectForWindow:(id)window;
- (CGRect)_selectionClipRect;
- (CGRect)_suffixFrame;
- (CGRect)_textCanvasViewFrameIncludingContentInsetsFromFontsWhenNotContainedByFieldEditor;
- (CGRect)adjustedCaretRectForCaretRect:(CGRect)rect;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)clearButtonRect;
- (CGRect)clearButtonRectForBounds:(CGRect)bounds;
- (CGRect)closestCaretRectInMarkedTextRangeForPoint:(CGPoint)point;
- (CGRect)editRect;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)firstRectForRange:(id)range;
- (CGRect)frameForDictationResultPlaceholder:(id)placeholder;
- (CGRect)iconRect;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (CGSize)_clearButtonSize:(CGRect)size;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)_leftViewOffset;
- (CGSize)_rightViewOffset;
- (CGSize)_textSize;
- (CGSize)_textSizeUsingFullFontSize:(BOOL)size;
- (CGSize)_visionOverrideNaturalHeight:(CGSize)height;
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
- (UIEdgeInsets)_visionOverrideHorizontalInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)textContainerInset;
- (UIFieldEditor)_fieldEditor;
- (UITextBorderStyle)borderStyle;
- (UITextDragDelegate)textDragDelegate;
- (UITextDropDelegate)textDropDelegate;
- (UITextField)initWithCoder:(id)coder;
- (UITextField)initWithFrame:(CGRect)frame;
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
- (_NSRange)_visibleRangeWithLayout:(BOOL)layout;
- (_NSRange)fieldEditor:(id)editor willChangeSelectionFromCharacterRange:(_NSRange)range toCharacterRange:(_NSRange)characterRange;
- (_NSRange)insertFilteredText:(id)text;
- (_NSRange)selectionRange;
- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute inContainer:(id)container isGuide:(BOOL)guide;
- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute nextToNeighbor:(id)neighbor edge:(int)a6 attribute:(int64_t)a7 multiplier:(double)multiplier;
- (double)_backgroundStrokeWidth;
- (double)_baselineOffsetForLast:(BOOL)last autolayoutOnly:(BOOL)only;
- (double)_clearButtonMarginX;
- (double)_clearButtonPadX;
- (double)_fieldEditorHeight;
- (double)_fullFontSize;
- (double)_passcodeStyleAlpha;
- (double)_roundedRectBackgroundCornerRadius;
- (double)actualMinimumFontSize;
- (float)_marginTop;
- (float)_marginTopForBounds:(CGRect)bounds;
- (float)_newFontSize:(float)size maxSize:(float)maxSize;
- (id)_NSTextRangeFromNSRange:(_NSRange)range;
- (id)_activityItemsConfigurationAtLocation:(CGPoint)location;
- (id)_attributedStringForInsertionOfAttributedString:(id)string;
- (id)_attributedText;
- (id)_backgroundFillColor;
- (id)_backgroundStrokeColor;
- (id)_baselineCalculatorSourceCoordinateSpace;
- (id)_clearButtonImageForState:(unint64_t)state;
- (id)_contentSnapshot;
- (id)_copyFont:(id)font newSize:(float)size maxSize:(float)maxSize;
- (id)_defaultFont;
- (id)_defaultPromptString;
- (id)_dictationInterpretations;
- (id)_editingProcessor;
- (id)_effectivePasteConfiguration;
- (id)_encodableSubviews;
- (id)_fieldEditorHostAllowingCreation:(BOOL)creation;
- (id)_implicitPasteConfigurationClasses;
- (id)_initWithFrame:(CGRect)frame textLayoutManagerEnabled:(BOOL)enabled;
- (id)_inputController;
- (id)_interactionState;
- (id)_internalTextLayoutController;
- (id)_placeholderColor;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context;
- (id)_preferredMetricsProvider;
- (id)_proxyTextInput;
- (id)_replaceRange:(id)range withAttributedText:(id)text updatingSelection:(BOOL)selection;
- (id)_systemBackgroundView;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_text;
- (id)_textGeometry;
- (id)_tvTypingAttributes;
- (id)_uiktest_placeholderLabelColor;
- (id)_viewForLoweringBaselineLayoutAttribute:(int)attribute;
- (id)_visualSelectionRangeForExtent:(id)extent forPoint:(CGPoint)point fromPosition:(id)position inDirection:(int64_t)direction;
- (id)annotatedSubstringForRange:(id)range;
- (id)attributedTextInRange:(id)range;
- (id)automaticallySelectedOverlay;
- (id)backgroundColor;
- (id)characterRangeAtPoint:(CGPoint)point;
- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction;
- (id)clearButton;
- (id)closestPositionToPoint:(CGPoint)point;
- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range;
- (id)createPlaceholderLabelWithFont:(id)font andTextAlignment:(int64_t)alignment;
- (id)createTextLabelWithTextColor:(id)color;
- (id)customOverlayContainer;
- (id)defaultClearButtonImageForState:(unint64_t)state;
- (id)delegate;
- (id)documentFragmentForPasteboardItemAtIndex:(int64_t)index;
- (id)editMenuForTextRange:(id)range suggestedActions:(id)actions;
- (id)fieldEditor:(id)editor willChangeSelectionFromCharacterRanges:(id)ranges toCharacterRanges:(id)characterRanges;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)insertDictationResultPlaceholder;
- (id)insertTextPlaceholderWithSize:(CGSize)size;
- (id)largeContentTitle;
- (id)metadataDictionariesForDictationResults;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)obtainSelectionGrabberSuppressionAssertion;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset;
- (id)positionFromPosition:(id)position offset:(int64_t)offset;
- (id)positionWithinRange:(id)range farthestInDirection:(int64_t)direction;
- (id)rangeWithTextAlternatives:(id *)alternatives atPosition:(id)position;
- (id)selectedAttributedText;
- (id)selectedText;
- (id)selectionContainerView;
- (id)selectionRectsForRange:(id)range;
- (id)supportedPasteboardTypesForCurrentSelection;
- (id)textInRange:(id)range;
- (id)textInputTraits;
- (id)textLabel;
- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition;
- (id)textStylingAtPosition:(id)position inDirection:(int64_t)direction;
- (id)undoManager;
- (id)valueForKey:(id)key;
- (id)valueForUndefinedKey:(id)key;
- (id)willGenerateCancelPreview;
- (int)textSelectionBehavior;
- (int64_t)_blurEffectStyle;
- (int64_t)_blurEffectStyleForAppearance;
- (int64_t)_currentTextAlignment;
- (int64_t)_keyboardAppearance;
- (int64_t)_systemDefaultFocusGroupPriority;
- (int64_t)_userInterfaceStyle;
- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(int64_t)direction;
- (int64_t)comparePosition:(id)position toPosition:(id)toPosition;
- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition;
- (unint64_t)_textLengthToDeleteBeforeSelectedRangeForSmartDelete;
- (void)__resumeBecomeFirstResponder;
- (void)_activateSelectionView;
- (void)_addFieldEditorToView;
- (void)_addShortcut:(id)shortcut;
- (void)_addTextCanvasViewAdjustingFrame:(BOOL)frame;
- (void)_adjustFontForAccessibilityTraits:(BOOL)traits;
- (void)_applicableContentOutsetsFromFontsOversize:(int)oversize extremeSizing:;
- (void)_applyHighlightedAnimated:(BOOL)animated;
- (void)_attachFieldEditor;
- (void)_backgroundProviderClassOrImageBackgroundProviderClass:(void *)class;
- (void)_becomeFirstResponder;
- (void)_clearButtonClicked:(id)clicked;
- (void)_clearSelectionUI;
- (void)_contentCoverStateDidChange;
- (void)_createInteractionAssistant;
- (void)_define:(id)_define;
- (void)_deleteBackwardAndNotify:(BOOL)notify;
- (void)_detachFieldEditorDiscardingEdits:(BOOL)edits animated:(BOOL)animated;
- (void)_detectCustomDrawing;
- (void)_didAttachFieldEditor;
- (void)_didChangeSecureTextEntry;
- (void)_didDetachFieldEditor;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_didUpdateAfterDetachingFieldEditor;
- (void)_drawTextInRect:(CGRect)rect forLabel:(id)label;
- (void)_enabledDidChangeAnimated:(BOOL)animated;
- (void)_encodeBackgroundColorWithCoder:(id)coder;
- (void)_ensureSelectionContainerViewSubviewOrdering;
- (void)_forceObscureAllText;
- (void)_highlightedDidChangeAnimated:(BOOL)animated;
- (void)_increaseContrastSettingChanged:(id)changed;
- (void)_initIncreasedContrastNotifications;
- (void)_initTextCanvasView;
- (void)_initTextLayoutController;
- (void)_initTextStorage;
- (void)_initTraitChangeRegistrations;
- (void)_initialScrollDidFinish:(id)finish;
- (void)_insertAttributedText:(id)text withAnimation:(int64_t)animation completion:(id)completion;
- (void)_insertAttributedTextWithoutClosingTyping:(id)typing;
- (void)_installSelectGestureRecognizer;
- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector;
- (void)_invalidateAfterUpdatingEditingAttributes;
- (void)_invalidateAllGlyphsAndTextLayout;
- (void)_invalidateBackgroundProviderForced:(BOOL)forced;
- (void)_invalidateCachedDefaultClearButtonImages;
- (void)_invalidateDefaultFont;
- (void)_invalidateDefaultFullFontSize;
- (void)_invalidateMetricsProvider;
- (void)_invalidatePasscodeStyleFromStyle:(BOOL)style;
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
- (void)_pasteSessionDidFinish:(id)finish;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_promptForReplace:(id)replace;
- (void)_propagateCuiProperties;
- (void)_removeFieldEditorAndHost;
- (void)_replaceRange:(id)range withAttributedText:(id)text usingAnimation:(int64_t)animation completion:(id)completion;
- (void)_replaceRangeUsingColorWipe:(id)wipe withAttributedText:(id)text completion:(id)completion;
- (void)_resetSelectionUI;
- (void)_resignFirstResponder;
- (void)_sanitizeText:(id)text;
- (void)_scrollRangeToVisible:(_NSRange)visible animated:(BOOL)animated;
- (void)_selectGestureChanged:(id)changed;
- (void)_selectionMayChange:(id)change;
- (void)_setActualLeftView:(id)view;
- (void)_setActualLeftViewMode:(int64_t)mode;
- (void)_setActualRightView:(id)view;
- (void)_setActualRightViewMode:(int64_t)mode;
- (void)_setAttributedPlaceholder:(id)placeholder;
- (void)_setAttributedText:(id)text setCaretSelectionAfterText:(BOOL)afterText;
- (void)_setAttributedTextOnFieldEditor:(id)editor setCaretSelectionAfterText:(BOOL)text;
- (void)_setBackgroundCoverView:(id)view;
- (void)_setBackgroundCoverViewMode:(int64_t)mode;
- (void)_setBackgroundFillColor:(id)color;
- (void)_setBackgroundProvider:(id)provider;
- (void)_setBackgroundStrokeColor:(id)color;
- (void)_setBackgroundStrokeWidth:(double)width;
- (void)_setBlurEnabled:(BOOL)enabled;
- (void)_setContentCoverUnsecuresText:(BOOL)text;
- (void)_setContentCoverView:(id)view;
- (void)_setContentCoverViewMode:(int64_t)mode;
- (void)_setCuiCatalog:(id)catalog;
- (void)_setCuiStyleEffectConfiguration:(id)configuration;
- (void)_setCursorAccessories:(id)accessories;
- (void)_setDisableFocus:(BOOL)focus;
- (void)_setEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)_setExtremeSizingEnabled:(BOOL)enabled;
- (void)_setForcesClearButtonHighContrastAppearance:(BOOL)appearance;
- (void)_setForegroundViewsAlpha:(double)alpha;
- (void)_setFullFontSize:(id)size;
- (void)_setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)_setInteractionState:(id)state;
- (void)_setLeadingPadding:(double)padding;
- (void)_setLeftViewOffset:(CGSize)offset;
- (void)_setMetricsProvider:(id)provider;
- (void)_setOverridePasscodeStyle:(BOOL)style;
- (void)_setOverridePlaceholder:(id)placeholder alignment:(int64_t)alignment;
- (void)_setPadding:(UIEdgeInsets)padding;
- (void)_setPasscodeStyleAlpha:(double)alpha;
- (void)_setPlaceholder:(id)placeholder;
- (void)_setPrefix:(id)prefix;
- (void)_setRightViewOffset:(CGSize)offset;
- (void)_setRoundedRectBackgroundCornerRadius:(double)radius;
- (void)_setSelectedRanges:(id)ranges;
- (void)_setShouldDisplayDictationPlaceholderMessage:(BOOL)message;
- (void)_setShouldUpdatePlaceholderTextAlignmentWhenOverridden:(BOOL)overridden;
- (void)_setSuffix:(id)suffix withColor:(id)color;
- (void)_setSupportsKeyboardNavigationForSuggestions:(BOOL)suggestions;
- (void)_setSuppressContentChangedNotification:(BOOL)notification;
- (void)_setTextColor:(id)color;
- (void)_setTextInRange:(_NSRange)range replacementText:(id)text;
- (void)_setTrailingPadding:(double)padding;
- (void)_setVisualEffectViewEnabled:(BOOL)enabled backgroundColor:(id)color;
- (void)_setupDefaultStyleEffectConfiguration;
- (void)_share:(id)_share;
- (void)_showSymbolAnimatableLeftViewNowIfNeeded;
- (void)_showSymbolAnimatableRightViewNowIfNeeded;
- (void)_sizeChanged:(BOOL)changed;
- (void)_stopObservingFieldEditorScroll;
- (void)_syncTypingAttributesWithDefaultAttribute:(id)attribute;
- (void)_transitionFromAccessoryView:(id)view toView:(id)toView allowingAnimation:(BOOL)animation;
- (void)_translate:(id)_translate;
- (void)_transliterateChinese:(id)chinese;
- (void)_tvUpdateAppearanceForUserInterfaceStyle;
- (void)_tvUpdateTextColor;
- (void)_uninstallSelectGestureRecognizer;
- (void)_updateAutosizeStyleIfNeeded;
- (void)_updateBaselineInformationDependentOnBoundsAllowingInvalidation:(BOOL)invalidation;
- (void)_updateButtonsAllowingAnimation:(BOOL)animation;
- (void)_updateForTintColor;
- (void)_updateLabel;
- (void)_updateLabelAppearance;
- (void)_updatePlaceholderPosition;
- (void)_updateSelectionGestures;
- (void)_updateSuffix:(id)suffix;
- (void)_updateTextEffectsConfigurationIfNeeded;
- (void)_willUpdateAfterDetachingFieldEditor;
- (void)_windowBecameKey;
- (void)_windowResignedKey;
- (void)addTextAlternatives:(id)alternatives;
- (void)becomeDropResponder;
- (void)beginFloatingCursorAtPoint:(CGPoint)point;
- (void)beginSelectionChange;
- (void)cancelAutoscroll;
- (void)cancelTrackingWithEvent:(id)event;
- (void)captureTextFromCamera:(id)camera;
- (void)clearText;
- (void)copy:(id)copy;
- (void)createPlaceholderIfNecessary;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder includingSelectedTextAndDisplayedViewControllers:(BOOL)controllers;
- (void)decreaseSize:(id)size;
- (void)deleteBackward;
- (void)didGenerateCancelPreview:(id)preview;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)draggingFinished:(id)finished;
- (void)drawRect:(CGRect)rect;
- (void)droppingFinished;
- (void)droppingStarted;
- (void)encodeRestorableStateWithCoder:(id)coder includingSelectedTextAndDisplayedViewControllers:(BOOL)controllers;
- (void)encodeWithCoder:(id)coder;
- (void)endFloatingCursor;
- (void)endSelectionChange;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)fieldEditorDidChange:(id)change;
- (void)fieldEditorDidChangeSelection:(id)selection;
- (void)finishedSettingPlaceholder;
- (void)finishedSettingTextOrAttributedText;
- (void)floatingContentView:(id)view isTransitioningFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)increaseSize:(id)size;
- (void)insertAdaptiveImageGlyph:(id)glyph replacementRange:(id)range;
- (void)insertAttributedText:(id)text;
- (void)insertDictationResult:(id)result withCorrectionIdentifier:(id)identifier;
- (void)insertInputSuggestion:(id)suggestion;
- (void)insertText:(id)text;
- (void)insertText:(id)text alternatives:(id)alternatives style:(int64_t)style;
- (void)interactionTintColorDidChange;
- (void)invalidateDropCaret;
- (void)keyboardInputChangedSelection:(id)selection;
- (void)layoutSubviews;
- (void)makeTextWritingDirectionLeftToRight:(id)right;
- (void)makeTextWritingDirectionNatural:(id)natural;
- (void)makeTextWritingDirectionRightToLeft:(id)left;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)paste:(id)paste;
- (void)pasteAndMatchStyle:(id)style;
- (void)pasteItemProviders:(id)providers;
- (void)performCancelAnimations;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)removeAnnotation:(id)annotation forRange:(id)range;
- (void)removeDictationResultPlaceholder:(id)placeholder willInsertResult:(BOOL)result;
- (void)removeEmojiAlternatives;
- (void)removeFromSuperview;
- (void)removeTextPlaceholder:(id)placeholder;
- (void)replace:(id)replace;
- (void)replaceRange:(id)range withAnnotatedString:(id)string relativeReplacementRange:(_NSRange)replacementRange;
- (void)replaceRange:(id)range withAttributedText:(id)text;
- (void)replaceRange:(id)range withText:(id)text;
- (void)replaceRangeWithTextWithoutClosingTyping:(id)typing replacementText:(id)text;
- (void)resignDropResponderWithDropPerformed:(BOOL)performed;
- (void)sanitizeAttributedText:(id)text;
- (void)scrollTextFieldToVisibleIfNecessary;
- (void)select:(id)select;
- (void)selectAll;
- (void)selectAll:(id)all;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)adjustsFontSizeToFitWidth;
- (void)setAllowsAttachments:(BOOL)attachments;
- (void)setAllowsEditingTextAttributes:(BOOL)allowsEditingTextAttributes;
- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setAttributedPlaceholder:(NSAttributedString *)attributedPlaceholder;
- (void)setAttributedPlaceholders:(id)placeholders;
- (void)setAttributes:(id)attributes range:(_NSRange)range;
- (void)setAutomaticallyAdjustsWritingDirection:(BOOL)direction;
- (void)setBackground:(UIImage *)background;
- (void)setBackgroundColor:(id)color;
- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range;
- (void)setBecomesFirstResponderOnClearButtonTap:(BOOL)tap;
- (void)setBorderStyle:(UITextBorderStyle)borderStyle;
- (void)setBounds:(CGRect)bounds;
- (void)setClearButtonMode:(UITextFieldViewMode)clearButtonMode;
- (void)setClearButtonOffset:(CGSize)offset;
- (void)setClearButtonStyle:(int64_t)style;
- (void)setClearingBehavior:(int64_t)behavior;
- (void)setClearsOnInsertion:(BOOL)clearsOnInsertion;
- (void)setClearsPlaceholderOnBeginEditing:(BOOL)editing;
- (void)setClipsToBounds:(BOOL)bounds;
- (void)setContentOffsetForSameViewDrops:(CGPoint)drops;
- (void)setContentVerticalAlignment:(int64_t)alignment;
- (void)setContinuousSpellCheckingEnabled:(BOOL)enabled;
- (void)setControlSize:(int)size;
- (void)setDefaultTextAttributes:(NSDictionary *)defaultTextAttributes;
- (void)setDelegate:(id)delegate;
- (void)setDevicePasscodeEntry:(BOOL)entry;
- (void)setDisabledBackground:(UIImage *)disabledBackground;
- (void)setDisplaySecureEditsUsingPlainText:(BOOL)text;
- (void)setDisplaySecureTextUsingPlainText:(BOOL)text;
- (void)setFont:(UIFont *)font;
- (void)setFont:(id)font fullFontSize:(id)size ambientOnly:(BOOL)only;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIcon:(id)icon;
- (void)setInputAccessoryView:(UIView *)inputAccessoryView;
- (void)setInputAssistantItem:(id)item;
- (void)setInputDelegate:(id)delegate;
- (void)setKeyboardAppearance:(int64_t)appearance;
- (void)setLabel:(id)label;
- (void)setLabelOffset:(float)offset;
- (void)setLeftView:(UIView *)leftView;
- (void)setLeftViewMode:(UITextFieldViewMode)leftViewMode;
- (void)setLinkTextAttributes:(id)attributes;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setMarkedTextStyle:(id)style;
- (void)setMinimumFontSize:(CGFloat)minimumFontSize;
- (void)setNeedsLayout;
- (void)setPasswordRules:(id)rules;
- (void)setPlaceholder:(NSString *)placeholder;
- (void)setPlaceholders:(id)placeholders;
- (void)setProgress:(float)progress;
- (void)setRecentsAccessoryView:(id)view;
- (void)setRightView:(UIView *)rightView;
- (void)setRightViewMode:(UITextFieldViewMode)rightViewMode;
- (void)setSecureTextEntry:(BOOL)entry;
- (void)setSelectedTextRange:(id)range;
- (void)setSelectionRange:(_NSRange)range;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setShadowBlur:(double)blur;
- (void)setShadowColor:(id)color;
- (void)setShadowOffset:(CGSize)offset;
- (void)setSizingRule:(int64_t)rule;
- (void)setSupportsAdaptiveImageGlyph:(BOOL)glyph;
- (void)setText:(NSString *)text;
- (void)setTextAlignment:(NSTextAlignment)textAlignment;
- (void)setTextCentersVertically:(BOOL)vertically;
- (void)setTextSelectionBehavior:(int)behavior;
- (void)setTypingAttributes:(NSDictionary *)typingAttributes;
- (void)setUndoEnabled:(BOOL)enabled;
- (void)startAutoscroll:(CGPoint)autoscroll;
- (void)takeTraitsFrom:(id)from;
- (void)tintColorDidChange;
- (void)toggleBoldface:(id)boldface;
- (void)toggleItalics:(id)italics;
- (void)toggleUnderline:(id)underline;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFloatingCursorAtPoint:(CGPoint)point;
- (void)updateFloatingCursorAtPoint:(CGPoint)point animated:(BOOL)animated;
- (void)validateCommand:(id)command;
- (void)willDismissEditMenuWithAnimator:(id)animator;
- (void)willMoveToWindow:(id)window;
- (void)willPresentEditMenuWithAnimator:(id)animator;
@end

@implementation UITextField

- (Class)_preferredBackgroundProviderClass
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    if (!dyld_program_sdk_at_least() || (_UIAquaDuckVisualProvidersEnabled() & 1) == 0)
    {
      _UISolariumEnabled();
    }

    goto LABEL_10;
  }

  traitCollection2 = [(UIView *)self traitCollection];
  if ([traitCollection2 userInterfaceIdiom] == 2)
  {

LABEL_10:
    _defaultiOSBackgroundProviderClass = objc_opt_class();
    goto LABEL_11;
  }

  traitCollection3 = [(UIView *)self traitCollection];
  userInterfaceIdiom2 = [traitCollection3 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 8 || [(UITextField *)self _isPasscodeStyle])
  {
    goto LABEL_10;
  }

  _defaultiOSBackgroundProviderClass = [(UITextField *)self _defaultiOSBackgroundProviderClass];
LABEL_11:

  return [(UITextField *)self _backgroundProviderClassOrImageBackgroundProviderClass:_defaultiOSBackgroundProviderClass];
}

- (void)_invalidateMetricsProvider
{
  _preferredMetricsProvider = [(UITextField *)self _preferredMetricsProvider];
  v5 = _preferredMetricsProvider;
  if (_preferredMetricsProvider)
  {
    [(UITextField *)self _setMetricsProvider:_preferredMetricsProvider];
  }

  else
  {
    v4 = objc_opt_new();
    [(UITextField *)self _setMetricsProvider:v4];
  }
}

- (id)_preferredMetricsProvider
{
  _backgroundProvider = [(UITextField *)self _backgroundProvider];
  preferredMetricsProvider = [_backgroundProvider preferredMetricsProvider];

  if (!preferredMetricsProvider)
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
        preferredMetricsProvider = v7;
        goto LABEL_14;
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = currentHandler;
    v10 = self->_preferredBorderStyle;
    if (v10 > 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E7126430[v10];
    }

    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextField.m" lineNumber:5274 description:{@"No metrics provider for border style %@.", v11}];

    preferredMetricsProvider = 0;
  }

LABEL_14:

  return preferredMetricsProvider;
}

- (void)_initTextStorage
{
  v3 = objc_opt_new();
  defaultTextColor = [(_UITextFieldVisualStyle *)self->_visualStyle defaultTextColor];
  [(_UICascadingTextStorage *)v3 setTextColor:defaultTextColor];

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

    firstTextContainer = [(_UITextLayoutController *)self->_textLayoutController firstTextContainer];
    textContainer = self->_textContainer;
    self->_textContainer = firstTextContainer;

    textLayoutManager = [(NSTextContainer *)self->_textContainer textLayoutManager];
    [textLayoutManager setUsesFontLeading:0];

    textLayoutManager2 = [(NSTextContainer *)self->_textContainer textLayoutManager];
    [textLayoutManager2 setLimitsLayoutForSuspiciousContents:1];

    keyboardType = [(UITextField *)self keyboardType];
    LODWORD(textLayoutManager2) = (keyboardType > 0xB) | (0x6CFu >> keyboardType);
    textLayoutManager3 = [(NSTextContainer *)self->_textContainer textLayoutManager];
    [textLayoutManager3 setResolvesNaturalAlignmentWithBaseWritingDirection:textLayoutManager2 & 1];
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
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__increaseContrastSettingChanged_ name:@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__increaseContrastSettingChanged_ name:@"UIAccessibilityReduceTransparencyStatusDidChangeNotification" object:0];
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
  _fieldEditor = [(UITextField *)self _fieldEditor];
  _textLayoutController = [_fieldEditor _textLayoutController];

  textStorage = self->_textStorage;

  return textStorage;
}

- (void)_setupDefaultStyleEffectConfiguration
{
  if (dyld_program_sdk_at_least())
  {
    v3 = objc_alloc_init(MEMORY[0x1E6999430]);
    traitCollection = [(UIView *)self traitCollection];
    _styleEffectAppearanceName = [(UITraitCollection *)traitCollection _styleEffectAppearanceName];
    [v3 setAppearanceName:_styleEffectAppearanceName];

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
  textInputTraits = [(UITextField *)self textInputTraits];
  v4 = [textInputTraits keyboardAppearance] == 127 && (*(&self->_textFieldFlags + 2) & 0x10) == 0;

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = currentHandler;
    v7 = self->_preferredBorderStyle;
    if (v7 > 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = off_1E7126430[v7];
    }

    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextField.m" lineNumber:5258 description:{@"No background provider for border style %@.", v8}];

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
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  result = 3.0;
  if (userInterfaceIdiom == 6)
  {
    return 0.0;
  }

  return result;
}

- (void)_invalidateAllGlyphsAndTextLayout
{
  textLayoutController = [(UITextField *)self textLayoutController];
  documentRange = [textLayoutController documentRange];
  if (([documentRange isEmpty] & 1) == 0)
  {
    [textLayoutController invalidateLayoutForRange:documentRange];
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
    superview = [(UIView *)self superview];
    v6 = superview;
    if (superview && (*(superview + 95) & 0x40) == 0)
    {
      superview2 = [(UIView *)self superview];
      [superview2 setNeedsLayout];
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
    insertionPointColor = [(UITextInputTraits *)self->_nonAtomTraits insertionPointColor];
    [(UITextInputTraits *)v7 setInsertionPointColor:insertionPointColor];

    v9 = self->_traits;
    selectionHighlightColor = [(UITextInputTraits *)self->_nonAtomTraits selectionHighlightColor];
    [(UITextInputTraits *)v9 setSelectionHighlightColor:selectionHighlightColor];

    v11 = self->_traits;
    selectionDragDotImage = [(UITextInputTraits *)self->_nonAtomTraits selectionDragDotImage];
    [(UITextInputTraits *)v11 setSelectionDragDotImage:selectionDragDotImage];

    [(UITextInputTraits *)self->_traits setTextLoupeVisibility:[(UITextInputTraits *)self->_nonAtomTraits textLoupeVisibility]];
  }

  v13 = self->_traits;

  return v13;
}

- (id)_inputController
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  _inputController = [_fieldEditor _inputController];

  return _inputController;
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
  isSecureTextEntry = [(UITextField *)self isSecureTextEntry];
  if (isSecureTextEntry)
  {
    if (([(UITextField *)self displaySecureTextUsingPlainText]& 1) != 0)
    {
      LOBYTE(isSecureTextEntry) = 0;
    }

    else
    {
      LOBYTE(isSecureTextEntry) = ![(UITextField *)self _shouldUnobscureTextWithContentCover];
    }
  }

  return isSecureTextEntry;
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
  overridingGetBackgroundColor = [(_UITextFieldBackgroundProvider *)self->_backgroundProvider overridingGetBackgroundColor];
  v4 = overridingGetBackgroundColor;
  if (overridingGetBackgroundColor)
  {
    backgroundColor = overridingGetBackgroundColor;
LABEL_3:
    backgroundColor2 = backgroundColor;
    goto LABEL_6;
  }

  _contentView = [(UITextField *)self _contentView];

  if (_contentView == self)
  {
    v10.receiver = self;
    v10.super_class = UITextField;
    backgroundColor = [(UIView *)&v10 backgroundColor];
    goto LABEL_3;
  }

  _contentView2 = [(UITextField *)self _contentView];
  backgroundColor2 = [_contentView2 backgroundColor];

LABEL_6:

  return backgroundColor2;
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
  _text = [(UITextField *)self _text];
  v3 = [_text length] != 0;

  return v3;
}

- (id)_text
{
  if (*(&self->_textFieldFlags + 1))
  {
    _fieldEditor = [(UITextField *)self _fieldEditor];
    text = [_fieldEditor text];
  }

  else
  {
    text = [(NSConcreteTextStorage *)self->_textStorage string];
  }

  return text;
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
  _fieldEditor = [(UITextField *)self _fieldEditor];
  beginningOfDocument = [_fieldEditor beginningOfDocument];

  return beginningOfDocument;
}

- (id)_systemBackgroundView
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy && (*(&selfCopy->_textFieldFlags + 4) & 4) != 0)
  {
    backgroundProvider = selfCopy->_backgroundProvider;
  }

  else
  {
    backgroundProvider = 0;
  }

  v5 = backgroundProvider;

  backgroundView = [(_UITextFieldBackgroundProvider *)v5 backgroundView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = backgroundView;
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
    font = [(_UICascadingTextStorage *)v3 font];
    v4 = [(UITextField *)self createPlaceholderLabelWithFont:font andTextAlignment:[(_UICascadingTextStorage *)v3 textAlignment]];
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
  delegate = [(UITextField *)self delegate];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)_ensureSelectionContainerViewSubviewOrdering
{
  if (!self->_selectionContainerView)
  {
    return;
  }

  visualStyle = [(UITextField *)self visualStyle];
  parentViewForTextContentView = [visualStyle parentViewForTextContentView];

  _backgroundView = [(UITextField *)self _backgroundView];
  superview = [_backgroundView superview];

  if (superview == parentViewForTextContentView)
  {
    selectionContainerView = self->_selectionContainerView;
    _backgroundView2 = [(UITextField *)self _backgroundView];
    [parentViewForTextContentView insertSubview:selectionContainerView aboveSubview:_backgroundView2];
LABEL_8:

    goto LABEL_9;
  }

  v6 = self->_selectionContainerView;
  if (*(&self->_textFieldFlags + 1))
  {
    _backgroundView2 = [(UITextField *)self _fieldEditor];
    [parentViewForTextContentView insertSubview:v6 belowSubview:_backgroundView2];
    goto LABEL_8;
  }

  [parentViewForTextContentView insertSubview:self->_selectionContainerView atIndex:0];
LABEL_9:
}

- (UIView)_backgroundView
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy && (*(&selfCopy->_textFieldFlags + 4) & 4) != 0)
  {
    backgroundProvider = selfCopy->_backgroundProvider;
  }

  else
  {
    backgroundProvider = 0;
  }

  v5 = backgroundProvider;

  backgroundView = [(_UITextFieldBackgroundProvider *)v5 backgroundView];

  return backgroundView;
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
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor _selectionClipRect];
  }

  else
  {
    [(UIView *)self bounds];
    [(UITextField *)self editingRectForBounds:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    _fieldEditor = [(UITextField *)self textInputView];
    [_fieldEditor convertRect:self fromView:{v9, v11, v13, v15}];
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
  textInputTraits = [(UITextField *)self textInputTraits];
  _inheritedInteractionTintColor = [(UIView *)self _inheritedInteractionTintColor];
  [textInputTraits _setColorsToMatchTintColor:_inheritedInteractionTintColor];

  if (*(&self->_textFieldFlags + 1))
  {
    interactionAssistant = [(UITextField *)self interactionAssistant];
    [interactionAssistant deactivateSelection];

    fieldEditor = self->_fieldEditor;
    _inheritedInteractionTintColor2 = [(UIView *)self _inheritedInteractionTintColor];
    [(UIFieldEditor *)fieldEditor _setColorsToMatchTintColor:_inheritedInteractionTintColor2];

    interactionAssistant2 = [(UITextField *)self interactionAssistant];
    [interactionAssistant2 activateSelection];
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
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor _unobscureAllText];
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
  string = [(NSAttributedString *)self->_overriddenPlaceholder string];
  v4 = string;
  if (string)
  {
    text = string;
  }

  else
  {
    text = [(UILabel *)self->_placeholderLabel text];
  }

  v6 = text;

  return v6;
}

- (void)_invalidateCachedDefaultClearButtonImages
{
  [(NSMutableDictionary *)self->_cachedDefaultClearButtonImages removeAllObjects];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    v5 = [(UITextField *)self _clearButtonImageForState:0];
    configuration = [(UIButton *)self->_clearButton configuration];
    [configuration setImage:v5];

    _visualProvider = [(UIButton *)self->_clearButton _visualProvider];
    [_visualProvider applyConfiguration];
  }

  else
  {
    _visualProvider = [(UIButton *)self->_clearButton _visualProvider];
    [_visualProvider _updateImageView];
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
  visualStyle = [(UITextField *)self visualStyle];
  parentViewForTextContentView = [visualStyle parentViewForTextContentView];

  if ([(UITextField *)self _showsContentCoverView])
  {
    if (*(&self->_textFieldFlags + 1))
    {
      [(UIScrollView *)self->_fieldEditor removeFromSuperview];
    }

    if (v21)
    {
      superview = [(UIView *)self->_selectionContainerView superview];

      if (parentViewForTextContentView != superview)
      {
        [parentViewForTextContentView addSubview:v21];
      }
    }

    superview2 = [(_UITextCanvas *)self->_textCanvasView superview];

    if (parentViewForTextContentView != superview2)
    {
      [parentViewForTextContentView addSubview:self->_textCanvasView];
    }

    contentCoverView = self->_contentCoverView;
    if (contentCoverView)
    {
      superview3 = [(UIView *)contentCoverView superview];

      if (parentViewForTextContentView != superview3)
      {
        [parentViewForTextContentView addSubview:self->_contentCoverView];
      }

      [parentViewForTextContentView bringSubviewToFront:self->_contentCoverView];
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
      superview4 = [(UIView *)self->_fieldEditor superview];

      if (!superview4)
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
        superview5 = [(UIView *)self->_selectionContainerView superview];

        if (parentViewForTextContentView != superview5)
        {
          [parentViewForTextContentView addSubview:v21];
        }
      }

      superview6 = [(_UITextCanvas *)self->_textCanvasView superview];

      if (parentViewForTextContentView != superview6)
      {
        [parentViewForTextContentView addSubview:self->_textCanvasView];
      }

      [parentViewForTextContentView bringSubviewToFront:self->_textCanvasView];
    }
  }

LABEL_24:
  textInputView = [(UITextField *)self textInputView];
  [textInputView bounds];
  [(UIView *)v21 setFrame:?];

  interactionAssistant = [(UITextField *)self interactionAssistant];
  _legacySelectionView = [interactionAssistant _legacySelectionView];
  [_legacySelectionView deferredUpdateSelectionRects];

  if ([(UITextField *)self _showsBackgroundCoverView])
  {
    [parentViewForTextContentView insertSubview:self->_backgroundCoverView belowSubview:self->_textCanvasView];
    [(UIView *)self bounds];
    [(UITextField *)self borderRectForBounds:?];
    [(UIView *)self->_backgroundCoverView setFrame:?];
    if ([(UITextField *)self borderStyle]== UITextBorderStyleRoundedRect)
    {
      preferredBackgroundCornerRadius = self->_preferredBackgroundCornerRadius;
      layer = [(UIView *)self->_backgroundCoverView layer];
      v18 = layer;
      v19 = preferredBackgroundCornerRadius;
    }

    else
    {
      layer = [(UIView *)self->_backgroundCoverView layer];
      v18 = layer;
      v19 = 0.0;
    }

    [layer setCornerRadius:v19];
  }

  else
  {
    [(UIView *)self->_backgroundCoverView removeFromSuperview];
  }

  superview7 = [(_UITextCanvas *)self->_textCanvasView superview];

  if (parentViewForTextContentView == superview7)
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
  textInputView = [(UIFieldEditor *)self->_fieldEditor textInputView];
  textCanvasView = textInputView;
  if (!textInputView)
  {
    textCanvasView = self->_textCanvasView;
  }

  v5 = textCanvasView;

  return textCanvasView;
}

- (NSTextContainer)textContainer
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  _textLayoutController = [_fieldEditor _textLayoutController];

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
  _fieldEditor = [(UITextField *)self _fieldEditor];
  _hasDictationPlaceholder = [_fieldEditor _hasDictationPlaceholder];

  v5 = [(UITextField *)self _hasContent]| _hasDictationPlaceholder;
  text = [(UILabel *)self->_placeholderLabel text];
  if (![text length] || (v5 & 1) != 0 || (*(&self->_textFieldFlags + 3) & 8) != 0)
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
  font = [(UILabel *)self->_placeholderLabel font];
  [font pointSize];
  v25 = v24;

  if (v25 <= 0.0)
  {
    defaultFont = [objc_opt_class() defaultFont];
    [defaultFont pointSize];
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

  _fieldEditorHost = [(UITextField *)self _fieldEditorHost];
  v30 = _fieldEditorHost;
  if (_fieldEditorHost)
  {
    [_fieldEditorHost addPlaceholderLabel:self->_placeholderLabel];
  }

  else
  {
    _contentView = [(UITextField *)self _contentView];
    [_contentView addSubview:self->_placeholderLabel];
  }

  _inputController = [(UITextField *)self _inputController];
  [_inputController _selectionGeometryChanged];

LABEL_8:
  prefixLabel = self->_prefixLabel;
  if (prefixLabel)
  {
    [(UITextField *)self _prefixFrame];
    [(UILabel *)prefixLabel setFrame:?];
    _contentView2 = [(UITextField *)self _contentView];
    [_contentView2 addSubview:self->_prefixLabel];

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
    _contentView3 = [(UITextField *)self _contentView];
    [_contentView3 addSubview:self->_suffixLabel];

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

  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = UITextField;
  [(UIView *)&v6 layoutSubviews];
  _contentFloatingContainerView = [(UITextField *)self _contentFloatingContainerView];
  [(UIView *)self bounds];
  [_contentFloatingContainerView setFrame:?];
  [_contentFloatingContainerView setNeedsLayout];
  [_contentFloatingContainerView layoutIfNeeded];
  [(UITextField *)self _tvUpdateContentBackdropView];
  fieldEditor = self->_fieldEditor;
  if (fieldEditor)
  {
    superview = [(UIView *)fieldEditor superview];

    if (!superview)
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
    _shouldObscureInput = [(UITextField *)self _shouldObscureInput];
    if ((*(&self->_textFieldFlags + 2) & 2) != 0)
    {
      attributedText = [(UITextField *)self attributedText];
      string = [attributedText string];
    }

    else
    {
      string = [(UITextField *)self text];
    }

    v6 = self->_textStorage;
    font = [(_UICascadingTextStorage *)v6 font];
    v8 = [string length];
    v9 = v8 == 0;
    if (v8)
    {
      if (_shouldObscureInput)
      {
        v84[0] = 0;
        v10 = [font _ui_bulletStringWithFont:v84];
        v60 = v84[0];
        v69 = 0;
        v70 = &v69;
        v71 = 0x2020000000;
        v72 = 0;
        v11 = [string length];
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __43__UITextField__updateAutosizeStyleIfNeeded__block_invoke;
        v83[3] = &unk_1E70FDB08;
        v83[4] = &v69;
        [string enumerateSubstringsInRange:0 options:v11 usingBlock:{2, v83}];
        placeholder = [&stru_1EFB14550 stringByPaddingToLength:v70[3] withString:v10 startingAtIndex:0];

        v9 = (*(&self->_textFieldFlags + 1) & 1) != 0 && [placeholder length] == 0;
        _Block_object_dispose(&v69, 8);

        v14 = 0;
        v13 = v60;
LABEL_19:
        v79 = 0;
        v80 = &v79;
        v81 = 0x2020000000;
        font2 = [(_UICascadingTextStorage *)v6 font];
        [font2 pointSize];
        v17 = v16;

        v82 = v17;
        [(UITextField *)self _fullFontSize];
        v19 = v18;
        if (v9)
        {
          if (v80[6] != v19)
          {
            font3 = [(_UICascadingTextStorage *)v6 font];
            *&v21 = v19;
            *&v22 = v19;
            v23 = [(UITextField *)self _copyFont:font3 newSize:v21 maxSize:v22];

            v24 = [(_UIFullFontSize *)self->_fullFontSize overrideUnlessDefault:v19];
            [(UITextField *)self setFont:v23 fullFontSize:v24 ambientOnly:v14];
          }

LABEL_54:
          _Block_object_dispose(&v79, 8);

          return;
        }

        [(UITextField *)self editRect];
        v26 = v25;
        textInputTraits = [(UITextField *)self textInputTraits];
        insertionPointWidth = [textInputTraits insertionPointWidth];

        v29 = v26 - insertionPointWidth + -10.0;
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
          v67 = v26 - insertionPointWidth + -10.0;
          v63 = &v79;
          v64 = &v75;
          v61[4] = self;
          v68 = v30;
          v65 = &v69;
          v62 = font;
          [(_UICascadingTextStorage *)v6 coordinateAccess:v61];

LABEL_48:
          v56 = v70[5];
          if (v56 && ([v56 isEqual:font] & 1) == 0)
          {
            v57 = v70[5];
            v58 = [(_UIFullFontSize *)self->_fullFontSize overrideUnlessDefault:v19];
            [(UITextField *)self setFont:v57 fullFontSize:v58 ambientOnly:0];
          }

          if (*(v76 + 6))
          {
            interactionAssistant = [(UITextField *)self interactionAssistant];
            [interactionAssistant setNeedsSelectionDisplayUpdate];
          }

          _Block_object_dispose(&v69, 8);

          _Block_object_dispose(&v75, 8);
          goto LABEL_54;
        }

        if (_shouldObscureInput)
        {
          [font pointSize];
          v31 = [v13 fontWithSize:?];
          v32 = v31;
          if (v31 != font)
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
          v33 = font;
        }

        [placeholder _legacy_sizeWithFont:v33];
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
          v40 = [UITextField _copyFont:"_copyFont:newSize:maxSize:" newSize:font maxSize:?];
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

          [placeholder _legacy_sizeWithFont:v45];
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
          v49 = [UITextField _copyFont:"_copyFont:newSize:maxSize:" newSize:font maxSize:?];
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

          [placeholder _legacy_sizeWithFont:v54];
          v35 = v55;
          v38 = v80[6];
          v32 = v53;
        }

        goto LABEL_48;
      }

      placeholder = string;
    }

    else
    {
      placeholder = [(UITextField *)self placeholder];

      if (_shouldObscureInput)
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
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor _contentInsetsFromFonts];
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
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v19 = _fieldEditor;
  if (_fieldEditor)
  {
    isFirstResponder = [(UIView *)self isFirstResponder];
    v5 = isFirstResponder;
    textFieldFlags = self->_textFieldFlags;
    if ((*&textFieldFlags & 0x1E) != 0 && !isFirstResponder)
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

    _fieldEditor = v19;
    if (v5)
    {
      if ([(UITextField *)self adjustsFontSizeToFitWidth])
      {
        textInputTraits = [(UITextField *)self textInputTraits];
        v17 = v13 - [textInputTraits insertionPointWidth];

        [v19 contentSize];
        if (v18 <= v17)
        {
          [v19 setScrollXOffset:0 scrollYOffset:{objc_msgSend(v19, "scrollYOffset")}];
        }
      }

      [v19 scrollSelectionToVisible:0];
      _fieldEditor = v19;
    }
  }

  [_fieldEditor _applyCorrectTextContainerSize];
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
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    v14 = +[UIButtonConfiguration filledButtonConfiguration];
    [v14 setButtonSize:1];
    v15 = [(UITextField *)self _clearButtonImageForState:0];
    [v14 setImage:v15];

    traitCollection2 = [(UIView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
      if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_11.isa) != NSOrderedAscending)
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

      UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_9.isa);
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
  text = [(UILabel *)self->_placeholderLabel text];
  v4 = [text length];

  if (v4)
  {
    if ([(UILabel *)self->_placeholderLabel textAlignment]!= NSTextAlignmentCenter)
    {
      _currentTextAlignment = [(UITextField *)self _currentTextAlignment];
      if (_currentTextAlignment != [(UILabel *)self->_placeholderLabel textAlignment])
      {
        placeholderLabel = self->_placeholderLabel;

        [(UILabel *)placeholderLabel setTextAlignment:_currentTextAlignment];
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
  textInputTraits = [(UITextField *)self textInputTraits];
  selectionHighlightColor = [textInputTraits selectionHighlightColor];

  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled](UITextSelectionDisplayInteraction, "isModernSelectionViewEnabled") && (-[UIView traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 userInterfaceStyle], v5, v6 == 2))
  {
    v7 = [selectionHighlightColor colorWithAlphaComponent:0.35];
  }

  else
  {
    v7 = selectionHighlightColor;
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
  _fieldEditor = [(UITextField *)self _fieldEditor];
  selectedTextRange = [_fieldEditor selectedTextRange];

  return selectedTextRange;
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
  window = [(UIView *)self window];
  if (!window)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    if (!v4)
    {
      return;
    }

    v5 = v4;
    isUserInteractionEnabled = [(UIView *)self isUserInteractionEnabled];

    if (!isUserInteractionEnabled)
    {
      return;
    }

    v7 = +[UIKeyboardImpl activeInstance];
    [v7 removeASPVisualEffectsIfNecessary:self];
    window = v7;
  }
}

- (BOOL)_partsShouldBeMini
{
  borderStyle = [(UITextField *)self borderStyle];
  if (borderStyle)
  {

    LOBYTE(borderStyle) = [(UITextField *)self _heightShouldBeMini];
  }

  return borderStyle;
}

- (int64_t)_currentTextAlignment
{
  _textStorage = [(UITextField *)self _textStorage];
  _ui_resolvedTextAlignment = [_textStorage _ui_resolvedTextAlignment];

  return _ui_resolvedTextAlignment;
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
  _text = [(UITextField *)self _text];
  textInputTraits = [(UITextField *)self textInputTraits];
  textTrimmingSet = [textInputTraits textTrimmingSet];

  if (textTrimmingSet)
  {
    v6 = [_text _stringByTrimmingCharactersInCFCharacterSet:textTrimmingSet];

    _text = v6;
  }

  _shouldObscureInput = [(UITextField *)self _shouldObscureInput];
  v8 = [_text copy];
  v9 = v8;
  if (_shouldObscureInput && v8)
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
  traitCollection = [(UIView *)self traitCollection];
  [traitCollection userInterfaceIdiom];

  return 8.0;
}

- (_NSRange)selectionRange
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  selectionRange = [_fieldEditor selectionRange];
  v5 = v4;

  v6 = selectionRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (double)_roundedRectBackgroundCornerRadius
{
  _backgroundView = [(UITextField *)self _backgroundView];
  v4 = _backgroundView;
  if (_backgroundView)
  {
    [_backgroundView _continuousCornerRadius];
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
  _shouldObscureInput = [(UITextField *)self _shouldObscureInput];
  [(_UITextLayoutController *)self->_textLayoutController setDocumentObscured:_shouldObscureInput];
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor setSecureTextEntry:{-[UITextField isSecureTextEntry](self, "isSecureTextEntry")}];

  if (_shouldObscureInput)
  {
    v5 = 18;
  }

  else
  {
    v5 = 0;
  }

  layer = [(_UITextCanvas *)self->_textCanvasView layer];
  [layer setDisableUpdateMask:v5];

  v7 = +[UIKeyboardImpl activeInstance];
  inputDelegateManager = [v7 inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];

  if (keyInputDelegate == self)
  {
    v10 = +[UIKeyboardImpl activeInstance];
    [v10 setDelegate:self];
  }

  if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(UIView *)self semanticContentAttribute]]== UIUserInterfaceLayoutDirectionRightToLeft && [(UITextField *)self textAlignment]== NSTextAlignmentNatural)
  {
    [(UITextField *)self setTextAlignment:2];
  }

  if (_shouldObscureInput)
  {
    [(UITextField *)self selectionRange];
    if (v11)
    {
      [(UITextField *)self selectAll];
    }
  }

  interactionAssistant = [(UITextField *)self interactionAssistant];
  [interactionAssistant updateDisplayedSelection];
}

- (BOOL)_shouldUnobscureTextWithContentCover
{
  _showsContentCoverView = [(UITextField *)self _showsContentCoverView];
  if (_showsContentCoverView)
  {

    LOBYTE(_showsContentCoverView) = [(UITextField *)self _contentCoverUnsecuresText];
  }

  return _showsContentCoverView;
}

- (void)_noteThatKeyboardAppearanceHasChanged
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__notifySystemKeyboardOfAppearanceChange object:0];

  [(UITextField *)self performSelector:sel__notifySystemKeyboardOfAppearanceChange withObject:0 afterDelay:0.0];
}

- (id)automaticallySelectedOverlay
{
  customOverlayContainer = [(UITextField *)self customOverlayContainer];
  if (customOverlayContainer)
  {
    v4 = customOverlayContainer;
    containerView = v4;
    goto LABEL_16;
  }

  _scroller = [(UIView *)self _scroller];
  if (!_scroller)
  {
    goto LABEL_15;
  }

  superview = [(UIView *)self superview];
  if (superview)
  {
    v4 = superview;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_14;
      }

      superview2 = [v4 superview];

      v4 = superview2;
    }

    while (superview2);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || ([_scroller _flipsHorizontalAxis])
  {
    goto LABEL_15;
  }

  v4 = _scroller;
  if (![v4 isScrollEnabled])
  {
    goto LABEL_14;
  }

  if ([v4 _canScrollY])
  {
    containerView = v4;
    goto LABEL_16;
  }

  containerView = v4;
  if (([v4 _canScrollX] & 1) == 0)
  {
LABEL_14:

LABEL_15:
    keyboardSceneDelegate = [(UIView *)self keyboardSceneDelegate];
    containerView = [keyboardSceneDelegate containerView];

    v4 = _scroller;
  }

LABEL_16:

  return containerView;
}

- (id)customOverlayContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  customOverlayContainer = 0;
  if ((objc_opt_respondsToSelector() & 1) != 0 && WeakRetained != self)
  {
    customOverlayContainer = [(UITextField *)WeakRetained customOverlayContainer];
  }

  return customOverlayContainer;
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
    _containedInAbsoluteResponderChain = [(UIView *)self _containedInAbsoluteResponderChain];
    v5 = _containedInAbsoluteResponderChain;
    if (_containedInAbsoluteResponderChain && (*(&self->_textFieldFlags + 1) & 4) != 0)
    {
      v9 = 0;
    }

    else
    {
      if ([(UIControl *)self isEnabled])
      {
        _delegateShouldBeginEditing = [(UITextField *)self _delegateShouldBeginEditing];
        v7 = 512;
        if (!_delegateShouldBeginEditing)
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
  keyboardSceneDelegate = [(UIView *)self keyboardSceneDelegate];
  if (-[UITextField keyboardAppearance](self, "keyboardAppearance") == 127 || -[UIView isFirstResponder](self, "isFirstResponder") && ([keyboardSceneDelegate responder], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 != self))
  {
    [keyboardSceneDelegate _beginIgnoringReloadInputViews];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  isFirstResponder = [(UIView *)self isFirstResponder];
  v14.receiver = self;
  v14.super_class = UITextField;
  becomeFirstResponder = [(UIView *)&v14 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    [(UITextField *)self scrollTextFieldToVisibleIfNecessary];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__receivedKeyboardDidShowNotification_ name:@"UIKeyboardDidShowNotification" object:0];

    if ([(NSConcreteTextStorage *)self->_textStorage length])
    {
      if (isFirstResponder && [(UITextField *)self textSelectionBehavior]== 3)
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
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      _fieldEditor = [(UITextField *)self _fieldEditor];
      [defaultCenter2 addObserver:self selector:sel__initialScrollDidFinish_ name:@"UITextSelectionDidScroll" object:_fieldEditor];
    }

    else if ([(UITextField *)self _showsContentCoverView])
    {
      [(UITextField *)self setNeedsLayout];
    }

    else
    {
      [(UITextField *)self _activateSelectionView];
    }

    textInputTraits = [(UITextField *)self textInputTraits];
    _inheritedInteractionTintColor = [(UIView *)self _inheritedInteractionTintColor];
    [textInputTraits _setColorsToMatchTintColor:_inheritedInteractionTintColor];

    if (v5)
    {
      [keyboardSceneDelegate _endIgnoringReloadInputViews];
      [(UIResponder *)self reloadInputViews];
    }
  }

  else if ((v5 & 1) != 0 && [keyboardSceneDelegate _endIgnoringReloadInputViews])
  {
    [keyboardSceneDelegate forceReloadInputViews];
  }

  return becomeFirstResponder;
}

- (void)_becomeFirstResponder
{
  v6.receiver = self;
  v6.super_class = UITextField;
  [(UIResponder *)&v6 _becomeFirstResponder];
  textInputTraits = [(UITextField *)self textInputTraits];
  if ([textInputTraits deferBecomingResponder])
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
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor setScrollEnabled:0];

  [(_UITextFieldBackgroundProvider *)self->_backgroundProvider didChangeFirstResponder];
  [(UITextField *)self _updateSelectionGestures];
  [(UITextField *)self _notifyDidBeginEditing];
}

- (void)_addFieldEditorToView
{
  v3 = [(UITextField *)self _fieldEditorHostAllowingCreation:1];
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [v3 addFieldEditor:_fieldEditor];

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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UITextFieldTextDidBeginEditingNotification" object:self];
}

- (UIView)inputAccessoryView
{
  inputAccessoryView = self->_inputAccessoryView;
  if (inputAccessoryView)
  {
    inputAccessoryView = inputAccessoryView;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITextField;
    inputAccessoryView = [(UIResponder *)&v5 inputAccessoryView];
  }

  return inputAccessoryView;
}

- (void)_attachFieldEditor
{
  if ([(UITextField *)self _showsContentCoverView])
  {

    [(UITextField *)self _invalidateAllGlyphsAndTextLayout];
  }

  else
  {
    _fieldEditor = [(UITextField *)self _fieldEditor];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __33__UITextField__attachFieldEditor__block_invoke;
    v13 = &unk_1E70F35B8;
    v4 = _fieldEditor;
    v14 = v4;
    selfCopy = self;
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

      _inputController = [(UITextField *)self _inputController];
      [_inputController setAllowsEditingTextAttributes:(*&self->_textFieldFlags >> 16) & 1];

      if ((*&textFieldFlags & 0x100) == 0)
      {
        [(UIControl *)self _sendActionsForEvents:0x10000 withEvent:0];
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:self selector:sel__applicationResuming_ name:@"UIApplicationResumedNotification" object:UIApp];
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
  inputDelegate = [(UITextField *)self inputDelegate];

  if (inputDelegate)
  {
    interactionAssistant = [(UITextField *)self interactionAssistant];
    [interactionAssistant setSelectionDisplayVisible:1];

    interactionAssistant2 = [(UITextField *)self interactionAssistant];
    [interactionAssistant2 activateSelection];
  }
}

- (void)_didAttachFieldEditor
{
  v4 = objc_getAssociatedObject(self, &EditingTokenKey);
  if (v4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextField.m" lineNumber:6443 description:@"The textfield is already editing?!"];
  }

  _editingProcessor = [(UITextField *)self _editingProcessor];
  value = [_editingProcessor beginEditingWithTextStorage:self->_textStorage];

  if (value)
  {
    objc_setAssociatedObject(self, &EditingTokenKey, value, 0x301);
    [(UITextField *)self _invalidateAfterUpdatingEditingAttributes];
  }

  _inputController = [(UITextField *)self _inputController];
  [_inputController _updateEmptyStringAttributes];

  [(UITextField *)self _ensureSelectionContainerViewSubviewOrdering];
}

- (UITextInputDelegate)inputDelegate
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  inputDelegate = [_fieldEditor inputDelegate];

  return inputDelegate;
}

- (void)_updateSelectionGestures
{
  interactionAssistant = [(UITextField *)self interactionAssistant];
  if ([(UITextField *)self isTextDragActive]|| [(UITextField *)self isTextDropActive])
  {
    if ([(UIView *)self isFirstResponder])
    {
      [interactionAssistant deactivateSelection];
    }

    goto LABEL_5;
  }

  _showsContentCoverView = [(UITextField *)self _showsContentCoverView];
  isFirstResponder = [(UIView *)self isFirstResponder];
  if (_showsContentCoverView)
  {
    v5 = interactionAssistant;
    if (isFirstResponder)
    {
      [interactionAssistant deactivateSelection];
      [interactionAssistant hideSelectionCommands];
LABEL_5:
      [interactionAssistant clearGestureRecognizers:1];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = interactionAssistant;
    if (isFirstResponder)
    {
      [interactionAssistant activateSelection];
      v5 = interactionAssistant;
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
    _supportsImagePaste = [(UIResponder *)self _supportsImagePaste];
    v5 = 0x40000000000;
    if (_supportsImagePaste)
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
    _scroller = [(UIView *)self _scroller];
    if (_scroller)
    {
      while (1)
      {
        v18 = _scroller;
        if ([_scroller isScrollEnabled])
        {
          break;
        }

        _scroller2 = [v18 _scroller];

        _scroller = _scroller2;
        if (!_scroller2)
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

    superview = [(UIView *)self superview];
    [(UIView *)self frame];
    [superview convertRect:v18 toView:?];
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
  _finishResignFirstResponder = [(UIResponder *)&v6 _finishResignFirstResponder];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIKeyboardDidShowNotification" object:0];

  return _finishResignFirstResponder;
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
    defaultCenter = [v4 defaultCenter];
    [defaultCenter removeObserver:self name:@"UITextSelectionDidScroll" object:v5];
  }
}

- (void)_didDetachFieldEditor
{
  objc_setAssociatedObject(self, &EditingTokenKey, 0, 1);
  _inputController = [(UITextField *)self _inputController];
  [_inputController _updateEmptyStringAttributes];
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
    LOBYTE(resignFirstResponder) = 1;
  }

  else
  {
    _showsContentCoverView = [(UITextField *)self _showsContentCoverView];
    *&self->_textFieldFlags |= 0x800uLL;
    v11.receiver = self;
    v11.super_class = UITextField;
    resignFirstResponder = [(UIResponder *)&v11 resignFirstResponder];
    *&self->_textFieldFlags &= ~0x800uLL;
    if (resignFirstResponder)
    {
      interactionAssistant = [(UITextField *)self interactionAssistant];
      [interactionAssistant setSelectionDisplayVisible:0];

      interactionAssistant2 = [(UITextField *)self interactionAssistant];
      [interactionAssistant2 deactivateSelection];

      _inputController = [(UITextField *)self _inputController];
      [_inputController didEndEditing];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UIKeyboardDidShowNotification" object:0];

    if (_showsContentCoverView && [(UITextField *)self _shouldObscureInput])
    {
      _fieldEditor = [(UITextField *)self _fieldEditor];
      [_fieldEditor _obscureAllText];
    }
  }

  return resignFirstResponder;
}

- (id)metadataDictionariesForDictationResults
{
  if (*(&self->_textFieldFlags + 1))
  {
    _fieldEditor = [(UITextField *)self _fieldEditor];
    metadataDictionariesForDictationResults = [_fieldEditor metadataDictionariesForDictationResults];
  }

  else
  {
    metadataDictionariesForDictationResults = 0;
  }

  return metadataDictionariesForDictationResults;
}

- (void)_didUpdateAfterDetachingFieldEditor
{
  [(UITextField *)self didChangeValueForKey:@"text"];
  v3 = objc_getAssociatedObject(self, &EditingTokenKey);
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    endEditing = [v3 endEditing];
    v4 = v6;
    if (endEditing)
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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = @"UITextFieldEndEditingReasonKey";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [defaultCenter postNotificationName:@"UITextFieldTextDidEndEditingNotification" object:self userInfo:v6];
}

- (void)_forceObscureAllText
{
  if (*(&self->_textFieldFlags + 1))
  {
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor _obscureAllText];
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
    inputAssistantItem = inputAssistantItem;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITextField;
    inputAssistantItem = [(UIResponder *)&v5 inputAssistantItem];
  }

  return inputAssistantItem;
}

- (BOOL)hasText
{
  if ((*(&self->_textFieldFlags + 1) & 1) == 0)
  {
    return [(NSConcreteTextStorage *)self->_textStorage length]!= 0;
  }

  _fieldEditor = [(UITextField *)self _fieldEditor];
  hasText = [_fieldEditor hasText];

  return hasText;
}

- (UITextInputTokenizer)tokenizer
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  tokenizer = [_fieldEditor tokenizer];

  return tokenizer;
}

- (UITextPosition)endOfDocument
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  endOfDocument = [_fieldEditor endOfDocument];

  return endOfDocument;
}

- (BOOL)supportsAdaptiveImageGlyph
{
  if ((*(&self->_textFieldFlags + 5) & 2) != 0)
  {
    _inputController = [(UITextField *)self _inputController];
    supportsAdaptiveImageGlyph = [_inputController supportsAdaptiveImageGlyph];

    LOBYTE(v3) = supportsAdaptiveImageGlyph;
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
  visualStyle = [(UITextField *)self visualStyle];
  placeholderColor = [visualStyle placeholderColor];

  return placeholderColor;
}

- (void)_updateTextEffectsConfigurationIfNeeded
{
  if (!self->_cuiStyleEffectConfiguration)
  {
    return;
  }

  traitCollection = [(UIView *)self traitCollection];
  _styleEffectAppearanceName = [(UITraitCollection *)traitCollection _styleEffectAppearanceName];

  appearanceName = [(CUIStyleEffectConfiguration *)self->_cuiStyleEffectConfiguration appearanceName];
  v10 = _styleEffectAppearanceName;
  v6 = appearanceName;
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
    _cuiCatalog = [(UITextField *)self _cuiCatalog];
    [(UILabel *)self->_placeholderLabel _setCuiCatalog:_cuiCatalog];

    _cuiStyleEffectConfiguration = [(UITextField *)self _cuiStyleEffectConfiguration];
    [(UILabel *)self->_placeholderLabel _setCuiStyleEffectConfiguration:_cuiStyleEffectConfiguration];
  }

  if (self->_suffixLabel)
  {
    _cuiCatalog2 = [(UITextField *)self _cuiCatalog];
    [(UILabel *)self->_suffixLabel _setCuiCatalog:_cuiCatalog2];

    _cuiStyleEffectConfiguration2 = [(UITextField *)self _cuiStyleEffectConfiguration];
    [(UILabel *)self->_suffixLabel _setCuiStyleEffectConfiguration:_cuiStyleEffectConfiguration2];
  }

  if (self->_prefixLabel)
  {
    _cuiCatalog3 = [(UITextField *)self _cuiCatalog];
    [(UILabel *)self->_prefixLabel _setCuiCatalog:_cuiCatalog3];

    _cuiStyleEffectConfiguration3 = [(UITextField *)self _cuiStyleEffectConfiguration];
    [(UILabel *)self->_prefixLabel _setCuiStyleEffectConfiguration:_cuiStyleEffectConfiguration3];
  }

  if (self->_label)
  {
    _cuiCatalog4 = [(UITextField *)self _cuiCatalog];
    [(UILabel *)self->_label _setCuiCatalog:_cuiCatalog4];

    _cuiStyleEffectConfiguration4 = [(UITextField *)self _cuiStyleEffectConfiguration];
    [(UILabel *)self->_label _setCuiStyleEffectConfiguration:_cuiStyleEffectConfiguration4];
  }
}

- (void)_notifySystemKeyboardOfAppearanceChange
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  responder = [v4 responder];

  if (responder == self)
  {
    [v4 traitCollectionDidChange];
  }
}

- (id)obtainSelectionGrabberSuppressionAssertion
{
  interactionAssistant = [(UITextField *)self interactionAssistant];
  obtainSelectionGrabberSuppressionAssertion = [interactionAssistant obtainSelectionGrabberSuppressionAssertion];

  return obtainSelectionGrabberSuppressionAssertion;
}

- (NSString)searchText
{
  if ([(UITextField *)self hasMarkedText])
  {
    _fieldEditor = [(UITextField *)self _fieldEditor];
    text = [_fieldEditor text];
    markedTextRange = [_fieldEditor markedTextRange];
    if (markedTextRange)
    {
      v6 = +[UIKeyboardImpl activeInstance];
      searchStringForMarkedText = [v6 searchStringForMarkedText];
      v8 = searchStringForMarkedText;
      v9 = &stru_1EFB14550;
      if (searchStringForMarkedText)
      {
        v9 = searchStringForMarkedText;
      }

      v10 = v9;

      v11 = [(_UITextLayoutController *)self->_textLayoutController characterRangeForTextRange:markedTextRange];
      v13 = [text stringByReplacingCharactersInRange:v11 withString:{v12, v10}];

      text = v13;
    }

    textInputTraits = [(UITextField *)self textInputTraits];
    textTrimmingSet = [textInputTraits textTrimmingSet];

    if (textTrimmingSet)
    {
      v16 = [text _stringByTrimmingCharactersInCFCharacterSet:textTrimmingSet];

      text = v16;
    }
  }

  else
  {
    text = [(UITextField *)self text];
  }

  if (dyld_program_sdk_at_least())
  {
    v17 = [text mutableCopy];
    [(UITextField *)self _sanitizeText:v17];

    text = v17;
  }

  _shouldObscureInput = [(UITextField *)self _shouldObscureInput];
  v19 = text;
  v20 = v19;
  if (v19 && _shouldObscureInput)
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
  _fieldEditor = [(UITextField *)self _fieldEditor];
  markedTextRange = [_fieldEditor markedTextRange];
  v4 = markedTextRange != 0;

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
  textLayoutController = [(UITextField *)self textLayoutController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    textLayoutController = 0;
  }

  return textLayoutController;
}

- (Class)_intelligenceBaseClass
{
  sub_188A34624(0, &qword_1EA934D60);

  return swift_getObjCClassFromMetadata();
}

- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector
{
  collectorCopy = collector;
  selfCopy = self;
  _sSo11UITextFieldC5UIKitE27_intelligenceCollectContent2in9collectorySo6CGRectV_21UIIntelligenceSupport0J16ElementCollectorCtF_0(collectorCopy);
}

- (id)largeContentTitle
{
  _largeContentStoredProperties = [(UIView *)self _largeContentStoredProperties];
  didSetLargeContentTitle = [_largeContentStoredProperties didSetLargeContentTitle];

  if (didSetLargeContentTitle)
  {
    v9.receiver = self;
    v9.super_class = UITextField;
    largeContentTitle = [(UIView *)&v9 largeContentTitle];
  }

  else
  {
    attributedText = [(UITextField *)self attributedText];
    largeContentTitle = [attributedText string];

    if (![largeContentTitle length])
    {
      placeholder = [(UITextField *)self placeholder];

      largeContentTitle = placeholder;
    }
  }

  return largeContentTitle;
}

- (void)_insertAttributedText:(id)text withAnimation:(int64_t)animation completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  selectedTextRange = [(UITextField *)self selectedTextRange];
  if (!selectedTextRange)
  {
    endOfDocument = [(UITextField *)self endOfDocument];
    endOfDocument2 = [(UITextField *)self endOfDocument];
    selectedTextRange = [(UITextField *)self textRangeFromPosition:endOfDocument toPosition:endOfDocument2];
  }

  [(UITextField *)self _replaceRange:selectedTextRange withAttributedText:textCopy usingAnimation:animation completion:completionCopy];
}

- (void)_replaceRange:(id)range withAttributedText:(id)text usingAnimation:(int64_t)animation completion:(id)completion
{
  rangeCopy = range;
  textCopy = text;
  completionCopy = completion;
  if (animation == 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInput+AnimatedInsertion.m" lineNumber:107 description:@"Vertical wipe animation is currently not supported on UITextField."];
  }

  else if (animation == 2)
  {
    [(UITextField *)self _replaceRangeUsingColorWipe:rangeCopy withAttributedText:textCopy completion:completionCopy];
  }
}

- (void)_replaceRangeUsingColorWipe:(id)wipe withAttributedText:(id)text completion:(id)completion
{
  v37[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v9 = [(UITextField *)self _replaceRange:wipe withAttributedText:text updatingSelection:1];
  [(UITextField *)self _boundingRectForRange:v9];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  _textCanvasView = [(UITextField *)self _textCanvasView];
  v19 = [_UIIntelligentTextInsertionAnimatedColor alloc];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __92__UITextField_AnimatedInsertion___replaceRangeUsingColorWipe_withAttributedText_completion___block_invoke;
  v34[3] = &unk_1E710AF98;
  v35 = _textCanvasView;
  v20 = _textCanvasView;
  v21 = [(_UIIntelligentTextInsertionAnimatedColor *)v19 initWithBounds:v34 invalidationHandler:v11, v13, v15, v17];
  typingAttributes = [(UITextField *)self typingAttributes];
  textColor = [(UITextField *)self textColor];
  v24 = ResolvedReplacementColorForTypingAttributes(typingAttributes, textColor);
  [(_UIIntelligentTextInsertionAnimatedColor *)v21 setResolvedColor:v24];

  v36 = *off_1E70EC920;
  v37[0] = v21;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  textLayoutController = [(UITextField *)self textLayoutController];
  [textLayoutController addRenderingAttributes:v25 forRange:v9];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __92__UITextField_AnimatedInsertion___replaceRangeUsingColorWipe_withAttributedText_completion___block_invoke_2;
  v30[3] = &unk_1E70F5F08;
  v30[4] = self;
  v31 = v25;
  v32 = v9;
  v33 = completionCopy;
  v27 = completionCopy;
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

- (void)_setCuiCatalog:(id)catalog
{
  catalogCopy = catalog;
  if (self->_cuiCatalog != catalogCopy)
  {
    v6 = catalogCopy;
    objc_storeStrong(&self->_cuiCatalog, catalog);
    [(UITextField *)self _propagateCuiProperties];
    catalogCopy = v6;
  }
}

- (void)_setCuiStyleEffectConfiguration:(id)configuration
{
  if (self->_cuiStyleEffectConfiguration != configuration)
  {
    v4 = [configuration copy];
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

    appearanceName = [v4 appearanceName];

    if (!appearanceName)
    {
      traitCollection = [(UIView *)self traitCollection];
      _styleEffectAppearanceName = [(UITraitCollection *)traitCollection _styleEffectAppearanceName];
      [v4 setAppearanceName:_styleEffectAppearanceName];
    }

    cuiStyleEffectConfiguration = self->_cuiStyleEffectConfiguration;
    self->_cuiStyleEffectConfiguration = v4;

    [(UITextField *)self _propagateCuiProperties];
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  p_viewFlags = &self->super.super._viewFlags;
  v5 = *(&self->super.super._viewFlags + 4);
  v12.receiver = self;
  v12.super_class = UITextField;
  [(UIView *)&v12 setSemanticContentAttribute:attribute];
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

- (id)_initWithFrame:(CGRect)frame textLayoutManagerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18.receiver = self;
  v18.super_class = UITextField;
  v5 = [(UIControl *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    if (enabledCopy)
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
    _contentView = [(UITextField *)v11 _contentView];
    [_contentView setClipsToBounds:v12 ^ 1u];

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

- (UITextField)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _isTextLayoutManagerEnabled = [objc_opt_class() _isTextLayoutManagerEnabled];

  return [(UITextField *)self _initWithFrame:_isTextLayoutManagerEnabled textLayoutManagerEnabled:x, y, width, height];
}

- (UITextField)initWithCoder:(id)coder
{
  v78[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v77.receiver = self;
  v77.super_class = UITextField;
  v5 = [(UIControl *)&v77 initWithCoder:coderCopy];

  if (!v5)
  {
    goto LABEL_106;
  }

  v6 = [_UITextFieldVisualStyle inferredVisualStyleWithStyleSubject:v5];
  visualStyle = v5->_visualStyle;
  v5->_visualStyle = v6;

  _isTextLayoutManagerEnabled = [objc_opt_class() _isTextLayoutManagerEnabled];
  v9 = 0x1000000000;
  if (!_isTextLayoutManagerEnabled)
  {
    v9 = 0;
  }

  v5->_textFieldFlags = (*&v5->_textFieldFlags & 0xFFFFFFEFFFFFFFFFLL | v9);
  [(UITextField *)v5 _setupDefaultStyleEffectConfiguration];
  v10 = [coderCopy containsValueForKey:@"UIRoundedRectBackgroundCornerRadius"];
  v11 = 5.0;
  if (v10)
  {
    [coderCopy decodeDoubleForKey:{@"UIRoundedRectBackgroundCornerRadius", 5.0}];
  }

  v5->_preferredBackgroundCornerRadius = v11;
  [(UITextField *)v5 _invalidateBackgroundProviderForced:1];
  if ([coderCopy containsValueForKey:@"UIAllowsEditingTextAttributes"])
  {
    v12 = [coderCopy decodeBoolForKey:@"UIAllowsEditingTextAttributes"];
    v13 = 0x10000;
    if (!v12)
    {
      v13 = 0;
    }

    v5->_textFieldFlags = (*&v5->_textFieldFlags & 0xFFFFFFFFFFFEFFFFLL | v13);
  }

  v14 = [coderCopy decodeObjectForKey:@"UIText"];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &stru_1EFB14550;
  }

  v16 = [coderCopy decodeObjectForKey:@"UIAttributedText"];
  v17 = [v16 mutableCopy];

  if (!v17)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v15];
  }

  [(UITextField *)v5 sanitizeAttributedText:v17];
  v76 = v15;
  if (![v17 length])
  {
    if ([coderCopy containsValueForKey:@"UITextAlignment"])
    {
      v21 = [coderCopy decodeIntegerForKey:@"UITextAlignment"];
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
    alignment = [v19 alignment];
    goto LABEL_24;
  }

  if ([coderCopy containsValueForKey:@"UITextAlignment"])
  {
    alignment = [coderCopy decodeIntegerForKey:@"UITextAlignment"];
LABEL_24:
    v21 = alignment;
    goto LABEL_25;
  }

  v21 = 4;
LABEL_25:

LABEL_27:
  [(UITextField *)v5 _initTextStorage];
  v22 = [coderCopy decodeObjectForKey:@"UIFont"];
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

  v26 = [coderCopy decodeObjectForKey:@"UITextColor"];
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
  if ([coderCopy containsValueForKey:@"UIAdjustsFontForContentSizeCategory"])
  {
    -[UITextField setAdjustsFontForContentSizeCategory:](v5, "setAdjustsFontForContentSizeCategory:", [coderCopy decodeBoolForKey:@"UIAdjustsFontForContentSizeCategory"]);
  }

  v27 = [coderCopy decodeObjectForKey:@"UIDelegate"];
  objc_storeWeak(&v5->_delegate, v27);

  if ([coderCopy decodeBoolForKey:@"UIClearsOnBeginEditing"])
  {
    v5->_textFieldFlags = (*&v5->_textFieldFlags & 0xFFFFFFFFFFF3FFFFLL | 0x40000);
  }

  v28 = [coderCopy decodeBoolForKey:@"UIAdjustsFontSizeToFit"];
  v29 = 128;
  if (!v28)
  {
    v29 = 0;
  }

  v5->_textFieldFlags = (*&v5->_textFieldFlags & 0xFFFFFFFFFFFFFF7FLL | v29);
  if ([coderCopy containsValueForKey:@"UIMinimumFontSize"])
  {
    [coderCopy decodeFloatForKey:@"UIMinimumFontSize"];
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
  if ([coderCopy containsValueForKey:@"UIBorderStyle"])
  {
    v32 = [coderCopy decodeIntegerForKey:@"UIBorderStyle"];
  }

  else
  {
    v32 = 0;
  }

  v5->_clearButtonMode = 0;
  if ([coderCopy containsValueForKey:@"UIClearButtonMode"])
  {
    v5->_clearButtonMode = [coderCopy decodeIntegerForKey:@"UIClearButtonMode"];
  }

  [(UITextField *)v5 _initTextLayoutController];
  [(UITextField *)v5 _initTextCanvasView];
  v5->_foregroundViewsAlpha = 1.0;
  v33 = [coderCopy decodeObjectForKey:@"UIPlaceholder"];
  if (v33)
  {
    [(UITextField *)v5 createPlaceholderIfNecessary];
    [(UILabel *)v5->_placeholderLabel setText:v33];
  }

  v34 = [coderCopy decodeObjectForKey:@"UILeftView"];
  leftView = v5->_leftView;
  v5->_leftView = v34;

  v36 = [coderCopy decodeObjectForKey:@"UIRightView"];
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
  v42 = [coderCopy decodeObjectForKey:@"UITextFieldBackground"];
  background = v5->_background;
  v5->_background = v42;

  v44 = [coderCopy decodeObjectForKey:@"UITextFieldDisabledBackground"];
  disabledBackground = v5->_disabledBackground;
  v5->_disabledBackground = v44;

  *&v5->_textFieldFlags |= 0x20uLL;
  if ([coderCopy containsValueForKey:@"UIBecomesFirstResponderOnClearButtonTap"])
  {
    v5->_textFieldFlags = (*&v5->_textFieldFlags & 0xFFFFFFFFFFFFFFDFLL | (32 * ([coderCopy decodeIntegerForKey:@"UIBecomesFirstResponderOnClearButtonTap"] & 1)));
  }

  [coderCopy decodeCGSizeForKey:@"UIClearButtonOffset"];
  v5->_clearButtonOffset.width = v46;
  v5->_clearButtonOffset.height = v47;
  [coderCopy decodeUIEdgeInsetsForKey:@"UIPadding"];
  v5->_padding.top = v48;
  v5->_padding.left = v49;
  v5->_padding.bottom = v50;
  v5->_padding.right = v51;
  if ([coderCopy containsValueForKey:@"UIAutocapitalizationType"])
  {
    v52 = [coderCopy decodeIntegerForKey:@"UIAutocapitalizationType"];
  }

  else
  {
    v52 = 0;
  }

  [(UITextField *)v5 setAutocapitalizationType:v52];
  if ([coderCopy containsValueForKey:@"UIAutocorrectionType"])
  {
    v53 = [coderCopy decodeIntegerForKey:@"UIAutocorrectionType"];
  }

  else
  {
    v53 = 0;
  }

  [(UITextField *)v5 setAutocorrectionType:v53];
  if ([coderCopy containsValueForKey:@"UISpellCheckingType"])
  {
    v54 = [coderCopy decodeIntegerForKey:@"UISpellCheckingType"];
  }

  else
  {
    v54 = 0;
  }

  [(UITextField *)v5 setSpellCheckingType:v54];
  if ([coderCopy containsValueForKey:@"UIDisableTextColorUpdateOnTraitCollectionChange"])
  {
    v55 = [coderCopy decodeBoolForKey:@"UIDisableTextColorUpdateOnTraitCollectionChange"];
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
  if ([coderCopy containsValueForKey:@"UIKeyboardAppearance"])
  {
    v57 = [coderCopy decodeIntegerForKey:@"UIKeyboardAppearance"];
  }

  else
  {
    v57 = 0;
  }

  [(UITextField *)v5 setKeyboardAppearance:v57];
  if ([coderCopy containsValueForKey:@"UIKeyboardType"])
  {
    v58 = [coderCopy decodeIntegerForKey:@"UIKeyboardType"];
  }

  else
  {
    v58 = 0;
  }

  [(UITextField *)v5 setKeyboardType:v58];
  if ([coderCopy containsValueForKey:@"UIReturnKeyType"])
  {
    v59 = [coderCopy decodeIntegerForKey:@"UIReturnKeyType"];
  }

  else
  {
    v59 = 0;
  }

  [(UITextField *)v5 setReturnKeyType:v59];
  -[UITextField setEnablesReturnKeyAutomatically:](v5, "setEnablesReturnKeyAutomatically:", [coderCopy decodeBoolForKey:@"UIEnablesReturnKeyAutomatically"]);
  v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UITextContentType"];
  [(UITextField *)v5 setTextContentType:v60];

  if ([coderCopy containsValueForKey:@"UITextSmartInsertDeleteType"])
  {
    v61 = [coderCopy decodeIntegerForKey:@"UITextSmartInsertDeleteType"];
  }

  else
  {
    v61 = 0;
  }

  [(UITextField *)v5 setSmartInsertDeleteType:v61];
  if ([coderCopy containsValueForKey:@"UITextSmartQuotesType"])
  {
    v62 = [coderCopy decodeIntegerForKey:@"UITextSmartQuotesType"];
  }

  else
  {
    v62 = 0;
  }

  [(UITextField *)v5 setSmartQuotesType:v62];
  if ([coderCopy containsValueForKey:@"UITextSmartDashesType"])
  {
    v63 = [coderCopy decodeIntegerForKey:@"UITextSmartDashesType"];
  }

  else
  {
    v63 = 0;
  }

  [(UITextField *)v5 setSmartDashesType:v63];
  if ([coderCopy containsValueForKey:@"UITextInlinePredictionType"])
  {
    v64 = [coderCopy decodeIntegerForKey:@"UITextInlinePredictionType"];
  }

  else
  {
    v64 = 0;
  }

  [(UITextField *)v5 setInlinePredictionType:v64];
  if ([coderCopy containsValueForKey:@"UILetterformAwareSizingRule"])
  {
    v5->_textFieldFlags = (*&v5->_textFieldFlags & 0xFFFFFFBFFFFFFFFFLL | (([coderCopy decodeIntegerForKey:@"UILetterformAwareSizingRule"] & 1) << 38));
  }

  -[UITextField setSecureTextEntry:](v5, "setSecureTextEntry:", [coderCopy decodeBoolForKey:@"UISecureTextEntry"]);
  v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UITextInputPasswordRules"];
  [(UITextField *)v5 setPasswordRules:v65];

  v66 = [coderCopy decodeObjectForKey:@"UIIcon"];
  [(UITextField *)v5 setIcon:v66];

  [(UITextField *)v5 setBorderStyle:v32];
  tintColor = [(UIView *)v5 tintColor];

  if (tintColor)
  {
    [(UITextField *)v5 _updateForTintColor];
  }

  *&v5->_textFieldFlags |= 0x10000000uLL;
  _contentFloatingContainerView = [(UITextField *)v5 _contentFloatingContainerView];

  if (_contentFloatingContainerView)
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
        _contentView = [(UITextField *)v5 _contentView];
        [_contentView addSubview:v70];
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
  _contentView = [(UITextField *)self _contentView];
  subviews = [_contentView subviews];

  return subviews;
}

- (void)_populateArchivedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v6.receiver = self;
  v6.super_class = UITextField;
  [(UIView *)&v6 _populateArchivedSubviews:subviewsCopy];
  [(_UITextFieldBackgroundProvider *)self->_backgroundProvider populateArchivedSubviews:subviewsCopy];
  if (self->_iconView)
  {
    [subviewsCopy removeObject:?];
  }

  if (self->_placeholderLabel)
  {
    [subviewsCopy removeObject:?];
  }

  if (self->_label)
  {
    [subviewsCopy removeObject:?];
  }

  if (self->_clearButton)
  {
    [subviewsCopy removeObject:?];
  }

  if (self->_contentBackdropView)
  {
    [subviewsCopy removeObject:?];
  }

  if (self->_textCanvasView)
  {
    [subviewsCopy removeObject:?];
  }

  if (self->_fieldEditor)
  {
    [subviewsCopy removeObject:?];
  }

  _selectionViewManager = [(UITextInteractionAssistant *)self->_interactionAssistant _selectionViewManager];
  [_selectionViewManager _filterArchivedSubviews:subviewsCopy];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v40.receiver = self;
  v40.super_class = UITextField;
  [(UIControl *)&v40 encodeWithCoder:coderCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [coderCopy encodeConditionalObject:WeakRetained];
  }

  if ([(UITextField *)self adjustsFontForContentSizeCategory])
  {
    [coderCopy encodeBool:1 forKey:@"UIAdjustsFontForContentSizeCategory"];
  }

  v6 = self->_textStorage;
  font = [(_UICascadingTextStorage *)self->_textStorage font];

  if (font)
  {
    font2 = [(_UICascadingTextStorage *)v6 font];
    [coderCopy encodeObject:font2 forKey:@"UIFont"];
  }

  placeholder = [(UITextField *)self placeholder];

  if (placeholder)
  {
    placeholder2 = [(UITextField *)self placeholder];
    [coderCopy encodeObject:placeholder2 forKey:@"UIPlaceholder"];
  }

  if ((*(&self->_textFieldFlags + 1) & 0x20) != 0)
  {
    [coderCopy encodeInteger:-[_UICascadingTextStorage textAlignment](v6 forKey:{"textAlignment"), @"UITextAlignment"}];
  }

  if ([(NSConcreteTextStorage *)v6 length])
  {
    if ((*(&self->_textFieldFlags + 2) & 2) != 0)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v6];
      [coderCopy encodeObject:v11 forKey:@"UIAttributedText"];
    }

    string = [(NSConcreteTextStorage *)v6 string];
    [coderCopy encodeObject:string forKey:@"UIText"];
  }

  image = [(UIImageView *)self->_iconView image];

  if (image)
  {
    image2 = [(UIImageView *)self->_iconView image];
    [coderCopy encodeObject:image2 forKey:@"UIIcon"];
  }

  textColor = [(_UICascadingTextStorage *)v6 textColor];

  if (textColor)
  {
    textColor2 = [(_UICascadingTextStorage *)v6 textColor];
    [coderCopy encodeObject:textColor2 forKey:@"UITextColor"];
  }

  leftView = self->_leftView;
  if (leftView)
  {
    [coderCopy encodeObject:leftView forKey:@"UILeftView"];
  }

  rightView = self->_rightView;
  if (rightView)
  {
    [coderCopy encodeObject:rightView forKey:@"UIRightView"];
  }

  background = self->_background;
  if (background)
  {
    [coderCopy encodeObject:background forKey:@"UITextFieldBackground"];
  }

  disabledBackground = self->_disabledBackground;
  if (disabledBackground)
  {
    [coderCopy encodeObject:disabledBackground forKey:@"UITextFieldDisabledBackground"];
  }

  borderStyle = [(UITextField *)self borderStyle];
  if (borderStyle)
  {
    [coderCopy encodeInteger:borderStyle forKey:@"UIBorderStyle"];
  }

  if ([(UITextField *)self clearsOnBeginEditing])
  {
    [coderCopy encodeBool:1 forKey:@"UIClearsOnBeginEditing"];
  }

  textFieldFlags = self->_textFieldFlags;
  if ((*&textFieldFlags & 0x80) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIAdjustsFontSizeToFit"];
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

  [coderCopy encodeBool:0 forKey:@"UIBecomesFirstResponderOnClearButtonTap"];
  if ((*&self->_textFieldFlags & 0x10000) != 0)
  {
LABEL_34:
    [coderCopy encodeBool:1 forKey:@"UIAllowsEditingTextAttributes"];
  }

LABEL_35:
  minimumFontSize = self->_minimumFontSize;
  if (minimumFontSize != 0.0)
  {
    *&minimumFontSize = minimumFontSize;
    [coderCopy encodeFloat:@"UIMinimumFontSize" forKey:minimumFontSize];
  }

  clearButtonMode = self->_clearButtonMode;
  if (clearButtonMode)
  {
    [coderCopy encodeInteger:clearButtonMode forKey:@"UIClearButtonMode"];
  }

  if (self->_clearButtonOffset.width != 0.0 || self->_clearButtonOffset.height != 0.0)
  {
    [coderCopy encodeCGSize:@"UIClearButtonOffset" forKey:?];
  }

  v25 = *&self->_padding.top;
  v26 = *&self->_padding.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v25), vceqzq_f64(v26))))))
  {
    [coderCopy encodeUIEdgeInsets:@"UIPadding" forKey:{*&v25, *&v26}];
  }

  autocapitalizationType = [(UITextField *)self autocapitalizationType];
  if (autocapitalizationType)
  {
    [coderCopy encodeInteger:autocapitalizationType forKey:@"UIAutocapitalizationType"];
  }

  autocorrectionType = [(UITextField *)self autocorrectionType];
  if (autocorrectionType)
  {
    [coderCopy encodeInteger:autocorrectionType forKey:@"UIAutocorrectionType"];
  }

  spellCheckingType = [(UITextField *)self spellCheckingType];
  if (spellCheckingType)
  {
    [coderCopy encodeInteger:spellCheckingType forKey:@"UISpellCheckingType"];
  }

  keyboardAppearance = [(UITextField *)self keyboardAppearance];
  if (keyboardAppearance)
  {
    [coderCopy encodeInteger:keyboardAppearance forKey:@"UIKeyboardAppearance"];
  }

  keyboardType = [(UITextField *)self keyboardType];
  if (keyboardType)
  {
    [coderCopy encodeInteger:keyboardType forKey:@"UIKeyboardType"];
  }

  returnKeyType = [(UITextField *)self returnKeyType];
  if (returnKeyType)
  {
    [coderCopy encodeInteger:returnKeyType forKey:@"UIReturnKeyType"];
  }

  if ([(UITextField *)self enablesReturnKeyAutomatically])
  {
    [coderCopy encodeBool:1 forKey:@"UIEnablesReturnKeyAutomatically"];
  }

  if ([(UITextField *)self isSecureTextEntry])
  {
    [coderCopy encodeBool:1 forKey:@"UISecureTextEntry"];
  }

  passwordRules = [(UITextField *)self passwordRules];
  if (passwordRules)
  {
    [coderCopy encodeObject:passwordRules forKey:@"UITextInputPasswordRules"];
  }

  textContentType = [(UITextField *)self textContentType];
  if (textContentType)
  {
    [coderCopy encodeObject:textContentType forKey:@"UITextContentType"];
  }

  smartInsertDeleteType = [(UITextField *)self smartInsertDeleteType];
  if (smartInsertDeleteType)
  {
    [coderCopy encodeInteger:smartInsertDeleteType forKey:@"UITextSmartInsertDeleteType"];
  }

  smartQuotesType = [(UITextField *)self smartQuotesType];
  if (smartQuotesType)
  {
    [coderCopy encodeInteger:smartQuotesType forKey:@"UITextSmartQuotesType"];
  }

  smartDashesType = [(UITextField *)self smartDashesType];
  if (smartDashesType)
  {
    [coderCopy encodeInteger:smartDashesType forKey:@"UITextSmartDashesType"];
  }

  inlinePredictionType = [(UITextField *)self inlinePredictionType];
  if (inlinePredictionType)
  {
    [coderCopy encodeInteger:inlinePredictionType forKey:@"UITextInlinePredictionType"];
  }

  [coderCopy encodeBool:self->_disableTextColorUpdateOnTraitCollectionChange forKey:@"UIDisableTextColorUpdateOnTraitCollectionChange"];
  [(UITextField *)self _roundedRectBackgroundCornerRadius];
  if (fabs(v39 + -5.0) > 0.00000011920929)
  {
    [coderCopy encodeDouble:@"UIRoundedRectBackgroundCornerRadius" forKey:?];
  }

  if ((*(&self->_textFieldFlags + 4) & 0x40) != 0)
  {
    [coderCopy encodeInteger:1 forKey:@"UILetterformAwareSizingRule"];
  }
}

- (void)_encodeBackgroundColorWithCoder:(id)coder
{
  coderCopy = coder;
  backgroundColor = [(UITextField *)self backgroundColor];
  if (backgroundColor)
  {
    [coderCopy encodeObject:backgroundColor forKey:@"UIBackgroundColor"];
  }
}

- (void)dealloc
{
  v7[3] = *MEMORY[0x1E69E9840];
  [(UITextField *)self _stopObservingFieldEditorScroll];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7[0] = @"UIKeyboardDidShowNotification";
  v7[1] = @"UIAccessibilityReduceTransparencyStatusDidChangeNotification";
  v7[2] = @"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

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
  borderStyle = [(UITextField *)self borderStyle];
  if (borderStyle > UITextBorderStyleRoundedRect)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E7126430[borderStyle];
  }

  backgroundProvider = self->_backgroundProvider;
  if (!backgroundProvider)
  {
    backgroundProvider = @"(nil)";
  }

  backgroundProvider = [v5 stringWithFormat:@" borderStyle = %@; background = %@", v7, backgroundProvider];;
  v10 = [v4 rangeOfString:@"; layer ="];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v4 length] - 1;
  }

  [v4 insertString:backgroundProvider atIndex:v10];
  placeholder = [(UITextField *)self placeholder];
  if (placeholder)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@" placeholder = %@", placeholder];;
    [v4 insertString:v12 atIndex:v10];
  }

  v13 = [v4 copy];

  return v13;
}

- (void)_sizeChanged:(BOOL)changed
{
  if (changed)
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

  interactionAssistant = [(UITextField *)self interactionAssistant];
  _selectionView = [interactionAssistant _selectionView];
  [_selectionView updateSelectionRects];

  [(UILabel *)self->_placeholderLabel setNeedsDisplay];
  [(_UITextCanvas *)self->_textCanvasView setNeedsDisplay];
  backgroundProvider = self->_backgroundProvider;

  [(_UITextFieldBackgroundProvider *)backgroundProvider setNeedsDisplay];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (CGRect)_responderSelectionRectForWindow:(id)window
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
    [(UIView *)&v7 _responderSelectionRectForWindow:window];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_responderExternalTouchRectForWindow:(id)window
{
  if (*(&self->_textFieldFlags + 1))
  {
    windowCopy = window;
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor _responderExternalTouchRectForWindow:windowCopy];
    v6 = v15;
    v8 = v16;
    v10 = v17;
    v12 = v18;
  }

  else
  {
    v23.receiver = self;
    v23.super_class = UITextField;
    windowCopy2 = window;
    [(UIView *)&v23 _responderExternalTouchRectForWindow:windowCopy2];
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

- (CGSize)_textSizeUsingFullFontSize:(BOOL)size
{
  sizeCopy = size;
  [(UIResponder *)self _caretRect];
  v6 = v5;
  v7 = self->_textStorage;
  v8 = v7;
  if ((*(&self->_textFieldFlags + 2) & 2) != 0)
  {
    font = [(_UICascadingTextStorage *)v7 _UIKBStringWideAttributeValueForKey:*off_1E70EC918];
    if (font && [(NSConcreteTextStorage *)v8 length])
    {
      [(_UICascadingTextStorage *)v8 size];
      v11 = v10;
      v13 = v12;
      goto LABEL_13;
    }
  }

  font = [(_UICascadingTextStorage *)v8 font];
  if (sizeCopy)
  {
    [(UITextField *)self _fullFontSize];
    v14 = [font fontWithSize:?];

    font = v14;
  }

  if (!font)
  {
    [off_1E70ECC18 defaultFontSize];
    font = [off_1E70ECC18 systemFontOfSize:?];
  }

  text = [(UITextField *)self text];
  v16 = [(__CFString *)text length];
  v17 = @" ";
  if (v16)
  {
    v17 = text;
  }

  v18 = v17;

  [(__CFString *)v18 _legacy_sizeWithFont:font];
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

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
    font = [(_UICascadingTextStorage *)v12 font];
    [(UITextField *)self _fullFontSize];
    v18 = [font fontWithSize:?];
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

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  v4 = [(UIView *)self superview:size.width];
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

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
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

  _metricsProvider = [(UITextField *)self _metricsProvider];
  [_metricsProvider intrinsicSizeForContentSize:{v30, v31}];
  v45 = v44;
  v47 = v46;

  traitCollection2 = [(UIView *)self traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 6)
  {
    [(UITextField *)self _visionOverrideNaturalHeight:v45, v47];
  }

  if (kdebug_is_enabled())
  {
    v50 = [(UITextField *)self description];
    [v50 UTF8String];
    kdebug_trace_string();

    superview = [(UIView *)self superview];
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

- (void)_applicableContentOutsetsFromFontsOversize:(int)oversize extremeSizing:
{
  if (self && a2 | oversize)
  {
    if (*(self + 905))
    {
      _fieldEditor = [self _fieldEditor];
      [_fieldEditor _fullContentInsetsFromFonts];
    }

    else
    {
      _fieldEditor = [self text];
      v5 = +[UILabel _tooBigChars];
      v6 = [_fieldEditor rangeOfCharacterFromSet:v5];

      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ((*(self + 906) & 2) != 0)
        {
          v8 = *(self + 816);
          font = [v8 font];
          [UILabel _insetsForAttributedString:v8 withDefaultFont:font inView:self];
        }

        else
        {
          font = [self font];
          [UILabel _insetsForString:_fieldEditor withFont:font inView:self];
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

- (void)_selectGestureChanged:(id)changed
{
  if ([changed state] == 3)
  {
    [(UITextField *)self _setHighlighted:0 animated:1];

    [(UITextField *)self becomeFirstResponder];
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (![UIDictationController takesPressesBegan:beganCopy forTextView:self])
  {
    v8 = +[UIKeyboard activeKeyboard];
    v9 = [v8 canHandlePresses:beganCopy withEvent:eventCopy];

    if (!v9)
    {
      _lastPreparedPress = [eventCopy _lastPreparedPress];
      if ([_lastPreparedPress type] == 4)
      {
        isEnabled = [(UIControl *)self isEnabled];

        if (isEnabled)
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
      [(UIResponder *)&v13 pressesBegan:beganCopy withEvent:eventCopy];
      goto LABEL_9;
    }

    v10 = +[UIKeyboard activeKeyboard];
    [v10 pressesBegan:beganCopy withEvent:eventCopy];
  }

LABEL_9:
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  changedCopy = changed;
  eventCopy = event;
  if (![UIDictationController takesPressesChanged:changedCopy forTextView:self])
  {
    v8 = +[UIKeyboard activeKeyboard];
    v9 = [v8 canHandlePresses:changedCopy withEvent:eventCopy];

    if (v9)
    {
      v10 = +[UIKeyboard activeKeyboard];
      [v10 pressesChanged:changedCopy withEvent:eventCopy];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = UITextField;
      [(UIResponder *)&v11 pressesChanged:changedCopy withEvent:eventCopy];
    }
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (![UIDictationController takesPressesEnded:endedCopy forTextView:self])
  {
    v8 = +[UIKeyboard activeKeyboard];
    v9 = [v8 canHandlePresses:endedCopy withEvent:eventCopy];

    if (!v9)
    {
      _lastPreparedPress = [eventCopy _lastPreparedPress];
      if ([_lastPreparedPress type] == 4)
      {
        isHighlighted = [(UIControl *)self isHighlighted];

        if (isHighlighted)
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
      [(UIResponder *)&v13 pressesEnded:endedCopy withEvent:eventCopy];
      goto LABEL_9;
    }

    v10 = +[UIKeyboard activeKeyboard];
    [v10 pressesEnded:endedCopy withEvent:eventCopy];
  }

LABEL_9:
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  v8 = +[UIKeyboard activeKeyboard];
  v9 = [v8 canHandlePresses:cancelledCopy withEvent:eventCopy];

  if (!v9)
  {
    _lastPreparedPress = [eventCopy _lastPreparedPress];
    if ([_lastPreparedPress type] == 4)
    {
      isHighlighted = [(UIControl *)self isHighlighted];

      if (isHighlighted)
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
    [(UIResponder *)&v13 pressesCancelled:cancelledCopy withEvent:eventCopy];
    goto LABEL_8;
  }

  v10 = +[UIKeyboard activeKeyboard];
  [v10 pressesCancelled:cancelledCopy withEvent:eventCopy];

LABEL_8:
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  [(UITextField *)self _animateNextHighlightChange];
  v9.receiver = self;
  v9.super_class = UITextField;
  LOBYTE(self) = [(UIControl *)&v9 beginTrackingWithTouch:touchCopy withEvent:eventCopy];

  return self;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  [(UITextField *)self _animateNextHighlightChange];
  v9.receiver = self;
  v9.super_class = UITextField;
  LOBYTE(self) = [(UIControl *)&v9 continueTrackingWithTouch:touchCopy withEvent:eventCopy];

  return self;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  [(UITextField *)self _animateNextHighlightChange];
  v8.receiver = self;
  v8.super_class = UITextField;
  [(UIControl *)&v8 endTrackingWithTouch:touchCopy withEvent:eventCopy];
}

- (void)cancelTrackingWithEvent:(id)event
{
  eventCopy = event;
  [(UITextField *)self _animateNextHighlightChange];
  v5.receiver = self;
  v5.super_class = UITextField;
  [(UIControl *)&v5 cancelTrackingWithEvent:eventCopy];
}

- (void)_setDisableFocus:(BOOL)focus
{
  v3 = 0x1000000;
  if (!focus)
  {
    v3 = 0;
  }

  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)_setForegroundViewsAlpha:(double)alpha
{
  self->_foregroundViewsAlpha = alpha;
  [(UIView *)self->_iconView setAlpha:?];
  leftView = [(UITextField *)self leftView];
  [(UITextField *)self _maximumAlphaForLeadingView];
  [leftView setAlpha:v6 * alpha];

  rightView = [(UITextField *)self rightView];
  [rightView setAlpha:alpha];

  _clearButton = [(UITextField *)self _clearButton];
  [_clearButton setAlpha:alpha];

  [(_UITextCanvas *)self->_textCanvasView setAlpha:alpha];
  placeholderLabel = self->_placeholderLabel;
  [(UITextField *)self _placeholderLabelAlphaForForegroundViewsAlpha:alpha];

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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v4.receiver = self;
  v4.super_class = UITextField;
  [(UIView *)&v4 didUpdateFocusInContext:context withAnimationCoordinator:coordinator];
}

- (BOOL)_allowsChangingFirstResponderForFocusUpdateWithContext:(id)context
{
  contextCopy = context;
  if (-[UITextField _supportsKeyboardNavigationForSuggestions](self, "_supportsKeyboardNavigationForSuggestions") && -[UIView isFirstResponder](self, "isFirstResponder") && ([contextCopy nextFocusedItem], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [[_UIDynamicFocusGroupMap alloc] initWithCoordinateSpace:self];
    v7 = [(_UIDynamicFocusGroupMap *)v6 focusGroupIdentifierForItem:self];
    self = [contextCopy nextFocusedItem];
    v8 = [(_UIDynamicFocusGroupMap *)v6 focusGroupIdentifierForItem:self];

    LODWORD(self) = [v7 isEqualToString:v8] ^ 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UITextField;
    LOBYTE(self) = [(UIResponder *)&v10 _allowsChangingFirstResponderForFocusUpdateWithContext:contextCopy];
  }

  return self;
}

- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)engine
{
  _supportsKeyboardNavigationForSuggestions = [(UITextField *)self _supportsKeyboardNavigationForSuggestions];
  if (engine == 2 && _supportsKeyboardNavigationForSuggestions)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = UITextField;
  return [(UIResponder *)&v7 _shouldForwardMovementToFocusEngine:engine];
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
  _focusBehavior = [(UIView *)self _focusBehavior];
  focusGroupContainmentBehavior = [_focusBehavior focusGroupContainmentBehavior];

  if ((focusGroupContainmentBehavior & 0x200) != 0)
  {
    _systemDefaultFocusGroupIdentifier = _UIFocusGroupIdentifierForInstance(self);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITextField;
    _systemDefaultFocusGroupIdentifier = [(UIControl *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return _systemDefaultFocusGroupIdentifier;
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context
{
  contextCopy = context;
  _contentFloatingContainerView = [(UITextField *)self _contentFloatingContainerView];

  if (_contentFloatingContainerView)
  {
    _contentFloatingContainerView2 = [(UITextField *)self _contentFloatingContainerView];
    v9 = [_contentFloatingContainerView2 _preferredConfigurationForFocusAnimation:animation inContext:contextCopy];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UITextField;
    v9 = [(UIView *)&v11 _preferredConfigurationForFocusAnimation:animation inContext:contextCopy];
  }

  return v9;
}

- (void)_setSupportsKeyboardNavigationForSuggestions:(BOOL)suggestions
{
  v3 = 0x10000000000;
  if (!suggestions)
  {
    v3 = 0;
  }

  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)_initialScrollDidFinish:(id)finish
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

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (qword_1ED49AAA0 != -1)
  {
    dispatch_once(&qword_1ED49AAA0, &__block_literal_global_2339);
  }

  if (_MergedGlobals_55 == 1)
  {
    v8.receiver = self;
    v8.super_class = UITextField;
    [(UIControl *)&v8 touchesCancelled:cancelledCopy withEvent:eventCopy];
  }

  else
  {
    [(UITextField *)self touchesEnded:cancelledCopy withEvent:eventCopy];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (qword_1ED49AAA0 != -1)
  {
    dispatch_once(&qword_1ED49AAA0, &__block_literal_global_2339);
  }

  if (_MergedGlobals_55 == 1)
  {
    v8.receiver = self;
    v8.super_class = UITextField;
    [(UIControl *)&v8 touchesEnded:endedCopy withEvent:eventCopy];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v49.receiver = self;
  v49.super_class = UITextField;
  v10 = [(UIControl *)&v49 hitTest:eventCopy withEvent:x, y];
  superview = [(UIView *)self->_clearButton superview];
  if (superview == self)
  {
    v13 = eventCopy;
    v14 = 0;
  }

  else
  {
    superview2 = [(UIView *)self->_leftView superview];
    if (superview2 == self)
    {
      v13 = eventCopy;
      v14 = 0;
    }

    else
    {
      superview3 = [(UIView *)self->_rightView superview];
      v5 = superview3;
      if (superview3 != self)
      {

LABEL_44:
        goto LABEL_45;
      }

      v13 = eventCopy;
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

  _fieldEditor = [(UITextField *)self _fieldEditor];
  v15 = v10 == _fieldEditor;

  if (v14)
  {
LABEL_11:
  }

LABEL_12:
  if (superview != self)
  {

    if (v15)
    {
      goto LABEL_14;
    }

LABEL_20:
    eventCopy = v13;
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
  _textStorage = [(UITextField *)self _textStorage];
  _ui_resolvedTextAlignment = [_textStorage _ui_resolvedTextAlignment];

  if (_ui_resolvedTextAlignment)
  {
    v24 = v17 + v19;
    v25 = v17 + v19 - v21 + -20.0;
    if (v17 >= v25)
    {
      v25 = v17;
    }

    v26 = v25;
    eventCopy = v13;
    if (_ui_resolvedTextAlignment == 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v26 = v17;
    v24 = v17 + v19;
    eventCopy = v13;
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
    superview4 = [(UIView *)self->_leftView superview];
    v36 = superview4;
    if (superview4 == self)
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
    superview5 = [(UIView *)self->_clearButton superview];
    v39 = superview5;
    if (superview5 == self)
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
    superview = [(UIView *)self->_rightView superview];
    if (superview != self)
    {
      goto LABEL_44;
    }

    v41 = UIViewIgnoresTouchEvents(self->_rightView);

    if ((v41 & 1) == 0)
    {
LABEL_41:
      clearButton = *(&self->super.super.super.super.isa + v34);
LABEL_43:
      superview = v10;
      v10 = clearButton;
      goto LABEL_44;
    }
  }

LABEL_45:
  selfCopy2 = v10;
  if (v10 != self->_leftView)
  {
    selfCopy2 = v10;
    if (v10 != self->_rightView)
    {
      selfCopy2 = v10;
      if (v10 != self->_clearButton)
      {
        if ([(_UITextFieldBackgroundProvider *)self->_backgroundProvider hitTestView:v10])
        {
          selfCopy2 = self;
          goto LABEL_55;
        }

        if (*(&self->_textFieldFlags + 1))
        {
          _fieldEditor2 = [(UITextField *)self _fieldEditor];
          v45 = _fieldEditor2;
          if (v10 == _fieldEditor2)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            selfCopy2 = self;
            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_55;
            }
          }

          else
          {
          }
        }

        selfCopy2 = v10;
      }
    }
  }

LABEL_55:
  v47 = selfCopy2;

  return v47;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection _focusSystemState] == 2)
  {
    [(UITextField *)self _installSelectGestureRecognizer];
  }

  else
  {
    [(UITextField *)self _uninstallSelectGestureRecognizer];
  }

  userInterfaceIdiom = [changeCopy userInterfaceIdiom];
  if (userInterfaceIdiom == [traitCollection userInterfaceIdiom])
  {
    [(_UITextFieldBackgroundProvider *)self->_backgroundProvider traitCollectionDidChange:changeCopy];
  }

  else
  {
    [(UITextField *)self _invalidateBackgroundProvider];
  }

  userInterfaceStyle = [traitCollection userInterfaceStyle];
  if (userInterfaceStyle != [changeCopy userInterfaceStyle])
  {
    [(UITextField *)self _updateTextEffectsConfigurationIfNeeded];
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UITextField *)self setNeedsLayout];
  }

  v8.receiver = self;
  v8.super_class = UITextField;
  [(UIView *)&v8 traitCollectionDidChange:changeCopy];
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

- (void)_setFullFontSize:(id)size
{
  sizeCopy = size;
  if (!sizeCopy)
  {
    sizeCopy = +[_UIFullFontSize defaultValue];
  }

  obj = sizeCopy;
  if (![(_UIFullFontSize *)self->_fullFontSize isEqual:sizeCopy])
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

- (CGSize)_visionOverrideNaturalHeight:(CGSize)height
{
  height = height.height;
  width = height.width;
  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if ([(NSString *)preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryXXXL"])
  {
    height = 48.0;
  }

  else if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    height = 52.0;
  }

  v7 = width;
  heightCopy = height;
  result.height = heightCopy;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)_visionOverrideHorizontalInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
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

- (void)setFont:(id)font fullFontSize:(id)size ambientOnly:(BOOL)only
{
  onlyCopy = only;
  fontCopy = font;
  sizeCopy = size;
  v9 = self->_textStorage;
  v10 = v9;
  if (onlyCopy)
  {
    if (fontCopy)
    {
      defaultAttributes = [(_UICascadingTextStorage *)v9 defaultAttributes];
      v12 = [defaultAttributes mutableCopy];
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

      [v15 setObject:fontCopy forKeyedSubscript:*off_1E70EC918];
      [(_UICascadingTextStorage *)v10 setDefaultAttributes:v15];
    }
  }

  else
  {
    [(_UICascadingTextStorage *)v9 setFont:fontCopy];
  }

  if (!self->_overriddenPlaceholder)
  {
    [(UILabel *)self->_placeholderLabel setFont:fontCopy];
  }

  [(UILabel *)self->_label setFont:fontCopy];
  [(UILabel *)self->_suffixLabel setFont:fontCopy];
  [(UILabel *)self->_prefixLabel setFont:fontCopy];
  [(UITextField *)self _setFullFontSize:sizeCopy];
  if (onlyCopy)
  {
    if (fontCopy)
    {
      defaultAttributes2 = [(_UICascadingTextStorage *)v10 defaultAttributes];
      v17 = [defaultAttributes2 mutableCopy];
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

      [v20 setObject:fontCopy forKeyedSubscript:*off_1E70EC918];
      [(_UICascadingTextStorage *)v10 setDefaultAttributes:v20];
    }
  }

  else
  {
    [(_UICascadingTextStorage *)v10 setFont:fontCopy];
  }

  if ([(UITextField *)self _shouldObscureInput])
  {
    [(UITextField *)self _forceObscureAllText];
  }

  [(UITextField *)self _syncTypingAttributesWithDefaultAttribute:*off_1E70EC918];
  _inputController = [(UITextField *)self _inputController];
  [_inputController _updateEmptyStringAttributes];
  [_inputController _selectionGeometryChanged];
  [(UITextField *)self setNeedsLayout];
  [(UIView *)self invalidateIntrinsicContentSize];
  if (!onlyCopy)
  {
    [(UITextField *)self _didSetFont:fontCopy];
  }

  [(UITextField *)self _invalidateAllGlyphsAndTextLayout];
}

- (float)_newFontSize:(float)size maxSize:(float)maxSize
{
  if (size <= maxSize)
  {
    maxSizeCopy = size;
  }

  else
  {
    maxSizeCopy = maxSize;
  }

  [(UITextField *)self actualMinimumFontSize];
  if (v6 > maxSizeCopy)
  {
    [(UITextField *)self actualMinimumFontSize];
    return v7;
  }

  return maxSizeCopy;
}

- (id)_copyFont:(id)font newSize:(float)size maxSize:(float)maxSize
{
  if (!font)
  {
    return 0;
  }

  fontCopy = font;
  *&v9 = size;
  *&v10 = maxSize;
  [(UITextField *)self _newFontSize:v9 maxSize:v10];
  v12 = [fontCopy fontWithSize:v11];

  return v12;
}

- (float)_marginTop
{
  [(UIView *)self bounds];

  [(UITextField *)self _marginTopForBounds:?];
  return result;
}

- (float)_marginTopForBounds:(CGRect)bounds
{
  if ((*&self->_textFieldFlags & 1) != 0 || [(UIControl *)self contentVerticalAlignment:bounds.origin.x]== UIControlContentVerticalAlignmentCenter || [(UIControl *)self contentVerticalAlignment]== UIControlContentVerticalAlignmentBottom)
  {
    v4 = [(UITextField *)self font:bounds.origin.x];
    [v4 lineHeight];

    [(UITextField *)self textRectForBounds:0.0, 0.0, 100.0, 100.0];
    [(UIControl *)self contentVerticalAlignment];
  }

  else
  {
    v7 = self->_textStorage;
    font = [(_UICascadingTextStorage *)v7 font];
    [font pointSize];
    v10 = v9;

    [(UITextField *)self _fullFontSize];
    v12 = v11;
    if (v12 > v10)
    {
      font2 = [(_UICascadingTextStorage *)v7 font];
      *&v14 = v12;
      *&v15 = v12;
      v16 = [(UITextField *)self _copyFont:font2 newSize:v14 maxSize:v15];

      [v16 ascender];
      font3 = [(_UICascadingTextStorage *)v7 font];
      [font3 ascender];
    }
  }

  UIRoundToViewScale(self);
  return v5;
}

- (id)_clearButtonImageForState:(unint64_t)state
{
  if (state)
  {
    v3 = 0;
    goto LABEL_15;
  }

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    v7 = +[UIColor whiteColor];
    _partsShouldBeMini = 2;
  }

  else
  {
    _partsShouldBeMini = [(UITextField *)self _partsShouldBeMini];
    v7 = 0;
  }

  tintColor = [(UIView *)self tintColor];
  traitCollection2 = [(UIView *)self traitCollection];
  v3 = _GetTextFieldClearButtonWithCustomColorContrastSettings(0, _partsShouldBeMini, v7, tintColor, traitCollection2, [(UIView *)self _accessibilityResolvedInterfaceStyle]== 1, [(UITextField *)self _forcesClearButtonHighContrastAppearance]);

  if (_TextFieldScalesClearButton())
  {
    traitCollection3 = [(UIView *)self traitCollection];
    userInterfaceIdiom2 = [traitCollection3 userInterfaceIdiom];

    if (userInterfaceIdiom2 != 6)
    {
      font = [(UITextField *)self font];
      traitCollection4 = [(UIView *)self traitCollection];
      preferredContentSizeCategory = [traitCollection4 preferredContentSizeCategory];
      if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
      {
        if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_11.isa) != NSOrderedAscending)
        {
          v16 = 1;
LABEL_13:

          v17 = [UIImageSymbolConfiguration configurationWithFont:font scale:v16];
          v18 = [v3 imageWithConfiguration:v17];

          v3 = v18;
          goto LABEL_14;
        }

        UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_9.isa);
      }

      v16 = 2;
      goto LABEL_13;
    }
  }

LABEL_14:

LABEL_15:

  return v3;
}

- (BOOL)_shouldAnimateTransitionForAccessoryView:(id)view
{
  viewCopy = view;
  window = [(UIView *)self window];
  if (window && [(UITextField *)self _isAccessoryViewAnimatable:viewCopy])
  {
    traitCollection = [(UIView *)self traitCollection];
    v7 = [traitCollection userInterfaceIdiom] != 6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isAccessoryViewAnimatable:(id)animatable
{
  animatableCopy = animatable;
  if ([(UIControl *)self _allowsSymbolAnimations])
  {
    v5 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      _imageViewIfNeeded = [animatableCopy _imageViewIfNeeded];
      image = [_imageViewIfNeeded image];
      isSymbolImage = [image isSymbolImage];
    }

    else
    {
      isSymbolImage = 0;
    }
  }

  else
  {
    isSymbolImage = 0;
  }

  return isSymbolImage;
}

- (void)_transitionFromAccessoryView:(id)view toView:(id)toView allowingAnimation:(BOOL)animation
{
  animationCopy = animation;
  viewCopy = view;
  toViewCopy = toView;
  _contentView = [(UITextField *)self _contentView];
  if (viewCopy)
  {
    superview = [viewCopy superview];

    if (superview == _contentView)
    {
      if (animationCopy && [(UITextField *)self _shouldAnimateTransitionForAccessoryView:viewCopy])
      {
        v12 = viewCopy;
        _imageViewIfNeeded = [v12 _imageViewIfNeeded];
        disappearDownEffect = [MEMORY[0x1E6982258] disappearDownEffect];
        options = [MEMORY[0x1E6982278] options];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __69__UITextField__transitionFromAccessoryView_toView_allowingAnimation___block_invoke;
        v24[3] = &unk_1E71262F0;
        v25 = v12;
        v16 = v12;
        [_imageViewIfNeeded addSymbolEffect:disappearDownEffect options:options animated:1 completion:v24];
      }

      else
      {
        [viewCopy removeFromSuperview];
      }
    }
  }

  if (toViewCopy)
  {
    superview2 = [toViewCopy superview];

    if (superview2 != _contentView)
    {
      if (animationCopy && [(UITextField *)self _shouldAnimateTransitionForAccessoryView:toViewCopy])
      {
        v18 = toViewCopy;
        _imageViewIfNeeded2 = [v18 _imageViewIfNeeded];
        disappearDownEffect2 = [MEMORY[0x1E6982258] disappearDownEffect];
        options2 = [MEMORY[0x1E6982278] options];
        [_imageViewIfNeeded2 addSymbolEffect:disappearDownEffect2 options:options2 animated:0];

        [_contentView addSubview:v18];
        _imageViewIfNeeded3 = [v18 _imageViewIfNeeded];

        appearUpEffect = [MEMORY[0x1E6982238] appearUpEffect];
        [_imageViewIfNeeded3 addSymbolEffect:appearUpEffect];
      }

      else
      {
        [_contentView addSubview:toViewCopy];
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

- (void)_updateButtonsAllowingAnimation:(BOOL)animation
{
  animationCopy = animation;
  _contentView = [(UITextField *)self _contentView];
  superview = [(UIView *)self->_clearButton superview];

  if ([(UITextField *)self _showsClearButton:[(UITextField *)self isEditing]])
  {
    clearButton = [(UITextField *)self clearButton];
    v7 = +[UIView areAnimationsEnabled];
    v8 = superview == _contentView && v7;
    [UIView setAnimationsEnabled:v8];
    [(UITextField *)self clearButtonRect];
    [(UIButton *)self->_clearButton setFrame:?];
    [(UIView *)self->_clearButton setUserInteractionEnabled:1];
    [(_UITextFieldClearButton *)self->_clearButton setPointerInteractionEnabled:[(UITextField *)self _hasCustomClearButtonImage]^ 1];
    [(UITextField *)self _transitionFromAccessoryView:0 toView:self->_clearButton allowingAnimation:animationCopy];
    [UIView setAnimationsEnabled:v7];
  }

  else
  {
    [(UITextField *)self _transitionFromAccessoryView:self->_clearButton toView:0 allowingAnimation:animationCopy];
  }

  if (self->_leftView)
  {
    if ([(UITextField *)self _showsLeftView])
    {
      [(UITextField *)self _transitionFromAccessoryView:0 toView:self->_leftView allowingAnimation:animationCopy];
      [(UIView *)self bounds];
      [(UITextField *)self leftViewRectForBounds:?];
      [(UIView *)self->_leftView setFrame:?];
    }

    else
    {
      [(UITextField *)self _transitionFromAccessoryView:self->_leftView toView:0 allowingAnimation:animationCopy];
    }
  }

  if (self->_rightView)
  {
    if ([(UITextField *)self _showsRightView])
    {
      [(UITextField *)self _transitionFromAccessoryView:0 toView:self->_rightView allowingAnimation:animationCopy];
      [(UIView *)self bounds];
      [(UITextField *)self rightViewRectForBounds:?];
      [(UIView *)self->_rightView setFrame:?];
    }

    else
    {
      [(UITextField *)self _transitionFromAccessoryView:self->_rightView toView:0 allowingAnimation:animationCopy];
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

- (BOOL)_showsClearButtonWhenNonEmpty:(BOOL)empty
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
      if (!empty)
      {
LABEL_7:
        _hasContent = [(UITextField *)self _hasContent];
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *(&self->_textFieldFlags + 1) & 1;
      if (!empty)
      {
        goto LABEL_7;
      }
    }

    _hasContent = 1;
LABEL_10:
    if ([(UITextField *)self clearButtonMode]== UITextFieldViewModeWhileEditing)
    {
      v5 = v6 & _hasContent ^ 1;
    }

    else
    {
      v5 = ([(UITextField *)self clearButtonMode]== UITextFieldViewModeUnlessEditing) & v6 & _hasContent;
    }

    goto LABEL_13;
  }

  v5 = 1;
LABEL_13:
  v8 = *(&self->super.super._viewFlags + 2);
  if ((v8 & 0x400000) != 0)
  {
    _showsLeftView = [(UITextField *)self _showsLeftView];
  }

  else
  {
    _showsLeftView = [(UITextField *)self _showsRightView];
  }

  if ((v5 | _showsLeftView))
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

- (BOOL)_showsClearButton:(BOOL)button
{
  buttonCopy = button;
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 3 && !-[UITextField _showsTrailingView](self, "_showsTrailingView"))
  {
    v7 = _UISolariumEnabled();

    if ((v7 & 1) == 0)
    {
      traitCollection2 = [(UIView *)self traitCollection];
      interactionModel = [traitCollection2 interactionModel];

      return interactionModel & 1;
    }
  }

  else
  {
  }

  if ([(UITextField *)self _hasContent])
  {

    return [(UITextField *)self _showsClearButtonWhenNonEmpty:buttonCopy];
  }

  else
  {

    return [(UITextField *)self _showsClearButtonWhenEmpty];
  }
}

- (BOOL)_isShowingPlaceholder
{
  superview = [(UIView *)self->_placeholderLabel superview];
  v3 = superview != 0;

  return v3;
}

- (BOOL)_isShowingPrefix
{
  superview = [(UIView *)self->_prefixLabel superview];
  v3 = superview != 0;

  return v3;
}

- (CGRect)_availableTextRectExcludingButtonsForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _metricsProvider = [(UITextField *)self _metricsProvider];
  [_metricsProvider contentFrameForBounds:{x, y, width, height}];
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

- (CGRect)_availableTextRectForBounds:(CGRect)bounds forEditing:(BOOL)editing
{
  editingCopy = editing;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  v9 = *(&self->super.super._viewFlags + 2);
  x = bounds.origin.x;
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
    text = [(UILabel *)suffixLabel text];
    font = [(UILabel *)self->_suffixLabel font];
    [text _legacy_sizeWithFont:font];
    v45 = fmin(v15, v44);

    v15 = v15 - v45;
  }

  prefixLabel = self->_prefixLabel;
  if (prefixLabel)
  {
    text2 = [(UILabel *)prefixLabel text];
    font2 = [(UILabel *)self->_prefixLabel font];
    [text2 _legacy_sizeWithFont:font2];
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

    if ([(UITextField *)self _showsLeftView]&& !v56 || [(UITextField *)self _hasContent]&& [(UITextField *)self _showsClearButtonWhenNonEmpty:editingCopy]|| ![(UITextField *)self _hasContent]&& [(UITextField *)self _showsClearButtonWhenEmpty])
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
    if (((IsRightToLeftInputModeActive & 1) != 0 || [(_UICascadingTextStorage *)self->_textStorage _ui_resolvedTextAlignment]== 2 || [(UITextField *)self _hasContent]) && [(UITextField *)self _showsClearButtonWhenNonEmpty:editingCopy]|| ![(UITextField *)self _hasContent]&& [(UITextField *)self _showsClearButtonWhenEmpty])
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

- (id)_viewForLoweringBaselineLayoutAttribute:(int)attribute
{
  textFieldFlags = self->_textFieldFlags;
  v4 = *&textFieldFlags >= 0 && (attribute - 11) >= 2;
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

- (double)_baselineOffsetForLast:(BOOL)last autolayoutOnly:(BOOL)only
{
  lastCopy = last;
  if (only && (*(&self->super.super._viewFlags + 7) & 2) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = currentHandler;
    v11 = @"_firstBaselineOffsetFromTop";
    if (lastCopy)
    {
      v11 = @"_baselineOffsetFromBottom";
    }

    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextField.m" lineNumber:3235 description:{@"-[UITextField %@] only valid when using auto layout", v11}];
  }

  p_firstBaselineOffsetFromTop = &self->_firstBaselineOffsetFromTop;
  if (self->_firstBaselineOffsetFromTop == 0.0 && self->_lastBaselineOffsetFromBottom == 0.0)
  {
    [(UITextField *)self _updateBaselineInformationDependentOnBoundsAllowingInvalidation:0];
  }

  if (lastCopy)
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

- (void)_updateBaselineInformationDependentOnBoundsAllowingInvalidation:(BOOL)invalidation
{
  invalidationCopy = invalidation;
  _wantsAutolayout = [(UIView *)self _wantsAutolayout];
  v7 = _wantsAutolayout;
  if (invalidationCopy && !_wantsAutolayout)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextField.m" lineNumber:3289 description:@"invalidation is only applicable to auto layout"];

    if (v7)
    {
      goto LABEL_4;
    }
  }

  else if (_wantsAutolayout)
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
  _inputController = [(UITextField *)self _inputController];
  textLayoutController = [(UITextField *)self textLayoutController];
  typingAttributes = [_inputController typingAttributes];
  [(UITextField *)self textContainerOrigin];
  v24 = [_UITextLayoutControllerBase baselineCalculatorForView:textLayoutController typingAttributes:self usesLineFragmentOrigin:typingAttributes fallbackTextContainerOrigin:0];

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
    _layoutEngineCreateIfNecessary = 0;
LABEL_19:
    self->_firstBaselineOffsetFromTop = v26;
    self->_lastBaselineOffsetFromBottom = v28;
    if (invalidationCopy)
    {
      v31 = _layoutEngineCreateIfNecessary;
      [(UIView *)self _invalidateBaselineConstraints];
      _layoutEngineCreateIfNecessary = v31;
    }

    goto LABEL_21;
  }

  _layoutEngineCreateIfNecessary = [(UIView *)self _layoutEngineCreateIfNecessary];
  if (_layoutEngineCreateIfNecessary)
  {
    goto LABEL_19;
  }

LABEL_21:
}

- (void)setSizingRule:(int64_t)rule
{
  if (((*&self->_textFieldFlags >> 38) & 1) != rule)
  {
    if ((*(&self->super.super._viewFlags + 7) & 2) != 0)
    {
      superview = 0;
    }

    else
    {
      superview = [(UIView *)self superview];
      if (superview)
      {
        v14 = superview;
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

        superview = v14;
      }
    }

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFBFFFFFFFFFLL | ((rule == 1) << 38));
  }
}

- (void)_setExtremeSizingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UITextField *)self _isExtremeSizingEnabled]!= enabled)
  {
    if ((*(&self->super.super._viewFlags + 7) & 2) != 0)
    {
      superview = 0;
    }

    else
    {
      superview = [(UIView *)self superview];
      if (superview)
      {
        v11 = superview;
        [(UIView *)self bounds];
        width = v13.size.width;
        height = v13.size.height;
        v8 = CGRectGetHeight(v13);
        [(UITextField *)self sizeThatFits:width, height];
        if (v8 == v9)
        {
          [v11 setNeedsLayout];
        }

        superview = v11;
      }
    }

    v10 = 0x2000000000;
    if (!enabledCopy)
    {
      v10 = 0;
    }

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFDFFFFFFFFFLL | v10);
  }
}

- (CGRect)_suffixFrame
{
  _isShowingPlaceholder = [(UITextField *)self _isShowingPlaceholder];
  placeholderLabel = self;
  if (_isShowingPlaceholder)
  {
    placeholderLabel = self->_placeholderLabel;
  }

  text = [placeholderLabel text];
  font = [(UITextField *)self font];
  [text _legacy_sizeWithFont:font];
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
  text2 = [(UILabel *)self->_suffixLabel text];
  font2 = [(UILabel *)self->_suffixLabel font];
  [text2 _legacy_sizeWithFont:font2];
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

  _ui_resolvedTextAlignment = [(_UICascadingTextStorage *)self->_textStorage _ui_resolvedTextAlignment];
  v35 = v14;
  v36 = v16;
  v37 = v18;
  v38 = v20;
  if (_ui_resolvedTextAlignment == 1)
  {
    v39 = v8 * 0.5 + CGRectGetMidX(*&v35) + -1.0;
  }

  else if (_ui_resolvedTextAlignment == 2)
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
  _isShowingPlaceholder = [(UITextField *)self _isShowingPlaceholder];
  placeholderLabel = self;
  if (_isShowingPlaceholder)
  {
    placeholderLabel = self->_placeholderLabel;
  }

  text = [placeholderLabel text];
  font = [(UITextField *)self font];
  [text _legacy_sizeWithFont:font];
  v8 = v7;

  [(UIView *)self bounds];
  [(UITextField *)self _availableTextRectForBounds:[(UITextField *)self isEditing] forEditing:v9, v10, v11, v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  text2 = [(UILabel *)self->_prefixLabel text];
  font2 = [(UILabel *)self->_prefixLabel font];
  [text2 _legacy_sizeWithFont:font2];
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

  _ui_resolvedTextAlignment = [(_UICascadingTextStorage *)self->_textStorage _ui_resolvedTextAlignment];
  v35 = v14;
  v36 = v16;
  v37 = v18;
  v38 = v20;
  if (_ui_resolvedTextAlignment == 1)
  {
    v40 = CGRectGetMidX(*&v35) + v8 * -0.5 - v24 + -1.0;
  }

  else
  {
    if (_ui_resolvedTextAlignment == 2)
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

- (void)floatingContentView:(id)view isTransitioningFromState:(unint64_t)state toState:(unint64_t)toState
{
  [(UITextField *)self _tvUpdateContentBackdropView:view];
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
        selfCopy2 = self;
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
      selfCopy2 = self;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "TextKit1 layout manager requested from field (%@) configured to use TextKit2", &v9, 0xCu);
    }
  }

  layoutManager = [(_UITextLayoutController *)self->_textLayoutController layoutManager];

  return layoutManager;
}

- (CGRect)adjustedCaretRectForCaretRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(UILabel *)self->_placeholderLabel textAlignment]== NSTextAlignmentCenter && ![(UITextField *)self _hasContent])
  {
    text = [(UILabel *)self->_placeholderLabel text];
    if (![text length])
    {
LABEL_8:

      goto LABEL_9;
    }

    superview = [(UIView *)self->_placeholderLabel superview];

    if (superview)
    {
      placeholderLabel = self->_placeholderLabel;
      textInputView = [(UITextField *)self textInputView];
      [(UIView *)placeholderLabel convertRect:textInputView fromView:x, y, width, height];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      [(UIView *)self->_placeholderLabel bounds];
      v19 = v18;
      v21 = v20;
      [(UILabel *)self->_placeholderLabel textRectForBounds:?];
      v23 = v22;
      v24 = round(v19 + (v21 - v22) * 0.5);
      text2 = [(UILabel *)self->_placeholderLabel text];
      LODWORD(textInputView) = [text2 _isNaturallyRTL];

      v26 = -v15;
      if (textInputView)
      {
        v26 = v23;
      }

      v27 = v26 + v24;
      v28 = self->_placeholderLabel;
      text = [(UITextField *)self textInputView];
      [(UIView *)v28 convertRect:text toView:v27, v13, v15, v17];
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
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor contentOffset];
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

- (void)_setLeftViewOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
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

- (void)_setRightViewOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
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

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if ((valueForKey__checkedPlaceholderLabel & 1) == 0 && [keyCopy isEqualToString:@"_placeholderLabel"])
  {
    UIKVCAccessProhibited(v5, @"UITextField");
    valueForKey__checkedPlaceholderLabel = 1;
  }

  v8.receiver = self;
  v8.super_class = UITextField;
  v6 = [(UITextField *)&v8 valueForKey:v5];

  return v6;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  textInputTraits = [(UITextField *)self textInputTraits];
  v6 = [textInputTraits valueForKey:keyCopy];

  return v6;
}

- (void)takeTraitsFrom:(id)from
{
  fromCopy = from;
  textInputTraits = [(UITextField *)self textInputTraits];
  [textInputTraits takeTraitsFrom:fromCopy];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if ([objc_opt_class() instancesRespondToSelector:selector])
  {
    textInputTraits = [(UITextField *)self textInputTraits];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITextField;
    textInputTraits = [(UITextField *)&v7 forwardingTargetForSelector:selector];
  }

  return textInputTraits;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  }

  v7 = v6;

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = UITextField;
  if ([(UITextField *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    textInputTraits = [(UITextField *)self textInputTraits];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)_increaseContrastSettingChanged:(id)changed
{
  [(UITextField *)self _invalidateCachedDefaultClearButtonImages];

  [(UITextField *)self setNeedsLayout];
}

- (void)_setForcesClearButtonHighContrastAppearance:(BOOL)appearance
{
  if (((((*&self->_textFieldFlags & 0x20000000) == 0) ^ appearance) & 1) == 0)
  {
    v9 = v3;
    v8 = 0x20000000;
    if (!appearance)
    {
      v8 = 0;
    }

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFDFFFFFFFLL | v8);
    [(UITextField *)self _invalidateCachedDefaultClearButtonImages:v4];

    [(UITextField *)self setNeedsLayout];
  }
}

- (void)setDevicePasscodeEntry:(BOOL)entry
{
  entryCopy = entry;
  textInputTraits = [(UITextField *)self textInputTraits];
  if ([textInputTraits isDevicePasscodeEntry] != entryCopy)
  {
    [textInputTraits setDevicePasscodeEntry:entryCopy];
    [(UITextField *)self _didChangeSecureTextEntry];
  }
}

- (void)setSecureTextEntry:(BOOL)entry
{
  entryCopy = entry;
  textInputTraits = [(UITextField *)self textInputTraits];
  if ([textInputTraits isSecureTextEntry] != entryCopy)
  {
    [textInputTraits setSecureTextEntry:entryCopy];
    [(UITextField *)self _didChangeSecureTextEntry];
  }
}

- (void)setDisplaySecureTextUsingPlainText:(BOOL)text
{
  textCopy = text;
  textInputTraits = [(UITextField *)self textInputTraits];
  if ([textInputTraits displaySecureTextUsingPlainText] != textCopy)
  {
    [textInputTraits setDisplaySecureTextUsingPlainText:textCopy];
    [(_UITextLayoutController *)self->_textLayoutController setDocumentObscured:[(UITextField *)self _shouldObscureInput]];
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor setDisplaySecureTextUsingPlainText:textCopy];
  }
}

- (void)setDisplaySecureEditsUsingPlainText:(BOOL)text
{
  textCopy = text;
  textInputTraits = [(UITextField *)self textInputTraits];
  if ([textInputTraits displaySecureEditsUsingPlainText] != textCopy)
  {
    [textInputTraits setDisplaySecureEditsUsingPlainText:textCopy];
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor setDisplaySecureEditsUsingPlainText:textCopy];
  }
}

- (void)setKeyboardAppearance:(int64_t)appearance
{
  textInputTraits = [(UITextField *)self textInputTraits];
  _isPasscodeStyle = [(UITextField *)self _isPasscodeStyle];
  if ([textInputTraits keyboardAppearance] != appearance)
  {
    [textInputTraits setKeyboardAppearance:appearance];
    [(UITextField *)self _noteThatKeyboardAppearanceHasChanged];
    [(UITextField *)self _invalidatePasscodeStyleFromStyle:_isPasscodeStyle];
  }
}

- (void)setPasswordRules:(id)rules
{
  rulesCopy = rules;
  textInputTraits = [(UITextField *)self textInputTraits];
  passwordRules = [textInputTraits passwordRules];
  v6 = [rulesCopy isEqual:passwordRules];

  if ((v6 & 1) == 0)
  {
    [textInputTraits setPasswordRules:rulesCopy];
  }
}

- (void)_invalidatePasscodeStyleFromStyle:(BOOL)style
{
  _isPasscodeStyle = [(UITextField *)self _isPasscodeStyle];
  if (style || !_isPasscodeStyle)
  {
    if (_isPasscodeStyle || !style)
    {
      return;
    }

    defaultAttributes = [(_UICascadingTextStorage *)self->_textStorage defaultAttributes];
    v14 = [defaultAttributes mutableCopy];

    [v14 removeObjectForKey:*off_1E70EC950];
    [(_UICascadingTextStorage *)self->_textStorage setDefaultAttributes:v14];
    [(UITextField *)self setTextColor:0];
    [(UITextField *)self _invalidateBackgroundProvider];
    [(UITextField *)self setNeedsLayout];
  }

  else
  {
    v6 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v6 userInterfaceIdiom];

    v8 = 16.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = 18.0;
      v9 = &unk_1EFE2EF88;
    }

    else
    {
      v9 = &unk_1EFE2EF98;
    }

    v14 = [off_1E70ECC18 systemFontOfSize:v8];
    defaultAttributes2 = [(_UICascadingTextStorage *)self->_textStorage defaultAttributes];
    v11 = [defaultAttributes2 mutableCopy];

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

- (id)annotatedSubstringForRange:(id)range
{
  rangeCopy = range;
  _inputController = [(UITextField *)self _inputController];
  v6 = [_inputController annotatedSubstringForRange:rangeCopy];

  return v6;
}

- (void)replaceRange:(id)range withAnnotatedString:(id)string relativeReplacementRange:(_NSRange)replacementRange
{
  length = replacementRange.length;
  location = replacementRange.location;
  stringCopy = string;
  rangeCopy = range;
  _inputController = [(UITextField *)self _inputController];
  [_inputController replaceRange:rangeCopy withAnnotatedString:stringCopy relativeReplacementRange:{location, length}];
}

- (void)removeAnnotation:(id)annotation forRange:(id)range
{
  rangeCopy = range;
  annotationCopy = annotation;
  _inputController = [(UITextField *)self _inputController];
  [_inputController removeAnnotation:annotationCopy forRange:rangeCopy];
}

- (void)setLinkTextAttributes:(id)attributes
{
  v4 = [attributes copy];
  linkTextAttributes = self->_linkTextAttributes;
  self->_linkTextAttributes = v4;

  documentRange = [(_UITextLayoutController *)self->_textLayoutController documentRange];
  if (([documentRange isEmpty] & 1) == 0)
  {
    [(_UITextLayoutController *)self->_textLayoutController invalidateLayoutForRange:documentRange];
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
    tintColor = [(UIView *)self tintColor];
    if (!tintColor)
    {
      tintColor = [(UIView *)self _normalInheritedTintColor];
      if ([(UIView *)self tintAdjustmentMode]== UIViewTintAdjustmentModeDimmed)
      {
        v10 = 0.0;
        v11 = 0.0;
        [tintColor getWhite:&v11 alpha:&v10];
        v7 = [UIColor colorWithWhite:v11 alpha:v10 * 0.8];

        tintColor = v7;
      }

      if (!tintColor)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UITextField.m" lineNumber:4461 description:@"Unable to derive tintColor!"];

        tintColor = 0;
      }
    }

    v12 = *off_1E70EC920;
    v13[0] = tintColor;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  return v3;
}

- (void)setAllowsAttachments:(BOOL)attachments
{
  if (((((*&self->_textFieldFlags & 0x4000000) == 0) ^ attachments) & 1) == 0)
  {
    attachmentsCopy = attachments;
    v5 = 0x4000000;
    if (!attachments)
    {
      v5 = 0;
    }

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFBFFFFFFLL | v5);
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor setAllowsAttachments:attachmentsCopy];

    if (!attachmentsCopy)
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
    _fieldEditor = [(UITextField *)self _fieldEditor];
    attributedText = [_fieldEditor attributedText];
  }

  else
  {
    attributedText = self->_textStorage;
  }

  return attributedText;
}

- (NSAttributedString)attributedText
{
  if ((*(&self->_textFieldFlags + 2) & 2) == 0)
  {
    text = [(UITextField *)self text];
    if (text)
    {
      _attributedText = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:text];
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      font = [(UITextField *)self font];

      if (font)
      {
        font2 = [(UITextField *)self font];
        [v5 setObject:font2 forKey:*off_1E70EC918];
      }

      textColor = [(UITextField *)self textColor];

      if (textColor)
      {
        textColor2 = [(UITextField *)self textColor];
        [v5 setObject:textColor2 forKey:*off_1E70EC920];
      }

      [_attributedText setAttributes:v5 range:{0, objc_msgSend(_attributedText, "length")}];
    }

    else
    {
      _attributedText = 0;
    }

    if (!_attributedText)
    {
      goto LABEL_12;
    }

LABEL_9:
    v10 = [_attributedText mutableCopy];
    mutableString = [v10 mutableString];
    textInputTraits = [(UITextField *)self textInputTraits];
    [mutableString _removeCharactersFromSet:{objc_msgSend(textInputTraits, "textTrimmingSet")}];

    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v10];
    goto LABEL_13;
  }

  _attributedText = [(UITextField *)self _attributedText];
  if (_attributedText)
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
    _rangeForClearButton = [(UITextField *)self _rangeForClearButton];
  }

  else
  {
    _rangeForClearButton = [(UITextField *)self _rangeForSetText];
  }

  [(UITextField *)self _setTextInRange:_rangeForClearButton replacementText:v6, v7];
}

- (void)_setTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  textCopy = text;
  *&self->_textFieldFlags &= ~0x20000uLL;
  v16 = textCopy;
  if (textCopy)
  {
    v8 = [(UITextField *)self _textNeedsSanitizing:textCopy];
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
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor setTextInRange:location replacementText:{length, v10}];

    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFFFF7FFFLL | (((*&textFieldFlags >> 15) & 1) << 15));
  }

  else if ([(__CFString *)v10 length]| length)
  {
    v12 = objc_alloc(MEMORY[0x1E696AAB0]);
    defaultAttributes = [(_UICascadingTextStorage *)self->_textStorage defaultAttributes];
    v14 = [v12 initWithString:v10 attributes:defaultAttributes];

    [(NSConcreteTextStorage *)self->_textStorage replaceCharactersInRange:location withAttributedString:length, v14];
  }

  [(UITextField *)self finishedSettingTextOrAttributedText];
}

- (void)_setAttributedTextOnFieldEditor:(id)editor setCaretSelectionAfterText:(BOOL)text
{
  textCopy = text;
  editorCopy = editor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = editorCopy;
  }

  else
  {
    v6 = [editorCopy mutableCopy];
  }

  v7 = v6;
  *&self->_textFieldFlags |= 0x20000uLL;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  _rangeForSetText = [(UITextField *)self _rangeForSetText];
  [_fieldEditor _setAttributedTextInRange:_rangeForSetText replacementText:v10 andSetCaretSelectionAfterText:{v7, textCopy}];
}

- (BOOL)_textNeedsSanitizing:(id)sanitizing
{
  sanitizingCopy = sanitizing;
  textInputTraits = [(UITextField *)self textInputTraits];
  textTrimmingSet = [textInputTraits textTrimmingSet];

  if (textTrimmingSet && [sanitizingCopy rangeOfCharacterFromSet:textTrimmingSet] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 1;
  }

  else
  {
    v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\r\n\uFFFC"];
    v8 = [sanitizingCopy rangeOfCharacterFromSet:v7] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (void)sanitizeAttributedText:(id)text
{
  textCopy = text;
  mutableString = [textCopy mutableString];
  [(UITextField *)self _sanitizeText:mutableString];

  +[_NSAttributedStringIntentResolver resolveAttributedString:inRange:](_UIAttributedStringIntentResolver, "resolveAttributedString:inRange:", textCopy, 0, [textCopy length]);
}

- (void)_sanitizeText:(id)text
{
  textCopy = text;
  textInputTraits = [(UITextField *)self textInputTraits];
  [textCopy _removeCharactersFromSet:{objc_msgSend(textInputTraits, "textTrimmingSet")}];

  if (![(UITextField *)self allowsAttachments])
  {
    v5 = [MEMORY[0x1E696AEC0] _stringWithUnichar:65532];
    [textCopy replaceOccurrencesOfString:v5 withString:&stru_1EFB14550 options:2 range:{0, objc_msgSend(textCopy, "length")}];
  }

  [textCopy replaceOccurrencesOfString:@"\r\n" withString:@"\n" options:2 range:{0, objc_msgSend(textCopy, "length")}];
  [textCopy replaceOccurrencesOfString:@"\r" withString:@"\n" options:2 range:{0, objc_msgSend(textCopy, "length")}];
  [textCopy replaceOccurrencesOfString:@"\n" withString:@" " options:2 range:{0, objc_msgSend(textCopy, "length")}];
}

- (void)_scrollRangeToVisible:(_NSRange)visible animated:(BOOL)animated
{
  if (*(&self->_textFieldFlags + 1))
  {
    [(UIFieldEditor *)self->_fieldEditor _scrollRangeToVisible:visible.location animated:visible.length, animated];
  }
}

- (void)_setAttributedText:(id)text setCaretSelectionAfterText:(BOOL)afterText
{
  afterTextCopy = afterText;
  *&self->_textFieldFlags |= 0x20000uLL;
  v6 = [text mutableCopy];
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

  mutableString = [v13 mutableString];
  [(UITextField *)self sanitizeAttributedText:v13];
  if (*(&self->_textFieldFlags + 1))
  {
    [(UITextField *)self _setAttributedTextOnFieldEditor:v13 setCaretSelectionAfterText:afterTextCopy];
  }

  else
  {
    v10 = self->_textStorage;
    _rangeForSetText = [(UITextField *)self _rangeForSetText];
    [(NSConcreteTextStorage *)v10 replaceCharactersInRange:_rangeForSetText withAttributedString:v12, v13];
    [(_UICascadingTextStorage *)v10 _restoreOriginalFontAttribute];
    [(_UICascadingTextStorage *)v10 setLineBreakMode:[(UITextField *)self nonEditingLinebreakMode]];
  }

  [(UITextField *)self finishedSettingTextOrAttributedText];
}

- (void)_syncTypingAttributesWithDefaultAttribute:(id)attribute
{
  attributeCopy = attribute;
  v5 = attributeCopy;
  if (*(&self->_textFieldFlags + 1))
  {
    v15 = attributeCopy;
    if (![attributeCopy isEqualToString:*off_1E70EC918] || (v6 = -[UITextField _tvHasFloatingFieldEditor](self, "_tvHasFloatingFieldEditor"), v5 = v15, !v6))
    {
      _fieldEditor = [(UITextField *)self _fieldEditor];
      _textStorage = [_fieldEditor _textStorage];
      defaultAttributes = [_textStorage defaultAttributes];

      _inputController = [(UITextField *)self _inputController];
      v11 = [defaultAttributes objectForKey:v15];
      [_inputController _addToTypingAttributes:v15 value:v11];

      _textContainer = [_fieldEditor _textContainer];
      _inputController2 = [(UITextField *)self _inputController];
      typingAttributes = [_inputController2 typingAttributes];
      [_textContainer setAttributesForExtraLineFragment:typingAttributes];

      v5 = v15;
    }
  }
}

- (void)_setTextColor:(id)color
{
  [(_UICascadingTextStorage *)self->_textStorage setTextColor:color];

  [(UITextField *)self _updateLabelAppearance];
}

- (void)setShadowColor:(id)color
{
  [(_UICascadingTextStorage *)self->_textStorage setShadowColor:color];
  v4 = *off_1E70EC9B0;

  [(UITextField *)self _syncTypingAttributesWithDefaultAttribute:v4];
}

- (void)setShadowOffset:(CGSize)offset
{
  [(_UICascadingTextStorage *)self->_textStorage setShadowOffset:offset.width, offset.height];
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

- (void)setShadowBlur:(double)blur
{
  [(_UICascadingTextStorage *)self->_textStorage setShadowBlur:blur];
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
      interactionAssistant = [(UITextField *)self interactionAssistant];
      v7 = interactionAssistant;
      if (v3)
      {
        [interactionAssistant deactivateSelection];

        _text = [(UITextField *)self _text];
        -[UITextField setSelectionRange:](self, "setSelectionRange:", 0, [_text length]);
      }

      else
      {
        [interactionAssistant activateSelection];

        interactionAssistant2 = [(UITextField *)self interactionAssistant];
        [interactionAssistant2 setSelectionDisplayVisible:1];

        _text = [(UITextField *)self _fieldEditor];
        [_text setTextSelectionBehavior:{-[UITextInputTraits textSelectionBehavior](self->_traits, "textSelectionBehavior")}];
      }

      [(UITextField *)self _updateSelectionGestures];
    }
  }
}

- (void)setClearingBehavior:(int64_t)behavior
{
  textFieldFlags = self->_textFieldFlags;
  if (((*&textFieldFlags >> 18) & 3) == behavior)
  {
    return;
  }

  self->_textFieldFlags = (*&textFieldFlags & 0xFFFFFFFFFFF3FFFFLL | ((behavior & 3) << 18));
  [(UITextInputTraits *)self->_traits setTextSelectionBehavior:[(UITextField *)self textSelectionBehavior]];
  if (![(UITextField *)self isEditing])
  {
    return;
  }

  switch(behavior)
  {
    case 0:
      interactionAssistant = [(UITextField *)self interactionAssistant];
      [interactionAssistant activateSelection];

      interactionAssistant2 = [(UITextField *)self interactionAssistant];
      [interactionAssistant2 setSelectionDisplayVisible:1];

      interactionAssistant3 = [(UITextField *)self interactionAssistant];
      [interactionAssistant3 setSelectionHighlightMode:0];

      _fieldEditor = [(UITextField *)self _fieldEditor];
      [_fieldEditor setTextSelectionBehavior:{-[UITextInputTraits textSelectionBehavior](self->_traits, "textSelectionBehavior")}];
      goto LABEL_11;
    case 3:
      interactionAssistant4 = [(UITextField *)self interactionAssistant];
      [interactionAssistant4 setSelectionHighlightMode:1];
      goto LABEL_9;
    case 2:
      interactionAssistant4 = [(UITextField *)self interactionAssistant];
      [interactionAssistant4 deactivateSelection];
LABEL_9:

      _fieldEditor = [(UITextField *)self _text];
      -[UITextField setSelectionRange:](self, "setSelectionRange:", 0, [_fieldEditor length]);
LABEL_11:

      break;
  }

  [(UITextField *)self _updateSelectionGestures];
}

- (void)setFont:(UIFont *)font
{
  v10 = font;
  v4 = self->_textStorage;
  font = [(_UICascadingTextStorage *)v4 font];
  if (font != v10)
  {
    font2 = [(_UICascadingTextStorage *)v4 font];
    v7 = [font2 isEqual:v10];

    if (v7)
    {
      goto LABEL_8;
    }

    if (v10)
    {
      [(UIFont *)v10 pointSize];
      font = [_UIFullFontSize valued:?];
      selfCopy2 = self;
      v9 = v10;
    }

    else
    {
      font = +[_UIFullFontSize defaultValue];
      selfCopy2 = self;
      v9 = 0;
    }

    [(UITextField *)selfCopy2 setFont:v9 fullFontSize:font];
  }

LABEL_8:
}

- (void)setClipsToBounds:(BOOL)bounds
{
  v4.receiver = self;
  v4.super_class = UITextField;
  [(UIView *)&v4 setClipsToBounds:bounds];
  [(UIScrollView *)self->_fieldEditor setNeedsLayout];
}

- (id)defaultClearButtonImageForState:(unint64_t)state
{
  cachedDefaultClearButtonImages = self->_cachedDefaultClearButtonImages;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)cachedDefaultClearButtonImages objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [(UITextField *)self _clearButtonImageForState:state];
    if (v7)
    {
      v8 = self->_cachedDefaultClearButtonImages;
      if (!v8)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v10 = self->_cachedDefaultClearButtonImages;
        self->_cachedDefaultClearButtonImages = dictionary;

        v8 = self->_cachedDefaultClearButtonImages;
      }

      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
      [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v11];
    }
  }

  return v7;
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    [(UITextField *)self _adjustFontForAccessibilityTraits:0];
  }
}

- (void)_adjustFontForAccessibilityTraits:(BOOL)traits
{
  if (self->_adjustsFontForContentSizeCategory || traits)
  {
    traitCollection = [(UIView *)self traitCollection];
    font = [(UITextField *)self font];
    v6 = [font _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    font2 = [(UITextField *)self font];
    v8 = 0;
    if (font2 && v6)
    {
      font3 = [(UITextField *)self font];
      v8 = [font3 isEqual:v6] ^ 1;
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
    v12 = traitCollection;
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
    _inputController = [(UITextField *)self _inputController];
    [_inputController _selectionGeometryChanged];
  }
}

- (void)setDefaultTextAttributes:(NSDictionary *)defaultTextAttributes
{
  v5 = self->_textStorage;
  v6 = defaultTextAttributes;
  [(_UICascadingTextStorage *)v5 setDefaultAttributes:0];
  defaultAttributes = [(_UICascadingTextStorage *)v5 defaultAttributes];
  v8 = [defaultAttributes mutableCopy];

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
    _inputController = [(UITextField *)self _inputController];
    [_inputController _selectionGeometryChanged];
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

- (void)_setShouldUpdatePlaceholderTextAlignmentWhenOverridden:(BOOL)overridden
{
  v3 = 0x100000000000;
  if (!overridden)
  {
    v3 = 0;
  }

  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setContentVerticalAlignment:(int64_t)alignment
{
  if ([(UIControl *)self contentVerticalAlignment]!= alignment)
  {
    v5.receiver = self;
    v5.super_class = UITextField;
    [(UIControl *)&v5 setContentVerticalAlignment:alignment];
    [(UITextField *)self _setNeedsStyleRecalc];
    [(UIView *)self _invalidateBaselineConstraints];
  }
}

- (void)setControlSize:(int)size
{
  if (self->_controlSize != size)
  {
    self->_controlSize = size;
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

- (void)_invalidateBackgroundProviderForced:(BOOL)forced
{
  _preferredBackgroundProviderClass = [(UITextField *)self _preferredBackgroundProviderClass];
  if (forced || ([(UITextField *)self _backgroundProvider], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_class(), v6, _preferredBackgroundProviderClass != v7))
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

- (void)_setBackgroundProvider:(id)provider
{
  providerCopy = provider;
  backgroundProvider = self->_backgroundProvider;
  v6 = providerCopy;
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
    selfCopy = self;
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

- (void)_backgroundProviderClassOrImageBackgroundProviderClass:(void *)class
{
  if (class)
  {
    v3 = a2;
    if (class[59] && ([a2 isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      v3 = objc_opt_class();
    }

    class = v3;
    v2 = vars8;
  }

  return class;
}

- (void)_setMetricsProvider:(id)provider
{
  providerCopy = provider;
  backgroundProvider = self->_backgroundProvider;
  metricsProvider = self->_metricsProvider;
  v10 = providerCopy;
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
    if (backgroundProvider != providerCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  [(UITextField *)self _metricsProviderWillChange:v10];
  objc_storeStrong(&self->_metricsProvider, provider);
  [(UITextField *)self _metricsProviderDidChange];
LABEL_11:
  [(UITextField *)self _setNeedsStyleRecalc];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self _invalidateBaselineConstraints];
LABEL_12:
}

- (id)createPlaceholderLabelWithFont:(id)font andTextAlignment:(int64_t)alignment
{
  v5 = objc_alloc([(UITextField *)self _placeholderLabelClass:font]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  _placeholderColor = [(UITextField *)self _placeholderColor];
  [v6 setTextColor:_placeholderColor];

  [v6 setOpaque:0];
  [v6 setBackgroundColor:0];
  font = [(_UICascadingTextStorage *)self->_textStorage font];
  [v6 setFont:font];

  [v6 setTextAlignment:{-[_UICascadingTextStorage textAlignment](self->_textStorage, "textAlignment")}];
  [v6 _setOverrideUserInterfaceRenderingMode:{-[UITextField _preferredRenderingModeForPlaceholder](self, "_preferredRenderingModeForPlaceholder")}];
  _cuiCatalog = [(UITextField *)self _cuiCatalog];
  [v6 _setCuiCatalog:_cuiCatalog];

  _cuiStyleEffectConfiguration = [(UITextField *)self _cuiStyleEffectConfiguration];
  [v6 _setCuiStyleEffectConfiguration:_cuiStyleEffectConfiguration];

  return v6;
}

- (id)createTextLabelWithTextColor:(id)color
{
  colorCopy = color;
  v4 = [UITextFieldLabel alloc];
  v5 = [(UILabel *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [off_1E70ECC18 defaultFontSize];
  v6 = [off_1E70ECC18 systemFontOfSize:?];
  [(UILabel *)v5 setFont:v6];

  [(UIView *)v5 setOpaque:0];
  [(UIView *)v5 setBackgroundColor:0];
  [(UIView *)v5 setContentMode:3];
  if (colorCopy)
  {
    [(UILabel *)v5 setTextColor:colorCopy];
  }

  return v5;
}

- (void)setPlaceholders:(id)placeholders
{
  v4 = [placeholders copy];
  placeholders = self->_placeholders;
  self->_placeholders = v4;

  firstObject = [(NSArray *)self->_placeholders firstObject];
  [(UITextField *)self setPlaceholder:firstObject];
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

- (void)_setPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if ([placeholderCopy length])
  {
    [(UITextField *)self createPlaceholderIfNecessary];
  }

  if ([placeholderCopy length] || (-[UILabel text](self->_placeholderLabel, "text"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5))
  {
    text = [(UILabel *)self->_placeholderLabel text];
    v7 = [placeholderCopy isEqualToString:text];

    if ((v7 & 1) == 0)
    {
      [(UILabel *)self->_placeholderLabel setText:placeholderCopy];
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

- (void)setAttributedPlaceholders:(id)placeholders
{
  v4 = [placeholders copy];
  attributedPlaceholders = self->_attributedPlaceholders;
  self->_attributedPlaceholders = v4;

  firstObject = [(NSArray *)self->_attributedPlaceholders firstObject];
  [(UITextField *)self setAttributedPlaceholder:firstObject];
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

- (void)_setAttributedPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if ([placeholderCopy length])
  {
    [(UITextField *)self createPlaceholderIfNecessary];
  }

  if ([placeholderCopy length] || (-[UILabel attributedText](self->_placeholderLabel, "attributedText"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5))
  {
    attributedText = [(UILabel *)self->_placeholderLabel attributedText];
    v7 = [placeholderCopy isEqualToAttributedString:attributedText];

    if ((v7 & 1) == 0)
    {
      [(UILabel *)self->_placeholderLabel setAttributedText:placeholderCopy];
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
    attributedText = overriddenPlaceholder;
  }

  else
  {
    attributedText = [(UILabel *)self->_placeholderLabel attributedText];
  }

  return attributedText;
}

- (void)_setSuffix:(id)suffix withColor:(id)color
{
  suffixCopy = suffix;
  colorCopy = color;
  suffixLabel = self->_suffixLabel;
  if (suffixLabel)
  {
    [(UIView *)suffixLabel removeFromSuperview];
    v8 = self->_suffixLabel;
    self->_suffixLabel = 0;

    [(UITextField *)self setNeedsLayout];
  }

  if ([suffixCopy length])
  {
    v9 = colorCopy;
    if (!colorCopy)
    {
      v9 = +[UIColor placeholderTextColor];
    }

    v10 = [(UITextField *)self createTextLabelWithTextColor:v9];
    v11 = self->_suffixLabel;
    self->_suffixLabel = v10;

    if (!colorCopy)
    {
    }

    [(UILabel *)self->_suffixLabel setText:suffixCopy];
    font = [(UITextField *)self font];
    [(UILabel *)self->_suffixLabel setFont:font];

    [(UILabel *)self->_suffixLabel setTextAlignment:[(UITextField *)self _suffixLabelTextAlignment]];
    _cuiCatalog = [(UITextField *)self _cuiCatalog];
    [(UILabel *)self->_suffixLabel _setCuiCatalog:_cuiCatalog];

    _cuiStyleEffectConfiguration = [(UITextField *)self _cuiStyleEffectConfiguration];
    [(UILabel *)self->_suffixLabel _setCuiStyleEffectConfiguration:_cuiStyleEffectConfiguration];

    [(UITextField *)self setNeedsLayout];
  }
}

- (void)_updateSuffix:(id)suffix
{
  suffixLabel = self->_suffixLabel;
  if (suffixLabel)
  {
    [(UILabel *)suffixLabel setText:suffix];

    [(UITextField *)self setNeedsLayout];
  }

  else
  {

    [(UITextField *)self _setSuffix:suffix withColor:0];
  }
}

- (void)_setPrefix:(id)prefix
{
  prefixCopy = prefix;
  prefixLabel = self->_prefixLabel;
  v15 = prefixCopy;
  if (prefixLabel)
  {
    [(UIView *)prefixLabel removeFromSuperview];
    v6 = self->_prefixLabel;
    self->_prefixLabel = 0;

    prefixCopy = v15;
  }

  if ([prefixCopy length])
  {
    v7 = +[UIColor placeholderTextColor];
    placeholderLabel = self->_placeholderLabel;
    if (placeholderLabel)
    {
      textColor = [(UILabel *)placeholderLabel textColor];

      v7 = textColor;
    }

    v10 = [(UITextField *)self createTextLabelWithTextColor:v7];
    v11 = self->_prefixLabel;
    self->_prefixLabel = v10;

    [(UILabel *)self->_prefixLabel setText:v15];
    font = [(UITextField *)self font];
    [(UILabel *)self->_prefixLabel setFont:font];

    _cuiCatalog = [(UITextField *)self _cuiCatalog];
    [(UILabel *)self->_prefixLabel _setCuiCatalog:_cuiCatalog];

    _cuiStyleEffectConfiguration = [(UITextField *)self _cuiStyleEffectConfiguration];
    [(UILabel *)self->_prefixLabel _setCuiStyleEffectConfiguration:_cuiStyleEffectConfiguration];

    [(UITextField *)self setNeedsLayout];
  }
}

- (void)setClearsPlaceholderOnBeginEditing:(BOOL)editing
{
  v3 = 64;
  if (!editing)
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
    _backgroundProvider = [(UITextField *)self _backgroundProvider];
    [_backgroundProvider setNeedsDisplay];

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

- (id)_attributedStringForInsertionOfAttributedString:(id)string
{
  stringCopy = string;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  _inputController = [_fieldEditor _inputController];
  v7 = [_inputController _attributedStringForInsertionOfAttributedString:stringCopy];

  return v7;
}

- (NSDictionary)typingAttributes
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  typingAttributes = [_fieldEditor typingAttributes];

  return typingAttributes;
}

- (void)setTypingAttributes:(NSDictionary *)typingAttributes
{
  textFieldFlags = self->_textFieldFlags;
  if ((*&textFieldFlags & 0x100) != 0)
  {
    self->_textFieldFlags = (*&textFieldFlags | 0x20000);
    v6 = typingAttributes;
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor setTypingAttributes:v6];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundProvider = self->_backgroundProvider;
  if (backgroundProvider)
  {
    v6 = [(_UITextFieldBackgroundProvider *)backgroundProvider overridingSetBackgroundColor:colorCopy];

    colorCopy = v6;
  }

  _contentView = [(UITextField *)self _contentView];

  if (_contentView != self)
  {
    _contentView2 = [(UITextField *)self _contentView];
    [_contentView2 setBackgroundColor:colorCopy];

    colorCopy = 0;
  }

  v9.receiver = self;
  v9.super_class = UITextField;
  [(UIView *)&v9 setBackgroundColor:colorCopy];
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

- (void)_setActualLeftView:(id)view
{
  viewCopy = view;
  if (self->_leftView != viewCopy)
  {
    v9 = viewCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self->_leftView _setProxyPointerInteraction:0];
    }

    [(UIView *)self->_leftView _setOverrideUserInterfaceRenderingMode:-1];
    [(UITextField *)self _transitionFromAccessoryView:self->_leftView toView:0 allowingAnimation:0];
    objc_storeStrong(&self->_leftView, view);
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
      pointerInteraction = [(UIControl *)self pointerInteraction];
      [(UIView *)self->_leftView _setProxyPointerInteraction:pointerInteraction];
    }

    [(UIView *)self->_leftView _setOverrideUserInterfaceRenderingMode:1];
    [(UITextField *)self _showSymbolAnimatableLeftViewNowIfNeeded];
    [(UITextField *)self setNeedsLayout];
    viewCopy = v9;
  }
}

- (void)_setActualLeftViewMode:(int64_t)mode
{
  if (self->_leftViewMode != mode)
  {
    self->_leftViewMode = mode;
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

- (void)_setActualRightView:(id)view
{
  viewCopy = view;
  if (self->_rightView != viewCopy)
  {
    v9 = viewCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self->_rightView _setProxyPointerInteraction:0];
    }

    [(UIView *)self->_rightView _setOverrideUserInterfaceRenderingMode:-1];
    [(UITextField *)self _transitionFromAccessoryView:self->_rightView toView:0 allowingAnimation:0];
    objc_storeStrong(&self->_rightView, view);
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
      pointerInteraction = [(UIControl *)self pointerInteraction];
      [(UIView *)self->_rightView _setProxyPointerInteraction:pointerInteraction];
    }

    [(UIView *)self->_rightView _setOverrideUserInterfaceRenderingMode:1];
    [(UITextField *)self _showSymbolAnimatableRightViewNowIfNeeded];
    [(UITextField *)self setNeedsLayout];
    viewCopy = v9;
  }
}

- (void)_setActualRightViewMode:(int64_t)mode
{
  if (self->_rightViewMode != mode)
  {
    self->_rightViewMode = mode;
    [(UITextField *)self _showSymbolAnimatableRightViewNowIfNeeded];

    [(UITextField *)self setNeedsLayout];
  }
}

- (void)_setContentCoverView:(id)view
{
  viewCopy = view;
  contentCoverView = self->_contentCoverView;
  if (contentCoverView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)contentCoverView removeFromSuperview];
    objc_storeStrong(&self->_contentCoverView, view);
    [(UIView *)self->_contentCoverView setUserInteractionEnabled:0];
    [(UITextField *)self _contentCoverStateDidChange];
    viewCopy = v7;
  }
}

- (void)_setContentCoverViewMode:(int64_t)mode
{
  if (self->_contentCoverViewMode != mode)
  {
    self->_contentCoverViewMode = mode;
    [(UITextField *)self _contentCoverStateDidChange];
  }
}

- (void)_setContentCoverUnsecuresText:(BOOL)text
{
  if (((((*&self->_textFieldFlags & 0x10000000) == 0) ^ text) & 1) == 0)
  {
    v4 = 0x10000000;
    if (!text)
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

  _shouldObscureInput = [(UITextField *)self _shouldObscureInput];
  [(_UITextLayoutController *)self->_textLayoutController setDocumentObscured:_shouldObscureInput];
  if (_shouldObscureInput)
  {
    [(UIFieldEditor *)self->_fieldEditor _obscureAllText];
  }

  else
  {
    [(UITextField *)self _invalidateAllGlyphsAndTextLayout];
  }

  [(UITextField *)self _updateSelectionGestures];
}

- (void)_setBackgroundCoverView:(id)view
{
  viewCopy = view;
  backgroundCoverView = self->_backgroundCoverView;
  if (backgroundCoverView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)backgroundCoverView removeFromSuperview];
    objc_storeStrong(&self->_backgroundCoverView, view);
    [(UIView *)self->_backgroundCoverView setUserInteractionEnabled:0];
    [(UITextField *)self _backgroundCoverStateDidChange];
    viewCopy = v7;
  }
}

- (void)_setBackgroundCoverViewMode:(int64_t)mode
{
  if (self->_backgroundCoverViewMode != mode)
  {
    self->_backgroundCoverViewMode = mode;
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

- (void)setRecentsAccessoryView:(id)view
{
  viewCopy = view;
  if (self->_recentsAccessoryView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_recentsAccessoryView, view);
    viewCopy = v6;
  }
}

- (UIView)recentsAccessoryView
{
  recentsAccessoryView = self->_recentsAccessoryView;
  if (recentsAccessoryView)
  {
    inputAccessoryView = recentsAccessoryView;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITextField;
    inputAccessoryView = [(UIResponder *)&v5 inputAccessoryView];
  }

  return inputAccessoryView;
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

- (void)setInputAssistantItem:(id)item
{
  itemCopy = item;
  if (self->_inputAssistantItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_inputAssistantItem, item);
    itemCopy = v6;
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
  contentVerticalAlignment = [(UIControl *)self contentVerticalAlignment];
  if (contentVerticalAlignment != UIControlContentVerticalAlignmentTop)
  {
    v19 = v15 - v17;
    if (contentVerticalAlignment != UIControlContentVerticalAlignmentBottom)
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

- (CGSize)_clearButtonSize:(CGRect)size
{
  v4 = [(UIView *)self traitCollection:size.origin.x];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  v6 = 28.0;
  if (userInterfaceIdiom != 6 && (v6 = 19.0, _TextFieldScalesClearButton()) && (clearButton = self->_clearButton) != 0)
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

- (CGRect)_baselineLeftViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)_drawTextInRect:(CGRect)rect forLabel:(id)label
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  labelCopy = label;
  if (self->_placeholderLabel == labelCopy)
  {
    v10 = labelCopy;
    [(UITextField *)self drawPlaceholderInRect:x, y, width, height];
  }

  else if (self->_suffixLabel == labelCopy)
  {
    v10 = labelCopy;
    [(UITextField *)self drawSuffixInRect:x, y, width, height];
  }

  else
  {
    if (self->_prefixLabel != labelCopy)
    {
      goto LABEL_8;
    }

    v10 = labelCopy;
    [(UITextField *)self drawPrefixInRect:x, y, width, height];
  }

  labelCopy = v10;
LABEL_8:
}

- (void)setTextSelectionBehavior:(int)behavior
{
  [(UITextInputTraits *)self->_traits setTextSelectionBehavior:*&behavior];
  textSelectionBehavior = [(UITextField *)self textSelectionBehavior];
  traits = self->_traits;

  [(UITextInputTraits *)traits setTextSelectionBehavior:textSelectionBehavior];
}

- (id)_fieldEditorHostAllowingCreation:(BOOL)creation
{
  creationCopy = creation;
  v5 = objc_getAssociatedObject(self, &FieldEditorHostKey);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !creationCopy;
  }

  if (!v6)
  {
    v5 = [_UIFieldEditorHost fieldEditorHostForTextField:self];
    objc_setAssociatedObject(self, &FieldEditorHostKey, v5, 1);
  }

  return v5;
}

- (void)_detachFieldEditorDiscardingEdits:(BOOL)edits animated:(BOOL)animated
{
  v31 = *MEMORY[0x1E69E9840];
  fieldEditor = self->_fieldEditor;
  if (fieldEditor)
  {
    animatedCopy = animated;
    editsCopy = edits;
    _scrollAnimationEndedAction = [(UIFieldEditor *)fieldEditor _scrollAnimationEndedAction];

    if (_scrollAnimationEndedAction)
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
      if (animatedCopy && ([(UIScrollView *)self->_fieldEditor contentOffset], v13 > 0.0))
      {
        objc_initWeak(buf, self);
        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __58__UITextField__detachFieldEditorDiscardingEdits_animated___block_invoke;
        v26 = &unk_1E71263B8;
        objc_copyWeak(&v27, buf);
        v28 = editsCopy;
        [(UIFieldEditor *)self->_fieldEditor _setScrollAnimationEndedAction:&v23];
        [(UIFieldEditor *)self->_fieldEditor setContentOffset:1 animated:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v23, v24, v25, v26];
        objc_destroyWeak(&v27);
        objc_destroyWeak(buf);
      }

      else
      {
        if (!editsCopy)
        {
          [(UITextField *)self _willUpdateAfterDetachingFieldEditor];
        }

        [(UIFieldEditor *)self->_fieldEditor deactivateEditorDiscardingEdits:editsCopy];
        *&self->_textFieldFlags &= ~0x100uLL;
        if (!editsCopy)
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

          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter removeObserver:self name:@"UIApplicationResumedNotification" object:0];

          [(UITextField *)self _removeFieldEditorAndHost];
          if ((*(&self->_textFieldFlags + 2) & 2) != 0)
          {
            _inputController = [(UIFieldEditor *)self->_fieldEditor _inputController];
            typingAttributes = [_inputController typingAttributes];

            if (!typingAttributes || [typingAttributes count])
            {
              [(_UICascadingTextStorage *)self->_textStorage setDefaultAttributes:typingAttributes];
            }
          }

          interactionAssistant = [(UITextField *)self interactionAssistant];
          [interactionAssistant deactivateSelection];
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
    _fieldEditorHost = [(UITextField *)self _fieldEditorHost];

    if (has_internal_diagnostics)
    {
      if (_fieldEditorHost)
      {
        v18 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          _fieldEditorHost2 = [(UITextField *)self _fieldEditorHost];
          *buf = 138412290;
          v30 = _fieldEditorHost2;
          _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Detaching non-existing fieldeditor, but have a host (%@)", buf, 0xCu);
        }
      }
    }

    else if (_fieldEditorHost)
    {
      v19 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49AA70) + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        _fieldEditorHost3 = [(UITextField *)self _fieldEditorHost];
        *buf = 138412290;
        v30 = _fieldEditorHost3;
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
    string = [(NSAttributedString *)overriddenPlaceholder string];
  }

  else
  {
    attributedPlaceholder = [(UITextField *)self attributedPlaceholder];
    string2 = [attributedPlaceholder string];
    v7 = string2;
    if (string2)
    {
      placeholder = string2;
    }

    else
    {
      placeholder = [(UITextField *)self placeholder];
    }

    string = placeholder;
  }

  return string;
}

- (void)_invalidateAfterUpdatingEditingAttributes
{
  [(UITextField *)self setTypingAttributes:0];

  [(UITextField *)self _invalidateAllGlyphsAndTextLayout];
}

- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText
{
  markedTextCopy = markedText;
  inputCopy = input;
  textCopy = text;
  if (-[UITextField isEditing](self, "isEditing") || -[UITextField _showsContentCoverView](self, "_showsContentCoverView") && [textCopy isEqualToString:@"\n"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([textCopy isEqualToString:@"\n"])
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

    _fieldEditor = [(UITextField *)self _fieldEditor];
    selectionRanges = [_fieldEditor selectionRanges];

    v15 = 0;
    v11 = [(UITextField *)self _delegateShouldChangeCharactersInTextStorageRanges:selectionRanges replacementString:textCopy delegateCares:&v15];
    if ((v15 & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && WeakRetained != self)
    {
      v11 = [(UITextField *)WeakRetained keyboardInput:inputCopy shouldInsertText:textCopy isMarkedText:markedTextCopy];
    }

    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (BOOL)keyboardInput:(id)input shouldReplaceTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696B098];
  textCopy = text;
  inputCopy = input;
  v12 = [v9 valueWithRange:{location, length}];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  LOBYTE(length) = [(UITextField *)self keyboardInput:inputCopy shouldReplaceTextInRanges:v13 replacementText:textCopy];

  return length;
}

- (BOOL)keyboardInput:(id)input shouldReplaceTextInRanges:(id)ranges replacementText:(id)text
{
  rangesCopy = ranges;
  textCopy = text;
  if ([(UITextField *)self isEditing])
  {
    v9 = [(UITextField *)self _delegateShouldChangeCharactersInTextStorageRanges:rangesCopy replacementString:textCopy delegateCares:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)keyboardInputShouldDelete:(id)delete
{
  deleteCopy = delete;
  if ([(UITextField *)self isEditing])
  {
    _inputController = [(UITextField *)self _inputController];
    _rangesForBackwardsDelete = [_inputController _rangesForBackwardsDelete];

    v12 = 0;
    [_rangesForBackwardsDelete unionRange];
    if (v7 && (v8 = [(UITextField *)self _delegateShouldChangeCharactersInTextStorageRanges:_rangesForBackwardsDelete replacementString:&stru_1EFB14550 delegateCares:&v12], (v12 & 1) != 0))
    {
      v9 = v8;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = 1;
      if ((objc_opt_respondsToSelector() & 1) != 0 && WeakRetained != self)
      {
        v9 = [(UITextField *)WeakRetained keyboardInputShouldDelete:deleteCopy];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)keyboardInputChanged:(id)changed
{
  changedCopy = changed;
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
      v6 = [(UITextField *)WeakRetained keyboardInputChanged:changedCopy];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)keyboardInputChangedSelection:(id)selection
{
  selectionCopy = selection;
  if ([(UITextField *)self isEditing])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ((objc_opt_respondsToSelector() & 1) != 0 && WeakRetained != self)
    {
      [(UITextField *)WeakRetained keyboardInputChangedSelection:selectionCopy];
    }
  }
}

- (void)fieldEditorDidChange:(id)change
{
  if ([(UITextField *)self adjustsFontSizeToFitWidth])
  {
    [(UITextField *)self _setNeedsStyleRecalc];
  }

  _hasContent = [(UITextField *)self _hasContent];
  if (self->_clearButtonMode || _hasContent == [(UITextField *)self _isShowingPlaceholder])
  {
    [(UITextField *)self setNeedsLayout];
  }

  if (([(UITextField *)self _shouldSendContentChangedNotificationsIfOnlyMarkedTextChanged]|| ![(UITextField *)self hasMarkedText]) && (*(&self->_textFieldFlags + 1) & 0x80) == 0)
  {
    [(UIControl *)self _sendActionsForEvents:0x20000 withEvent:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UITextFieldTextDidChangeNotification" object:self];
  }

  if (_hasContent)
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

  _fieldEditorHost = [(UITextField *)self _fieldEditorHost];
  [_fieldEditorHost layoutIfNeeded];
}

- (_NSRange)fieldEditor:(id)editor willChangeSelectionFromCharacterRange:(_NSRange)range toCharacterRange:(_NSRange)characterRange
{
  length = characterRange.length;
  location = characterRange.location;
  v7 = range.length;
  v8 = range.location;
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

- (id)fieldEditor:(id)editor willChangeSelectionFromCharacterRanges:(id)ranges toCharacterRanges:(id)characterRanges
{
  rangesCopy = ranges;
  characterRangesCopy = characterRanges;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v10 = [WeakRetained textField:self willChangeSelectionFromCharacterRanges:rangesCopy toCharacterRanges:characterRangesCopy];

    characterRangesCopy = v10;
  }

  return characterRangesCopy;
}

- (void)fieldEditorDidChangeSelection:(id)selection
{
  selectionCopy = selection;
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

- (BOOL)fieldEditor:(id)editor shouldInsertText:(id)text replacingRanges:(id)ranges
{
  textCopy = text;
  rangesCopy = ranges;
  textDragDropSupport = self->_textDragDropSupport;
  if (!textDragDropSupport)
  {
    v10 = [UITextDragDropSupport installTextDragDropOnView:self];
    v11 = self->_textDragDropSupport;
    self->_textDragDropSupport = v10;

    textDragDropSupport = self->_textDragDropSupport;
  }

  [(UITextDragDropSupport *)textDragDropSupport notifyTextInteraction];
  v12 = [(UITextField *)self _delegateShouldChangeCharactersInTextStorageRanges:rangesCopy replacementString:textCopy delegateCares:0];
  [(UITextField *)self disableClearsOnInsertion];

  return v12;
}

- (BOOL)fieldEditorShouldExtendCaretHeight:(id)height
{
  _metricsProvider = [(UITextField *)self _metricsProvider];
  shouldExtendCaretHeight = [_metricsProvider shouldExtendCaretHeight];

  return shouldExtendCaretHeight;
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
    identifier = [*MEMORY[0x1E6983030] identifier];
    [v6 addObject:identifier];

    [qword_1ED49AA80 addObjectsFromArray:UIPasteboardTypeListString];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = qword_1ED49AA88;
    qword_1ED49AA88 = v8;

    [qword_1ED49AA88 addObject:*MEMORY[0x1E69E2FD8]];
    v10 = qword_1ED49AA88;
    identifier2 = [*MEMORY[0x1E6982F90] identifier];
    [v10 addObject:identifier2];

    v12 = qword_1ED49AA88;
    identifier3 = [*MEMORY[0x1E6982F98] identifier];
    [v12 addObject:identifier3];

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
  text = [(UITextField *)self text];
  v5 = [v3 arrayWithObject:text];

  return v5;
}

- (id)documentFragmentForPasteboardItemAtIndex:(int64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained documentFragmentForPasteboardItemAtIndex:index inTextField:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setClearButtonStyle:(int64_t)style
{
  if (style <= 2)
  {
    [(UITextField *)self setClearButtonMode:qword_18A682DB8[style]];
  }
}

- (void)drawRect:(CGRect)rect
{
  if ((*(&self->_textFieldFlags + 4) & 2) != 0)
  {
    [(UIView *)self bounds:rect.origin.x];
    [(UITextField *)self borderRectForBounds:?];
    backgroundProvider = self->_backgroundProvider;

    [(_UITextFieldBackgroundProvider *)backgroundProvider drawInBounds:?];
  }
}

- (void)_setPadding:(UIEdgeInsets)padding
{
  p_padding = &self->_padding;
  v4 = *&self->_padding.top;
  v5 = *&self->_padding.bottom;
  v6.f64[0] = padding.top;
  v6.f64[1] = padding.left;
  v7.f64[0] = padding.bottom;
  v7.f64[1] = padding.right;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, v4), vceqq_f64(v7, v5)))))
  {
    return;
  }

  if (padding.bottom != v5.f64[0])
  {
    p_padding->top = padding.top;
    self->_padding.left = padding.left;
    self->_padding.bottom = padding.bottom;
    self->_padding.right = padding.right;
LABEL_6:
    [(UIView *)self _invalidateBaselineConstraints];
    goto LABEL_7;
  }

  p_padding->top = padding.top;
  self->_padding.left = padding.left;
  self->_padding.bottom = padding.bottom;
  self->_padding.right = padding.right;
  if (padding.top != v4.f64[0])
  {
    goto LABEL_6;
  }

LABEL_7:

  [(UITextField *)self _setNeedsStyleRecalc];
}

- (void)_setLeadingPadding:(double)padding
{
  left = padding;
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    right = padding;
    left = self->_padding.left;
  }

  else
  {
    right = self->_padding.right;
  }

  [(UITextField *)self _setPadding:self->_padding.top, left, self->_padding.bottom, right];
}

- (void)_setTrailingPadding:(double)padding
{
  left = padding;
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    right = self->_padding.right;
  }

  else
  {
    right = padding;
    left = self->_padding.left;
  }

  [(UITextField *)self _setPadding:self->_padding.top, left, self->_padding.bottom, right];
}

- (void)_setEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  if ([(UIControl *)self isEnabled]!= enabled)
  {
    if (!enabledCopy && (*(&self->_textFieldFlags + 1) & 1) != 0 && [(UITextField *)self canResignFirstResponder])
    {
      resignFirstResponder = [(UITextField *)self resignFirstResponder];
      if (enabledCopy)
      {
        goto LABEL_9;
      }
    }

    else
    {
      resignFirstResponder = (*(&self->_textFieldFlags + 1) & 1) == 0;
      if (enabledCopy)
      {
LABEL_9:
        v8.receiver = self;
        v8.super_class = UITextField;
        [(UIControl *)&v8 setEnabled:enabledCopy];
        [(UITextField *)self _enabledDidChangeAnimated:animatedCopy];
        return;
      }
    }

    if (!resignFirstResponder)
    {
      return;
    }

    goto LABEL_9;
  }
}

- (void)_enabledDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _backgroundProvider = [(UITextField *)self _backgroundProvider];
  [_backgroundProvider enabledDidChangeAnimated:animatedCopy];
}

- (void)_setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  isHighlighted = [(UIControl *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = UITextField;
  [(UIControl *)&v8 setHighlighted:highlightedCopy];
  if (isHighlighted != [(UIControl *)self isHighlighted])
  {
    [(UITextField *)self _highlightedDidChangeAnimated:animatedCopy];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  textFieldFlags = self->_textFieldFlags;
  self->_textFieldFlags = (*&textFieldFlags & 0xFFFFFFFEFFFFFFFFLL);
  [(UITextField *)self _setHighlighted:highlighted animated:HIDWORD(*&textFieldFlags) & 1];
}

- (void)_highlightedDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _backgroundProvider = [(UITextField *)self _backgroundProvider];
  [_backgroundProvider highlightedDidChangeAnimated:animatedCopy];
}

- (void)selectAll
{
  _text = [(UITextField *)self _text];
  -[UITextField setSelectionRange:](self, "setSelectionRange:", 0, [_text length]);
}

- (void)_clearSelectionUI
{
  interactionAssistant = [(UITextField *)self interactionAssistant];
  activeSelection = [interactionAssistant activeSelection];
  [activeSelection clearSelection];

  interactionAssistant2 = [(UITextField *)self interactionAssistant];
  [interactionAssistant2 updateDisplayedSelection];
}

- (void)_resetSelectionUI
{
  interactionAssistant = [(UITextField *)self interactionAssistant];
  activeSelection = [interactionAssistant activeSelection];
  [activeSelection selectionChanged];

  interactionAssistant2 = [(UITextField *)self interactionAssistant];
  [interactionAssistant2 updateDisplayedSelection];
}

- (void)clearText
{
  if (*(&self->_textFieldFlags + 1))
  {
    _fieldEditor = [(UITextField *)self _fieldEditor];
    _rangeForSetText = [(UITextField *)self _rangeForSetText];
    [_fieldEditor setTextInRange:_rangeForSetText replacementText:{v5, &stru_1EFB14550}];
  }
}

- (id)_tvTypingAttributes
{
  typingAttributes = [(UITextField *)self typingAttributes];
  v4 = [typingAttributes mutableCopy];

  [(UITextField *)self _fieldEditorHeight];
  v6 = v5;
  font = [(UITextField *)self font];
  v8 = [font fontWithSize:v6];

  if (v8)
  {
    [v4 setObject:v8 forKey:*off_1E70EC918];
  }

  return v4;
}

- (void)_setBlurEnabled:(BOOL)enabled
{
  textFieldFlags = self->_textFieldFlags;
  if (((((*&textFieldFlags & 0x400000) == 0) ^ enabled) & 1) == 0)
  {
    v4 = 0x400000;
    if (!enabled)
    {
      v4 = 0;
    }

    self->_textFieldFlags = (*&textFieldFlags & 0xFFFFFFFFFFBFFFFFLL | v4);
  }
}

- (void)_setVisualEffectViewEnabled:(BOOL)enabled backgroundColor:(id)color
{
  v4 = 0x800000;
  if (!enabled)
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v6.receiver = self;
  v6.super_class = UITextField;
  [(UITextField *)&v6 observeValueForKeyPath:path ofObject:object change:change context:context];
}

- (void)setSelectionRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor setSelection:{location, length}];
}

- (NSArray)_selectedRanges
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  selectionRanges = [_fieldEditor selectionRanges];

  return selectionRanges;
}

- (void)_setSelectedRanges:(id)ranges
{
  rangesCopy = ranges;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor setSelectionRanges:rangesCopy];
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  image = [(UIImageView *)self->_iconView image];

  v5 = iconCopy;
  if (image != iconCopy)
  {
    iconView = self->_iconView;
    if (iconCopy)
    {
      if (iconView)
      {
        [(UIImageView *)iconView setImage:?];
        [(UIView *)self->_iconView sizeToFit];
      }

      else
      {
        v8 = [[UIImageView alloc] initWithImage:iconCopy];
        v9 = self->_iconView;
        self->_iconView = v8;

        _contentView = [(UITextField *)self _contentView];
        [_contentView addSubview:self->_iconView];

        _contentView2 = [(UITextField *)self _contentView];
        [_contentView2 bringSubviewToFront:self->_iconView];
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
    v5 = iconCopy;
  }
}

- (void)setBecomesFirstResponderOnClearButtonTap:(BOOL)tap
{
  v3 = 32;
  if (!tap)
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

- (void)setProgress:(float)progress
{
  if (objc_opt_respondsToSelector())
  {
    backgroundProvider = self->_backgroundProvider;

    [(_UITextFieldBackgroundProvider *)backgroundProvider setProgress:progress];
  }
}

- (void)setLabelOffset:(float)offset
{
  label = self->_label;
  if (label)
  {
    [(UIView *)label frame];
    v7 = v6 - self->_labelOffset;
    self->_labelOffset = offset;
    v8 = self->_label;
    v9 = v7 + offset;

    [(UILabel *)v8 setFrame:v9];
  }

  else
  {
    self->_labelOffset = offset;
  }
}

- (id)textLabel
{
  [(UIView *)self->_label sizeToFit];
  label = self->_label;

  return label;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  text = [(UILabel *)self->_label text];
  if ([text length] || objc_msgSend(labelCopy, "length"))
  {
    text2 = [(UILabel *)self->_label text];
    v6 = [text2 isEqualToString:labelCopy];

    v7 = labelCopy;
    if (v6)
    {
      goto LABEL_15;
    }

    v8 = [labelCopy length];
    label = self->_label;
    if (v8)
    {
      if (!label)
      {
        v10 = objc_alloc_init(UILabel);
        v11 = self->_label;
        self->_label = v10;

        _contentView = [(UITextField *)self _contentView];
        [_contentView addSubview:self->_label];

        [(UILabel *)self->_label setEnabled:0];
        [(UIView *)self->_label setOpaque:0];
        [(UIView *)self->_label setBackgroundColor:0];
        _cuiCatalog = [(UITextField *)self _cuiCatalog];
        [(UILabel *)self->_label _setCuiCatalog:_cuiCatalog];

        _cuiStyleEffectConfiguration = [(UITextField *)self _cuiStyleEffectConfiguration];
        [(UILabel *)self->_label _setCuiStyleEffectConfiguration:_cuiStyleEffectConfiguration];

        v15 = self->_textStorage;
        font = [(_UICascadingTextStorage *)v15 font];

        if (font)
        {
          v17 = self->_label;
          font2 = [(_UICascadingTextStorage *)v15 font];
          [(UILabel *)v17 setFont:font2];
        }

        label = self->_label;
      }

      [(UILabel *)label setText:labelCopy];
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

  v7 = labelCopy;
LABEL_15:
}

- (void)setTextCentersVertically:(BOOL)vertically
{
  if ((*&self->_textFieldFlags & 1) != vertically)
  {
    self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFFFFFFFELL | vertically);
    [(UITextField *)self _setNeedsStyleRecalc];
  }
}

- (void)setUndoEnabled:(BOOL)enabled
{
  v3 = 4096;
  if (enabled)
  {
    v3 = 0;
  }

  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)_clearButtonClicked:(id)clicked
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([(UITextField *)self _delegateShouldClear])
  {
    textFieldFlags = self->_textFieldFlags;
    if ((*&textFieldFlags & 0x100) != 0)
    {
      _fieldEditor = [(UITextField *)self _fieldEditor];
      [_fieldEditor selectionRange];
      if (v7)
      {
        [_fieldEditor setSelection:{0, 0}];
      }

      [_fieldEditor clearText];
      v8 = self->_textFieldFlags;
      self->_textFieldFlags = (*&v8 | 0x8000);
      [(UITextField *)self fieldEditorDidChange:_fieldEditor];
      self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFFFFFFFF7FFFLL | (((*&v8 >> 15) & 1) << 15));
    }

    else
    {
      self->_textFieldFlags = (*&textFieldFlags | 0x800000000);
      [(UITextField *)self setText:&stru_1EFB14550];
      *&self->_textFieldFlags &= ~0x800000000uLL;
      [(UIControl *)self _sendActionsForEvents:0x20000 withEvent:0];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"UITextFieldTextDidChangeNotification" object:self];
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

- (void)setClearButtonOffset:(CGSize)offset
{
  if (self->_clearButtonOffset.width != offset.width || self->_clearButtonOffset.height != offset.height)
  {
    self->_clearButtonOffset = offset;
    [(UITextField *)self setNeedsLayout];
  }
}

- (id)undoManager
{
  if ([(UITextField *)self isUndoEnabled])
  {
    _fieldEditor = [(UITextField *)self _fieldEditor];
    undoManager = [_fieldEditor undoManager];
  }

  else
  {
    undoManager = 0;
  }

  return undoManager;
}

- (CGPoint)_originForTextFieldLabel:(id)label
{
  labelCopy = label;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  selfCopy = [_fieldEditor superview];
  v7 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  [selfCopy bounds];
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
  if (self->_placeholderLabel == labelCopy || labelCopy == 0)
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

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  windowCopy = window;
  toWindowCopy = toWindow;
  v13.receiver = self;
  v13.super_class = UITextField;
  [(UIControl *)&v13 _didMoveFromWindow:windowCopy toWindow:toWindowCopy];
  if (toWindowCopy && dyld_program_sdk_at_least())
  {
    traitCollection = [toWindowCopy traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    traitCollection2 = [windowCopy traitCollection];
    if (userInterfaceIdiom == [traitCollection2 userInterfaceIdiom])
    {
    }

    else
    {
      traitCollection3 = [toWindowCopy traitCollection];
      userInterfaceIdiom2 = [traitCollection3 userInterfaceIdiom];

      if (userInterfaceIdiom2 == 3)
      {
        [(UITextField *)self _adjustFontForAccessibilityTraits:1];
      }
    }
  }
}

- (BOOL)_hasFloatingFieldEditor
{
  selfCopy = self;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  LOBYTE(selfCopy) = [_fieldEditor isDescendantOfView:selfCopy];

  return selfCopy ^ 1;
}

- (BOOL)_inVibrantContentView
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  contentView = [(UIVisualEffectView *)self->_contentBackdropView contentView];
  v5 = [_fieldEditor isDescendantOfView:contentView];

  return v5;
}

- (double)_fieldEditorHeight
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor frame];
  v4 = round(v3 * 0.6857);

  return v4;
}

- (id)_uiktest_placeholderLabelColor
{
  _placeholderLabel = [(UITextField *)self _placeholderLabel];
  textColor = [_placeholderLabel textColor];

  return textColor;
}

- (void)beginSelectionChange
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor beginSelectionChange];
}

- (void)endSelectionChange
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor endSelectionChange];
}

- (BOOL)hasSelection
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor selectionRange];
  v4 = v3 != 0;

  return v4;
}

- (void)startAutoscroll:(CGPoint)autoscroll
{
  y = autoscroll.y;
  x = autoscroll.x;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  textInputView = [(UITextField *)self textInputView];
  [_fieldEditor convertPoint:textInputView fromView:{x, y}];
  v9 = v8;
  v11 = v10;

  _fieldEditor2 = [(UITextField *)self _fieldEditor];
  [_fieldEditor2 startAutoscroll:{v9, v11}];
}

- (void)cancelAutoscroll
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor cancelAutoscroll];
}

- (BOOL)_restoreFirstResponder
{
  if ((*(&self->_textFieldFlags + 1) & 8) != 0)
  {
    return 0;
  }

  interactionAssistant = [(UITextField *)self interactionAssistant];
  v4 = interactionAssistant;
  if (interactionAssistant)
  {
    [interactionAssistant checkEditabilityAndSetFirstResponderIfNecessary];
    isFirstResponder = [(UIView *)self isFirstResponder];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITextField;
    isFirstResponder = [(UIResponder *)&v8 _restoreFirstResponder];
  }

  v6 = isFirstResponder;

  return v6;
}

- (void)beginFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionAssistant = [(UITextField *)self interactionAssistant];
  [interactionAssistant beginFloatingCursorAtPoint:{x, y}];
}

- (void)updateFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionAssistant = [(UITextField *)self interactionAssistant];
  [interactionAssistant updateFloatingCursorAtPoint:{x, y}];
}

- (void)updateFloatingCursorAtPoint:(CGPoint)point animated:(BOOL)animated
{
  animatedCopy = animated;
  y = point.y;
  x = point.x;
  interactionAssistant = [(UITextField *)self interactionAssistant];
  [interactionAssistant updateFloatingCursorAtPoint:animatedCopy animated:{x, y}];
}

- (void)endFloatingCursor
{
  interactionAssistant = [(UITextField *)self interactionAssistant];
  [interactionAssistant endFloatingCursor];
}

- (id)selectedText
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  _fieldEditor2 = [(UITextField *)self _fieldEditor];
  selectedTextRange = [_fieldEditor2 selectedTextRange];
  v6 = [_fieldEditor textInRange:selectedTextRange];

  _shouldObscureInput = [(UITextField *)self _shouldObscureInput];
  v8 = v6;
  v9 = v8;
  if (v8 && _shouldObscureInput)
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
  attributedText = [(UITextField *)self attributedText];
  selectionRange = [(UITextField *)self selectionRange];
  v6 = [attributedText attributedSubstringFromRange:{selectionRange, v5}];

  return v6;
}

- (id)_activityItemsConfigurationAtLocation:(CGPoint)location
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [UIActivityItemsConfiguration alloc];
  selectedText = [(UITextField *)self selectedText];
  v9[0] = selectedText;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [(UIActivityItemsConfiguration *)v4 initWithObjects:v6];

  return v7;
}

- (CGRect)closestCaretRectInMarkedTextRangeForPoint:(CGPoint)point
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

- (CGPoint)constrainedPoint:(CGPoint)point
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

- (void)cut:(id)cut
{
  cutCopy = cut;
  if ([(UITextField *)self keyboardInputShouldDelete:self])
  {
    _inputController = [(UITextField *)self _inputController];
    [_inputController cut:cutCopy];
  }
}

- (void)copy:(id)copy
{
  copyCopy = copy;
  _inputController = [(UITextField *)self _inputController];
  [_inputController copy:copyCopy];

  interactionAssistant = [(UITextField *)self interactionAssistant];
  [interactionAssistant hideSelectionCommands];
}

- (void)_define:(id)_define
{
  _defineCopy = _define;
  _inputController = [(UITextField *)self _inputController];
  [_inputController _define:_defineCopy];
}

- (void)_translate:(id)_translate
{
  _translateCopy = _translate;
  _inputController = [(UITextField *)self _inputController];
  [_inputController _translate:_translateCopy];
}

- (void)_share:(id)_share
{
  _shareCopy = _share;
  _inputController = [(UITextField *)self _inputController];
  [_inputController _share:_shareCopy];
}

- (BOOL)_isDisplayingTextService
{
  _inputController = [(UITextField *)self _inputController];
  _isDisplayingTextService = [_inputController _isDisplayingTextService];

  return _isDisplayingTextService;
}

- (BOOL)_isDisplayingShortcutViewController
{
  _inputController = [(UITextField *)self _inputController];
  _isDisplayingShortcutViewController = [_inputController _isDisplayingShortcutViewController];

  return _isDisplayingShortcutViewController;
}

- (BOOL)_isDisplayingReferenceLibraryViewController
{
  _inputController = [(UITextField *)self _inputController];
  _isDisplayingReferenceLibraryViewController = [_inputController _isDisplayingReferenceLibraryViewController];

  return _isDisplayingReferenceLibraryViewController;
}

- (BOOL)_isDisplayingShareViewController
{
  _inputController = [(UITextField *)self _inputController];
  _isDisplayingShareViewController = [_inputController _isDisplayingShareViewController];

  return _isDisplayingShareViewController;
}

- (BOOL)_isDisplayingLookupViewController
{
  _inputController = [(UITextField *)self _inputController];
  _isDisplayingLookupViewController = [_inputController _isDisplayingLookupViewController];

  return _isDisplayingLookupViewController;
}

- (void)_selectionMayChange:(id)change
{
  changeCopy = change;
  _inputController = [(UITextField *)self _inputController];
  [_inputController _selectionMayChange:changeCopy];
}

- (void)_setBackgroundStrokeColor:(id)color
{
  colorCopy = color;
  _systemBackgroundView = [(UITextField *)self _systemBackgroundView];
  [_systemBackgroundView setStrokeColor:colorCopy];
}

- (id)_backgroundStrokeColor
{
  _systemBackgroundView = [(UITextField *)self _systemBackgroundView];
  strokeColor = [_systemBackgroundView strokeColor];

  return strokeColor;
}

- (void)_setBackgroundFillColor:(id)color
{
  colorCopy = color;
  _systemBackgroundView = [(UITextField *)self _systemBackgroundView];
  [_systemBackgroundView setFillColor:colorCopy];
}

- (id)_backgroundFillColor
{
  _systemBackgroundView = [(UITextField *)self _systemBackgroundView];
  fillColor = [_systemBackgroundView fillColor];

  return fillColor;
}

- (void)_setBackgroundStrokeWidth:(double)width
{
  _systemBackgroundView = [(UITextField *)self _systemBackgroundView];
  [_systemBackgroundView setLineWidth:width];
}

- (double)_backgroundStrokeWidth
{
  _systemBackgroundView = [(UITextField *)self _systemBackgroundView];
  [_systemBackgroundView lineWidth];
  v4 = v3;

  return v4;
}

- (void)setAttributes:(id)attributes range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (*(&self->_textFieldFlags + 1))
  {
    attributesCopy = attributes;
    attributesCopy2 = [(UITextField *)self _inputController];
    [attributesCopy2 setAttributes:attributesCopy range:{location, length}];
  }

  else
  {
    textStorage = self->_textStorage;
    attributesCopy2 = attributes;
    [NSConcreteTextStorage setAttributes:"setAttributes:range:" range:?];
  }
}

- (void)_insertAttributedTextWithoutClosingTyping:(id)typing
{
  typingCopy = typing;
  _inputController = [(UITextField *)self _inputController];
  [_inputController _insertAttributedTextWithoutClosingTyping:typingCopy];
}

- (void)_addShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  _inputController = [(UITextField *)self _inputController];
  [_inputController _addShortcut:shortcutCopy];
}

- (void)paste:(id)paste
{
  if (*(&self->_textFieldFlags + 1))
  {
    pasteCopy = paste;
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor _clearOnEditIfNeeded];

    _inputController = [(UITextField *)self _inputController];
    [_inputController paste:pasteCopy];
  }
}

- (void)pasteAndMatchStyle:(id)style
{
  if (*(&self->_textFieldFlags + 1))
  {
    styleCopy = style;
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor _clearOnEditIfNeeded];

    _inputController = [(UITextField *)self _inputController];
    [_inputController pasteAndMatchStyle:styleCopy];
  }
}

- (id)_effectivePasteConfiguration
{
  v8.receiver = self;
  v8.super_class = UITextField;
  _effectivePasteConfiguration = [(UIResponder *)&v8 _effectivePasteConfiguration];
  v4 = _effectivePasteConfiguration;
  if (_effectivePasteConfiguration)
  {
    v5 = _effectivePasteConfiguration;
  }

  else
  {
    _implicitPasteConfigurationClasses = [(UITextField *)self _implicitPasteConfigurationClasses];
    v5 = [UIPasteConfiguration _pasteConfigurationForAcceptingClasses:_implicitPasteConfigurationClasses];
  }

  return v5;
}

- (id)_implicitPasteConfigurationClasses
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(UITextField *)self isEditable])
  {
    allowsEditingTextAttributes = [(UITextField *)self allowsEditingTextAttributes];
    v4 = objc_opt_class();
    if (allowsEditingTextAttributes)
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

- (void)pasteItemProviders:(id)providers
{
  if (*(&self->_textFieldFlags + 1))
  {
    providersCopy = providers;
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor _clearOnEditIfNeeded];

    _inputController = [(UITextField *)self _inputController];
    [_inputController pasteItemProviders:providersCopy];
  }
}

- (void)_pasteSessionDidFinish:(id)finish
{
  if ([(UITextField *)self _shouldObscureInput])
  {
    [(UITextField *)self _forceObscureAllText];

    [(UITextField *)self setNeedsLayout];
  }
}

- (void)select:(id)select
{
  interactionAssistant = [(UITextField *)self interactionAssistant];
  [interactionAssistant selectWord];
}

- (void)selectAll:(id)all
{
  allCopy = all;
  interactionAssistant = [(UITextField *)self interactionAssistant];
  [interactionAssistant selectAll:allCopy];
}

- (void)makeTextWritingDirectionRightToLeft:(id)left
{
  leftCopy = left;
  _inputController = [(UITextField *)self _inputController];
  [_inputController makeTextWritingDirectionRightToLeft:leftCopy];
}

- (void)makeTextWritingDirectionNatural:(id)natural
{
  naturalCopy = natural;
  _inputController = [(UITextField *)self _inputController];
  [_inputController makeTextWritingDirectionNatural:naturalCopy];
}

- (void)makeTextWritingDirectionLeftToRight:(id)right
{
  rightCopy = right;
  _inputController = [(UITextField *)self _inputController];
  [_inputController makeTextWritingDirectionLeftToRight:rightCopy];
}

- (void)toggleBoldface:(id)boldface
{
  boldfaceCopy = boldface;
  _inputController = [(UITextField *)self _inputController];
  [_inputController toggleBoldface:boldfaceCopy];
}

- (void)toggleItalics:(id)italics
{
  italicsCopy = italics;
  _inputController = [(UITextField *)self _inputController];
  [_inputController toggleItalics:italicsCopy];
}

- (void)toggleUnderline:(id)underline
{
  underlineCopy = underline;
  _inputController = [(UITextField *)self _inputController];
  [_inputController toggleUnderline:underlineCopy];
}

- (void)increaseSize:(id)size
{
  _inputController = [(UITextField *)self _inputController];
  [_inputController increaseSize:self];
}

- (void)decreaseSize:(id)size
{
  _inputController = [(UITextField *)self _inputController];
  [_inputController decreaseSize:self];
}

- (void)replace:(id)replace
{
  replaceCopy = replace;
  _inputController = [(UITextField *)self _inputController];
  [_inputController replace:replaceCopy];
}

- (void)_promptForReplace:(id)replace
{
  interactionAssistant = [(UITextField *)self interactionAssistant];
  [interactionAssistant scheduleReplacements];
}

- (void)_transliterateChinese:(id)chinese
{
  interactionAssistant = [(UITextField *)self interactionAssistant];
  [interactionAssistant scheduleChineseTransliteration];
}

- (void)captureTextFromCamera:(id)camera
{
  cameraCopy = camera;
  _inputController = [(UITextField *)self _inputController];
  [_inputController captureTextFromCamera:cameraCopy];
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  _inputController = [(UITextField *)self _inputController];
  [_inputController validateCommand:commandCopy];
}

- (BOOL)_inPopover
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    v3 = superview;
    do
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        break;
      }

      superview2 = [v3 superview];

      v3 = superview2;
    }

    while (superview2);
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  v8 = sel_paste_ == action || sel_select_ == action || sel_selectAll_ == action;
  if (v8 && [(UITextField *)self _isPasscodeStyle])
  {
    v9 = 0;
  }

  else
  {
    _inputController = [(UITextField *)self _inputController];
    v11 = [_inputController _canHandleResponderAction:action];

    if (v11)
    {
      _inputController2 = [(UITextField *)self _inputController];
      v9 = [_inputController2 _shouldHandleResponderAction:action withSender:senderCopy];
    }

    else
    {
      v14.receiver = self;
      v14.super_class = UITextField;
      v9 = [(UIView *)&v14 canPerformAction:action withSender:senderCopy];
    }
  }

  return v9;
}

- (id)textInRange:(id)range
{
  rangeCopy = range;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v6 = [_fieldEditor textInRange:rangeCopy];

  _shouldObscureInput = [(UITextField *)self _shouldObscureInput];
  v8 = v6;
  v9 = v8;
  if (v8 && _shouldObscureInput)
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

- (void)insertAttributedText:(id)text
{
  textCopy = text;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor insertAttributedText:textCopy];
}

- (id)attributedTextInRange:(id)range
{
  rangeCopy = range;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v6 = [_fieldEditor attributedTextInRange:rangeCopy];

  return v6;
}

- (void)replaceRange:(id)range withText:(id)text
{
  textCopy = text;
  rangeCopy = range;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor replaceRange:rangeCopy withText:textCopy];
}

- (void)replaceRange:(id)range withAttributedText:(id)text
{
  textCopy = text;
  rangeCopy = range;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor replaceRange:rangeCopy withAttributedText:textCopy];
}

- (id)_replaceRange:(id)range withAttributedText:(id)text updatingSelection:(BOOL)selection
{
  selectionCopy = selection;
  textCopy = text;
  rangeCopy = range;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v11 = [_fieldEditor replaceRange:rangeCopy withAttributedText:textCopy updatingSelection:selectionCopy];

  return v11;
}

- (void)replaceRangeWithTextWithoutClosingTyping:(id)typing replacementText:(id)text
{
  textCopy = text;
  typingCopy = typing;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor replaceRangeWithTextWithoutClosingTyping:typingCopy replacementText:textCopy];
}

- (void)setSelectedTextRange:(id)range
{
  rangeCopy = range;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor setSelectedTextRange:rangeCopy];
}

- (id)_NSTextRangeFromNSRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  _internalTextLayoutController = [(UITextField *)self _internalTextLayoutController];
  v6 = _internalTextLayoutController;
  if (_internalTextLayoutController)
  {
    v7 = [_internalTextLayoutController _rangeForCharacterRange:{location, length}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setMarkedTextStyle:(id)style
{
  styleCopy = style;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor setMarkedTextStyle:styleCopy];
}

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor setMarkedText:textCopy selectedRange:{location, length}];
}

- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor setAttributedMarkedText:textCopy selectedRange:{location, length}];
}

- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v9 = [_fieldEditor textRangeFromPosition:positionCopy toPosition:toPositionCopy];

  return v9;
}

- (id)positionFromPosition:(id)position offset:(int64_t)offset
{
  positionCopy = position;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v8 = [_fieldEditor positionFromPosition:positionCopy offset:offset];

  return v8;
}

- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset
{
  positionCopy = position;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v10 = [_fieldEditor positionFromPosition:positionCopy inDirection:direction offset:offset];

  return v10;
}

- (int64_t)comparePosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v9 = [_fieldEditor comparePosition:positionCopy toPosition:toPositionCopy];

  return v9;
}

- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v9 = [_fieldEditor offsetFromPosition:positionCopy toPosition:toPositionCopy];

  return v9;
}

- (id)positionWithinRange:(id)range farthestInDirection:(int64_t)direction
{
  rangeCopy = range;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v8 = [_fieldEditor positionWithinRange:rangeCopy farthestInDirection:direction];

  return v8;
}

- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v8 = [_fieldEditor characterRangeByExtendingPosition:positionCopy inDirection:direction];

  return v8;
}

- (id)_visualSelectionRangeForExtent:(id)extent forPoint:(CGPoint)point fromPosition:(id)position inDirection:(int64_t)direction
{
  y = point.y;
  x = point.x;
  positionCopy = position;
  extentCopy = extent;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v14 = [_fieldEditor _visualSelectionRangeForExtent:extentCopy forPoint:positionCopy fromPosition:direction inDirection:{x, y}];

  return v14;
}

- (void)setInputDelegate:(id)delegate
{
  delegateCopy = delegate;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor setInputDelegate:delegateCopy];
}

- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v8 = [_fieldEditor baseWritingDirectionForPosition:positionCopy inDirection:direction];

  return v8;
}

- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range
{
  rangeCopy = range;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor setBaseWritingDirection:direction forRange:rangeCopy];
}

- (CGRect)firstRectForRange:(id)range
{
  rangeCopy = range;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor firstRectForRange:rangeCopy];
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

- (CGRect)caretRectForPosition:(id)position
{
  positionCopy = position;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor caretRectForPosition:positionCopy];
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

- (id)textStylingAtPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  _inputController = [(UITextField *)self _inputController];
  v8 = [_inputController textStylingAtPosition:positionCopy inDirection:direction];

  return v8;
}

- (id)selectionRectsForRange:(id)range
{
  rangeCopy = range;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v6 = [_fieldEditor selectionRectsForRange:rangeCopy];

  return v6;
}

- (id)closestPositionToPoint:(CGPoint)point
{
  x = point.x;
  v5 = [(_UITextLayoutController *)self->_textLayoutController beginningOfDocument:point.x];
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
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v16 = [_fieldEditor closestPositionToPoint:{x, MidY}];

  return v16;
}

- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range
{
  x = point.x;
  textLayoutController = self->_textLayoutController;
  rangeCopy = range;
  beginningOfDocument = [(_UITextLayoutController *)textLayoutController beginningOfDocument];
  [(UITextField *)self caretRectForPosition:beginningOfDocument];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v22.origin.x = v10;
  v22.origin.y = v12;
  v22.size.width = v14;
  v22.size.height = v16;
  MidY = CGRectGetMidY(v22);
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v19 = [_fieldEditor closestPositionToPoint:rangeCopy withinRange:{x, MidY}];

  return v19;
}

- (void)_setCursorAccessories:(id)accessories
{
  interactionAssistant = self->_interactionAssistant;
  accessoriesCopy = accessories;
  _selectionViewManager = [(UITextInteractionAssistant *)interactionAssistant _selectionViewManager];
  _cursorAccessoryViewController = [_selectionViewManager _cursorAccessoryViewController];
  [_cursorAccessoryViewController setAccessories:accessoriesCopy];
}

- (id)characterRangeAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v6 = [_fieldEditor characterRangeAtPoint:{x, y}];

  return v6;
}

- (void)insertDictationResult:(id)result withCorrectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  singleLineResult = [result singleLineResult];
  phrases = [singleLineResult phrases];
  v8 = [phrases count];

  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      dictationPhraseArray = [singleLineResult dictationPhraseArray];
      [(UITextField *)self insertDictationResult:dictationPhraseArray];
    }

    else
    {
      dictationPhraseArray = [(UITextField *)self _fieldEditor];
      [dictationPhraseArray insertDictationResult:singleLineResult withCorrectionIdentifier:identifierCopy];
    }
  }
}

- (id)insertTextPlaceholderWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v6 = [_fieldEditor insertTextPlaceholderWithSize:{width, height}];

  return v6;
}

- (void)removeTextPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor removeTextPlaceholder:placeholderCopy];
}

- (id)insertDictationResultPlaceholder
{
  _fieldEditor = [(UITextField *)self _fieldEditor];
  insertDictationResultPlaceholder = [_fieldEditor insertDictationResultPlaceholder];

  return insertDictationResultPlaceholder;
}

- (CGRect)frameForDictationResultPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor frameForDictationResultPlaceholder:placeholderCopy];
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

- (void)removeDictationResultPlaceholder:(id)placeholder willInsertResult:(BOOL)result
{
  resultCopy = result;
  placeholderCopy = placeholder;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor removeDictationResultPlaceholder:placeholderCopy willInsertResult:resultCopy];
}

- (void)_setOverridePlaceholder:(id)placeholder alignment:(int64_t)alignment
{
  placeholderCopy = placeholder;
  v7 = placeholderCopy;
  if (!self->_overriddenPlaceholder)
  {
    if (!placeholderCopy)
    {
      goto LABEL_14;
    }

    v22 = placeholderCopy;
    attributedPlaceholder = [(UITextField *)self attributedPlaceholder];
    v10 = attributedPlaceholder;
    v11 = attributedPlaceholder ? attributedPlaceholder : [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
    overriddenPlaceholder = self->_overriddenPlaceholder;
    self->_overriddenPlaceholder = v11;

    _placeholderLabel = [(UITextField *)self _placeholderLabel];
    self->_overriddenPlaceholderAlignment = [_placeholderLabel textAlignment];

    [(UITextField *)self _setAttributedPlaceholder:v22];
    _placeholderLabel2 = [(UITextField *)self _placeholderLabel];
    [_placeholderLabel2 setTextAlignment:alignment];

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

  v22 = placeholderCopy;
  if (!placeholderCopy)
  {
    [(UITextField *)self _setAttributedPlaceholder:?];
    overriddenPlaceholderAlignment = self->_overriddenPlaceholderAlignment;
    _placeholderLabel3 = [(UITextField *)self _placeholderLabel];
    [_placeholderLabel3 setTextAlignment:overriddenPlaceholderAlignment];

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

  [(UITextField *)self _setAttributedPlaceholder:placeholderCopy];
  _placeholderLabel4 = [(UITextField *)self _placeholderLabel];
  [_placeholderLabel4 setTextAlignment:alignment];

LABEL_13:
  v7 = v22;
LABEL_14:
}

- (id)rangeWithTextAlternatives:(id *)alternatives atPosition:(id)position
{
  positionCopy = position;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _fieldEditor2 = [(UITextField *)self _fieldEditor];
    v10 = [_fieldEditor2 rangeWithTextAlternatives:alternatives atPosition:positionCopy];
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

- (void)_setShouldDisplayDictationPlaceholderMessage:(BOOL)message
{
  v3 = 0x8000000000;
  if (!message)
  {
    v3 = 0;
  }

  self->_textFieldFlags = (*&self->_textFieldFlags & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)_setSuppressContentChangedNotification:(BOOL)notification
{
  v3 = 0x8000;
  if (!notification)
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

- (BOOL)_delegateShouldChangeCharactersInTextStorageRanges:(id)ranges replacementString:(id)string delegateCares:(BOOL *)cares
{
  stringCopy = string;
  rangesCopy = ranges;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [(UITextField *)self _textRangesForTextStorageRanges:rangesCopy];

  v12 = objc_opt_respondsToSelector();
  v13 = objc_opt_respondsToSelector();
  if (v13)
  {
    v14 = [WeakRetained textField:self shouldChangeCharactersInRanges:v11 replacementString:stringCopy];
  }

  else
  {
    if ((v12 & 1) == 0)
    {
      v17 = 1;
      if (!cares)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    unionRange = [v11 unionRange];
    v14 = [WeakRetained textField:self shouldChangeCharactersInRange:unionRange replacementString:{v16, stringCopy}];
  }

  v17 = v14;
  if (cares)
  {
LABEL_6:
    *cares = (v12 | v13) & 1;
  }

LABEL_7:

  return v17;
}

- (void)insertText:(id)text
{
  textCopy = text;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor insertText:textCopy];
}

- (void)insertText:(id)text alternatives:(id)alternatives style:(int64_t)style
{
  v6 = [off_1E70ECBA0 attributedText:text withAlternativeTexts:alternatives style:style];
  [(UITextField *)self insertAttributedText:v6];
}

- (void)addTextAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  _inputController = [(UITextField *)self _inputController];
  [_inputController addTextAlternatives:alternativesCopy];
}

- (void)removeEmojiAlternatives
{
  _inputController = [(UITextField *)self _inputController];
  [_inputController removeEmojiAlternatives];
}

- (_NSRange)insertFilteredText:(id)text
{
  textCopy = text;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  if (objc_opt_respondsToSelector())
  {
    v6 = [_fieldEditor insertFilteredText:textCopy];
    v8 = v7;
  }

  else
  {
    [_fieldEditor insertText:textCopy];
    v8 = [textCopy length];
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
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor deleteBackward];
}

- (void)_deleteBackwardAndNotify:(BOOL)notify
{
  if (notify)
  {

    [(UITextField *)self deleteBackward];
  }

  else
  {
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor _deleteBackwardAndNotify:0];
  }
}

- (unint64_t)_textLengthToDeleteBeforeSelectedRangeForSmartDelete
{
  _inputController = [(UITextField *)self _inputController];
  textLengthToDeleteBeforeSelectedRangeForSmartDelete = [_inputController textLengthToDeleteBeforeSelectedRangeForSmartDelete];

  return textLengthToDeleteBeforeSelectedRangeForSmartDelete;
}

- (void)setContinuousSpellCheckingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _inputController = [(UITextField *)self _inputController];
  [_inputController setContinuousSpellCheckingEnabled:enabledCopy];
}

- (void)_setRoundedRectBackgroundCornerRadius:(double)radius
{
  if (radius >= 0.0)
  {
    radiusCopy = radius;
  }

  else
  {
    radiusCopy = 0.0;
  }

  if (self->_preferredBackgroundCornerRadius != radiusCopy)
  {
    self->_preferredBackgroundCornerRadius = radiusCopy;
    _systemBackgroundView = [(UITextField *)self _systemBackgroundView];
    [_systemBackgroundView setCornerRadius:radiusCopy];
  }
}

- (void)_tvUpdateTextColor
{
  if ([(UITextField *)self _fieldEditorAttached])
  {
    defaultTextColorForKeyboardAppearance = [(_UITextFieldVisualStyle *)self->_visualStyle defaultTextColorForKeyboardAppearance];
    [(UITextField *)self _setTextColor:defaultTextColorForKeyboardAppearance];
  }

  else
  {
    if ([(UIView *)self isFocused])
    {
      tvCustomFocusedTextColor = self->_tvCustomFocusedTextColor;
      if (tvCustomFocusedTextColor)
      {
        defaultFocusedTextColor = tvCustomFocusedTextColor;
      }

      else
      {
        defaultFocusedTextColor = [(_UITextFieldVisualStyle *)self->_visualStyle defaultFocusedTextColor];
      }

      v7 = defaultFocusedTextColor;
      [(_UICascadingTextStorage *)self->_textStorage setTextColor:defaultFocusedTextColor];
      self->_tvUseVibrancy = 0;
    }

    else
    {
      tvCustomTextColor = self->_tvCustomTextColor;
      if (tvCustomTextColor)
      {
        defaultTextColor = tvCustomTextColor;
      }

      else
      {
        defaultTextColor = [(_UITextFieldVisualStyle *)self->_visualStyle defaultTextColor];
      }

      v7 = defaultTextColor;
      [(_UICascadingTextStorage *)self->_textStorage setTextColor:defaultTextColor];
      self->_tvUseVibrancy = self->_tvCustomTextColor == 0;
    }

    [(UITextField *)self _updateLabelAppearance];
  }
}

- (int64_t)_blurEffectStyleForAppearance
{
  v2 = [UISystemInputViewController _canonicalTraitsForResponder:self];
  v3 = _UISolariumEnabled();
  keyboardAppearance = [v2 keyboardAppearance];
  v5 = 4016;
  v6 = 4012;
  if (keyboardAppearance == 1)
  {
    v6 = 4013;
  }

  if (keyboardAppearance != 9)
  {
    v5 = v6;
  }

  if (keyboardAppearance == 10)
  {
    v5 = 5006;
  }

  v7 = 17;
  if (keyboardAppearance == 10)
  {
    v7 = 7;
  }

  if (keyboardAppearance == 2)
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

- (void)insertInputSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained textField:self insertInputSuggestion:suggestionCopy];
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __65__UITextField_pointerInteraction_regionForRequest_defaultRegion___block_invoke;
  v20 = &unk_1E71263E8;
  v11 = requestCopy;
  v21 = v11;
  selfCopy = self;
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

  interactionAssistant = [(UITextField *)self interactionAssistant];
  v14 = [interactionAssistant pointerInteraction:interactionCopy regionForRequest:v11 defaultRegion:regionCopy];

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

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  identifier = [regionCopy identifier];
  v9 = [identifier isEqual:@"_UITextFieldLeftViewRegion"];

  if (v9)
  {
    v10 = &OBJC_IVAR___UITextField__leftView;
  }

  else
  {
    identifier2 = [regionCopy identifier];
    v12 = [identifier2 isEqual:@"_UITextFieldRightViewRegion"];

    if (!v12)
    {
LABEL_8:
      interactionAssistant = [(UITextField *)self interactionAssistant];
      v17 = [interactionAssistant pointerInteraction:interactionCopy styleForRegion:regionCopy];
      goto LABEL_14;
    }

    v10 = &OBJC_IVAR___UITextField__rightView;
  }

  v13 = *(&self->super.super.super.super.isa + *v10);
  if (!v13)
  {
    goto LABEL_8;
  }

  interactionAssistant = v13;
  _pointerEffect = [v13 _pointerEffect];
  if ([_pointerEffect isMemberOfClass:objc_opt_class()])
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __49__UITextField_pointerInteraction_styleForRegion___block_invoke;
    v21[3] = &unk_1E7126410;
    v21[4] = self;
    v22 = interactionAssistant;
    v23 = v9 ^ 1;
    v16 = [v22 _shapeInContainer:self proposal:v21];
  }

  else
  {
    v16 = [interactionAssistant _shapeInContainer:self];
  }

  pointerStyleProvider = [interactionAssistant pointerStyleProvider];
  v19 = pointerStyleProvider;
  if (!pointerStyleProvider || ((*(pointerStyleProvider + 16))(pointerStyleProvider, interactionAssistant, _pointerEffect, v16), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17 = [UIPointerStyle styleWithEffect:_pointerEffect shape:v16];
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

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  regionCopy = region;
  interactionCopy = interaction;
  interactionAssistant = [(UITextField *)self interactionAssistant];
  [interactionAssistant pointerInteraction:interactionCopy willEnterRegion:regionCopy animator:animatorCopy];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  regionCopy = region;
  interactionCopy = interaction;
  interactionAssistant = [(UITextField *)self interactionAssistant];
  [interactionAssistant pointerInteraction:interactionCopy willExitRegion:regionCopy animator:animatorCopy];
}

- (UIDragInteraction)textDragInteraction
{
  textDragDropSupport = self->_textDragDropSupport;
  if (textDragDropSupport)
  {
    v4 = textDragDropSupport;
LABEL_4:
    interactions = [(UIView *)self interactions];
    dragInteraction = [(UITextDragDropSupport *)v4 dragInteraction];
    if ([interactions indexOfObject:dragInteraction] == 0x7FFFFFFFFFFFFFFFLL)
    {
      dragInteraction2 = 0;
    }

    else
    {
      dragInteraction2 = [(UITextDragDropSupport *)v4 dragInteraction];
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

  dragInteraction2 = 0;
LABEL_8:

  return dragInteraction2;
}

- (UIDropInteraction)textDropInteraction
{
  textDragDropSupport = self->_textDragDropSupport;
  if (textDragDropSupport)
  {
    v4 = textDragDropSupport;
LABEL_4:
    interactions = [(UIView *)self interactions];
    dropInteraction = [(UITextDragDropSupport *)v4 dropInteraction];
    if ([interactions indexOfObject:dropInteraction] == 0x7FFFFFFFFFFFFFFFLL)
    {
      dropInteraction2 = 0;
    }

    else
    {
      dropInteraction2 = [(UITextDragDropSupport *)v4 dropInteraction];
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

  dropInteraction2 = 0;
LABEL_8:

  return dropInteraction2;
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

- (void)draggingFinished:(id)finished
{
  finishedCopy = finished;
  [(UITextField *)self _updateSelectionGestures];
  if (![(UIView *)self isFirstResponder])
  {
    [(UITextField *)self _detachFieldEditor];
  }

  if (([finishedCopy dragTearoffOccured] & 1) == 0)
  {
    [(UITextField *)self selectionRange];
    if (v4)
    {
      interactionAssistant = [(UITextField *)self interactionAssistant];
      [interactionAssistant showSelectionCommands];
    }
  }
}

- (id)willGenerateCancelPreview
{
  v3 = MEMORY[0x1E696B098];
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor contentOffset];
  v5 = [v3 valueWithPoint:?];

  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  _fieldEditor2 = [(UITextField *)self _fieldEditor];
  [_fieldEditor2 setContentOffset:{v6, v7}];

  return v5;
}

- (void)didGenerateCancelPreview:(id)preview
{
  [preview CGPointValue];
  v5 = v4;
  v7 = v6;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor setContentOffset:{v5, v7}];
}

- (void)performCancelAnimations
{
  if (![(UIView *)self isFirstResponder]&& [(UITextField *)self _fieldEditorAttached])
  {
    fieldEditor = self->_fieldEditor;
    beginningOfDocument = [(UITextField *)self beginningOfDocument];
    [(UITextField *)self caretRectForPosition:beginningOfDocument];
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
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor setContentOffset:{v3, v4}];

    _fieldEditor2 = [(UITextField *)self _fieldEditor];
    [_fieldEditor2 setScrollEnabled:1];
  }
}

- (void)resignDropResponderWithDropPerformed:(BOOL)performed
{
  if (![(UIView *)self isFirstResponder]&& (*(&self->_textFieldFlags + 1) & 1) != 0)
  {
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor setScrollEnabled:0];

    v6 = 0;
    if (!performed)
    {
      v6 = ![(UITextField *)self isTextDragActive];
    }

    _fieldEditor2 = [(UITextField *)self _fieldEditor];
    [_fieldEditor2 _contentOffsetAnimationDuration];
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
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setContentOffsetForSameViewDrops:(CGPoint)drops
{
  y = drops.y;
  x = drops.x;
  _fieldEditor = [(UITextField *)self _fieldEditor];
  [_fieldEditor setContentOffset:{x, y}];
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

- (_NSRange)_visibleRangeWithLayout:(BOOL)layout
{
  layoutCopy = layout;
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  textInputView = [(UITextField *)self textInputView];
  [textInputView convertRect:self fromView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  textInputView2 = [(UITextField *)self textInputView];
  [textInputView2 bounds];
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
  textContainer = [(UITextField *)self textContainer];
  v41 = [(_UITextLayoutController *)textLayoutController textRangeForBounds:textContainer inTextContainer:layoutCopy layoutIfNeeded:v35, v36, v37, v38];

  v42 = [(_UITextLayoutController *)self->_textLayoutController characterRangeForTextRange:v41];
  v44 = v43;

  v45 = v42;
  v46 = v44;
  result.length = v46;
  result.location = v45;
  return result;
}

- (CGRect)_boundingRectForRange:(id)range
{
  [(_UITextLayoutController *)self->_textLayoutController boundingRectForRange:range];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_addTextCanvasViewAdjustingFrame:(BOOL)frame
{
  visualStyle = [(UITextField *)self visualStyle];
  parentViewForTextContentView = [visualStyle parentViewForTextContentView];

  superview = [(_UITextCanvas *)self->_textCanvasView superview];

  if (superview != parentViewForTextContentView)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__UITextField__addTextCanvasViewAdjustingFrame___block_invoke;
    v8[3] = &unk_1E70F5AF0;
    frameCopy = frame;
    v8[4] = self;
    v9 = parentViewForTextContentView;
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

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  if (windowCopy)
  {
    v8 = windowCopy;
    if (!self->_textDragDropSupport)
    {
      v5 = [UITextDragDropSupport installTextDragDropOnView:self];
      textDragDropSupport = self->_textDragDropSupport;
      self->_textDragDropSupport = v5;
    }

    [(UITextField *)self _createInteractionAssistant];
    _focusSystem = [v8 _focusSystem];

    if (_focusSystem)
    {
      [(UITextField *)self _installSelectGestureRecognizer];
    }

    else
    {
      [(UITextField *)self _uninstallSelectGestureRecognizer];
    }

    windowCopy = v8;
  }
}

- (int64_t)_keyboardAppearance
{
  v2 = [UISystemInputViewController _canonicalTraitsForResponder:self];
  keyboardAppearance = [v2 keyboardAppearance];

  return keyboardAppearance;
}

- (int64_t)_userInterfaceStyle
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return userInterfaceStyle;
}

- (BOOL)drawTextInRectIfNeeded:(CGRect)needed
{
  height = needed.size.height;
  width = needed.size.width;
  y = needed.origin.y;
  x = needed.origin.x;
  if ((dyld_program_sdk_at_least() & 1) != 0 || (v8 = [(UITextField *)self _fieldEditorAttached]))
  {
    [(UITextField *)self drawTextInRect:x, y, width, height];
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (_NSRange)_unobscuredSecureRange
{
  _unobscuredSecureRange = [(UIFieldEditor *)self->_fieldEditor _unobscuredSecureRange];
  result.length = v3;
  result.location = _unobscuredSecureRange;
  return result;
}

- (id)editMenuForTextRange:(id)range suggestedActions:(id)actions
{
  rangeCopy = range;
  actionsCopy = actions;
  if ([(UITextField *)self _implementsEditMenu])
  {
    v8 = [(_UITextLayoutController *)self->_textLayoutController characterRangeForTextRange:rangeCopy];
    v10 = v9;
    delegate = [(UITextField *)self delegate];
    v12 = [delegate textField:self editMenuForCharactersInRange:v8 suggestedActions:{v10, actionsCopy}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)willPresentEditMenuWithAnimator:(id)animator
{
  animatorCopy = animator;
  delegate = [(UITextField *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(UITextField *)self delegate];
    [delegate2 textField:self willPresentEditMenuWithAnimator:animatorCopy];
  }
}

- (void)willDismissEditMenuWithAnimator:(id)animator
{
  animatorCopy = animator;
  delegate = [(UITextField *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(UITextField *)self delegate];
    [delegate2 textField:self willDismissEditMenuWithAnimator:animatorCopy];
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

- (void)_setOverridePasscodeStyle:(BOOL)style
{
  textFieldFlags = self->_textFieldFlags;
  if (((((*&textFieldFlags & 0x100000) == 0) ^ style) & 1) == 0)
  {
    v4 = 0x100000;
    if (!style)
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

- (void)_setPasscodeStyleAlpha:(double)alpha
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:alpha];
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

- (void)_applyHighlightedAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _contentFloatingContainerView = [(UITextField *)self _contentFloatingContainerView];
  [_contentFloatingContainerView setControlState:-[UIControl state](self animated:{"state"), animatedCopy}];
}

- (void)setSupportsAdaptiveImageGlyph:(BOOL)glyph
{
  glyphCopy = glyph;
  *&self->_textFieldFlags |= 0x20000000000uLL;
  _inputController = [(UITextField *)self _inputController];
  [_inputController setSupportsAdaptiveImageGlyph:glyphCopy];
}

- (void)insertAdaptiveImageGlyph:(id)glyph replacementRange:(id)range
{
  rangeCopy = range;
  glyphCopy = glyph;
  _inputController = [(UITextField *)self _inputController];
  [_inputController insertAdaptiveImageGlyph:glyphCopy replacementRange:rangeCopy];
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

- (void)encodeRestorableStateWithCoder:(id)coder includingSelectedTextAndDisplayedViewControllers:(BOOL)controllers
{
  controllersCopy = controllers;
  coderCopy = coder;
  selectionRange = [(UITextField *)self selectionRange];
  v9 = v8;
  v13.receiver = self;
  v13.super_class = UITextField;
  [(UIResponder *)&v13 encodeRestorableStateWithCoder:coderCopy];
  if ([(UIView *)self isFirstResponder])
  {
    [coderCopy encodeBool:1 forKey:@"kTextFirstResponderKey"];
    [coderCopy encodeInt:v9 forKey:@"kTextSelectedTextLengthKey"];
    [coderCopy encodeInt:selectionRange forKey:@"kTextSelectedTextLocationKey"];
  }

  if (controllersCopy)
  {
    selectedText = [(UITextField *)self selectedText];
    if ([selectedText length])
    {
      [coderCopy encodeObject:selectedText forKey:@"kTextSelectedTextKey"];
    }

    if ([(UITextField *)self _isDisplayingShortcutViewController])
    {
      [UIApp ignoreSnapshotOnNextApplicationLaunch];
    }

    if ([(UITextField *)self _isDisplayingReferenceLibraryViewController])
    {
      v11 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v11 userInterfaceIdiom];

      if (!userInterfaceIdiom)
      {
        [UIApp ignoreSnapshotOnNextApplicationLaunch];
      }

      [coderCopy encodeBool:1 forKey:@"kTextDisplayingReferenceLibraryViewControllerKey"];
    }

    if ([(UITextField *)self _isDisplayingShareViewController])
    {
      [UIApp ignoreSnapshotOnNextApplicationLaunch];
    }
  }
}

- (void)decodeRestorableStateWithCoder:(id)coder includingSelectedTextAndDisplayedViewControllers:(BOOL)controllers
{
  controllersCopy = controllers;
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = UITextField;
  [(UIResponder *)&v10 decodeRestorableStateWithCoder:coderCopy];
  if ([coderCopy containsValueForKey:@"kTextFirstResponderKey"] && objc_msgSend(coderCopy, "decodeBoolForKey:", @"kTextFirstResponderKey"))
  {
    [(UITextField *)self becomeFirstResponder];
  }

  if ([coderCopy containsValueForKey:@"kTextSelectedTextLengthKey"])
  {
    if ([coderCopy containsValueForKey:@"kTextSelectedTextLocationKey"])
    {
      v7 = [coderCopy decodeIntForKey:@"kTextSelectedTextLengthKey"];
      v8 = [coderCopy decodeIntForKey:@"kTextSelectedTextLocationKey"];
      [(UITextField *)self becomeFirstResponder];
      [(UITextField *)self setSelectionRange:v8, v7];
      if (controllersCopy)
      {
        v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTextSelectedTextKey"];
        if (v9)
        {
          [coderCopy decodeBoolForKey:@"kTextDisplayingShortcutViewControllerKey"];
          [coderCopy decodeBoolForKey:@"kTextDisplayingReferenceLibraryViewControllerKey"];
          [coderCopy decodeBoolForKey:@"kTextDisplayingShareViewControllerKey"];
        }
      }
    }
  }
}

- (id)_interactionState
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(UITextField *)self encodeRestorableStateWithCoder:v3 includingSelectedTextAndDisplayedViewControllers:0];
  encodedData = [v3 encodedData];

  return encodedData;
}

- (void)_setInteractionState:(id)state
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ACD0];
  stateCopy = state;
  v10 = 0;
  v6 = [[v4 alloc] initForReadingFromData:stateCopy error:&v10];

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
  _inputController = [(UITextField *)self _inputController];
  automaticallyAdjustsWritingDirection = [_inputController automaticallyAdjustsWritingDirection];

  return automaticallyAdjustsWritingDirection;
}

- (void)setAutomaticallyAdjustsWritingDirection:(BOOL)direction
{
  directionCopy = direction;
  _inputController = [(UITextField *)self _inputController];
  [_inputController setAutomaticallyAdjustsWritingDirection:directionCopy];
}

- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute inContainer:(id)container isGuide:(BOOL)guide
{
  if ((edge - 5) > 1)
  {
    v8.receiver = self;
    v8.super_class = UITextField;
    [(UIView *)&v8 _autolayoutSpacingAtEdge:*&edge forAttribute:attribute inContainer:container isGuide:guide];
  }

  else
  {
    _UIViewBaselineToEdgeSpacing([(UITextField *)self _fontInfoForBaselineSpacing], edge);

    UICeilToViewScale(self);
  }

  return result;
}

- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute nextToNeighbor:(id)neighbor edge:(int)a6 attribute:(int64_t)a7 multiplier:(double)multiplier
{
  v10 = *&a6;
  v13 = *&edge;
  if ((edge - 5) > 1)
  {
    goto LABEL_12;
  }

  v15 = attribute - 11;
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
    [(UIView *)&v19 _autolayoutSpacingAtEdge:v13 forAttribute:attribute nextToNeighbor:neighbor edge:v10 attribute:a7 multiplier:multiplier];
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

  _UIViewBaselineSpacing(self, neighbor, v13);
  return result;
}

@end