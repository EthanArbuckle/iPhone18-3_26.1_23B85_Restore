@interface UITextView
+ (BOOL)_isTextLayoutManagerEnabled;
+ (BOOL)_resolvesNaturalAlignmentWithBaseWritingDirection;
+ (UITextView)textViewUsingTextLayoutManager:(BOOL)usingTextLayoutManager;
+ (id)_defaultFont;
+ (id)_defaultTextColor;
- ($BB3B25BBC364C7D98808033881F79914)_saveSizeBeforeLayoutCalculation:(SEL)calculation;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size;
- (BOOL)_allowHighlightForTextInteractableItem:(id)item;
- (BOOL)_allowInteraction:(int64_t)interaction forTextInteractableItem:(id)item;
- (BOOL)_allowsOverflowForIntrinsicSizeCalculation;
- (BOOL)_areDefaultTextFormattingAffordancesAvailable;
- (BOOL)_delegatesAllowingLinkInteraction;
- (BOOL)_delegatesAllowingTextItemInteractions;
- (BOOL)_delegatesAllowingTextItemMenuInteraction;
- (BOOL)_delegatesAllowingTextItemPrimaryActionInteraction;
- (BOOL)_disableAutomaticKeyboardBehavior;
- (BOOL)_documentRangeEqualToViewportRange;
- (BOOL)_finishResignFirstResponder;
- (BOOL)_interactionPossibleWithAttachment:(id)attachment;
- (BOOL)_isDisplayingLookupViewController;
- (BOOL)_isDisplayingReferenceLibraryViewController;
- (BOOL)_isDisplayingShareViewController;
- (BOOL)_isDisplayingShortcutViewController;
- (BOOL)_isDisplayingTextService;
- (BOOL)_isInCompactHorizontalSizeClass;
- (BOOL)_isInteractiveTextSelectionDisabled;
- (BOOL)_isSelectionVisible;
- (BOOL)_isSystemAttachment:(id)attachment;
- (BOOL)_isTextFormattingControllerPresented;
- (BOOL)_isTextFormattingInProgress;
- (BOOL)_isWritingToolsStreamingReplacements;
- (BOOL)_needsDoubleUpdateConstraintsPass;
- (BOOL)_ownsInputAccessoryView;
- (BOOL)_performExternalEditsForWritingToolsSessionIdentifier:(id)identifier action:(int64_t)action usingBlock:(id)block;
- (BOOL)_preserveSelectionDisplayForTextFormatting;
- (BOOL)_reconfigureWithLayoutManager:(id)manager triggeredByLayoutManagerAccess:(BOOL)access triggeringSelector:(SEL)selector;
- (BOOL)_restoreFirstResponder;
- (BOOL)_shouldCollectAsKeyView;
- (BOOL)_shouldHideInputViewsForTextFormatting;
- (BOOL)_shouldInvalidateLayoutForLinkAttributesChange;
- (BOOL)_shouldObscureInput;
- (BOOL)_shouldScrollEnclosingScrollView;
- (BOOL)_shouldShowEditMenu;
- (BOOL)_shouldStartDataDetectors;
- (BOOL)_shouldSuppressEditMenuForTextFormatting;
- (BOOL)_supportsImagePasteCached;
- (BOOL)_supportsTextKit2TextLists;
- (BOOL)_wantsBaselineUpdatingFollowingConstraintsPass;
- (BOOL)allowsEditingTextAttributes;
- (BOOL)automaticallyAdjustsWritingDirection;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canBecomeFocused;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canResignFirstResponder;
- (BOOL)forceDisableDictation;
- (BOOL)forceEnableDictation;
- (BOOL)hasText;
- (BOOL)isEditing;
- (BOOL)isWritingToolsActive;
- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText;
- (BOOL)keyboardInput:(id)input shouldReplaceTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)keyboardInput:(id)input shouldReplaceTextInRanges:(id)ranges replacementText:(id)text;
- (BOOL)keyboardInputChanged:(id)changed;
- (BOOL)keyboardInputShouldDelete:(id)delete;
- (BOOL)performFinalGrammarChecking;
- (BOOL)replaceAnimatedTextPlaceholderWith:(id)with completion:(id)completion;
- (BOOL)resignFirstResponder;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)supportsAdaptiveImageGlyph;
- (BOOL)supportsEmojiImageTextAttachments;
- (BOOL)textInput:(id)input shouldChangeCharactersInRanges:(id)ranges replacementText:(id)text;
- (BOOL)textInputShouldExtendCaretHeight:(id)height;
- (BOOL)tiledViewsDrawAsynchronously;
- (BOOL)willInteractWithLinkAtPoint:(CGPoint)point;
- (CGPoint)_contentOffsetForScrollToVisible:(_NSRange)visible;
- (CGPoint)_contentOffsetForScrollingToRect:(CGRect)rect;
- (CGPoint)_convertPointFromRenderSpace:(CGPoint)space;
- (CGPoint)_convertPointToRenderSpace:(CGPoint)space textPosition:(id)position;
- (CGPoint)_convertPointToRenderSpace:(CGPoint)space textRange:(id)range;
- (CGPoint)textContainerOrigin;
- (CGRect)_boundingRectForRange:(id)range;
- (CGRect)_customRenderBounds;
- (CGRect)_frameOfTrailingWhitespace;
- (CGRect)_rectForScrollToVisible:(_NSRange)visible;
- (CGRect)_rectToScrollToVisibleInCellInWindow:(id)window;
- (CGRect)accessibilityFrame;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)firstRectForRange:(id)range;
- (CGRect)frameForDictationResultPlaceholder:(id)placeholder;
- (CGRect)visibleRect;
- (CGRect)visibleRectIgnoringKeyboard;
- (CGSize)_containerSizeForBoundsSize:(CGSize)size allowingOverflow:(BOOL)overflow;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)intrinsicContentSize;
- (Class)_intelligenceBaseClass;
- (NSArray)selectedRanges;
- (NSAttributedString)attributedText;
- (NSDictionary)linkTextAttributes;
- (NSDictionary)markedTextStyle;
- (NSDictionary)typingAttributes;
- (NSLayoutManager)layoutManager;
- (NSRange)selectedRange;
- (NSString)text;
- (NSTextAlignment)textAlignment;
- (NSTextLayoutManager)textLayoutManager;
- (UIColor)selectionHighlightColor;
- (UIColor)textColor;
- (UIDragInteraction)textDragInteraction;
- (UIDropInteraction)textDropInteraction;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)textContainerInset;
- (UIFont)font;
- (UITextDragDelegate)textDragDelegate;
- (UITextDropDelegate)textDropDelegate;
- (UITextInputDelegate)inputDelegate;
- (UITextInputTokenizer)tokenizer;
- (UITextPasteDelegate)pasteDelegate;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (UITextRange)markedTextRange;
- (UITextRange)selectedTextRange;
- (UITextView)initWithCoder:(NSCoder *)coder;
- (UITextView)initWithFrame:(CGRect)frame textContainer:(NSTextContainer *)textContainer;
- (UIView)inputAccessoryView;
- (_NSCustomTextRenderingDisplayLink)_customRenderDisplayLink;
- (_NSRange)_nsRangeForNonNullUITextRange:(id)range;
- (_NSRange)_nsRangeForTextKitRanges:(id)ranges;
- (_NSRange)_visibleRangeWithLayout:(BOOL)layout;
- (_UITextAssistantManager)_textAssistantManager;
- (_UITextInteractableItemCache)_textInteractableItemCache;
- (_UITextViewAnimatedPlaceholderSupport)_animatedPlaceholderSupport;
- (double)_adjustedTextContainerInset;
- (double)_applicableContentOutsetsFromFonts;
- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute inContainer:(id)container isGuide:(BOOL)guide;
- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute nextToNeighbor:(id)neighbor edge:(int)a6 attribute:(int64_t)a7 multiplier:(double)multiplier;
- (double)_baselineOffsetFromBottom;
- (double)_currentPreferredMaxLayoutWidth;
- (double)_firstBaselineOffsetFromTop;
- (double)_internalFirstBaselineOffsetFromTop;
- (double)_internalLastBaselineOffsetFromBottom;
- (double)_textFormattingControllerOverlapHeight;
- (double)lineHeight;
- (id)_NSTextRangeFromNSRange:(_NSRange)range;
- (id)_activityItemsConfigurationAtLocation:(CGPoint)location;
- (id)_allowedTypingAttributes;
- (id)_animatorForTextAnimation:(id)animation;
- (id)_animatorForTextAnimation:(id)animation notify:(id)notify;
- (id)_anyTextItemConstrainedToLineAtPoint:(CGPoint)point;
- (id)_attributedPlaceholder;
- (id)_attributedStringForInsertionOfAttributedString:(id)string;
- (id)_attributesForApplyingFormattingModification:(id *)modification withAttributes:(id)attributes paragraphStyle:(id)style forTypingAttributes:(BOOL)typingAttributes;
- (id)_currentDefaultAttributes;
- (id)_descriptorForTextFormattingOptions;
- (id)_disabledComponentsForTextFormattingOptions;
- (id)_effectivePasteConfiguration;
- (id)_existingSelectionContainerView;
- (id)_existingWritingToolsCoordinator;
- (id)_fontInfoForBaselineSpacing;
- (id)_getDelegateZoomView;
- (id)_implicitPasteConfigurationClasses;
- (id)_initWithFrame:(CGRect)frame textLayoutManagerEnabled:(BOOL)enabled;
- (id)_inputController;
- (id)_interactionState;
- (id)_internalTextLayoutController;
- (id)_layoutDebuggingTitle;
- (id)_linkTextAttributesForLink:(id)link forCharacterAtIndex:(unint64_t)index;
- (id)_menuConfigurationForTextInteractableItem:(id)item defaultMenu:(id)menu;
- (id)_newContainerViewWithFrame:(CGRect)frame textContainer:(id)container textLayoutController:(id)controller;
- (id)_newTextContainer;
- (id)_newTextKit1LayoutControllerWithTextContainer:(id)container layoutManager:(id)manager textStorage:(id)storage;
- (id)_nonNullIntersectionOfUITextRange:(id)range withOtherUITextRange:(id)textRange;
- (id)_nonNullUITextRangeForTextKitRanges:(id)ranges;
- (id)_nonNullUITextRangeFromNSRange:(_NSRange)range;
- (id)_placeSelectionContainerView;
- (id)_preferredPresentingControllerForTextFormatting;
- (id)_primaryActionForTextInteractableItem:(id)item defaultAction:(id)action;
- (id)_replaceRange:(id)range withAttributedText:(id)text updatingSelection:(BOOL)selection;
- (id)_resolvedTypesettingLanguage:(id)language;
- (id)_scrollViewToAdjustForTextFormattingController;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_targetedPreviewForRange:(id)range withRenderingAttributes:(id)attributes includeFullDocument:(BOOL)document;
- (id)_targetedPreviewForTextInteractableItem:(id)item dismissing:(BOOL)dismissing;
- (id)_textInputTraits;
- (id)_textInteractableItemAtPoint:(CGPoint)point precision:(unint64_t)precision;
- (id)_textInteractableItemForTag:(id)tag;
- (id)_textItemForItem:(id)item;
- (id)_textLineRectsForRange:(id)range;
- (id)_writingToolsCoordinator;
- (id)_writingToolsCoordinator:(id)coordinator textHighlightColorForScheme:(id)scheme inHighlightStyle:(id)style;
- (id)annotatedSubstringForRange:(id)range;
- (id)attributedPlaceholders;
- (id)attributedTextInRange:(id)range;
- (id)automaticallySelectedOverlay;
- (id)characterRangeAtPoint:(CGPoint)point;
- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction;
- (id)closestPositionToPoint:(CGPoint)point;
- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range;
- (id)editMenuForTextRange:(id)range suggestedActions:(id)actions;
- (id)extractWordArrayFromTokensArray:(id)array;
- (id)findInteraction:(id)interaction sessionForView:(id)view;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)initReadonlyAndUnselectableWithFrame:(CGRect)frame textContainer:(id)container;
- (id)initReadonlyAndUnselectableWithFrame:(CGRect)frame textContainer:(id)container textLayoutManagerEnabled:(BOOL)enabled;
- (id)insertDictationResultPlaceholder;
- (id)insertTextPlaceholderWithSize:(CGSize)size;
- (id)largeContentTitle;
- (id)metadataDictionariesForDictationResults;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)placeholders;
- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset;
- (id)positionFromPosition:(id)position offset:(int64_t)offset;
- (id)positionWithinRange:(id)range farthestInDirection:(int64_t)direction;
- (id)rangeWithTextAlternatives:(id *)alternatives atPosition:(id)position;
- (id)selectedText;
- (id)selectionContainerView;
- (id)selectionRectsForRange:(id)range;
- (id)textContainerView:(id)view cuiCatalogForTextEffectName:(id)name;
- (id)textInRange:(id)range;
- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition;
- (id)textStylingAtPosition:(id)position inDirection:(int64_t)direction;
- (id)undoManager;
- (int64_t)_indexForNonNullUITextPosition:(id)position;
- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(int64_t)direction;
- (int64_t)comparePosition:(id)position toPosition:(id)toPosition;
- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition;
- (int64_t)selectionAffinity;
- (unint64_t)_defaultWritingToolsResultOptions;
- (unint64_t)_effectiveDataDetectorTypes;
- (unint64_t)_textLengthToDeleteBeforeSelectedRangeForSmartDelete;
- (unint64_t)_totalNumberOfTextViewsInLayoutManager;
- (unint64_t)allowedWritingToolsResultOptions;
- (void)_addShortcut:(id)shortcut;
- (void)_adjustBottomContentInsetForTextFormattingController:(BOOL)controller;
- (void)_adjustFontForAccessibilityTraits:(BOOL)traits;
- (void)_adjustFontForTypesettingLanguage;
- (void)_applyHighlightStyle:(id)style colorScheme:(id)scheme toTextRange:(id)range;
- (void)_applyHighlightStyle:(id)style toTextRange:(id)range;
- (void)_applyOptionsToGeometry;
- (void)_assignTextStorageCheckingForOverrides:(uint64_t)overrides;
- (void)_cancelDataDetectors;
- (void)_changeLineHeightAction:(id)action newLineHeight:(id)height;
- (void)_cleanUpForResignFirstResponder;
- (void)_commonInitWithTextContainer:(id)container decoding:(BOOL)decoding editable:(BOOL)editable selectable:(BOOL)selectable draggable:(BOOL)draggable textLayoutManagerEnabled:(BOOL)enabled;
- (void)_configureForLayoutCalculation:(id)calculation inSize:(CGSize)size;
- (void)_configureWithTextContainer:(id)container layoutManager:(id)manager textLayoutManagerEnabled:(BOOL)enabled;
- (void)_createTextEmphasisBackgroundViewIfNeeded;
- (void)_define:(id)_define;
- (void)_deleteBackwardAndNotify:(BOOL)notify;
- (void)_diagnoseFocusabilityForReport:(id)report;
- (void)_didFinishSpeechRecognition;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_didRecognizeSpeechStrings:(id)strings;
- (void)_didRecognizeSpeechTokens:(id)tokens;
- (void)_dismissTextFormattingControllerIfNeededWithAnimation:(BOOL)animation;
- (void)_ensureUpToDateTextContainerInsetAndNotifyIfNecessary;
- (void)_findSelected:(id)selected;
- (void)_hideTextFormattingForResignFirstResponderIfNeeded;
- (void)_hideTextFormattingOptions:(id)options;
- (void)_insertAttributedText:(id)text withAnimation:(int64_t)animation completion:(id)completion;
- (void)_insertAttributedTextWithoutClosingTyping:(id)typing;
- (void)_installContainerViewAtIndex:(unint64_t)index;
- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector;
- (void)_invalidateLayoutForLinkAttributesChange:(BOOL)change;
- (void)_keyboardDidShow:(id)show;
- (void)_layoutPlaceholder;
- (void)_layoutText;
- (void)_logWarningForMenuControllerUsage;
- (void)_notifyDidBeginEditing;
- (void)_notifyDidEndEditing;
- (void)_notifyDidScroll;
- (void)_observedTextViewDidChange:(id)change;
- (void)_pasteAttributedString:(id)string pasteAsRichText:(BOOL)text;
- (void)_performTextFormattingRestoration;
- (void)_performTextFormattingRestorationIfNeeded;
- (void)_performTextKit1LayoutCalculation:(id)calculation inSize:(CGSize)size;
- (void)_performTextKit2LayoutCalculation:(id)calculation inSize:(CGSize)size;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_prepareForFirstIntrinsicContentSizeCalculation;
- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)bounds;
- (void)_prepareForTextFormattingControllerPresentationWithConfiguration:(id)configuration sender:(id)sender;
- (void)_prepareForTextFormattingRestoration;
- (void)_presentTextFormattingController;
- (void)_promptForReplace:(id)replace;
- (void)_registerUndoOperationForReplacementWithActionName:(id)name replacementText:(id)text;
- (void)_removeHighlightsFromTextRange:(id)range;
- (void)_replaceRange:(id)range withAttributedText:(id)text usingAnimation:(int64_t)animation completion:(id)completion;
- (void)_replaceRangeUsingColorWipe:(id)wipe withAttributedText:(id)text completion:(id)completion;
- (void)_resetDataDetectorsResults;
- (void)_resetUsesExplicitPreferredMaxLayoutWidth;
- (void)_restoreScrollPosition:(id)position animated:(BOOL)animated;
- (void)_restoreSize:(id *)size afterLayoutCalculation:(id)calculation;
- (void)_resyncContainerFrameForNonAutolayoutDeferringSizeToFit:(BOOL)fit;
- (void)_scrollRangeToVisible:(_NSRange)visible animated:(BOOL)animated;
- (void)_scrollRect:(CGRect)rect toVisibleInContainingScrollView:(BOOL)view;
- (void)_scrollSelectionToVisibleInContainingScrollView:(BOOL)view;
- (void)_scrollToCaretIfNeeded;
- (void)_scrollToSelectionIfNeeded;
- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished;
- (void)_scrollViewDidEndDecelerating;
- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)deceleration;
- (void)_selectionMayChange:(id)change;
- (void)_setAllowedTypingAttributes:(id)attributes;
- (void)_setContentOffsetWithoutRecordingScrollPosition:(CGPoint)position;
- (void)_setCuiCatalog:(id)catalog;
- (void)_setCuiStyleEffectConfiguration:(id)configuration;
- (void)_setCustomRenderDisplayLink:(id)link;
- (void)_setDictationResult:(id)result withCorrectionIdentifier:(id)identifier;
- (void)_setEncodedTextKitFlavor:(int64_t)flavor;
- (void)_setExtremeSizingEnabled:(BOOL)enabled;
- (void)_setFrameOrBounds:(CGRect)bounds fromOldRect:(CGRect)rect settingAction:(id)action;
- (void)_setFreezeTextContainerSize:(BOOL)size;
- (void)_setHorizontalMargins:(unint64_t)margins;
- (void)_setInteractionState:(id)state;
- (void)_setInteractiveTextSelectionDisabled:(BOOL)disabled;
- (void)_setNeedsFrameUpdateForCustomRendering;
- (void)_setNeedsTextLayout;
- (void)_setOverridePlaceholder:(id)placeholder alignment:(int64_t)alignment;
- (void)_setPreferredMaxLayoutWidth:(double)width;
- (void)_setShowsEditMenu:(BOOL)menu;
- (void)_setSiriAnimationDictationStyleWithCharacterInsertionRate:(double)rate minimumDurationBetweenHypotheses:(double)hypotheses;
- (void)_setTextColor:(id)color;
- (void)_setTextSizeCacheEnabled:(BOOL)enabled;
- (void)_setTypingAttributesTextColor:(id)color;
- (void)_setWantsContentAwareTypesettingLanguage:(BOOL)language;
- (void)_setWritingToolsCoordinator:(id)coordinator;
- (void)_setWritingToolsStreamingReplacements:(BOOL)replacements;
- (void)_setupDefaultStyleEffectConfiguration;
- (void)_share:(id)_share;
- (void)_showTextFormattingAnimationOptions:(id)options;
- (void)_showTextFormattingOptions:(id)options;
- (void)_sizingRuleWillChangeShouldClearInsetEdges:(uint64_t)edges;
- (void)_startDataDetectors;
- (void)_startDataDetectorsIfNeeded;
- (void)_startSuppressingKeyboardForTextFormatting:(id)formatting;
- (void)_stopSuppressingKeyboardForTextFormatting:(id)formatting;
- (void)_syncTypingAttributesToTextContainerAttributesForExtraLineFragment;
- (void)_textContainerSizeDidChange:(id)change;
- (void)_textFormattingDidDisappear:(id)disappear;
- (void)_textFormattingRequestsFirstResponderResignation:(id)resignation;
- (void)_textFormattingRequestsFirstResponderRestoration:(id)restoration;
- (void)_textInput:(id)input pasteDelegateDidPasteText:(id)text toTextRange:(id)range;
- (void)_textInput:(id)input pasteDelegateWillPasteText:(id)text toTextRange:(id)range;
- (void)_textInteractableItem:(id)item willDismissMenuWithAnimator:(id)animator;
- (void)_textInteractableItem:(id)item willDisplayMenuWithAnimator:(id)animator;
- (void)_textStorageDidProcessEditing:(id)editing;
- (void)_textViewContentPaddingDidChange:(id)change;
- (void)_textViewWillPresentTextFormattingOptions;
- (void)_translate:(id)_translate;
- (void)_transliterateChinese:(id)chinese;
- (void)_updateBaselineInformationDependentOnBounds;
- (void)_updateContainerTileAndSizingFlags;
- (void)_updateContentSize;
- (void)_updateFrameOfTrailingWhitespace:(CGSize)whitespace;
- (void)_updateInteractionGeometry;
- (void)_updatePlaceholderVisibility;
- (void)_updateSelectableInteractions;
- (void)_updateSelectionGestures;
- (void)_updateTextContainerSizeAndSizeToFit;
- (void)_updateTextEffectsConfigurationIfNeeded;
- (void)_updateTextFormattingController;
- (void)_updateTextFormattingControllerPresentationSource;
- (void)_willDrawContentOfSurface:(id)surface withBlock:(id)block;
- (void)_writingToolsCoordinator:(id)coordinator didReceiveContexts:(id)contexts;
- (void)addGhostedRange:(id)range;
- (void)addTextAlternatives:(id)alternatives;
- (void)addTextAlternativesDisplayStyle:(int64_t)style toRange:(_NSRange)range;
- (void)adjustedContentInsetDidChange;
- (void)alignCenter:(id)center;
- (void)alignJustified:(id)justified;
- (void)alignLeft:(id)left;
- (void)alignRight:(id)right;
- (void)applyGrammarCheckingIndication;
- (void)beginFloatingCursorAtPoint:(CGPoint)point;
- (void)beginSelectionChange;
- (void)captureTextFromCamera:(id)camera;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder includingSelectedTextAndDisplayedViewControllers:(BOOL)controllers;
- (void)decreaseSize:(id)size;
- (void)deleteBackward;
- (void)draggingFinished:(id)finished;
- (void)drawTextHighlightBackgroundForTextRange:(id)range origin:(CGPoint)origin;
- (void)droppingFinished;
- (void)droppingStarted;
- (void)encodeRestorableStateWithCoder:(id)coder includingSelectedTextAndDisplayedViewControllers:(BOOL)controllers;
- (void)encodeWithCoder:(id)coder;
- (void)endFloatingCursor;
- (void)endSelectionChange;
- (void)findInteraction:(id)interaction didBeginFindSession:(id)session;
- (void)findInteraction:(id)interaction didEndFindSession:(id)session;
- (void)increaseSize:(id)size;
- (void)insertAdaptiveImageGlyph:(id)glyph replacementRange:(id)range;
- (void)insertAnimatedTextPlaceholder;
- (void)insertAnimatedTextPlaceholderAtLocation:(id)location numLines:(double)lines completion:(id)completion;
- (void)insertAttributedText:(id)text;
- (void)insertDictationResult:(id)result withCorrectionIdentifier:(id)identifier;
- (void)insertEmojiImageTextAttachment:(id)attachment replacementRange:(id)range;
- (void)insertInputSuggestion:(id)suggestion;
- (void)insertText:(id)text;
- (void)insertText:(id)text alternatives:(id)alternatives style:(int64_t)style;
- (void)insertTextSuggestion:(id)suggestion;
- (void)invalidateIntrinsicContentSize;
- (void)isEditableDidChange;
- (void)keyboardInputChangedSelection:(id)selection;
- (void)layoutSubviews;
- (void)makeTextWritingDirectionLeftToRight:(id)right;
- (void)makeTextWritingDirectionNatural:(id)natural;
- (void)makeTextWritingDirectionRightToLeft:(id)left;
- (void)paste:(id)paste;
- (void)pasteAndMatchStyle:(id)style;
- (void)pasteItemProviders:(id)providers;
- (void)removeAnimatedTextPlaceholders;
- (void)removeAnnotation:(id)annotation forRange:(id)range;
- (void)removeDictationResultPlaceholder:(id)placeholder willInsertResult:(BOOL)result;
- (void)removeEmojiAlternatives;
- (void)removeTextPlaceholder:(id)placeholder;
- (void)replace:(id)replace;
- (void)replaceRange:(id)range withAnnotatedString:(id)string relativeReplacementRange:(_NSRange)replacementRange;
- (void)replaceRange:(id)range withAttributedText:(id)text;
- (void)replaceRange:(id)range withText:(id)text;
- (void)replaceRangeWithTextWithoutClosingTyping:(id)typing replacementText:(id)text;
- (void)scrollRangeToVisible:(NSRange)range;
- (void)scrollSelectionToVisible:(BOOL)visible;
- (void)select:(id)select;
- (void)selectAll:(id)all;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setAllowedWritingToolsResultOptions:(unint64_t)options;
- (void)setAllowsEditingTextAttributes:(BOOL)allowsEditingTextAttributes;
- (void)setAllowsTextAnimations:(BOOL)animations;
- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setAttributedPlaceholder:(id)placeholder;
- (void)setAttributedPlaceholders:(id)placeholders;
- (void)setAttributedText:(NSAttributedString *)attributedText;
- (void)setAutomaticallyAdjustsWritingDirection:(BOOL)direction;
- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range;
- (void)setBounds:(CGRect)bounds;
- (void)setClearsOnInsertion:(BOOL)clearsOnInsertion;
- (void)setContentMode:(int64_t)mode;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentToHTMLString:(id)string;
- (void)setContinuousSpellCheckingEnabled:(BOOL)enabled;
- (void)setCustomRenderController:(id)controller;
- (void)setDataDetectorTypes:(UIDataDetectorTypes)dataDetectorTypes;
- (void)setDelegate:(id)delegate;
- (void)setEditable:(BOOL)editable;
- (void)setFindInteractionEnabled:(BOOL)findInteractionEnabled;
- (void)setFont:(UIFont *)font;
- (void)setForceDisableDictation:(BOOL)dictation;
- (void)setForceEnableDictation:(BOOL)dictation;
- (void)setFrame:(CGRect)frame;
- (void)setInputDelegate:(id)delegate;
- (void)setInputView:(UIView *)inputView;
- (void)setLineHeight:(double)height;
- (void)setLinkTextAttributes:(NSDictionary *)linkTextAttributes;
- (void)setMarginTop:(unint64_t)top;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setMarkedTextStyle:(id)style;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setNeedsFrameUpdateForSurface:(id)surface;
- (void)setNeedsLayout;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)setSecureTextEntry:(BOOL)entry;
- (void)setSelectable:(BOOL)selectable;
- (void)setSelectedRange:(NSRange)selectedRange;
- (void)setSelectedRanges:(id)ranges;
- (void)setSelectedTextRange:(id)range;
- (void)setShouldAutoscrollAboveBottom:(BOOL)bottom;
- (void)setShouldPresentSheetsInAWindowLayeredAboveTheKeyboard:(BOOL)keyboard;
- (void)setSizingRule:(int64_t)rule;
- (void)setSupportsAdaptiveImageGlyph:(BOOL)glyph;
- (void)setText:(NSString *)text;
- (void)setTextAlignment:(NSTextAlignment)textAlignment;
- (void)setTextContainerInset:(UIEdgeInsets)textContainerInset;
- (void)setTextFormattingConfiguration:(id)configuration;
- (void)setTiledViewsDrawAsynchronously:(BOOL)asynchronously;
- (void)setTypingAttributes:(NSDictionary *)typingAttributes;
- (void)setUsesTiledViews:(BOOL)views;
- (void)startAutoscroll:(CGPoint)autoscroll;
- (void)startInteractionWithLinkAtPoint:(CGPoint)point;
- (void)takeTraitsFrom:(id)from;
- (void)textInput:(id)input didApplyAttributedText:(id)text toCharacterRange:(_NSRange)range;
- (void)textInput:(id)input undoRedoDidApplyAttributedText:(id)text toCharacterRange:(_NSRange)range;
- (void)textInputDidChange:(id)change;
- (void)textInputDidChangeSelection:(id)selection;
- (void)textInputDidFinishUndoRedoChanges:(id)changes;
- (void)tintColorDidChange;
- (void)toggleBoldface:(id)boldface;
- (void)toggleItalics:(id)italics;
- (void)toggleUnderline:(id)underline;
- (void)traitCollectionDidChange:(id)change;
- (void)unmarkText;
- (void)updateAutoscrollAboveBottom;
- (void)updateFloatingCursorAtPoint:(CGPoint)point;
- (void)updateFloatingCursorAtPoint:(CGPoint)point animated:(BOOL)animated;
- (void)updateSelection;
- (void)updateSelectionImmediately;
- (void)updateTextAttributesWithConversionHandler:(id)handler;
- (void)validateCommand:(id)command;
- (void)willDismissEditMenuWithAnimator:(id)animator;
- (void)willPresentEditMenuWithAnimator:(id)animator;
- (void)writingToolsCoordinator:(id)coordinator adjustForUpdatedRange:(_NSRange)range forTextAnimation:(int64_t)animation inContext:(id)context completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator finishTextAnimation:(int64_t)animation forRange:(_NSRange)range inContext:(id)context completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator prepareForTextAnimation:(int64_t)animation forRange:(_NSRange)range inContext:(id)context completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator replaceRange:(_NSRange)range inContext:(id)context proposedText:(id)text reason:(int64_t)reason animationParameters:(id)parameters completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator requestsBoundingBezierPathsForRange:(_NSRange)range inContext:(id)context completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator requestsContextsForScope:(int64_t)scope completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator requestsPreviewForTextAnimation:(int64_t)animation ofRange:(_NSRange)range inContext:(id)context completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator requestsRangeInContextWithIdentifierForPoint:(CGPoint)point completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator requestsUnderlinePathsForRange:(_NSRange)range inContext:(id)context completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator selectRanges:(id)ranges inContext:(id)context completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator willChangeToState:(int64_t)state completion:(id)completion;
@end

@implementation UITextView

- (void)setNeedsDisplay
{
  v29.receiver = self;
  v29.super_class = UITextView;
  [(UIView *)&v29 setNeedsDisplay];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  canvasView = [(_UITextContainerView *)self->_containerView canvasView];
  [(UIView *)self convertRect:canvasView toView:v4, v6, v8, v10];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  canvasView2 = [(_UITextContainerView *)self->_containerView canvasView];
  [canvasView2 bounds];
  v33.origin.x = v21;
  v33.origin.y = v22;
  v33.size.width = v23;
  v33.size.height = v24;
  v30.origin.x = v13;
  v30.origin.y = v15;
  v30.size.width = v17;
  v30.size.height = v19;
  v31 = CGRectIntersection(v30, v33);
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  if (!CGRectIsEmpty(v32))
  {
    [(_UITextContainerView *)self->_containerView setNeedsDisplayInRect:x, y, width, height];
  }
}

- (void)_setupDefaultStyleEffectConfiguration
{
  if (dyld_program_sdk_at_least())
  {
    styleEffectConfiguration = [(_UITextLayoutController *)self->_textLayoutController styleEffectConfiguration];

    if (!styleEffectConfiguration)
    {
      v6 = objc_alloc_init(MEMORY[0x1E6999430]);
      traitCollection = [(UIView *)self traitCollection];
      _styleEffectAppearanceName = [(UITraitCollection *)traitCollection _styleEffectAppearanceName];
      [v6 setAppearanceName:_styleEffectAppearanceName];

      [(_UITextLayoutController *)self->_textLayoutController setStyleEffectConfiguration:v6];
    }
  }
}

- (BOOL)isEditing
{
  isFirstResponder = [(UIView *)self isFirstResponder];
  if (isFirstResponder)
  {

    LOBYTE(isFirstResponder) = [(UITextView *)self isEditable];
  }

  return isFirstResponder;
}

- (id)_textInputTraits
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v4 = objc_opt_respondsToSelector();

  v5 = objc_loadWeakRetained(&self->_inputController);
  v6 = v5;
  if (v4)
  {
    _textInputTraits = [v5 _textInputTraits];
  }

  else
  {

    if (v6)
    {
      v8 = objc_loadWeakRetained(&self->_inputController);
    }

    else
    {
      textInputTraits = self->_textInputTraits;
      if (!textInputTraits)
      {
        v10 = +[UITextInputTraits defaultTextInputTraits];
        v11 = self->_textInputTraits;
        self->_textInputTraits = v10;

        textInputTraits = self->_textInputTraits;
      }

      v8 = textInputTraits;
    }

    _textInputTraits = v8;
  }

  return _textInputTraits;
}

- (UITextInputDelegate)inputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  inputDelegate = [WeakRetained inputDelegate];

  return inputDelegate;
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
        [currentHandler handleFailureInMethod:a2 object:self file:@"UITextView.m" lineNumber:6306 description:@"Unable to derive tintColor!"];

        tintColor = 0;
      }
    }

    v12 = *off_1E70EC920;
    v13[0] = tintColor;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  return v3;
}

uint64_t __60__UITextView__shouldInvalidateLayoutForLinkAttributesChange__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (CGRect)visibleRectIgnoringKeyboard
{
  [(UIScrollView *)self contentOffset];
  v4 = v3;
  v6 = v5;
  [(UIView *)self frame];
  v9 = v4;
  v10 = v6;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (id)selectionContainerView
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    if (self)
    {
      _existingSelectionContainerView = [(UITextView *)&self->super.super.super.super.isa _existingSelectionContainerView];

      if (!_existingSelectionContainerView)
      {
        v4 = [UIView alloc];
        v5 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        selectionContainerView = self->_selectionContainerView;
        self->_selectionContainerView = v5;

        [(UITextView *)&self->super.super.super.super.isa _placeSelectionContainerView];
      }
    }

    _existingSelectionContainerView2 = [(UITextView *)&self->super.super.super.super.isa _existingSelectionContainerView];
  }

  else
  {
    _existingSelectionContainerView2 = [(UITextView *)self textInputView];
  }

  return _existingSelectionContainerView2;
}

- (UITextRange)markedTextRange
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  markedTextRange = [WeakRetained markedTextRange];

  return markedTextRange;
}

- (UITextInputTokenizer)tokenizer
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  tokenizer = [WeakRetained tokenizer];

  return tokenizer;
}

- (BOOL)_needsDoubleUpdateConstraintsPass
{
  if ((*(&self->super.super._viewFlags + 6) & 0x10) == 0)
  {
    return 0;
  }

  if ([(UIScrollView *)self isScrollEnabled])
  {
    return 0;
  }

  return (*&self->_tvFlags & 8) == 0;
}

- (void)_syncTypingAttributesToTextContainerAttributesForExtraLineFragment
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  typingAttributes = [WeakRetained typingAttributes];

  textContainer = [(UITextView *)self textContainer];
  attributesForExtraLineFragment = [textContainer attributesForExtraLineFragment];

  if (typingAttributes != attributesForExtraLineFragment && ([typingAttributes isEqual:attributesForExtraLineFragment] & 1) == 0)
  {
    textContainer2 = [(UITextView *)self textContainer];
    [textContainer2 setAttributesForExtraLineFragment:typingAttributes];
  }
}

- (void)_updateContainerTileAndSizingFlags
{
  isScrollEnabled = [(UIScrollView *)self isScrollEnabled];
  canAccessLayoutManager = [(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager];
  if (isScrollEnabled)
  {
    if (canAccessLayoutManager)
    {
      layoutManager = [(_UITextLayoutController *)self->_textLayoutController layoutManager];
      [layoutManager setAllowsNonContiguousLayout:1];
    }

    p_textContainer = &self->_textContainer;
    layoutOrientation = [(NSTextContainer *)self->_textContainer layoutOrientation];
    containerView = self->_containerView;
    if (layoutOrientation)
    {
      [(_UITextContainerView *)containerView setVerticallyResizable:0];
      [(_UITextContainerView *)self->_containerView setHorizontallyResizable:1];
      [(NSTextContainer *)*p_textContainer setHeightTracksTextView:1];
      v9 = 0;
    }

    else
    {
      v9 = 1;
      [(_UITextContainerView *)containerView setVerticallyResizable:1];
      [(_UITextContainerView *)self->_containerView setHorizontallyResizable:0];
      [(NSTextContainer *)*p_textContainer setHeightTracksTextView:0];
    }
  }

  else
  {
    if (canAccessLayoutManager)
    {
      layoutManager2 = [(_UITextLayoutController *)self->_textLayoutController layoutManager];
      [layoutManager2 setAllowsNonContiguousLayout:0];
    }

    [(_UITextContainerView *)self->_containerView setVerticallyResizable:0];
    [(_UITextContainerView *)self->_containerView setHorizontallyResizable:0];
    p_textContainer = &self->_textContainer;
    if ([(NSTextContainer *)self->_textContainer layoutOrientation])
    {
      [(NSTextContainer *)*p_textContainer setHeightTracksTextView:1];
      v9 = dyld_program_sdk_at_least();
    }

    else
    {
      [(NSTextContainer *)*p_textContainer setHeightTracksTextView:dyld_program_sdk_at_least()];
      v9 = 1;
    }
  }

  v11 = *p_textContainer;

  [(NSTextContainer *)v11 setWidthTracksTextView:v9];
}

- (NSTextLayoutManager)textLayoutManager
{
  textContainer = [(UITextView *)self textContainer];
  textLayoutManager = [textContainer textLayoutManager];

  return textLayoutManager;
}

- (BOOL)_allowsOverflowForIntrinsicSizeCalculation
{
  [(UIView *)self bounds];
  result = 1;
  if (v3 == 0.0 && ([(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager]& 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    typingAttributes = [WeakRetained typingAttributes];
    v6 = [typingAttributes valueForKey:*off_1E70EC988];

    textStorage = [(UITextView *)self textStorage];
    v8 = [textStorage _ui_resolvedTextAlignmentForParagraphStyle:v6];

    layoutOrientation = [(_UITextContainerView *)self->_containerView layoutOrientation];
    if (!layoutOrientation && v8 != 0)
    {
      return 0;
    }
  }

  return result;
}

- (void)_updateSelectableInteractions
{
  interactionAssistant = self->_interactionAssistant;
  if (interactionAssistant)
  {
    [(UITextInteractionAssistant *)interactionAssistant clearGestureRecognizers:0];
  }

  tvFlags = self->_tvFlags;
  if ((*&tvFlags & 0x20) != 0)
  {
    v7 = [[UITextInteractionAssistant alloc] initWithView:self];
    v8 = self->_interactionAssistant;
    self->_interactionAssistant = v7;

    tokenizer = [(UITextView *)self tokenizer];

    if (tokenizer)
    {
      v10 = +[UITextInputTraits defaultTextInputTraits];
      textInputTraits = self->_textInputTraits;
      self->_textInputTraits = v10;
    }

    else
    {
      textInputController = [(_UITextLayoutControllerBase *)self->_textLayoutController textInputController];
      objc_storeWeak(&self->_inputController, textInputController);

      textInputTraits = objc_loadWeakRetained(&self->_inputController);
      [textInputTraits setDelegate:self];
    }

    goto LABEL_18;
  }

  if ((*&tvFlags & 2) != 0)
  {
    [(UITextView *)self willChangeValueForKey:@"editable"];
    *&self->_tvFlags &= ~2uLL;
    [(UITextView *)self isEditableDidChange];
    [(UITextView *)self didChangeValueForKey:@"editable"];
  }

  tokenizer2 = [(UITextView *)self tokenizer];

  if (tokenizer2)
  {
    v6 = self->_textInputTraits;
    self->_textInputTraits = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    [WeakRetained setDelegate:0];

    objc_storeWeak(&self->_inputController, 0);
  }

  if ([(UITextView *)self _delegatesAllowingLinkInteraction])
  {
    v13 = [[UITextInteractionAssistant alloc] initWithView:self textInteractionMode:1002];
    v14 = self->_interactionAssistant;
    self->_interactionAssistant = v13;

LABEL_18:
    v17 = self->_interactionAssistant;

    [(UITextInteractionAssistant *)v17 setGestureRecognizers];
    return;
  }

  v15 = self->_interactionAssistant;
  self->_interactionAssistant = 0;
}

- (id)_existingSelectionContainerView
{
  selfCopy = self;
  if (self)
  {
    selectionContainerView = [self[272] selectionContainerView];
    v3 = selectionContainerView;
    if (!selectionContainerView)
    {
      v3 = selfCopy[345];
    }

    selfCopy = v3;
  }

  return selfCopy;
}

void __60__UITextView__shouldInvalidateLayoutForLinkAttributesChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = *off_1E70EC960;
  v4 = a2;
  v5 = [v4 length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__UITextView__shouldInvalidateLayoutForLinkAttributesChange__block_invoke_2;
  v6[3] = &unk_1E70F8050;
  v6[4] = *(a1 + 32);
  [v4 enumerateAttribute:v3 inRange:0 options:v5 usingBlock:{0, v6}];
}

+ (BOOL)_isTextLayoutManagerEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    if ((_os_feature_enabled_impl() & 1) != 0 || (v2 = dyld_program_sdk_at_least()) != 0)
    {
      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

- (BOOL)resignFirstResponder
{
  tvFlags = self->_tvFlags;
  if ((*&tvFlags & 4) != 0)
  {
    LOBYTE(resignFirstResponder) = 1;
  }

  else
  {
    self->_tvFlags = (*&tvFlags | 4);
    selfCopy = self;
    v7.receiver = selfCopy;
    v7.super_class = UITextView;
    resignFirstResponder = [(UIResponder *)&v7 resignFirstResponder];
    if (resignFirstResponder)
    {
      [(UITextView *)&selfCopy->super.super.super.super.isa _cleanUpForResignFirstResponder];
    }

    *&self->_tvFlags &= ~4uLL;
  }

  return resignFirstResponder;
}

- (BOOL)_shouldInvalidateLayoutForLinkAttributesChange
{
  documentRange = [(_UITextLayoutController *)self->_textLayoutController documentRange];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (([documentRange isEmpty] & 1) == 0)
  {
    textStorage = self->_textStorage;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__UITextView__shouldInvalidateLayoutForLinkAttributesChange__block_invoke;
    v7[3] = &unk_1E70F94A8;
    v7[4] = &v8;
    [(NSTextStorage *)textStorage coordinateReading:v7];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (unint64_t)allowedWritingToolsResultOptions
{
  _textInputTraits = [(UITextView *)self _textInputTraits];
  allowedWritingToolsResultOptions = [_textInputTraits allowedWritingToolsResultOptions];

  return allowedWritingToolsResultOptions;
}

- (void)_ensureUpToDateTextContainerInsetAndNotifyIfNecessary
{
  if (!self)
  {
    return;
  }

  [*(self + 2176) textContainerInset];
  v6 = v5;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = fmax(*(self + 2424), *(self + 2456));
  v11 = fmax(*(self + 2432), *(self + 2464));
  v12 = fmax(*(self + 2440), *(self + 2472));
  v13 = fmax(*(self + 2448), *(self + 2480));
  v14 = *(self + 2488) >= 0.0 ? v11 : *(self + 2488);
  v15 = v14 == v2 && v10 == v6;
  v16 = v15 && v13 == v4;
  if (v16 && v12 == v3)
  {
    return;
  }

  isScrollEnabled = [self isScrollEnabled];
  if ((*(self + 95) & 2) != 0)
  {
    [self bounds];
    v36 = v28;
    v37 = v27;
    v34 = v30;
    v35 = v29;
    superview = 0;
    v23 = 1;
LABEL_23:
    v32 = *MEMORY[0x1E695F060];
    v33 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_24;
  }

  superview = [self superview];
  [self bounds];
  v36 = v22;
  v37 = v21;
  v23 = superview == 0;
  if (superview)
  {
    v24 = isScrollEnabled;
  }

  else
  {
    v24 = 1;
  }

  v34 = v20;
  v35 = v19;
  if (v24)
  {
    goto LABEL_23;
  }

  [self sizeThatFits:{v19, v20}];
  v32 = v25;
  v33 = v26;
  v23 = 0;
LABEL_24:
  [*(self + 2176) setTextContainerInset:{v10, v14, v12, v13}];
  if ((isScrollEnabled & 1) == 0)
  {
    [self _updateBaselineInformationDependentOnBounds];
    v31 = *(self + 88);
    if (v23)
    {
      if ((v31 & 0x200000000000000) != 0 && ([self translatesAutoresizingMaskIntoConstraints] & 1) == 0)
      {
        [self invalidateIntrinsicContentSize];
      }
    }

    else if ((v31 & 0x4000000000000000) == 0)
    {
      if (vabdd_f64(v10 + v12, v6 + v8) > 2.22044605e-16 && (v40.origin.y = v36, v40.origin.x = v37, v40.size.height = v34, v40.size.width = v35, vabdd_f64(CGRectGetHeight(v40), v33) <= 2.22044605e-16) || vabdd_f64(v13 + v14, v7 + v9) > 2.22044605e-16 && (v41.origin.y = v36, v41.origin.x = v37, v41.size.height = v34, v41.size.width = v35, vabdd_f64(CGRectGetWidth(v41), v32) <= 2.22044605e-16))
      {
        [superview setNeedsLayout];
      }
    }
  }
}

- (BOOL)_isInteractiveTextSelectionDisabled
{
  if ((*&self->_tvFlags & 0x10) != 0)
  {
    return 1;
  }

  if ([(UITextView *)self isSelectable])
  {
    return 0;
  }

  return [(UITextView *)self _delegatesAllowingLinkInteraction];
}

- (id)_placeSelectionContainerView
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (!result[345])
  {
    return result;
  }

  textContainer = [result textContainer];
  textLayoutManager = [textContainer textLayoutManager];
  if (textLayoutManager)
  {
    v4 = textLayoutManager;
    v5 = _UITextViewAllowSelectionContainerInTextLayoutCanvas();

    if (v5)
    {
      [v1[345] removeFromSuperview];
      v6 = v1[345];
      v7 = v1[272];

      return [v7 setSelectionContainerView:v6];
    }
  }

  else
  {
  }

  [v1[272] setSelectionContainerView:0];
  [v1 insertSubview:v1[345] belowSubview:v1[272]];

  return [v1 setNeedsLayout];
}

- (UITextRange)selectedTextRange
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  selectedTextRange = [WeakRetained selectedTextRange];

  return selectedTextRange;
}

- (BOOL)_shouldStartDataDetectors
{
  if (![(UITextView *)self dataDetectorTypes]|| [(UITextView *)self isEditable])
  {
    return 0;
  }

  return [(UITextView *)self isSelectable];
}

+ (id)_defaultTextColor
{
  v2 = +[_UITextAttributeDefaults _unspecifiedDefaults];
  _textView = [v2 _textView];
  _textColor = [_textView _textColor];

  return _textColor;
}

- (void)_updateSelectionGestures
{
  if ([(UITextView *)self isSelectable])
  {
    if ([(UITextView *)self isTextDragActive]|| [(UITextView *)self isTextDropActive])
    {
      if ([(UIView *)self isFirstResponder])
      {
        interactionAssistant = [(UITextView *)self interactionAssistant];
        [interactionAssistant deactivateSelection];
      }

      interactionAssistant2 = [(UITextView *)self interactionAssistant];
      [interactionAssistant2 clearGestureRecognizers:1];

      interactionAssistant3 = [(UITextView *)self interactionAssistant];
      _editMenuAssistant = [interactionAssistant3 _editMenuAssistant];
      [_editMenuAssistant hideSelectionCommands];
    }

    else
    {
      if ([(UIView *)self isFirstResponder])
      {
        interactionAssistant4 = [(UITextView *)self interactionAssistant];
        [interactionAssistant4 activateSelection];
      }

      interactionAssistant3 = [(UITextView *)self interactionAssistant];
      [interactionAssistant3 setGestureRecognizers];
    }
  }

  else
  {
    interactionAssistant3 = [(UITextView *)self interactionAssistant];
    [interactionAssistant3 clearGestureRecognizers:1];
  }
}

- (void)_startDataDetectors
{
  dataDetectorsUIGetClass(@"DDDetectionController") = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
  [dataDetectorsUIGetClass(@"DDDetectionController") startURLificationForContainer:self detectedTypes:{-[UITextView _effectiveDataDetectorTypes](self, "_effectiveDataDetectorTypes")}];
}

- (unint64_t)_effectiveDataDetectorTypes
{
  dataDetectorTypes = [(UITextView *)self dataDetectorTypes];
  result = [(UITextView *)self dataDetectorTypes];
  if (dataDetectorTypes == -1)
  {
    return result & 0x1FF;
  }

  return result;
}

- (unint64_t)_totalNumberOfTextViewsInLayoutManager
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  textContainers = [(_UITextLayoutController *)self->_textLayoutController textContainers];
  v3 = [textContainers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(textContainers);
        }

        textView = [*(*(&v10 + 1) + 8 * i) textView];

        if (textView)
        {
          ++v5;
        }
      }

      v4 = [textContainers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateTextContainerSizeAndSizeToFit
{
  v3 = ([(UIScrollView *)self isScrollEnabled]|| (dyld_program_sdk_at_least() & 1) == 0) && [(UITextView *)self _allowsOverflowForIntrinsicSizeCalculation];
  [(UIView *)self bounds];
  [(UITextView *)self _containerSizeForBoundsSize:v3 allowingOverflow:v4, v5];
  [(NSTextContainer *)self->_textContainer setSize:?];
  containerView = self->_containerView;

  [(_UITextContainerView *)containerView sizeToFit];
}

- (void)_createTextEmphasisBackgroundViewIfNeeded
{
  if (!self->_textEmphasisBackgroundView && _UITextViewAllowSelectionContainerInTextLayoutCanvas())
  {
    v3 = [[_UITextEmphasisBackgroundView alloc] initWithTextView:self];
    textEmphasisBackgroundView = self->_textEmphasisBackgroundView;
    self->_textEmphasisBackgroundView = v3;

    v5 = self->_textEmphasisBackgroundView;

    [(UIView *)v5 setHidden:1];
  }
}

- (void)_resetDataDetectorsResults
{
  if (sDataDetectorsUIFrameworkLoaded == 1)
  {
    dataDetectorsUIGetClass(@"DDDetectionController") = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
    [dataDetectorsUIGetClass(@"DDDetectionController") resetResultsForContainer:self];
  }
}

- (id)_allowedTypingAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  _allowedTypingAttributes = [WeakRetained _allowedTypingAttributes];

  return _allowedTypingAttributes;
}

- (id)_getDelegateZoomView
{
  v5.receiver = self;
  v5.super_class = UITextView;
  _getDelegateZoomView = [(UIScrollView *)&v5 _getDelegateZoomView];
  if (!_getDelegateZoomView)
  {
    _getDelegateZoomView = self->_containerView;
  }

  return _getDelegateZoomView;
}

- (void)_adjustFontForTypesettingLanguage
{
  text = [(UITextView *)self text];
  v4 = [(UITextView *)self _resolvedTypesettingLanguage:text];

  traitCollection = [(UIView *)self traitCollection];
  font = [(UITextView *)self font];
  v7 = [(UIFont *)font _fontAdjustedForTypesettingLanguage:v4];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  font2 = [(UITextView *)self font];
  v9 = 0;
  if (font2 && v7)
  {
    font3 = [(UITextView *)self font];
    v9 = [font3 isEqual:v7] ^ 1;
  }

  v23 = v9;
  if (*(v21 + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    [WeakRetained _addToTypingAttributes:*off_1E70EC918 value:v7];

    [(UITextView *)self _syncTypingAttributesToTextContainerAttributesForExtraLineFragment];
  }

  textStorage = self->_textStorage;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __47__UITextView__adjustFontForTypesettingLanguage__block_invoke;
  v17 = &unk_1E7126390;
  v13 = v4;
  v18 = v13;
  v19 = &v20;
  [(NSTextStorage *)textStorage coordinateEditing:&v14];
  if (*(v21 + 24) == 1)
  {
    [(UITextView *)self invalidateIntrinsicContentSize:v14];
  }

  _Block_object_dispose(&v20, 8);
}

- (UIFont)font
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  typingAttributes = [WeakRetained typingAttributes];
  v4 = [typingAttributes valueForKey:*off_1E70EC918];

  return v4;
}

void __47__UITextView__adjustFontForTypesettingLanguage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__UITextView__adjustFontForTypesettingLanguage__block_invoke_2;
  v8[3] = &unk_1E70F3078;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v6;
  v9 = v5;
  v7 = v3;
  [v7 enumerateAttributesInRange:0 options:v4 usingBlock:{0x100000, v8}];
}

void __47__UITextView__adjustFontForTypesettingLanguage__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

  v11 = [(UIFont *)v10 _fontAdjustedForTypesettingLanguage:?];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && ([(__CTFont *)v10 isEqual:v11]& 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) addAttribute:*off_1E70EC918 value:v12 range:{a3, a4}];
  }
}

- (void)setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = UITextView;
  [(UIScrollView *)&v3 setNeedsLayout];
  [(UITextView *)self _setNeedsTextLayout];
}

- (UIEdgeInsets)textContainerInset
{
  top = self->_unadjustedTextContainerInset.top;
  left = self->_unadjustedTextContainerInset.left;
  bottom = self->_unadjustedTextContainerInset.bottom;
  right = self->_unadjustedTextContainerInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  isScrollEnabled = [(UIScrollView *)self isScrollEnabled];
  v4 = 0.0;
  if (isScrollEnabled)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 0.0;
    if ((*(&self->_tvFlags + 1) & 0x40) != 0)
    {
      [(UITextView *)self _applicableContentOutsetsFromFonts];
      v4 = fmax(v6 - self->_unadjustedTextContainerInset.left, 0.0);
      v5 = fmax(v7 - self->_unadjustedTextContainerInset.right, 0.0);
    }
  }

  v8 = 0.0;
  v9 = 0.0;
  result.right = v5;
  result.bottom = v9;
  result.left = v4;
  result.top = v8;
  return result;
}

- (CGSize)intrinsicContentSize
{
  isScrollEnabled = [(UIScrollView *)self isScrollEnabled];
  v4 = -1.0;
  v5 = -1.0;
  if (isScrollEnabled)
  {
    goto LABEL_22;
  }

  if (dyld_program_sdk_at_least() && (*(&self->super.super._viewFlags + 6) & 2) != 0)
  {
    font = [(UITextView *)self font];
    [font lineHeight];
    UICeilToViewScale(self);
    v11 = v13;
    v10 = 65536.0;
  }

  else
  {
    [(UITextView *)self _currentPreferredMaxLayoutWidth];
    if (v6 <= 0.0)
    {
      v6 = 3.40282347e38;
    }

    [(UITextView *)self _intrinsicSizeWithinSize:v6];
    v10 = v9;
    v11 = v7;
  }

  if (v10 > 0.0)
  {
    v14 = 3.40282347e38;
    if (v10 < 3.40282347e38)
    {
      goto LABEL_12;
    }
  }

  v14 = 0.0;
  if (v11 <= 0.0)
  {
    v8 = 0.0;
    v7 = 0.0;
    goto LABEL_13;
  }

  v8 = 0.0;
  v7 = 0.0;
  if (v11 < 3.40282347e38)
  {
LABEL_12:
    [(UITextView *)self alignmentRectInsets:v14];
    v7 = v15 + v16;
  }

LABEL_13:
  v17 = v10 - v7;
  if (v10 <= 0.0)
  {
    v5 = v10;
  }

  else
  {
    v5 = v17;
  }

  v4 = -1.0;
  if (v10 >= 3.40282347e38)
  {
    v5 = -1.0;
  }

  if (v11 < 3.40282347e38)
  {
    if (v11 <= 0.0)
    {
      v4 = v11;
    }

    else
    {
      v4 = v11 - (v14 + v8);
    }
  }

LABEL_22:
  v18 = v5;
  result.height = v4;
  result.width = v18;
  return result;
}

- (BOOL)_wantsBaselineUpdatingFollowingConstraintsPass
{
  if ((*(&self->super.super._viewFlags + 7) & 2) != 0)
  {
    return ![(UIScrollView *)self isScrollEnabled:v2];
  }

  else
  {
    return 0;
  }
}

- (double)_adjustedTextContainerInset
{
  if (!self)
  {
    return 0.0;
  }

  [self textContainerInset];
  return fmax(v2, self[307]);
}

- (void)adjustedContentInsetDidChange
{
  v3.receiver = self;
  v3.super_class = UITextView;
  [(UIScrollView *)&v3 adjustedContentInsetDidChange];
  [(UITextView *)self _resyncContainerFrameForNonAutolayoutDeferringSizeToFit:1];
}

- (void)_updateContentSize
{
  [(UIView *)self->_containerView frame];
  v4 = v3;
  v6 = v5;
  layoutOrientation = [(_UITextContainerView *)self->_containerView layoutOrientation];
  if (layoutOrientation == 1)
  {
    [(_UITextViewContentPadding *)self->_bottomContentPadding currentValue];
    v4 = v4 + v9;
  }

  else if (!layoutOrientation)
  {
    [(_UITextViewContentPadding *)self->_bottomContentPadding currentValue];
    v6 = v6 + v8;
  }

  [(UIScrollView *)self contentSize];
  v12 = vabdd_f64(v11, v4);
  v13 = vabdd_f64(v10, v6) < 0.00000011920929 && v12 < 0.00000011920929;
  if (v13 || [(UIScrollView *)self _isScrollingToTop])
  {
    if ((*(&self->_tvFlags + 1) & 1) == 0)
    {

      [(UITextView *)self _updateFrameOfTrailingWhitespace:v4, v6];
    }
  }

  else
  {
    ++self->_contentSizeUpdateSeqNo;
    ++self->_scrollPositionDontRecordCount;
    contentSizeUpdateSeqNo = self->_contentSizeUpdateSeqNo;
    WeakRetained = self->_scrollPosition;
    if (([(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager]& 1) != 0)
    {
      v15 = 0;
    }

    else
    {
      [(UIScrollView *)self contentSize];
      v15 = v16 == v4;
    }

    [(UIScrollView *)self setContentSize:v4, v6];
    [(UITextView *)self _updateFrameOfTrailingWhitespace:v4, v6];
    [(UIScrollView *)self contentOffset];
    v19 = v18;
    v20 = WeakRetained;
    if (WeakRetained)
    {
      range = [(_UITextViewRestorableScrollPosition *)WeakRetained range];
      [(UITextView *)self _rectForScrollToVisible:range, v22];
      v20 = WeakRetained;
    }

    v23 = v17;
    v24 = v18;
    [(_UITextViewRestorableScrollPosition *)v20 offsetWithinLine];
    v26 = v24 + v25 + self->_offsetFromScrollPosition;
    v27 = self->_contentSizeUpdateSeqNo;
    if (v27 == contentSizeUpdateSeqNo)
    {
      [(UIScrollView *)self _adjustedContentOffsetForContentOffset:v23, v26];
      v23 = v28;
      v26 = v29;
      v27 = self->_contentSizeUpdateSeqNo;
      if (v27 == contentSizeUpdateSeqNo && !v15)
      {
        [(NSTextContainer *)self->_textContainer textContainerOrigin];
        v58 = v31;
        v59 = v30;
        textView = [(NSTextContainer *)self->_textContainer textView];
        [(UIView *)self convertPoint:textView toView:v23, v26];
        v57 = v33;
        v35 = v34;

        [(UIView *)self bounds];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;
        textView2 = [(NSTextContainer *)self->_textContainer textView];
        [(UIView *)self convertRect:textView2 toView:v37, v39, v41, v43];
        v46 = v45;
        v48 = v47;

        [(_UITextLayoutController *)self->_textLayoutController ensureLayoutForBounds:self->_textContainer inTextContainer:v57 - v59, v35 - v58, v46, v48];
        v27 = self->_contentSizeUpdateSeqNo;
      }
    }

    if (v27 == contentSizeUpdateSeqNo && vabdd_f64(v19, v26) >= 0.5)
    {
      [(UITextView *)self _setContentOffsetWithoutRecordingScrollPosition:v23, v26];
      scrollTarget = self->_scrollTarget;
      if (scrollTarget)
      {
        range2 = [(_UITextViewRestorableScrollPosition *)scrollTarget range];
        [(UITextView *)self _contentOffsetForScrollToVisible:range2, v51];
        v53 = v52;
        v55 = v54;
        [(_UITextViewRestorableScrollPosition *)self->_scrollTarget offsetWithinLine];
        [(UIScrollView *)self _updateScrollAnimationForChangedTargetOffset:v53, v55 + v56];
      }

      [(_UITextLayoutController *)self->_textLayoutController resetTextViewportLayoutControllerLayoutForPosition:0, *&v57];
      --self->_scrollPositionDontRecordCount;

      WeakRetained = objc_loadWeakRetained(&self->_inputController);
      [(_UITextViewRestorableScrollPosition *)WeakRetained _selectionGeometryChanged];
    }

    else
    {
      --self->_scrollPositionDontRecordCount;
    }
  }
}

- (void)_setNeedsTextLayout
{
  superview = [(UIView *)self->_layoutView superview];

  if (superview != self)
  {
    [(UIView *)self insertSubview:self->_layoutView atIndex:0];
  }

  layoutView = self->_layoutView;

  [(UIView *)layoutView setNeedsLayout];
}

- (NSRange)selectedRange
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  selectedRange = [WeakRetained selectedRange];
  v5 = v4;

  v6 = selectedRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (NSString)text
{
  string = [(NSTextStorage *)self->_textStorage string];
  v3 = [string copy];

  return v3;
}

- (void)_updateTextFormattingControllerPresentationSource
{
  superview = [(UIView *)self superview];
  v4 = superview;
  if (superview)
  {
    selfCopy = superview;
  }

  else
  {
    selfCopy = self;
  }

  v46 = selfCopy;

  textFormattingViewController = self->_textFormattingViewController;
  if (!textFormattingViewController || [(UIViewController *)textFormattingViewController isBeingDismissed])
  {
    goto LABEL_23;
  }

  popoverPresentationController = [(UIViewController *)self->_textFormattingViewController popoverPresentationController];
  sourceView = [popoverPresentationController sourceView];
  if (sourceView != v46)
  {
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  popoverPresentationController2 = [(UIViewController *)self->_textFormattingViewController popoverPresentationController];
  [popoverPresentationController2 sourceRect];
  if (!CGRectEqualToRect(v48, *MEMORY[0x1E695F050]))
  {

    goto LABEL_21;
  }

  selectedRange = [(UITextView *)self selectedRange];
  v12 = selectedRange + v11;
  textStorage = [(UITextView *)self textStorage];
  v14 = [textStorage length];

  if (v12 <= v14)
  {
    [(UIViewController *)self->_textFormattingViewController preferredContentSize];
    v16 = v15;
    v18 = v17;
    _textInteraction = [(UIResponder *)self _textInteraction];
    assistantDelegate = [_textInteraction assistantDelegate];
    _editMenuAssistant = [assistantDelegate _editMenuAssistant];
    [_editMenuAssistant _editMenuTargetRect];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    [(UIView *)self convertRect:v46 toView:v23, v25, v27, v29];
    v31 = v30;
    MidY = v32;
    v35 = v34;
    v37 = v36;
    window = [(UIView *)self window];
    [window frame];
    v40 = v39;
    v42 = v41;

    if (v40 - v35 + -40.0 < v16 && v42 - v37 + -40.0 < v18)
    {
      v49.origin.x = v31;
      v49.origin.y = MidY;
      v49.size.width = v35;
      v49.size.height = v37;
      MidX = CGRectGetMidX(v49);
      v50.origin.x = v31;
      v50.origin.y = MidY;
      v50.size.width = v35;
      v50.size.height = v37;
      MidY = CGRectGetMidY(v50);
      v35 = 1.0;
      v31 = MidX;
      v37 = 1.0;
    }

    if ((v31 != *MEMORY[0x1E695EFF8] || MidY != *(MEMORY[0x1E695EFF8] + 8)) && (v35 != *MEMORY[0x1E695F060] || v37 != *(MEMORY[0x1E695F060] + 8)))
    {
      configuration = [(UITextFormattingViewController *)self->_textFormattingViewController configuration];
      if ([configuration _isTextAnimationsConfiguration])
      {
        v45 = -6.0;
      }

      else
      {
        v45 = -10.0;
      }

      popoverPresentationController = [(UIViewController *)self->_textFormattingViewController popoverPresentationController];
      v51.origin.x = v31;
      v51.origin.y = MidY;
      v51.size.width = v35;
      v51.size.height = v37;
      v52 = CGRectInset(v51, -10.0, v45);
      [popoverPresentationController setSourceRect:{v52.origin.x, v52.origin.y, v52.size.width, v52.size.height}];
      goto LABEL_22;
    }
  }

LABEL_23:
}

- (void)layoutSubviews
{
  [(UITextView *)self _ensureUpToDateTextContainerInsetAndNotifyIfNecessary];
  v3.receiver = self;
  v3.super_class = UITextView;
  [(UIScrollView *)&v3 layoutSubviews];
  [(UITextView *)self _layoutText];
  [(UIView *)self->_containerView bounds];
  [(UIView *)self->_selectionContainerView setFrame:?];
  [(_UITextViewSearchableObject *)self->_searchableObject layoutManagedSubviews];
}

- (CGRect)_frameOfTrailingWhitespace
{
  x = self->_frameOfTrailingWhitespace.origin.x;
  y = self->_frameOfTrailingWhitespace.origin.y;
  width = self->_frameOfTrailingWhitespace.size.width;
  height = self->_frameOfTrailingWhitespace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_layoutText
{
  p_tvFlags = &self->_tvFlags;
  if (*(&self->_tvFlags + 1))
  {
    [(_UITextContainerView *)self->_containerView sizeToFit];
    *&self->_tvFlags &= ~0x100uLL;
  }

  [(UITextView *)self _resyncContainerFrameForNonAutolayout];
  if ((*(p_tvFlags + 1) & 2) == 0)
  {
    [(UITextView *)self _scrollToSelectionIfNeeded];
  }

  [(UITextView *)self _layoutPlaceholder];
  if (([(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager]& 1) == 0)
  {

    [(UITextView *)self updateSelection];
  }
}

- (void)_scrollToSelectionIfNeeded
{
  if (*&self->_tvFlags)
  {
    if ([(UIScrollView *)self isScrollEnabled]&& [(UITextView *)self isEditing]&& [(UITextView *)self _isSelectionVisible])
    {
      [(UIScrollView *)self _contentOffsetAnimationDuration];
      v4 = v3;
      [(UIScrollView *)self _setContentOffsetAnimationDuration:0.1];
      [(UITextView *)self scrollSelectionToVisible:1];
      [(UIScrollView *)self _setContentOffsetAnimationDuration:v4];
    }

    else if ([(UITextView *)self _shouldScrollEnclosingScrollView])
    {
      [(UITextView *)self _scrollSelectionToVisibleInContainingScrollView];
    }

    *&self->_tvFlags &= ~1uLL;
  }
}

- (void)_layoutPlaceholder
{
  placeholderLabel = self->_placeholderLabel;
  if (placeholderLabel && ![(UIView *)placeholderLabel isHidden])
  {
    [(UIView *)self bringSubviewToFront:self->_placeholderLabel];
    textLayoutController = [(UITextView *)self textLayoutController];
    [textLayoutController extraLineFragmentRect];
    v6 = v5;
    v8 = v7;
    rect = v9;
    v11 = v10;

    font = [(UITextView *)self font];
    [font ascender];
    v14 = v8 + v13;

    [(UITextView *)self textContainerInset];
    v47 = v14 + fmax(v15, self->_textContainerInsetAdjustment.top);
    [(UITextView *)self textContainerInset];
    v17 = fmax(v16, self->_textContainerInsetAdjustment.top);
    v19 = fmax(v18, self->_textContainerInsetAdjustment.left);
    v21 = fmax(v20, self->_textContainerInsetAdjustment.bottom);
    v23 = fmax(v22, self->_textContainerInsetAdjustment.right);
    if (self->_horizontalTextContainerGeometryAdjustment >= 0.0)
    {
      horizontalTextContainerGeometryAdjustment = v19;
    }

    else
    {
      horizontalTextContainerGeometryAdjustment = self->_horizontalTextContainerGeometryAdjustment;
    }

    textContainer = [(UITextView *)self textContainer];
    [textContainer lineFragmentPadding];
    v27 = horizontalTextContainerGeometryAdjustment + v26;

    textContainer2 = [(UITextView *)self textContainer];
    [textContainer2 lineFragmentPadding];
    v30 = v23 + v29;

    v31 = v6 + v27;
    textContainer3 = [(UITextView *)self textContainer];
    [textContainer3 size];
    v34 = v33;
    v49.origin.x = v6;
    v49.origin.y = v8;
    v49.size.width = recta;
    v49.size.height = v11;
    v35 = v30 + v34 - CGRectGetMaxX(v49);

    [(UIView *)self bounds];
    v37 = v31 + v36;
    v39 = v38 - (v31 + v35);
    v41 = v40 - (v17 + v21);
    [(UILabel *)self->_placeholderLabel sizeThatFits:v39, 0.0];
    if (v41 >= v42)
    {
      v41 = v42;
    }

    [(UILabel *)self->_placeholderLabel _firstBaselineOffsetFromTop];
    v44 = self->_placeholderLabel;

    [(UILabel *)v44 setFrame:v37, v47 - v43, v39, v41];
  }
}

- (void)updateSelection
{
  interactionAssistant = [(UITextView *)self interactionAssistant];
  [interactionAssistant setNeedsSelectionDisplayUpdate];
}

- (CGRect)visibleRect
{
  [(UITextView *)self visibleRectIgnoringKeyboard];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(UITextView *)self isEditing])
  {
    v11 = +[UIKeyboardImpl activeInstance];
    [v11 subtractKeyboardFrameFromRect:self inView:{v4, v6, v8, v10}];
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (UITextPosition)beginningOfDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  beginningOfDocument = [WeakRetained beginningOfDocument];

  return beginningOfDocument;
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = UITextView;
  [(UIView *)&v7 tintColorDidChange];
  _textInputTraits = [(UITextView *)self _textInputTraits];
  _inheritedInteractionTintColor = [(UIView *)self _inheritedInteractionTintColor];
  [_textInputTraits _setColorsToMatchTintColor:_inheritedInteractionTintColor];

  if ([(UITextView *)self isEditing])
  {
    [(UITextView *)self updateSelection];
  }

  if (!self->_linkTextAttributes && ([(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager]& 1) == 0)
  {
    tintColor = [(UIView *)self tintColor];
    v6 = tintColor;
    if (tintColor)
    {
      if (([tintColor isEqual:self->_cachedTintColor] & 1) == 0)
      {
        objc_storeStrong(&self->_cachedTintColor, v6);
        [(UITextView *)self _invalidateLayoutForLinkAttributesChange:1];
      }
    }
  }
}

- (BOOL)_documentRangeEqualToViewportRange
{
  v3 = [(_UITextLayoutController *)self->_textLayoutController viewportRangeForTextContainer:self->_textContainer];
  documentRange = [(_UITextLayoutController *)self->_textLayoutController documentRange];
  if (v3)
  {
    v5 = v3;
    v6 = documentRange;
    v7 = v6;
    if (v5 == v6)
    {
      v8 = 1;
    }

    else if (v6)
    {
      v8 = [v5 isEqual:v6];
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

- (void)_updateBaselineInformationDependentOnBounds
{
  textLayoutController = [(UITextView *)self textLayoutController];
  documentRange = [textLayoutController documentRange];
  if ([documentRange isEmpty])
  {
    goto LABEL_2;
  }

  textContainers = [textLayoutController textContainers];
  v5 = [textContainers count];

  if (v5 == 1)
  {
    _wantsAutolayout = [(UIView *)self _wantsAutolayout];
    if (_wantsAutolayout)
    {
      documentRange = [(UIView *)self _layoutEngineCreateIfNecessary];
      if (!documentRange)
      {
LABEL_2:

        goto LABEL_7;
      }
    }

    else
    {
      documentRange = 0;
    }

    _UIBaselineLayoutBoundsConsultingContentSizeConstraints(self);
    firstBaselineOffsetFromTop = self->_firstBaselineOffsetFromTop;
    lastBaselineOffsetFromBottom = self->_lastBaselineOffsetFromBottom;
    [(UITextView *)self _baselineOffsetsAtSize:v9, v10];
    if (firstBaselineOffsetFromTop != v11 || lastBaselineOffsetFromBottom != v12)
    {
      self->_firstBaselineOffsetFromTop = v11;
      self->_lastBaselineOffsetFromBottom = v12;
      if (_wantsAutolayout)
      {
        [(UIView *)self _invalidateBaselineConstraints];
      }
    }

    goto LABEL_2;
  }

LABEL_7:
}

- (double)_applicableContentOutsetsFromFonts
{
  if (!self)
  {
    return 0.0;
  }

  v2 = 0.0;
  if ((self[279] & 0x6000) != 0 && ([self isScrollEnabled] & 1) == 0)
  {
    text = [self text];
    v4 = +[UILabel _tooBigChars];
    v5 = [text rangeOfCharacterFromSet:v4];

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = self[270];
      font = [self font];
      v2 = [UILabel _insetsForAttributedString:v6 withDefaultFont:font inView:self];
    }
  }

  return 0.0 - v2;
}

- (void)dealloc
{
  v8[5] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8[0] = *off_1E70ECD50;
  v8[1] = @"_UITextContainerViewSizeDidChange";
  v8[2] = *off_1E70ECAC0;
  v8[3] = @"UIKeyboardDidShowNotification";
  v8[4] = @"UIKeyboardDidChangeFrameNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:5];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  interactionAssistant = self->_interactionAssistant;
  self->_interactionAssistant = 0;

  findInteraction = self->_findInteraction;
  self->_findInteraction = 0;

  v7.receiver = self;
  v7.super_class = UITextView;
  [(UIScrollView *)&v7 dealloc];
}

- (id)_newTextContainer
{
  v3 = [off_1E70ECBB0 alloc];
  [(UIView *)self bounds];

  return [v3 initWithSize:{v4, 1.79769313e308}];
}

- (void)_updatePlaceholderVisibility
{
  placeholderLabel = self->_placeholderLabel;
  if (placeholderLabel)
  {
    isHidden = [(UIView *)placeholderLabel isHidden];
    text = [(UITextView *)self text];
    -[UIView setHidden:](self->_placeholderLabel, "setHidden:", [text length] != 0);

    if (isHidden && ![(UIView *)self->_placeholderLabel isHidden])
    {

      [(UITextView *)self _setNeedsTextLayout];
    }
  }
}

- (NSAttributedString)attributedText
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_inputController);
    filteredAttributedText = [v4 filteredAttributedText];
  }

  else
  {
    filteredAttributedText = [(NSTextStorage *)self->_textStorage copy];
  }

  return filteredAttributedText;
}

- (NSDictionary)typingAttributes
{
  [(UITextView *)self _syncTypingAttributesToTextContainerAttributesForExtraLineFragment];
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  typingAttributes = [WeakRetained typingAttributes];

  return typingAttributes;
}

- (void)invalidateIntrinsicContentSize
{
  [(_UITextSizeCache *)self->_intrinsicSizeCache removeAllSizes];
  v3 = (*&self->super.super._viewFlags & 0x2000000000000) == 0;

  [(UIView *)self _invalidateIntrinsicContentSizeNeedingLayout:v3];
}

- (void)_updateTextFormattingController
{
  if ([(UIView *)self isFirstResponder])
  {
    v3 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];

    if (v3)
    {
      v4 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];
      _descriptorForTextFormattingOptions = [(UITextView *)self _descriptorForTextFormattingOptions];
      [v4 setFormattingDescriptor:_descriptorForTextFormattingOptions];
    }
  }

  if (self->_textFormattingViewController)
  {
    _descriptorForTextFormattingOptions2 = [(UITextView *)self _descriptorForTextFormattingOptions];
    [(UITextFormattingViewController *)self->_textFormattingViewController setFormattingDescriptor:_descriptorForTextFormattingOptions2];

    [(UITextView *)self _updateTextFormattingControllerPresentationSource];
  }
}

- (BOOL)_delegatesAllowingLinkInteraction
{
  if ([(UITextView *)self _delegatesAllowingTextItemPrimaryActionInteraction])
  {
    return 1;
  }

  return [(UITextView *)self _delegatesAllowingTextItemMenuInteraction];
}

- (BOOL)_delegatesAllowingTextItemPrimaryActionInteraction
{
  delegate = [(UIScrollView *)self delegate];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)_scrollToCaretIfNeeded
{
  interactionAssistant = [(UITextView *)self interactionAssistant];
  activeSelection = [interactionAssistant activeSelection];
  selectedRange = [activeSelection selectedRange];
  _isCaret = [selectedRange _isCaret];

  if (_isCaret)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__UITextView__scrollToCaretIfNeeded__block_invoke;
    aBlock[3] = &unk_1E70F7FB8;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    if ([(UIScrollView *)self isScrollEnabled])
    {
      if ([(UITextView *)self isEditing])
      {
        v8 = v7[2](v7);
        v10 = v9;
        v12 = v11;
        v14 = v13;
        [(UIView *)self bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        [(UIScrollView *)self _effectiveContentInset];
        v24 = v18 + v23;
        v27 = v20 - (v25 + v26);
        v40.size.height = v22 - (v23 + v28);
        v40.origin.x = v16 + v25;
        v40.origin.y = v24;
        v40.size.width = v27;
        v42.origin.x = v8;
        v42.origin.y = v10;
        v42.size.width = v12;
        v42.size.height = v14;
        if (!CGRectContainsRect(v40, v42))
        {
          [(UIScrollView *)self _contentOffsetAnimationDuration];
          v30 = v29;
          [(UIScrollView *)self _setContentOffsetAnimationDuration:0.1];
          [(UIScrollView *)self scrollRectToVisible:+[UIView animated:"areAnimationsEnabled"], v8, v10, v12, v14];
          [(UIScrollView *)self _setContentOffsetAnimationDuration:v30];
        }
      }

      else if ([(UITextView *)self _shouldScrollEnclosingScrollView])
      {
        v31 = v7[2](v7);
        v33 = v32;
        v35 = v34;
        v37 = v36;
        _scroller = [(UIView *)self _scroller];
        [_scroller bounds];
        [(UIView *)self convertRect:_scroller fromView:?];
        v43.origin.x = v31;
        v43.origin.y = v33;
        v43.size.width = v35;
        v43.size.height = v37;
        if (!CGRectContainsRect(v41, v43))
        {
          [(UITextView *)self _scrollRect:0 toVisibleInContainingScrollView:v31, v33, v35, v37];
        }
      }
    }
  }
}

- (id)_inputController
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);

  return WeakRetained;
}

- (CGPoint)textContainerOrigin
{
  [(_UITextContainerView *)self->_containerView textContainerOrigin];
  result.y = v3;
  result.x = v2;
  return result;
}

- (UITextPosition)endOfDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  endOfDocument = [WeakRetained endOfDocument];

  return endOfDocument;
}

- (void)_prepareForFirstIntrinsicContentSizeCalculation
{
  self->_preferredMaxLayoutWidth = 0.0;
  v2.receiver = self;
  v2.super_class = UITextView;
  [(UIView *)&v2 _prepareForFirstIntrinsicContentSizeCalculation];
}

- (double)_currentPreferredMaxLayoutWidth
{
  if ((*&self->_tvFlags & 8) != 0)
  {
    return self->_preferredMaxLayoutWidth;
  }

  result = 0.0;
  if ((*(&self->super.super._viewFlags + 6) & 2) == 0)
  {
    return self->_preferredMaxLayoutWidth;
  }

  return result;
}

- (id)_internalTextLayoutController
{
  textLayoutController = [(UITextView *)self textLayoutController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    textLayoutController = 0;
  }

  return textLayoutController;
}

- (id)_currentDefaultAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  typingAttributes = [WeakRetained typingAttributes];
  v4 = [typingAttributes mutableCopy];

  v5 = *off_1E70EC920;
  v6 = [v4 objectForKey:*off_1E70EC920];

  if (!v6)
  {
    _defaultTextColor = [objc_opt_class() _defaultTextColor];
    [v4 setObject:_defaultTextColor forKey:v5];
  }

  return v4;
}

- (void)_setNeedsFrameUpdateForCustomRendering
{
  canvasView = [(_UITextContainerView *)self->_containerView canvasView];
  [canvasView setNeedsLayout];

  delegate = [(UIScrollView *)self delegate];
  if ((*(&self->_tvFlags + 3) & 2) != 0)
  {
    v5 = delegate;
    [delegate _textViewDidChangeCustomRenderBounds:self];
    delegate = v5;
  }
}

- (void)_updateTextEffectsConfigurationIfNeeded
{
  styleEffectConfiguration = [(_UITextLayoutController *)self->_textLayoutController styleEffectConfiguration];
  if (styleEffectConfiguration)
  {
    v11 = styleEffectConfiguration;
    traitCollection = [(UIView *)self traitCollection];
    _styleEffectAppearanceName = [(UITraitCollection *)traitCollection _styleEffectAppearanceName];

    appearanceName = [v11 appearanceName];
    v7 = _styleEffectAppearanceName;
    v8 = appearanceName;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (v7 && v8)
      {
        v10 = [v7 isEqual:v8];

        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      v9 = [v11 copy];
      [v9 setAppearanceName:v7];
      [(_UITextLayoutController *)self->_textLayoutController setStyleEffectConfiguration:v9];
      [(UITextView *)self setNeedsDisplay];
    }

LABEL_11:
    styleEffectConfiguration = v11;
  }
}

- (UIColor)selectionHighlightColor
{
  textInputTraits = [(UITextView *)self textInputTraits];
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

- (BOOL)hasText
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  hasText = [WeakRetained hasText];

  return hasText;
}

- (BOOL)forceEnableDictation
{
  _textInputTraits = [(UITextView *)self _textInputTraits];
  forceEnableDictation = [_textInputTraits forceEnableDictation];

  return forceEnableDictation;
}

- (BOOL)forceDisableDictation
{
  _textInputTraits = [(UITextView *)self _textInputTraits];
  forceDisableDictation = [_textInputTraits forceDisableDictation];

  return forceDisableDictation;
}

- (BOOL)_supportsTextKit2TextLists
{
  if (([(_UITextLayoutController *)self->_textLayoutController includesTextListMarkers]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    if (qword_1ED4998C8 != -1)
    {
      dispatch_once(&qword_1ED4998C8, &__block_literal_global_2369);
    }

    v2 = _MergedGlobals_65 ^ 1;
  }

  return v2 & 1;
}

void __51__UITextView_TextLists___supportsTextKit2TextLists__block_invoke()
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    _MergedGlobals_65 = 1;
  }

  v0 = _UIMainBundleIdentifier();
  if ([v0 isEqualToString:@"com.apple.mobilenotes"])
  {
    _MergedGlobals_65 = 1;
  }
}

- (id)_writingToolsCoordinator
{
  if ([(UIView *)self _canHaveWritingToolsCoordinator])
  {
    _existingWritingToolsCoordinator = [(UITextView *)self _existingWritingToolsCoordinator];
    if (!_existingWritingToolsCoordinator)
    {
      _existingWritingToolsCoordinator = [[UIWritingToolsCoordinator alloc] initWithDelegate:self];
      _textInputTraits = [(UITextView *)self _textInputTraits];
      allowedWritingToolsResultOptions = [_textInputTraits allowedWritingToolsResultOptions];
      if (allowedWritingToolsResultOptions)
      {
        v6 = allowedWritingToolsResultOptions;
      }

      else
      {
        v6 = 2;
      }

      [(UIWritingToolsCoordinator *)_existingWritingToolsCoordinator setPreferredResultOptions:v6];
      writingToolsBehavior = [_textInputTraits writingToolsBehavior];
      textLayoutManager = [(UITextView *)self textLayoutManager];
      if (textLayoutManager)
      {
      }

      else if (writingToolsBehavior <= 2)
      {
        writingToolsBehavior = 2;
      }

      [(UIWritingToolsCoordinator *)_existingWritingToolsCoordinator setPreferredBehavior:writingToolsBehavior];
      selectionContainerView = [(UITextView *)self selectionContainerView];
      [(UIWritingToolsCoordinator *)_existingWritingToolsCoordinator setDecorationContainerView:selectionContainerView];

      [(UIWritingToolsCoordinator *)_existingWritingToolsCoordinator setIncludesTextListMarkers:[(UITextView *)self _supportsTextKit2TextLists]^ 1];
      [(UIView *)self addInteraction:_existingWritingToolsCoordinator];
    }
  }

  else
  {
    _existingWritingToolsCoordinator = 0;
  }

  return _existingWritingToolsCoordinator;
}

- (id)_existingWritingToolsCoordinator
{
  v4.receiver = self;
  v4.super_class = UITextView;
  _writingToolsCoordinator = [(UIView *)&v4 _writingToolsCoordinator];

  return _writingToolsCoordinator;
}

- (BOOL)_shouldCollectAsKeyView
{
  isUserInteractionEnabled = [(UIView *)self isUserInteractionEnabled];
  if (isUserInteractionEnabled)
  {

    LOBYTE(isUserInteractionEnabled) = [(UITextView *)self isEditable];
  }

  return isUserInteractionEnabled;
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
    v5.super_class = UITextView;
    inputAccessoryView = [(UIResponder *)&v5 inputAccessoryView];
  }

  return inputAccessoryView;
}

- (BOOL)becomeFirstResponder
{
  if ([(UIView *)self isFirstResponder])
  {
    LOBYTE(becomeFirstResponder) = 1;
    return becomeFirstResponder;
  }

  if (+[UIResponder _currentChangeIntent](UIResponder, "_currentChangeIntent") == 1 && [(UITextView *)self _shouldBecomeEditableUponFocus]|| +[UIResponder _currentChangeIntent]== 2 && [(UITextView *)self _shouldBecomeEditableUponBecomingTargetOfKeyboardEventDeferringEnvironment])
  {
    [(UITextView *)self setEditable:1];
  }

  keyboardSceneDelegate = [(UIView *)self keyboardSceneDelegate];
  if (![(UIView *)self isFirstResponder])
  {
    if ([keyboardSceneDelegate isOnScreen])
    {
      goto LABEL_12;
    }

LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  responder = [keyboardSceneDelegate responder];
  v6 = responder;
  if (responder == self)
  {
    isOnScreen = [keyboardSceneDelegate isOnScreen];

    if (isOnScreen)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_12:
  [keyboardSceneDelegate _beginIgnoringReloadInputViews];
  v7 = 1;
LABEL_15:
  v15.receiver = self;
  v15.super_class = UITextView;
  becomeFirstResponder = [(UIView *)&v15 becomeFirstResponder];
  isEditable = [(UITextView *)self isEditable];
  if (becomeFirstResponder)
  {
    v10 = isEditable;
    if (isEditable)
    {
      [(UITextView *)self _resetDataDetectorsResults];
      _textInputTraits = [(UITextView *)self _textInputTraits];
      _inheritedInteractionTintColor = [(UIView *)self _inheritedInteractionTintColor];
      [_textInputTraits _setColorsToMatchTintColor:_inheritedInteractionTintColor];

      if ((v7 & 1) == 0)
      {
        [(UITextView *)self _notifyDidBeginEditing];
      }

      canvasView = [(_UITextContainerView *)self->_containerView canvasView];
      [canvasView isEditingDidChange];

      if ([(UITextView *)self shouldAutoscrollAboveBottom])
      {
        [(UITextView *)self updateAutoscrollAboveBottom];
      }
    }

    [(UITextView *)self _updateSelectionGestures];
    if (![(UITextView *)self isTextDropActive]&& (*&self->_tvFlags & 0x10) == 0)
    {
      [(UITextInteractionAssistant *)self->_interactionAssistant setSelectionDisplayVisible:1];
      [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
      [(UITextInteractionAssistant *)self->_interactionAssistant activateSelection];
      self->_forceSelectionDisplayForTextFormatting = 0;
    }

    if ([(UIScrollView *)self isProgrammaticScrollEnabled])
    {
      *&self->_tvFlags |= 1uLL;
    }

    if (v7)
    {
      [keyboardSceneDelegate _endIgnoringReloadInputViews];
      [(UIResponder *)self reloadInputViews];
      if (v10)
      {
        [(UITextView *)self _notifyDidBeginEditing];
      }
    }
  }

  else if ((v7 & 1) != 0 && [keyboardSceneDelegate _endIgnoringReloadInputViews])
  {
    [keyboardSceneDelegate forceReloadInputViews];
  }

  return becomeFirstResponder;
}

- (void)_notifyDidBeginEditing
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained textViewDidBeginEditing:self];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UITextViewTextDidBeginEditingNotification" object:self];
}

- (Class)_intelligenceBaseClass
{
  sub_188A34624(0, &qword_1EA93F8C0);

  return swift_getObjCClassFromMetadata();
}

- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector
{
  collectorCopy = collector;
  selfCopy = self;
  _sSo10UITextViewC5UIKitE27_intelligenceCollectContent2in9collectorySo6CGRectV_21UIIntelligenceSupport0J16ElementCollectorCtF_0(collectorCopy);
}

- (id)largeContentTitle
{
  _largeContentStoredProperties = [(UIView *)self _largeContentStoredProperties];
  didSetLargeContentTitle = [_largeContentStoredProperties didSetLargeContentTitle];

  if (didSetLargeContentTitle)
  {
    v8.receiver = self;
    v8.super_class = UITextView;
    largeContentTitle = [(UIView *)&v8 largeContentTitle];
  }

  else
  {
    attributedText = [(UITextView *)self attributedText];
    largeContentTitle = [attributedText string];
  }

  return largeContentTitle;
}

- (void)insertAnimatedTextPlaceholder
{
  endOfDocument = [(UITextView *)self endOfDocument];
  [(UITextView *)self insertAnimatedTextPlaceholderAtLocation:endOfDocument numLines:0.0];
}

- (void)insertAnimatedTextPlaceholderAtLocation:(id)location numLines:(double)lines completion:(id)completion
{
  completionCopy = completion;
  locationCopy = location;
  [(UITextView *)self removeAnimatedTextPlaceholders];
  _animatedPlaceholderSupport = [(UITextView *)self _animatedPlaceholderSupport];
  v10 = [_animatedPlaceholderSupport insertLoadingPlaceholderAtLocation:locationCopy lines:completionCopy completion:lines];

  activeAnimatedPlaceholder = self->_activeAnimatedPlaceholder;
  self->_activeAnimatedPlaceholder = v10;
}

- (BOOL)replaceAnimatedTextPlaceholderWith:(id)with completion:(id)completion
{
  activeAnimatedPlaceholder = self->_activeAnimatedPlaceholder;
  if (activeAnimatedPlaceholder)
  {
    completionCopy = completion;
    withCopy = with;
    _animatedPlaceholderSupport = [(UITextView *)self _animatedPlaceholderSupport];
    [_animatedPlaceholderSupport replacePlaceholder:self->_activeAnimatedPlaceholder withText:withCopy completion:completionCopy];
  }

  return activeAnimatedPlaceholder != 0;
}

- (void)removeAnimatedTextPlaceholders
{
  if (self->_activeAnimatedPlaceholder)
  {
    _animatedPlaceholderSupport = [(UITextView *)self _animatedPlaceholderSupport];
    [_animatedPlaceholderSupport removePlaceholder:self->_activeAnimatedPlaceholder];

    activeAnimatedPlaceholder = self->_activeAnimatedPlaceholder;
    self->_activeAnimatedPlaceholder = 0;
  }
}

- (void)_insertAttributedText:(id)text withAnimation:(int64_t)animation completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  selectedTextRange = [(UITextView *)self selectedTextRange];
  if (!selectedTextRange)
  {
    endOfDocument = [(UITextView *)self endOfDocument];
    endOfDocument2 = [(UITextView *)self endOfDocument];
    selectedTextRange = [(UITextView *)self textRangeFromPosition:endOfDocument toPosition:endOfDocument2];
  }

  [(UITextView *)self _replaceRange:selectedTextRange withAttributedText:textCopy usingAnimation:animation completion:completionCopy];
}

- (void)_replaceRange:(id)range withAttributedText:(id)text usingAnimation:(int64_t)animation completion:(id)completion
{
  rangeCopy = range;
  textCopy = text;
  completionCopy = completion;
  if (animation == 1)
  {
    _animatedPlaceholderSupport = [(UITextView *)self _animatedPlaceholderSupport];
    [_animatedPlaceholderSupport replaceRangeUsingReplacementEffect:rangeCopy withAttributedText:textCopy completion:completionCopy];
  }

  else if (animation == 2)
  {
    [(UITextView *)self _replaceRangeUsingColorWipe:rangeCopy withAttributedText:textCopy completion:completionCopy];
  }
}

- (void)_replaceRangeUsingColorWipe:(id)wipe withAttributedText:(id)text completion:(id)completion
{
  v38[1] = *MEMORY[0x1E69E9840];
  wipeCopy = wipe;
  textCopy = text;
  completionCopy = completion;
  v11 = [(UITextView *)self _replaceRange:wipeCopy withAttributedText:textCopy updatingSelection:1];
  [(UITextView *)self _boundingRectForRange:v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  objc_initWeak(&location, self);
  v20 = [_UIIntelligentTextInsertionAnimatedColor alloc];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __91__UITextView_AnimatedInsertion___replaceRangeUsingColorWipe_withAttributedText_completion___block_invoke;
  v34[3] = &unk_1E7122758;
  objc_copyWeak(&v35, &location);
  v21 = [(_UIIntelligentTextInsertionAnimatedColor *)v20 initWithBounds:v34 invalidationHandler:v13, v15, v17, v19];
  typingAttributes = [(UITextView *)self typingAttributes];
  textColor = [(UITextView *)self textColor];
  v24 = ResolvedReplacementColorForTypingAttributes(typingAttributes, textColor);
  [(_UIIntelligentTextInsertionAnimatedColor *)v21 setResolvedColor:v24];

  v37 = *off_1E70EC920;
  v38[0] = v21;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  textLayoutController = [(UITextView *)self textLayoutController];
  [textLayoutController addRenderingAttributes:v25 forRange:v11];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __91__UITextView_AnimatedInsertion___replaceRangeUsingColorWipe_withAttributedText_completion___block_invoke_2;
  v30[3] = &unk_1E70F5F08;
  v30[4] = self;
  v27 = v25;
  v31 = v27;
  v28 = v11;
  v32 = v28;
  v29 = completionCopy;
  v33 = v29;
  PerformStandardAnimatedColorInsertionAnimation(v21, v30);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

void __91__UITextView_AnimatedInsertion___replaceRangeUsingColorWipe_withAttributedText_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsDisplay];
}

uint64_t __91__UITextView_AnimatedInsertion___replaceRangeUsingColorWipe_withAttributedText_completion___block_invoke_2(uint64_t a1)
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

+ (BOOL)_resolvesNaturalAlignmentWithBaseWritingDirection
{
  if (_resolvesNaturalAlignmentWithBaseWritingDirection_onceToken != -1)
  {
    dispatch_once(&_resolvesNaturalAlignmentWithBaseWritingDirection_onceToken, &__block_literal_global_629);
  }

  return _resolvesNaturalAlignmentWithBaseWritingDirection__resolvesNaturalAlignmentWithBaseWritingDirection;
}

uint64_t __63__UITextView__resolvesNaturalAlignmentWithBaseWritingDirection__block_invoke()
{
  result = dyld_program_sdk_at_least();
  _resolvesNaturalAlignmentWithBaseWritingDirection__resolvesNaturalAlignmentWithBaseWritingDirection = result;
  return result;
}

- (id)_activityItemsConfigurationAtLocation:(CGPoint)location
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [UIActivityItemsConfiguration alloc];
  selectedText = [(UITextView *)self selectedText];
  v9[0] = selectedText;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [(UIActivityItemsConfiguration *)v4 initWithObjects:v6];

  return v7;
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  delegate = [(UIScrollView *)self delegate];

  if (delegate != v4)
  {
    v6 = objc_opt_respondsToSelector();
    v7 = 0x2000000;
    if ((v6 & 1) == 0)
    {
      v7 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFDFFFFFFLL | v7);
    v8 = objc_opt_respondsToSelector();
    v9 = 0x8000000;
    if ((v8 & 1) == 0)
    {
      v9 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFF7FFFFFFLL | v9);
    v10 = objc_opt_respondsToSelector();
    v11 = 0x10000000;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFEFFFFFFFLL | v11);
    v12 = objc_opt_respondsToSelector();
    v13 = 0x20000000;
    if ((v12 & 1) == 0)
    {
      v13 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFDFFFFFFFLL | v13);
    v14 = objc_opt_respondsToSelector();
    v15 = 0x40000000;
    if ((v14 & 1) == 0)
    {
      v15 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFBFFFFFFFLL | v15);
    v16 = objc_opt_respondsToSelector();
    v17 = 0x80000000;
    if ((v16 & 1) == 0)
    {
      v17 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFF7FFFFFFFLL | v17);
    v18 = objc_opt_respondsToSelector();
    v19 = 0x100000000;
    if ((v18 & 1) == 0)
    {
      v19 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFEFFFFFFFFLL | v19);
    v20 = objc_opt_respondsToSelector();
    v21 = 0x200000000;
    if ((v20 & 1) == 0)
    {
      v21 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFDFFFFFFFFLL | v21);
    v22 = objc_opt_respondsToSelector();
    v23 = 0x4000000000;
    if ((v22 & 1) == 0)
    {
      v23 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFBFFFFFFFFFLL | v23);
    v24 = objc_opt_respondsToSelector();
    v25 = 0x8000000000;
    if ((v24 & 1) == 0)
    {
      v25 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFF7FFFFFFFFFLL | v25);
  }

  v26.receiver = self;
  v26.super_class = UITextView;
  [(UIScrollView *)&v26 setDelegate:v4];
}

- (id)_newContainerViewWithFrame:(CGRect)frame textContainer:(id)container textLayoutController:(id)controller
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  controllerCopy = controller;
  containerCopy = container;
  height = [[_UITextContainerView alloc] initWithFrame:controllerCopy textLayoutController:containerCopy textContainer:self delegate:x, y, width, height];

  [(_UITextContainerView *)height setVerticallyResizable:[(UIScrollView *)self isScrollEnabled]];
  [(_UITextContainerView *)height setMaxSize:1.79769313e308, 1.79769313e308];
  if (_UITextViewAllowSelectionContainerInTextLayoutCanvas())
  {
    [(_UITextContainerView *)height setTextEmphasisBackgroundView:self->_textEmphasisBackgroundView withTextView:self];
  }

  return height;
}

- (id)_newTextKit1LayoutControllerWithTextContainer:(id)container layoutManager:(id)manager textStorage:(id)storage
{
  storageCopy = storage;
  managerCopy = manager;
  containerCopy = container;
  v11 = [[_UITextKit1LayoutController alloc] initWithTextView:containerCopy textContainer:managerCopy layoutManager:storageCopy textStorage:?];

  originalLayoutManager = [(_UITextKit1LayoutController *)v11 originalLayoutManager];
  [originalLayoutManager setAllowsNonContiguousLayout:1];

  return v11;
}

- (void)_assignTextStorageCheckingForOverrides:(uint64_t)overrides
{
  v7 = a2;
  if (overrides)
  {
    objc_storeStrong((overrides + 2160), a2);
    *(overrides + 2232) &= ~0x400000000uLL;
    if (([*(overrides + 2160) isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      v4 = objc_opt_class();
      MethodImplementation = class_getMethodImplementation(v4, sel_replaceCharactersInRange_withAttributedString_);
      v6 = objc_opt_class();
      *(overrides + 2232) = *(overrides + 2232) & 0xFFFFFFFBFFFFFFFFLL | ((class_getMethodImplementation(v6, sel_replaceCharactersInRange_withAttributedString_) != MethodImplementation) << 34);
    }
  }
}

- (void)_configureWithTextContainer:(id)container layoutManager:(id)manager textLayoutManagerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  obj = container;
  managerCopy = manager;
  _newTextContainer = obj;
  v11 = managerCopy;
  if (!obj)
  {
    _newTextContainer = [(UITextView *)self _newTextContainer];
LABEL_7:
    obj = _newTextContainer;
    if (self->_textStorage)
    {
      if (enabledCopy)
      {
LABEL_9:
        v16 = objc_alloc_init(off_1E70ECBC0);
        [v16 setTextStorage:self->_textStorage];
        v17 = [[_UITextKit2LayoutController alloc] initWithTextView:self textContentStorage:v16 textContainer:obj];
        textLayoutController = self->_textLayoutController;
        self->_textLayoutController = v17;

        firstTextContainer = [(_UITextLayoutController *)self->_textLayoutController firstTextContainer];
        textContainer = self->_textContainer;
        self->_textContainer = firstTextContainer;

        [(UITextView *)self _createTextEmphasisBackgroundViewIfNeeded];
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v21 = objc_alloc_init(off_1E70ECC00);
      [(UITextView *)self _assignTextStorageCheckingForOverrides:v21];

      _newTextContainer = obj;
      if (enabledCopy)
      {
        goto LABEL_9;
      }
    }

    objc_storeStrong(&self->_textContainer, _newTextContainer);
    v16 = [(UITextView *)self _newTextKit1LayoutControllerWithTextContainer:self->_textContainer layoutManager:v11 textStorage:self->_textStorage];
    objc_storeStrong(&self->_textLayoutController, v16);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = *off_1E70ECD50;
    layoutManager = [v16 layoutManager];
    [defaultCenter addObserver:self selector:sel__observedTextViewDidChange_ name:v23 object:layoutManager];

    textEmphasisBackgroundView = self->_textEmphasisBackgroundView;
    if (textEmphasisBackgroundView)
    {
      [(UIView *)textEmphasisBackgroundView removeFromSuperview];
      v26 = self->_textEmphasisBackgroundView;
      self->_textEmphasisBackgroundView = 0;
    }

    goto LABEL_13;
  }

  if (self->_textLayoutController)
  {
    goto LABEL_7;
  }

  v12 = [_UITextLayoutControllerBase layoutControllerWithTextView:obj textContainer:?];
  v13 = self->_textLayoutController;
  self->_textLayoutController = v12;

  objc_storeStrong(&self->_textContainer, container);
  textStorage = [(_UITextLayoutController *)self->_textLayoutController textStorage];
  [(UITextView *)self _assignTextStorageCheckingForOverrides:textStorage];

  if (enabledCopy)
  {
    textLayoutManager = [obj textLayoutManager];

    if (textLayoutManager)
    {
      [(UITextView *)self _createTextEmphasisBackgroundViewIfNeeded];
    }
  }

LABEL_14:
  containerView = self->_containerView;
  if (containerView)
  {
    if (enabledCopy && (v28 = _UITextViewAllowSelectionContainerInTextLayoutCanvas(), containerView = self->_containerView, v28))
    {
      [(_UITextContainerView *)containerView setSelectionContainerView:self->_selectionContainerView];
      [(UITextView *)self _createTextEmphasisBackgroundViewIfNeeded];
      v29 = self->_containerView;
      v30 = self->_textEmphasisBackgroundView;
    }

    else
    {
      [(_UITextContainerView *)containerView setSelectionContainerView:0];
      v29 = self->_containerView;
      v30 = 0;
    }

    [(_UITextContainerView *)v29 setTextEmphasisBackgroundView:v30 withTextView:self];
  }

  v31 = objc_opt_self();
  [(NSTextStorage *)self->_textStorage _setIntentResolver:v31];
}

- (void)_installContainerViewAtIndex:(unint64_t)index
{
  [(_UITextLayoutController *)self->_textLayoutController usedRectForTextContainer:self->_textContainer];
  v6 = v5;
  if (dyld_program_sdk_at_least())
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    v9 = 8.0;
    if (userInterfaceIdiom == 6)
    {
      v9 = 2.0;
    }

    v10 = ceil(v6 + v9);
  }

  else
  {
    v10 = ceil(v6 + 8.0);
  }

  [(UIView *)self bounds];
  v12 = v11;
  [(UIView *)self bounds];
  v14 = [(UITextView *)self _newContainerViewWithFrame:self->_textContainer textContainer:self->_textLayoutController textLayoutController:0.0, 0.0, v12, fmax(v10, v13)];
  containerView = self->_containerView;
  self->_containerView = v14;

  v16 = +[UIColor clearColor];
  [(_UITextContainerView *)self->_containerView setBackgroundColor:v16];

  v17 = *(MEMORY[0x1E695F050] + 16);
  self->_frameOfTrailingWhitespace.origin = *MEMORY[0x1E695F050];
  self->_frameOfTrailingWhitespace.size = v17;
  _contentView = [(UITextView *)self _contentView];
  [_contentView insertSubview:self->_containerView atIndex:index];
}

- (BOOL)_reconfigureWithLayoutManager:(id)manager triggeredByLayoutManagerAccess:(BOOL)access triggeringSelector:(SEL)selector
{
  accessCopy = access;
  managerCopy = manager;
  textLayoutController = self->_textLayoutController;
  if (!textLayoutController || ([(_UITextLayoutController *)textLayoutController canAccessLayoutManager]& 1) != 0 || (tvFlags = self->_tvFlags, (*&tvFlags & 0x1000) != 0))
  {
    v12 = 0;
  }

  else
  {
    self->_tvFlags = (*&tvFlags | 0x1000);
    _existingWritingToolsCoordinator = [(UITextView *)self _existingWritingToolsCoordinator];
    v11 = _existingWritingToolsCoordinator;
    if (_existingWritingToolsCoordinator && [_existingWritingToolsCoordinator behavior] != -1)
    {
      [v11 setPreferredBehavior:2];
    }

    _UITextViewEnablingCompatibilityMode(self, accessCopy);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __94__UITextView__reconfigureWithLayoutManager_triggeredByLayoutManagerAccess_triggeringSelector___block_invoke;
    v14[3] = &unk_1E70F35B8;
    v14[4] = self;
    v15 = managerCopy;
    [UIView performWithoutAnimation:v14];

    v12 = 1;
  }

  return v12;
}

void __94__UITextView__reconfigureWithLayoutManager_triggeredByLayoutManagerAccess_triggeringSelector___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textContainer];
  v3 = [(UITextView *)*(a1 + 32) _adjustedTextContainerInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 removeObserver:*(a1 + 32) name:@"_UITextContainerViewSizeDidChange" object:*(*(a1 + 32) + 2176)];
  v11 = [*(a1 + 32) subviews];
  v12 = [v11 indexOfObject:*(*(a1 + 32) + 2176)];

  [*(*(a1 + 32) + 2176) removeFromSuperview];
  [*(a1 + 32) _configureWithTextContainer:v2 layoutManager:*(a1 + 40) textLayoutManagerEnabled:0];
  [*(a1 + 32) _installContainerViewAtIndex:v12];
  [*(*(a1 + 32) + 2176) setTextContainerInset:{v3, v5, v7, v9}];
  [(UITextView *)*(a1 + 32) _placeSelectionContainerView];
  [*(*(a1 + 32) + 2160) setEnsuresFixingAttributes:1];
  [*(*(a1 + 32) + 2160) fixAttributesInRange:{0, objc_msgSend(*(*(a1 + 32) + 2160), "length")}];
  [*(a1 + 32) _updateContentSize];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 2200));

  if (WeakRetained)
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 2792);
    v16 = objc_loadWeakRetained((v14 + 2200));
    [v16 setTextLayoutController:v15];
  }

  [*(a1 + 32) _updateContainerTileAndSizingFlags];
  if (([*(a1 + 32) isScrollEnabled] & 1) == 0)
  {
    [*(a1 + 32) invalidateIntrinsicContentSize];
  }

  [v10 addObserver:*(a1 + 32) selector:sel__textContainerSizeDidChange_ name:@"_UITextContainerViewSizeDidChange" object:*(*(a1 + 32) + 2176)];
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];

  *(*(a1 + 32) + 2232) &= ~0x1000uLL;
}

- (void)_setEncodedTextKitFlavor:(int64_t)flavor
{
  if (self->_textKitCodingFlavor != flavor)
  {
    self->_textKitCodingFlavor = flavor;
  }
}

- (void)_commonInitWithTextContainer:(id)container decoding:(BOOL)decoding editable:(BOOL)editable selectable:(BOOL)selectable draggable:(BOOL)draggable textLayoutManagerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  draggableCopy = draggable;
  selectableCopy = selectable;
  editableCopy = editable;
  decodingCopy = decoding;
  containerCopy = container;
  containerCopy2 = container;
  v16 = +[_UITextViewVisualStyle inferredVisualStyle];
  visualStyle = self->_visualStyle;
  self->_visualStyle = v16;

  selfCopy = self;
  if (qword_1ED4998D8 != -1)
  {
    dispatch_once(&qword_1ED4998D8, &__block_literal_global_2382);
  }

  if ((dyld_program_sdk_at_least() & 1) == 0 && qword_1ED4998E8 != -1)
  {
    dispatch_once(&qword_1ED4998E8, &__block_literal_global_2392);
  }

  if (byte_1ED499891 == 1)
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [qword_1ED4998D0 objectForKeyedSubscript:qword_1ED4998E0];
    v62 = containerCopy;
    v21 = editableCopy;
    v22 = decodingCopy;
    v23 = draggableCopy;
    v24 = containerCopy2;
    v26 = v25 = selectableCopy;
    v27 = [v20 isEqualToString:v26];

    selectableCopy = v25;
    containerCopy2 = v24;
    draggableCopy = v23;
    decodingCopy = v22;
    editableCopy = v21;
    containerCopy = v62;

    enabledCopy = enabledCopy & ~v27;
  }

  v28 = selfCopy;
  if ((dyld_program_sdk_at_least() & 1) == 0 && qword_1ED499900 != -1)
  {
    dispatch_once(&qword_1ED499900, &__block_literal_global_2404);
  }

  if (byte_1ED499892 == 1 && (objc_opt_isKindOfClass() & 1) != 0)
  {

    if (containerCopy2 && !v28->_textLayoutController)
    {
      v29 = [_UITextLayoutControllerBase layoutControllerWithTextView:v28 textContainer:containerCopy2];
      textLayoutController = v28->_textLayoutController;
      v28->_textLayoutController = v29;

      objc_storeStrong(&v28->_textContainer, containerCopy);
      textStorage = [(_UITextLayoutController *)v28->_textLayoutController textStorage];
      [(UITextView *)v28 _assignTextStorageCheckingForOverrides:textStorage];
    }
  }

  else
  {

    [(UITextView *)v28 _setUpWithTextContainer:containerCopy2 textLayoutManagerEnabled:enabledCopy];
  }

  [(UITextView *)v28 _setupDefaultStyleEffectConfiguration];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v28 selector:sel__textStorageDidProcessEditing_ name:*off_1E70ECAC0 object:v28->_textStorage];
  [defaultCenter addObserver:v28 selector:sel__keyboardDidShow_ name:@"UIKeyboardDidShowNotification" object:0];
  [(UITextView *)v28 _installContainerViewAtIndex:0];
  [(UIView *)v28 setClipsToBounds:1];
  v33 = objc_opt_new();
  layoutView = v28->_layoutView;
  v28->_layoutView = v33;

  [(_UITextLayoutView *)v28->_layoutView setDelegate:v28];
  [(UIView *)v28 insertSubview:v28->_layoutView atIndex:0];
  v35 = 8.0;
  if (dyld_program_sdk_at_least())
  {
    traitCollection = [(UIView *)v28 traitCollection];
    if ([traitCollection userInterfaceIdiom] == 6)
    {
      v35 = 2.0;
    }

    else
    {
      v35 = 8.0;
    }
  }

  [(UITextView *)v28 setMarginTop:v35];
  [(UIView *)v28 bounds];
  v38 = v37;
  [(UIView *)v28 bounds];
  [(UIScrollView *)v28 setContentSize:v38, v39 - v35];
  v40 = [[_UITextViewContentPadding alloc] initWithDelegate:v28];
  topContentPadding = v28->_topContentPadding;
  v28->_topContentPadding = v40;

  v42 = [[_UITextViewContentPadding alloc] initWithDelegate:v28];
  bottomContentPadding = v28->_bottomContentPadding;
  v28->_bottomContentPadding = v42;

  if (decodingCopy)
  {
    WeakRetained = objc_loadWeakRetained(&v28->_inputController);

    if (!WeakRetained)
    {
      textInputController = [(_UITextLayoutControllerBase *)v28->_textLayoutController textInputController];
      objc_storeWeak(&v28->_inputController, textInputController);

      v46 = objc_loadWeakRetained(&v28->_inputController);
      [v46 setDelegate:v28];
    }
  }

  v28->_defaultTextPreviewOptions = 0;
  v47 = [[_UITextStorageDraggableGeometry alloc] initWithView:v28 textStorage:v28->_textStorage];
  geometry = v28->_geometry;
  v28->_geometry = v47;

  if (draggableCopy)
  {
    v49 = [UITextDragDropSupport installTextDragDropOnView:v28];
    textDragDropSupport = v28->_textDragDropSupport;
    v28->_textDragDropSupport = v49;
  }

  v51 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v51, sel_insertTextSuggestion_);
  Implementation = method_getImplementation(InstanceMethod);
  v54 = objc_opt_class();
  v55 = class_getInstanceMethod(v54, sel_insertTextSuggestion_);
  v28->_tvFlags = (*&v28->_tvFlags & 0xFFFFFFFFFBFFFFFFLL | ((Implementation != method_getImplementation(v55)) << 26));
  [(UITextView *)v28 setEditable:editableCopy];
  if (!editableCopy)
  {
    [(UITextView *)v28 setSelectable:selectableCopy];
  }

  [(UITextView *)v28 _setShowsEditMenu:1];
  if (!decodingCopy)
  {
    [(UITextView *)v28 setScrollEnabled:1];
    [(UIScrollView *)v28 setBounces:1];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __107__UITextView__commonInitWithTextContainer_decoding_editable_selectable_draggable_textLayoutManagerEnabled___block_invoke;
    v63[3] = &unk_1E70F3590;
    v63[4] = v28;
    [UIView _performSystemAppearanceModifications:v63];
  }

  _defaultTextColor = [objc_opt_class() _defaultTextColor];
  [(UITextView *)v28 _setTypingAttributesTextColor:_defaultTextColor];

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    traitCollection2 = [(UIView *)v28 traitCollection];
    userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
    {
      [(UIView *)v28 _setContinuousCornerRadius:4.5];
      [(UITextView *)v28 setTextContainerInset:16.0, 16.0, 16.0, 16.0];
    }
  }

  [(UITextView *)v28 _updateContainerTileAndSizingFlags];
  if (![(UIScrollView *)v28 isScrollEnabled])
  {
    [(UITextView *)v28 invalidateIntrinsicContentSize];
  }

  [defaultCenter addObserver:v28 selector:sel__textContainerSizeDidChange_ name:@"_UITextContainerViewSizeDidChange" object:v28->_containerView];
  v28->_canShowTextFormattingOptions = _os_feature_enabled_impl();
  if (dyld_program_sdk_at_least())
  {
    v59 = objc_opt_new();
    [(UITextView *)v28 setTextFormattingConfiguration:v59];
  }

  [(UITextView *)v28 setAutomaticallyAdjustsWritingDirection:_os_feature_enabled_impl()];
  textLayoutManager = [(UITextView *)v28 textLayoutManager];
  if (textLayoutManager)
  {
    _resolvesNaturalAlignmentWithBaseWritingDirection = [objc_opt_class() _resolvesNaturalAlignmentWithBaseWritingDirection];
    if (_resolvesNaturalAlignmentWithBaseWritingDirection != [textLayoutManager resolvesNaturalAlignmentWithBaseWritingDirection])
    {
      [textLayoutManager setResolvesNaturalAlignmentWithBaseWritingDirection:_resolvesNaturalAlignmentWithBaseWritingDirection];
    }
  }
}

void __107__UITextView__commonInitWithTextContainer_decoding_editable_selectable_draggable_textLayoutManagerEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 2888) backgroundColor];
  [*(a1 + 32) setBackgroundColor:v2];
}

- (UITextView)initWithFrame:(CGRect)frame textContainer:(NSTextContainer *)textContainer
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = textContainer;
  v12.receiver = self;
  v12.super_class = UITextView;
  height = [(UIScrollView *)&v12 initWithFrame:x, y, width, height];
  if (height)
  {
    -[UITextView _commonInitWithTextContainer:decoding:editable:selectable:draggable:textLayoutManagerEnabled:](height, "_commonInitWithTextContainer:decoding:editable:selectable:draggable:textLayoutManagerEnabled:", v9, 0, 1, 1, 1, [objc_opt_class() _isTextLayoutManagerEnabled]);
  }

  return height;
}

- (id)_initWithFrame:(CGRect)frame textLayoutManagerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8.receiver = self;
  v8.super_class = UITextView;
  v5 = [(UIScrollView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(UITextView *)v5 _commonInitWithTextContainer:0 decoding:0 editable:1 selectable:1 draggable:1 textLayoutManagerEnabled:enabledCopy];
  }

  return v6;
}

+ (UITextView)textViewUsingTextLayoutManager:(BOOL)usingTextLayoutManager
{
  v3 = usingTextLayoutManager;
  v4 = [self alloc];
  v5 = [v4 _initWithFrame:v3 textLayoutManagerEnabled:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v5;
}

- (id)initReadonlyAndUnselectableWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  v10 = -[UITextView initReadonlyAndUnselectableWithFrame:textContainer:textLayoutManagerEnabled:](self, "initReadonlyAndUnselectableWithFrame:textContainer:textLayoutManagerEnabled:", containerCopy, [objc_opt_class() _isTextLayoutManagerEnabled], x, y, width, height);

  return v10;
}

- (id)initReadonlyAndUnselectableWithFrame:(CGRect)frame textContainer:(id)container textLayoutManagerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  v15.receiver = self;
  v15.super_class = UITextView;
  height = [(UIScrollView *)&v15 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    [(UITextView *)height _commonInitWithTextContainer:containerCopy decoding:0 editable:0 selectable:0 draggable:0 textLayoutManagerEnabled:enabledCopy];
    [(UITextView *)v13 setScrollEnabled:0];
  }

  return v13;
}

- (UITextView)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v21.receiver = self;
  v21.super_class = UITextView;
  v5 = [(UIScrollView *)&v21 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_46;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIEditable"])
  {
    v6 = [(NSCoder *)v4 decodeBoolForKey:@"UIEditable"];
  }

  else
  {
    v6 = 1;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UISelectable"])
  {
    v7 = [(NSCoder *)v4 decodeBoolForKey:@"UISelectable"];
  }

  else
  {
    v7 = 1;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UITextViewTextKitCodingFlavor"])
  {
    [(UITextView *)v5 _setEncodedTextKitFlavor:[(NSCoder *)v4 decodeIntegerForKey:@"UITextViewTextKitCodingFlavor"]];
  }

  _isTextLayoutManagerEnabled = [objc_opt_class() _isTextLayoutManagerEnabled];
  _encodedTextKitFlavor = [(UITextView *)v5 _encodedTextKitFlavor];
  if (_encodedTextKitFlavor == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = _isTextLayoutManagerEnabled;
  }

  if (_encodedTextKitFlavor == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  [(UITextView *)v5 _commonInitWithTextContainer:0 decoding:1 editable:v6 selectable:v7 draggable:1 textLayoutManagerEnabled:v11];
  if ([(NSCoder *)v4 containsValueForKey:@"UIAllowsEditingTextAttributes"])
  {
    [(UITextView *)v5 setAllowsEditingTextAttributes:[(NSCoder *)v4 decodeBoolForKey:@"UIAllowsEditingTextAttributes"]];
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIAdjustsFontForContentSizeCategory"])
  {
    [(UITextView *)v5 setAdjustsFontForContentSizeCategory:[(NSCoder *)v4 decodeBoolForKey:@"UIAdjustsFontForContentSizeCategory"]];
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIFont"])
  {
    v12 = [(NSCoder *)v4 decodeObjectForKey:@"UIFont"];
    [(UITextView *)v5 setFont:v12];
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UITextColor"])
  {
    v13 = [(NSCoder *)v4 decodeObjectForKey:@"UITextColor"];
    [(UITextView *)v5 setTextColor:v13];
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UITextAlignment"])
  {
    [(UITextView *)v5 setTextAlignment:[(NSCoder *)v4 decodeIntegerForKey:@"UITextAlignment"]];
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIAttributedText"])
  {
    v14 = [(NSCoder *)v4 decodeObjectForKey:@"UIAttributedText"];
    [(UITextView *)v5 setAttributedText:v14];
LABEL_30:

    goto LABEL_31;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIText"])
  {
    v14 = [(NSCoder *)v4 decodeObjectForKey:@"UIText"];
    [(UITextView *)v5 setText:v14];
    goto LABEL_30;
  }

LABEL_31:
  if ([(NSCoder *)v4 containsValueForKey:@"UIFindInteractionEnabled"])
  {
    [(UITextView *)v5 setFindInteractionEnabled:[(NSCoder *)v4 decodeBoolForKey:@"UIFindInteractionEnabled"]];
  }

  [(UITextView *)v5 setDataDetectorTypes:[(NSCoder *)v4 decodeIntegerForKey:@"UIDataDetectorTypes"]];
  _textInputTraits = [(UITextView *)v5 _textInputTraits];
  [_textInputTraits setAutocapitalizationType:2];
  if ([(NSCoder *)v4 containsValueForKey:@"UIAutocapitalizationType"])
  {
    [_textInputTraits setAutocapitalizationType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UIAutocapitalizationType"}];
  }

  [_textInputTraits setAutocorrectionType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UIAutocorrectionType"}];
  [_textInputTraits setSpellCheckingType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UISpellCheckingType"}];
  [_textInputTraits setKeyboardType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UIKeyboardType"}];
  [_textInputTraits setKeyboardAppearance:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UIKeyboardAppearance"}];
  [_textInputTraits setReturnKeyType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UIReturnKeyType"}];
  [_textInputTraits setEnablesReturnKeyAutomatically:{-[NSCoder decodeBoolForKey:](v4, "decodeBoolForKey:", @"UIEnablesReturnKeyAutomatically"}];
  v16 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UITextContentType"];
  [_textInputTraits setTextContentType:v16];

  [_textInputTraits setSmartInsertDeleteType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UITextSmartInsertDeleteType"}];
  [_textInputTraits setSmartQuotesType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UITextSmartQuotesType"}];
  [_textInputTraits setSmartDashesType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UITextSmartDashesType"}];
  [_textInputTraits setInlinePredictionType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UITextInlinePredictionType"}];
  [_textInputTraits setMathExpressionCompletionType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UITextMathExpressionCompletionType"}];
  [_textInputTraits setAllowsTextAnimationsType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UITextAllowsTextAnimationsType"}];
  [_textInputTraits setKeyboardSuggestionOptions:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"TUIKeyboardSuggestionOptions"}];
  [_textInputTraits setWritingToolsBehavior:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UIWritingToolsBehavior"}];
  [_textInputTraits setAllowsNumberPadPopover:{-[NSCoder decodeBoolForKey:](v4, "decodeBoolForKey:", @"UITextAllowsNumberPadPopover"}];
  v17 = @"UIAllowedWritingToolsResultOptions";
  if ([(NSCoder *)v4 containsValueForKey:@"UIAllowedWritingToolsResultOptions"]|| (v17 = @"UIWritingToolsAllowedInputOptions", [(NSCoder *)v4 containsValueForKey:@"UIWritingToolsAllowedInputOptions"]))
  {
    [_textInputTraits setAllowedWritingToolsResultOptions:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", v17)}];
  }

  [_textInputTraits setSecureTextEntry:{-[NSCoder decodeBoolForKey:](v4, "decodeBoolForKey:", @"UISecureTextEntry"}];
  if (![(UIScrollView *)v5 isScrollEnabled]&& [(_UITextLayoutController *)v5->_textLayoutController canAccessLayoutManager])
  {
    layoutManager = [(_UITextLayoutController *)v5->_textLayoutController layoutManager];
    [layoutManager setAllowsNonContiguousLayout:0];
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UITextViewUsesStandardTextScaling"])
  {
    [(UITextView *)v5 setUsesStandardTextScaling:[(NSCoder *)v4 decodeBoolForKey:@"UITextViewUsesStandardTextScaling"]];
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UILetterformAwareSizingRule"])
  {
    v5->_tvFlags = (*&v5->_tvFlags & 0xFFFFFFFFFFFFBFFFLL | (([(NSCoder *)v4 decodeIntegerForKey:@"UILetterformAwareSizingRule"]& 1) << 14));
  }

  v19 = [(NSCoder *)v4 decodeObjectForKey:@"UITextHighlightAttributes"];
  [(UITextView *)v5 setTextHighlightAttributes:v19];

LABEL_46:
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = UITextView;
  [(UIScrollView *)&v22 encodeWithCoder:coderCopy];
  attributedText = [(UITextView *)self attributedText];
  v6 = attributedText;
  if (attributedText && [attributedText length])
  {
    string = [v6 string];
    [coderCopy encodeObject:string forKey:@"UIText"];

    attributedText2 = [(UITextView *)self attributedText];
    [coderCopy encodeObject:attributedText2 forKey:@"UIAttributedText"];
  }

  if ([(UITextView *)self allowsEditingTextAttributes])
  {
    [coderCopy encodeBool:-[UITextView allowsEditingTextAttributes](self forKey:{"allowsEditingTextAttributes"), @"UIAllowsEditingTextAttributes"}];
  }

  if ([(UITextView *)self adjustsFontForContentSizeCategory])
  {
    [coderCopy encodeBool:1 forKey:@"UIAdjustsFontForContentSizeCategory"];
  }

  font = [(UITextView *)self font];

  if (font)
  {
    font2 = [(UITextView *)self font];
    [coderCopy encodeObject:font2 forKey:@"UIFont"];
  }

  textColor = [(UITextView *)self textColor];

  if (textColor)
  {
    textColor2 = [(UITextView *)self textColor];
    [coderCopy encodeObject:textColor2 forKey:@"UITextColor"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  typingAttributes = [WeakRetained typingAttributes];
  v15 = [typingAttributes valueForKey:*off_1E70EC988];

  if (v15)
  {
    alignment = [v15 alignment];
  }

  else
  {
    alignment = 4;
  }

  [coderCopy encodeInteger:alignment forKey:@"UITextAlignment"];

  if (![(UITextView *)self isEditable])
  {
    [coderCopy encodeBool:0 forKey:@"UIEditable"];
  }

  if ([(UITextView *)self dataDetectorTypes])
  {
    [coderCopy encodeInteger:-[UITextView dataDetectorTypes](self forKey:{"dataDetectorTypes"), @"UIDataDetectorTypes"}];
  }

  if (![(UITextView *)self isSelectable])
  {
    [coderCopy encodeBool:0 forKey:@"UISelectable"];
  }

  if ([(UITextView *)self isFindInteractionEnabled])
  {
    [coderCopy encodeBool:1 forKey:@"UIFindInteractionEnabled"];
  }

  _textInputTraits = [(UITextView *)self _textInputTraits];
  if ([_textInputTraits autocapitalizationType] != 2)
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"autocapitalizationType"), @"UIAutocapitalizationType"}];
  }

  if ([_textInputTraits autocorrectionType])
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"autocorrectionType"), @"UIAutocorrectionType"}];
  }

  if ([_textInputTraits spellCheckingType])
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"spellCheckingType"), @"UISpellCheckingType"}];
  }

  if ([_textInputTraits keyboardType])
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"keyboardType"), @"UIKeyboardType"}];
  }

  if ([_textInputTraits keyboardAppearance])
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"keyboardAppearance"), @"UIKeyboardAppearance"}];
  }

  if ([_textInputTraits returnKeyType])
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"returnKeyType"), @"UIReturnKeyType"}];
  }

  if ([_textInputTraits enablesReturnKeyAutomatically])
  {
    [coderCopy encodeBool:objc_msgSend(_textInputTraits forKey:{"enablesReturnKeyAutomatically"), @"UIEnablesReturnKeyAutomatically"}];
  }

  if ([_textInputTraits isSecureTextEntry])
  {
    [coderCopy encodeBool:objc_msgSend(_textInputTraits forKey:{"isSecureTextEntry"), @"UISecureTextEntry"}];
  }

  textContentType = [_textInputTraits textContentType];

  if (textContentType)
  {
    textContentType2 = [_textInputTraits textContentType];
    [coderCopy encodeObject:textContentType2 forKey:@"UITextContentType"];
  }

  if ([_textInputTraits smartInsertDeleteType])
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"smartInsertDeleteType"), @"UITextSmartInsertDeleteType"}];
  }

  if ([_textInputTraits smartQuotesType])
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"smartQuotesType"), @"UITextSmartQuotesType"}];
  }

  if ([_textInputTraits smartDashesType])
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"smartDashesType"), @"UITextSmartDashesType"}];
  }

  if ([_textInputTraits inlinePredictionType])
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"inlinePredictionType"), @"UITextInlinePredictionType"}];
  }

  if ([_textInputTraits mathExpressionCompletionType])
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"mathExpressionCompletionType"), @"UITextMathExpressionCompletionType"}];
  }

  if ([_textInputTraits allowsTextAnimationsType])
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"allowsTextAnimationsType"), @"UITextAllowsTextAnimationsType"}];
  }

  if ([_textInputTraits keyboardSuggestionOptions])
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"keyboardSuggestionOptions"), @"TUIKeyboardSuggestionOptions"}];
  }

  if ([_textInputTraits writingToolsBehavior])
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"writingToolsBehavior"), @"UIWritingToolsBehavior"}];
  }

  if ([_textInputTraits allowedWritingToolsResultOptions])
  {
    [coderCopy encodeInteger:objc_msgSend(_textInputTraits forKey:{"allowedWritingToolsResultOptions"), @"UIAllowedWritingToolsResultOptions"}];
  }

  if ([_textInputTraits allowsNumberPadPopover])
  {
    [coderCopy encodeBool:objc_msgSend(_textInputTraits forKey:{"allowsNumberPadPopover"), @"UITextAllowsNumberPadPopover"}];
  }

  if ([(UITextView *)self usesStandardTextScaling])
  {
    [coderCopy encodeBool:-[UITextView usesStandardTextScaling](self forKey:{"usesStandardTextScaling"), @"UITextViewUsesStandardTextScaling"}];
  }

  if ([(UITextView *)self _encodedTextKitFlavor]>= 1)
  {
    [coderCopy encodeInteger:-[UITextView _encodedTextKitFlavor](self forKey:{"_encodedTextKitFlavor"), @"UITextViewTextKitCodingFlavor"}];
  }

  if ((*(&self->_tvFlags + 1) & 0x40) != 0)
  {
    [coderCopy encodeInteger:1 forKey:@"UILetterformAwareSizingRule"];
  }

  textHighlightAttributes = [(UITextView *)self textHighlightAttributes];

  if (textHighlightAttributes)
  {
    textHighlightAttributes2 = [(UITextView *)self textHighlightAttributes];
    [coderCopy encodeObject:textHighlightAttributes2 forKey:@"UITextHighlightAttributes"];
  }
}

- (void)_populateArchivedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v15.receiver = self;
  v15.super_class = UITextView;
  [(UIScrollView *)&v15 _populateArchivedSubviews:subviewsCopy];
  if (self->_containerView)
  {
    [subviewsCopy removeObject:?];
  }

  interactionAssistant = [(UITextView *)self interactionAssistant];
  _legacySelectionView = [interactionAssistant _legacySelectionView];

  if (_legacySelectionView)
  {
    [subviewsCopy removeObject:_legacySelectionView];
    rangeView = [_legacySelectionView rangeView];
    startGrabber = [rangeView startGrabber];
    _dotView = [startGrabber _dotView];

    if (_dotView)
    {
      [subviewsCopy removeObject:_dotView];
    }

    rangeView2 = [_legacySelectionView rangeView];
    endGrabber = [rangeView2 endGrabber];
    _dotView2 = [endGrabber _dotView];

    if (_dotView2)
    {
      [subviewsCopy removeObject:_dotView2];
    }
  }

  if (self->_layoutView)
  {
    [subviewsCopy removeObject:?];
  }

  interactionAssistant2 = [(UITextView *)self interactionAssistant];
  _selectionViewManager = [interactionAssistant2 _selectionViewManager];
  [_selectionViewManager _filterArchivedSubviews:subviewsCopy];
}

- (NSLayoutManager)layoutManager
{
  [(UITextView *)self _reconfigureWithLayoutManager:0 triggeredByLayoutManagerAccess:1 triggeringSelector:a2];
  textLayoutController = self->_textLayoutController;

  return [(_UITextKit1LayoutController *)textLayoutController originalLayoutManager];
}

- (void)setInputView:(UIView *)inputView
{
  v5 = inputView;
  if (self->_inputView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_inputView, inputView);
    v5 = v6;
  }
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
  v5.super_class = UITextView;
  return [(UIResponder *)&v5 _ownsInputAccessoryView];
}

- (id)annotatedSubstringForRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained annotatedSubstringForRange:rangeCopy];

  return v6;
}

- (void)replaceRange:(id)range withAnnotatedString:(id)string relativeReplacementRange:(_NSRange)replacementRange
{
  length = replacementRange.length;
  location = replacementRange.location;
  stringCopy = string;
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained replaceRange:rangeCopy withAnnotatedString:stringCopy relativeReplacementRange:{location, length}];
}

- (void)removeAnnotation:(id)annotation forRange:(id)range
{
  rangeCopy = range;
  annotationCopy = annotation;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained removeAnnotation:annotationCopy forRange:rangeCopy];
}

- (void)addTextAlternativesDisplayStyle:(int64_t)style toRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v11 = [(_UITextLayoutController *)self->_textLayoutController textRangeForCharacterRange:range.location, range.length];
  textLayoutController = self->_textLayoutController;
  v9 = *off_1E70ECA00;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [(_UITextLayoutController *)textLayoutController addAnnotationAttribute:v9 value:v10 forRange:v11];

  [(_UITextLayoutController *)self->_textLayoutController boundingRectForCharacterRange:location, length];
  [(UITextView *)self setNeedsDisplayInRect:?];
}

- (id)_resolvedTypesettingLanguage:(id)language
{
  languageCopy = language;
  traitCollection = [(UIView *)self traitCollection];
  text = [(UITextView *)self text];
  if (-[UITextView _wantsContentAwareTypesettingLanguage](self, "_wantsContentAwareTypesettingLanguage") && [languageCopy length] && (v7 = CTFontCopyTallestTextStyleLanguageForString()) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (![v8 length])
  {
    typesettingLanguage = [traitCollection typesettingLanguage];

    v8 = typesettingLanguage;
  }

  return v8;
}

- (void)setAttributedText:(NSAttributedString *)attributedText
{
  v4 = attributedText;
  if (+[UIDictationUtilities shouldLogCorrectionInfoForCurrentBundleId])
  {
    if (!v4 || (-[NSAttributedString string](v4, "string"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:&stru_1EFB14550], v5, v6))
    {
      [UIDictationController logCorrectionStatisticsForDelegate:self reason:25];
    }
  }

  if (([(NSTextStorage *)self->_textStorage isEqualToAttributedString:v4]& 1) == 0)
  {
    if (!v4)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
    }

    v7 = [(NSAttributedString *)v4 length];
    selfCopy = self;
    v9 = v4;
    if (qword_1ED499910 != -1)
    {
      dispatch_once(&qword_1ED499910, &__block_literal_global_2406);
    }

    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    textLayoutController = [(UITextView *)selfCopy textLayoutController];
    if ([textLayoutController canAccessLayoutManager])
    {
    }

    else
    {
      v11 = dyld_program_sdk_at_least();

      if ((v11 & 1) == 0 && qword_1ED499928 != -1)
      {
        dispatch_once(&qword_1ED499928, &__block_literal_global_2425);
      }
    }

    if (byte_1ED499893 == 1)
    {
      if (!qword_1ED499920)
      {
        v12 = [qword_1ED499908 objectForKeyedSubscript:qword_1ED499918];
        qword_1ED499920 = NSClassFromString(v12);
      }

      v13 = [(NSAttributedString *)v9 length];
      v14 = *off_1E70EC8C8;
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = ___downgradeToTextKit1IfNecessary_block_invoke_3;
      v57[3] = &unk_1E7126C70;
      v57[4] = &v58;
      [(NSAttributedString *)v9 enumerateAttribute:v14 inRange:0 options:v13 usingBlock:0, v57];
    }

    if (*(v59 + 24) == 1)
    {
      [(UITextView *)selfCopy layoutManager];
    }

    _Block_object_dispose(&v58, 8);

    string = [(NSAttributedString *)v9 string];
    v16 = [(UITextView *)selfCopy _resolvedTypesettingLanguage:string];

    if (([(_UITextLayoutController *)selfCopy->_textLayoutController canAccessLayoutManager]& 1) != 0)
    {
      v17 = 0;
    }

    else
    {
      v17 = dyld_program_sdk_at_least() ^ 1;
      if (v17)
      {
        goto LABEL_26;
      }
    }

    if (!v16)
    {
      v18 = v9;
LABEL_32:
      if ([(_UITextLayoutController *)selfCopy->_textLayoutController canAccessLayoutManager])
      {
        v23 = selfCopy->_textLayoutController;
        layoutManager = [(_UITextLayoutController *)v23 layoutManager];
        if ([layoutManager allowsNonContiguousLayout] && v7)
        {
          if (v7 < 5)
          {
            goto LABEL_44;
          }

          v45 = v23;
          v46 = v16;
          v25 = 0;
          v26 = 0;
          v47 = v7;
          v27 = v7 / 5;
          v28 = *off_1E70EC918;
          v29 = 0.0;
          v30 = 5;
          do
          {
            v31 = [(NSAttributedString *)v18 attribute:v28 atIndex:v25 effectiveRange:0];
            v32 = v31;
            if (v31)
            {
              [v31 pointSize];
              if (v33 > 0.0)
              {
                v34 = 0.0;
                if ([v32 isSystemFont])
                {
                  [v32 _leading];
                  v34 = v35;
                }

                [layoutManager defaultLineHeightForFont:v32];
                v29 = (v29 * v26 + v34 + v36) / (v26 + 1);
                ++v26;
              }
            }

            v25 += v27;
            --v30;
          }

          while (v30);
          v7 = v47;
          v16 = v46;
          v23 = v45;
          if (v29 <= 0.0)
          {
LABEL_44:
            [off_1E70ECC18 defaultFontSize];
            v37 = [off_1E70ECC18 systemFontOfSize:?];
            [layoutManager defaultLineHeightForFont:v37];
            v29 = v38;
          }

          [layoutManager _setGlyphsPerLineEstimate:0 offsetPerLineEstimate:v29];
        }
      }

      textStorage = self->_textStorage;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __32__UITextView_setAttributedText___block_invoke_3;
      v49[3] = &unk_1E7126368;
      v4 = v18;
      v50 = v4;
      [(NSTextStorage *)textStorage coordinateEditing:v49];
      selfCopy->_textContainerInsetAdjustment.top = [(UITextView *)selfCopy _applicableContentOutsetsFromFonts];
      selfCopy->_textContainerInsetAdjustment.left = v40;
      selfCopy->_textContainerInsetAdjustment.bottom = v41;
      selfCopy->_textContainerInsetAdjustment.right = v42;
      [(UITextView *)selfCopy _ensureUpToDateTextContainerInsetAndNotifyIfNecessary];
      if (([(_UITextLayoutController *)selfCopy->_textLayoutController canAccessLayoutManager]& 1) == 0)
      {
        [(UITextView *)selfCopy _layoutText];
      }

      v43 = *off_1E70EC9F8;
      v44 = [(NSAttributedString *)v4 length];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __32__UITextView_setAttributedText___block_invoke_4;
      v48[3] = &unk_1E7126DC0;
      v48[4] = selfCopy;
      [(NSAttributedString *)v4 enumerateAttribute:v43 inRange:0 options:v44 usingBlock:0, v48];
      [(_UITextContainerView *)selfCopy->_containerView setNeedsDisplay];
      [(UITextView *)selfCopy _syncTypingAttributesToTextContainerAttributesForExtraLineFragment];
      [(UITextView *)selfCopy setSelectedRange:v7, 0];
      if ([(UITextView *)selfCopy _shouldStartDataDetectors])
      {
        [(UITextView *)selfCopy _startDataDetectors];
      }

      [(_UITextInteractableItemCache *)selfCopy->_textInteractableItemCache invalidate];

      goto LABEL_52;
    }

LABEL_26:
    v18 = [(NSAttributedString *)v9 mutableCopy];
    [(NSAttributedString *)v18 beginEditing];
    if (v17)
    {
      _defaultFont = [objc_opt_class() _defaultFont];
      v20 = *off_1E70EC918;
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __32__UITextView_setAttributedText___block_invoke;
      v54[3] = &unk_1E7126D70;
      v55 = v18;
      v56 = _defaultFont;
      v21 = _defaultFont;
      [(NSAttributedString *)v55 enumerateAttribute:v20 inRange:0 options:v7 usingBlock:0, v54];
    }

    if (v16 && [v16 length])
    {
      v22 = *off_1E70EC918;
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __32__UITextView_setAttributedText___block_invoke_2;
      v51[3] = &unk_1E7126D98;
      v51[4] = selfCopy;
      v52 = v16;
      v53 = v18;
      [(NSAttributedString *)v53 enumerateAttribute:v22 inRange:0 options:v7 usingBlock:0, v51];
    }

    [(NSAttributedString *)v18 endEditing];

    goto LABEL_32;
  }

LABEL_52:
}

uint64_t __32__UITextView_setAttributedText___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return [*(result + 32) addAttribute:*off_1E70EC918 value:*(result + 40) range:{a3, a4}];
  }

  return result;
}

void __32__UITextView_setAttributedText___block_invoke_2(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v14 = v7;
  if (v7)
  {
    v8 = [(UIFont *)v7 _fontAdjustedForTypesettingLanguage:?];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = [a1[4] font];
    v8 = [(UIFont *)v9 _fontAdjustedForTypesettingLanguage:?];

    if (!v8)
    {
      goto LABEL_12;
    }
  }

  v10 = v8;
  v11 = v14;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_12;
  }

  if (!v14)
  {

    goto LABEL_11;
  }

  v13 = [(__CTFont *)v10 isEqual:v11];

  if ((v13 & 1) == 0)
  {
LABEL_11:
    [a1[6] addAttribute:*off_1E70EC918 value:v10 range:{a3, a4}];
  }

LABEL_12:
}

uint64_t __32__UITextView_setAttributedText___block_invoke_4(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = result;
    v7 = [a2 isLowConfidence];
    v8 = *(v6 + 32);

    return [v8 addTextAlternativesDisplayStyle:v7 toRange:{a3, a4}];
  }

  return result;
}

- (void)_textStorageDidProcessEditing:(id)editing
{
  if ([(UITextView *)self isSelectable]&& [(UIView *)self isFirstResponder])
  {
    *&self->_tvFlags |= 1uLL;
  }

  if (![(UIScrollView *)self isScrollEnabled])
  {
    [(UITextView *)self invalidateIntrinsicContentSize];
  }

  [(UITextView *)self _updatePlaceholderVisibility];
  [(UITextView *)self _invalidateContainerViewSize];

  [(UITextView *)self _updateTextFormattingController];
}

- (void)_observedTextViewDidChange:(id)change
{
  if ([(UITextView *)self _totalNumberOfTextViewsInLayoutManager]>= 2)
  {

    [(UITextView *)self setSelectable:0];
  }
}

- (void)_setContentOffsetWithoutRecordingScrollPosition:(CGPoint)position
{
  ++self->_scrollPositionDontRecordCount;
  [(UITextView *)self setContentOffset:position.x, position.y];
  --self->_scrollPositionDontRecordCount;
}

- (void)_textViewContentPaddingDidChange:(id)change
{
  if (self->_bottomContentPadding == change)
  {
    [(UITextView *)self _updateContentSize];
  }
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  [(UIScrollView *)self contentOffset];
  v7 = v6;
  v9 = v8;
  v19.receiver = self;
  v19.super_class = UITextView;
  [(UIScrollView *)&v19 setContentOffset:x, y];
  if (x != v7 || y != v9)
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_SingleLineTextViewAdjustsForHorizontalContentOffset, @"SingleLineTextViewAdjustsForHorizontalContentOffset") & 1) == 0)
    {
      v11 = vabdd_f64(x, v7);
      v12 = !byte_1EA95E774 || v11 <= 0.00000011920929;
      if (!v12 && [(NSTextContainer *)self->_textContainer maximumNumberOfLines]== 1 && [(UIView *)self clipsToBounds])
      {
        effectiveUserInterfaceLayoutDirection = [(UIView *)self effectiveUserInterfaceLayoutDirection];
        v17 = x <= 0.00000011920929;
        if (effectiveUserInterfaceLayoutDirection)
        {
          v17 = x >= -0.00000011920929;
        }

        if (!v17)
        {
          UIRoundToViewScale(self);
          self->_horizontalTextContainerGeometryAdjustment = v18;
          [(UITextView *)self _updateTextContainerSizeAndSizeToFit];
          [(UITextView *)self _ensureUpToDateTextContainerInsetAndNotifyIfNecessary];
        }
      }
    }

    canvasView = [(_UITextContainerView *)self->_containerView canvasView];
    [canvasView viewportBoundsDidChange];
  }

  if (!self->_scrollPositionDontRecordCount)
  {
    _restorableScrollPosition = [(UITextView *)self _restorableScrollPosition];
    scrollPosition = self->_scrollPosition;
    self->_scrollPosition = _restorableScrollPosition;

    self->_offsetFromScrollPosition = 0.0;
  }
}

- (void)_notifyDidScroll
{
  canvasView = [(_UITextContainerView *)self->_containerView canvasView];
  [canvasView isScrollingChangedTo:1];

  v4.receiver = self;
  v4.super_class = UITextView;
  [(UIScrollView *)&v4 _notifyDidScroll];
}

- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)deceleration
{
  decelerationCopy = deceleration;
  if (deceleration)
  {
    y = self->_scrollEndDraggingVelocity.y;
    if (y >= 0.0)
    {
      if (y > 0.0)
      {
        [(UIView *)self bounds];
        v11 = v10;
        [(UIScrollView *)self contentOffset];
        v13 = v11 + v12;
        _containerView = [(UITextView *)self _containerView];
        [_containerView bounds];
        v16 = v13 - v15;

        if (v16 > 0.0)
        {
          bottomContentPadding = self->_bottomContentPadding;
          v7 = v16;
          goto LABEL_9;
        }
      }
    }

    else
    {
      [(UIScrollView *)self contentOffset];
      if (v6 < 0.0)
      {
        v7 = -v6;
        bottomContentPadding = self->_topContentPadding;
LABEL_9:
        [(_UITextViewContentPadding *)bottomContentPadding increaseToValue:v7];
      }
    }
  }

  else
  {
    canvasView = [(_UITextContainerView *)self->_containerView canvasView];
    [canvasView isScrollingChangedTo:0];
  }

  v17.receiver = self;
  v17.super_class = UITextView;
  [(UIScrollView *)&v17 _scrollViewDidEndDraggingWithDeceleration:decelerationCopy];
}

- (void)_scrollViewDidEndDecelerating
{
  canvasView = [(_UITextContainerView *)self->_containerView canvasView];
  [canvasView isScrollingChangedTo:0];

  v4.receiver = self;
  v4.super_class = UITextView;
  [(UIScrollView *)&v4 _scrollViewDidEndDecelerating];
}

- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished
{
  finishedCopy = finished;
  endedCopy = ended;
  scrollTarget = self->_scrollTarget;
  if (scrollTarget)
  {
    v8 = !finishedCopy;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [(UITextView *)self _visibleRangeWithLayout:1];
    v11 = v10;
    v26.location = [(_UITextViewRestorableScrollPosition *)self->_scrollTarget range];
    v26.length = v12;
    v25.location = v9;
    v25.length = v11;
    v13 = NSUnionRange(v25, v26);
    textLayoutController = self->_textLayoutController;
    v15 = [(_UITextLayoutController *)textLayoutController textRangeForCharacterRange:v13.location, v13.length];
    [(_UITextLayoutController *)textLayoutController ensureLayoutForRange:v15];

    range = [(_UITextViewRestorableScrollPosition *)self->_scrollTarget range];
    [(UITextView *)self _contentOffsetForScrollToVisible:range, v17];
    v19 = v18;
    v21 = v20;
    [(_UITextViewRestorableScrollPosition *)self->_scrollTarget offsetWithinLine];
    [(UITextView *)self setContentOffset:v19, v21 + v22];
    canvasView = [(_UITextContainerView *)self->_containerView canvasView];
    [canvasView isScrollingChangedTo:0];

    scrollTarget = self->_scrollTarget;
  }

  self->_scrollTarget = 0;

  v24.receiver = self;
  v24.super_class = UITextView;
  [(UIScrollView *)&v24 _scrollViewAnimationEnded:endedCopy finished:finishedCopy];
}

- (void)_resyncContainerFrameForNonAutolayoutDeferringSizeToFit:(BOOL)fit
{
  [(UIView *)self->_containerView frame];
  v57 = v5;
  v58 = v6;
  v60 = v7;
  v9 = v8;
  [(UITextView *)self visibleRectIgnoringKeyboard];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v59 = v9;
  if ([(UITextView *)self _freezeTextContainerSize])
  {
    width = self->_beforeFreezingFrameSize.width;
    height = self->_beforeFreezingFrameSize.height;
    v62.origin.x = v11;
    v62.origin.y = v13;
    v62.size.width = v15;
    v62.size.height = v17;
    v55 = CGRectGetWidth(v62) - width - (self->_duringFreezingTextContainerInset.right - self->_beforeFreezingTextContainerInset.right);
  }

  else
  {
    v63.origin.x = v11;
    v63.origin.y = v13;
    v63.size.width = v15;
    v63.size.height = v17;
    width = CGRectGetWidth(v63);
    if ([(UIScrollView *)self isScrollEnabled])
    {
      v55 = 0.0;
      height = v9;
    }

    else
    {
      v55 = 0.0;
      v64.origin.x = v11;
      v64.origin.y = v13;
      v64.size.width = v15;
      v64.size.height = v17;
      height = CGRectGetHeight(v64);
    }
  }

  [(UIScrollView *)self _effectiveContentInset];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(UIView *)self bounds];
  v28 = v27 - (v22 + v26);
  v54 = v20;
  v30 = v29 - (v20 + v24);
  [(_UITextContainerView *)self->_containerView minSize];
  v32 = v31;
  [(UIView *)self->_containerView convertSize:self fromView:v28, v30];
  v34 = v33;
  v36 = v35;
  if ([(UIScrollView *)self isScrollEnabled])
  {
    v37 = 0.0;
  }

  else
  {
    v37 = v36;
  }

  [(_UITextContainerView *)self->_containerView minSize];
  v40 = v39 != v37 || v38 != v32;
  if (v40)
  {
    [(_UITextContainerView *)self->_containerView setMinSize:v32, v37];
  }

  if ([(UIScrollView *)self isScrollEnabled])
  {
    v36 = 1.79769313e308;
    v41 = 1.79769313e308;
  }

  else
  {
    v41 = v34;
  }

  [(_UITextContainerView *)self->_containerView maxSize];
  if (v43 != v41 || v42 != v36)
  {
    [(_UITextContainerView *)self->_containerView setMaxSize:v41, v36];
    v40 = 1;
  }

  if ([(NSTextContainer *)self->_textContainer layoutOrientation])
  {
    v46 = v58;
    v45 = v59;
    v47 = v55;
    if ([(NSTextContainer *)self->_textContainer layoutOrientation]== 1)
    {
      [(UIView *)self bounds];
      v49 = v48 - v24 - v54;
      v50 = height;
      if (v49 < height)
      {
        v50 = v49;
      }

      v51 = v60;
    }

    else
    {
      v51 = v60;
      v50 = height;
    }
  }

  else
  {
    [(UIView *)self bounds];
    if (v52 - v22 - v26 < width)
    {
      width = v52 - v22 - v26;
    }

    v45 = v59;
    v51 = v60;
    v46 = v58;
    v47 = v55;
    v50 = height;
  }

  if (_UIRectEquivalentToRectWithAccuracy(v47, v46, width, v50, v57, v46, v51, v45, 0.00000011920929))
  {
LABEL_36:
    if (!v40)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  [(_UITextContainerView *)self->_containerView setFrame:v47, v46, width, v50];
  if (!v40)
  {
    v53 = vabdd_f64(v50, v45) >= 0.00000011920929;
    v40 = vabdd_f64(width, v51) >= 0.00000011920929 || v53;
    goto LABEL_36;
  }

LABEL_37:
  if (!fit)
  {
    [(UITextView *)self _updateTextContainerSizeAndSizeToFit];
  }

LABEL_39:
  if (self->_unfreezingTextContainerSize)
  {
    [(UITextInteractionAssistant *)self->_interactionAssistant updateDisplayedSelection];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __70__UITextView__resyncContainerFrameForNonAutolayoutDeferringSizeToFit___block_invoke;
    v61[3] = &unk_1E70F3590;
    v61[4] = self;
    [UIApp _performBlockAfterCATransactionCommits:v61];
  }
}

- (void)_sizingRuleWillChangeShouldClearInsetEdges:(uint64_t)edges
{
  if (!edges)
  {
    return;
  }

  if (([edges isScrollEnabled] & 1) == 0)
  {
    if ((*(edges + 95) & 2) != 0)
    {
      goto LABEL_8;
    }

    superview = [edges superview];
    if (superview)
    {
      v5 = superview;
      [edges bounds];
      width = v10.size.width;
      height = v10.size.height;
      v8 = CGRectGetHeight(v10);
      [edges sizeThatFits:{width, height}];
      if (v8 == v9)
      {
        [v5 setNeedsLayout];
      }

      goto LABEL_11;
    }

    if ((*(edges + 95) & 2) != 0)
    {
LABEL_8:
      if (([edges translatesAutoresizingMaskIntoConstraints] & 1) == 0)
      {
        [edges invalidateIntrinsicContentSize];
      }
    }

    v5 = 0;
LABEL_11:
  }

  if (a2)
  {
    if (a2 == 15)
    {
      *(edges + 2456) = 0u;
      *(edges + 2472) = 0u;
    }

    else
    {
      *(edges + 2456) = 0;
      *(edges + 2472) = 0;
    }
  }
}

- (void)setSizingRule:(int64_t)rule
{
  if (((*&self->_tvFlags >> 14) & 1) != rule)
  {
    v4 = rule == 1;
    if (rule == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = 15;
    }

    [(UITextView *)self _sizingRuleWillChangeShouldClearInsetEdges:v5];
    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFFBFFFLL | (v4 << 14));
    self->_textContainerInsetAdjustment.top = [(UITextView *)self _applicableContentOutsetsFromFonts];
    self->_textContainerInsetAdjustment.left = v6;
    self->_textContainerInsetAdjustment.bottom = v7;
    self->_textContainerInsetAdjustment.right = v8;
  }
}

- (void)_setExtremeSizingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UITextView *)self _isExtremeSizingEnabled]!= enabled)
  {
    if (enabledCopy)
    {
      v5 = 0;
    }

    else
    {
      v5 = 5;
    }

    if (enabledCopy)
    {
      v6 = 0x2000;
    }

    else
    {
      v6 = 0;
    }

    [(UITextView *)self _sizingRuleWillChangeShouldClearInsetEdges:v5];
    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFFDFFFLL | v6);
    self->_textContainerInsetAdjustment.top = [(UITextView *)self _applicableContentOutsetsFromFonts];
    self->_textContainerInsetAdjustment.left = v7;
    self->_textContainerInsetAdjustment.bottom = v8;
    self->_textContainerInsetAdjustment.right = v9;
  }
}

double __36__UITextView__scrollToCaretIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 2176) canvasView];
  [v2 layoutIfNeeded];

  v3 = [*(a1 + 32) interactionAssistant];
  v4 = [v3 activeSelection];
  [v4 caretRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [*(a1 + 32) textInputView];
  [v13 convertRect:*(a1 + 32) toView:{v6, v8, v10, v12}];
  v15 = v14;

  return v15;
}

- (BOOL)_isSelectionVisible
{
  interactionAssistant = [(UITextView *)self interactionAssistant];
  _selectionViewManager = [interactionAssistant _selectionViewManager];
  _isVisible = [_selectionViewManager _isVisible];

  return _isVisible;
}

- (void)_textContainerSizeDidChange:(id)change
{
  [(UITextView *)self _updateContentSize];

  [(UITextView *)self _updateTextFormattingControllerPresentationSource];
}

- (void)_updateFrameOfTrailingWhitespace:(CGSize)whitespace
{
  height = whitespace.height;
  width = whitespace.width;
  if ([(NSTextStorage *)self->_textStorage length])
  {
    [(UITextView *)self _rectForScrollToVisible:[(NSTextStorage *)self->_textStorage length], 0];
    x = v11.origin.x;
    v7 = v11.size.height;
    MaxY = CGRectGetMaxY(v11);
    v12.origin.x = x;
    v12.origin.y = MaxY;
    v12.size.width = width;
    v12.size.height = v7;
    MinX = CGRectGetMinX(v12);
    self->_frameOfTrailingWhitespace.origin.x = x;
    self->_frameOfTrailingWhitespace.origin.y = MaxY;
    self->_frameOfTrailingWhitespace.size.width = width;
    self->_frameOfTrailingWhitespace.size.height = height - MinX;
  }

  else
  {
    v10 = *(MEMORY[0x1E695F050] + 16);
    self->_frameOfTrailingWhitespace.origin = *MEMORY[0x1E695F050];
    self->_frameOfTrailingWhitespace.size = v10;
  }
}

- (void)_setFrameOrBounds:(CGRect)bounds fromOldRect:(CGRect)rect settingAction:(id)action
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = bounds.size.height;
  v9 = bounds.size.width;
  v10 = bounds.origin.y;
  v11 = bounds.origin.x;
  actionCopy = action;
  if ([(UITextView *)self _freezeTextContainerSize])
  {
    actionCopy[2](actionCopy);
    [(UITextView *)self _resyncContainerFrameForNonAutolayoutDeferringSizeToFit:1];
    [(UITextInteractionAssistant *)self->_interactionAssistant updateDisplayedSelection];
  }

  else
  {
    if ([(UIScrollView *)self isScrollEnabled]&& vabdd_f64(v9, width) >= 2.22044605e-16)
    {
      v16 = [(UITextView *)self _visibleRangeWithLayout:0];
      v15 = v23;
      if ([(UITextView *)self isEditing])
      {
        selectedRange = [(UITextView *)self selectedRange];
        v14 = selectedRange < v16 + v15 && v16 < selectedRange + v25;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __58__UITextView__setFrameOrBounds_fromOldRect_settingAction___block_invoke;
      v34[3] = &unk_1E7127078;
      v34[4] = self;
      v17 = _UITextLayoutSizeWillShrink(v34, width, height, v9, v8);
    }

    else
    {
      v17 = 0;
    }

    layer = [(UIView *)self layer];
    needsLayoutOnGeometryChange = [layer needsLayoutOnGeometryChange];

    if (v17)
    {
      layer2 = [(UIView *)self layer];
      [layer2 setNeedsLayoutOnGeometryChange:0];
    }

    actionCopy[2](actionCopy);
    [(UITextView *)self _resyncContainerFrameForNonAutolayoutDeferringSizeToFit:v17];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__UITextView__setFrameOrBounds_fromOldRect_settingAction___block_invoke_2;
    aBlock[3] = &unk_1E7126DE8;
    v31 = v17;
    aBlock[4] = self;
    *&aBlock[5] = v11;
    *&aBlock[6] = v10;
    *&aBlock[7] = v9;
    *&aBlock[8] = v8;
    *&aBlock[9] = x;
    *&aBlock[10] = y;
    *&aBlock[11] = width;
    *&aBlock[12] = height;
    aBlock[13] = v16;
    aBlock[14] = v15;
    v32 = v14;
    v33 = needsLayoutOnGeometryChange;
    v21 = _Block_copy(aBlock);
    v22 = v21;
    if (v17)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __58__UITextView__setFrameOrBounds_fromOldRect_settingAction___block_invoke_3;
      v28[3] = &unk_1E70F0F78;
      v29 = v21;
      [UIViewAnimationState _addSystemPostAnimationAction:v28];
    }

    else
    {
      v21[2](v21);
    }

    if (![(UIView *)self _wantsAutolayout]&& (*(&self->super.super._viewFlags + 16) & 8) != 0 && (v9 != width || v8 != height))
    {
      self->_lastBaselineOffsetFromBottom = 0.0;
      self->_firstBaselineOffsetFromTop = 0.0;
    }
  }
}

void __58__UITextView__setFrameOrBounds_fromOldRect_settingAction___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    [*(a1 + 32) _setNeedsTextLayout];
    [*(a1 + 32) _updateTextContainerSizeAndSizeToFit];
  }

  if (*(a1 + 56) > *(a1 + 88) || *(a1 + 64) > *(a1 + 96))
  {
    v2 = [*(*(a1 + 32) + 2792) usesTiledViews];
    v3 = *(*(a1 + 32) + 2176);
    if (v2)
    {
      [v3 setNeedsLayout];
    }

    else
    {
      v4 = [v3 canvasView];
      [v4 viewportBoundsDidChange];
    }
  }

  if (*(a1 + 112))
  {
    v5 = *(a1 + 32);
    [v5 _contentOffsetForScrollToVisible:{*(a1 + 104), 1}];
    [v5 setContentOffset:?];
    if (*(a1 + 121) == 1)
    {
      *(*(a1 + 32) + 2232) |= 1uLL;
    }
  }

  v6 = [*(a1 + 32) layer];
  [v6 setNeedsLayoutOnGeometryChange:*(a1 + 122)];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __24__UITextView_setBounds___block_invoke;
  v12[3] = &unk_1E70F3B20;
  *&v12[5] = x;
  *&v12[6] = y;
  *&v12[7] = width;
  *&v12[8] = height;
  v12[4] = self;
  [(UITextView *)self _setFrameOrBounds:v12 fromOldRect:x settingAction:y, width, height, v8, v9, v10, v11];
}

id __24__UITextView_setBounds___block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = UITextView;
  return objc_msgSendSuper2(&v2, sel_setBounds_, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __23__UITextView_setFrame___block_invoke;
  v12[3] = &unk_1E70F3B20;
  *&v12[5] = x;
  *&v12[6] = y;
  *&v12[7] = width;
  *&v12[8] = height;
  v12[4] = self;
  [(UITextView *)self _setFrameOrBounds:v12 fromOldRect:x settingAction:y, width, height, v8, v9, v10, v11];
}

id __23__UITextView_setFrame___block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = UITextView;
  return objc_msgSendSuper2(&v2, sel_setFrame_, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v27.receiver = self;
  v27.super_class = UITextView;
  [(UIView *)&v27 setNeedsDisplayInRect:?];
  canvasView = [(_UITextContainerView *)self->_containerView canvasView];
  [(UIView *)self convertRect:canvasView toView:x, y, width, height];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  canvasView2 = [(_UITextContainerView *)self->_containerView canvasView];
  [canvasView2 bounds];
  v31.origin.x = v18;
  v31.origin.y = v19;
  v31.size.width = v20;
  v31.size.height = v21;
  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  v29 = CGRectIntersection(v28, v31);
  v22 = v29.origin.x;
  v23 = v29.origin.y;
  v24 = v29.size.width;
  v25 = v29.size.height;

  v30.origin.x = v22;
  v30.origin.y = v23;
  v30.size.width = v24;
  v30.size.height = v25;
  if (!CGRectIsEmpty(v30))
  {
    canvasView3 = [(_UITextContainerView *)self->_containerView canvasView];
    [canvasView3 setNeedsDisplayInRect:{v22, v23, v24, v25}];
  }
}

- (void)_resetUsesExplicitPreferredMaxLayoutWidth
{
  _needsDoubleUpdateConstraintsPass = [(UITextView *)self _needsDoubleUpdateConstraintsPass];
  *&self->_tvFlags &= ~8uLL;
  self->_preferredMaxLayoutWidth = 0.0;
  [(UIView *)self _needsDoubleUpdateConstraintsPassMayHaveChangedFrom:_needsDoubleUpdateConstraintsPass];

  [(UITextView *)self invalidateIntrinsicContentSize];
}

- (void)_setPreferredMaxLayoutWidth:(double)width
{
  v5 = width != 0.0;
  _needsDoubleUpdateConstraintsPass = [(UITextView *)self _needsDoubleUpdateConstraintsPass];
  self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFFFFF7 | (8 * v5));
  if (self->_preferredMaxLayoutWidth != width)
  {
    self->_preferredMaxLayoutWidth = width;
    if (![(UIScrollView *)self isScrollEnabled])
    {
      [(UITextView *)self invalidateIntrinsicContentSize];
    }
  }

  [(UIView *)self _needsDoubleUpdateConstraintsPassMayHaveChangedFrom:_needsDoubleUpdateConstraintsPass];
}

- (double)_firstBaselineOffsetFromTop
{
  if ((*(&self->super.super._viewFlags + 7) & 2) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextView.m" lineNumber:2638 description:{@"%s only valid when using auto layout", "-[UITextView _firstBaselineOffsetFromTop]"}];
  }

  return self->_firstBaselineOffsetFromTop;
}

- (double)_baselineOffsetFromBottom
{
  if ((*(&self->super.super._viewFlags + 7) & 2) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextView.m" lineNumber:2644 description:{@"%s only valid when using auto layout", "-[UITextView _baselineOffsetFromBottom]"}];
  }

  return self->_lastBaselineOffsetFromBottom;
}

- (double)_internalFirstBaselineOffsetFromTop
{
  if (![(UIView *)self _wantsAutolayout]&& self->_firstBaselineOffsetFromTop == 0.0 && self->_lastBaselineOffsetFromBottom == 0.0)
  {
    [(UITextView *)self _updateBaselineInformationDependentOnBounds];
  }

  return self->_firstBaselineOffsetFromTop;
}

- (double)_internalLastBaselineOffsetFromBottom
{
  if (![(UIView *)self _wantsAutolayout]&& self->_firstBaselineOffsetFromTop == 0.0 && self->_lastBaselineOffsetFromBottom == 0.0)
  {
    [(UITextView *)self _updateBaselineInformationDependentOnBounds];
  }

  return self->_lastBaselineOffsetFromBottom;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  tvFlags = self->_tvFlags;
  if (has_internal_diagnostics)
  {
    if ((*&tvFlags & 0x4000) == 0)
    {
      [(UITextView *)self alignmentRectInsets];
      if (v24 != 0.0 || v21 != 0.0 || v23 != 0.0 || v22 != 0.0)
      {
        v25 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "Text View not expected to have alignmnetRectInsets.", buf, 2u);
        }
      }
    }
  }

  else if ((*&tvFlags & 0x4000) == 0)
  {
    [(UITextView *)self alignmentRectInsets];
    if (v11 != 0.0 || v8 != 0.0 || v10 != 0.0 || v9 != 0.0)
    {
      v12 = *(__UILogGetCategoryCachedImpl("Assert", &_baselineOffsetsAtSize____s_category_0) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Text View not expected to have alignmnetRectInsets.", buf, 2u);
      }
    }
  }

  *buf = 0;
  v30 = buf;
  v31 = 0x3010000000;
  v32 = "";
  v33 = xmmword_18A682EB0;
  documentRange = [(_UITextLayoutController *)self->_textLayoutController documentRange];
  isEmpty = [documentRange isEmpty];

  if ((isEmpty & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __37__UITextView__baselineOffsetsAtSize___block_invoke;
    aBlock[3] = &unk_1E70FE3F8;
    aBlock[4] = self;
    aBlock[5] = buf;
    v15 = _Block_copy(aBlock);
    if ([(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager])
    {
      v16 = v27;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __37__UITextView__baselineOffsetsAtSize___block_invoke_2;
      v27[3] = &unk_1E7126E10;
      v27[4] = v15;
      [(UITextView *)self _performTextKit1LayoutCalculation:v27 inSize:width, height];
    }

    else
    {
      v16 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __37__UITextView__baselineOffsetsAtSize___block_invoke_3;
      v26[3] = &unk_1E7126E38;
      v26[4] = v15;
      [(UITextView *)self _performTextKit2LayoutCalculation:v26 inSize:width, height];
    }
  }

  v17 = *(v30 + 4);
  v18 = *(v30 + 5);
  _Block_object_dispose(buf, 8);
  v19 = v17;
  v20 = v18;
  result.var1 = v20;
  result.var0 = v19;
  return result;
}

void __37__UITextView__baselineOffsetsAtSize___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) _inputController];
  v2 = *(a1 + 32);
  v3 = v2[349];
  v4 = [v8 typingAttributes];
  [*(a1 + 32) textContainerOrigin];
  v5 = [_UITextLayoutControllerBase baselineCalculatorForView:v3 typingAttributes:v2 usesLineFragmentOrigin:v4 fallbackTextContainerOrigin:1];

  [v5 firstBaselineOffsetFromTop];
  [v5 lastBaselineOffsetFromBottom];
  UIRoundToViewScale(*(a1 + 32));
  *(*(*(a1 + 40) + 8) + 32) = v6;
  UIRoundToViewScale(*(a1 + 32));
  *(*(*(a1 + 40) + 8) + 40) = v7;
}

- ($BB3B25BBC364C7D98808033881F79914)_saveSizeBeforeLayoutCalculation:(SEL)calculation
{
  *&retstr->var0 = 0;
  v5 = a4;
  retstr->var0 = [v5 widthTracksTextView];
  retstr->var1 = [v5 heightTracksTextView];
  [v5 size];
  v7 = v6;
  v9 = v8;

  retstr->var2.width = v7;
  retstr->var2.height = v9;
  return result;
}

- (void)_restoreSize:(id *)size afterLayoutCalculation:(id)calculation
{
  var0 = size->var0;
  calculationCopy = calculation;
  [calculationCopy setWidthTracksTextView:var0];
  [calculationCopy setHeightTracksTextView:size->var1];
  [calculationCopy setSize:{size->var2.width, size->var2.height}];
}

- (void)_configureForLayoutCalculation:(id)calculation inSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  calculationCopy = calculation;
  [calculationCopy setWidthTracksTextView:0];
  [calculationCopy setHeightTracksTextView:0];
  [calculationCopy setSize:{width, height}];
}

- (void)_performTextKit2LayoutCalculation:(id)calculation inSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  textContainer = self->_textContainer;
  calculationCopy = calculation;
  textLayoutManager = [(NSTextContainer *)textContainer textLayoutManager];
  textContainer = [(UITextView *)self textContainer];
  [textContainer size];
  v12 = v11;
  v16 = 0uLL;
  v17 = 0;
  [(UITextView *)self _saveSizeBeforeLayoutCalculation:textContainer];
  delegate = [textLayoutManager delegate];
  if (width != v12)
  {
    [textContainer setTextView:0];
  }

  [(UITextView *)self _configureForLayoutCalculation:textContainer inSize:width, height];
  [textLayoutManager ensureLayoutForBounds:{0.0, 0.0, width, height}];
  calculationCopy[2](calculationCopy, textLayoutManager, textContainer);

  v14 = v16;
  v15 = v17;
  [(UITextView *)self _restoreSize:&v14 afterLayoutCalculation:textContainer];
  if (width != v12)
  {
    [textContainer setTextView:self->_containerView];
  }

  [textLayoutManager setDelegate:delegate];
}

- (void)_performTextKit1LayoutCalculation:(id)calculation inSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  calculationCopy = calculation;
  layoutManager = [(UITextView *)self layoutManager];
  textContainer = [(UITextView *)self textContainer];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__UITextView__performTextKit1LayoutCalculation_inSize___block_invoke;
  v12[3] = &unk_1E7126E60;
  v15 = width;
  v16 = height;
  v12[4] = self;
  v13 = textContainer;
  v14 = calculationCopy;
  v10 = calculationCopy;
  v11 = textContainer;
  [layoutManager coordinateAccess:v12];
}

void __55__UITextView__performTextKit1LayoutCalculation_inSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  [*(a1 + 32) frame];
  v6 = v5;
  v13 = 0uLL;
  v14 = 0;
  v7 = *(a1 + 32);
  if (v7)
  {
    [v7 _saveSizeBeforeLayoutCalculation:*(a1 + 40)];
  }

  v8 = [v3 delegate];
  if (v4 != v6)
  {
    [*(a1 + 40) setTextView:0];
  }

  [*(a1 + 32) _configureForLayoutCalculation:*(a1 + 40) inSize:{*(a1 + 56), *(a1 + 64)}];
  if ([v3 allowsNonContiguousLayout])
  {
    [v3 ensureLayoutForTextContainer:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v13;
  v12 = v14;
  [v9 _restoreSize:&v11 afterLayoutCalculation:v10];
  if (v4 != v6)
  {
    [*(a1 + 40) setTextView:*(*(a1 + 32) + 2176)];
  }

  [v3 setDelegate:v8];
}

- (CGSize)_containerSizeForBoundsSize:(CGSize)size allowingOverflow:(BOOL)overflow
{
  overflowCopy = overflow;
  height = size.height;
  width = size.width;
  [(_UITextContainerView *)self->_containerView textContainerInset];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = 1.79769313e308;
  if (width <= 1.79769313e308)
  {
    v17 = width;
  }

  else
  {
    v17 = 1.79769313e308;
  }

  if (height <= 1.79769313e308)
  {
    v16 = height;
  }

  [(UIView *)self convertSize:self->_containerView toView:v17, v16];
  v20 = v18;
  v21 = v19;
  if (overflowCopy)
  {
    if (v18 == 0.0 || [(_UITextContainerView *)self->_containerView layoutOrientation]== 1)
    {
      v21 = v21 - (v9 + v13);
      v20 = 1.79769313e308;
    }

    if (v21 == 0.0 || ![(_UITextContainerView *)self->_containerView layoutOrientation])
    {
      v20 = v20 - (v11 + v15);
      v21 = 1.79769313e308;
    }
  }

  else
  {
    v20 = v18 - (v11 + v15);
    v21 = v19 - (v9 + v13);
  }

  if (v20 < 1.79769313e308)
  {
    v20 = v20 + fabs(self->_horizontalTextContainerGeometryAdjustment);
  }

  v22 = 0.0;
  if (v21 >= 0.0)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0.0;
  }

  if (v20 >= 0.0)
  {
    v22 = v20;
  }

  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = _UIViewEnableDebugSignposts();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __39__UITextView__intrinsicSizeWithinSize___block_invoke;
  v30[3] = &unk_1E71270A0;
  v30[4] = self;
  if (v6)
  {
    v36 = 0u;
    memset(v37, 0, sizeof(v37));
    v35 = 0u;
    __39__UITextView__intrinsicSizeWithinSize___block_invoke(v30, &v35);
    if (v35)
    {
      kdebug_trace();
    }

    v31 = *(v37 + 8);
    v32 = *(&v37[1] + 8);
    v33 = *(&v37[2] + 1);
  }

  else
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
  }

  superview = [(UIView *)self superview];
  kdebug_trace();

  v34 = *MEMORY[0x1E695F060];
  if ((*(&self->_tvFlags + 1) & 4) == 0 || ![(_UITextSizeCache *)self->_intrinsicSizeCache getSize:&v34 baselineInfo:0 forTargetSize:1 isMultiline:width, height])
  {
    [(UITextView *)self _containerSizeForBoundsSize:[(UITextView *)self _allowsOverflowForIntrinsicSizeCalculation] allowingOverflow:width, height];
    *&v34 = v8;
    *(&v34 + 1) = v9;
    *&v35 = 0;
    *(&v35 + 1) = &v35;
    *&v36 = 0x3010000000;
    *(&v36 + 1) = "";
    v37[0] = v34;
    if ([(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager])
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __39__UITextView__intrinsicSizeWithinSize___block_invoke_2;
      v29[3] = &unk_1E7126E88;
      v29[4] = &v35;
      [(UITextView *)self _performTextKit1LayoutCalculation:v29 inSize:v34];
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __39__UITextView__intrinsicSizeWithinSize___block_invoke_3;
      v27[3] = &unk_1E7126EB0;
      v28 = v34;
      v27[4] = &v35;
      [(UITextView *)self _performTextKit2LayoutCalculation:v27 inSize:v34];
    }

    [(_UITextContainerView *)self->_containerView textContainerInset];
    v12 = *(&v35 + 1);
    v13 = v10 + v11 + *(*(&v35 + 1) + 40);
    *(*(&v35 + 1) + 32) = v14 + v15 + *(*(&v35 + 1) + 32);
    *(v12 + 40) = v13;
    UICeilToViewScale(self);
    v17 = v16;
    UICeilToViewScale(self);
    v19 = v18;
    *&v34 = v17;
    *(&v34 + 1) = v18;
    if ((*(&self->_tvFlags + 1) & 4) != 0)
    {
      intrinsicSizeCache = self->_intrinsicSizeCache;
      if (!intrinsicSizeCache)
      {
        v21 = objc_opt_new();
        v22 = self->_intrinsicSizeCache;
        self->_intrinsicSizeCache = v21;

        intrinsicSizeCache = self->_intrinsicSizeCache;
        v19 = *(&v34 + 1);
        v17 = *&v34;
      }

      [(_UITextSizeCache *)intrinsicSizeCache addSize:0 baselineInfo:v17 forTargetSize:v19, width, height];
    }

    _Block_object_dispose(&v35, 8);
  }

  if (kdebug_is_enabled())
  {
    v23 = [(UIScrollView *)self description];
    [v23 UTF8String];
    kdebug_trace_string();

    superview2 = [(UIView *)self superview];
    kdebug_trace();
  }

  if (v31)
  {
    kdebug_trace();
  }

  v26 = *(&v34 + 1);
  v25 = *&v34;
  result.height = v26;
  result.width = v25;
  return result;
}

void __39__UITextView__intrinsicSizeWithinSize___block_invoke(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  strncpy(&v8, Name, 0x18uLL);
  *a2 = 91;
  v6 = *(a1 + 32);
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = 92;
  *(a2 + 48) = v6;
  *(a2 + 56) = 0;
  *(a2 + 64) = v6;
  v7 = [v6 superview];
  *(a2 + 72) = v7;
}

void __39__UITextView__intrinsicSizeWithinSize___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 allowsNonContiguousLayout])
  {
    [v9 ensureLayoutForTextContainer:v5];
  }

  [v9 glyphRangeForTextContainer:v5];
  [v9 usedRectForTextContainer:v5];
  v6 = *(*(a1 + 32) + 8);
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
}

void __39__UITextView__intrinsicSizeWithinSize___block_invoke_3(double *a1, void *a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  [v5 ensureLayoutForBounds:{0.0, 0.0, v3, v4}];
  [v5 ui_contentSizeForLastContainerView];
  v7 = v6;
  v9 = v8;

  v10 = *(*(a1 + 4) + 8);
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v14.receiver = self;
  v14.super_class = UITextView;
  [(UIScrollView *)&v14 traitCollectionDidChange:changeCopy];
  traitCollection = [(UIView *)self traitCollection];
  v6 = traitCollection;
  if (traitCollection && (!changeCopy || traitCollection[13] != changeCopy[13] || traitCollection[15] != changeCopy[15]))
  {
    -[UITextView _adjustFontForAccessibilityTraits:](self, "_adjustFontForAccessibilityTraits:", [traitCollection legibilityWeight] != objc_msgSend(changeCopy, "legibilityWeight"));
  }

  typesettingLanguage = [v6 typesettingLanguage];
  typesettingLanguage2 = [changeCopy typesettingLanguage];
  v9 = [typesettingLanguage isEqualToString:typesettingLanguage2];

  if ((v9 & 1) == 0)
  {
    [(UITextView *)self _adjustFontForTypesettingLanguage];
  }

  textLayoutManager = [(UITextView *)self textLayoutManager];
  if (textLayoutManager)
  {
    _resolvesNaturalAlignmentWithBaseWritingDirection = [objc_opt_class() _resolvesNaturalAlignmentWithBaseWritingDirection];
    v12 = [(UITraitCollection *)v6 _resolvesNaturalAlignmentWithBaseWritingDirectionWithDefaultValue:_resolvesNaturalAlignmentWithBaseWritingDirection];
    if (v12 != [textLayoutManager resolvesNaturalAlignmentWithBaseWritingDirection])
    {
      [textLayoutManager setResolvesNaturalAlignmentWithBaseWritingDirection:v12];
    }
  }

  userInterfaceStyle = [v6 userInterfaceStyle];
  if (userInterfaceStyle != [changeCopy userInterfaceStyle])
  {
    [(UITextView *)self _updateTextEffectsConfigurationIfNeeded];
  }
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  windowCopy = window;
  toWindowCopy = toWindow;
  v13.receiver = self;
  v13.super_class = UITextView;
  [(UIScrollView *)&v13 _didMoveFromWindow:windowCopy toWindow:toWindowCopy];
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
        [(UITextView *)self _adjustFontForAccessibilityTraits:1];
      }
    }
  }
}

- (id)_layoutDebuggingTitle
{
  text = [(UITextView *)self text];
  v4 = text;
  if (text)
  {
    string = text;
  }

  else
  {
    attributedText = [(UITextView *)self attributedText];
    string = [attributedText string];
  }

  return string;
}

- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self alignmentRectForFrame:?];
  self->_preferredMaxLayoutWidth = v8;
  v9.receiver = self;
  v9.super_class = UITextView;
  [(UIView *)&v9 _prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:x, y, width, height];
}

- (void)_scrollRect:(CGRect)rect toVisibleInContainingScrollView:(BOOL)view
{
  viewCopy = view;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _scroller = [(UIView *)self _scroller];
  [_scroller convertRect:self fromView:{x, y, width, height}];
  v13 = CGRectInset(v12, 0.0, -4.0);
  [_scroller scrollRectToVisible:viewCopy animated:{v13.origin.x, v13.origin.y, v13.size.width, v13.size.height}];
}

- (void)_scrollSelectionToVisibleInContainingScrollView:(BOOL)view
{
  viewCopy = view;
  selectedRange = [(UITextView *)self selectedRange];
  [(UITextView *)self _rectForScrollToVisible:selectedRange, v6];

  [(UITextView *)self _scrollRect:viewCopy toVisibleInContainingScrollView:?];
}

- (void)_keyboardDidShow:(id)show
{
  if ([(UIView *)self isFirstResponder])
  {
    if ([(UIScrollView *)self isScrollEnabled])
    {

      [(UITextView *)self scrollSelectionToVisible:1];
    }

    else
    {

      [(UITextView *)self _scrollSelectionToVisibleInContainingScrollView:1];
    }
  }
}

- (BOOL)_shouldScrollEnclosingScrollView
{
  if ([(UIScrollView *)self isScrollEnabled]|| ![(UITextView *)self isEditing])
  {
    LOBYTE(v4) = 0;
  }

  else if ([(UIView *)self isFirstResponder])
  {
    window = [(UIView *)self window];
    v4 = [window _isSettingFirstResponder] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (BOOL)canBecomeFirstResponder
{
  window = [(UIView *)self window];
  if (window)
  {
    v4 = window;
    _containedInAbsoluteResponderChain = [(UIView *)self _containedInAbsoluteResponderChain];

    if (!_containedInAbsoluteResponderChain)
    {
      return 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (*&self->_tvFlags & 2) != 0 && (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained textViewShouldBeginEditing:self];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)canResignFirstResponder
{
  if (![(UITextView *)self isEditing])
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained textViewShouldEndEditing:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_cleanUpForResignFirstResponder
{
  if (self)
  {
    if (([self _preserveSelectionDisplayForTextFormatting] & 1) == 0)
    {
      [self[276] setSelectionDisplayVisible:0];
      [self[276] deactivateSelection];
    }

    [self _startDataDetectorsIfNeeded];
    if ([self isEditable])
    {
      [self _notifyDidEndEditing];
      canvasView = [self[272] canvasView];
      [canvasView isEditingDidChange];

      if ([self shouldAutoscrollAboveBottom])
      {
        [self updateAutoscrollAboveBottom];
      }
    }

    [self _updateSelectionGestures];
    WeakRetained = objc_loadWeakRetained(self + 275);
    [WeakRetained didEndEditing];
  }
}

- (BOOL)_finishResignFirstResponder
{
  v5.receiver = self;
  v5.super_class = UITextView;
  _finishResignFirstResponder = [(UIResponder *)&v5 _finishResignFirstResponder];
  if (_finishResignFirstResponder && (*&self->_tvFlags & 4) == 0)
  {
    [(UITextView *)&self->super.super.super.super.isa _cleanUpForResignFirstResponder];
  }

  return _finishResignFirstResponder;
}

- (void)_notifyDidEndEditing
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained textViewDidEndEditing:self];
  }

  [(UITextView *)self _hideTextFormattingForResignFirstResponderIfNeeded];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UITextViewTextDidEndEditingNotification" object:self];
}

- (BOOL)allowsEditingTextAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  allowsEditingTextAttributes = [WeakRetained allowsEditingTextAttributes];

  return allowsEditingTextAttributes;
}

- (void)setAllowsEditingTextAttributes:(BOOL)allowsEditingTextAttributes
{
  v3 = allowsEditingTextAttributes;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setAllowsEditingTextAttributes:v3];
}

- (void)setUsesTiledViews:(BOOL)views
{
  viewsCopy = views;
  if (dyld_program_sdk_at_least())
  {
    if (setUsesTiledViews__once != -1)
    {

      dispatch_once(&setUsesTiledViews__once, &__block_literal_global_407_2);
    }
  }

  else
  {
    textLayoutController = self->_textLayoutController;

    [(_UITextLayoutController *)textLayoutController setUsesTiledViews:viewsCopy];
  }
}

void __32__UITextView_setUsesTiledViews___block_invoke()
{
  v0 = *(__UILogGetCategoryCachedImpl("Warning", &_UISiriTrackingAttribute_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "-setUsesTiledViews: is no longer supported on iOS 13. Tiling is always on. If you explicitly need to disable tiling, use -_disableTiledViews", v1, 2u);
  }
}

- (BOOL)tiledViewsDrawAsynchronously
{
  canvasView = [(_UITextContainerView *)self->_containerView canvasView];
  layer = [canvasView layer];
  drawsAsynchronously = [layer drawsAsynchronously];

  return drawsAsynchronously;
}

- (void)setTiledViewsDrawAsynchronously:(BOOL)asynchronously
{
  asynchronouslyCopy = asynchronously;
  canvasView = [(_UITextContainerView *)self->_containerView canvasView];
  layer = [canvasView layer];
  [layer setDrawsAsynchronously:asynchronouslyCopy];
}

- (void)setCustomRenderController:(id)controller
{
  controllerCopy = controller;
  customRenderController = self->_customRenderController;
  if (customRenderController != controllerCopy)
  {
    v27 = controllerCopy;
    self->_customRenderController = 0;

    objc_storeStrong(&self->_customRenderController, controller);
    [(NSCustomTextRendering *)self->_customRenderController setDelegate:self];
    v7 = objc_opt_respondsToSelector();
    v8 = 0x10000;
    if ((v7 & 1) == 0)
    {
      v8 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFEFFFFLL | v8);
    v9 = objc_opt_respondsToSelector();
    v10 = 0;
    if (v9)
    {
      v11 = objc_opt_respondsToSelector();
      v10 = 0x800000;
      if ((v11 & 1) == 0)
      {
        v10 = 0;
      }
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFF7FFFFFLL | v10);
    v12 = objc_opt_respondsToSelector();
    v13 = 0x1000000;
    if ((v12 & 1) == 0)
    {
      v13 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFEFFFFFFLL | v13);
    v14 = objc_opt_respondsToSelector();
    v15 = 0x20000;
    if ((v14 & 1) == 0)
    {
      v15 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFDFFFFLL | v15);
    v16 = objc_opt_respondsToSelector();
    v17 = 0x40000;
    if ((v16 & 1) == 0)
    {
      v17 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFBFFFFLL | v17);
    v18 = objc_opt_respondsToSelector();
    v19 = 0x80000;
    if ((v18 & 1) == 0)
    {
      v19 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFF7FFFFLL | v19);
    v20 = objc_opt_respondsToSelector();
    v21 = 0x100000;
    if ((v20 & 1) == 0)
    {
      v21 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFEFFFFFLL | v21);
    v22 = objc_opt_respondsToSelector();
    v23 = 0x200000;
    if ((v22 & 1) == 0)
    {
      v23 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFDFFFFFLL | v23);
    v24 = objc_opt_respondsToSelector();
    v25 = 0x400000;
    if ((v24 & 1) == 0)
    {
      v25 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFBFFFFFLL | v25);
    canvasView = [(_UITextContainerView *)self->_containerView canvasView];
    [canvasView flushElementViews];

    controllerCopy = v27;
  }
}

- (void)setAllowsTextAnimations:(BOOL)animations
{
  if (self->_allowsTextAnimations != animations)
  {
    animationsCopy = animations;
    self->_allowsTextAnimations = animations;
    textLayoutManager = [(UITextView *)self textLayoutManager];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:animationsCopy];
    [textLayoutManager setValue:v6 forKey:@"requiresCTLineRef"];

    _textInputTraits = [(UITextView *)self _textInputTraits];
    v8 = _textInputTraits;
    if (animationsCopy)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    [_textInputTraits setAllowsTextAnimationsType:v9];

    if (self->_allowsTextAnimations)
    {
      v10 = UITextAnimationsNewRenderController();
      [(UITextView *)self setCustomRenderController:v10];
    }

    else
    {
      [(UITextView *)self setCustomRenderController:0];
    }

    if (animationsCopy)
    {
      canvasView = [(_UITextContainerView *)self->_containerView canvasView];
      [canvasView configureCustomTextRenderer];
    }

    canvasView2 = [(_UITextContainerView *)self->_containerView canvasView];
    [canvasView2 setNeedsLayout];
  }
}

- (CGRect)_customRenderBounds
{
  if (*(&self->_tvFlags + 3))
  {
    [(NSCustomTextRendering *)self->_customRenderController customTextBounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(UITextView *)self textContainerInset];
    v16 = v15;
    v18 = v17;
    v20 = -v19;
    v3 = v8 - v17;
    v4 = v10 - v16;
    v5 = v12 - (-v21 - v18);
    v6 = v14 - (v20 - v16);
  }

  else
  {
    [(UIView *)self bounds];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_setCustomRenderDisplayLink:(id)link
{
  linkCopy = link;
  if (objc_opt_respondsToSelector())
  {
    [(NSCustomTextRendering *)self->_customRenderController setExternalDisplayLink:linkCopy];
  }
}

- (_NSCustomTextRenderingDisplayLink)_customRenderDisplayLink
{
  if (objc_opt_respondsToSelector())
  {
    externalDisplayLink = [(NSCustomTextRendering *)self->_customRenderController externalDisplayLink];
  }

  else
  {
    externalDisplayLink = 0;
  }

  return externalDisplayLink;
}

- (CGPoint)_convertPointFromRenderSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  customRenderController = [(UITextView *)self customRenderController];
  if (customRenderController && [(UITextView *)self _customRenderControllerCanConvertPointFromRenderSpace])
  {
    [customRenderController convertPointFromRenderSpace:{x, y}];
    x = v7;
    y = v8;
  }

  v9 = x;
  v10 = y;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)_convertPointToRenderSpace:(CGPoint)space textPosition:(id)position
{
  y = space.y;
  x = space.x;
  positionCopy = position;
  customRenderController = [(UITextView *)self customRenderController];
  if (customRenderController && [(UITextView *)self _customRenderControllerCanConvertPointToRenderSpaceWithPosition])
  {
    v9 = positionCopy;
    v10 = [v9 affinity] == 0;
    location = [v9 location];

    [customRenderController convertPointToRenderSpace:location location:v10 affinity:{x, y}];
    x = v12;
    y = v13;
  }

  v14 = x;
  v15 = y;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)_convertPointToRenderSpace:(CGPoint)space textRange:(id)range
{
  y = space.y;
  x = space.x;
  rangeCopy = range;
  customRenderController = [(UITextView *)self customRenderController];
  if (customRenderController)
  {
    if ([(UITextView *)self _customRenderControllerCanConvertPointToRenderSpace])
    {
      _unionNSTextRange = [rangeCopy _unionNSTextRange];
      [customRenderController convertPointToRenderSpace:_unionNSTextRange textRange:{x, y}];
    }

    else
    {
      if (![(UITextView *)self _customRenderControllerCanConvertPointToTextAnimationsCoordinateSpace])
      {
        [customRenderController convertPointToTextAnimationsCoordinateSpace:{x, y}];
        x = v12;
        y = v13;
        goto LABEL_8;
      }

      _unionNSTextRange = [rangeCopy _unionNSTextRange];
      [customRenderController convertPointToTextAnimationsCoordinateSpace:_unionNSTextRange textRange:{x, y}];
    }

    x = v10;
    y = v11;
  }

LABEL_8:

  v14 = x;
  v15 = y;
  result.y = v15;
  result.x = v14;
  return result;
}

- (id)_animatorForTextAnimation:(id)animation
{
  if ((*(&self->_tvFlags + 2) & 0x80) != 0)
  {
    v5 = [(NSCustomTextRendering *)self->_customRenderController animatorForTextAnimation:animation, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_animatorForTextAnimation:(id)animation notify:(id)notify
{
  if ((*(&self->_tvFlags + 2) & 0x80) != 0)
  {
    v6 = [(NSCustomTextRendering *)self->_customRenderController animatorForTextAnimation:animation notify:notify, v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addGhostedRange:(id)range
{
  if (range)
  {
    [(_UITextLayoutController *)self->_textLayoutController addGhostedRange:?];
  }
}

- (void)setScrollEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _needsDoubleUpdateConstraintsPass = [(UITextView *)self _needsDoubleUpdateConstraintsPass];
  isScrollEnabled = [(UIScrollView *)self isScrollEnabled];
  v8.receiver = self;
  v8.super_class = UITextView;
  [(UIScrollView *)&v8 setScrollEnabled:enabledCopy];
  if (isScrollEnabled != enabledCopy)
  {
    [(UIView *)self _needsDoubleUpdateConstraintsPassMayHaveChangedFrom:_needsDoubleUpdateConstraintsPass];
    [(UITextView *)self _updateContainerTileAndSizingFlags];
    [(UITextView *)self _resyncContainerFrameForNonAutolayout];
    if (enabledCopy)
    {
      [(UIView *)self setClipsToBounds:1];
      *&self->_textContainerInsetAdjustment.top = 0u;
      *&self->_textContainerInsetAdjustment.bottom = 0u;
      *&self->_tvFlags &= 0xFFFFFFFFFFFF9FFFLL;
    }

    else
    {
      if (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_LabelDisableDefaultClipping, @"LabelDisableDefaultClipping"))
      {
        v7 = dyld_program_sdk_at_least();
      }

      else
      {
        v7 = byte_1ED48A904;
      }

      [(UIView *)self setClipsToBounds:v7 ^ 1u];
    }
  }
}

- (void)_setInteractiveTextSelectionDisabled:(BOOL)disabled
{
  v4 = 16;
  if (!disabled)
  {
    v4 = 0;
  }

  self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFFFFEFLL | v4);
  if (disabled && [(UITextView *)self isEditable])
  {

    [(UITextView *)self setEditable:0];
  }

  else
  {
    [(UITextView *)self resignFirstResponder];

    [(UITextView *)self _updateSelectionGestures];
  }
}

- (BOOL)_shouldShowEditMenu
{
  _showsEditMenu = [(UITextView *)self _showsEditMenu];
  if (_showsEditMenu)
  {
    LOBYTE(_showsEditMenu) = ![(UITextView *)self _shouldSuppressEditMenuForTextFormatting];
  }

  return _showsEditMenu;
}

- (void)setShouldPresentSheetsInAWindowLayeredAboveTheKeyboard:(BOOL)keyboard
{
  v3 = 64;
  if (!keyboard)
  {
    v3 = 0;
  }

  self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setNeedsFrameUpdateForSurface:(id)surface
{
  canvasView = [(_UITextContainerView *)self->_containerView canvasView];
  [canvasView setNeedsLayout];
}

- (void)_updateInteractionGeometry
{
  interactionAssistant = [(UITextView *)self interactionAssistant];
  [interactionAssistant updateSelectionForTextAnimation];
}

- (void)_willDrawContentOfSurface:(id)surface withBlock:(id)block
{
  blockCopy = block;
  if (os_variant_has_internal_diagnostics())
  {
    if (!self)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
      }
    }
  }

  else if (!self)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_willDrawContentOfSurface_withBlock____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Attempted to begin using the effective theme of a nil view.", v11, 2u);
    }
  }

  v6 = +[UITraitCollection _currentTraitCollectionIfExists];
  traitCollection = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:traitCollection];

  v8 = _UISetCurrentFallbackEnvironment(self);
  blockCopy[2](blockCopy);

  _UIRestorePreviousFallbackEnvironment(v8);
  [UITraitCollection setCurrentTraitCollection:v6];
}

- (void)_showTextFormattingOptions:(id)options
{
  optionsCopy = options;
  _configurationForTextFormattingOptions = [(UITextView *)self _configurationForTextFormattingOptions];
  if (_configurationForTextFormattingOptions)
  {
    [(UITextView *)self _prepareForTextFormattingControllerPresentationWithConfiguration:_configurationForTextFormattingOptions sender:optionsCopy];
  }
}

- (void)_showTextFormattingAnimationOptions:(id)options
{
  optionsCopy = options;
  if (self->_allowsTextAnimations)
  {
    v13 = optionsCopy;
    [(UIResponder *)self _endWritingTools];
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 removeAutocorrection];

    _supportedAnimationNamesForTextFormatting = [(UITextView *)self _supportedAnimationNamesForTextFormatting];
    _supportedAnimationTitlesForTextFormatting = [(UITextView *)self _supportedAnimationTitlesForTextFormatting];
    _supportedAnimationAccessibilityHintsForTextFormatting = [(UITextView *)self _supportedAnimationAccessibilityHintsForTextFormatting];
    v9 = [UITextFormattingViewControllerConfiguration _forTextAnimationsUIWithSupportedAnimationNames:_supportedAnimationNamesForTextFormatting titles:_supportedAnimationTitlesForTextFormatting accessibilityHints:_supportedAnimationAccessibilityHintsForTextFormatting];
    if (-[UIView isFirstResponder](self, "isFirstResponder") && (-[UIView traitCollection](self, "traitCollection"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 userInterfaceIdiom], v10, !v11))
    {
      v12 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];
      [v12 showForResponder:self sender:self];

      [(UITextView *)self _updateTextFormattingController];
    }

    else
    {
      [(UITextView *)self _prepareForTextFormattingControllerPresentationWithConfiguration:v9 sender:v13];
    }

    optionsCopy = v13;
  }
}

- (void)_hideTextFormattingOptions:(id)options
{
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom])
  {

    goto LABEL_3;
  }

  v5 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];

  if (!v5)
  {
LABEL_3:
    if (self->_textFormattingViewController)
    {

      [(UITextView *)self _dismissTextFormattingControllerIfNeededWithAnimation:1];
    }

    return;
  }

  v6 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];
  [v6 hideForResponder:self];
}

- (id)_descriptorForTextFormattingOptions
{
  v63 = *MEMORY[0x1E69E9840];
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__217;
  v59 = __Block_byref_object_dispose__217;
  v60 = 0;
  _configurationForTextFormattingOptions = [(UITextView *)self _configurationForTextFormattingOptions];
  selectedRange = [(UITextView *)self selectedRange];
  v5 = v4;
  if (v4 && (v6 = selectedRange, selectedRange + v4 <= [(NSTextStorage *)self->_textStorage length]))
  {
    v30 = [[UITextFormattingViewControllerFormattingDescriptor alloc] initWithString:self->_textStorage range:v6, v5];
    v31 = v56[5];
    v56[5] = v30;

    formattingStyles = [_configurationForTextFormattingOptions formattingStyles];
    if (formattingStyles)
    {
      formattingStyles2 = [_configurationForTextFormattingOptions formattingStyles];
      v34 = [formattingStyles2 count] == 0;

      if (!v34)
      {
        textStorage = self->_textStorage;
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __49__UITextView__descriptorForTextFormattingOptions__block_invoke;
        v52[3] = &unk_1E7126998;
        v53 = _configurationForTextFormattingOptions;
        v54 = &v55;
        [(NSTextStorage *)textStorage enumerateAttributesInRange:v6 options:v5 usingBlock:0, v52];
        formattingStyles5 = v53;
LABEL_28:
      }
    }
  }

  else
  {
    v7 = [UITextFormattingViewControllerFormattingDescriptor alloc];
    typingAttributes = [(UITextView *)self typingAttributes];
    v9 = [(UITextFormattingViewControllerFormattingDescriptor *)v7 initWithAttributes:typingAttributes];
    v10 = v56[5];
    v56[5] = v9;

    formattingStyles3 = [_configurationForTextFormattingOptions formattingStyles];
    if (formattingStyles3)
    {
      formattingStyles4 = [_configurationForTextFormattingOptions formattingStyles];
      v13 = [formattingStyles4 count] == 0;

      if (!v13)
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        formattingStyles5 = [_configurationForTextFormattingOptions formattingStyles];
        v15 = [formattingStyles5 countByEnumeratingWithState:&v48 objects:v62 count:16];
        if (v15)
        {
          obj = formattingStyles5;
          v42 = *v49;
          while (2)
          {
            v41 = v15;
            for (i = 0; i != v41; ++i)
            {
              if (*v49 != v42)
              {
                objc_enumerationMutation(obj);
              }

              v43 = *(*(&v48 + 1) + 8 * i);
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              attributes = [v43 attributes];
              allKeys = [attributes allKeys];

              v20 = [allKeys countByEnumeratingWithState:&v44 objects:v61 count:16];
              if (v20)
              {
                v21 = *v45;
                do
                {
                  for (j = 0; j != v20; ++j)
                  {
                    if (*v45 != v21)
                    {
                      objc_enumerationMutation(allKeys);
                    }

                    v23 = *(*(&v44 + 1) + 8 * j);
                    typingAttributes2 = [(UITextView *)self typingAttributes];
                    v25 = [typingAttributes2 valueForKey:v23];

                    if (v25)
                    {
                      typingAttributes3 = [(UITextView *)self typingAttributes];
                      v27 = [typingAttributes3 valueForKey:v23];
                      [dictionary setValue:v27 forKey:v23];
                    }
                  }

                  v20 = [allKeys countByEnumeratingWithState:&v44 objects:v61 count:16];
                }

                while (v20);
              }

              attributes2 = [v43 attributes];
              v29 = [attributes2 isEqualToDictionary:dictionary];

              if (v29)
              {
                styleKey = [v43 styleKey];
                [v56[5] setFormattingStyleKey:styleKey];

                goto LABEL_27;
              }
            }

            v15 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }

LABEL_27:
          formattingStyles5 = obj;
        }

        goto LABEL_28;
      }
    }
  }

  v37 = v56[5];

  _Block_object_dispose(&v55, 8);

  return v37;
}

void __49__UITextView__descriptorForTextFormattingOptions__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = a1;
  obj = [*(a1 + 32) formattingStyles];
  v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v26)
  {
    v25 = *v32;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [MEMORY[0x1E695DF90] dictionary];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v10 = [v8 attributes];
        v11 = [v10 allKeys];

        v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v27 + 1) + 8 * j);
              v17 = [v6 valueForKey:v16];

              if (v17)
              {
                v18 = [v6 valueForKey:v16];
                [v9 setValue:v18 forKey:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v13);
        }

        v19 = [v8 attributes];
        v20 = [v19 isEqualToDictionary:v9];

        if (v20)
        {
          v21 = [v8 styleKey];
          [*(*(*(v22 + 40) + 8) + 40) setFormattingStyleKey:v21];

          *a5 = 1;
          goto LABEL_20;
        }
      }

      v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
}

- (id)_disabledComponentsForTextFormattingOptions
{
  v7[1] = *MEMORY[0x1E69E9840];
  canAccessLayoutManager = [(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager];
  v3 = MEMORY[0x1E695DFD8];
  if (canAccessLayoutManager)
  {
    v7[0] = @"UITextFormattingViewControllerListStylesComponent";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v5 = [v3 setWithArray:v4];
  }

  else
  {
    v5 = objc_opt_new();
  }

  return v5;
}

- (void)setTextFormattingConfiguration:(id)configuration
{
  v4 = [configuration copy];
  textFormattingConfiguration = self->_textFormattingConfiguration;
  self->_textFormattingConfiguration = v4;
}

- (BOOL)_areDefaultTextFormattingAffordancesAvailable
{
  if (!self->_canShowTextFormattingOptions || ![(UITextView *)self isEditable]|| ![(UITextView *)self isSelectable]|| ![(UITextView *)self allowsEditingTextAttributes])
  {
    return 0;
  }

  _configurationForTextFormattingOptions = [(UITextView *)self _configurationForTextFormattingOptions];
  if (_configurationForTextFormattingOptions)
  {
    _supportedAnimationNamesForTextFormatting = [(UITextView *)self _supportedAnimationNamesForTextFormatting];
    v5 = _supportedAnimationNamesForTextFormatting == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isTextFormattingInProgress
{
  if ([(UITextView *)self _isTextFormattingControllerPresented])
  {
    return 1;
  }

  v3 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];
  v2 = v3 != 0;

  return v2;
}

- (BOOL)_isTextFormattingControllerPresented
{
  textFormattingViewController = self->_textFormattingViewController;
  if (!textFormattingViewController)
  {
    return 0;
  }

  presentingViewController = [(UIViewController *)textFormattingViewController presentingViewController];
  v4 = presentingViewController != 0;

  return v4;
}

- (BOOL)_isInCompactHorizontalSizeClass
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = [traitCollection horizontalSizeClass] == 1;

  return v3;
}

- (BOOL)_shouldHideInputViewsForTextFormatting
{
  textFormattingViewController = self->_textFormattingViewController;
  if (textFormattingViewController)
  {
    popoverPresentationController = [(UIViewController *)textFormattingViewController popoverPresentationController];
    sourceView = [popoverPresentationController sourceView];
    superview = [(UIView *)self superview];
    v7 = superview;
    if (superview)
    {
      selfCopy = superview;
    }

    else
    {
      selfCopy = self;
    }

    if (sourceView == selfCopy)
    {
      configuration = [(UITextFormattingViewController *)self->_textFormattingViewController configuration];
      v9 = [configuration _isTextAnimationsConfiguration] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)_shouldSuppressEditMenuForTextFormatting
{
  textFormattingViewController = self->_textFormattingViewController;
  if (textFormattingViewController)
  {
    popoverPresentationController = [(UIViewController *)textFormattingViewController popoverPresentationController];
    sourceView = [popoverPresentationController sourceView];
    superview = [(UIView *)self superview];
    v7 = superview;
    if (superview)
    {
      selfCopy = superview;
    }

    else
    {
      selfCopy = self;
    }

    if (sourceView == selfCopy)
    {
      configuration = [(UITextFormattingViewController *)self->_textFormattingViewController configuration];
      _isTextAnimationsConfiguration = ([configuration _isTextAnimationsConfiguration] & 1) != 0 || -[UITextFormattingViewControllerConfiguration _isTextAnimationsConfiguration](self->_textFormattingRestorationConfiguration, "_isTextAnimationsConfiguration");
    }

    else
    {
      _isTextAnimationsConfiguration = [(UITextFormattingViewControllerConfiguration *)self->_textFormattingRestorationConfiguration _isTextAnimationsConfiguration];
    }

    return _isTextAnimationsConfiguration;
  }

  else
  {
    textFormattingRestorationConfiguration = self->_textFormattingRestorationConfiguration;

    return [(UITextFormattingViewControllerConfiguration *)textFormattingRestorationConfiguration _isTextAnimationsConfiguration];
  }
}

- (void)_textViewWillPresentTextFormattingOptions
{
  _preferredPresentingControllerForTextFormatting = [(UITextView *)self _preferredPresentingControllerForTextFormatting];
  presentedViewController = [_preferredPresentingControllerForTextFormatting presentedViewController];

  if (presentedViewController)
  {
    configuration = [(UITextFormattingViewController *)self->_textFormattingViewController configuration];
    if ([configuration _isTextAnimationsConfiguration])
    {
      traitCollection = [(UIView *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 6)
      {
        return;
      }
    }

    else
    {
    }

    _preferredPresentingControllerForTextFormatting2 = [(UITextView *)self _preferredPresentingControllerForTextFormatting];
    presentedViewController2 = [_preferredPresentingControllerForTextFormatting2 presentedViewController];
    [presentedViewController2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_prepareForTextFormattingControllerPresentationWithConfiguration:(id)configuration sender:(id)sender
{
  configurationCopy = configuration;
  senderCopy = sender;
  if (self->_canShowTextFormattingOptions)
  {
    if (self->_textFormattingViewController)
    {
      [(UITextView *)self _dismissTextFormattingControllerIfNeededWithAnimation:1];
      goto LABEL_25;
    }

    [configurationCopy set_preferringDimmingVisible:0];
    [configurationCopy set_textViewConfiguration:1];
    v7 = [[UITextFormattingViewController alloc] initWithConfiguration:configurationCopy];
    [(UITextFormattingViewController *)v7 _setInternalDelegate:self];
    [(UITextFormattingViewController *)v7 _setEditResponder:self];
    [(UIViewController *)v7 setModalPresentationStyle:7];
    popoverPresentationController = [(UIViewController *)v7 popoverPresentationController];
    [popoverPresentationController setCanOverlapSourceViewRect:1];

    sheetPresentationController = [(UIViewController *)v7 sheetPresentationController];
    [sheetPresentationController setPrefersEdgeAttachedInCompactHeight:1];

    popoverPresentationController2 = [(UIViewController *)v7 popoverPresentationController];
    [popoverPresentationController2 _setShouldDimPresentingViewTint:0];

    if ([configurationCopy _isTextAnimationsConfiguration])
    {
      popoverPresentationController3 = [(UIViewController *)v7 popoverPresentationController];
      [popoverPresentationController3 setDelegate:v7];
    }

    if ([(UITextView *)self _isInCompactHorizontalSizeClass]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if ([configurationCopy _isTextAnimationsConfiguration])
        {
          v15 = 2;
        }

        else
        {
          v15 = 15;
        }

        popoverPresentationController4 = [(UIViewController *)v7 popoverPresentationController];
        [popoverPresentationController4 setPermittedArrowDirections:v15];

        popoverPresentationController5 = [(UIViewController *)v7 popoverPresentationController];
        superview = [(UIView *)self superview];
        v19 = superview;
        if (superview)
        {
          selfCopy = superview;
        }

        else
        {
          selfCopy = self;
        }

        [popoverPresentationController5 setSourceView:selfCopy];

        if ([(UITextView *)self _isInCompactHorizontalSizeClass])
        {
          [(UITextFormattingViewController *)v7 _setShouldDeferFontPickerPresentationToViewController:0];
LABEL_21:
          traitCollection = [(UIView *)self traitCollection];
          if ([traitCollection userInterfaceIdiom] == 6)
          {
            _preferredPresentingControllerForTextFormatting = [(UITextView *)self _preferredPresentingControllerForTextFormatting];
            [(UITextFormattingViewController *)v7 _setShouldDeferColorPickerPresentationToViewController:_preferredPresentingControllerForTextFormatting];
          }

          else
          {
            [(UITextFormattingViewController *)v7 _setShouldDeferColorPickerPresentationToViewController:0];
          }

          textFormattingViewController = self->_textFormattingViewController;
          self->_textFormattingViewController = v7;

          [(UITextView *)self _updateTextFormattingController];
          [(UITextView *)self _presentTextFormattingController];
          goto LABEL_25;
        }

LABEL_20:
        _preferredPresentingControllerForTextFormatting2 = [(UITextView *)self _preferredPresentingControllerForTextFormatting];
        [(UITextFormattingViewController *)v7 _setShouldDeferFontPickerPresentationToViewController:_preferredPresentingControllerForTextFormatting2];

        goto LABEL_21;
      }

      popoverPresentationController6 = [(UIViewController *)v7 popoverPresentationController];
      [popoverPresentationController6 setPermittedArrowDirections:15];

      popoverPresentationController7 = [(UIViewController *)v7 popoverPresentationController];
      [popoverPresentationController7 setSourceView:senderCopy];
    }

    else
    {
      popoverPresentationController8 = [(UIViewController *)v7 popoverPresentationController];
      [popoverPresentationController8 setPermittedArrowDirections:15];

      popoverPresentationController7 = [(UIViewController *)v7 popoverPresentationController];
      [popoverPresentationController7 setBarButtonItem:senderCopy];
    }

    goto LABEL_20;
  }

LABEL_25:
}

- (id)_preferredPresentingControllerForTextFormatting
{
  _viewControllerForAncestor = [(UIView *)self _viewControllerForAncestor];
  configuration = [(UITextFormattingViewController *)self->_textFormattingViewController configuration];
  if ([configuration _isTextAnimationsConfiguration])
  {
    _isInSheetPresentation = [_viewControllerForAncestor _isInSheetPresentation];

    if (_isInSheetPresentation)
    {
      goto LABEL_5;
    }

    configuration = [(UIView *)self window];
    rootViewController = [configuration rootViewController];

    _viewControllerForAncestor = rootViewController;
  }

LABEL_5:

  return _viewControllerForAncestor;
}

- (void)_presentTextFormattingController
{
  if (self->_textFormattingViewController)
  {
    [(UITextView *)self _textViewWillPresentTextFormattingOptions];
    if (self->_textFormattingViewController)
    {
      objc_initWeak(location, self);
      _preferredPresentingControllerForTextFormatting = [(UITextView *)self _preferredPresentingControllerForTextFormatting];
      textFormattingViewController = self->_textFormattingViewController;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __46__UITextView__presentTextFormattingController__block_invoke;
      v6[3] = &unk_1E70F5A28;
      objc_copyWeak(&v7, location);
      [_preferredPresentingControllerForTextFormatting presentViewController:textFormattingViewController animated:1 completion:v6];

      [(UITextView *)self _startSuppressingKeyboardForTextFormatting:self->_textFormattingViewController];
      objc_destroyWeak(&v7);
      objc_destroyWeak(location);
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("TextFormatting", &_presentTextFormattingController___s_category) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Text Formatting View Controller is missing just before presentation", location, 2u);
      }
    }
  }
}

void __46__UITextView__presentTextFormattingController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [WeakRetained _isInCompactHorizontalSizeClass])
  {
    [WeakRetained _adjustBottomContentInsetForTextFormattingController:1];
  }

  v2 = objc_loadWeakRetained((a1 + 32));
  v3 = [v2 interactionAssistant];
  [v3 dismissMenuForInputUI];
}

- (id)_scrollViewToAdjustForTextFormattingController
{
  selfCopy = self;
  superview = [(UIView *)self superview];
  if (superview)
  {
    v4 = superview;
    v5 = 0;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v4;

        v5 = v6;
      }

      superview2 = [v4 superview];

      v4 = superview2;
    }

    while (superview2);
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    selfCopy = v5;
  }

  v8 = selfCopy;

  return selfCopy;
}

- (void)_adjustBottomContentInsetForTextFormattingController:(BOOL)controller
{
  controllerCopy = controller;
  if (![(UITextView *)self _shouldAdjustKeyboardGuidesForTextFormattingIfNeeded])
  {
    _scrollViewToAdjustForTextFormattingController = [(UITextView *)self _scrollViewToAdjustForTextFormattingController];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__UITextView__adjustBottomContentInsetForTextFormattingController___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v6 = _Block_copy(aBlock);
    if (controllerCopy)
    {
      [(UITextView *)self _textFormattingControllerOverlapHeight];
      v8 = v7;
      [_scrollViewToAdjustForTextFormattingController adjustedContentInset];
      v10 = v8 - v9;
      if (v8 - v9 <= 0.0)
      {
LABEL_9:

        return;
      }

      [_scrollViewToAdjustForTextFormattingController contentInset];
      [_scrollViewToAdjustForTextFormattingController contentInset];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v10 + v17;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __67__UITextView__adjustBottomContentInsetForTextFormattingController___block_invoke_2;
      v36[3] = &unk_1E70F3B20;
      v19 = v37;
      v37[0] = _scrollViewToAdjustForTextFormattingController;
      v37[1] = v12;
      v37[2] = v14;
      *&v37[3] = v18;
      v37[4] = v16;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __67__UITextView__adjustBottomContentInsetForTextFormattingController___block_invoke_3;
      v34[3] = &unk_1E70F3608;
      v20 = &v35;
      v35 = v6;
      [UIView animateWithDuration:v36 animations:v34 completion:0.2];
      self->_bottomContentInsetTextFormattingAdjustment = v10;
      self->_bottomContentInsetAfterTextFormattingAdjustment = v18;
    }

    else
    {
      if (self->_bottomContentInsetTextFormattingAdjustment <= 0.0)
      {
        goto LABEL_9;
      }

      [_scrollViewToAdjustForTextFormattingController contentInset];
      if (v21 != self->_bottomContentInsetAfterTextFormattingAdjustment)
      {
        goto LABEL_9;
      }

      [_scrollViewToAdjustForTextFormattingController contentInset];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28 - self->_bottomContentInsetTextFormattingAdjustment;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __67__UITextView__adjustBottomContentInsetForTextFormattingController___block_invoke_4;
      v32[3] = &unk_1E70F3B20;
      v19 = v33;
      v33[0] = _scrollViewToAdjustForTextFormattingController;
      v33[1] = v23;
      v33[2] = v25;
      *&v33[3] = v29;
      v33[4] = v27;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __67__UITextView__adjustBottomContentInsetForTextFormattingController___block_invoke_5;
      v30[3] = &unk_1E70F3608;
      v20 = &v31;
      v31 = v6;
      [UIView animateWithDuration:v32 animations:v30 completion:0.2];
    }

    goto LABEL_9;
  }
}

uint64_t __67__UITextView__adjustBottomContentInsetForTextFormattingController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isScrollEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 scrollSelectionToVisible:1];
  }

  else
  {

    return [v3 _scrollSelectionToVisibleInContainingScrollView:1];
  }
}

- (double)_textFormattingControllerOverlapHeight
{
  height = 0.0;
  if (self->_textFormattingViewController && [(UITextView *)self _isInCompactHorizontalSizeClass])
  {
    view = [(UIViewController *)self->_textFormattingViewController view];
    view2 = [(UIViewController *)self->_textFormattingViewController view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    [view convertRect:0 toView:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    _scrollViewToAdjustForTextFormattingController = [(UITextView *)self _scrollViewToAdjustForTextFormattingController];
    superview = [_scrollViewToAdjustForTextFormattingController superview];
    [_scrollViewToAdjustForTextFormattingController frame];
    [superview convertRect:0 toView:?];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v26.origin.x = v8;
    v26.origin.y = v10;
    v26.size.width = v12;
    v26.size.height = v14;
    v28.origin.x = v18;
    v28.origin.y = v20;
    v28.size.width = v22;
    v28.size.height = v24;
    v27 = CGRectIntersection(v26, v28);
    height = v27.size.height;
  }

  return height;
}

- (void)_dismissTextFormattingControllerIfNeededWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  if ([(UITextView *)self _isTextFormattingControllerPresented])
  {
    [(UIViewController *)self->_textFormattingViewController dismissViewControllerAnimated:animationCopy completion:0];
  }

  else if (self->_textFormattingViewController)
  {
    [(UITextView *)self _textFormattingDidDisappear:?];
  }

  [(UITextView *)self _stopSuppressingKeyboardForTextFormatting:0];
}

- (BOOL)_preserveSelectionDisplayForTextFormatting
{
  textFormattingViewController = self->_textFormattingViewController;
  if (textFormattingViewController)
  {
    LOBYTE(textFormattingViewController) = self->_forceSelectionDisplayForTextFormatting;
  }

  return textFormattingViewController & 1;
}

- (void)_hideTextFormattingForResignFirstResponderIfNeeded
{
  if (!self->_textFormattingShouldSkipHidingOnResignFirstResponder)
  {
    self->_textFormattingShouldSkipRestoringFirstResponderWhenFinished = 1;
    v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v4 = [v3 _isPreservedRestorableResponder:self];

    if (v4)
    {
      [(UITextView *)self _prepareForTextFormattingRestoration];
    }

    [(UITextView *)self _hideTextFormattingOptions:0];
  }

  self->_textFormattingShouldSkipHidingOnResignFirstResponder = 0;
}

- (void)_prepareForTextFormattingRestoration
{
  configuration = [(UITextFormattingViewController *)self->_textFormattingViewController configuration];
  _isTextAnimationsConfiguration = [configuration _isTextAnimationsConfiguration];

  if (_isTextAnimationsConfiguration)
  {
    configuration2 = [(UITextFormattingViewController *)self->_textFormattingViewController configuration];
    textFormattingRestorationConfiguration = self->_textFormattingRestorationConfiguration;
    self->_textFormattingRestorationConfiguration = configuration2;
  }
}

- (void)_performTextFormattingRestorationIfNeeded
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([v4 _isPreservedRestorableResponder:self])
  {
    tvFlags = self->_tvFlags;

    if ((*&tvFlags & 4) == 0)
    {

      [(UITextView *)self _performTextFormattingRestoration];
    }
  }

  else
  {
  }
}

- (void)_performTextFormattingRestoration
{
  if (self->_textFormattingRestorationConfiguration)
  {
    textFormattingViewController = self->_textFormattingViewController;
    self->_textFormattingViewController = 0;

    if ([(UITextFormattingViewControllerConfiguration *)self->_textFormattingRestorationConfiguration _isTextAnimationsConfiguration])
    {
      [(UITextView *)self _showTextFormattingAnimationOptions:0];
    }

    else
    {
      [(UITextView *)self _prepareForTextFormattingControllerPresentationWithConfiguration:self->_textFormattingRestorationConfiguration sender:self];
    }

    textFormattingRestorationConfiguration = self->_textFormattingRestorationConfiguration;
    self->_textFormattingRestorationConfiguration = 0;
  }
}

- (BOOL)_disableAutomaticKeyboardBehavior
{
  if (self->_textFormattingViewController && self->_textFormattingKeyboardSuppressionAssertion && (-[UIResponder _responderWindow](self, "_responderWindow"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 _isSettingFirstResponder], v3, (v4 & 1) == 0))
  {
    result = 1;
    self->_didDisableAutomaticKeyboardBehaviorForTextFormatting = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UITextView;
    return [(UIResponder *)&v6 _disableAutomaticKeyboardBehavior];
  }

  return result;
}

- (id)placeholders
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
  placeholdersCopy = placeholders;
  v5 = [placeholdersCopy copy];
  attributedPlaceholders = self->_attributedPlaceholders;
  self->_attributedPlaceholders = v5;

  firstObject = [placeholdersCopy firstObject];

  [(UITextView *)self setAttributedPlaceholder:firstObject];
}

- (id)attributedPlaceholders
{
  attributedPlaceholders = self->_attributedPlaceholders;
  if (!attributedPlaceholders)
  {
    self->_attributedPlaceholders = MEMORY[0x1E695E0F0];
    attributedPlaceholders = self->_attributedPlaceholders;
  }

  return attributedPlaceholders;
}

- (void)setAttributedPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  v14 = placeholderCopy;
  if (self->_overriddenPlaceholder)
  {
    objc_storeStrong(&self->_overriddenPlaceholder, placeholder);
  }

  else
  {
    v6 = placeholderCopy;
    placeholderLabel = self->_placeholderLabel;
    if (!placeholderLabel)
    {
      v8 = [UILabel alloc];
      v9 = [(UILabel *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v10 = self->_placeholderLabel;
      self->_placeholderLabel = v9;

      font = [(UITextView *)self font];
      [(UILabel *)self->_placeholderLabel setFont:font];

      v12 = +[UIColor systemGrayColor];
      [(UILabel *)self->_placeholderLabel setTextColor:v12];

      [(UILabel *)self->_placeholderLabel setNumberOfLines:0];
      [(UILabel *)self->_placeholderLabel setAdjustsFontForContentSizeCategory:[(UITextView *)self adjustsFontForContentSizeCategory]];
      _contentView = [(UITextView *)self _contentView];
      [_contentView addSubview:self->_placeholderLabel];

      v6 = v14;
      placeholderLabel = self->_placeholderLabel;
    }

    [(UILabel *)placeholderLabel setAttributedText:v6];
    [(UITextView *)self _updatePlaceholderVisibility];
  }
}

- (id)_attributedPlaceholder
{
  if (self)
  {
    v2 = *(self + 288);
    if (v2)
    {
      self = v2;
    }

    else
    {
      self = [*(self + 287) attributedText];
    }

    v1 = vars8;
  }

  return self;
}

- (void)_setOverridePlaceholder:(id)placeholder alignment:(int64_t)alignment
{
  placeholderCopy = placeholder;
  v14 = placeholderCopy;
  if (self->_overriddenPlaceholder)
  {
    if (placeholderCopy)
    {
      [(UITextView *)self setAttributedPlaceholder:placeholderCopy];
      [(UILabel *)self->_placeholderLabel setTextAlignment:alignment];
    }

    else
    {
      [(UITextView *)self setAttributedPlaceholder:?];
      [(UILabel *)self->_placeholderLabel setTextAlignment:self->_overriddenPlaceholderAlignment];
      overriddenPlaceholder = self->_overriddenPlaceholder;
      self->_overriddenPlaceholder = 0;
    }
  }

  else if (placeholderCopy)
  {
    attributedPlaceholder = [(UITextView *)self attributedPlaceholder];
    v8 = attributedPlaceholder;
    if (attributedPlaceholder)
    {
      v9 = attributedPlaceholder;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
    }

    v11 = v9;

    textAlignment = [(UILabel *)self->_placeholderLabel textAlignment];
    [(UITextView *)self setAttributedPlaceholder:v14];
    [(UILabel *)self->_placeholderLabel setTextAlignment:alignment];
    v13 = self->_overriddenPlaceholder;
    self->_overriddenPlaceholder = v11;

    self->_overriddenPlaceholderAlignment = textAlignment;
  }

  [(UITextView *)self _updatePlaceholderVisibility];
}

- (void)_setTextSizeCacheEnabled:(BOOL)enabled
{
  if (((((*&self->_tvFlags & 0x400) == 0) ^ enabled) & 1) == 0)
  {
    v3 = 1024;
    if (!enabled)
    {
      v3 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFFFBFFLL | v3);
    if (!enabled)
    {
      intrinsicSizeCache = self->_intrinsicSizeCache;
      self->_intrinsicSizeCache = 0;
    }
  }
}

- (void)insertText:(id)text
{
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained insertText:textCopy];
}

- (void)insertText:(id)text alternatives:(id)alternatives style:(int64_t)style
{
  v6 = [off_1E70ECBA0 attributedText:text withAlternativeTexts:alternatives style:style];
  v9 = [v6 mutableCopy];

  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  typingAttributes = [WeakRetained typingAttributes];
  [v9 addAttributes:typingAttributes range:{0, objc_msgSend(v9, "length")}];

  [(UITextView *)self insertAttributedText:v9];
}

- (void)addTextAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained addTextAlternatives:alternativesCopy];
}

- (void)removeEmojiAlternatives
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained removeEmojiAlternatives];
}

- (void)deleteBackward
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained deleteBackward];
}

- (void)_deleteBackwardAndNotify:(BOOL)notify
{
  if (notify)
  {

    [(UITextView *)self deleteBackward];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__UITextView__deleteBackwardAndNotify___block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [WeakRetained _performWhileSuppressingDelegateNotifications:v5];
  }
}

void __39__UITextView__deleteBackwardAndNotify___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 2200));
  [WeakRetained deleteBackward];
}

- (unint64_t)_textLengthToDeleteBeforeSelectedRangeForSmartDelete
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  textLengthToDeleteBeforeSelectedRangeForSmartDelete = [WeakRetained textLengthToDeleteBeforeSelectedRangeForSmartDelete];

  return textLengthToDeleteBeforeSelectedRangeForSmartDelete;
}

- (void)beginSelectionChange
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained beginSelectionChange];
}

- (void)endSelectionChange
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained endSelectionChange];
}

- (void)updateSelectionImmediately
{
  interactionAssistant = [(UITextView *)self interactionAssistant];
  [interactionAssistant updateDisplayedSelection];
}

- (BOOL)_restoreFirstResponder
{
  interactionAssistant = [(UITextView *)self interactionAssistant];
  v4 = interactionAssistant;
  if (!interactionAssistant)
  {
    v7.receiver = self;
    v7.super_class = UITextView;
    if ([(UIResponder *)&v7 _restoreFirstResponder])
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  [interactionAssistant checkEditabilityAndSetFirstResponderIfNecessary];
  if (![(UIView *)self isFirstResponder])
  {
    goto LABEL_5;
  }

LABEL_3:
  [(UITextView *)self _performTextFormattingRestorationIfNeeded];
  v5 = 1;
LABEL_6:

  return v5;
}

- (void)beginFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionAssistant = [(UITextView *)self interactionAssistant];
  [interactionAssistant beginFloatingCursorAtPoint:{x, y}];
}

- (void)updateFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionAssistant = [(UITextView *)self interactionAssistant];
  [interactionAssistant updateFloatingCursorAtPoint:{x, y}];
}

- (void)updateFloatingCursorAtPoint:(CGPoint)point animated:(BOOL)animated
{
  animatedCopy = animated;
  y = point.y;
  x = point.x;
  interactionAssistant = [(UITextView *)self interactionAssistant];
  [interactionAssistant updateFloatingCursorAtPoint:animatedCopy animated:{x, y}];
}

- (void)endFloatingCursor
{
  interactionAssistant = [(UITextView *)self interactionAssistant];
  [interactionAssistant endFloatingCursor];
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  _focusBehavior = [(UIView *)self _focusBehavior];
  LOBYTE(selfCopy) = [_focusBehavior textViewCanBecomeFocused:selfCopy];

  return selfCopy;
}

- (CGRect)accessibilityFrame
{
  [(UITextView *)self visibleTextRect];

  [(UIView *)self convertRect:0 toView:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
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
    v7.super_class = UITextView;
    _systemDefaultFocusGroupIdentifier = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return _systemDefaultFocusGroupIdentifier;
}

- (void)_diagnoseFocusabilityForReport:(id)report
{
  reportCopy = report;
  if (![(UITextView *)self isSelectable])
  {
    v4 = [_UIDebugIssue issueWithDescription:@"This text view is not selectable. Text views must return YES from -isSelectable in order to be focusable."];
    [reportCopy addIssue:v4];
  }
}

- (id)editMenuForTextRange:(id)range suggestedActions:(id)actions
{
  rangeCopy = range;
  actionsCopy = actions;
  if (![(UITextView *)self _implementsEditMenu])
  {
    goto LABEL_4;
  }

  tvFlags = self->_tvFlags;
  if ((*&tvFlags & 0x8000000000) != 0)
  {
    delegate2 = [(_UITextLayoutController *)self->_textLayoutController characterRangesForTextRange:rangeCopy clippedToDocument:0];
    delegate = [(UIScrollView *)self delegate];
    v9 = [delegate textView:self editMenuForTextInRanges:delegate2 suggestedActions:actionsCopy];
  }

  else
  {
    if ((*&tvFlags & 0x4000000000) == 0)
    {
LABEL_4:
      v9 = 0;
      goto LABEL_8;
    }

    v12 = [(_UITextLayoutController *)self->_textLayoutController characterRangeForTextRange:rangeCopy];
    v14 = v13;
    delegate2 = [(UIScrollView *)self delegate];
    v9 = [delegate2 textView:self editMenuForTextInRange:v12 suggestedActions:{v14, actionsCopy}];
  }

LABEL_8:

  return v9;
}

- (void)willPresentEditMenuWithAnimator:(id)animator
{
  animatorCopy = animator;
  delegate = [(UIScrollView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(UIScrollView *)self delegate];
    [delegate2 textView:self willPresentEditMenuWithAnimator:animatorCopy];
  }
}

- (void)willDismissEditMenuWithAnimator:(id)animator
{
  animatorCopy = animator;
  delegate = [(UIScrollView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(UIScrollView *)self delegate];
    [delegate2 textView:self willDismissEditMenuWithAnimator:animatorCopy];
  }
}

- (void)_logWarningForMenuControllerUsage
{
  v2 = *(__UILogGetCategoryCachedImpl("Text", &_logWarningForMenuControllerUsage___s_category_0) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Using UIMenuController to add items into text menus is deprecated. Please implement the UITextViewDelegate API textView:editMenuForTextInRange:suggestedActions: instead.", v3, 2u);
  }
}

- (CGRect)_rectForScrollToVisible:(_NSRange)visible
{
  length = visible.length;
  location = visible.location;
  textStorage = [(UITextView *)self textStorage];
  v7 = [textStorage length];

  if (v7)
  {
    if (!length)
    {
      if (location >= v7)
      {
        length = 1;
      }

      else
      {
        textStorage2 = [(UITextView *)self textStorage];
        string = [textStorage2 string];
        location = [string rangeOfComposedCharacterSequenceAtIndex:location];
        length = v10;
      }
    }

    if (length + location >= v7)
    {
      textStorage3 = [(UITextView *)self textStorage];
      string2 = [textStorage3 string];
      location = [string2 rangeOfComposedCharacterSequenceAtIndex:v7 - 1];
      length = v13;
    }
  }

  else
  {
    location = 0;
    length = 0;
  }

  textLayoutController = self->_textLayoutController;
  [(UITextView *)self _adjustedTextContainerInset];
  [(_UITextLayoutController *)textLayoutController unionRectForCharacterRange:location bottomInset:length, v15];
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  if (CGRectIsNull(v37))
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  if (width <= 0.0)
  {
    width = 1.0;
  }

  [(NSTextContainer *)self->_textContainer textContainerOrigin];
  v21 = x + v20;
  v23 = y + v22;
  textView = [(NSTextContainer *)self->_textContainer textView];
  [(UIView *)self convertRect:textView fromView:v21, v23, width, height];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = v26;
  v34 = v28;
  v35 = v30;
  v36 = v32;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (CGPoint)_contentOffsetForScrollToVisible:(_NSRange)visible
{
  [(UITextView *)self _rectForScrollToVisible:visible.location, visible.length];
  v5 = v4;
  v7 = v6;
  [(UIScrollView *)self _effectiveContentInset];
  v9 = v8;
  v11 = v10;
  [(UIView *)self bounds];
  v14 = v13 - (v9 + v11);
  if (v14 > v7)
  {
    v15 = v9 + v12;
  }

  else
  {
    v9 = 0.0;
    v15 = v12;
  }

  if (v14 <= v7)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  [(UIScrollView *)self contentOffset];
  if (v5 + v7 >= v15 + v16)
  {
    v18 = v5 + v7 - v16;
  }

  else if (v5 < v15)
  {
    v18 = v5 - v9;
  }

  result.y = v18;
  result.x = v17;
  return result;
}

- (_NSRange)_visibleRangeWithLayout:(BOOL)layout
{
  layoutCopy = layout;
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  textView = [(NSTextContainer *)self->_textContainer textView];
  [(UIView *)self convertRect:textView toView:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  textLayoutController = self->_textLayoutController;
  textContainer = [(UITextView *)self textContainer];
  v24 = [(_UITextLayoutController *)textLayoutController textRangeForBounds:textContainer inTextContainer:layoutCopy layoutIfNeeded:v15, v17, v19, v21];

  v25 = [(_UITextLayoutController *)self->_textLayoutController characterRangeForTextRange:v24];
  v27 = v26;

  v28 = v25;
  v29 = v27;
  result.length = v29;
  result.location = v28;
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

- (void)_setSiriAnimationDictationStyleWithCharacterInsertionRate:(double)rate minimumDurationBetweenHypotheses:(double)hypotheses
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"_UITextViewSiriAnimationStyleDictationRate";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:rate];
  v10[1] = @"_UITextViewSiriAnimationStyleDictationDuration";
  v11[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:hypotheses];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  siriParameters = self->_siriParameters;
  self->_siriParameters = v8;
}

- (id)extractWordArrayFromTokensArray:(id)array
{
  v25 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  string = [MEMORY[0x1E696AD60] string];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        v11 = v8;
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (([v11 removeSpaceAfter] & 1) == 0 && (objc_msgSend(v12, "removeSpaceBefore") & 1) == 0)
        {
          [(__CFString *)string appendString:@" "];
        }

        text = [v12 text];
        [(__CFString *)string appendString:text];

        v8 = v12;
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);

    if (v8 && ([v8 removeSpaceAfter] & 1) == 0)
    {
      [(__CFString *)string appendString:@" "];
    }
  }

  else
  {

    v8 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v15 = [(__CFString *)string length];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v27.location = 0;
  v27.length = v15;
  v17 = CFStringTokenizerCreate(0, string, v27, 3uLL, currentLocale);
  while (1)
  {

    if (!CFStringTokenizerAdvanceToNextToken(v17))
    {
      break;
    }

    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v17);
    currentLocale = [(__CFString *)string substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
    [array addObject:currentLocale];
  }

  CFRelease(v17);

  return array;
}

- (void)_didRecognizeSpeechTokens:(id)tokens
{
  v4 = [(UITextView *)self extractWordArrayFromTokensArray:tokens];
  [(UITextView *)self _didRecognizeSpeechStrings:v4];
}

- (void)_didRecognizeSpeechStrings:(id)strings
{
  stringsCopy = strings;
  interactionAssistant = [(UITextView *)self interactionAssistant];
  [interactionAssistant setSelectionDisplayVisible:0];

  interactionAssistant2 = [(UITextView *)self interactionAssistant];
  [interactionAssistant2 deactivateSelection];

  if (!self->_characterStreamingManager)
  {
    v6 = [[_UICharacterStreamingManager alloc] initWithTextView:self];
    characterStreamingManager = self->_characterStreamingManager;
    self->_characterStreamingManager = v6;

    siriParameters = self->_siriParameters;
    if (siriParameters)
    {
      v9 = [(NSDictionary *)siriParameters objectForKeyedSubscript:@"_UITextViewSiriAnimationStyleDictationDuration"];
      [v9 doubleValue];
      [(_UICharacterStreamingManager *)self->_characterStreamingManager setMinDurationBetweenHypotheses:?];

      v10 = [(NSDictionary *)self->_siriParameters objectForKeyedSubscript:@"_UITextViewSiriAnimationStyleDictationRate"];
      [v10 doubleValue];
      [(_UICharacterStreamingManager *)self->_characterStreamingManager setStreamingCharacterInsertionRate:?];
    }
  }

  [(_UICharacterStreamingManager *)self->_characterStreamingManager setWords:stringsCopy];
}

- (void)_didFinishSpeechRecognition
{
  characterStreamingManager = self->_characterStreamingManager;
  if (characterStreamingManager)
  {
    [(_UICharacterStreamingManager *)characterStreamingManager commitFinalResults];
    v4 = self->_characterStreamingManager;

    [(_UICharacterStreamingManager *)v4 _stopStreamingAnimation];
  }
}

- (void)_restoreScrollPosition:(id)position animated:(BOOL)animated
{
  animatedCopy = animated;
  positionCopy = position;
  range = [positionCopy range];
  [(UITextView *)self _contentOffsetForScrollToVisible:range, v8];
  v10 = v9;
  v12 = v11;
  [positionCopy offsetWithinLine];
  v14 = v12 + v13;
  if (animatedCopy)
  {
    [(UIScrollView *)self _setContentOffset:1 animated:0 animationCurve:v10, v14];
    objc_storeStrong(&self->_scrollTarget, position);
  }

  else
  {
    [(UITextView *)self setContentOffset:v10, v14];
  }
}

- (void)_scrollRangeToVisible:(_NSRange)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [_UITextViewRestorableScrollPosition restorableScrollPositionWithRange:visible.location, visible.length];
  [(UITextView *)self _restoreScrollPosition:v6 animated:animatedCopy];
}

- (void)scrollRangeToVisible:(NSRange)range
{
  length = range.length;
  location = range.location;
  if (dyld_program_sdk_at_least())
  {
    v6 = +[UIView areAnimationsEnabled];
  }

  else
  {
    v6 = 1;
  }

  [(UITextView *)self _scrollRangeToVisible:location animated:length, v6];
}

- (void)scrollSelectionToVisible:(BOOL)visible
{
  visibleCopy = visible;
  selectedRange = [(UITextView *)self selectedRange];
  [(UITextView *)self _rectForScrollToVisible:selectedRange, v6];

  [(UIScrollView *)self scrollRectToVisible:visibleCopy animated:?];
}

- (CGPoint)_contentOffsetForScrollingToRect:(CGRect)rect
{
  height = rect.size.height;
  y = rect.origin.y;
  v18.receiver = self;
  v18.super_class = UITextView;
  [(UIScrollView *)&v18 _contentOffsetForScrollingToRect:rect.origin.x, rect.origin.y, rect.size.width];
  v7 = v6;
  v9 = v8;
  if (!dyld_program_sdk_at_least())
  {
    y = v9;
    goto LABEL_16;
  }

  [(UIView *)self bounds];
  if (v10 - y >= 0.0)
  {
    v12 = v10 - y;
  }

  else
  {
    v12 = -(v10 - y);
  }

  v13 = v10 + v11;
  v14 = y + height;
  v15 = v10 + v11 - (y + height);
  if (v15 < 0.0)
  {
    v15 = -v15;
  }

  if (v15 >= v12)
  {
    if (y < v10)
    {
      goto LABEL_16;
    }

    y = v9;
    if (v14 < v13)
    {
      goto LABEL_16;
    }

LABEL_15:
    y = v14 - v11;
    goto LABEL_16;
  }

  if (v14 >= v13)
  {
    goto LABEL_15;
  }

  if (y >= v10)
  {
    y = v9;
  }

LABEL_16:
  v16 = v7;
  v17 = y;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGRect)_rectToScrollToVisibleInCellInWindow:(id)window
{
  v50 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  _textInteraction = [(UIResponder *)self _textInteraction];
  textInput = [_textInteraction textInput];

  selectedTextRange = [textInput selectedTextRange];
  if (selectedTextRange)
  {
    v12 = [textInput selectionRectsForRange:selectedTextRange];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v45 objects:v49 count:16];
    height = v8;
    width = v7;
    y = v6;
    x = v5;
    if (v13)
    {
      v18 = v13;
      v19 = *v46;
      height = v8;
      width = v7;
      y = v6;
      x = v5;
      do
      {
        v20 = 0;
        do
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v45 + 1) + 8 * v20) rect];
          v57.origin.x = v21;
          v57.origin.y = v22;
          v57.size.width = v23;
          v57.size.height = v24;
          v51.origin.x = x;
          v51.origin.y = y;
          v51.size.width = width;
          v51.size.height = height;
          v52 = CGRectUnion(v51, v57);
          x = v52.origin.x;
          y = v52.origin.y;
          width = v52.size.width;
          height = v52.size.height;
          ++v20;
        }

        while (v18 != v20);
        v18 = [v12 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v18);
    }

    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    if (CGRectIsNull(v53))
    {
      if ([selectedTextRange isEmpty])
      {
        start = [selectedTextRange start];

        if (start)
        {
          start2 = [selectedTextRange start];
          [textInput caretRectForPosition:start2];
          x = v27;
          y = v28;
          width = v29;
          height = v30;
        }
      }
    }

    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    if (!CGRectIsNull(v54))
    {
      textInputView = [textInput textInputView];
      [windowCopy convertRect:textInputView fromView:{x, y, width, height}];
      v5 = v32;
      v6 = v33;
      v7 = v34;
      v8 = v35;
    }
  }

  v55.origin.x = v5;
  v55.origin.y = v6;
  v55.size.width = v7;
  v55.size.height = v8;
  if (CGRectIsNull(v55))
  {
    v44.receiver = self;
    v44.super_class = UITextView;
    [(UIView *)&v44 _rectToScrollToVisibleInCellInWindow:windowCopy];
    v5 = v36;
    v6 = v37;
    v7 = v38;
    v8 = v39;
  }

  v40 = v5;
  v41 = v6;
  v42 = v7;
  v43 = v8;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (id)selectedText
{
  selectedTextRange = [(UITextView *)self selectedTextRange];
  if (selectedTextRange)
  {
    v4 = [(UITextView *)self textInRange:selectedTextRange];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)textInRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained textInRange:rangeCopy];

  return v6;
}

- (void)insertAttributedText:(id)text
{
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained insertAttributedText:textCopy];
}

- (id)attributedTextInRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained attributedTextInRange:rangeCopy];

  return v6;
}

- (void)_setWritingToolsStreamingReplacements:(BOOL)replacements
{
  replacementsCopy = replacements;
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  isWritingToolsStreamingReplacements = [WeakRetained isWritingToolsStreamingReplacements];

  undoManager = [(UITextView *)self undoManager];
  v8 = objc_loadWeakRetained(&self->_inputController);
  undoManager2 = [v8 undoManager];

  if ((isWritingToolsStreamingReplacements & 1) == 0 && replacementsCopy)
  {
    if (*(&self->_tvFlags + 4))
    {
      delegate = [(UIScrollView *)self delegate];
      [delegate _textViewWillBeginUndoCoalescingForWritingTools:self];
    }

    if (undoManager != undoManager2)
    {
      if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
      {
        v13 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED4998A8) + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 138412290;
          v16 = undoManager;
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, ">>>> UITextView will begin undo group in %@ for Writing Tools replacements", &v15, 0xCu);
        }
      }

      [undoManager beginUndoGrouping];
    }
  }

  v11 = objc_loadWeakRetained(&self->_inputController);
  [v11 setWritingToolsStreamingReplacements:replacementsCopy];

  if (isWritingToolsStreamingReplacements && !replacementsCopy)
  {
    if (undoManager != undoManager2)
    {
      if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
      {
        v14 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED4998B0) + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = 138412290;
          v16 = undoManager;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "<<<< UITextView will end undo group in %@ for Writing Tools replacements", &v15, 0xCu);
        }
      }

      [undoManager endUndoGrouping];
    }

    if ((*(&self->_tvFlags + 4) & 2) != 0)
    {
      delegate2 = [(UIScrollView *)self delegate];
      [delegate2 _textViewDidEndUndoCoalescingForWritingTools:self];
    }
  }
}

- (BOOL)_isWritingToolsStreamingReplacements
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  isWritingToolsStreamingReplacements = [WeakRetained isWritingToolsStreamingReplacements];

  return isWritingToolsStreamingReplacements;
}

- (void)replaceRange:(id)range withText:(id)text
{
  textCopy = text;
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained replaceRange:rangeCopy withText:textCopy];
}

- (void)replaceRange:(id)range withAttributedText:(id)text
{
  textCopy = text;
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained replaceRange:rangeCopy withAttributedText:textCopy];
}

- (void)replaceRangeWithTextWithoutClosingTyping:(id)typing replacementText:(id)text
{
  textCopy = text;
  typingCopy = typing;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained replaceRangeWithTextWithoutClosingTyping:typingCopy replacementText:textCopy];
}

- (id)_replaceRange:(id)range withAttributedText:(id)text updatingSelection:(BOOL)selection
{
  selectionCopy = selection;
  textCopy = text;
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v11 = [WeakRetained replaceRange:rangeCopy withAttributedText:textCopy updatingSelection:selectionCopy];

  return v11;
}

- (void)setSelectedTextRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);

  if (WeakRetained)
  {
    interactionAssistant = objc_loadWeakRetained(&self->_inputController);
    [interactionAssistant setSelectedTextRange:rangeCopy];
  }

  else
  {
    interactionAssistant = [(UITextView *)self interactionAssistant];
    [interactionAssistant selectionChanged];
  }
}

- (int64_t)selectionAffinity
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  selectionAffinity = [WeakRetained selectionAffinity];

  return selectionAffinity;
}

- (NSDictionary)markedTextStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  markedTextStyle = [WeakRetained markedTextStyle];

  return markedTextStyle;
}

- (void)setMarkedTextStyle:(id)style
{
  styleCopy = style;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setMarkedTextStyle:styleCopy];
}

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setMarkedText:textCopy selectedRange:{location, length}];
}

- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setAttributedMarkedText:textCopy selectedRange:{location, length}];
}

- (void)unmarkText
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained unmarkText];
}

- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v9 = [WeakRetained textRangeFromPosition:positionCopy toPosition:toPositionCopy];

  return v9;
}

- (id)positionFromPosition:(id)position offset:(int64_t)offset
{
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained positionFromPosition:positionCopy offset:offset];

  return v8;
}

- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset
{
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v10 = [WeakRetained positionFromPosition:positionCopy inDirection:direction offset:offset];

  return v10;
}

- (int64_t)comparePosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v9 = [WeakRetained comparePosition:positionCopy toPosition:toPositionCopy];

  return v9;
}

- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v9 = [WeakRetained offsetFromPosition:positionCopy toPosition:toPositionCopy];

  return v9;
}

- (id)positionWithinRange:(id)range farthestInDirection:(int64_t)direction
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained positionWithinRange:rangeCopy farthestInDirection:direction];

  return v8;
}

- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained characterRangeByExtendingPosition:positionCopy inDirection:direction];

  return v8;
}

- (id)undoManager
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  undoManager = [WeakRetained undoManager];

  return undoManager;
}

- (void)setInputDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setInputDelegate:delegateCopy];
}

- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained baseWritingDirectionForPosition:positionCopy inDirection:direction];

  return v8;
}

- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setBaseWritingDirection:direction forRange:rangeCopy];
}

- (CGRect)firstRectForRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained firstRectForRange:rangeCopy];
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
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained caretRectForPosition:positionCopy];
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

- (id)textStylingAtPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained textStylingAtPosition:positionCopy inDirection:direction];

  return v8;
}

- (id)selectionRectsForRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained selectionRectsForRange:rangeCopy];

  return v6;
}

- (id)closestPositionToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained closestPositionToPoint:{x, y}];

  return v6;
}

- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range
{
  y = point.y;
  x = point.x;
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v9 = [WeakRetained closestPositionToPoint:rangeCopy withinRange:{x, y}];

  return v9;
}

- (id)characterRangeAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained characterRangeAtPoint:{x, y}];

  return v6;
}

- (void)setEditable:(BOOL)editable
{
  if (((((*&self->_tvFlags & 2) == 0) ^ editable) & 1) == 0)
  {
    v3 = editable;
    [(UITextView *)self resignFirstResponder];
    v5 = 2;
    if (!v3)
    {
      v5 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFFFFFDLL | v5);
    if (v3 && ![(UITextView *)self isSelectable])
    {
      [(UITextView *)self setSelectable:1];
    }

    else
    {
      [(UITextView *)self _updateSelectionGestures];
      if ([(UITextView *)self _shouldStartDataDetectors])
      {
        [(UITextView *)self _startDataDetectors];
      }

      else
      {
        [(UITextView *)self _resetDataDetectorsResults];
      }
    }

    [(UITextView *)self isEditableDidChange];
  }
}

- (void)isEditableDidChange
{
  [(_UITextContainerView *)self->_containerView setNeedsDisplay];
  v3 = (*&self->_tvFlags >> 1) & 1;
  textLayoutController = self->_textLayoutController;

  [(_UITextLayoutController *)textLayoutController setEditable:v3];
}

- (void)setSelectable:(BOOL)selectable
{
  v4 = selectable && [(UITextView *)self _totalNumberOfTextViewsInLayoutManager]< 2;
  tvFlags = self->_tvFlags;
  if (((*&tvFlags >> 5) & 1) != v4)
  {
    self->_tvFlags = (*&tvFlags & 0xFFFFFFFFFFFFFFDFLL | (32 * v4));
    [(UITextView *)self resignFirstResponder];
    if (![(UITextView *)self isTextDragActive])
    {
      [(UITextView *)self _updateSelectableInteractions];
    }

    if ([(UITextView *)self _shouldStartDataDetectors])
    {

      [(UITextView *)self _startDataDetectors];
    }

    else
    {

      [(UITextView *)self _resetDataDetectorsResults];
    }
  }
}

- (void)_setShowsEditMenu:(BOOL)menu
{
  v3 = 2048;
  if (!menu)
  {
    v3 = 0;
  }

  self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (BOOL)_isSystemAttachment:(id)attachment
{
  attachmentCopy = attachment;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained _isSystemAttachment:attachmentCopy];

  return v6;
}

- (id)insertTextPlaceholderWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained insertTextPlaceholderWithSize:{width, height}];

  return v6;
}

- (void)removeTextPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained removeTextPlaceholder:placeholderCopy];
}

- (id)insertDictationResultPlaceholder
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  insertDictationResultPlaceholder = [WeakRetained insertDictationResultPlaceholder];

  return insertDictationResultPlaceholder;
}

- (CGRect)frameForDictationResultPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained frameForDictationResultPlaceholder:placeholderCopy];
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
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained removeDictationResultPlaceholder:placeholderCopy willInsertResult:resultCopy];
}

- (id)rangeWithTextAlternatives:(id *)alternatives atPosition:(id)position
{
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained rangeWithTextAlternatives:alternatives atPosition:positionCopy];

  return v8;
}

- (void)setTypingAttributes:(NSDictionary *)typingAttributes
{
  v8 = typingAttributes;
  v4 = [(NSDictionary *)v8 objectForKeyedSubscript:@"_UITextInputDictationResultMetadata"];

  if (v4)
  {
    v5 = [(NSDictionary *)v8 mutableCopy];
    [v5 removeObjectForKey:@"_UITextInputDictationResultMetadata"];
    v6 = [v5 copy];

    v8 = v6;
  }

  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setTypingAttributes:v8];

  [(UITextView *)self _syncTypingAttributesToTextContainerAttributesForExtraLineFragment];
  if (![(UIView *)self->_placeholderLabel isHidden])
  {
    [(UITextView *)self _setNeedsTextLayout];
  }
}

- (void)_setTypingAttributesTextColor:(id)color
{
  colorCopy = color;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _addToTypingAttributes:*off_1E70EC920 value:colorCopy];

  [(UITextView *)self _syncTypingAttributesToTextContainerAttributesForExtraLineFragment];
}

- (void)setContinuousSpellCheckingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setContinuousSpellCheckingEnabled:enabledCopy];
}

- (BOOL)performFinalGrammarChecking
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  performFinalGrammarChecking = [WeakRetained performFinalGrammarChecking];

  return performFinalGrammarChecking;
}

- (void)applyGrammarCheckingIndication
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained applyGrammarCheckingIndication];
}

- (void)textInputDidChange:(id)change
{
  changeCopy = change;
  if (self)
  {
    self->_textContainerInsetAdjustment.top = [(UITextView *)self _applicableContentOutsetsFromFonts];
    self->_textContainerInsetAdjustment.left = v4;
    self->_textContainerInsetAdjustment.bottom = v5;
    self->_textContainerInsetAdjustment.right = v6;
  }

  [(UITextView *)self _ensureUpToDateTextContainerInsetAndNotifyIfNecessary];
  canvasView = [(_UITextContainerView *)self->_containerView canvasView];
  [canvasView updateContentSizeIfNeeded];

  [(UITextView *)self _resyncContainerFrameForNonAutolayout];
  [(UITextDragDropSupport *)self->_textDragDropSupport notifyTextInteraction];
  delegate = [(UIScrollView *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate textViewDidChange:self];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UITextViewTextDidChangeNotification" object:self];

  [(UITextView *)self _updateTextFormattingController];
  [(UITextView *)self _scrollToSelectionIfNeeded];
  window = [(UIView *)self->_textEmphasisBackgroundView window];
  if (window)
  {
    v11 = window;
    isHidden = [(UIView *)self->_textEmphasisBackgroundView isHidden];

    if (!isHidden)
    {
      [(UIView *)self->_textEmphasisBackgroundView setNeedsDisplay];
    }
  }
}

- (BOOL)textInputShouldExtendCaretHeight:(id)height
{
  traitCollection = [(UIView *)self traitCollection];
  v4 = [traitCollection userInterfaceIdiom] != 5;

  return v4;
}

- (void)textInputDidChangeSelection:(id)selection
{
  delegate = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate textViewDidChangeSelection:self];
  }

  [(UITextView *)self _updateTextFormattingController];
  [(UITextView *)self _scrollToCaretIfNeeded];
}

- (void)textInputDidFinishUndoRedoChanges:(id)changes
{
  if ([(UITextView *)self isWritingToolsActive])
  {
    _existingTextAssistantManager = [(UITextView *)self _existingTextAssistantManager];
    [_existingTextAssistantManager finishUndoRedoChanges];
  }
}

- (void)_textInput:(id)input pasteDelegateWillPasteText:(id)text toTextRange:(id)range
{
  textCopy = text;
  rangeCopy = range;
  if ([(UITextView *)self isWritingToolsActive])
  {
    _existingTextAssistantManager = [(UITextView *)self _existingTextAssistantManager];
    [_existingTextAssistantManager updateForPasteDelegateWillPasteText:textCopy toTextRange:rangeCopy];
  }
}

- (void)_textInput:(id)input pasteDelegateDidPasteText:(id)text toTextRange:(id)range
{
  textCopy = text;
  rangeCopy = range;
  if ([(UITextView *)self isWritingToolsActive])
  {
    _existingTextAssistantManager = [(UITextView *)self _existingTextAssistantManager];
    [_existingTextAssistantManager updateForPasteDelegateDidPasteText:textCopy toTextRange:rangeCopy];
  }
}

- (void)textInput:(id)input undoRedoDidApplyAttributedText:(id)text toCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  if ([(UITextView *)self isWritingToolsActive])
  {
    _existingTextAssistantManager = [(UITextView *)self _existingTextAssistantManager];
    [_existingTextAssistantManager updateForCharactersInRange:location withReplacement:length isUndoRedo:{textCopy, 1}];
  }
}

- (void)textInput:(id)input didApplyAttributedText:(id)text toCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v18 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  textCopy = text;
  if (self->_customRenderController && [(UITextView *)self _customRenderControllerPermitsSetTextDidEditRange])
  {
    v11 = [(UITextView *)self _NSTextRangeFromNSRange:location, length];
    -[NSCustomTextRendering textDidEditRange:replacementLength:](self->_customRenderController, "textDidEditRange:replacementLength:", v11, [textCopy length]);
  }

  _existingTextAssistantManager = [(UITextView *)self _existingTextAssistantManager];
  if (-[UITextView isWritingToolsActive](self, "isWritingToolsActive") && ([_existingTextAssistantManager isReplacingTextByRequest] & 1) == 0 && !-[UITextView _isWritingToolsStreamingReplacements](self, "_isWritingToolsStreamingReplacements"))
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    _undoRedoInProgress = [WeakRetained _undoRedoInProgress];

    if (_undoRedoInProgress)
    {
      if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
      {
        v15 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &textInput_didApplyAttributedText_toCharacterRange____s_category) + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = 136315138;
          v17 = "[UITextView textInput:didApplyAttributedText:toCharacterRange:]";
          _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "%s unexpectedly received during undo-redo", &v16, 0xCu);
        }
      }
    }

    else
    {
      [_existingTextAssistantManager updateForCharactersInRange:location withReplacement:length isUndoRedo:{textCopy, 0}];
    }
  }
}

- (void)setFont:(UIFont *)font
{
  v4 = font;
  if ([(UIView *)self _shouldNotifyGeometryObserversForBaselineChanges]|| (*(&self->super.super._viewFlags + 16) & 8) != 0)
  {
    font = [(UITextView *)self font];
    v5 = 1;
  }

  else
  {
    v5 = 0;
    font = 0;
  }

  text = [(UITextView *)self text];
  v8 = [(UITextView *)self _resolvedTypesettingLanguage:text];

  v9 = [(UIFont *)v4 _fontAdjustedForTypesettingLanguage:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  v12 = v11;

  textStorage = self->_textStorage;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __22__UITextView_setFont___block_invoke;
  v43[3] = &unk_1E70F81A0;
  v14 = v4;
  v44 = v14;
  v15 = v12;
  v45 = v15;
  [(NSTextStorage *)textStorage coordinateEditing:v43];
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _addToTypingAttributes:*off_1E70EC918 value:v14];

  [(UITextView *)self _syncTypingAttributesToTextContainerAttributesForExtraLineFragment];
  v17 = v15;
  v18 = font;
  v19 = v18;
  superview2 = v18;
  v21 = v17;
  if (v17 == v18)
  {
    goto LABEL_24;
  }

  if (v18 && v17)
  {
    v22 = [v17 isEqual:v18];

    if (v22)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  self->_textContainerInsetAdjustment.top = [(UITextView *)self _applicableContentOutsetsFromFonts];
  self->_textContainerInsetAdjustment.left = v23;
  self->_textContainerInsetAdjustment.bottom = v24;
  self->_textContainerInsetAdjustment.right = v25;
  [(UITextView *)self _ensureUpToDateTextContainerInsetAndNotifyIfNecessary];
  if (v5)
  {
    if (![(UIView *)self _wantsAutolayout]&& (*(&self->super.super._viewFlags + 16) & 8) != 0)
    {
      self->_lastBaselineOffsetFromBottom = 0.0;
      self->_firstBaselineOffsetFromTop = 0.0;
    }

    if ([(UIView *)self _shouldNotifyGeometryObserversForBaselineChanges])
    {
      v42 = 0;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      v35 = 0u;
      v34 = 0u;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v27 = 2048;
      [(UIView *)self _notifyGeometryObserversWithChangeInfo:?];
    }

    if ((*(&self->super.super._viewFlags + 16) & 8) != 0)
    {
      superview = [(UIView *)self superview];
      v21 = superview;
      if (!superview || (*(superview + 95) & 0x40) != 0)
      {
        goto LABEL_25;
      }

      superview2 = [(UIView *)self superview];
      [superview2 setNeedsLayout];
LABEL_24:

LABEL_25:
    }
  }

LABEL_26:
}

void __22__UITextView_setFont___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 length];
  v4 = *off_1E70EC918;
  if (*(a1 + 32))
  {
    [v5 addAttribute:v4 value:*(a1 + 40) range:{0, v3}];
  }

  else
  {
    [v5 removeAttribute:v4 range:{0, v3}];
  }
}

- (void)setText:(NSString *)text
{
  v7 = text;
  _currentDefaultAttributes = [(UITextView *)self _currentDefaultAttributes];
  if (v7)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:_currentDefaultAttributes];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  v6 = v5;
  [(UITextView *)self setAttributedText:v5];
}

+ (id)_defaultFont
{
  v2 = +[_UITextAttributeDefaults _unspecifiedDefaults];
  _textView = [v2 _textView];
  _font = [_textView _font];

  return _font;
}

- (void)_setTextColor:(id)color
{
  colorCopy = color;
  textStorage = self->_textStorage;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__UITextView__setTextColor___block_invoke;
  v7[3] = &unk_1E7126368;
  v8 = colorCopy;
  v6 = colorCopy;
  [(NSTextStorage *)textStorage coordinateEditing:v7];
  [(UITextView *)self _setTypingAttributesTextColor:v6];
  [(_UITextContainerView *)self->_containerView setNeedsDisplay];
}

void __28__UITextView__setTextColor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *off_1E70EC920;
  v5 = a2;
  v4 = [v5 length];
  if (v2)
  {
    [v5 addAttribute:v3 value:v2 range:{0, v4}];
  }

  else
  {
    [v5 removeAttribute:v3 range:{0, v4}];
  }
}

- (UIColor)textColor
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  typingAttributes = [WeakRetained typingAttributes];
  v4 = [typingAttributes valueForKey:*off_1E70EC920];

  return v4;
}

- (void)setTextAlignment:(NSTextAlignment)textAlignment
{
  textStorage = self->_textStorage;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __31__UITextView_setTextAlignment___block_invoke;
  v15[3] = &__block_descriptor_40_e23_v16__0__NSTextStorage_8l;
  v15[4] = textAlignment;
  [(NSTextStorage *)textStorage coordinateEditing:v15];
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  typingAttributes = [WeakRetained typingAttributes];
  v8 = *off_1E70EC988;
  v9 = [typingAttributes valueForKey:*off_1E70EC988];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(off_1E70ECB80);
  }

  v13 = v12;

  [v13 setAlignment:textAlignment];
  v14 = objc_loadWeakRetained(&self->_inputController);
  [v14 _addToTypingAttributes:v8 value:v13];

  [(UITextView *)self _syncTypingAttributesToTextContainerAttributesForExtraLineFragment];
}

void __31__UITextView_setTextAlignment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *off_1E70EC988;
  v5 = [v3 length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__UITextView_setTextAlignment___block_invoke_2;
  v8[3] = &unk_1E7126810;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v7 enumerateAttribute:v4 inRange:0 options:v5 usingBlock:{0, v8}];
}

void __31__UITextView_setTextAlignment___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_alloc_init(off_1E70ECB80);
  }

  v10 = v9;

  [v10 setAlignment:*(a1 + 40)];
  [*(a1 + 32) addAttribute:*off_1E70EC988 value:v10 range:{a3, a4}];
}

- (NSTextAlignment)textAlignment
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  typingAttributes = [WeakRetained typingAttributes];
  v4 = [typingAttributes valueForKey:*off_1E70EC988];

  if (v4)
  {
    alignment = [v4 alignment];
  }

  else
  {
    alignment = NSTextAlignmentNatural;
  }

  return alignment;
}

- (void)setSelectedRange:(NSRange)selectedRange
{
  length = selectedRange.length;
  location = selectedRange.location;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setSelectedRange:{location, length}];

  [(UITextView *)self updateSelection];
}

- (void)setSelectedRanges:(id)ranges
{
  v15[1] = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  if (![rangesCopy count])
  {
    selectedRanges = [(UITextView *)self selectedRanges];
    lastObject = [selectedRanges lastObject];
    if (lastObject)
    {
      selectedRanges2 = [(UITextView *)self selectedRanges];
      lastObject2 = [selectedRanges2 lastObject];
      rangeValue = [lastObject2 rangeValue];
      v11 = v10;
    }

    else
    {
      rangeValue = 0;
      v11 = 0;
    }

    v12 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue + v11, 0}];
    v15[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

    rangesCopy = v13;
  }

  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setSelectedRanges:rangesCopy];

  [(UITextView *)self updateSelection];
}

- (NSArray)selectedRanges
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  selectedRanges = [WeakRetained selectedRanges];

  return selectedRanges;
}

- (void)setClearsOnInsertion:(BOOL)clearsOnInsertion
{
  if (self->_clearsOnInsertion != clearsOnInsertion)
  {
    self->_clearsOnInsertion = clearsOnInsertion;
    if (clearsOnInsertion)
    {
      interactionAssistant = [(UITextView *)self interactionAssistant];
      [interactionAssistant deactivateSelection];

      [(UITextView *)self selectAll:self];
    }

    else if (![(UITextView *)self isTextDragActive])
    {
      interactionAssistant2 = [(UITextView *)self interactionAssistant];
      [interactionAssistant2 activateSelection];

      interactionAssistant3 = [(UITextView *)self interactionAssistant];
      [interactionAssistant3 setSelectionDisplayVisible:1];
    }

    [(UITextView *)self _updateSelectionGestures];
  }
}

- (void)setDataDetectorTypes:(UIDataDetectorTypes)dataDetectorTypes
{
  if (self->_dataDetectorTypes != dataDetectorTypes)
  {
    self->_dataDetectorTypes = dataDetectorTypes;
    [(UITextView *)self _resetDataDetectorsResults];
    if ([(UITextView *)self _shouldStartDataDetectors])
    {

      [(UITextView *)self _startDataDetectors];
    }
  }
}

- (void)setContentToHTMLString:(id)string
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [string dataUsingEncoding:4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    v8 = *off_1E70EC8F0;
    v9[0] = *off_1E70EC940;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v7 = [v5 initWithData:v4 options:v6 documentAttributes:0 error:0];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  [(UITextView *)self setAttributedText:v7];
}

- (void)setShouldAutoscrollAboveBottom:(BOOL)bottom
{
  v3 = 128;
  if (!bottom)
  {
    v3 = 0;
  }

  self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFFFF7FLL | v3);
  [(UITextView *)self updateAutoscrollAboveBottom];
}

- (void)updateAutoscrollAboveBottom
{
  if ([(UITextView *)self shouldAutoscrollAboveBottom]&& [(UITextView *)self isEditing])
  {
    v3 = 60.0;
  }

  else
  {
    v3 = 0.0;
  }

  [(UIScrollView *)self _setContentScrollInset:0.0, 0.0, v3, 0.0];
}

- (void)setMarginTop:(unint64_t)top
{
  self->_unadjustedTextContainerInset.top = top;
  self->_unadjustedTextContainerInset.bottom = top;
  [(UITextView *)self _ensureUpToDateTextContainerInsetAndNotifyIfNecessary];
}

- (void)_setHorizontalMargins:(unint64_t)margins
{
  self->_unadjustedTextContainerInset.left = margins;
  self->_unadjustedTextContainerInset.right = margins;
  [(UITextView *)self _ensureUpToDateTextContainerInsetAndNotifyIfNecessary];
}

- (void)setTextContainerInset:(UIEdgeInsets)textContainerInset
{
  right = textContainerInset.right;
  bottom = textContainerInset.bottom;
  left = textContainerInset.left;
  top = textContainerInset.top;
  self->_unadjustedTextContainerInset = textContainerInset;
  if ([(UITextView *)self _freezeTextContainerSize])
  {
    self->_duringFreezingTextContainerInset.top = top;
    self->_duringFreezingTextContainerInset.left = left;
    self->_duringFreezingTextContainerInset.bottom = bottom;
    self->_duringFreezingTextContainerInset.right = right;
  }

  else
  {
    if (self->_scrollPosition)
    {
      v8 = fmax(top, self->_textContainerInsetAdjustment.top);
      [(_UITextContainerView *)self->_containerView textContainerInset];
      self->_offsetFromScrollPosition = self->_offsetFromScrollPosition + v9 - v8;
    }

    textContainer = [(_UITextContainerView *)self->_containerView textContainer];
    [textContainer size];
    v12 = v11;
    v14 = v13;

    [(UITextView *)self _ensureUpToDateTextContainerInsetAndNotifyIfNecessary];
    textContainer2 = [(_UITextContainerView *)self->_containerView textContainer];
    [textContainer2 size];
    v17 = v16;
    v19 = v18;

    if (v12 != v17 || v14 != v19)
    {
      [(UITextView *)self _invalidateContainerViewSize];
    }

    if ((*&self->_tvFlags & 0x20) != 0)
    {
      interactionAssistant = [(UITextView *)self interactionAssistant];
      [interactionAssistant setNeedsSelectionDisplayUpdate];
    }
  }
}

- (void)setLineHeight:(double)height
{
  textStorage = self->_textStorage;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__UITextView_setLineHeight___block_invoke;
  v4[3] = &__block_descriptor_40_e23_v16__0__NSTextStorage_8l;
  *&v4[4] = height;
  [(NSTextStorage *)textStorage coordinateEditing:v4];
}

void __28__UITextView_setLineHeight___block_invoke(uint64_t a1, void *a2)
{
  v3 = *off_1E70EC988;
  v4 = a2;
  v5 = [v4 length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__UITextView_setLineHeight___block_invoke_2;
  v6[3] = &__block_descriptor_40_e27_v40__0_8__NSRange_QQ_16_B32l;
  v6[4] = *(a1 + 32);
  [v4 enumerateAttribute:v3 inRange:0 options:v5 usingBlock:{0x100000, v6}];
}

void __28__UITextView_setLineHeight___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 mutableCopy];
  }

  else
  {
    v3 = objc_alloc_init(off_1E70ECB80);
  }

  v4 = v3;
  [v3 setMinimumLineHeight:*(a1 + 32)];
  [v4 setMaximumLineHeight:*(a1 + 32)];
}

- (double)lineHeight
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  textStorage = self->_textStorage;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__UITextView_lineHeight__block_invoke;
  v5[3] = &unk_1E70F94A8;
  v5[4] = &v6;
  [(NSTextStorage *)textStorage coordinateReading:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __24__UITextView_lineHeight__block_invoke(uint64_t a1, void *a2)
{
  v3 = *off_1E70EC988;
  v4 = a2;
  v5 = [v4 length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__UITextView_lineHeight__block_invoke_2;
  v6[3] = &unk_1E70F8050;
  v6[4] = *(a1 + 32);
  [v4 enumerateAttribute:v3 inRange:0 options:v5 usingBlock:{0x100000, v6}];
}

uint64_t __24__UITextView_lineHeight__block_invoke_2(uint64_t result, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    v6 = result;
    result = [a2 minimumLineHeight];
    *(*(*(v6 + 32) + 8) + 24) = v7;
    *a5 = 1;
  }

  return result;
}

- (void)_invalidateLayoutForLinkAttributesChange:(BOOL)change
{
  changeCopy = change;
  if ([(UITextView *)self _shouldInvalidateLayoutForLinkAttributesChange])
  {
    documentRange = [(_UITextLayoutController *)self->_textLayoutController documentRange];
    if (([(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager]& 1) == 0)
    {
      canvasView = [(_UITextContainerView *)self->_containerView canvasView];
      [canvasView setLayoutFragmentViewsNeedDisplay:changeCopy];
    }

    [(_UITextLayoutController *)self->_textLayoutController invalidateLayoutForRange:documentRange];
    if ([(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager])
    {
      [(_UITextContainerView *)self->_containerView setNeedsDisplay];
    }
  }
}

- (void)setLinkTextAttributes:(NSDictionary *)linkTextAttributes
{
  v4 = [(NSDictionary *)linkTextAttributes copy];
  v5 = self->_linkTextAttributes;
  self->_linkTextAttributes = v4;

  [(UITextView *)self _invalidateLayoutForLinkAttributesChange:0];
}

- (void)drawTextHighlightBackgroundForTextRange:(id)range origin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  v41[1] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  textLayoutManager = [(UITextView *)self textLayoutManager];
  v12 = textLayoutManager;
  if (v10 && textLayoutManager)
  {
    v32 = v10;
    textStorage = [(UITextView *)self textStorage];
    v14 = [textStorage length];
    v33 = rangeCopy;
    v41[0] = rangeCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v16 = [(UITextView *)self _nsRangeForTextKitRanges:v15];
    v18 = v17;

    if (v14 < v16 + v18)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITextView.m" lineNumber:6333 description:@"Incorrect textRange"];
    }

    v19 = 2;
    if (v14 - (v16 + v18) >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v14 - (v16 + v18);
    }

    if (v14 <= v16 + v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    if (v16 < 2)
    {
      v19 = v16;
    }

    v22 = v19 + v18;
    v23 = v16 - v19;
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = *off_1E70ECA80;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __61__UITextView_drawTextHighlightBackgroundForTextRange_origin___block_invoke;
    v34[3] = &unk_1E70F8358;
    v39 = v16;
    v40 = v18;
    v35 = textStorage;
    selfCopy = self;
    v37 = v24;
    v38 = v25;
    v27 = v25;
    v28 = v24;
    v29 = textStorage;
    [v29 enumerateAttribute:v26 inRange:v23 options:v22 + v21 usingBlock:{0, v34}];
    v30 = [(UITextView *)self _NSTextRangeFromNSRange:v23, v22 + v21];
    [v12 drawTextHighlightBackgroundForRunTextRanges:v28 attributes:v27 documentRange:v30 origin:v32 context:{x, y}];

    rangeCopy = v33;
  }
}

void __61__UITextView_drawTextHighlightBackgroundForTextRange_origin___block_invoke(uint64_t a1, uint64_t a2, NSRange a3)
{
  v5 = NSIntersectionRange(*(a1 + 64), a3);
  if (a2)
  {
    if (v5.length)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __61__UITextView_drawTextHighlightBackgroundForTextRange_origin___block_invoke_2;
      v8[3] = &unk_1E7126F18;
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v8[4] = *(a1 + 40);
      v11 = v5;
      v9 = v7;
      v10 = *(a1 + 56);
      [v6 enumerateAttributesInRange:v5.location options:v5.length usingBlock:{0, v8}];
    }
  }
}

void __61__UITextView_drawTextHighlightBackgroundForTextRange_origin___block_invoke_2(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = a2;
  v14.location = a3;
  v14.length = a4;
  v15.location = v8;
  v15.length = v9;
  v11 = NSIntersectionRange(v14, v15);
  v12 = [v7 _NSTextRangeFromNSRange:{v11.location, v11.length}];
  [*(a1 + 40) addObject:v12];
  [*(a1 + 48) addObject:v10];
}

- (void)_applyHighlightStyle:(id)style toTextRange:(id)range
{
  rangeCopy = range;
  styleCopy = style;
  v7 = [(UITextView *)self attributedTextInRange:rangeCopy];
  v8 = [v7 mutableCopy];

  [v8 addAttribute:*off_1E70ECA80 value:styleCopy range:{0, objc_msgSend(v8, "length")}];
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v10 = [WeakRetained replaceRange:rangeCopy withAttributedText:v8 updatingSelection:0];
}

- (void)_applyHighlightStyle:(id)style colorScheme:(id)scheme toTextRange:(id)range
{
  rangeCopy = range;
  schemeCopy = scheme;
  styleCopy = style;
  v10 = [(UITextView *)self attributedTextInRange:rangeCopy];
  v11 = [v10 mutableCopy];

  [v11 addAttribute:*off_1E70ECA80 value:styleCopy range:{0, objc_msgSend(v11, "length")}];
  [v11 addAttribute:*off_1E70ECA40 value:schemeCopy range:{0, objc_msgSend(v11, "length")}];

  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v13 = [WeakRetained replaceRange:rangeCopy withAttributedText:v11 updatingSelection:0];
}

- (void)_removeHighlightsFromTextRange:(id)range
{
  rangeCopy = range;
  v4 = [(UITextView *)self attributedTextInRange:rangeCopy];
  v5 = [v4 mutableCopy];

  [v5 removeAttribute:*off_1E70ECA80 range:{0, objc_msgSend(v5, "length")}];
  [v5 removeAttribute:*off_1E70ECA40 range:{0, objc_msgSend(v5, "length")}];
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v7 = [WeakRetained replaceRange:rangeCopy withAttributedText:v5 updatingSelection:0];
}

- (id)_linkTextAttributesForLink:(id)link forCharacterAtIndex:(unint64_t)index
{
  linkCopy = link;
  delegate = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3010000000;
    v22 = "";
    indexCopy = index;
    v24 = 1;
    textStorage = self->_textStorage;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__UITextView__linkTextAttributesForLink_forCharacterAtIndex___block_invoke;
    v15[3] = &unk_1E70F9548;
    v17 = &v19;
    indexCopy2 = index;
    v9 = linkCopy;
    v16 = v9;
    [(NSTextStorage *)textStorage coordinateReading:v15];
    v10 = [delegate _textView:self linkTextAttributesForLink:v9 inRange:{v20[4], v20[5]}];

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v10 = 0;
  }

  if (qword_1ED4998B8 != -1)
  {
    dispatch_once(&qword_1ED4998B8, &__block_literal_global_516);
  }

  if (qword_1ED4998C0 && !v10)
  {
    sharedController = [qword_1ED4998C0 sharedController];
    v10 = [sharedController preferredTextAttributesForLinkAtCharacterIndex:index ofStorage:self->_textStorage];
  }

  if (v10)
  {
    linkTextAttributes = v10;
  }

  else
  {
    linkTextAttributes = [(UITextView *)self linkTextAttributes];
  }

  v13 = linkTextAttributes;

  return v13;
}

void __61__UITextView__linkTextAttributesForLink_forCharacterAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = *off_1E70EC960;
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = [v5 length] - *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__UITextView__linkTextAttributesForLink_forCharacterAtIndex___block_invoke_2;
  v9[3] = &unk_1E71246C0;
  v8 = *(a1 + 32);
  v7 = v8;
  v10 = v8;
  [v5 enumerateAttribute:v3 inRange:v4 options:v6 usingBlock:{0, v9}];
}

void __61__UITextView__linkTextAttributesForLink_forCharacterAtIndex___block_invoke_2(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, char *a5)
{
  v9 = a2;
  v15.location = a3;
  v15.length = a4;
  *(*(*(a1 + 40) + 8) + 32) = NSUnionRange(v15, *(*(*(a1 + 40) + 8) + 32));
  v10 = *(a1 + 32);
  v13 = v9;
  v11 = v10;
  if (v11 == v13)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
    if (v13 && v11)
    {
      v12 = [v13 isEqual:v11] ^ 1;
    }
  }

  *a5 = v12;
}

Class __61__UITextView__linkTextAttributesForLink_forCharacterAtIndex___block_invoke_3()
{
  result = NSClassFromString(&cfstr_Dddetectioncon.isa);
  qword_1ED4998C0 = result;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = UITextView;
  v5 = [(UIScrollView *)&v8 hitTest:event withEvent:test.x, test.y];
  if (v5 == self->_containerView)
  {
    selfCopy = self;

    v5 = selfCopy;
  }

  return v5;
}

- (void)setContentMode:(int64_t)mode
{
  if (dyld_program_sdk_at_least())
  {
    [(UIView *)self->_containerView setContentMode:mode];
  }

  v5.receiver = self;
  v5.super_class = UITextView;
  [(UIView *)&v5 setContentMode:mode];
}

- (void)_setAllowedTypingAttributes:(id)attributes
{
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _setAllowedTypingAttributes:attributesCopy];
}

- (void)_setCuiCatalog:(id)catalog
{
  catalogCopy = catalog;
  if (self->_cuiCatalog != catalogCopy)
  {
    v6 = catalogCopy;
    objc_storeStrong(&self->_cuiCatalog, catalog);
    [(UITextView *)self setNeedsDisplay];
    catalogCopy = v6;
  }
}

- (void)_setCuiStyleEffectConfiguration:(id)configuration
{
  configurationCopy = configuration;
  styleEffectConfiguration = [(_UITextLayoutController *)self->_textLayoutController styleEffectConfiguration];

  v5 = configurationCopy;
  if (styleEffectConfiguration != configurationCopy)
  {
    v6 = [configurationCopy copy];
    if (!v6)
    {
      if (dyld_program_sdk_at_least())
      {
        v6 = objc_alloc_init(MEMORY[0x1E6999430]);
      }

      else
      {
        v6 = 0;
      }
    }

    appearanceName = [v6 appearanceName];

    if (!appearanceName)
    {
      traitCollection = [(UIView *)self traitCollection];
      _styleEffectAppearanceName = [(UITraitCollection *)traitCollection _styleEffectAppearanceName];
      [v6 setAppearanceName:_styleEffectAppearanceName];
    }

    [(_UITextLayoutController *)self->_textLayoutController setStyleEffectConfiguration:v6];
    [(UITextView *)self setNeedsDisplay];

    v5 = configurationCopy;
  }
}

- (void)_setFreezeTextContainerSize:(BOOL)size
{
  sizeCopy = size;
  if ([(UITextView *)self _freezeTextContainerSize]!= size)
  {
    if (sizeCopy)
    {
      [(UITextView *)self textContainerInset];
      self->_beforeFreezingTextContainerInset.top = v5;
      self->_beforeFreezingTextContainerInset.left = v6;
      self->_beforeFreezingTextContainerInset.bottom = v7;
      self->_beforeFreezingTextContainerInset.right = v8;
      [(UIView *)self->_containerView frame];
      self->_beforeFreezingFrameSize.width = v9;
      self->_beforeFreezingFrameSize.height = v10;
      v11 = *&self->_beforeFreezingTextContainerInset.bottom;
      *&self->_duringFreezingTextContainerInset.top = *&self->_beforeFreezingTextContainerInset.top;
      *&self->_duringFreezingTextContainerInset.bottom = v11;
      containerView = self->_containerView;

      [(_UITextContainerView *)containerView _setFreezeTextContainerSize:1];
    }

    else
    {
      [(_UITextContainerView *)self->_containerView _setFreezeTextContainerSize:0];
      self->_unfreezingTextContainerSize = 1;
      [(UITextView *)self _setNeedsTextLayout];
      [(UITextView *)self setTextContainerInset:self->_duringFreezingTextContainerInset.top, self->_duringFreezingTextContainerInset.left, self->_duringFreezingTextContainerInset.bottom, self->_duringFreezingTextContainerInset.right];

      [(UITextView *)self _updateTextContainerSizeAndSizeToFit];
    }
  }
}

- (id)textContainerView:(id)view cuiCatalogForTextEffectName:(id)name
{
  nameCopy = name;
  _cuiCatalog = [(UITextView *)self _cuiCatalog];
  v7 = [_cuiCatalog hasStylePresetWithName:nameCopy];

  if (v7)
  {
    v8 = _cuiCatalog;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)startAutoscroll:(CGPoint)autoscroll
{
  y = autoscroll.y;
  x = autoscroll.x;
  if (!self->_autoscroll)
  {
    v6 = objc_alloc_init(UIAutoscroll);
    autoscroll = self->_autoscroll;
    self->_autoscroll = v6;
  }

  v48 = self->_interactionAssistant;
  selfCopy = self;
  v9 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v9 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v11 = 32.0;
  }

  else
  {
    v11 = 8.0;
  }

  [(UIScrollView *)selfCopy visibleBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(UITextView *)selfCopy textContainerInset];
  v21 = fmax(v20, selfCopy->_textContainerInsetAdjustment.top);
  horizontalTextContainerGeometryAdjustment = fmax(v22, selfCopy->_textContainerInsetAdjustment.left);
  v25 = fmax(v24, selfCopy->_textContainerInsetAdjustment.bottom);
  v27 = fmax(v26, selfCopy->_textContainerInsetAdjustment.right);
  if (selfCopy->_horizontalTextContainerGeometryAdjustment < 0.0)
  {
    horizontalTextContainerGeometryAdjustment = selfCopy->_horizontalTextContainerGeometryAdjustment;
  }

  v28 = v13 + horizontalTextContainerGeometryAdjustment;
  v29 = v15 + v21;
  v30 = v17 - (v27 + horizontalTextContainerGeometryAdjustment);
  v31 = v19 - (v21 + v25);
  [(UIScrollView *)selfCopy _effectiveContentInset];
  v33 = v32 + v28;
  v35 = v29 + v34;
  v37 = v30 - (v32 + v36);
  v39 = v31 - (v34 + v38);
  [(UIScrollView *)selfCopy contentSize];
  v41 = v40;
  v50.origin.x = v33;
  v50.origin.y = v35;
  v50.size.width = v37;
  v50.size.height = v39;
  v51 = CGRectInset(v50, v11, v11);
  if (v39 < v41)
  {
    v42 = v51.origin.x;
    v43 = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;
    MinY = CGRectGetMinY(v51);
    v52.origin.x = v42;
    v52.origin.y = v43;
    v52.size.width = width;
    v52.size.height = height;
    if (y > CGRectGetMaxY(v52))
    {
      if (y < MinY)
      {
        v47 = 12;
      }

      else
      {
        v47 = 8;
      }

      goto LABEL_18;
    }

    if (y < MinY)
    {
      v47 = 4;
LABEL_18:
      [(UIAutoscroll *)self->_autoscroll startAutoscroll:v48 scrollContainer:selfCopy point:v47 directions:x repeatInterval:y, 0.075];
      goto LABEL_19;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(UITextInteractionAssistant *)v48 autoscrollWillNotStart];
  }

  [(UITextView *)selfCopy cancelAutoscroll];
LABEL_19:
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    placeholderLabel = self->_placeholderLabel;
    if (placeholderLabel)
    {
      [(UILabel *)placeholderLabel setAdjustsFontForContentSizeCategory:?];
    }

    [(UITextView *)self _adjustFontForAccessibilityTraits:0];
  }
}

- (void)_adjustFontForAccessibilityTraits:(BOOL)traits
{
  if (self->_adjustsFontForContentSizeCategory || traits)
  {
    traitCollection = [(UIView *)self traitCollection];
    font = [(UITextView *)self font];
    v6 = [font _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    font2 = [(UITextView *)self font];
    v8 = 0;
    if (font2 && v6)
    {
      font3 = [(UITextView *)self font];
      v8 = [font3 isEqual:v6] ^ 1;
    }

    v22 = v8;
    if (*(v20 + 24) == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_inputController);
      [WeakRetained _addToTypingAttributes:*off_1E70EC918 value:v6];

      [(UITextView *)self _syncTypingAttributesToTextContainerAttributesForExtraLineFragment];
    }

    textStorage = self->_textStorage;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __48__UITextView__adjustFontForAccessibilityTraits___block_invoke;
    v16 = &unk_1E7126390;
    v12 = traitCollection;
    v17 = v12;
    v18 = &v19;
    [(NSTextStorage *)textStorage coordinateEditing:&v13];
    if (*(v20 + 24) == 1)
    {
      [(UITextView *)self invalidateIntrinsicContentSize:v13];
    }

    _Block_object_dispose(&v19, 8);
  }
}

void __48__UITextView__adjustFontForAccessibilityTraits___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__UITextView__adjustFontForAccessibilityTraits___block_invoke_2;
  v8[3] = &unk_1E70F3078;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v6;
  v9 = v5;
  v7 = v3;
  [v7 enumerateAttributesInRange:0 options:v4 usingBlock:{0x100000, v8}];
}

void __48__UITextView__adjustFontForAccessibilityTraits___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

- (void)_setWantsContentAwareTypesettingLanguage:(BOOL)language
{
  if (((((*&self->_tvFlags & 0x8000) == 0) ^ language) & 1) == 0)
  {
    v3 = 0x8000;
    if (!language)
    {
      v3 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFF7FFFLL | v3);
    [(UITextView *)self _adjustFontForTypesettingLanguage];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained _canHandleResponderAction:action];

  if (!v8)
  {
    if (sel__showTextFormattingOptions_ == action)
    {
      if ([(UITextView *)self _areDefaultTextFormattingAffordancesAvailable])
      {
        v11 = ![(UITextView *)self _isTextFormattingControllerPresented];
        goto LABEL_31;
      }
    }

    else
    {
      if (sel_find_ != action && sel_findAndReplace_ != action && sel_findNext_ != action && sel_findPrevious_ != action && sel_useSelectionForFind_ != action && sel__findSelected_ != action)
      {
        goto LABEL_26;
      }

      if (self->_findInteractionEnabled)
      {
        if (sel_findAndReplace_ == action)
        {
          supportsTextReplacement = [(UITextView *)self supportsTextReplacement];
          goto LABEL_27;
        }

        if (sel_useSelectionForFind_ == action || sel__findSelected_ == action)
        {
          selectedTextRange = [(UITextView *)self selectedTextRange];
          _isRanged = [selectedTextRange _isRanged];
          goto LABEL_3;
        }

LABEL_26:
        v19.receiver = self;
        v19.super_class = UITextView;
        supportsTextReplacement = [(UIView *)&v19 canPerformAction:action withSender:senderCopy];
LABEL_27:
        LOBYTE(v11) = supportsTextReplacement;
        goto LABEL_31;
      }
    }

    LOBYTE(v11) = 0;
    goto LABEL_31;
  }

  selectedTextRange = objc_loadWeakRetained(&self->_inputController);
  _isRanged = [selectedTextRange _shouldHandleResponderAction:action withSender:senderCopy];
LABEL_3:
  LOBYTE(v11) = _isRanged;

LABEL_31:
  return v11;
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  if ([(UITextView *)self keyboardInputShouldDelete:self])
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    [WeakRetained cut:cutCopy];
  }
}

- (void)copy:(id)copy
{
  copyCopy = copy;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained copy:copyCopy];

  interactionAssistant = [(UITextView *)self interactionAssistant];
  [interactionAssistant hideSelectionCommands];
}

- (void)_define:(id)_define
{
  _defineCopy = _define;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _define:_defineCopy];
}

- (void)_translate:(id)_translate
{
  _translateCopy = _translate;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _translate:_translateCopy];
}

- (BOOL)_isDisplayingReferenceLibraryViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  _isDisplayingReferenceLibraryViewController = [WeakRetained _isDisplayingReferenceLibraryViewController];

  return _isDisplayingReferenceLibraryViewController;
}

- (void)_share:(id)_share
{
  _shareCopy = _share;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _share:_shareCopy];
}

- (BOOL)_isDisplayingTextService
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  _isDisplayingTextService = [WeakRetained _isDisplayingTextService];

  return _isDisplayingTextService;
}

- (BOOL)_isDisplayingShareViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  _isDisplayingShareViewController = [WeakRetained _isDisplayingShareViewController];

  return _isDisplayingShareViewController;
}

- (BOOL)_isDisplayingLookupViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  _isDisplayingLookupViewController = [WeakRetained _isDisplayingLookupViewController];

  return _isDisplayingLookupViewController;
}

- (void)_selectionMayChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _selectionMayChange:changeCopy];
}

- (void)_insertAttributedTextWithoutClosingTyping:(id)typing
{
  typingCopy = typing;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _insertAttributedTextWithoutClosingTyping:typingCopy];
}

- (void)_addShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _addShortcut:shortcutCopy];
}

- (BOOL)_isDisplayingShortcutViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  _isDisplayingShortcutViewController = [WeakRetained _isDisplayingShortcutViewController];

  return _isDisplayingShortcutViewController;
}

- (void)paste:(id)paste
{
  pasteCopy = paste;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained paste:pasteCopy];
}

- (void)pasteAndMatchStyle:(id)style
{
  styleCopy = style;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained pasteAndMatchStyle:styleCopy];
}

- (void)_pasteAttributedString:(id)string pasteAsRichText:(BOOL)text
{
  textCopy = text;
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _pasteAttributedString:stringCopy pasteAsRichText:textCopy];
}

- (id)_attributedStringForInsertionOfAttributedString:(id)string
{
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained _attributedStringForInsertionOfAttributedString:stringCopy];

  return v6;
}

- (void)pasteItemProviders:(id)providers
{
  providersCopy = providers;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained pasteItemProviders:providersCopy];
}

- (id)_effectivePasteConfiguration
{
  v8.receiver = self;
  v8.super_class = UITextView;
  _effectivePasteConfiguration = [(UIResponder *)&v8 _effectivePasteConfiguration];
  v4 = _effectivePasteConfiguration;
  if (_effectivePasteConfiguration)
  {
    v5 = _effectivePasteConfiguration;
  }

  else
  {
    _implicitPasteConfigurationClasses = [(UITextView *)self _implicitPasteConfigurationClasses];
    v5 = [UIPasteConfiguration _pasteConfigurationForAcceptingClasses:_implicitPasteConfigurationClasses];
  }

  return v5;
}

- (id)_implicitPasteConfigurationClasses
{
  v11[4] = *MEMORY[0x1E69E9840];
  if ([(UITextView *)self isEditable])
  {
    allowsEditingTextAttributes = [(UITextView *)self allowsEditingTextAttributes];
    v4 = objc_opt_class();
    if (allowsEditingTextAttributes)
    {
      v11[0] = v4;
      v11[1] = objc_opt_class();
      v11[2] = objc_opt_class();
      v11[3] = objc_opt_class();
      v5 = MEMORY[0x1E695DEC8];
      v6 = v11;
      v7 = 4;
    }

    else
    {
      v10[0] = v4;
      v10[1] = objc_opt_class();
      v5 = MEMORY[0x1E695DEC8];
      v6 = v10;
      v7 = 2;
    }

    v8 = [v5 arrayWithObjects:v6 count:v7];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (void)select:(id)select
{
  interactionAssistant = [(UITextView *)self interactionAssistant];
  [interactionAssistant selectWord];
}

- (void)selectAll:(id)all
{
  allCopy = all;
  interactionAssistant = [(UITextView *)self interactionAssistant];
  [interactionAssistant selectAll:allCopy];
}

- (void)makeTextWritingDirectionNatural:(id)natural
{
  naturalCopy = natural;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained makeTextWritingDirectionNatural:naturalCopy];
}

- (void)makeTextWritingDirectionRightToLeft:(id)left
{
  leftCopy = left;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained makeTextWritingDirectionRightToLeft:leftCopy];
}

- (void)makeTextWritingDirectionLeftToRight:(id)right
{
  rightCopy = right;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained makeTextWritingDirectionLeftToRight:rightCopy];
}

- (void)toggleBoldface:(id)boldface
{
  boldfaceCopy = boldface;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained toggleBoldface:boldfaceCopy];
}

- (void)toggleItalics:(id)italics
{
  italicsCopy = italics;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained toggleItalics:italicsCopy];
}

- (void)toggleUnderline:(id)underline
{
  underlineCopy = underline;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained toggleUnderline:underlineCopy];
}

- (void)increaseSize:(id)size
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained increaseSize:self];
}

- (void)decreaseSize:(id)size
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained decreaseSize:self];
}

- (void)updateTextAttributesWithConversionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained updateTextAttributesWithConversionHandler:handlerCopy];
}

- (void)replace:(id)replace
{
  replaceCopy = replace;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained replace:replaceCopy];
}

- (void)_promptForReplace:(id)replace
{
  replaceCopy = replace;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _promptForReplace:replaceCopy];
}

- (void)_transliterateChinese:(id)chinese
{
  chineseCopy = chinese;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _transliterateChinese:chineseCopy];
}

- (void)alignLeft:(id)left
{
  leftCopy = left;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained alignLeft:leftCopy];
}

- (void)alignCenter:(id)center
{
  centerCopy = center;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained alignCenter:centerCopy];
}

- (void)alignJustified:(id)justified
{
  justifiedCopy = justified;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained alignJustified:justifiedCopy];
}

- (void)alignRight:(id)right
{
  rightCopy = right;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained alignRight:rightCopy];
}

- (void)_changeLineHeightAction:(id)action newLineHeight:(id)height
{
  heightCopy = height;
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _changeLineHeightAction:actionCopy newLineHeight:heightCopy];
}

- (void)captureTextFromCamera:(id)camera
{
  cameraCopy = camera;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained captureTextFromCamera:cameraCopy];
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained validateCommand:commandCopy];
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
  LOBYTE(length) = [(UITextView *)self keyboardInput:inputCopy shouldReplaceTextInRanges:v13 replacementText:textCopy];

  return length;
}

- (BOOL)keyboardInput:(id)input shouldReplaceTextInRanges:(id)ranges replacementText:(id)text
{
  rangesCopy = ranges;
  textCopy = text;
  [(UITextView *)self _hideTextFormattingOptions:0];
  delegate = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [delegate textView:self shouldChangeTextInRanges:rangesCopy replacementText:textCopy];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v13 = 1;
      goto LABEL_7;
    }

    unionRange = [rangesCopy unionRange];
    v10 = [delegate textView:self shouldChangeTextInRange:unionRange replacementText:{v12, textCopy}];
  }

  v13 = v10;
LABEL_7:

  return v13;
}

- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText
{
  inputCopy = input;
  textCopy = text;
  [(UITextView *)self _hideTextFormattingOptions:0];
  delegate = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    selectedRanges = [(UITextView *)self selectedRanges];
    v11 = [(UITextView *)delegate textView:self shouldChangeTextInRanges:selectedRanges replacementText:textCopy];

    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    selectedRange = [(UITextView *)self selectedRange];
    textCopy = [(UITextView *)delegate textView:self shouldChangeTextInRange:selectedRange replacementText:v13, textCopy];
LABEL_8:
    v11 = textCopy;
    goto LABEL_9;
  }

  v11 = 1;
  if ((objc_opt_respondsToSelector() & 1) != 0 && delegate != self)
  {
    textCopy = [(UITextView *)delegate keyboardInput:inputCopy shouldInsertText:textCopy isMarkedText:0];
    goto LABEL_8;
  }

LABEL_9:

  return v11;
}

- (BOOL)keyboardInputShouldDelete:(id)delete
{
  deleteCopy = delete;
  [(UITextView *)self _hideTextFormattingOptions:0];
  delegate = [(UIScrollView *)self delegate];
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  _rangesForBackwardsDelete = [WeakRetained _rangesForBackwardsDelete];

  if (objc_opt_respondsToSelector())
  {
    v8 = [(UITextView *)delegate textView:self shouldChangeTextInRanges:_rangesForBackwardsDelete replacementText:&stru_1EFB14550];
LABEL_8:
    v11 = v8;
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    unionRange = [_rangesForBackwardsDelete unionRange];
    v8 = [(UITextView *)delegate textView:self shouldChangeTextInRange:unionRange replacementText:v10, &stru_1EFB14550];
    goto LABEL_8;
  }

  v11 = 1;
  if ((objc_opt_respondsToSelector() & 1) != 0 && delegate != self)
  {
    v8 = [(UITextView *)delegate keyboardInputShouldDelete:deleteCopy];
    goto LABEL_8;
  }

LABEL_9:

  return v11;
}

- (BOOL)keyboardInputChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(UIScrollView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && delegate != self)
  {
    [(UITextView *)delegate keyboardInputChanged:changedCopy];
  }

  return 1;
}

- (void)keyboardInputChangedSelection:(id)selection
{
  selectionCopy = selection;
  delegate = [(UIScrollView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && delegate != self)
  {
    [(UITextView *)delegate keyboardInputChangedSelection:selectionCopy];
  }
}

- (id)automaticallySelectedOverlay
{
  _enclosingScrollableScrollerIncludingSelf = [(UIView *)self _enclosingScrollableScrollerIncludingSelf];
  v5 = _enclosingScrollableScrollerIncludingSelf;
  if (_enclosingScrollableScrollerIncludingSelf && ([_enclosingScrollableScrollerIncludingSelf frame], v7 = v6, -[UITextView font](self, "font"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "lineHeight"), v7 > v8 * 3.0))
  {
    containerView = v5;
  }

  else
  {
    keyboardSceneDelegate = [(UIView *)self keyboardSceneDelegate];
    containerView = [keyboardSceneDelegate containerView];

    if (!v5)
    {
      goto LABEL_6;
    }
  }

LABEL_6:

  return containerView;
}

- (void)setSupportsAdaptiveImageGlyph:(BOOL)glyph
{
  glyphCopy = glyph;
  *&self->_tvFlags |= 0x800000000uLL;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setSupportsAdaptiveImageGlyph:glyphCopy];
}

- (BOOL)supportsAdaptiveImageGlyph
{
  if ((*(&self->_tvFlags + 4) & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    supportsAdaptiveImageGlyph = [WeakRetained supportsAdaptiveImageGlyph];

    LOBYTE(v3) = supportsAdaptiveImageGlyph;
  }

  else
  {
    v3 = dyld_program_sdk_at_least();
    if (v3)
    {

      LOBYTE(v3) = [(UITextView *)self _supportsImagePasteCached];
    }
  }

  return v3;
}

- (BOOL)_supportsImagePasteCached
{
  tvFlags = self->_tvFlags;
  if ((*&tvFlags & 0x1000000000) == 0)
  {
    _supportsImagePaste = [(UIResponder *)self _supportsImagePaste];
    v5 = 0x1000000000;
    if (_supportsImagePaste)
    {
      v5 = 0x3000000000;
    }

    tvFlags = (*&self->_tvFlags & 0xFFFFFFCFFFFFFFFFLL | v5);
    self->_tvFlags = tvFlags;
  }

  return (*&tvFlags >> 37) & 1;
}

- (void)insertAdaptiveImageGlyph:(id)glyph replacementRange:(id)range
{
  rangeCopy = range;
  glyphCopy = glyph;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained insertAdaptiveImageGlyph:glyphCopy replacementRange:rangeCopy];
}

- (BOOL)supportsEmojiImageTextAttachments
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  supportsEmojiImageTextAttachments = [WeakRetained supportsEmojiImageTextAttachments];

  return supportsEmojiImageTextAttachments;
}

- (void)insertEmojiImageTextAttachment:(id)attachment replacementRange:(id)range
{
  rangeCopy = range;
  attachmentCopy = attachment;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained insertEmojiImageTextAttachment:attachmentCopy replacementRange:rangeCopy];
}

- (void)insertTextSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  delegate = [(UIScrollView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(UIScrollView *)self delegate];
    [delegate2 _textView:self insertTextSuggestion:suggestionCopy];
  }
}

- (void)insertInputSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  delegate = [(UIScrollView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(UIScrollView *)self delegate];
    [delegate2 textView:self insertInputSuggestion:suggestionCopy];
  }
}

- (BOOL)textInput:(id)input shouldChangeCharactersInRanges:(id)ranges replacementText:(id)text
{
  rangesCopy = ranges;
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    if ([WeakRetained textView:self shouldChangeTextInRanges:rangesCopy replacementText:textCopy])
    {
      goto LABEL_3;
    }
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

    unionRange = [rangesCopy unionRange];
    if (unionRange != 0x7FFFFFFFFFFFFFFFLL && [WeakRetained textView:self shouldChangeTextInRange:unionRange replacementText:{v11, textCopy}])
    {
LABEL_3:
      [(UITextView *)self disableClearsOnInsertion];
LABEL_8:
      v12 = 1;
      goto LABEL_9;
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)_attributesForApplyingFormattingModification:(id *)modification withAttributes:(id)attributes paragraphStyle:(id)style forTypingAttributes:(BOOL)typingAttributes
{
  styleCopy = style;
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v12 = [WeakRetained _defaultAttributesForApplyingFormattingModification:modification withAttributes:attributesCopy paragraphStyle:styleCopy];

  return v12;
}

- (void)_textFormattingDidDisappear:(id)disappear
{
  textFormattingViewController = self->_textFormattingViewController;
  if (textFormattingViewController == disappear)
  {
    self->_textFormattingViewController = 0;
    disappearCopy = disappear;

    [(UITextView *)self _stopSuppressingKeyboardForTextFormatting:disappearCopy];
    if (!self->_textFormattingShouldSkipRestoringFirstResponderWhenFinished)
    {
      [(UITextView *)self _restoreFirstResponder];
    }

    self->_textFormattingShouldSkipRestoringFirstResponderWhenFinished = 0;
    if (self->_didDisableAutomaticKeyboardBehaviorForTextFormatting)
    {
      [(UIResponder *)self reloadInputViews];
      self->_didDisableAutomaticKeyboardBehaviorForTextFormatting = 0;
    }

    [(UITextView *)self _adjustBottomContentInsetForTextFormattingController:0];
    self->_bottomContentInsetTextFormattingAdjustment = 0.0;
    self->_bottomContentInsetAfterTextFormattingAdjustment = 0.0;
    if (![(UIView *)self isFirstResponder]&& self->_forceSelectionDisplayForTextFormatting)
    {
      [(UITextInteractionAssistant *)self->_interactionAssistant setSelectionDisplayVisible:0];
      [(UITextInteractionAssistant *)self->_interactionAssistant deactivateSelection];
      self->_forceSelectionDisplayForTextFormatting = 0;
    }
  }
}

- (void)_textFormattingRequestsFirstResponderRestoration:(id)restoration
{
  self->_forceSelectionDisplayForTextFormatting = 0;
  [(UITextView *)self _restoreFirstResponder];

  [(UITextView *)self _updateTextFormattingControllerPresentationSource];
}

- (void)_textFormattingRequestsFirstResponderResignation:(id)resignation
{
  self->_forceSelectionDisplayForTextFormatting = 1;
  self->_textFormattingShouldSkipHidingOnResignFirstResponder = 1;
  [(UITextView *)self resignFirstResponder];
}

- (void)_startSuppressingKeyboardForTextFormatting:(id)formatting
{
  if ([(UITextView *)self _shouldHideInputViewsForTextFormatting])
  {
    v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v4 = [v6 vendKeyboardSuppressionAssertionForReason:@"Text Formatting" type:1];
    textFormattingKeyboardSuppressionAssertion = self->_textFormattingKeyboardSuppressionAssertion;
    self->_textFormattingKeyboardSuppressionAssertion = v4;
  }
}

- (void)_stopSuppressingKeyboardForTextFormatting:(id)formatting
{
  textFormattingKeyboardSuppressionAssertion = self->_textFormattingKeyboardSuppressionAssertion;
  self->_textFormattingKeyboardSuppressionAssertion = 0;
}

- (void)insertDictationResult:(id)result withCorrectionIdentifier:(id)identifier
{
  resultCopy = result;
  identifierCopy = identifier;
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = [resultCopy dictationPhraseArray];
    [(UITextView *)self insertDictationResult:WeakRetained];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    [WeakRetained insertDictationResult:resultCopy withCorrectionIdentifier:identifierCopy];
  }
}

- (void)_setDictationResult:(id)result withCorrectionIdentifier:(id)identifier
{
  resultCopy = result;
  identifierCopy = identifier;
  if (resultCopy && [resultCopy count])
  {
    v8 = [UIDictationUtilities dictationPhrasesFromPhraseArray:resultCopy];
    [v8 setFromKeyboard:0];
    [v8 setTransform:0];
    [v8 setUseServerCapitalization:0];
    if (!identifierCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITextView.m" lineNumber:7366 description:{@"Only Siri calls -[UITextView _setDictationResult:withCorrectionIdentifier:], and it should always supply the correction identifier from the server."}];
    }

    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    [WeakRetained _insertDictationResult:v8 withCorrectionIdentifier:identifierCopy replacingRange:0 resultLength:{-[NSTextStorage length](self->_textStorage, "length"), 0}];
  }
}

- (void)_registerUndoOperationForReplacementWithActionName:(id)name replacementText:(id)text
{
  textCopy = text;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _registerUndoOperationForReplacementWithActionName:nameCopy replacementText:textCopy];
}

- (id)metadataDictionariesForDictationResults
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  metadataDictionariesForDictationResults = [WeakRetained metadataDictionariesForDictationResults];

  return metadataDictionariesForDictationResults;
}

- (void)setSecureTextEntry:(BOOL)entry
{
  entryCopy = entry;
  if ([(UITextView *)self isSecureTextEntry]!= entry)
  {
    _textInputTraits = [(UITextView *)self _textInputTraits];
    [_textInputTraits setSecureTextEntry:entryCopy];

    if ([(UITextView *)self _shouldObscureInput])
    {
      [(UITextView *)self selectedRange];
      if (v6)
      {
        [(UITextView *)self selectAll:self];
      }
    }

    interactionAssistant = [(UITextView *)self interactionAssistant];
    [interactionAssistant updateDisplayedSelection];
  }
}

- (BOOL)_shouldObscureInput
{
  isSecureTextEntry = [(UITextView *)self isSecureTextEntry];
  if (isSecureTextEntry)
  {
    LOBYTE(isSecureTextEntry) = [(UITextView *)self displaySecureTextUsingPlainText]^ 1;
  }

  return isSecureTextEntry;
}

- (void)setForceEnableDictation:(BOOL)dictation
{
  dictationCopy = dictation;
  _textInputTraits = [(UITextView *)self _textInputTraits];
  [_textInputTraits setForceEnableDictation:dictationCopy];
}

- (void)setForceDisableDictation:(BOOL)dictation
{
  dictationCopy = dictation;
  _textInputTraits = [(UITextView *)self _textInputTraits];
  [_textInputTraits setForceDisableDictation:dictationCopy];
}

- (void)takeTraitsFrom:(id)from
{
  fromCopy = from;
  textInputTraits = [(UITextView *)self textInputTraits];
  [textInputTraits takeTraitsFrom:fromCopy];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if ([objc_opt_class() instancesRespondToSelector:selector])
  {
    _textInputTraits = [(UITextView *)self _textInputTraits];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITextView;
    _textInputTraits = [(UITextView *)&v7 forwardingTargetForSelector:selector];
  }

  return _textInputTraits;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_insertTextSuggestion_ != selector || (*(&self->_tvFlags + 3) & 4) != 0)
  {
    v7.receiver = self;
    v7.super_class = UITextView;
    if ([(UITextView *)&v7 respondsToSelector:selector])
    {
      v5 = 1;
    }

    else
    {
      v5 = [objc_opt_class() instancesRespondToSelector:selector];
    }
  }

  else
  {
    delegate = [(UIScrollView *)self delegate];
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  if (!v4)
  {
    v4 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  }

  return v4;
}

- (void)_cancelDataDetectors
{
  dataDetectorsUIGetClass(@"DDDetectionController") = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
  [dataDetectorsUIGetClass(@"DDDetectionController") cancelURLificationForContainer:self];
}

- (void)_startDataDetectorsIfNeeded
{
  if ([(UITextView *)self _shouldStartDataDetectors])
  {

    [(UITextView *)self _startDataDetectors];
  }
}

- (void)_applyOptionsToGeometry
{
  defaultTextPreviewOptions_low = LODWORD(self->_defaultTextPreviewOptions);
  if (defaultTextPreviewOptions_low == 0xFFFFFFFFLL)
  {
    LODWORD(defaultTextPreviewOptions_low) = ![(UITextView *)self allowsEditingTextAttributes];
  }

  geometry = self->_geometry;

  [(_UITextStorageDraggableGeometry *)geometry setGeometryOptions:defaultTextPreviewOptions_low & 1];
}

- (id)_targetedPreviewForTextInteractableItem:(id)item dismissing:(BOOL)dismissing
{
  dismissingCopy = dismissing;
  itemCopy = item;
  if (itemCopy && (-[UITextView _applyOptionsToGeometry](self, "_applyOptionsToGeometry"), geometry = self->_geometry, [itemCopy range], v8 = objc_claimAutoreleasedReturnValue(), -[_UITextStorageDraggableGeometry targetedPreviewProviderForTextInRange:dismissing:](geometry, "targetedPreviewProviderForTextInRange:dismissing:", v8, dismissingCopy), v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
  {
    v10 = (v9)[2](v9, self, 1);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_delegatesAllowingTextItemInteractions
{
  delegate = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

- (BOOL)_delegatesAllowingTextItemMenuInteraction
{
  delegate = [(UIScrollView *)self delegate];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (BOOL)_allowInteraction:(int64_t)interaction forTextInteractableItem:(id)item
{
  itemCopy = item;
  delegate = [(UIScrollView *)self delegate];
  v8 = interaction != 0;
  if (interaction)
  {
    if ([(UITextView *)self _delegatesAllowingTextItemMenuInteraction])
    {
      goto LABEL_11;
    }
  }

  else if ([(UITextView *)self _delegatesAllowingTextItemPrimaryActionInteraction])
  {
    goto LABEL_11;
  }

  if ([itemCopy isLinkItem])
  {
    v9 = itemCopy;
    if (objc_opt_respondsToSelector())
    {
      textLayoutController = self->_textLayoutController;
      range = [v9 range];
      v12 = [(_UITextLayoutController *)textLayoutController characterRangeForTextRange:range];
      v14 = v13;

      link = [v9 link];
      v16 = [delegate textView:self shouldInteractWithURL:link inRange:v12 interaction:{v14, v8}];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v19 = 1;
        goto LABEL_19;
      }

      v27 = self->_textLayoutController;
      range2 = [v9 range];
      v29 = [(_UITextLayoutController *)v27 characterRangeForTextRange:range2];
      v31 = v30;

      link = [v9 link];
      v16 = [delegate textView:self shouldInteractWithURL:link inRange:{v29, v31}];
    }

    v19 = v16;
    goto LABEL_18;
  }

  if ([itemCopy isAttachmentItem])
  {
    v17 = itemCopy;
    attachment = [v17 attachment];
    v19 = [off_1E70ECBA8 _attachmentHasImage:attachment];

    v20 = dyld_program_sdk_at_least();
    if (objc_opt_respondsToSelector())
    {
      v21 = self->_textLayoutController;
      range3 = [v17 range];
      v23 = [(_UITextLayoutController *)v21 characterRangeForTextRange:range3];
      v25 = v24;

      link = [v17 attachment];
      v26 = [delegate textView:self shouldInteractWithTextAttachment:link inRange:v23 interaction:{v25, v8}];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_19:

        goto LABEL_20;
      }

      v32 = self->_textLayoutController;
      range4 = [v17 range];
      v34 = [(_UITextLayoutController *)v32 characterRangeForTextRange:range4];
      v36 = v35;

      link = [v17 attachment];
      v26 = [delegate textView:self shouldInteractWithTextAttachment:link inRange:{v34, v36}];
    }

    v19 = v26 & (v20 | v19);
LABEL_18:

    goto LABEL_19;
  }

LABEL_11:
  v19 = 1;
LABEL_20:

  return v19 & 1;
}

- (BOOL)willInteractWithLinkAtPoint:(CGPoint)point
{
  v3 = [(UITextView *)self _textInteractableItemAtPoint:0 precision:point.x, point.y];
  v4 = v3 != 0;

  return v4;
}

- (void)startInteractionWithLinkAtPoint:(CGPoint)point
{
  v3 = [(UITextView *)self _textInteractableItemAtPoint:0 precision:point.x, point.y];
  [v3 invokeDefaultAction];
}

- (_UITextInteractableItemCache)_textInteractableItemCache
{
  textInteractableItemCache = self->_textInteractableItemCache;
  if (!textInteractableItemCache)
  {
    v4 = objc_opt_new();
    v5 = self->_textInteractableItemCache;
    self->_textInteractableItemCache = v4;

    textInteractableItemCache = self->_textInteractableItemCache;
  }

  return textInteractableItemCache;
}

- (id)_anyTextItemConstrainedToLineAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(_UITextLayoutController *)self->_textLayoutController nearestPositionAtPoint:self->_textContainer inContainer:?];
  textLayoutController = self->_textLayoutController;
  beginningOfDocument = [(_UITextLayoutController *)textLayoutController beginningOfDocument];
  v9 = [(_UITextLayoutController *)textLayoutController offsetFromPosition:beginningOfDocument toPosition:v6];

  v10 = [(_UITextLayoutController *)self->_textLayoutController textRangeForLineEnclosingPosition:v6];
  v11 = [(_UITextLayoutController *)self->_textLayoutController characterRangeForTextRange:v10];
  v13 = v12;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__217;
  v26 = __Block_byref_object_dispose__217;
  v27 = 0;
  textStorage = self->_textStorage;
  v15 = *off_1E70EC960;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __51__UITextView__anyTextItemConstrainedToLineAtPoint___block_invoke;
  v21[3] = &unk_1E7126F58;
  v21[5] = &v22;
  v21[6] = v9;
  v21[4] = self;
  *&v21[7] = x;
  *&v21[8] = y;
  [(NSTextStorage *)textStorage enumerateAttribute:v15 inRange:v11 options:v12 usingBlock:0, v21];
  v16 = v23[5];
  if (!v16)
  {
    v17 = self->_textStorage;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __51__UITextView__anyTextItemConstrainedToLineAtPoint___block_invoke_2;
    v20[3] = &unk_1E7126F58;
    v20[4] = self;
    v20[5] = &v22;
    v20[6] = v9;
    *&v20[7] = x;
    *&v20[8] = y;
    [(NSTextStorage *)v17 enumerateAttribute:@"UITextItemTagAttribute" inRange:v11 options:v13 usingBlock:0, v20];
    v16 = v23[5];
  }

  v18 = v16;
  _Block_object_dispose(&v22, 8);

  return v18;
}

void __51__UITextView__anyTextItemConstrainedToLineAtPoint___block_invoke(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v10 = *(a1 + 48);
  v12 = v10 >= a3;
  v11 = v10 - a3;
  v12 = !v12 || v11 >= a4;
  if (!v12)
  {
    v19 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v19;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_11:
        *a5 = 1;
        v9 = v19;
        goto LABEL_12;
      }

      v13 = [MEMORY[0x1E695DFF8] URLWithString:v19 encodingInvalidCharacters:0];
    }

    v14 = v13;
    if (v13)
    {
      v15 = [*(*(a1 + 32) + 2792) textRangeForCharacterRange:{a3, a4}];
      v16 = [_UITextInteractableItem itemForLink:v14 range:v15 textItemInteractingView:*(a1 + 32) location:*(a1 + 56), *(a1 + 64)];
      v17 = *(*(a1 + 40) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    goto LABEL_11;
  }

LABEL_12:
}

void __51__UITextView__anyTextItemConstrainedToLineAtPoint___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, _BYTE *a5)
{
  v16 = a2;
  v9 = *(a1 + 48);
  v11 = v9 >= a3;
  v10 = v9 - a3;
  v11 = !v11 || v10 >= a4;
  if (!v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [*(*(a1 + 32) + 2792) textRangeForCharacterRange:{a3, a4}];
      v13 = [_UITextInteractableItem customItemWithTag:v16 range:v12 textItemInteractingView:*(a1 + 32) location:*(a1 + 56), *(a1 + 64)];
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      *a5 = 1;
    }
  }
}

- (id)_textInteractableItemAtPoint:(CGPoint)point precision:(unint64_t)precision
{
  y = point.y;
  x = point.x;
  if (precision == 2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 5.0;
  }

  [(NSTextContainer *)self->_textContainer textContainerOrigin];
  v46.size.width = 0.0;
  v46.size.height = 0.0;
  v46.origin.x = x - v10;
  v8 = v46.origin.x;
  v46.origin.y = y - v11;
  v9 = v46.origin.y;
  v47 = CGRectInset(v46, -v7, -v7);
  v12 = [(_UITextLayoutController *)self->_textLayoutController textRangeForBounds:self->_textContainer inTextContainer:1 layoutIfNeeded:v47.origin.x, v47.origin.y, v47.size.width, v47.size.height];
  v13 = [(_UITextLayoutController *)self->_textLayoutController characterRangeForTextRange:v12];
  v15 = v14;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  *&v44[3] = v7 * 1.41421356;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3010000000;
  v42 = 0;
  v43 = 0;
  v41 = "";
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__217;
  v36 = __Block_byref_object_dispose__217;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__217;
  v30 = __Block_byref_object_dispose__217;
  v31 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __53__UITextView__textInteractableItemAtPoint_precision___block_invoke;
  v25[3] = &unk_1E7126FA8;
  *&v25[9] = v8;
  *&v25[10] = v9;
  v25[4] = self;
  v25[5] = v44;
  v25[6] = &v32;
  v25[7] = &v26;
  v25[8] = &v38;
  v16 = _Block_copy(v25);
  v17 = *off_1E70EC960;
  objc_storeStrong(v27 + 5, *off_1E70EC960);
  [(NSTextStorage *)self->_textStorage enumerateAttribute:v27[5] inRange:v13 options:v15 usingBlock:0, v16];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  ExtendAttributedRangeForAttribute(self->_textStorage, v39[4], v39[5], v17, v39 + 4);
  v18 = [(_UITextLayoutController *)self->_textLayoutController textRangeForCharacterRange:v39[4], v39[5]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [MEMORY[0x1E695DFF8] URLWithString:v33[5] encodingInvalidCharacters:0];
    v20 = v33[5];
    v33[5] = v19;
  }

  v21 = [_UITextInteractableItem itemForLink:v33[5] range:v18 textItemInteractingView:self location:x, y];

  if (!v21)
  {
LABEL_9:
    objc_storeStrong(v27 + 5, *off_1E70EC8C8);
    [(NSTextStorage *)self->_textStorage enumerateAttribute:v27[5] inRange:v13 options:v15 usingBlock:0, v16];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![(UITextView *)self _interactionPossibleWithAttachment:v33[5]]|| ([(_UITextLayoutController *)self->_textLayoutController textRangeForCharacterRange:v39[4], v39[5]], v22 = objc_claimAutoreleasedReturnValue(), [_UITextInteractableItem itemForAttachment:v33[5] range:v22 textItemInteractingView:self location:x, y], v21 = objc_claimAutoreleasedReturnValue(), v22, !v21))
    {
      objc_storeStrong(v27 + 5, @"UITextItemTagAttribute");
      [(NSTextStorage *)self->_textStorage enumerateAttribute:v27[5] inRange:v13 options:v15 usingBlock:0, v16];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [(_UITextLayoutController *)self->_textLayoutController textRangeForCharacterRange:v39[4], v39[5]];
        v21 = [_UITextInteractableItem customItemWithTag:v33[5] range:v23 textItemInteractingView:self location:x, y];
      }

      else
      {
        v21 = 0;
      }
    }
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(v44, 8);

  return v21;
}

void __53__UITextView__textInteractableItemAtPoint_precision___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v8 = [*(*(a1 + 32) + 2792) textRangeForCharacterRange:{a3, a4}];
    v9 = *(a1 + 32);
    v10 = *(v9 + 2792);
    v11 = *(v9 + 2168);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__UITextView__textInteractableItemAtPoint_precision___block_invoke_2;
    v15[3] = &unk_1E7126F80;
    v12 = *(a1 + 40);
    v20 = *(a1 + 72);
    v18 = v12;
    v13 = v7;
    v14 = *(a1 + 32);
    v16 = v13;
    v17 = v14;
    v21 = a3;
    v22 = a4;
    v19 = *(a1 + 56);
    [v10 enumerateTextSegmentsInRange:v8 inTextContainer:v11 usingBlock:v15];
  }
}

id __53__UITextView__textInteractableItemAtPoint_precision___block_invoke_2(uint64_t a1, _BYTE *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  result = UIDistanceBetweenPointAndRect(*(a1 + 80), *(a1 + 88), a3, a4, a5, a6);
  v10 = *(*(a1 + 48) + 8);
  if (v9 < *(v10 + 24))
  {
    *(v10 + 24) = v9;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
    result = [*(*(a1 + 40) + 2160) attribute:*(*(*(a1 + 64) + 8) + 40) atIndex:*(a1 + 96) effectiveRange:*(*(a1 + 72) + 8) + 32];
    if (*(*(*(a1 + 48) + 8) + 24) == 0.0)
    {
      *a2 = 1;
    }
  }

  return result;
}

- (id)_textItemForItem:(id)item
{
  textLayoutController = self->_textLayoutController;
  itemCopy = item;
  range = [itemCopy range];
  v6 = [(_UITextLayoutController *)textLayoutController characterRangeForTextRange:range];
  v8 = v7;

  v9 = [itemCopy itemRepresentationWithRange:{v6, v8}];

  return v9;
}

- (id)_textInteractableItemForTag:(id)tag
{
  tagCopy = tag;
  v35 = 0;
  v36 = &v35;
  v37 = 0x4010000000;
  v38 = "";
  v5 = *(MEMORY[0x1E695F058] + 16);
  v39 = *MEMORY[0x1E695F058];
  v40 = v5;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3010000000;
  v33 = "";
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v34 = vnegq_f64(v6);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__217;
  v28 = __Block_byref_object_dispose__217;
  v29 = 0;
  v7 = [(NSTextStorage *)self->_textStorage length];
  textStorage = self->_textStorage;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __42__UITextView__textInteractableItemForTag___block_invoke;
  v18[3] = &unk_1E7126FF8;
  v9 = tagCopy;
  v19 = v9;
  selfCopy = self;
  v21 = &v24;
  v22 = &v35;
  v23 = &v30;
  [(NSTextStorage *)textStorage enumerateAttribute:@"UITextItemTagAttribute" inRange:0 options:v7 usingBlock:0, v18];
  if (v31[4] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = v36[4];
    v12 = v36[5];
    v13 = v36[6];
    v14 = v36[7];
    [(NSTextContainer *)self->_textContainer textContainerOrigin];
    v10 = [_UITextInteractableItem customItemWithTag:v9 range:v25[5] textItemInteractingView:self location:v11 + v13 * 0.5 + v15, v12 + v14 * 0.5 + v16];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v35, 8);

  return v10;
}

void __42__UITextView__textInteractableItemForTag___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 isEqualToString:a1[4]])
  {
    v10 = [*(a1[5] + 2792) textRangeForCharacterRange:{a3, a4}];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = a1[5];
    v14 = *(v13 + 2792);
    v15 = *(*(a1[6] + 8) + 40);
    v16 = *(v13 + 2168);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __42__UITextView__textInteractableItemForTag___block_invoke_2;
    v18[3] = &unk_1E7126FD0;
    v18[4] = a1[7];
    [v14 enumerateTextSegmentsInRange:v15 inTextContainer:v16 usingBlock:v18];
    v17 = *(a1[8] + 8);
    *(v17 + 32) = a3;
    *(v17 + 40) = a4;
    *a5 = 1;
  }
}

uint64_t __42__UITextView__textInteractableItemForTag___block_invoke_2(uint64_t result, double a2, double a3, double a4, double a5)
{
  v5 = *(*(result + 32) + 8);
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a5;
  return result;
}

- (id)_primaryActionForTextInteractableItem:(id)item defaultAction:(id)action
{
  itemCopy = item;
  actionCopy = action;
  delegate = [(UIScrollView *)self delegate];
  v9 = actionCopy;
  v10 = v9;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(UITextView *)self _textItemForItem:itemCopy];
    v10 = [delegate textView:self primaryActionForTextItem:v11 defaultAction:v9];
  }

  return v10;
}

- (id)_menuConfigurationForTextInteractableItem:(id)item defaultMenu:(id)menu
{
  itemCopy = item;
  menuCopy = menu;
  delegate = [(UIScrollView *)self delegate];
  v9 = [UITextItemMenuConfiguration configurationWithMenu:menuCopy];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(UITextView *)self _textItemForItem:itemCopy];
    v11 = [delegate textView:self menuConfigurationForTextItem:v10 defaultMenu:menuCopy];

    v9 = v11;
  }

  return v9;
}

- (void)_textInteractableItem:(id)item willDisplayMenuWithAnimator:(id)animator
{
  itemCopy = item;
  animatorCopy = animator;
  delegate = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(UITextView *)self _textItemForItem:itemCopy];
    [delegate textView:self textItemMenuWillDisplayForTextItem:v8 animator:animatorCopy];
  }
}

- (void)_textInteractableItem:(id)item willDismissMenuWithAnimator:(id)animator
{
  itemCopy = item;
  animatorCopy = animator;
  delegate = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(UITextView *)self _textItemForItem:itemCopy];
    [delegate textView:self textItemMenuWillEndForTextItem:v8 animator:animatorCopy];
  }
}

- (BOOL)_interactionPossibleWithAttachment:(id)attachment
{
  if ([off_1E70ECBA8 _attachmentHasImage:attachment])
  {
    v4 = 1;
  }

  else
  {
    delegate = [(UIScrollView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = 1;
    }

    else
    {
      v4 = objc_opt_respondsToSelector();
    }
  }

  return v4 & 1;
}

- (BOOL)_allowHighlightForTextInteractableItem:(id)item
{
  itemCopy = item;
  delegate = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    textLayoutController = self->_textLayoutController;
    range = [itemCopy range];
    v8 = [(_UITextLayoutController *)textLayoutController characterRangeForTextRange:range];
    v10 = v9;

    v11 = [delegate _textView:self shouldHighlightForInteractionInRange:{v8, v10}];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)setFindInteractionEnabled:(BOOL)findInteractionEnabled
{
  if (self->_findInteractionEnabled != findInteractionEnabled)
  {
    self->_findInteractionEnabled = findInteractionEnabled;
    if (findInteractionEnabled)
    {
      if (!self->_searchableObject)
      {
        v4 = [[_UITextViewSearchableObject alloc] initWithTextView:self];
        searchableObject = self->_searchableObject;
        self->_searchableObject = v4;
      }

      findInteraction = self->_findInteraction;
      if (!findInteraction)
      {
        v7 = [[UIFindInteraction alloc] initWithSessionDelegate:self];
        v8 = self->_findInteraction;
        self->_findInteraction = v7;

        findInteraction = self->_findInteraction;
      }

      [(UIView *)self addInteraction:findInteraction];
    }

    else
    {
      [(UIView *)self removeInteraction:self->_findInteraction];
      v9 = self->_searchableObject;
      self->_searchableObject = 0;

      v10 = self->_findInteraction;
      self->_findInteraction = 0;
    }
  }
}

- (void)_findSelected:(id)selected
{
  selectedCopy = selected;
  [(UITextView *)self useSelectionForFind:selectedCopy];
  [(UITextView *)self find:selectedCopy];
}

- (id)findInteraction:(id)interaction sessionForView:(id)view
{
  v4 = [[UITextSearchingFindSession alloc] initWithSearchableObject:self];

  return v4;
}

- (void)findInteraction:(id)interaction didBeginFindSession:(id)session
{
  [(UITextView *)self didBeginTextSearchOperation:interaction];
  searchableObject = self->_searchableObject;

  [(_UITextViewSearchableObject *)searchableObject didBeginFindSession];
}

- (void)findInteraction:(id)interaction didEndFindSession:(id)session
{
  [(UITextView *)self didEndTextSearchOperation:interaction];
  searchableObject = self->_searchableObject;

  [(_UITextViewSearchableObject *)searchableObject didEndFindSession];
}

- (id)_textLineRectsForRange:(id)range
{
  v24 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  array = [MEMORY[0x1E695DF70] array];
  v6 = [(UITextView *)self selectionRectsForRange:rangeCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        [v11 rect];
        v14 = fabs(v13);
        if (fabs(v12) >= 2.22044605e-16 && v14 >= 2.22044605e-16)
        {
          v16 = MEMORY[0x1E696B098];
          [v11 rect];
          v17 = [v16 valueWithCGRect:?];
          [array addObject:v17];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)_targetedPreviewForRange:(id)range withRenderingAttributes:(id)attributes includeFullDocument:(BOOL)document
{
  documentCopy = document;
  v45 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  attributesCopy = attributes;
  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
    {
      if (byte_1EA95E17C)
      {
        v29 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_targetedPreviewForRange_withRenderingAttributes_includeFullDocument____s_category) + 8);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = rangeCopy;
          *&buf[12] = 2112;
          *&buf[14] = attributesCopy;
          _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Creating targeted preview for range: %@, renderingAttributes: %@", buf, 0x16u);
        }
      }
    }
  }

  v10 = [(UITextView *)self _previewRendererForRange:rangeCopy unifyRects:1];
  [v10 addRenderingAttributes:attributesCopy];
  [v10 setExcludeBackground:1];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v42 = __Block_byref_object_copy__217;
  v43 = __Block_byref_object_dispose__217;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__217;
  v39 = __Block_byref_object_dispose__217;
  v40 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__UITextView__targetedPreviewForRange_withRenderingAttributes_includeFullDocument___block_invoke;
  aBlock[3] = &unk_1E7127020;
  aBlock[4] = self;
  v11 = rangeCopy;
  v31 = v11;
  v33 = buf;
  v12 = v10;
  v32 = v12;
  v34 = &v35;
  v13 = _Block_copy(aBlock);
  v14 = v13;
  if (documentCopy)
  {
    textContainer = [(UITextView *)self textContainer];
    [textContainer size];
    v17 = v16;

    [(UITextView *)self _setFreezeTextContainerSize:1];
    if ([(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager])
    {
      [(UITextView *)self _performTextKit1LayoutCalculation:v14 inSize:v17, 3.40282347e38];
    }

    else
    {
      [(UITextView *)self _performTextKit2LayoutCalculation:v14 inSize:v17, 3.40282347e38];
    }

    [(UITextView *)self _setFreezeTextContainerSize:0];
  }

  else
  {
    (*(v13 + 2))(v13, 0, 0);
  }

  allKeys = [attributesCopy allKeys];
  [v12 removeRenderingAttributes:allKeys];

  v19 = [UITextHighlightView preferredPreviewParametersForTextLineRects:v36[5]];
  v20 = [UIPreviewTarget alloc];
  [(UIView *)self frame];
  v25 = [(UIPreviewTarget *)v20 initWithContainer:self center:v22 + v21 * 0.5, v24 + v23 * 0.5];
  v26 = [UITargetedPreview alloc];
  v27 = [(UITargetedPreview *)v26 initWithView:*(*&buf[8] + 40) parameters:v19 target:v25];

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(buf, 8);

  return v27;
}

void __83__UITextView__targetedPreviewForRange_withRenderingAttributes_includeFullDocument___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 2792) ensureLayoutForRange:*(a1 + 40)];
  v2 = [UIImageView alloc];
  v3 = [*(a1 + 48) image];
  v4 = [(UIImageView *)v2 initWithImage:v3];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(*(*(a1 + 56) + 8) + 40) setContentMode:5];
  [*(a1 + 32) _boundingRectForRange:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setFrame:?];
  v7 = [*(a1 + 32) _textLineRectsForRange:*(a1 + 40)];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (unint64_t)_defaultWritingToolsResultOptions
{
  v3.receiver = self;
  v3.super_class = UITextView;
  return [(UIResponder *)&v3 _defaultWritingToolsResultOptions]& 0xFFFFFFFFFFFFFFF7;
}

- (void)setAllowedWritingToolsResultOptions:(unint64_t)options
{
  if (self && (options & 8) != 0 && (!_UIIsPrivateMainBundle() || [(UITextView *)self isMemberOfClass:objc_opt_class()]))
  {
    if (_UIIsPrivateMainBundle() && (os_variant_has_internal_diagnostics() & 1) != 0)
    {
      v5 = @"UITextView does not yet support UIWritingToolsResultTable. Troublesome SPI can make it possible for apps allowed to use SPI.";
    }

    else
    {
      v5 = @"UITextView does not yet support UIWritingToolsResultTable";
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:v5];
  }

  _textInputTraits = [(UITextView *)self _textInputTraits];
  [_textInputTraits setAllowedWritingToolsResultOptions:options];
}

- (BOOL)isWritingToolsActive
{
  _existingWritingToolsCoordinator = [(UITextView *)self _existingWritingToolsCoordinator];
  state = [_existingWritingToolsCoordinator state];

  return (state & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (void)writingToolsCoordinator:(id)coordinator requestsContextsForScope:(int64_t)scope completion:(id)completion
{
  completionCopy = completion;
  coordinatorCopy = coordinator;
  if ([coordinatorCopy state] == 2)
  {
    tvFlags = self->_tvFlags;
    if ((*&tvFlags & 0x20000000) != 0)
    {
      delegate = [(UIScrollView *)self delegate];
      [delegate textViewWritingToolsWillBegin:self];
    }

    else
    {
      if ((*&tvFlags & 0x8000000) == 0)
      {
        goto LABEL_7;
      }

      delegate = [(UIScrollView *)self delegate];
      [delegate _textViewWillBeginTextAssistantSession:self];
    }
  }

LABEL_7:
  _textAssistantManager = [(UITextView *)self _textAssistantManager];
  [_textAssistantManager writingToolsCoordinator:coordinatorCopy requestsContextsForScope:scope completion:completionCopy];
}

- (void)writingToolsCoordinator:(id)coordinator replaceRange:(_NSRange)range inContext:(id)context proposedText:(id)text reason:(int64_t)reason animationParameters:(id)parameters completion:(id)completion
{
  length = range.length;
  location = range.location;
  completionCopy = completion;
  parametersCopy = parameters;
  textCopy = text;
  contextCopy = context;
  coordinatorCopy = coordinator;
  _textAssistantManager = [(UITextView *)self _textAssistantManager];
  [_textAssistantManager writingToolsCoordinator:coordinatorCopy replaceRange:location inContext:length proposedText:contextCopy reason:textCopy animationParameters:reason completion:{parametersCopy, completionCopy}];
}

- (void)writingToolsCoordinator:(id)coordinator selectRanges:(id)ranges inContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  rangesCopy = ranges;
  coordinatorCopy = coordinator;
  _textAssistantManager = [(UITextView *)self _textAssistantManager];
  [_textAssistantManager writingToolsCoordinator:coordinatorCopy selectRanges:rangesCopy inContext:contextCopy completion:completionCopy];
}

- (void)writingToolsCoordinator:(id)coordinator requestsRangeInContextWithIdentifierForPoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  coordinatorCopy = coordinator;
  _textAssistantManager = [(UITextView *)self _textAssistantManager];
  [_textAssistantManager writingToolsCoordinator:coordinatorCopy requestsRangeInContextWithIdentifierForPoint:completionCopy completion:{x, y}];
}

- (void)writingToolsCoordinator:(id)coordinator requestsBoundingBezierPathsForRange:(_NSRange)range inContext:(id)context completion:(id)completion
{
  length = range.length;
  location = range.location;
  completionCopy = completion;
  contextCopy = context;
  coordinatorCopy = coordinator;
  _textAssistantManager = [(UITextView *)self _textAssistantManager];
  [_textAssistantManager writingToolsCoordinator:coordinatorCopy requestsBoundingBezierPathsForRange:location inContext:length completion:{contextCopy, completionCopy}];
}

- (void)writingToolsCoordinator:(id)coordinator requestsUnderlinePathsForRange:(_NSRange)range inContext:(id)context completion:(id)completion
{
  length = range.length;
  location = range.location;
  completionCopy = completion;
  contextCopy = context;
  coordinatorCopy = coordinator;
  _textAssistantManager = [(UITextView *)self _textAssistantManager];
  [_textAssistantManager writingToolsCoordinator:coordinatorCopy requestsUnderlinePathsForRange:location inContext:length completion:{contextCopy, completionCopy}];
}

- (void)writingToolsCoordinator:(id)coordinator prepareForTextAnimation:(int64_t)animation forRange:(_NSRange)range inContext:(id)context completion:(id)completion
{
  length = range.length;
  location = range.location;
  completionCopy = completion;
  contextCopy = context;
  coordinatorCopy = coordinator;
  _textAssistantManager = [(UITextView *)self _textAssistantManager];
  [_textAssistantManager writingToolsCoordinator:coordinatorCopy prepareForTextAnimation:animation forRange:location inContext:length completion:{contextCopy, completionCopy}];
}

- (void)writingToolsCoordinator:(id)coordinator adjustForUpdatedRange:(_NSRange)range forTextAnimation:(int64_t)animation inContext:(id)context completion:(id)completion
{
  length = range.length;
  location = range.location;
  completionCopy = completion;
  contextCopy = context;
  coordinatorCopy = coordinator;
  _textAssistantManager = [(UITextView *)self _textAssistantManager];
  [_textAssistantManager writingToolsCoordinator:coordinatorCopy adjustForUpdatedRange:location forTextAnimation:length inContext:animation completion:{contextCopy, completionCopy}];
}

- (void)writingToolsCoordinator:(id)coordinator requestsPreviewForTextAnimation:(int64_t)animation ofRange:(_NSRange)range inContext:(id)context completion:(id)completion
{
  length = range.length;
  location = range.location;
  v45 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  contextCopy = context;
  completionCopy = completion;
  textLayoutManager = [(UITextView *)self textLayoutManager];

  if (textLayoutManager)
  {
    _textAssistantManager = [(UITextView *)self _textAssistantManager];
    [_textAssistantManager writingToolsCoordinator:coordinatorCopy requestsPreviewForTextAnimation:animation ofRange:location inContext:length completion:{contextCopy, completionCopy}];
  }

  else if (self)
  {
    v17 = completionCopy;
    if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v39 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_handleTextKit1PreviewGenerationForTextAnimation_ofRange_completion____s_category) + 8);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = v39;
        v41 = UIWritingToolsCoordinatorTextAnimationDebugDescription(animation);
        *buf = 138412290;
        v44 = v41;
        _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_ERROR, "Cannot generate preview for %@ in TextKit 1 mode - advanced animation features not supported", buf, 0xCu);
      }
    }

    v18 = 0.0;
    v19 = 1.0;
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 1.0;
      v21 = 0.0;
    }

    else
    {
      textStorage = [(UITextView *)self textStorage];
      v23 = [textStorage length];

      v20 = 1.0;
      v21 = 0.0;
      if (location + length <= v23)
      {
        v24 = [(_UITextLayoutController *)self->_textLayoutController textRangeForCharacterRange:location, length];
        if (v24)
        {
          [(UITextView *)self firstRectForRange:v24];
          v21 = v27;
          v18 = v28;
          if (v25 >= 1.0)
          {
            v20 = v25;
          }

          else
          {
            v20 = 1.0;
          }

          if (v26 < 1.0)
          {
            v19 = 1.0;
          }

          else
          {
            v19 = v26;
          }
        }
      }
    }

    v29 = [[UIView alloc] initWithFrame:v21, v18, v20, v19];
    superview = [(UIView *)self superview];
    v31 = superview;
    if (superview)
    {
      selfCopy = superview;
    }

    else
    {
      selfCopy = self;
    }

    v33 = selfCopy;

    v34 = objc_alloc_init(UIPreviewParameters);
    v35 = +[UIColor clearColor];
    [(UIPreviewParameters *)v34 setBackgroundColor:v35];

    v36 = [UIPreviewTarget alloc];
    [(UIView *)v33 convertPoint:self fromView:v20 * 0.5 + v21, v19 * 0.5 + v18];
    v37 = [(UIPreviewTarget *)v36 initWithContainer:v33 center:?];

    v38 = [[UITargetedPreview alloc] initWithView:v29 parameters:v34 target:v37];
    v17[2](v17, v38);
  }
}

- (void)writingToolsCoordinator:(id)coordinator finishTextAnimation:(int64_t)animation forRange:(_NSRange)range inContext:(id)context completion:(id)completion
{
  length = range.length;
  location = range.location;
  completionCopy = completion;
  contextCopy = context;
  coordinatorCopy = coordinator;
  _textAssistantManager = [(UITextView *)self _textAssistantManager];
  [_textAssistantManager writingToolsCoordinator:coordinatorCopy finishTextAnimation:animation forRange:location inContext:length completion:{contextCopy, completionCopy}];
}

- (void)writingToolsCoordinator:(id)coordinator willChangeToState:(int64_t)state completion:(id)completion
{
  coordinatorCopy = coordinator;
  completionCopy = completion;
  tvFlags = self->_tvFlags;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__UITextView_writingToolsCoordinator_willChangeToState_completion___block_invoke;
  aBlock[3] = &unk_1E7127048;
  v18 = completionCopy;
  stateCopy = state;
  v20 = (tvFlags & 0x40000000) != 0;
  v16 = coordinatorCopy;
  selfCopy = self;
  v21 = (tvFlags & 0x10000000) != 0;
  v11 = completionCopy;
  v12 = coordinatorCopy;
  v13 = _Block_copy(aBlock);
  _textAssistantManager = [(UITextView *)self _textAssistantManager];
  [_textAssistantManager writingToolsCoordinator:v12 willChangeToState:state completion:v13];
}

void __67__UITextView_writingToolsCoordinator_willChangeToState_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  (*(*(a1 + 48) + 16))();
  if (*(a1 + 56))
  {
    v3 = 0;
  }

  else
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  if (v3)
  {
    if (*(a1 + 64) == 1)
    {
      v4 = [*(a1 + 40) delegate];
      [v4 textViewWritingToolsDidEnd:*(a1 + 40)];
    }

    else
    {
      if (*(a1 + 65) != 1)
      {
        return;
      }

      v4 = [*(a1 + 40) delegate];
      [v4 _textViewDidEndTextAssistantSession:*(a1 + 40)];
    }
  }
}

- (id)_writingToolsCoordinator:(id)coordinator textHighlightColorForScheme:(id)scheme inHighlightStyle:(id)style
{
  styleCopy = style;
  schemeCopy = scheme;
  coordinatorCopy = coordinator;
  _textAssistantManager = [(UITextView *)self _textAssistantManager];
  v12 = [_textAssistantManager _writingToolsCoordinator:coordinatorCopy textHighlightColorForScheme:schemeCopy inHighlightStyle:styleCopy];

  return v12;
}

- (void)_writingToolsCoordinator:(id)coordinator didReceiveContexts:(id)contexts
{
  contextsCopy = contexts;
  coordinatorCopy = coordinator;
  _textAssistantManager = [(UITextView *)self _textAssistantManager];
  [_textAssistantManager _writingToolsCoordinator:coordinatorCopy didReceiveContexts:contextsCopy];
}

- (BOOL)_performExternalEditsForWritingToolsSessionIdentifier:(id)identifier action:(int64_t)action usingBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  if ([(UITextView *)self isWritingToolsActive])
  {
    _existingTextAssistantManager = [(UITextView *)self _existingTextAssistantManager];
    v11 = [_existingTextAssistantManager performExternalEditsForWritingToolsSessionIdentifier:identifierCopy action:action usingBlock:blockCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (_UITextViewAnimatedPlaceholderSupport)_animatedPlaceholderSupport
{
  animatedPlaceholderSupport = self->_animatedPlaceholderSupport;
  if (!animatedPlaceholderSupport)
  {
    v4 = [[_UITextViewAnimatedPlaceholderSupport alloc] initWithTextView:self];
    v5 = self->_animatedPlaceholderSupport;
    self->_animatedPlaceholderSupport = v4;

    animatedPlaceholderSupport = self->_animatedPlaceholderSupport;
  }

  return animatedPlaceholderSupport;
}

- (_UITextAssistantManager)_textAssistantManager
{
  textAssistantManager = self->_textAssistantManager;
  if (!textAssistantManager)
  {
    v4 = [[_UITextAssistantManager alloc] initWithTextView:self];
    v5 = self->_textAssistantManager;
    self->_textAssistantManager = v4;

    textAssistantManager = self->_textAssistantManager;
  }

  return textAssistantManager;
}

- (void)_setWritingToolsCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  _existingWritingToolsCoordinator = [(UITextView *)self _existingWritingToolsCoordinator];
  v6 = _existingWritingToolsCoordinator;
  if (_existingWritingToolsCoordinator != coordinatorCopy)
  {
    [_existingWritingToolsCoordinator _setAssociatedTextView:0];
    v7.receiver = self;
    v7.super_class = UITextView;
    [(UIView *)&v7 _setWritingToolsCoordinator:coordinatorCopy];
    [coordinatorCopy _setAssociatedTextView:self];
  }
}

- (UIDragInteraction)textDragInteraction
{
  if (self->_textDragDropSupport)
  {
    interactions = [(UIView *)self interactions];
    dragInteraction = [(UITextDragDropSupport *)self->_textDragDropSupport dragInteraction];
    if ([interactions indexOfObject:dragInteraction] == 0x7FFFFFFFFFFFFFFFLL)
    {
      dragInteraction2 = 0;
    }

    else
    {
      dragInteraction2 = [(UITextDragDropSupport *)self->_textDragDropSupport dragInteraction];
    }
  }

  else
  {
    dragInteraction2 = 0;
  }

  return dragInteraction2;
}

- (UIDropInteraction)textDropInteraction
{
  if (self->_textDragDropSupport)
  {
    interactions = [(UIView *)self interactions];
    dropInteraction = [(UITextDragDropSupport *)self->_textDragDropSupport dropInteraction];
    if ([interactions indexOfObject:dropInteraction] == 0x7FFFFFFFFFFFFFFFLL)
    {
      dropInteraction2 = 0;
    }

    else
    {
      dropInteraction2 = [(UITextDragDropSupport *)self->_textDragDropSupport dropInteraction];
    }
  }

  else
  {
    dropInteraction2 = 0;
  }

  return dropInteraction2;
}

- (void)draggingFinished:(id)finished
{
  finishedCopy = finished;
  [(UITextView *)self _updateSelectionGestures];
  dragTearoffOccured = [finishedCopy dragTearoffOccured];

  if ((dragTearoffOccured & 1) == 0)
  {
    [(UITextView *)self selectedRange];
    if (v6)
    {
      interactionAssistant = [(UITextView *)self interactionAssistant];
      [interactionAssistant showSelectionCommands];
    }
  }
}

- (void)droppingStarted
{
  if (![(UIView *)self isFirstResponder])
  {

    [(UITextView *)self _notifyDidBeginEditing];
  }
}

- (void)droppingFinished
{
  if (![(UIView *)self isFirstResponder])
  {
    [(UITextView *)self _startDataDetectorsIfNeeded];

    [(UITextView *)self _notifyDidEndEditing];
  }
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
  isEditable = [(UITextView *)self isEditable];
  selectedRange = [(UITextView *)self selectedRange];
  v10 = v9;
  v11 = v9 != 0;
  if (isEditable)
  {
    isFirstResponder = [(UIView *)self isFirstResponder];
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = isFirstResponder;
    }
  }

  v18.receiver = self;
  v18.super_class = UITextView;
  [(UIScrollView *)&v18 encodeRestorableStateWithCoder:coderCopy];
  if (v11)
  {
    [coderCopy encodeInt:v10 forKey:@"kTextSelectedTextLengthKey"];
    [coderCopy encodeInt:selectedRange forKey:@"kTextSelectedTextLocationKey"];
    if (controllersCopy)
    {
      selectedText = [(UITextView *)self selectedText];
      if ([selectedText length])
      {
        [coderCopy encodeObject:selectedText forKey:@"kTextSelectedTextKey"];
      }

      if ([(UITextView *)self _isDisplayingShortcutViewController])
      {
        [UIApp ignoreSnapshotOnNextApplicationLaunch];
      }

      if ([(UITextView *)self _isDisplayingReferenceLibraryViewController])
      {
        v14 = +[UIDevice currentDevice];
        userInterfaceIdiom = [v14 userInterfaceIdiom];

        if (!userInterfaceIdiom)
        {
          [UIApp ignoreSnapshotOnNextApplicationLaunch];
        }

        [coderCopy encodeBool:1 forKey:@"kTextDisplayingReferenceLibraryViewControllerKey"];
      }

      if ([(UITextView *)self _isDisplayingShareViewController])
      {
        [UIApp ignoreSnapshotOnNextApplicationLaunch];
      }
    }
  }

  _restorableScrollPositionForStateRestoration = [(UITextView *)self _restorableScrollPositionForStateRestoration];
  dictionaryRepresentation = [_restorableScrollPositionForStateRestoration dictionaryRepresentation];

  if (dictionaryRepresentation)
  {
    [coderCopy encodeObject:dictionaryRepresentation forKey:@"kTextVisiblePosition"];
  }

  [coderCopy encodeBool:isEditable forKey:@"kTextEditableKey"];
  [coderCopy encodeBool:-[UIView isFirstResponder](self forKey:{"isFirstResponder"), @"kTextFirstResponderKey"}];
}

- (void)decodeRestorableStateWithCoder:(id)coder includingSelectedTextAndDisplayedViewControllers:(BOOL)controllers
{
  controllersCopy = controllers;
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"kTextEditableKey"])
  {
    -[UITextView setEditable:](self, "setEditable:", [coderCopy decodeBoolForKey:@"kTextEditableKey"]);
  }

  if ([coderCopy containsValueForKey:@"kTextFirstResponderKey"] && objc_msgSend(coderCopy, "decodeBoolForKey:", @"kTextFirstResponderKey"))
  {
    [(UITextView *)self becomeFirstResponder];
  }

  if ([coderCopy containsValueForKey:@"kTextSelectedTextLengthKey"])
  {
    if ([coderCopy containsValueForKey:@"kTextSelectedTextLocationKey"])
    {
      v7 = [coderCopy decodeIntForKey:@"kTextSelectedTextLengthKey"];
      v8 = [coderCopy decodeIntForKey:@"kTextSelectedTextLocationKey"];
      if ([(UITextView *)self isEditable]|| v7)
      {
        if ([(UIScrollView *)self isProgrammaticScrollEnabled])
        {
          [(UIScrollView *)self setProgrammaticScrollEnabled:0];
          [(UITextView *)self becomeFirstResponder];
          [(UITextView *)self setSelectedRange:v8, v7];
          [(UIScrollView *)self setProgrammaticScrollEnabled:1];
          if (!controllersCopy)
          {
            goto LABEL_21;
          }
        }

        else
        {
          [(UITextView *)self becomeFirstResponder];
          [(UITextView *)self setSelectedRange:v8, v7];
          if (!controllersCopy)
          {
            goto LABEL_21;
          }
        }

        v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTextSelectedTextKey"];
        if (v9)
        {
          v10 = [coderCopy decodeBoolForKey:@"kTextDisplayingShortcutViewControllerKey"];
          v11 = [coderCopy decodeBoolForKey:@"kTextDisplayingReferenceLibraryViewControllerKey"];
          [coderCopy decodeBoolForKey:@"kTextDisplayingShareViewControllerKey"];
          if ((v10 & 1) == 0)
          {
            if (v11)
            {
              v12 = +[UIDevice currentDevice];
              userInterfaceIdiom = [v12 userInterfaceIdiom];

              if (userInterfaceIdiom)
              {
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __112__UITextView_StateRestoration__decodeRestorableStateWithCoder_includingSelectedTextAndDisplayedViewControllers___block_invoke;
                block[3] = &unk_1E70F35B8;
                v23 = v9;
                selfCopy = self;
                dispatch_async(MEMORY[0x1E69E96A0], block);
              }

              else
              {
                selectedText = [(UITextView *)self selectedText];
                [v9 isEqualToString:selectedText];
              }
            }
          }
        }
      }
    }
  }

LABEL_21:
  v21.receiver = self;
  v21.super_class = UITextView;
  [(UIScrollView *)&v21 decodeRestorableStateWithCoder:coderCopy];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kTextVisiblePosition"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [_UITextViewRestorableScrollPosition restorableScrollPositionWithDictionary:v19];
    if (v20)
    {
      [(UITextView *)self _restoreScrollPosition:v20 animated:0];
    }
  }
}

void __112__UITextView_StateRestoration__decodeRestorableStateWithCoder_includingSelectedTextAndDisplayedViewControllers___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) selectedText];
  LODWORD(v2) = [v2 isEqualToString:v3];

  if (v2)
  {
    v4 = *(a1 + 40);

    [v4 _define:v4];
  }
}

- (id)_interactionState
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(UITextView *)self encodeRestorableStateWithCoder:v3 includingSelectedTextAndDisplayedViewControllers:0];
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
    [(UITextView *)self decodeRestorableStateWithCoder:v6 includingSelectedTextAndDisplayedViewControllers:0];
  }

  else
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Text", &_setInteractionState____s_category_0);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "[UITextView(_UIInteractionStateRestorable) _setInteractionState:]";
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%s: Error decoding interaction state (%@)", buf, 0x16u);
      }
    }
  }
}

- (id)_nonNullUITextRangeForTextKitRanges:(id)ranges
{
  v3 = [(UITextView *)self _rangeForTextKitRanges:ranges];
  if (!v3)
  {
    v3 = [_UITextKitTextRange rangeWithRange:0, 0];
  }

  return v3;
}

- (id)_nonNullUITextRangeFromNSRange:(_NSRange)range
{
  v3 = [(UIResponder *)self _textRangeFromNSRange:range.location, range.length];
  if (!v3)
  {
    v3 = [_UITextKitTextRange rangeWithRange:0, 0];
  }

  return v3;
}

- (id)_NSTextRangeFromNSRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  _internalTextLayoutController = [(UITextView *)self _internalTextLayoutController];
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

- (_NSRange)_nsRangeForNonNullUITextRange:(id)range
{
  if (range)
  {
    v3 = [(UIResponder *)self _nsrangeForTextRange:?];
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result.length = v4;
  result.location = v3;
  return result;
}

- (int64_t)_indexForNonNullUITextPosition:(id)position
{
  if (position)
  {
    return [(UIResponder *)self _indexForTextPosition:?];
  }

  else
  {
    return 0;
  }
}

- (_NSRange)_nsRangeForTextKitRanges:(id)ranges
{
  v4 = [(UITextView *)self _nonNullUITextRangeForTextKitRanges:ranges];
  v5 = [(UIResponder *)self _nsrangeForTextRange:v4];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (id)_nonNullIntersectionOfUITextRange:(id)range withOtherUITextRange:(id)textRange
{
  rangeCopy = range;
  textRangeCopy = textRange;
  v8 = [(UIResponder *)self _intersectionOfRange:rangeCopy andRange:textRangeCopy];
  if (!v8)
  {
    start = [textRangeCopy start];
    start2 = [rangeCopy start];
    start3 = [textRangeCopy start];
    v12 = [(UITextView *)self comparePosition:start2 toPosition:start3];

    if (v12 == -1)
    {
      start4 = [rangeCopy start];

      start = start4;
    }

    v8 = [(UITextView *)self textRangeFromPosition:start toPosition:start];
  }

  return v8;
}

- (BOOL)automaticallyAdjustsWritingDirection
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  automaticallyAdjustsWritingDirection = [WeakRetained automaticallyAdjustsWritingDirection];

  return automaticallyAdjustsWritingDirection;
}

- (void)setAutomaticallyAdjustsWritingDirection:(BOOL)direction
{
  directionCopy = direction;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setAutomaticallyAdjustsWritingDirection:directionCopy];
}

- (id)_fontInfoForBaselineSpacing
{
  result = [(UITextView *)self font];
  if (!result)
  {

    return [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
  }

  return result;
}

- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute inContainer:(id)container isGuide:(BOOL)guide
{
  if ((edge - 5) > 1)
  {
    v8.receiver = self;
    v8.super_class = UITextView;
    [(UIView *)&v8 _autolayoutSpacingAtEdge:*&edge forAttribute:attribute inContainer:container isGuide:guide];
  }

  else
  {
    _UIViewBaselineToEdgeSpacing([(UITextView *)self _fontInfoForBaselineSpacing], edge);

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
    v19.super_class = UITextView;
    [(UIView *)&v19 _autolayoutSpacingAtEdge:v13 forAttribute:attribute nextToNeighbor:neighbor edge:v10 attribute:a7 multiplier:multiplier];
    return result;
  }

  if (v15 >= 2)
  {
    v18 = *(__UILogGetCategoryCachedImpl("Assert", &_autolayoutSpacingAtEdge_forAttribute_nextToNeighbor_edge_attribute_multiplier____s_category_1026) + 8);
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