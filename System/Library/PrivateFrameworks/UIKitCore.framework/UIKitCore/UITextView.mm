@interface UITextView
+ (BOOL)_isTextLayoutManagerEnabled;
+ (BOOL)_resolvesNaturalAlignmentWithBaseWritingDirection;
+ (UITextView)textViewUsingTextLayoutManager:(BOOL)usingTextLayoutManager;
+ (id)_defaultFont;
+ (id)_defaultTextColor;
- ($BB3B25BBC364C7D98808033881F79914)_saveSizeBeforeLayoutCalculation:(SEL)a3;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3;
- (BOOL)_allowHighlightForTextInteractableItem:(id)a3;
- (BOOL)_allowInteraction:(int64_t)a3 forTextInteractableItem:(id)a4;
- (BOOL)_allowsOverflowForIntrinsicSizeCalculation;
- (BOOL)_areDefaultTextFormattingAffordancesAvailable;
- (BOOL)_delegatesAllowingLinkInteraction;
- (BOOL)_delegatesAllowingTextItemInteractions;
- (BOOL)_delegatesAllowingTextItemMenuInteraction;
- (BOOL)_delegatesAllowingTextItemPrimaryActionInteraction;
- (BOOL)_disableAutomaticKeyboardBehavior;
- (BOOL)_documentRangeEqualToViewportRange;
- (BOOL)_finishResignFirstResponder;
- (BOOL)_interactionPossibleWithAttachment:(id)a3;
- (BOOL)_isDisplayingLookupViewController;
- (BOOL)_isDisplayingReferenceLibraryViewController;
- (BOOL)_isDisplayingShareViewController;
- (BOOL)_isDisplayingShortcutViewController;
- (BOOL)_isDisplayingTextService;
- (BOOL)_isInCompactHorizontalSizeClass;
- (BOOL)_isInteractiveTextSelectionDisabled;
- (BOOL)_isSelectionVisible;
- (BOOL)_isSystemAttachment:(id)a3;
- (BOOL)_isTextFormattingControllerPresented;
- (BOOL)_isTextFormattingInProgress;
- (BOOL)_isWritingToolsStreamingReplacements;
- (BOOL)_needsDoubleUpdateConstraintsPass;
- (BOOL)_ownsInputAccessoryView;
- (BOOL)_performExternalEditsForWritingToolsSessionIdentifier:(id)a3 action:(int64_t)a4 usingBlock:(id)a5;
- (BOOL)_preserveSelectionDisplayForTextFormatting;
- (BOOL)_reconfigureWithLayoutManager:(id)a3 triggeredByLayoutManagerAccess:(BOOL)a4 triggeringSelector:(SEL)a5;
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
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canResignFirstResponder;
- (BOOL)forceDisableDictation;
- (BOOL)forceEnableDictation;
- (BOOL)hasText;
- (BOOL)isEditing;
- (BOOL)isWritingToolsActive;
- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5;
- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRanges:(id)a4 replacementText:(id)a5;
- (BOOL)keyboardInputChanged:(id)a3;
- (BOOL)keyboardInputShouldDelete:(id)a3;
- (BOOL)performFinalGrammarChecking;
- (BOOL)replaceAnimatedTextPlaceholderWith:(id)a3 completion:(id)a4;
- (BOOL)resignFirstResponder;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)supportsAdaptiveImageGlyph;
- (BOOL)supportsEmojiImageTextAttachments;
- (BOOL)textInput:(id)a3 shouldChangeCharactersInRanges:(id)a4 replacementText:(id)a5;
- (BOOL)textInputShouldExtendCaretHeight:(id)a3;
- (BOOL)tiledViewsDrawAsynchronously;
- (BOOL)willInteractWithLinkAtPoint:(CGPoint)a3;
- (CGPoint)_contentOffsetForScrollToVisible:(_NSRange)a3;
- (CGPoint)_contentOffsetForScrollingToRect:(CGRect)a3;
- (CGPoint)_convertPointFromRenderSpace:(CGPoint)a3;
- (CGPoint)_convertPointToRenderSpace:(CGPoint)a3 textPosition:(id)a4;
- (CGPoint)_convertPointToRenderSpace:(CGPoint)a3 textRange:(id)a4;
- (CGPoint)textContainerOrigin;
- (CGRect)_boundingRectForRange:(id)a3;
- (CGRect)_customRenderBounds;
- (CGRect)_frameOfTrailingWhitespace;
- (CGRect)_rectForScrollToVisible:(_NSRange)a3;
- (CGRect)_rectToScrollToVisibleInCellInWindow:(id)a3;
- (CGRect)accessibilityFrame;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)firstRectForRange:(id)a3;
- (CGRect)frameForDictationResultPlaceholder:(id)a3;
- (CGRect)visibleRect;
- (CGRect)visibleRectIgnoringKeyboard;
- (CGSize)_containerSizeForBoundsSize:(CGSize)a3 allowingOverflow:(BOOL)a4;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
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
- (_NSRange)_nsRangeForNonNullUITextRange:(id)a3;
- (_NSRange)_nsRangeForTextKitRanges:(id)a3;
- (_NSRange)_visibleRangeWithLayout:(BOOL)a3;
- (_UITextAssistantManager)_textAssistantManager;
- (_UITextInteractableItemCache)_textInteractableItemCache;
- (_UITextViewAnimatedPlaceholderSupport)_animatedPlaceholderSupport;
- (double)_adjustedTextContainerInset;
- (double)_applicableContentOutsetsFromFonts;
- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6;
- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 nextToNeighbor:(id)a5 edge:(int)a6 attribute:(int64_t)a7 multiplier:(double)a8;
- (double)_baselineOffsetFromBottom;
- (double)_currentPreferredMaxLayoutWidth;
- (double)_firstBaselineOffsetFromTop;
- (double)_internalFirstBaselineOffsetFromTop;
- (double)_internalLastBaselineOffsetFromBottom;
- (double)_textFormattingControllerOverlapHeight;
- (double)lineHeight;
- (id)_NSTextRangeFromNSRange:(_NSRange)a3;
- (id)_activityItemsConfigurationAtLocation:(CGPoint)a3;
- (id)_allowedTypingAttributes;
- (id)_animatorForTextAnimation:(id)a3;
- (id)_animatorForTextAnimation:(id)a3 notify:(id)a4;
- (id)_anyTextItemConstrainedToLineAtPoint:(CGPoint)a3;
- (id)_attributedPlaceholder;
- (id)_attributedStringForInsertionOfAttributedString:(id)a3;
- (id)_attributesForApplyingFormattingModification:(id *)a3 withAttributes:(id)a4 paragraphStyle:(id)a5 forTypingAttributes:(BOOL)a6;
- (id)_currentDefaultAttributes;
- (id)_descriptorForTextFormattingOptions;
- (id)_disabledComponentsForTextFormattingOptions;
- (id)_effectivePasteConfiguration;
- (id)_existingSelectionContainerView;
- (id)_existingWritingToolsCoordinator;
- (id)_fontInfoForBaselineSpacing;
- (id)_getDelegateZoomView;
- (id)_implicitPasteConfigurationClasses;
- (id)_initWithFrame:(CGRect)a3 textLayoutManagerEnabled:(BOOL)a4;
- (id)_inputController;
- (id)_interactionState;
- (id)_internalTextLayoutController;
- (id)_layoutDebuggingTitle;
- (id)_linkTextAttributesForLink:(id)a3 forCharacterAtIndex:(unint64_t)a4;
- (id)_menuConfigurationForTextInteractableItem:(id)a3 defaultMenu:(id)a4;
- (id)_newContainerViewWithFrame:(CGRect)a3 textContainer:(id)a4 textLayoutController:(id)a5;
- (id)_newTextContainer;
- (id)_newTextKit1LayoutControllerWithTextContainer:(id)a3 layoutManager:(id)a4 textStorage:(id)a5;
- (id)_nonNullIntersectionOfUITextRange:(id)a3 withOtherUITextRange:(id)a4;
- (id)_nonNullUITextRangeForTextKitRanges:(id)a3;
- (id)_nonNullUITextRangeFromNSRange:(_NSRange)a3;
- (id)_placeSelectionContainerView;
- (id)_preferredPresentingControllerForTextFormatting;
- (id)_primaryActionForTextInteractableItem:(id)a3 defaultAction:(id)a4;
- (id)_replaceRange:(id)a3 withAttributedText:(id)a4 updatingSelection:(BOOL)a5;
- (id)_resolvedTypesettingLanguage:(id)a3;
- (id)_scrollViewToAdjustForTextFormattingController;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_targetedPreviewForRange:(id)a3 withRenderingAttributes:(id)a4 includeFullDocument:(BOOL)a5;
- (id)_targetedPreviewForTextInteractableItem:(id)a3 dismissing:(BOOL)a4;
- (id)_textInputTraits;
- (id)_textInteractableItemAtPoint:(CGPoint)a3 precision:(unint64_t)a4;
- (id)_textInteractableItemForTag:(id)a3;
- (id)_textItemForItem:(id)a3;
- (id)_textLineRectsForRange:(id)a3;
- (id)_writingToolsCoordinator;
- (id)_writingToolsCoordinator:(id)a3 textHighlightColorForScheme:(id)a4 inHighlightStyle:(id)a5;
- (id)annotatedSubstringForRange:(id)a3;
- (id)attributedPlaceholders;
- (id)attributedTextInRange:(id)a3;
- (id)automaticallySelectedOverlay;
- (id)characterRangeAtPoint:(CGPoint)a3;
- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4;
- (id)closestPositionToPoint:(CGPoint)a3;
- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4;
- (id)editMenuForTextRange:(id)a3 suggestedActions:(id)a4;
- (id)extractWordArrayFromTokensArray:(id)a3;
- (id)findInteraction:(id)a3 sessionForView:(id)a4;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)initReadonlyAndUnselectableWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)initReadonlyAndUnselectableWithFrame:(CGRect)a3 textContainer:(id)a4 textLayoutManagerEnabled:(BOOL)a5;
- (id)insertDictationResultPlaceholder;
- (id)insertTextPlaceholderWithSize:(CGSize)a3;
- (id)largeContentTitle;
- (id)metadataDictionariesForDictationResults;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)placeholders;
- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5;
- (id)positionFromPosition:(id)a3 offset:(int64_t)a4;
- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4;
- (id)rangeWithTextAlternatives:(id *)a3 atPosition:(id)a4;
- (id)selectedText;
- (id)selectionContainerView;
- (id)selectionRectsForRange:(id)a3;
- (id)textContainerView:(id)a3 cuiCatalogForTextEffectName:(id)a4;
- (id)textInRange:(id)a3;
- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4;
- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4;
- (id)undoManager;
- (int64_t)_indexForNonNullUITextPosition:(id)a3;
- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4;
- (int64_t)comparePosition:(id)a3 toPosition:(id)a4;
- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4;
- (int64_t)selectionAffinity;
- (unint64_t)_defaultWritingToolsResultOptions;
- (unint64_t)_effectiveDataDetectorTypes;
- (unint64_t)_textLengthToDeleteBeforeSelectedRangeForSmartDelete;
- (unint64_t)_totalNumberOfTextViewsInLayoutManager;
- (unint64_t)allowedWritingToolsResultOptions;
- (void)_addShortcut:(id)a3;
- (void)_adjustBottomContentInsetForTextFormattingController:(BOOL)a3;
- (void)_adjustFontForAccessibilityTraits:(BOOL)a3;
- (void)_adjustFontForTypesettingLanguage;
- (void)_applyHighlightStyle:(id)a3 colorScheme:(id)a4 toTextRange:(id)a5;
- (void)_applyHighlightStyle:(id)a3 toTextRange:(id)a4;
- (void)_applyOptionsToGeometry;
- (void)_assignTextStorageCheckingForOverrides:(uint64_t)a1;
- (void)_cancelDataDetectors;
- (void)_changeLineHeightAction:(id)a3 newLineHeight:(id)a4;
- (void)_cleanUpForResignFirstResponder;
- (void)_commonInitWithTextContainer:(id)a3 decoding:(BOOL)a4 editable:(BOOL)a5 selectable:(BOOL)a6 draggable:(BOOL)a7 textLayoutManagerEnabled:(BOOL)a8;
- (void)_configureForLayoutCalculation:(id)a3 inSize:(CGSize)a4;
- (void)_configureWithTextContainer:(id)a3 layoutManager:(id)a4 textLayoutManagerEnabled:(BOOL)a5;
- (void)_createTextEmphasisBackgroundViewIfNeeded;
- (void)_define:(id)a3;
- (void)_deleteBackwardAndNotify:(BOOL)a3;
- (void)_diagnoseFocusabilityForReport:(id)a3;
- (void)_didFinishSpeechRecognition;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_didRecognizeSpeechStrings:(id)a3;
- (void)_didRecognizeSpeechTokens:(id)a3;
- (void)_dismissTextFormattingControllerIfNeededWithAnimation:(BOOL)a3;
- (void)_ensureUpToDateTextContainerInsetAndNotifyIfNecessary;
- (void)_findSelected:(id)a3;
- (void)_hideTextFormattingForResignFirstResponderIfNeeded;
- (void)_hideTextFormattingOptions:(id)a3;
- (void)_insertAttributedText:(id)a3 withAnimation:(int64_t)a4 completion:(id)a5;
- (void)_insertAttributedTextWithoutClosingTyping:(id)a3;
- (void)_installContainerViewAtIndex:(unint64_t)a3;
- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4;
- (void)_invalidateLayoutForLinkAttributesChange:(BOOL)a3;
- (void)_keyboardDidShow:(id)a3;
- (void)_layoutPlaceholder;
- (void)_layoutText;
- (void)_logWarningForMenuControllerUsage;
- (void)_notifyDidBeginEditing;
- (void)_notifyDidEndEditing;
- (void)_notifyDidScroll;
- (void)_observedTextViewDidChange:(id)a3;
- (void)_pasteAttributedString:(id)a3 pasteAsRichText:(BOOL)a4;
- (void)_performTextFormattingRestoration;
- (void)_performTextFormattingRestorationIfNeeded;
- (void)_performTextKit1LayoutCalculation:(id)a3 inSize:(CGSize)a4;
- (void)_performTextKit2LayoutCalculation:(id)a3 inSize:(CGSize)a4;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_prepareForFirstIntrinsicContentSizeCalculation;
- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)a3;
- (void)_prepareForTextFormattingControllerPresentationWithConfiguration:(id)a3 sender:(id)a4;
- (void)_prepareForTextFormattingRestoration;
- (void)_presentTextFormattingController;
- (void)_promptForReplace:(id)a3;
- (void)_registerUndoOperationForReplacementWithActionName:(id)a3 replacementText:(id)a4;
- (void)_removeHighlightsFromTextRange:(id)a3;
- (void)_replaceRange:(id)a3 withAttributedText:(id)a4 usingAnimation:(int64_t)a5 completion:(id)a6;
- (void)_replaceRangeUsingColorWipe:(id)a3 withAttributedText:(id)a4 completion:(id)a5;
- (void)_resetDataDetectorsResults;
- (void)_resetUsesExplicitPreferredMaxLayoutWidth;
- (void)_restoreScrollPosition:(id)a3 animated:(BOOL)a4;
- (void)_restoreSize:(id *)a3 afterLayoutCalculation:(id)a4;
- (void)_resyncContainerFrameForNonAutolayoutDeferringSizeToFit:(BOOL)a3;
- (void)_scrollRangeToVisible:(_NSRange)a3 animated:(BOOL)a4;
- (void)_scrollRect:(CGRect)a3 toVisibleInContainingScrollView:(BOOL)a4;
- (void)_scrollSelectionToVisibleInContainingScrollView:(BOOL)a3;
- (void)_scrollToCaretIfNeeded;
- (void)_scrollToSelectionIfNeeded;
- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4;
- (void)_scrollViewDidEndDecelerating;
- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)a3;
- (void)_selectionMayChange:(id)a3;
- (void)_setAllowedTypingAttributes:(id)a3;
- (void)_setContentOffsetWithoutRecordingScrollPosition:(CGPoint)a3;
- (void)_setCuiCatalog:(id)a3;
- (void)_setCuiStyleEffectConfiguration:(id)a3;
- (void)_setCustomRenderDisplayLink:(id)a3;
- (void)_setDictationResult:(id)a3 withCorrectionIdentifier:(id)a4;
- (void)_setEncodedTextKitFlavor:(int64_t)a3;
- (void)_setExtremeSizingEnabled:(BOOL)a3;
- (void)_setFrameOrBounds:(CGRect)a3 fromOldRect:(CGRect)a4 settingAction:(id)a5;
- (void)_setFreezeTextContainerSize:(BOOL)a3;
- (void)_setHorizontalMargins:(unint64_t)a3;
- (void)_setInteractionState:(id)a3;
- (void)_setInteractiveTextSelectionDisabled:(BOOL)a3;
- (void)_setNeedsFrameUpdateForCustomRendering;
- (void)_setNeedsTextLayout;
- (void)_setOverridePlaceholder:(id)a3 alignment:(int64_t)a4;
- (void)_setPreferredMaxLayoutWidth:(double)a3;
- (void)_setShowsEditMenu:(BOOL)a3;
- (void)_setSiriAnimationDictationStyleWithCharacterInsertionRate:(double)a3 minimumDurationBetweenHypotheses:(double)a4;
- (void)_setTextColor:(id)a3;
- (void)_setTextSizeCacheEnabled:(BOOL)a3;
- (void)_setTypingAttributesTextColor:(id)a3;
- (void)_setWantsContentAwareTypesettingLanguage:(BOOL)a3;
- (void)_setWritingToolsCoordinator:(id)a3;
- (void)_setWritingToolsStreamingReplacements:(BOOL)a3;
- (void)_setupDefaultStyleEffectConfiguration;
- (void)_share:(id)a3;
- (void)_showTextFormattingAnimationOptions:(id)a3;
- (void)_showTextFormattingOptions:(id)a3;
- (void)_sizingRuleWillChangeShouldClearInsetEdges:(uint64_t)a1;
- (void)_startDataDetectors;
- (void)_startDataDetectorsIfNeeded;
- (void)_startSuppressingKeyboardForTextFormatting:(id)a3;
- (void)_stopSuppressingKeyboardForTextFormatting:(id)a3;
- (void)_syncTypingAttributesToTextContainerAttributesForExtraLineFragment;
- (void)_textContainerSizeDidChange:(id)a3;
- (void)_textFormattingDidDisappear:(id)a3;
- (void)_textFormattingRequestsFirstResponderResignation:(id)a3;
- (void)_textFormattingRequestsFirstResponderRestoration:(id)a3;
- (void)_textInput:(id)a3 pasteDelegateDidPasteText:(id)a4 toTextRange:(id)a5;
- (void)_textInput:(id)a3 pasteDelegateWillPasteText:(id)a4 toTextRange:(id)a5;
- (void)_textInteractableItem:(id)a3 willDismissMenuWithAnimator:(id)a4;
- (void)_textInteractableItem:(id)a3 willDisplayMenuWithAnimator:(id)a4;
- (void)_textStorageDidProcessEditing:(id)a3;
- (void)_textViewContentPaddingDidChange:(id)a3;
- (void)_textViewWillPresentTextFormattingOptions;
- (void)_translate:(id)a3;
- (void)_transliterateChinese:(id)a3;
- (void)_updateBaselineInformationDependentOnBounds;
- (void)_updateContainerTileAndSizingFlags;
- (void)_updateContentSize;
- (void)_updateFrameOfTrailingWhitespace:(CGSize)a3;
- (void)_updateInteractionGeometry;
- (void)_updatePlaceholderVisibility;
- (void)_updateSelectableInteractions;
- (void)_updateSelectionGestures;
- (void)_updateTextContainerSizeAndSizeToFit;
- (void)_updateTextEffectsConfigurationIfNeeded;
- (void)_updateTextFormattingController;
- (void)_updateTextFormattingControllerPresentationSource;
- (void)_willDrawContentOfSurface:(id)a3 withBlock:(id)a4;
- (void)_writingToolsCoordinator:(id)a3 didReceiveContexts:(id)a4;
- (void)addGhostedRange:(id)a3;
- (void)addTextAlternatives:(id)a3;
- (void)addTextAlternativesDisplayStyle:(int64_t)a3 toRange:(_NSRange)a4;
- (void)adjustedContentInsetDidChange;
- (void)alignCenter:(id)a3;
- (void)alignJustified:(id)a3;
- (void)alignLeft:(id)a3;
- (void)alignRight:(id)a3;
- (void)applyGrammarCheckingIndication;
- (void)beginFloatingCursorAtPoint:(CGPoint)a3;
- (void)beginSelectionChange;
- (void)captureTextFromCamera:(id)a3;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)a3 includingSelectedTextAndDisplayedViewControllers:(BOOL)a4;
- (void)decreaseSize:(id)a3;
- (void)deleteBackward;
- (void)draggingFinished:(id)a3;
- (void)drawTextHighlightBackgroundForTextRange:(id)a3 origin:(CGPoint)a4;
- (void)droppingFinished;
- (void)droppingStarted;
- (void)encodeRestorableStateWithCoder:(id)a3 includingSelectedTextAndDisplayedViewControllers:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
- (void)endFloatingCursor;
- (void)endSelectionChange;
- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4;
- (void)findInteraction:(id)a3 didEndFindSession:(id)a4;
- (void)increaseSize:(id)a3;
- (void)insertAdaptiveImageGlyph:(id)a3 replacementRange:(id)a4;
- (void)insertAnimatedTextPlaceholder;
- (void)insertAnimatedTextPlaceholderAtLocation:(id)a3 numLines:(double)a4 completion:(id)a5;
- (void)insertAttributedText:(id)a3;
- (void)insertDictationResult:(id)a3 withCorrectionIdentifier:(id)a4;
- (void)insertEmojiImageTextAttachment:(id)a3 replacementRange:(id)a4;
- (void)insertInputSuggestion:(id)a3;
- (void)insertText:(id)a3;
- (void)insertText:(id)a3 alternatives:(id)a4 style:(int64_t)a5;
- (void)insertTextSuggestion:(id)a3;
- (void)invalidateIntrinsicContentSize;
- (void)isEditableDidChange;
- (void)keyboardInputChangedSelection:(id)a3;
- (void)layoutSubviews;
- (void)makeTextWritingDirectionLeftToRight:(id)a3;
- (void)makeTextWritingDirectionNatural:(id)a3;
- (void)makeTextWritingDirectionRightToLeft:(id)a3;
- (void)paste:(id)a3;
- (void)pasteAndMatchStyle:(id)a3;
- (void)pasteItemProviders:(id)a3;
- (void)removeAnimatedTextPlaceholders;
- (void)removeAnnotation:(id)a3 forRange:(id)a4;
- (void)removeDictationResultPlaceholder:(id)a3 willInsertResult:(BOOL)a4;
- (void)removeEmojiAlternatives;
- (void)removeTextPlaceholder:(id)a3;
- (void)replace:(id)a3;
- (void)replaceRange:(id)a3 withAnnotatedString:(id)a4 relativeReplacementRange:(_NSRange)a5;
- (void)replaceRange:(id)a3 withAttributedText:(id)a4;
- (void)replaceRange:(id)a3 withText:(id)a4;
- (void)replaceRangeWithTextWithoutClosingTyping:(id)a3 replacementText:(id)a4;
- (void)scrollRangeToVisible:(NSRange)range;
- (void)scrollSelectionToVisible:(BOOL)a3;
- (void)select:(id)a3;
- (void)selectAll:(id)a3;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setAllowedWritingToolsResultOptions:(unint64_t)a3;
- (void)setAllowsEditingTextAttributes:(BOOL)allowsEditingTextAttributes;
- (void)setAllowsTextAnimations:(BOOL)a3;
- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setAttributedPlaceholder:(id)a3;
- (void)setAttributedPlaceholders:(id)a3;
- (void)setAttributedText:(NSAttributedString *)attributedText;
- (void)setAutomaticallyAdjustsWritingDirection:(BOOL)a3;
- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4;
- (void)setBounds:(CGRect)a3;
- (void)setClearsOnInsertion:(BOOL)clearsOnInsertion;
- (void)setContentMode:(int64_t)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentToHTMLString:(id)a3;
- (void)setContinuousSpellCheckingEnabled:(BOOL)a3;
- (void)setCustomRenderController:(id)a3;
- (void)setDataDetectorTypes:(UIDataDetectorTypes)dataDetectorTypes;
- (void)setDelegate:(id)delegate;
- (void)setEditable:(BOOL)editable;
- (void)setFindInteractionEnabled:(BOOL)findInteractionEnabled;
- (void)setFont:(UIFont *)font;
- (void)setForceDisableDictation:(BOOL)a3;
- (void)setForceEnableDictation:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setInputDelegate:(id)a3;
- (void)setInputView:(UIView *)inputView;
- (void)setLineHeight:(double)a3;
- (void)setLinkTextAttributes:(NSDictionary *)linkTextAttributes;
- (void)setMarginTop:(unint64_t)a3;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setMarkedTextStyle:(id)a3;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)setNeedsFrameUpdateForSurface:(id)a3;
- (void)setNeedsLayout;
- (void)setScrollEnabled:(BOOL)a3;
- (void)setSecureTextEntry:(BOOL)a3;
- (void)setSelectable:(BOOL)selectable;
- (void)setSelectedRange:(NSRange)selectedRange;
- (void)setSelectedRanges:(id)a3;
- (void)setSelectedTextRange:(id)a3;
- (void)setShouldAutoscrollAboveBottom:(BOOL)a3;
- (void)setShouldPresentSheetsInAWindowLayeredAboveTheKeyboard:(BOOL)a3;
- (void)setSizingRule:(int64_t)a3;
- (void)setSupportsAdaptiveImageGlyph:(BOOL)a3;
- (void)setText:(NSString *)text;
- (void)setTextAlignment:(NSTextAlignment)textAlignment;
- (void)setTextContainerInset:(UIEdgeInsets)textContainerInset;
- (void)setTextFormattingConfiguration:(id)a3;
- (void)setTiledViewsDrawAsynchronously:(BOOL)a3;
- (void)setTypingAttributes:(NSDictionary *)typingAttributes;
- (void)setUsesTiledViews:(BOOL)a3;
- (void)startAutoscroll:(CGPoint)a3;
- (void)startInteractionWithLinkAtPoint:(CGPoint)a3;
- (void)takeTraitsFrom:(id)a3;
- (void)textInput:(id)a3 didApplyAttributedText:(id)a4 toCharacterRange:(_NSRange)a5;
- (void)textInput:(id)a3 undoRedoDidApplyAttributedText:(id)a4 toCharacterRange:(_NSRange)a5;
- (void)textInputDidChange:(id)a3;
- (void)textInputDidChangeSelection:(id)a3;
- (void)textInputDidFinishUndoRedoChanges:(id)a3;
- (void)tintColorDidChange;
- (void)toggleBoldface:(id)a3;
- (void)toggleItalics:(id)a3;
- (void)toggleUnderline:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)unmarkText;
- (void)updateAutoscrollAboveBottom;
- (void)updateFloatingCursorAtPoint:(CGPoint)a3;
- (void)updateFloatingCursorAtPoint:(CGPoint)a3 animated:(BOOL)a4;
- (void)updateSelection;
- (void)updateSelectionImmediately;
- (void)updateTextAttributesWithConversionHandler:(id)a3;
- (void)validateCommand:(id)a3;
- (void)willDismissEditMenuWithAnimator:(id)a3;
- (void)willPresentEditMenuWithAnimator:(id)a3;
- (void)writingToolsCoordinator:(id)a3 adjustForUpdatedRange:(_NSRange)a4 forTextAnimation:(int64_t)a5 inContext:(id)a6 completion:(id)a7;
- (void)writingToolsCoordinator:(id)a3 finishTextAnimation:(int64_t)a4 forRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7;
- (void)writingToolsCoordinator:(id)a3 prepareForTextAnimation:(int64_t)a4 forRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7;
- (void)writingToolsCoordinator:(id)a3 replaceRange:(_NSRange)a4 inContext:(id)a5 proposedText:(id)a6 reason:(int64_t)a7 animationParameters:(id)a8 completion:(id)a9;
- (void)writingToolsCoordinator:(id)a3 requestsBoundingBezierPathsForRange:(_NSRange)a4 inContext:(id)a5 completion:(id)a6;
- (void)writingToolsCoordinator:(id)a3 requestsContextsForScope:(int64_t)a4 completion:(id)a5;
- (void)writingToolsCoordinator:(id)a3 requestsPreviewForTextAnimation:(int64_t)a4 ofRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7;
- (void)writingToolsCoordinator:(id)a3 requestsRangeInContextWithIdentifierForPoint:(CGPoint)a4 completion:(id)a5;
- (void)writingToolsCoordinator:(id)a3 requestsUnderlinePathsForRange:(_NSRange)a4 inContext:(id)a5 completion:(id)a6;
- (void)writingToolsCoordinator:(id)a3 selectRanges:(id)a4 inContext:(id)a5 completion:(id)a6;
- (void)writingToolsCoordinator:(id)a3 willChangeToState:(int64_t)a4 completion:(id)a5;
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
  v11 = [(_UITextContainerView *)self->_containerView canvasView];
  [(UIView *)self convertRect:v11 toView:v4, v6, v8, v10];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [(_UITextContainerView *)self->_containerView canvasView];
  [v20 bounds];
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
    v3 = [(_UITextLayoutController *)self->_textLayoutController styleEffectConfiguration];

    if (!v3)
    {
      v6 = objc_alloc_init(MEMORY[0x1E6999430]);
      v4 = [(UIView *)self traitCollection];
      v5 = [(UITraitCollection *)v4 _styleEffectAppearanceName];
      [v6 setAppearanceName:v5];

      [(_UITextLayoutController *)self->_textLayoutController setStyleEffectConfiguration:v6];
    }
  }
}

- (BOOL)isEditing
{
  v3 = [(UIView *)self isFirstResponder];
  if (v3)
  {

    LOBYTE(v3) = [(UITextView *)self isEditable];
  }

  return v3;
}

- (id)_textInputTraits
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v4 = objc_opt_respondsToSelector();

  v5 = objc_loadWeakRetained(&self->_inputController);
  v6 = v5;
  if (v4)
  {
    v7 = [v5 _textInputTraits];
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

    v7 = v8;
  }

  return v7;
}

- (UITextInputDelegate)inputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained inputDelegate];

  return v3;
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
        [v9 handleFailureInMethod:a2 object:self file:@"UITextView.m" lineNumber:6306 description:@"Unable to derive tintColor!"];

        v6 = 0;
      }
    }

    v12 = *off_1E70EC920;
    v13[0] = v6;
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
      v3 = [(UITextView *)&self->super.super.super.super.isa _existingSelectionContainerView];

      if (!v3)
      {
        v4 = [UIView alloc];
        v5 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        selectionContainerView = self->_selectionContainerView;
        self->_selectionContainerView = v5;

        [(UITextView *)&self->super.super.super.super.isa _placeSelectionContainerView];
      }
    }

    v7 = [(UITextView *)&self->super.super.super.super.isa _existingSelectionContainerView];
  }

  else
  {
    v7 = [(UITextView *)self textInputView];
  }

  return v7;
}

- (UITextRange)markedTextRange
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained markedTextRange];

  return v3;
}

- (UITextInputTokenizer)tokenizer
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained tokenizer];

  return v3;
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
  v7 = [WeakRetained typingAttributes];

  v4 = [(UITextView *)self textContainer];
  v5 = [v4 attributesForExtraLineFragment];

  if (v7 != v5 && ([v7 isEqual:v5] & 1) == 0)
  {
    v6 = [(UITextView *)self textContainer];
    [v6 setAttributesForExtraLineFragment:v7];
  }
}

- (void)_updateContainerTileAndSizingFlags
{
  v3 = [(UIScrollView *)self isScrollEnabled];
  v4 = [(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager];
  if (v3)
  {
    if (v4)
    {
      v5 = [(_UITextLayoutController *)self->_textLayoutController layoutManager];
      [v5 setAllowsNonContiguousLayout:1];
    }

    p_textContainer = &self->_textContainer;
    v7 = [(NSTextContainer *)self->_textContainer layoutOrientation];
    containerView = self->_containerView;
    if (v7)
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
    if (v4)
    {
      v10 = [(_UITextLayoutController *)self->_textLayoutController layoutManager];
      [v10 setAllowsNonContiguousLayout:0];
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
  v2 = [(UITextView *)self textContainer];
  v3 = [v2 textLayoutManager];

  return v3;
}

- (BOOL)_allowsOverflowForIntrinsicSizeCalculation
{
  [(UIView *)self bounds];
  result = 1;
  if (v3 == 0.0 && ([(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager]& 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    v5 = [WeakRetained typingAttributes];
    v6 = [v5 valueForKey:*off_1E70EC988];

    v7 = [(UITextView *)self textStorage];
    v8 = [v7 _ui_resolvedTextAlignmentForParagraphStyle:v6];

    v9 = [(_UITextContainerView *)self->_containerView layoutOrientation];
    if (!v9 && v8 != 0)
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

    v9 = [(UITextView *)self tokenizer];

    if (v9)
    {
      v10 = +[UITextInputTraits defaultTextInputTraits];
      textInputTraits = self->_textInputTraits;
      self->_textInputTraits = v10;
    }

    else
    {
      v16 = [(_UITextLayoutControllerBase *)self->_textLayoutController textInputController];
      objc_storeWeak(&self->_inputController, v16);

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

  v5 = [(UITextView *)self tokenizer];

  if (v5)
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
  v1 = a1;
  if (a1)
  {
    v2 = [a1[272] selectionContainerView];
    v3 = v2;
    if (!v2)
    {
      v3 = v1[345];
    }

    v1 = v3;
  }

  return v1;
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
    LOBYTE(v5) = 1;
  }

  else
  {
    self->_tvFlags = (*&tvFlags | 4);
    v4 = self;
    v7.receiver = v4;
    v7.super_class = UITextView;
    v5 = [(UIResponder *)&v7 resignFirstResponder];
    if (v5)
    {
      [(UITextView *)&v4->super.super.super.super.isa _cleanUpForResignFirstResponder];
    }

    *&self->_tvFlags &= ~4uLL;
  }

  return v5;
}

- (BOOL)_shouldInvalidateLayoutForLinkAttributesChange
{
  v3 = [(_UITextLayoutController *)self->_textLayoutController documentRange];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (([v3 isEmpty] & 1) == 0)
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
  v2 = [(UITextView *)self _textInputTraits];
  v3 = [v2 allowedWritingToolsResultOptions];

  return v3;
}

- (void)_ensureUpToDateTextContainerInsetAndNotifyIfNecessary
{
  if (!a1)
  {
    return;
  }

  [*(a1 + 2176) textContainerInset];
  v6 = v5;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = fmax(*(a1 + 2424), *(a1 + 2456));
  v11 = fmax(*(a1 + 2432), *(a1 + 2464));
  v12 = fmax(*(a1 + 2440), *(a1 + 2472));
  v13 = fmax(*(a1 + 2448), *(a1 + 2480));
  v14 = *(a1 + 2488) >= 0.0 ? v11 : *(a1 + 2488);
  v15 = v14 == v2 && v10 == v6;
  v16 = v15 && v13 == v4;
  if (v16 && v12 == v3)
  {
    return;
  }

  v18 = [a1 isScrollEnabled];
  if ((*(a1 + 95) & 2) != 0)
  {
    [a1 bounds];
    v36 = v28;
    v37 = v27;
    v34 = v30;
    v35 = v29;
    v38 = 0;
    v23 = 1;
LABEL_23:
    v32 = *MEMORY[0x1E695F060];
    v33 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_24;
  }

  v38 = [a1 superview];
  [a1 bounds];
  v36 = v22;
  v37 = v21;
  v23 = v38 == 0;
  if (v38)
  {
    v24 = v18;
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

  [a1 sizeThatFits:{v19, v20}];
  v32 = v25;
  v33 = v26;
  v23 = 0;
LABEL_24:
  [*(a1 + 2176) setTextContainerInset:{v10, v14, v12, v13}];
  if ((v18 & 1) == 0)
  {
    [a1 _updateBaselineInformationDependentOnBounds];
    v31 = *(a1 + 88);
    if (v23)
    {
      if ((v31 & 0x200000000000000) != 0 && ([a1 translatesAutoresizingMaskIntoConstraints] & 1) == 0)
      {
        [a1 invalidateIntrinsicContentSize];
      }
    }

    else if ((v31 & 0x4000000000000000) == 0)
    {
      if (vabdd_f64(v10 + v12, v6 + v8) > 2.22044605e-16 && (v40.origin.y = v36, v40.origin.x = v37, v40.size.height = v34, v40.size.width = v35, vabdd_f64(CGRectGetHeight(v40), v33) <= 2.22044605e-16) || vabdd_f64(v13 + v14, v7 + v9) > 2.22044605e-16 && (v41.origin.y = v36, v41.origin.x = v37, v41.size.height = v34, v41.size.width = v35, vabdd_f64(CGRectGetWidth(v41), v32) <= 2.22044605e-16))
      {
        [v38 setNeedsLayout];
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

  v2 = [result textContainer];
  v3 = [v2 textLayoutManager];
  if (v3)
  {
    v4 = v3;
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
  v3 = [WeakRetained selectedTextRange];

  return v3;
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
  v3 = [v2 _textView];
  v4 = [v3 _textColor];

  return v4;
}

- (void)_updateSelectionGestures
{
  if ([(UITextView *)self isSelectable])
  {
    if ([(UITextView *)self isTextDragActive]|| [(UITextView *)self isTextDropActive])
    {
      if ([(UIView *)self isFirstResponder])
      {
        v3 = [(UITextView *)self interactionAssistant];
        [v3 deactivateSelection];
      }

      v4 = [(UITextView *)self interactionAssistant];
      [v4 clearGestureRecognizers:1];

      v7 = [(UITextView *)self interactionAssistant];
      v5 = [v7 _editMenuAssistant];
      [v5 hideSelectionCommands];
    }

    else
    {
      if ([(UIView *)self isFirstResponder])
      {
        v6 = [(UITextView *)self interactionAssistant];
        [v6 activateSelection];
      }

      v7 = [(UITextView *)self interactionAssistant];
      [v7 setGestureRecognizers];
    }
  }

  else
  {
    v7 = [(UITextView *)self interactionAssistant];
    [v7 clearGestureRecognizers:1];
  }
}

- (void)_startDataDetectors
{
  v3 = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
  [v3 startURLificationForContainer:self detectedTypes:{-[UITextView _effectiveDataDetectorTypes](self, "_effectiveDataDetectorTypes")}];
}

- (unint64_t)_effectiveDataDetectorTypes
{
  v3 = [(UITextView *)self dataDetectorTypes];
  result = [(UITextView *)self dataDetectorTypes];
  if (v3 == -1)
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
  v2 = [(_UITextLayoutController *)self->_textLayoutController textContainers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) textView];

        if (v8)
        {
          ++v5;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    v4 = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
    [v4 resetResultsForContainer:self];
  }
}

- (id)_allowedTypingAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained _allowedTypingAttributes];

  return v3;
}

- (id)_getDelegateZoomView
{
  v5.receiver = self;
  v5.super_class = UITextView;
  v3 = [(UIScrollView *)&v5 _getDelegateZoomView];
  if (!v3)
  {
    v3 = self->_containerView;
  }

  return v3;
}

- (void)_adjustFontForTypesettingLanguage
{
  v3 = [(UITextView *)self text];
  v4 = [(UITextView *)self _resolvedTypesettingLanguage:v3];

  v5 = [(UIView *)self traitCollection];
  v6 = [(UITextView *)self font];
  v7 = [(UIFont *)v6 _fontAdjustedForTypesettingLanguage:v4];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v8 = [(UITextView *)self font];
  v9 = 0;
  if (v8 && v7)
  {
    v10 = [(UITextView *)self font];
    v9 = [v10 isEqual:v7] ^ 1;
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
  v3 = [WeakRetained typingAttributes];
  v4 = [v3 valueForKey:*off_1E70EC918];

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
  v3 = [(UIScrollView *)self isScrollEnabled];
  v4 = 0.0;
  if (v3)
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
  v3 = [(UIScrollView *)self isScrollEnabled];
  v4 = -1.0;
  v5 = -1.0;
  if (v3)
  {
    goto LABEL_22;
  }

  if (dyld_program_sdk_at_least() && (*(&self->super.super._viewFlags + 6) & 2) != 0)
  {
    v12 = [(UITextView *)self font];
    [v12 lineHeight];
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
  if (!a1)
  {
    return 0.0;
  }

  [a1 textContainerInset];
  return fmax(v2, a1[307]);
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
  v7 = [(_UITextContainerView *)self->_containerView layoutOrientation];
  if (v7 == 1)
  {
    [(_UITextViewContentPadding *)self->_bottomContentPadding currentValue];
    v4 = v4 + v9;
  }

  else if (!v7)
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
      v21 = [(_UITextViewRestorableScrollPosition *)WeakRetained range];
      [(UITextView *)self _rectForScrollToVisible:v21, v22];
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
        v32 = [(NSTextContainer *)self->_textContainer textView];
        [(UIView *)self convertPoint:v32 toView:v23, v26];
        v57 = v33;
        v35 = v34;

        [(UIView *)self bounds];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v44 = [(NSTextContainer *)self->_textContainer textView];
        [(UIView *)self convertRect:v44 toView:v37, v39, v41, v43];
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
        v50 = [(_UITextViewRestorableScrollPosition *)scrollTarget range];
        [(UITextView *)self _contentOffsetForScrollToVisible:v50, v51];
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
  v3 = [(UIView *)self->_layoutView superview];

  if (v3 != self)
  {
    [(UIView *)self insertSubview:self->_layoutView atIndex:0];
  }

  layoutView = self->_layoutView;

  [(UIView *)layoutView setNeedsLayout];
}

- (NSRange)selectedRange
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained selectedRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (NSString)text
{
  v2 = [(NSTextStorage *)self->_textStorage string];
  v3 = [v2 copy];

  return v3;
}

- (void)_updateTextFormattingControllerPresentationSource
{
  v3 = [(UIView *)self superview];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v46 = v5;

  textFormattingViewController = self->_textFormattingViewController;
  if (!textFormattingViewController || [(UIViewController *)textFormattingViewController isBeingDismissed])
  {
    goto LABEL_23;
  }

  v7 = [(UIViewController *)self->_textFormattingViewController popoverPresentationController];
  v8 = [v7 sourceView];
  if (v8 != v46)
  {
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v9 = [(UIViewController *)self->_textFormattingViewController popoverPresentationController];
  [v9 sourceRect];
  if (!CGRectEqualToRect(v48, *MEMORY[0x1E695F050]))
  {

    goto LABEL_21;
  }

  v10 = [(UITextView *)self selectedRange];
  v12 = v10 + v11;
  v13 = [(UITextView *)self textStorage];
  v14 = [v13 length];

  if (v12 <= v14)
  {
    [(UIViewController *)self->_textFormattingViewController preferredContentSize];
    v16 = v15;
    v18 = v17;
    v19 = [(UIResponder *)self _textInteraction];
    v20 = [v19 assistantDelegate];
    v21 = [v20 _editMenuAssistant];
    [v21 _editMenuTargetRect];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    [(UIView *)self convertRect:v46 toView:v23, v25, v27, v29];
    v31 = v30;
    MidY = v32;
    v35 = v34;
    v37 = v36;
    v38 = [(UIView *)self window];
    [v38 frame];
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
      v44 = [(UITextFormattingViewController *)self->_textFormattingViewController configuration];
      if ([v44 _isTextAnimationsConfiguration])
      {
        v45 = -6.0;
      }

      else
      {
        v45 = -10.0;
      }

      v7 = [(UIViewController *)self->_textFormattingViewController popoverPresentationController];
      v51.origin.x = v31;
      v51.origin.y = MidY;
      v51.size.width = v35;
      v51.size.height = v37;
      v52 = CGRectInset(v51, -10.0, v45);
      [v7 setSourceRect:{v52.origin.x, v52.origin.y, v52.size.width, v52.size.height}];
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
    v4 = [(UITextView *)self textLayoutController];
    [v4 extraLineFragmentRect];
    v6 = v5;
    v8 = v7;
    rect = v9;
    v11 = v10;

    v12 = [(UITextView *)self font];
    [v12 ascender];
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

    v25 = [(UITextView *)self textContainer];
    [v25 lineFragmentPadding];
    v27 = horizontalTextContainerGeometryAdjustment + v26;

    v28 = [(UITextView *)self textContainer];
    [v28 lineFragmentPadding];
    v30 = v23 + v29;

    v31 = v6 + v27;
    v32 = [(UITextView *)self textContainer];
    [v32 size];
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
  v2 = [(UITextView *)self interactionAssistant];
  [v2 setNeedsSelectionDisplayUpdate];
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
  v3 = [WeakRetained beginningOfDocument];

  return v3;
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = UITextView;
  [(UIView *)&v7 tintColorDidChange];
  v3 = [(UITextView *)self _textInputTraits];
  v4 = [(UIView *)self _inheritedInteractionTintColor];
  [v3 _setColorsToMatchTintColor:v4];

  if ([(UITextView *)self isEditing])
  {
    [(UITextView *)self updateSelection];
  }

  if (!self->_linkTextAttributes && ([(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager]& 1) == 0)
  {
    v5 = [(UIView *)self tintColor];
    v6 = v5;
    if (v5)
    {
      if (([v5 isEqual:self->_cachedTintColor] & 1) == 0)
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
  v4 = [(_UITextLayoutController *)self->_textLayoutController documentRange];
  if (v3)
  {
    v5 = v3;
    v6 = v4;
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
  v14 = [(UITextView *)self textLayoutController];
  v3 = [v14 documentRange];
  if ([v3 isEmpty])
  {
    goto LABEL_2;
  }

  v4 = [v14 textContainers];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = [(UIView *)self _wantsAutolayout];
    if (v6)
    {
      v3 = [(UIView *)self _layoutEngineCreateIfNecessary];
      if (!v3)
      {
LABEL_2:

        goto LABEL_7;
      }
    }

    else
    {
      v3 = 0;
    }

    _UIBaselineLayoutBoundsConsultingContentSizeConstraints(self);
    firstBaselineOffsetFromTop = self->_firstBaselineOffsetFromTop;
    lastBaselineOffsetFromBottom = self->_lastBaselineOffsetFromBottom;
    [(UITextView *)self _baselineOffsetsAtSize:v9, v10];
    if (firstBaselineOffsetFromTop != v11 || lastBaselineOffsetFromBottom != v12)
    {
      self->_firstBaselineOffsetFromTop = v11;
      self->_lastBaselineOffsetFromBottom = v12;
      if (v6)
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
  if (!a1)
  {
    return 0.0;
  }

  v2 = 0.0;
  if ((a1[279] & 0x6000) != 0 && ([a1 isScrollEnabled] & 1) == 0)
  {
    v3 = [a1 text];
    v4 = +[UILabel _tooBigChars];
    v5 = [v3 rangeOfCharacterFromSet:v4];

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = a1[270];
      v7 = [a1 font];
      v2 = [UILabel _insetsForAttributedString:v6 withDefaultFont:v7 inView:a1];
    }
  }

  return 0.0 - v2;
}

- (void)dealloc
{
  v8[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v8[0] = *off_1E70ECD50;
  v8[1] = @"_UITextContainerViewSizeDidChange";
  v8[2] = *off_1E70ECAC0;
  v8[3] = @"UIKeyboardDidShowNotification";
  v8[4] = @"UIKeyboardDidChangeFrameNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:5];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

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
    v4 = [(UIView *)placeholderLabel isHidden];
    v5 = [(UITextView *)self text];
    -[UIView setHidden:](self->_placeholderLabel, "setHidden:", [v5 length] != 0);

    if (v4 && ![(UIView *)self->_placeholderLabel isHidden])
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
    v5 = [v4 filteredAttributedText];
  }

  else
  {
    v5 = [(NSTextStorage *)self->_textStorage copy];
  }

  return v5;
}

- (NSDictionary)typingAttributes
{
  [(UITextView *)self _syncTypingAttributesToTextContainerAttributesForExtraLineFragment];
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v4 = [WeakRetained typingAttributes];

  return v4;
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
      v5 = [(UITextView *)self _descriptorForTextFormattingOptions];
      [v4 setFormattingDescriptor:v5];
    }
  }

  if (self->_textFormattingViewController)
  {
    v6 = [(UITextView *)self _descriptorForTextFormattingOptions];
    [(UITextFormattingViewController *)self->_textFormattingViewController setFormattingDescriptor:v6];

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
  v2 = [(UIScrollView *)self delegate];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)_scrollToCaretIfNeeded
{
  v3 = [(UITextView *)self interactionAssistant];
  v4 = [v3 activeSelection];
  v5 = [v4 selectedRange];
  v6 = [v5 _isCaret];

  if (v6)
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
        v38 = [(UIView *)self _scroller];
        [v38 bounds];
        [(UIView *)self convertRect:v38 fromView:?];
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
  v3 = [WeakRetained endOfDocument];

  return v3;
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
  v2 = [(UITextView *)self textLayoutController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (id)_currentDefaultAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained typingAttributes];
  v4 = [v3 mutableCopy];

  v5 = *off_1E70EC920;
  v6 = [v4 objectForKey:*off_1E70EC920];

  if (!v6)
  {
    v7 = [objc_opt_class() _defaultTextColor];
    [v4 setObject:v7 forKey:v5];
  }

  return v4;
}

- (void)_setNeedsFrameUpdateForCustomRendering
{
  v3 = [(_UITextContainerView *)self->_containerView canvasView];
  [v3 setNeedsLayout];

  v4 = [(UIScrollView *)self delegate];
  if ((*(&self->_tvFlags + 3) & 2) != 0)
  {
    v5 = v4;
    [v4 _textViewDidChangeCustomRenderBounds:self];
    v4 = v5;
  }
}

- (void)_updateTextEffectsConfigurationIfNeeded
{
  v3 = [(_UITextLayoutController *)self->_textLayoutController styleEffectConfiguration];
  if (v3)
  {
    v11 = v3;
    v4 = [(UIView *)self traitCollection];
    v5 = [(UITraitCollection *)v4 _styleEffectAppearanceName];

    v6 = [v11 appearanceName];
    v7 = v5;
    v8 = v6;
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
    v3 = v11;
  }
}

- (UIColor)selectionHighlightColor
{
  v3 = [(UITextView *)self textInputTraits];
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

- (BOOL)hasText
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained hasText];

  return v3;
}

- (BOOL)forceEnableDictation
{
  v2 = [(UITextView *)self _textInputTraits];
  v3 = [v2 forceEnableDictation];

  return v3;
}

- (BOOL)forceDisableDictation
{
  v2 = [(UITextView *)self _textInputTraits];
  v3 = [v2 forceDisableDictation];

  return v3;
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
    v3 = [(UITextView *)self _existingWritingToolsCoordinator];
    if (!v3)
    {
      v3 = [[UIWritingToolsCoordinator alloc] initWithDelegate:self];
      v4 = [(UITextView *)self _textInputTraits];
      v5 = [v4 allowedWritingToolsResultOptions];
      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = 2;
      }

      [(UIWritingToolsCoordinator *)v3 setPreferredResultOptions:v6];
      v7 = [v4 writingToolsBehavior];
      v8 = [(UITextView *)self textLayoutManager];
      if (v8)
      {
      }

      else if (v7 <= 2)
      {
        v7 = 2;
      }

      [(UIWritingToolsCoordinator *)v3 setPreferredBehavior:v7];
      v9 = [(UITextView *)self selectionContainerView];
      [(UIWritingToolsCoordinator *)v3 setDecorationContainerView:v9];

      [(UIWritingToolsCoordinator *)v3 setIncludesTextListMarkers:[(UITextView *)self _supportsTextKit2TextLists]^ 1];
      [(UIView *)self addInteraction:v3];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_existingWritingToolsCoordinator
{
  v4.receiver = self;
  v4.super_class = UITextView;
  v2 = [(UIView *)&v4 _writingToolsCoordinator];

  return v2;
}

- (BOOL)_shouldCollectAsKeyView
{
  v3 = [(UIView *)self isUserInteractionEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(UITextView *)self isEditable];
  }

  return v3;
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
    v5.super_class = UITextView;
    v3 = [(UIResponder *)&v5 inputAccessoryView];
  }

  return v3;
}

- (BOOL)becomeFirstResponder
{
  if ([(UIView *)self isFirstResponder])
  {
    LOBYTE(v3) = 1;
    return v3;
  }

  if (+[UIResponder _currentChangeIntent](UIResponder, "_currentChangeIntent") == 1 && [(UITextView *)self _shouldBecomeEditableUponFocus]|| +[UIResponder _currentChangeIntent]== 2 && [(UITextView *)self _shouldBecomeEditableUponBecomingTargetOfKeyboardEventDeferringEnvironment])
  {
    [(UITextView *)self setEditable:1];
  }

  v4 = [(UIView *)self keyboardSceneDelegate];
  if (![(UIView *)self isFirstResponder])
  {
    if ([v4 isOnScreen])
    {
      goto LABEL_12;
    }

LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  v5 = [v4 responder];
  v6 = v5;
  if (v5 == self)
  {
    v8 = [v4 isOnScreen];

    if (v8)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_12:
  [v4 _beginIgnoringReloadInputViews];
  v7 = 1;
LABEL_15:
  v15.receiver = self;
  v15.super_class = UITextView;
  v3 = [(UIView *)&v15 becomeFirstResponder];
  v9 = [(UITextView *)self isEditable];
  if (v3)
  {
    v10 = v9;
    if (v9)
    {
      [(UITextView *)self _resetDataDetectorsResults];
      v11 = [(UITextView *)self _textInputTraits];
      v12 = [(UIView *)self _inheritedInteractionTintColor];
      [v11 _setColorsToMatchTintColor:v12];

      if ((v7 & 1) == 0)
      {
        [(UITextView *)self _notifyDidBeginEditing];
      }

      v13 = [(_UITextContainerView *)self->_containerView canvasView];
      [v13 isEditingDidChange];

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
      [v4 _endIgnoringReloadInputViews];
      [(UIResponder *)self reloadInputViews];
      if (v10)
      {
        [(UITextView *)self _notifyDidBeginEditing];
      }
    }
  }

  else if ((v7 & 1) != 0 && [v4 _endIgnoringReloadInputViews])
  {
    [v4 forceReloadInputViews];
  }

  return v3;
}

- (void)_notifyDidBeginEditing
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained textViewDidBeginEditing:self];
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"UITextViewTextDidBeginEditingNotification" object:self];
}

- (Class)_intelligenceBaseClass
{
  sub_188A34624(0, &qword_1EA93F8C0);

  return swift_getObjCClassFromMetadata();
}

- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4
{
  v5 = a4;
  v6 = self;
  _sSo10UITextViewC5UIKitE27_intelligenceCollectContent2in9collectorySo6CGRectV_21UIIntelligenceSupport0J16ElementCollectorCtF_0(v5);
}

- (id)largeContentTitle
{
  v3 = [(UIView *)self _largeContentStoredProperties];
  v4 = [v3 didSetLargeContentTitle];

  if (v4)
  {
    v8.receiver = self;
    v8.super_class = UITextView;
    v5 = [(UIView *)&v8 largeContentTitle];
  }

  else
  {
    v6 = [(UITextView *)self attributedText];
    v5 = [v6 string];
  }

  return v5;
}

- (void)insertAnimatedTextPlaceholder
{
  v3 = [(UITextView *)self endOfDocument];
  [(UITextView *)self insertAnimatedTextPlaceholderAtLocation:v3 numLines:0.0];
}

- (void)insertAnimatedTextPlaceholderAtLocation:(id)a3 numLines:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(UITextView *)self removeAnimatedTextPlaceholders];
  v12 = [(UITextView *)self _animatedPlaceholderSupport];
  v10 = [v12 insertLoadingPlaceholderAtLocation:v9 lines:v8 completion:a4];

  activeAnimatedPlaceholder = self->_activeAnimatedPlaceholder;
  self->_activeAnimatedPlaceholder = v10;
}

- (BOOL)replaceAnimatedTextPlaceholderWith:(id)a3 completion:(id)a4
{
  activeAnimatedPlaceholder = self->_activeAnimatedPlaceholder;
  if (activeAnimatedPlaceholder)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(UITextView *)self _animatedPlaceholderSupport];
    [v9 replacePlaceholder:self->_activeAnimatedPlaceholder withText:v8 completion:v7];
  }

  return activeAnimatedPlaceholder != 0;
}

- (void)removeAnimatedTextPlaceholders
{
  if (self->_activeAnimatedPlaceholder)
  {
    v3 = [(UITextView *)self _animatedPlaceholderSupport];
    [v3 removePlaceholder:self->_activeAnimatedPlaceholder];

    activeAnimatedPlaceholder = self->_activeAnimatedPlaceholder;
    self->_activeAnimatedPlaceholder = 0;
  }
}

- (void)_insertAttributedText:(id)a3 withAnimation:(int64_t)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(UITextView *)self selectedTextRange];
  if (!v9)
  {
    v10 = [(UITextView *)self endOfDocument];
    v11 = [(UITextView *)self endOfDocument];
    v9 = [(UITextView *)self textRangeFromPosition:v10 toPosition:v11];
  }

  [(UITextView *)self _replaceRange:v9 withAttributedText:v12 usingAnimation:a4 completion:v8];
}

- (void)_replaceRange:(id)a3 withAttributedText:(id)a4 usingAnimation:(int64_t)a5 completion:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a6;
  if (a5 == 1)
  {
    v12 = [(UITextView *)self _animatedPlaceholderSupport];
    [v12 replaceRangeUsingReplacementEffect:v13 withAttributedText:v10 completion:v11];
  }

  else if (a5 == 2)
  {
    [(UITextView *)self _replaceRangeUsingColorWipe:v13 withAttributedText:v10 completion:v11];
  }
}

- (void)_replaceRangeUsingColorWipe:(id)a3 withAttributedText:(id)a4 completion:(id)a5
{
  v38[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UITextView *)self _replaceRange:v8 withAttributedText:v9 updatingSelection:1];
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
  v22 = [(UITextView *)self typingAttributes];
  v23 = [(UITextView *)self textColor];
  v24 = ResolvedReplacementColorForTypingAttributes(v22, v23);
  [(_UIIntelligentTextInsertionAnimatedColor *)v21 setResolvedColor:v24];

  v37 = *off_1E70EC920;
  v38[0] = v21;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v26 = [(UITextView *)self textLayoutController];
  [v26 addRenderingAttributes:v25 forRange:v11];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __91__UITextView_AnimatedInsertion___replaceRangeUsingColorWipe_withAttributedText_completion___block_invoke_2;
  v30[3] = &unk_1E70F5F08;
  v30[4] = self;
  v27 = v25;
  v31 = v27;
  v28 = v11;
  v32 = v28;
  v29 = v10;
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

- (id)_activityItemsConfigurationAtLocation:(CGPoint)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [UIActivityItemsConfiguration alloc];
  v5 = [(UITextView *)self selectedText];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [(UIActivityItemsConfiguration *)v4 initWithObjects:v6];

  return v7;
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  v5 = [(UIScrollView *)self delegate];

  if (v5 != v4)
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

- (id)_newContainerViewWithFrame:(CGRect)a3 textContainer:(id)a4 textLayoutController:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v12 = a4;
  v13 = [[_UITextContainerView alloc] initWithFrame:v11 textLayoutController:v12 textContainer:self delegate:x, y, width, height];

  [(_UITextContainerView *)v13 setVerticallyResizable:[(UIScrollView *)self isScrollEnabled]];
  [(_UITextContainerView *)v13 setMaxSize:1.79769313e308, 1.79769313e308];
  if (_UITextViewAllowSelectionContainerInTextLayoutCanvas())
  {
    [(_UITextContainerView *)v13 setTextEmphasisBackgroundView:self->_textEmphasisBackgroundView withTextView:self];
  }

  return v13;
}

- (id)_newTextKit1LayoutControllerWithTextContainer:(id)a3 layoutManager:(id)a4 textStorage:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_UITextKit1LayoutController alloc] initWithTextView:v10 textContainer:v9 layoutManager:v8 textStorage:?];

  v12 = [(_UITextKit1LayoutController *)v11 originalLayoutManager];
  [v12 setAllowsNonContiguousLayout:1];

  return v11;
}

- (void)_assignTextStorageCheckingForOverrides:(uint64_t)a1
{
  v7 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 2160), a2);
    *(a1 + 2232) &= ~0x400000000uLL;
    if (([*(a1 + 2160) isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      v4 = objc_opt_class();
      MethodImplementation = class_getMethodImplementation(v4, sel_replaceCharactersInRange_withAttributedString_);
      v6 = objc_opt_class();
      *(a1 + 2232) = *(a1 + 2232) & 0xFFFFFFFBFFFFFFFFLL | ((class_getMethodImplementation(v6, sel_replaceCharactersInRange_withAttributedString_) != MethodImplementation) << 34);
    }
  }
}

- (void)_configureWithTextContainer:(id)a3 layoutManager:(id)a4 textLayoutManagerEnabled:(BOOL)a5
{
  v5 = a5;
  obj = a3;
  v9 = a4;
  v10 = obj;
  v11 = v9;
  if (!obj)
  {
    v10 = [(UITextView *)self _newTextContainer];
LABEL_7:
    obj = v10;
    if (self->_textStorage)
    {
      if (v5)
      {
LABEL_9:
        v16 = objc_alloc_init(off_1E70ECBC0);
        [v16 setTextStorage:self->_textStorage];
        v17 = [[_UITextKit2LayoutController alloc] initWithTextView:self textContentStorage:v16 textContainer:obj];
        textLayoutController = self->_textLayoutController;
        self->_textLayoutController = v17;

        v19 = [(_UITextLayoutController *)self->_textLayoutController firstTextContainer];
        textContainer = self->_textContainer;
        self->_textContainer = v19;

        [(UITextView *)self _createTextEmphasisBackgroundViewIfNeeded];
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v21 = objc_alloc_init(off_1E70ECC00);
      [(UITextView *)self _assignTextStorageCheckingForOverrides:v21];

      v10 = obj;
      if (v5)
      {
        goto LABEL_9;
      }
    }

    objc_storeStrong(&self->_textContainer, v10);
    v16 = [(UITextView *)self _newTextKit1LayoutControllerWithTextContainer:self->_textContainer layoutManager:v11 textStorage:self->_textStorage];
    objc_storeStrong(&self->_textLayoutController, v16);
    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = *off_1E70ECD50;
    v24 = [v16 layoutManager];
    [v22 addObserver:self selector:sel__observedTextViewDidChange_ name:v23 object:v24];

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

  objc_storeStrong(&self->_textContainer, a3);
  v14 = [(_UITextLayoutController *)self->_textLayoutController textStorage];
  [(UITextView *)self _assignTextStorageCheckingForOverrides:v14];

  if (v5)
  {
    v15 = [obj textLayoutManager];

    if (v15)
    {
      [(UITextView *)self _createTextEmphasisBackgroundViewIfNeeded];
    }
  }

LABEL_14:
  containerView = self->_containerView;
  if (containerView)
  {
    if (v5 && (v28 = _UITextViewAllowSelectionContainerInTextLayoutCanvas(), containerView = self->_containerView, v28))
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

- (void)_installContainerViewAtIndex:(unint64_t)a3
{
  [(_UITextLayoutController *)self->_textLayoutController usedRectForTextContainer:self->_textContainer];
  v6 = v5;
  if (dyld_program_sdk_at_least())
  {
    v7 = [(UIView *)self traitCollection];
    v8 = [v7 userInterfaceIdiom];
    v9 = 8.0;
    if (v8 == 6)
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
  v18 = [(UITextView *)self _contentView];
  [v18 insertSubview:self->_containerView atIndex:a3];
}

- (BOOL)_reconfigureWithLayoutManager:(id)a3 triggeredByLayoutManagerAccess:(BOOL)a4 triggeringSelector:(SEL)a5
{
  v5 = a4;
  v7 = a3;
  textLayoutController = self->_textLayoutController;
  if (!textLayoutController || ([(_UITextLayoutController *)textLayoutController canAccessLayoutManager]& 1) != 0 || (tvFlags = self->_tvFlags, (*&tvFlags & 0x1000) != 0))
  {
    v12 = 0;
  }

  else
  {
    self->_tvFlags = (*&tvFlags | 0x1000);
    v10 = [(UITextView *)self _existingWritingToolsCoordinator];
    v11 = v10;
    if (v10 && [v10 behavior] != -1)
    {
      [v11 setPreferredBehavior:2];
    }

    _UITextViewEnablingCompatibilityMode(self, v5);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __94__UITextView__reconfigureWithLayoutManager_triggeredByLayoutManagerAccess_triggeringSelector___block_invoke;
    v14[3] = &unk_1E70F35B8;
    v14[4] = self;
    v15 = v7;
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

- (void)_setEncodedTextKitFlavor:(int64_t)a3
{
  if (self->_textKitCodingFlavor != a3)
  {
    self->_textKitCodingFlavor = a3;
  }
}

- (void)_commonInitWithTextContainer:(id)a3 decoding:(BOOL)a4 editable:(BOOL)a5 selectable:(BOOL)a6 draggable:(BOOL)a7 textLayoutManagerEnabled:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = a3;
  v16 = +[_UITextViewVisualStyle inferredVisualStyle];
  visualStyle = self->_visualStyle;
  self->_visualStyle = v16;

  v18 = self;
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
    v62 = v13;
    v21 = v11;
    v22 = v12;
    v23 = v9;
    v24 = v15;
    v26 = v25 = v10;
    v27 = [v20 isEqualToString:v26];

    v10 = v25;
    v15 = v24;
    v9 = v23;
    v12 = v22;
    v11 = v21;
    v13 = v62;

    v8 = v8 & ~v27;
  }

  v28 = v18;
  if ((dyld_program_sdk_at_least() & 1) == 0 && qword_1ED499900 != -1)
  {
    dispatch_once(&qword_1ED499900, &__block_literal_global_2404);
  }

  if (byte_1ED499892 == 1 && (objc_opt_isKindOfClass() & 1) != 0)
  {

    if (v15 && !v28->_textLayoutController)
    {
      v29 = [_UITextLayoutControllerBase layoutControllerWithTextView:v28 textContainer:v15];
      textLayoutController = v28->_textLayoutController;
      v28->_textLayoutController = v29;

      objc_storeStrong(&v28->_textContainer, v13);
      v31 = [(_UITextLayoutController *)v28->_textLayoutController textStorage];
      [(UITextView *)v28 _assignTextStorageCheckingForOverrides:v31];
    }
  }

  else
  {

    [(UITextView *)v28 _setUpWithTextContainer:v15 textLayoutManagerEnabled:v8];
  }

  [(UITextView *)v28 _setupDefaultStyleEffectConfiguration];
  v32 = [MEMORY[0x1E696AD88] defaultCenter];
  [v32 addObserver:v28 selector:sel__textStorageDidProcessEditing_ name:*off_1E70ECAC0 object:v28->_textStorage];
  [v32 addObserver:v28 selector:sel__keyboardDidShow_ name:@"UIKeyboardDidShowNotification" object:0];
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
    v36 = [(UIView *)v28 traitCollection];
    if ([v36 userInterfaceIdiom] == 6)
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

  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&v28->_inputController);

    if (!WeakRetained)
    {
      v45 = [(_UITextLayoutControllerBase *)v28->_textLayoutController textInputController];
      objc_storeWeak(&v28->_inputController, v45);

      v46 = objc_loadWeakRetained(&v28->_inputController);
      [v46 setDelegate:v28];
    }
  }

  v28->_defaultTextPreviewOptions = 0;
  v47 = [[_UITextStorageDraggableGeometry alloc] initWithView:v28 textStorage:v28->_textStorage];
  geometry = v28->_geometry;
  v28->_geometry = v47;

  if (v9)
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
  [(UITextView *)v28 setEditable:v11];
  if (!v11)
  {
    [(UITextView *)v28 setSelectable:v10];
  }

  [(UITextView *)v28 _setShowsEditMenu:1];
  if (!v12)
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

  v56 = [objc_opt_class() _defaultTextColor];
  [(UITextView *)v28 _setTypingAttributesTextColor:v56];

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v57 = [(UIView *)v28 traitCollection];
    v58 = [v57 userInterfaceIdiom];

    if (v58 == 6)
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

  [v32 addObserver:v28 selector:sel__textContainerSizeDidChange_ name:@"_UITextContainerViewSizeDidChange" object:v28->_containerView];
  v28->_canShowTextFormattingOptions = _os_feature_enabled_impl();
  if (dyld_program_sdk_at_least())
  {
    v59 = objc_opt_new();
    [(UITextView *)v28 setTextFormattingConfiguration:v59];
  }

  [(UITextView *)v28 setAutomaticallyAdjustsWritingDirection:_os_feature_enabled_impl()];
  v60 = [(UITextView *)v28 textLayoutManager];
  if (v60)
  {
    v61 = [objc_opt_class() _resolvesNaturalAlignmentWithBaseWritingDirection];
    if (v61 != [v60 resolvesNaturalAlignmentWithBaseWritingDirection])
    {
      [v60 setResolvesNaturalAlignmentWithBaseWritingDirection:v61];
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
  v10 = [(UIScrollView *)&v12 initWithFrame:x, y, width, height];
  if (v10)
  {
    -[UITextView _commonInitWithTextContainer:decoding:editable:selectable:draggable:textLayoutManagerEnabled:](v10, "_commonInitWithTextContainer:decoding:editable:selectable:draggable:textLayoutManagerEnabled:", v9, 0, 1, 1, 1, [objc_opt_class() _isTextLayoutManagerEnabled]);
  }

  return v10;
}

- (id)_initWithFrame:(CGRect)a3 textLayoutManagerEnabled:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = UITextView;
  v5 = [(UIScrollView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(UITextView *)v5 _commonInitWithTextContainer:0 decoding:0 editable:1 selectable:1 draggable:1 textLayoutManagerEnabled:v4];
  }

  return v6;
}

+ (UITextView)textViewUsingTextLayoutManager:(BOOL)usingTextLayoutManager
{
  v3 = usingTextLayoutManager;
  v4 = [a1 alloc];
  v5 = [v4 _initWithFrame:v3 textLayoutManagerEnabled:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v5;
}

- (id)initReadonlyAndUnselectableWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = -[UITextView initReadonlyAndUnselectableWithFrame:textContainer:textLayoutManagerEnabled:](self, "initReadonlyAndUnselectableWithFrame:textContainer:textLayoutManagerEnabled:", v9, [objc_opt_class() _isTextLayoutManagerEnabled], x, y, width, height);

  return v10;
}

- (id)initReadonlyAndUnselectableWithFrame:(CGRect)a3 textContainer:(id)a4 textLayoutManagerEnabled:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v15.receiver = self;
  v15.super_class = UITextView;
  v12 = [(UIScrollView *)&v15 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    [(UITextView *)v12 _commonInitWithTextContainer:v11 decoding:0 editable:0 selectable:0 draggable:0 textLayoutManagerEnabled:v5];
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

  v8 = [objc_opt_class() _isTextLayoutManagerEnabled];
  v9 = [(UITextView *)v5 _encodedTextKitFlavor];
  if (v9 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8;
  }

  if (v9 == 1)
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
  v15 = [(UITextView *)v5 _textInputTraits];
  [v15 setAutocapitalizationType:2];
  if ([(NSCoder *)v4 containsValueForKey:@"UIAutocapitalizationType"])
  {
    [v15 setAutocapitalizationType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UIAutocapitalizationType"}];
  }

  [v15 setAutocorrectionType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UIAutocorrectionType"}];
  [v15 setSpellCheckingType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UISpellCheckingType"}];
  [v15 setKeyboardType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UIKeyboardType"}];
  [v15 setKeyboardAppearance:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UIKeyboardAppearance"}];
  [v15 setReturnKeyType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UIReturnKeyType"}];
  [v15 setEnablesReturnKeyAutomatically:{-[NSCoder decodeBoolForKey:](v4, "decodeBoolForKey:", @"UIEnablesReturnKeyAutomatically"}];
  v16 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UITextContentType"];
  [v15 setTextContentType:v16];

  [v15 setSmartInsertDeleteType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UITextSmartInsertDeleteType"}];
  [v15 setSmartQuotesType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UITextSmartQuotesType"}];
  [v15 setSmartDashesType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UITextSmartDashesType"}];
  [v15 setInlinePredictionType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UITextInlinePredictionType"}];
  [v15 setMathExpressionCompletionType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UITextMathExpressionCompletionType"}];
  [v15 setAllowsTextAnimationsType:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UITextAllowsTextAnimationsType"}];
  [v15 setKeyboardSuggestionOptions:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"TUIKeyboardSuggestionOptions"}];
  [v15 setWritingToolsBehavior:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UIWritingToolsBehavior"}];
  [v15 setAllowsNumberPadPopover:{-[NSCoder decodeBoolForKey:](v4, "decodeBoolForKey:", @"UITextAllowsNumberPadPopover"}];
  v17 = @"UIAllowedWritingToolsResultOptions";
  if ([(NSCoder *)v4 containsValueForKey:@"UIAllowedWritingToolsResultOptions"]|| (v17 = @"UIWritingToolsAllowedInputOptions", [(NSCoder *)v4 containsValueForKey:@"UIWritingToolsAllowedInputOptions"]))
  {
    [v15 setAllowedWritingToolsResultOptions:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", v17)}];
  }

  [v15 setSecureTextEntry:{-[NSCoder decodeBoolForKey:](v4, "decodeBoolForKey:", @"UISecureTextEntry"}];
  if (![(UIScrollView *)v5 isScrollEnabled]&& [(_UITextLayoutController *)v5->_textLayoutController canAccessLayoutManager])
  {
    v18 = [(_UITextLayoutController *)v5->_textLayoutController layoutManager];
    [v18 setAllowsNonContiguousLayout:0];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = UITextView;
  [(UIScrollView *)&v22 encodeWithCoder:v4];
  v5 = [(UITextView *)self attributedText];
  v6 = v5;
  if (v5 && [v5 length])
  {
    v7 = [v6 string];
    [v4 encodeObject:v7 forKey:@"UIText"];

    v8 = [(UITextView *)self attributedText];
    [v4 encodeObject:v8 forKey:@"UIAttributedText"];
  }

  if ([(UITextView *)self allowsEditingTextAttributes])
  {
    [v4 encodeBool:-[UITextView allowsEditingTextAttributes](self forKey:{"allowsEditingTextAttributes"), @"UIAllowsEditingTextAttributes"}];
  }

  if ([(UITextView *)self adjustsFontForContentSizeCategory])
  {
    [v4 encodeBool:1 forKey:@"UIAdjustsFontForContentSizeCategory"];
  }

  v9 = [(UITextView *)self font];

  if (v9)
  {
    v10 = [(UITextView *)self font];
    [v4 encodeObject:v10 forKey:@"UIFont"];
  }

  v11 = [(UITextView *)self textColor];

  if (v11)
  {
    v12 = [(UITextView *)self textColor];
    [v4 encodeObject:v12 forKey:@"UITextColor"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v14 = [WeakRetained typingAttributes];
  v15 = [v14 valueForKey:*off_1E70EC988];

  if (v15)
  {
    v16 = [v15 alignment];
  }

  else
  {
    v16 = 4;
  }

  [v4 encodeInteger:v16 forKey:@"UITextAlignment"];

  if (![(UITextView *)self isEditable])
  {
    [v4 encodeBool:0 forKey:@"UIEditable"];
  }

  if ([(UITextView *)self dataDetectorTypes])
  {
    [v4 encodeInteger:-[UITextView dataDetectorTypes](self forKey:{"dataDetectorTypes"), @"UIDataDetectorTypes"}];
  }

  if (![(UITextView *)self isSelectable])
  {
    [v4 encodeBool:0 forKey:@"UISelectable"];
  }

  if ([(UITextView *)self isFindInteractionEnabled])
  {
    [v4 encodeBool:1 forKey:@"UIFindInteractionEnabled"];
  }

  v17 = [(UITextView *)self _textInputTraits];
  if ([v17 autocapitalizationType] != 2)
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"autocapitalizationType"), @"UIAutocapitalizationType"}];
  }

  if ([v17 autocorrectionType])
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"autocorrectionType"), @"UIAutocorrectionType"}];
  }

  if ([v17 spellCheckingType])
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"spellCheckingType"), @"UISpellCheckingType"}];
  }

  if ([v17 keyboardType])
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"keyboardType"), @"UIKeyboardType"}];
  }

  if ([v17 keyboardAppearance])
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"keyboardAppearance"), @"UIKeyboardAppearance"}];
  }

  if ([v17 returnKeyType])
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"returnKeyType"), @"UIReturnKeyType"}];
  }

  if ([v17 enablesReturnKeyAutomatically])
  {
    [v4 encodeBool:objc_msgSend(v17 forKey:{"enablesReturnKeyAutomatically"), @"UIEnablesReturnKeyAutomatically"}];
  }

  if ([v17 isSecureTextEntry])
  {
    [v4 encodeBool:objc_msgSend(v17 forKey:{"isSecureTextEntry"), @"UISecureTextEntry"}];
  }

  v18 = [v17 textContentType];

  if (v18)
  {
    v19 = [v17 textContentType];
    [v4 encodeObject:v19 forKey:@"UITextContentType"];
  }

  if ([v17 smartInsertDeleteType])
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"smartInsertDeleteType"), @"UITextSmartInsertDeleteType"}];
  }

  if ([v17 smartQuotesType])
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"smartQuotesType"), @"UITextSmartQuotesType"}];
  }

  if ([v17 smartDashesType])
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"smartDashesType"), @"UITextSmartDashesType"}];
  }

  if ([v17 inlinePredictionType])
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"inlinePredictionType"), @"UITextInlinePredictionType"}];
  }

  if ([v17 mathExpressionCompletionType])
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"mathExpressionCompletionType"), @"UITextMathExpressionCompletionType"}];
  }

  if ([v17 allowsTextAnimationsType])
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"allowsTextAnimationsType"), @"UITextAllowsTextAnimationsType"}];
  }

  if ([v17 keyboardSuggestionOptions])
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"keyboardSuggestionOptions"), @"TUIKeyboardSuggestionOptions"}];
  }

  if ([v17 writingToolsBehavior])
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"writingToolsBehavior"), @"UIWritingToolsBehavior"}];
  }

  if ([v17 allowedWritingToolsResultOptions])
  {
    [v4 encodeInteger:objc_msgSend(v17 forKey:{"allowedWritingToolsResultOptions"), @"UIAllowedWritingToolsResultOptions"}];
  }

  if ([v17 allowsNumberPadPopover])
  {
    [v4 encodeBool:objc_msgSend(v17 forKey:{"allowsNumberPadPopover"), @"UITextAllowsNumberPadPopover"}];
  }

  if ([(UITextView *)self usesStandardTextScaling])
  {
    [v4 encodeBool:-[UITextView usesStandardTextScaling](self forKey:{"usesStandardTextScaling"), @"UITextViewUsesStandardTextScaling"}];
  }

  if ([(UITextView *)self _encodedTextKitFlavor]>= 1)
  {
    [v4 encodeInteger:-[UITextView _encodedTextKitFlavor](self forKey:{"_encodedTextKitFlavor"), @"UITextViewTextKitCodingFlavor"}];
  }

  if ((*(&self->_tvFlags + 1) & 0x40) != 0)
  {
    [v4 encodeInteger:1 forKey:@"UILetterformAwareSizingRule"];
  }

  v20 = [(UITextView *)self textHighlightAttributes];

  if (v20)
  {
    v21 = [(UITextView *)self textHighlightAttributes];
    [v4 encodeObject:v21 forKey:@"UITextHighlightAttributes"];
  }
}

- (void)_populateArchivedSubviews:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = UITextView;
  [(UIScrollView *)&v15 _populateArchivedSubviews:v4];
  if (self->_containerView)
  {
    [v4 removeObject:?];
  }

  v5 = [(UITextView *)self interactionAssistant];
  v6 = [v5 _legacySelectionView];

  if (v6)
  {
    [v4 removeObject:v6];
    v7 = [v6 rangeView];
    v8 = [v7 startGrabber];
    v9 = [v8 _dotView];

    if (v9)
    {
      [v4 removeObject:v9];
    }

    v10 = [v6 rangeView];
    v11 = [v10 endGrabber];
    v12 = [v11 _dotView];

    if (v12)
    {
      [v4 removeObject:v12];
    }
  }

  if (self->_layoutView)
  {
    [v4 removeObject:?];
  }

  v13 = [(UITextView *)self interactionAssistant];
  v14 = [v13 _selectionViewManager];
  [v14 _filterArchivedSubviews:v4];
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

- (id)annotatedSubstringForRange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained annotatedSubstringForRange:v4];

  return v6;
}

- (void)replaceRange:(id)a3 withAnnotatedString:(id)a4 relativeReplacementRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained replaceRange:v10 withAnnotatedString:v9 relativeReplacementRange:{location, length}];
}

- (void)removeAnnotation:(id)a3 forRange:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained removeAnnotation:v7 forRange:v6];
}

- (void)addTextAlternativesDisplayStyle:(int64_t)a3 toRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v11 = [(_UITextLayoutController *)self->_textLayoutController textRangeForCharacterRange:a4.location, a4.length];
  textLayoutController = self->_textLayoutController;
  v9 = *off_1E70ECA00;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(_UITextLayoutController *)textLayoutController addAnnotationAttribute:v9 value:v10 forRange:v11];

  [(_UITextLayoutController *)self->_textLayoutController boundingRectForCharacterRange:location, length];
  [(UITextView *)self setNeedsDisplayInRect:?];
}

- (id)_resolvedTypesettingLanguage:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self traitCollection];
  v6 = [(UITextView *)self text];
  if (-[UITextView _wantsContentAwareTypesettingLanguage](self, "_wantsContentAwareTypesettingLanguage") && [v4 length] && (v7 = CTFontCopyTallestTextStyleLanguageForString()) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (![v8 length])
  {
    v9 = [v5 typesettingLanguage];

    v8 = v9;
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
    v8 = self;
    v9 = v4;
    if (qword_1ED499910 != -1)
    {
      dispatch_once(&qword_1ED499910, &__block_literal_global_2406);
    }

    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    v10 = [(UITextView *)v8 textLayoutController];
    if ([v10 canAccessLayoutManager])
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
      [(UITextView *)v8 layoutManager];
    }

    _Block_object_dispose(&v58, 8);

    v15 = [(NSAttributedString *)v9 string];
    v16 = [(UITextView *)v8 _resolvedTypesettingLanguage:v15];

    if (([(_UITextLayoutController *)v8->_textLayoutController canAccessLayoutManager]& 1) != 0)
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
      if ([(_UITextLayoutController *)v8->_textLayoutController canAccessLayoutManager])
      {
        v23 = v8->_textLayoutController;
        v24 = [(_UITextLayoutController *)v23 layoutManager];
        if ([v24 allowsNonContiguousLayout] && v7)
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

                [v24 defaultLineHeightForFont:v32];
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
            [v24 defaultLineHeightForFont:v37];
            v29 = v38;
          }

          [v24 _setGlyphsPerLineEstimate:0 offsetPerLineEstimate:v29];
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
      v8->_textContainerInsetAdjustment.top = [(UITextView *)v8 _applicableContentOutsetsFromFonts];
      v8->_textContainerInsetAdjustment.left = v40;
      v8->_textContainerInsetAdjustment.bottom = v41;
      v8->_textContainerInsetAdjustment.right = v42;
      [(UITextView *)v8 _ensureUpToDateTextContainerInsetAndNotifyIfNecessary];
      if (([(_UITextLayoutController *)v8->_textLayoutController canAccessLayoutManager]& 1) == 0)
      {
        [(UITextView *)v8 _layoutText];
      }

      v43 = *off_1E70EC9F8;
      v44 = [(NSAttributedString *)v4 length];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __32__UITextView_setAttributedText___block_invoke_4;
      v48[3] = &unk_1E7126DC0;
      v48[4] = v8;
      [(NSAttributedString *)v4 enumerateAttribute:v43 inRange:0 options:v44 usingBlock:0, v48];
      [(_UITextContainerView *)v8->_containerView setNeedsDisplay];
      [(UITextView *)v8 _syncTypingAttributesToTextContainerAttributesForExtraLineFragment];
      [(UITextView *)v8 setSelectedRange:v7, 0];
      if ([(UITextView *)v8 _shouldStartDataDetectors])
      {
        [(UITextView *)v8 _startDataDetectors];
      }

      [(_UITextInteractableItemCache *)v8->_textInteractableItemCache invalidate];

      goto LABEL_52;
    }

LABEL_26:
    v18 = [(NSAttributedString *)v9 mutableCopy];
    [(NSAttributedString *)v18 beginEditing];
    if (v17)
    {
      v19 = [objc_opt_class() _defaultFont];
      v20 = *off_1E70EC918;
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __32__UITextView_setAttributedText___block_invoke;
      v54[3] = &unk_1E7126D70;
      v55 = v18;
      v56 = v19;
      v21 = v19;
      [(NSAttributedString *)v55 enumerateAttribute:v20 inRange:0 options:v7 usingBlock:0, v54];
    }

    if (v16 && [v16 length])
    {
      v22 = *off_1E70EC918;
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __32__UITextView_setAttributedText___block_invoke_2;
      v51[3] = &unk_1E7126D98;
      v51[4] = v8;
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

- (void)_textStorageDidProcessEditing:(id)a3
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

- (void)_observedTextViewDidChange:(id)a3
{
  if ([(UITextView *)self _totalNumberOfTextViewsInLayoutManager]>= 2)
  {

    [(UITextView *)self setSelectable:0];
  }
}

- (void)_setContentOffsetWithoutRecordingScrollPosition:(CGPoint)a3
{
  ++self->_scrollPositionDontRecordCount;
  [(UITextView *)self setContentOffset:a3.x, a3.y];
  --self->_scrollPositionDontRecordCount;
}

- (void)_textViewContentPaddingDidChange:(id)a3
{
  if (self->_bottomContentPadding == a3)
  {
    [(UITextView *)self _updateContentSize];
  }
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
        v16 = [(UIView *)self effectiveUserInterfaceLayoutDirection];
        v17 = x <= 0.00000011920929;
        if (v16)
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

    v13 = [(_UITextContainerView *)self->_containerView canvasView];
    [v13 viewportBoundsDidChange];
  }

  if (!self->_scrollPositionDontRecordCount)
  {
    v14 = [(UITextView *)self _restorableScrollPosition];
    scrollPosition = self->_scrollPosition;
    self->_scrollPosition = v14;

    self->_offsetFromScrollPosition = 0.0;
  }
}

- (void)_notifyDidScroll
{
  v3 = [(_UITextContainerView *)self->_containerView canvasView];
  [v3 isScrollingChangedTo:1];

  v4.receiver = self;
  v4.super_class = UITextView;
  [(UIScrollView *)&v4 _notifyDidScroll];
}

- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)a3
{
  v3 = a3;
  if (a3)
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
        v14 = [(UITextView *)self _containerView];
        [v14 bounds];
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
    v9 = [(_UITextContainerView *)self->_containerView canvasView];
    [v9 isScrollingChangedTo:0];
  }

  v17.receiver = self;
  v17.super_class = UITextView;
  [(UIScrollView *)&v17 _scrollViewDidEndDraggingWithDeceleration:v3];
}

- (void)_scrollViewDidEndDecelerating
{
  v3 = [(_UITextContainerView *)self->_containerView canvasView];
  [v3 isScrollingChangedTo:0];

  v4.receiver = self;
  v4.super_class = UITextView;
  [(UIScrollView *)&v4 _scrollViewDidEndDecelerating];
}

- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  scrollTarget = self->_scrollTarget;
  if (scrollTarget)
  {
    v8 = !v4;
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

    v16 = [(_UITextViewRestorableScrollPosition *)self->_scrollTarget range];
    [(UITextView *)self _contentOffsetForScrollToVisible:v16, v17];
    v19 = v18;
    v21 = v20;
    [(_UITextViewRestorableScrollPosition *)self->_scrollTarget offsetWithinLine];
    [(UITextView *)self setContentOffset:v19, v21 + v22];
    v23 = [(_UITextContainerView *)self->_containerView canvasView];
    [v23 isScrollingChangedTo:0];

    scrollTarget = self->_scrollTarget;
  }

  self->_scrollTarget = 0;

  v24.receiver = self;
  v24.super_class = UITextView;
  [(UIScrollView *)&v24 _scrollViewAnimationEnded:v6 finished:v4];
}

- (void)_resyncContainerFrameForNonAutolayoutDeferringSizeToFit:(BOOL)a3
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
  if (!a3)
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

- (void)_sizingRuleWillChangeShouldClearInsetEdges:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  if (([a1 isScrollEnabled] & 1) == 0)
  {
    if ((*(a1 + 95) & 2) != 0)
    {
      goto LABEL_8;
    }

    v4 = [a1 superview];
    if (v4)
    {
      v5 = v4;
      [a1 bounds];
      width = v10.size.width;
      height = v10.size.height;
      v8 = CGRectGetHeight(v10);
      [a1 sizeThatFits:{width, height}];
      if (v8 == v9)
      {
        [v5 setNeedsLayout];
      }

      goto LABEL_11;
    }

    if ((*(a1 + 95) & 2) != 0)
    {
LABEL_8:
      if (([a1 translatesAutoresizingMaskIntoConstraints] & 1) == 0)
      {
        [a1 invalidateIntrinsicContentSize];
      }
    }

    v5 = 0;
LABEL_11:
  }

  if (a2)
  {
    if (a2 == 15)
    {
      *(a1 + 2456) = 0u;
      *(a1 + 2472) = 0u;
    }

    else
    {
      *(a1 + 2456) = 0;
      *(a1 + 2472) = 0;
    }
  }
}

- (void)setSizingRule:(int64_t)a3
{
  if (((*&self->_tvFlags >> 14) & 1) != a3)
  {
    v4 = a3 == 1;
    if (a3 == 1)
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

- (void)_setExtremeSizingEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UITextView *)self _isExtremeSizingEnabled]!= a3)
  {
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = 5;
    }

    if (v3)
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
  v2 = [(UITextView *)self interactionAssistant];
  v3 = [v2 _selectionViewManager];
  v4 = [v3 _isVisible];

  return v4;
}

- (void)_textContainerSizeDidChange:(id)a3
{
  [(UITextView *)self _updateContentSize];

  [(UITextView *)self _updateTextFormattingControllerPresentationSource];
}

- (void)_updateFrameOfTrailingWhitespace:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)_setFrameOrBounds:(CGRect)a3 fromOldRect:(CGRect)a4 settingAction:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v13 = a5;
  if ([(UITextView *)self _freezeTextContainerSize])
  {
    v13[2](v13);
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
        v24 = [(UITextView *)self selectedRange];
        v14 = v24 < v16 + v15 && v16 < v24 + v25;
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

    v18 = [(UIView *)self layer];
    v19 = [v18 needsLayoutOnGeometryChange];

    if (v17)
    {
      v20 = [(UIView *)self layer];
      [v20 setNeedsLayoutOnGeometryChange:0];
    }

    v13[2](v13);
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
    v33 = v19;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v27.receiver = self;
  v27.super_class = UITextView;
  [(UIView *)&v27 setNeedsDisplayInRect:?];
  v8 = [(_UITextContainerView *)self->_containerView canvasView];
  [(UIView *)self convertRect:v8 toView:x, y, width, height];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(_UITextContainerView *)self->_containerView canvasView];
  [v17 bounds];
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
    v26 = [(_UITextContainerView *)self->_containerView canvasView];
    [v26 setNeedsDisplayInRect:{v22, v23, v24, v25}];
  }
}

- (void)_resetUsesExplicitPreferredMaxLayoutWidth
{
  v3 = [(UITextView *)self _needsDoubleUpdateConstraintsPass];
  *&self->_tvFlags &= ~8uLL;
  self->_preferredMaxLayoutWidth = 0.0;
  [(UIView *)self _needsDoubleUpdateConstraintsPassMayHaveChangedFrom:v3];

  [(UITextView *)self invalidateIntrinsicContentSize];
}

- (void)_setPreferredMaxLayoutWidth:(double)a3
{
  v5 = a3 != 0.0;
  v6 = [(UITextView *)self _needsDoubleUpdateConstraintsPass];
  self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFFFFF7 | (8 * v5));
  if (self->_preferredMaxLayoutWidth != a3)
  {
    self->_preferredMaxLayoutWidth = a3;
    if (![(UIScrollView *)self isScrollEnabled])
    {
      [(UITextView *)self invalidateIntrinsicContentSize];
    }
  }

  [(UIView *)self _needsDoubleUpdateConstraintsPassMayHaveChangedFrom:v6];
}

- (double)_firstBaselineOffsetFromTop
{
  if ((*(&self->super.super._viewFlags + 7) & 2) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UITextView.m" lineNumber:2638 description:{@"%s only valid when using auto layout", "-[UITextView _firstBaselineOffsetFromTop]"}];
  }

  return self->_firstBaselineOffsetFromTop;
}

- (double)_baselineOffsetFromBottom
{
  if ((*(&self->super.super._viewFlags + 7) & 2) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UITextView.m" lineNumber:2644 description:{@"%s only valid when using auto layout", "-[UITextView _baselineOffsetFromBottom]"}];
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

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v13 = [(_UITextLayoutController *)self->_textLayoutController documentRange];
  v14 = [v13 isEmpty];

  if ((v14 & 1) == 0)
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

- ($BB3B25BBC364C7D98808033881F79914)_saveSizeBeforeLayoutCalculation:(SEL)a3
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

- (void)_restoreSize:(id *)a3 afterLayoutCalculation:(id)a4
{
  var0 = a3->var0;
  v6 = a4;
  [v6 setWidthTracksTextView:var0];
  [v6 setHeightTracksTextView:a3->var1];
  [v6 setSize:{a3->var2.width, a3->var2.height}];
}

- (void)_configureForLayoutCalculation:(id)a3 inSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  [v6 setWidthTracksTextView:0];
  [v6 setHeightTracksTextView:0];
  [v6 setSize:{width, height}];
}

- (void)_performTextKit2LayoutCalculation:(id)a3 inSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  textContainer = self->_textContainer;
  v8 = a3;
  v9 = [(NSTextContainer *)textContainer textLayoutManager];
  v10 = [(UITextView *)self textContainer];
  [v10 size];
  v12 = v11;
  v16 = 0uLL;
  v17 = 0;
  [(UITextView *)self _saveSizeBeforeLayoutCalculation:v10];
  v13 = [v9 delegate];
  if (width != v12)
  {
    [v10 setTextView:0];
  }

  [(UITextView *)self _configureForLayoutCalculation:v10 inSize:width, height];
  [v9 ensureLayoutForBounds:{0.0, 0.0, width, height}];
  v8[2](v8, v9, v10);

  v14 = v16;
  v15 = v17;
  [(UITextView *)self _restoreSize:&v14 afterLayoutCalculation:v10];
  if (width != v12)
  {
    [v10 setTextView:self->_containerView];
  }

  [v9 setDelegate:v13];
}

- (void)_performTextKit1LayoutCalculation:(id)a3 inSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(UITextView *)self layoutManager];
  v9 = [(UITextView *)self textContainer];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__UITextView__performTextKit1LayoutCalculation_inSize___block_invoke;
  v12[3] = &unk_1E7126E60;
  v15 = width;
  v16 = height;
  v12[4] = self;
  v13 = v9;
  v14 = v7;
  v10 = v7;
  v11 = v9;
  [v8 coordinateAccess:v12];
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

- (CGSize)_containerSizeForBoundsSize:(CGSize)a3 allowingOverflow:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
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
  if (v4)
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

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

  v7 = [(UIView *)self superview];
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

    v24 = [(UIView *)self superview];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UITextView;
  [(UIScrollView *)&v14 traitCollectionDidChange:v4];
  v5 = [(UIView *)self traitCollection];
  v6 = v5;
  if (v5 && (!v4 || v5[13] != v4[13] || v5[15] != v4[15]))
  {
    -[UITextView _adjustFontForAccessibilityTraits:](self, "_adjustFontForAccessibilityTraits:", [v5 legibilityWeight] != objc_msgSend(v4, "legibilityWeight"));
  }

  v7 = [v6 typesettingLanguage];
  v8 = [v4 typesettingLanguage];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    [(UITextView *)self _adjustFontForTypesettingLanguage];
  }

  v10 = [(UITextView *)self textLayoutManager];
  if (v10)
  {
    v11 = [objc_opt_class() _resolvesNaturalAlignmentWithBaseWritingDirection];
    v12 = [(UITraitCollection *)v6 _resolvesNaturalAlignmentWithBaseWritingDirectionWithDefaultValue:v11];
    if (v12 != [v10 resolvesNaturalAlignmentWithBaseWritingDirection])
    {
      [v10 setResolvesNaturalAlignmentWithBaseWritingDirection:v12];
    }
  }

  v13 = [v6 userInterfaceStyle];
  if (v13 != [v4 userInterfaceStyle])
  {
    [(UITextView *)self _updateTextEffectsConfigurationIfNeeded];
  }
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = UITextView;
  [(UIScrollView *)&v13 _didMoveFromWindow:v6 toWindow:v7];
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
        [(UITextView *)self _adjustFontForAccessibilityTraits:1];
      }
    }
  }
}

- (id)_layoutDebuggingTitle
{
  v3 = [(UITextView *)self text];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(UITextView *)self attributedText];
    v5 = [v6 string];
  }

  return v5;
}

- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self alignmentRectForFrame:?];
  self->_preferredMaxLayoutWidth = v8;
  v9.receiver = self;
  v9.super_class = UITextView;
  [(UIView *)&v9 _prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:x, y, width, height];
}

- (void)_scrollRect:(CGRect)a3 toVisibleInContainingScrollView:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(UIView *)self _scroller];
  [v10 convertRect:self fromView:{x, y, width, height}];
  v13 = CGRectInset(v12, 0.0, -4.0);
  [v10 scrollRectToVisible:v4 animated:{v13.origin.x, v13.origin.y, v13.size.width, v13.size.height}];
}

- (void)_scrollSelectionToVisibleInContainingScrollView:(BOOL)a3
{
  v3 = a3;
  v5 = [(UITextView *)self selectedRange];
  [(UITextView *)self _rectForScrollToVisible:v5, v6];

  [(UITextView *)self _scrollRect:v3 toVisibleInContainingScrollView:?];
}

- (void)_keyboardDidShow:(id)a3
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
    v3 = [(UIView *)self window];
    v4 = [v3 _isSettingFirstResponder] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (BOOL)canBecomeFirstResponder
{
  v3 = [(UIView *)self window];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIView *)self _containedInAbsoluteResponderChain];

    if (!v5)
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
  if (a1)
  {
    if (([a1 _preserveSelectionDisplayForTextFormatting] & 1) == 0)
    {
      [a1[276] setSelectionDisplayVisible:0];
      [a1[276] deactivateSelection];
    }

    [a1 _startDataDetectorsIfNeeded];
    if ([a1 isEditable])
    {
      [a1 _notifyDidEndEditing];
      v2 = [a1[272] canvasView];
      [v2 isEditingDidChange];

      if ([a1 shouldAutoscrollAboveBottom])
      {
        [a1 updateAutoscrollAboveBottom];
      }
    }

    [a1 _updateSelectionGestures];
    WeakRetained = objc_loadWeakRetained(a1 + 275);
    [WeakRetained didEndEditing];
  }
}

- (BOOL)_finishResignFirstResponder
{
  v5.receiver = self;
  v5.super_class = UITextView;
  v3 = [(UIResponder *)&v5 _finishResignFirstResponder];
  if (v3 && (*&self->_tvFlags & 4) == 0)
  {
    [(UITextView *)&self->super.super.super.super.isa _cleanUpForResignFirstResponder];
  }

  return v3;
}

- (void)_notifyDidEndEditing
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained textViewDidEndEditing:self];
  }

  [(UITextView *)self _hideTextFormattingForResignFirstResponderIfNeeded];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"UITextViewTextDidEndEditingNotification" object:self];
}

- (BOOL)allowsEditingTextAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained allowsEditingTextAttributes];

  return v3;
}

- (void)setAllowsEditingTextAttributes:(BOOL)allowsEditingTextAttributes
{
  v3 = allowsEditingTextAttributes;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setAllowsEditingTextAttributes:v3];
}

- (void)setUsesTiledViews:(BOOL)a3
{
  v3 = a3;
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

    [(_UITextLayoutController *)textLayoutController setUsesTiledViews:v3];
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
  v2 = [(_UITextContainerView *)self->_containerView canvasView];
  v3 = [v2 layer];
  v4 = [v3 drawsAsynchronously];

  return v4;
}

- (void)setTiledViewsDrawAsynchronously:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UITextContainerView *)self->_containerView canvasView];
  v4 = [v5 layer];
  [v4 setDrawsAsynchronously:v3];
}

- (void)setCustomRenderController:(id)a3
{
  v5 = a3;
  customRenderController = self->_customRenderController;
  if (customRenderController != v5)
  {
    v27 = v5;
    self->_customRenderController = 0;

    objc_storeStrong(&self->_customRenderController, a3);
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
    v26 = [(_UITextContainerView *)self->_containerView canvasView];
    [v26 flushElementViews];

    v5 = v27;
  }
}

- (void)setAllowsTextAnimations:(BOOL)a3
{
  if (self->_allowsTextAnimations != a3)
  {
    v3 = a3;
    self->_allowsTextAnimations = a3;
    v5 = [(UITextView *)self textLayoutManager];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [v5 setValue:v6 forKey:@"requiresCTLineRef"];

    v7 = [(UITextView *)self _textInputTraits];
    v8 = v7;
    if (v3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    [v7 setAllowsTextAnimationsType:v9];

    if (self->_allowsTextAnimations)
    {
      v10 = UITextAnimationsNewRenderController();
      [(UITextView *)self setCustomRenderController:v10];
    }

    else
    {
      [(UITextView *)self setCustomRenderController:0];
    }

    if (v3)
    {
      v11 = [(_UITextContainerView *)self->_containerView canvasView];
      [v11 configureCustomTextRenderer];
    }

    v12 = [(_UITextContainerView *)self->_containerView canvasView];
    [v12 setNeedsLayout];
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

- (void)_setCustomRenderDisplayLink:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(NSCustomTextRendering *)self->_customRenderController setExternalDisplayLink:v4];
  }
}

- (_NSCustomTextRenderingDisplayLink)_customRenderDisplayLink
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NSCustomTextRendering *)self->_customRenderController externalDisplayLink];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGPoint)_convertPointFromRenderSpace:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextView *)self customRenderController];
  if (v6 && [(UITextView *)self _customRenderControllerCanConvertPointFromRenderSpace])
  {
    [v6 convertPointFromRenderSpace:{x, y}];
    x = v7;
    y = v8;
  }

  v9 = x;
  v10 = y;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)_convertPointToRenderSpace:(CGPoint)a3 textPosition:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UITextView *)self customRenderController];
  if (v8 && [(UITextView *)self _customRenderControllerCanConvertPointToRenderSpaceWithPosition])
  {
    v9 = v7;
    v10 = [v9 affinity] == 0;
    v11 = [v9 location];

    [v8 convertPointToRenderSpace:v11 location:v10 affinity:{x, y}];
    x = v12;
    y = v13;
  }

  v14 = x;
  v15 = y;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)_convertPointToRenderSpace:(CGPoint)a3 textRange:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UITextView *)self customRenderController];
  if (v8)
  {
    if ([(UITextView *)self _customRenderControllerCanConvertPointToRenderSpace])
    {
      v9 = [v7 _unionNSTextRange];
      [v8 convertPointToRenderSpace:v9 textRange:{x, y}];
    }

    else
    {
      if (![(UITextView *)self _customRenderControllerCanConvertPointToTextAnimationsCoordinateSpace])
      {
        [v8 convertPointToTextAnimationsCoordinateSpace:{x, y}];
        x = v12;
        y = v13;
        goto LABEL_8;
      }

      v9 = [v7 _unionNSTextRange];
      [v8 convertPointToTextAnimationsCoordinateSpace:v9 textRange:{x, y}];
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

- (id)_animatorForTextAnimation:(id)a3
{
  if ((*(&self->_tvFlags + 2) & 0x80) != 0)
  {
    v5 = [(NSCustomTextRendering *)self->_customRenderController animatorForTextAnimation:a3, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_animatorForTextAnimation:(id)a3 notify:(id)a4
{
  if ((*(&self->_tvFlags + 2) & 0x80) != 0)
  {
    v6 = [(NSCustomTextRendering *)self->_customRenderController animatorForTextAnimation:a3 notify:a4, v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addGhostedRange:(id)a3
{
  if (a3)
  {
    [(_UITextLayoutController *)self->_textLayoutController addGhostedRange:?];
  }
}

- (void)setScrollEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(UITextView *)self _needsDoubleUpdateConstraintsPass];
  v6 = [(UIScrollView *)self isScrollEnabled];
  v8.receiver = self;
  v8.super_class = UITextView;
  [(UIScrollView *)&v8 setScrollEnabled:v3];
  if (v6 != v3)
  {
    [(UIView *)self _needsDoubleUpdateConstraintsPassMayHaveChangedFrom:v5];
    [(UITextView *)self _updateContainerTileAndSizingFlags];
    [(UITextView *)self _resyncContainerFrameForNonAutolayout];
    if (v3)
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

- (void)_setInteractiveTextSelectionDisabled:(BOOL)a3
{
  v4 = 16;
  if (!a3)
  {
    v4 = 0;
  }

  self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFFFFEFLL | v4);
  if (a3 && [(UITextView *)self isEditable])
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
  v3 = [(UITextView *)self _showsEditMenu];
  if (v3)
  {
    LOBYTE(v3) = ![(UITextView *)self _shouldSuppressEditMenuForTextFormatting];
  }

  return v3;
}

- (void)setShouldPresentSheetsInAWindowLayeredAboveTheKeyboard:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setNeedsFrameUpdateForSurface:(id)a3
{
  v3 = [(_UITextContainerView *)self->_containerView canvasView];
  [v3 setNeedsLayout];
}

- (void)_updateInteractionGeometry
{
  v2 = [(UITextView *)self interactionAssistant];
  [v2 updateSelectionForTextAnimation];
}

- (void)_willDrawContentOfSurface:(id)a3 withBlock:(id)a4
{
  v5 = a4;
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
  v7 = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:v7];

  v8 = _UISetCurrentFallbackEnvironment(self);
  v5[2](v5);

  _UIRestorePreviousFallbackEnvironment(v8);
  [UITraitCollection setCurrentTraitCollection:v6];
}

- (void)_showTextFormattingOptions:(id)a3
{
  v5 = a3;
  v4 = [(UITextView *)self _configurationForTextFormattingOptions];
  if (v4)
  {
    [(UITextView *)self _prepareForTextFormattingControllerPresentationWithConfiguration:v4 sender:v5];
  }
}

- (void)_showTextFormattingAnimationOptions:(id)a3
{
  v4 = a3;
  if (self->_allowsTextAnimations)
  {
    v13 = v4;
    [(UIResponder *)self _endWritingTools];
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 removeAutocorrection];

    v6 = [(UITextView *)self _supportedAnimationNamesForTextFormatting];
    v7 = [(UITextView *)self _supportedAnimationTitlesForTextFormatting];
    v8 = [(UITextView *)self _supportedAnimationAccessibilityHintsForTextFormatting];
    v9 = [UITextFormattingViewControllerConfiguration _forTextAnimationsUIWithSupportedAnimationNames:v6 titles:v7 accessibilityHints:v8];
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

    v4 = v13;
  }
}

- (void)_hideTextFormattingOptions:(id)a3
{
  v4 = [(UIView *)self traitCollection];
  if ([v4 userInterfaceIdiom])
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
  v40 = [(UITextView *)self _configurationForTextFormattingOptions];
  v3 = [(UITextView *)self selectedRange];
  v5 = v4;
  if (v4 && (v6 = v3, v3 + v4 <= [(NSTextStorage *)self->_textStorage length]))
  {
    v30 = [[UITextFormattingViewControllerFormattingDescriptor alloc] initWithString:self->_textStorage range:v6, v5];
    v31 = v56[5];
    v56[5] = v30;

    v32 = [v40 formattingStyles];
    if (v32)
    {
      v33 = [v40 formattingStyles];
      v34 = [v33 count] == 0;

      if (!v34)
      {
        textStorage = self->_textStorage;
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __49__UITextView__descriptorForTextFormattingOptions__block_invoke;
        v52[3] = &unk_1E7126998;
        v53 = v40;
        v54 = &v55;
        [(NSTextStorage *)textStorage enumerateAttributesInRange:v6 options:v5 usingBlock:0, v52];
        v14 = v53;
LABEL_28:
      }
    }
  }

  else
  {
    v7 = [UITextFormattingViewControllerFormattingDescriptor alloc];
    v8 = [(UITextView *)self typingAttributes];
    v9 = [(UITextFormattingViewControllerFormattingDescriptor *)v7 initWithAttributes:v8];
    v10 = v56[5];
    v56[5] = v9;

    v11 = [v40 formattingStyles];
    if (v11)
    {
      v12 = [v40 formattingStyles];
      v13 = [v12 count] == 0;

      if (!v13)
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v14 = [v40 formattingStyles];
        v15 = [v14 countByEnumeratingWithState:&v48 objects:v62 count:16];
        if (v15)
        {
          obj = v14;
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
              v17 = [MEMORY[0x1E695DF90] dictionary];
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              v18 = [v43 attributes];
              v19 = [v18 allKeys];

              v20 = [v19 countByEnumeratingWithState:&v44 objects:v61 count:16];
              if (v20)
              {
                v21 = *v45;
                do
                {
                  for (j = 0; j != v20; ++j)
                  {
                    if (*v45 != v21)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v23 = *(*(&v44 + 1) + 8 * j);
                    v24 = [(UITextView *)self typingAttributes];
                    v25 = [v24 valueForKey:v23];

                    if (v25)
                    {
                      v26 = [(UITextView *)self typingAttributes];
                      v27 = [v26 valueForKey:v23];
                      [v17 setValue:v27 forKey:v23];
                    }
                  }

                  v20 = [v19 countByEnumeratingWithState:&v44 objects:v61 count:16];
                }

                while (v20);
              }

              v28 = [v43 attributes];
              v29 = [v28 isEqualToDictionary:v17];

              if (v29)
              {
                v36 = [v43 styleKey];
                [v56[5] setFormattingStyleKey:v36];

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
          v14 = obj;
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
  v2 = [(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager];
  v3 = MEMORY[0x1E695DFD8];
  if (v2)
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

- (void)setTextFormattingConfiguration:(id)a3
{
  v4 = [a3 copy];
  textFormattingConfiguration = self->_textFormattingConfiguration;
  self->_textFormattingConfiguration = v4;
}

- (BOOL)_areDefaultTextFormattingAffordancesAvailable
{
  if (!self->_canShowTextFormattingOptions || ![(UITextView *)self isEditable]|| ![(UITextView *)self isSelectable]|| ![(UITextView *)self allowsEditingTextAttributes])
  {
    return 0;
  }

  v3 = [(UITextView *)self _configurationForTextFormattingOptions];
  if (v3)
  {
    v4 = [(UITextView *)self _supportedAnimationNamesForTextFormatting];
    v5 = v4 == 0;
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

  v3 = [(UIViewController *)textFormattingViewController presentingViewController];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_isInCompactHorizontalSizeClass
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 horizontalSizeClass] == 1;

  return v3;
}

- (BOOL)_shouldHideInputViewsForTextFormatting
{
  textFormattingViewController = self->_textFormattingViewController;
  if (textFormattingViewController)
  {
    v4 = [(UIViewController *)textFormattingViewController popoverPresentationController];
    v5 = [v4 sourceView];
    v6 = [(UIView *)self superview];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = self;
    }

    if (v5 == v8)
    {
      v10 = [(UITextFormattingViewController *)self->_textFormattingViewController configuration];
      v9 = [v10 _isTextAnimationsConfiguration] ^ 1;
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
    v4 = [(UIViewController *)textFormattingViewController popoverPresentationController];
    v5 = [v4 sourceView];
    v6 = [(UIView *)self superview];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = self;
    }

    if (v5 == v8)
    {
      v12 = [(UITextFormattingViewController *)self->_textFormattingViewController configuration];
      v9 = ([v12 _isTextAnimationsConfiguration] & 1) != 0 || -[UITextFormattingViewControllerConfiguration _isTextAnimationsConfiguration](self->_textFormattingRestorationConfiguration, "_isTextAnimationsConfiguration");
    }

    else
    {
      v9 = [(UITextFormattingViewControllerConfiguration *)self->_textFormattingRestorationConfiguration _isTextAnimationsConfiguration];
    }

    return v9;
  }

  else
  {
    textFormattingRestorationConfiguration = self->_textFormattingRestorationConfiguration;

    return [(UITextFormattingViewControllerConfiguration *)textFormattingRestorationConfiguration _isTextAnimationsConfiguration];
  }
}

- (void)_textViewWillPresentTextFormattingOptions
{
  v3 = [(UITextView *)self _preferredPresentingControllerForTextFormatting];
  v4 = [v3 presentedViewController];

  if (v4)
  {
    v5 = [(UITextFormattingViewController *)self->_textFormattingViewController configuration];
    if ([v5 _isTextAnimationsConfiguration])
    {
      v6 = [(UIView *)self traitCollection];
      v7 = [v6 userInterfaceIdiom];

      if (v7 == 6)
      {
        return;
      }
    }

    else
    {
    }

    v9 = [(UITextView *)self _preferredPresentingControllerForTextFormatting];
    v8 = [v9 presentedViewController];
    [v8 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_prepareForTextFormattingControllerPresentationWithConfiguration:(id)a3 sender:(id)a4
{
  v25 = a3;
  v6 = a4;
  if (self->_canShowTextFormattingOptions)
  {
    if (self->_textFormattingViewController)
    {
      [(UITextView *)self _dismissTextFormattingControllerIfNeededWithAnimation:1];
      goto LABEL_25;
    }

    [v25 set_preferringDimmingVisible:0];
    [v25 set_textViewConfiguration:1];
    v7 = [[UITextFormattingViewController alloc] initWithConfiguration:v25];
    [(UITextFormattingViewController *)v7 _setInternalDelegate:self];
    [(UITextFormattingViewController *)v7 _setEditResponder:self];
    [(UIViewController *)v7 setModalPresentationStyle:7];
    v8 = [(UIViewController *)v7 popoverPresentationController];
    [v8 setCanOverlapSourceViewRect:1];

    v9 = [(UIViewController *)v7 sheetPresentationController];
    [v9 setPrefersEdgeAttachedInCompactHeight:1];

    v10 = [(UIViewController *)v7 popoverPresentationController];
    [v10 _setShouldDimPresentingViewTint:0];

    if ([v25 _isTextAnimationsConfiguration])
    {
      v11 = [(UIViewController *)v7 popoverPresentationController];
      [v11 setDelegate:v7];
    }

    if ([(UITextView *)self _isInCompactHorizontalSizeClass]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if ([v25 _isTextAnimationsConfiguration])
        {
          v15 = 2;
        }

        else
        {
          v15 = 15;
        }

        v16 = [(UIViewController *)v7 popoverPresentationController];
        [v16 setPermittedArrowDirections:v15];

        v17 = [(UIViewController *)v7 popoverPresentationController];
        v18 = [(UIView *)self superview];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = self;
        }

        [v17 setSourceView:v20];

        if ([(UITextView *)self _isInCompactHorizontalSizeClass])
        {
          [(UITextFormattingViewController *)v7 _setShouldDeferFontPickerPresentationToViewController:0];
LABEL_21:
          v22 = [(UIView *)self traitCollection];
          if ([v22 userInterfaceIdiom] == 6)
          {
            v23 = [(UITextView *)self _preferredPresentingControllerForTextFormatting];
            [(UITextFormattingViewController *)v7 _setShouldDeferColorPickerPresentationToViewController:v23];
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
        v21 = [(UITextView *)self _preferredPresentingControllerForTextFormatting];
        [(UITextFormattingViewController *)v7 _setShouldDeferFontPickerPresentationToViewController:v21];

        goto LABEL_21;
      }

      v14 = [(UIViewController *)v7 popoverPresentationController];
      [v14 setPermittedArrowDirections:15];

      v13 = [(UIViewController *)v7 popoverPresentationController];
      [v13 setSourceView:v6];
    }

    else
    {
      v12 = [(UIViewController *)v7 popoverPresentationController];
      [v12 setPermittedArrowDirections:15];

      v13 = [(UIViewController *)v7 popoverPresentationController];
      [v13 setBarButtonItem:v6];
    }

    goto LABEL_20;
  }

LABEL_25:
}

- (id)_preferredPresentingControllerForTextFormatting
{
  v3 = [(UIView *)self _viewControllerForAncestor];
  v4 = [(UITextFormattingViewController *)self->_textFormattingViewController configuration];
  if ([v4 _isTextAnimationsConfiguration])
  {
    v5 = [v3 _isInSheetPresentation];

    if (v5)
    {
      goto LABEL_5;
    }

    v4 = [(UIView *)self window];
    v6 = [v4 rootViewController];

    v3 = v6;
  }

LABEL_5:

  return v3;
}

- (void)_presentTextFormattingController
{
  if (self->_textFormattingViewController)
  {
    [(UITextView *)self _textViewWillPresentTextFormattingOptions];
    if (self->_textFormattingViewController)
    {
      objc_initWeak(location, self);
      v3 = [(UITextView *)self _preferredPresentingControllerForTextFormatting];
      textFormattingViewController = self->_textFormattingViewController;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __46__UITextView__presentTextFormattingController__block_invoke;
      v6[3] = &unk_1E70F5A28;
      objc_copyWeak(&v7, location);
      [v3 presentViewController:textFormattingViewController animated:1 completion:v6];

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
  v2 = self;
  v3 = [(UIView *)self superview];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v4;

        v5 = v6;
      }

      v7 = [v4 superview];

      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v2 = v5;
  }

  v8 = v2;

  return v2;
}

- (void)_adjustBottomContentInsetForTextFormattingController:(BOOL)a3
{
  v3 = a3;
  if (![(UITextView *)self _shouldAdjustKeyboardGuidesForTextFormattingIfNeeded])
  {
    v5 = [(UITextView *)self _scrollViewToAdjustForTextFormattingController];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__UITextView__adjustBottomContentInsetForTextFormattingController___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v6 = _Block_copy(aBlock);
    if (v3)
    {
      [(UITextView *)self _textFormattingControllerOverlapHeight];
      v8 = v7;
      [v5 adjustedContentInset];
      v10 = v8 - v9;
      if (v8 - v9 <= 0.0)
      {
LABEL_9:

        return;
      }

      [v5 contentInset];
      [v5 contentInset];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v10 + v17;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __67__UITextView__adjustBottomContentInsetForTextFormattingController___block_invoke_2;
      v36[3] = &unk_1E70F3B20;
      v19 = v37;
      v37[0] = v5;
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

      [v5 contentInset];
      if (v21 != self->_bottomContentInsetAfterTextFormattingAdjustment)
      {
        goto LABEL_9;
      }

      [v5 contentInset];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28 - self->_bottomContentInsetTextFormattingAdjustment;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __67__UITextView__adjustBottomContentInsetForTextFormattingController___block_invoke_4;
      v32[3] = &unk_1E70F3B20;
      v19 = v33;
      v33[0] = v5;
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
    v4 = [(UIViewController *)self->_textFormattingViewController view];
    v5 = [(UIViewController *)self->_textFormattingViewController view];
    v6 = [v5 safeAreaLayoutGuide];
    [v6 layoutFrame];
    [v4 convertRect:0 toView:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [(UITextView *)self _scrollViewToAdjustForTextFormattingController];
    v16 = [v15 superview];
    [v15 frame];
    [v16 convertRect:0 toView:?];
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

- (void)_dismissTextFormattingControllerIfNeededWithAnimation:(BOOL)a3
{
  v3 = a3;
  if ([(UITextView *)self _isTextFormattingControllerPresented])
  {
    [(UIViewController *)self->_textFormattingViewController dismissViewControllerAnimated:v3 completion:0];
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
  v3 = [(UITextFormattingViewController *)self->_textFormattingViewController configuration];
  v4 = [v3 _isTextAnimationsConfiguration];

  if (v4)
  {
    v5 = [(UITextFormattingViewController *)self->_textFormattingViewController configuration];
    textFormattingRestorationConfiguration = self->_textFormattingRestorationConfiguration;
    self->_textFormattingRestorationConfiguration = v5;
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

- (void)setAttributedPlaceholders:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  attributedPlaceholders = self->_attributedPlaceholders;
  self->_attributedPlaceholders = v5;

  v7 = [v4 firstObject];

  [(UITextView *)self setAttributedPlaceholder:v7];
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

- (void)setAttributedPlaceholder:(id)a3
{
  v5 = a3;
  v14 = v5;
  if (self->_overriddenPlaceholder)
  {
    objc_storeStrong(&self->_overriddenPlaceholder, a3);
  }

  else
  {
    v6 = v5;
    placeholderLabel = self->_placeholderLabel;
    if (!placeholderLabel)
    {
      v8 = [UILabel alloc];
      v9 = [(UILabel *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v10 = self->_placeholderLabel;
      self->_placeholderLabel = v9;

      v11 = [(UITextView *)self font];
      [(UILabel *)self->_placeholderLabel setFont:v11];

      v12 = +[UIColor systemGrayColor];
      [(UILabel *)self->_placeholderLabel setTextColor:v12];

      [(UILabel *)self->_placeholderLabel setNumberOfLines:0];
      [(UILabel *)self->_placeholderLabel setAdjustsFontForContentSizeCategory:[(UITextView *)self adjustsFontForContentSizeCategory]];
      v13 = [(UITextView *)self _contentView];
      [v13 addSubview:self->_placeholderLabel];

      v6 = v14;
      placeholderLabel = self->_placeholderLabel;
    }

    [(UILabel *)placeholderLabel setAttributedText:v6];
    [(UITextView *)self _updatePlaceholderVisibility];
  }
}

- (id)_attributedPlaceholder
{
  if (a1)
  {
    v2 = *(a1 + 288);
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      a1 = [*(a1 + 287) attributedText];
    }

    v1 = vars8;
  }

  return a1;
}

- (void)_setOverridePlaceholder:(id)a3 alignment:(int64_t)a4
{
  v6 = a3;
  v14 = v6;
  if (self->_overriddenPlaceholder)
  {
    if (v6)
    {
      [(UITextView *)self setAttributedPlaceholder:v6];
      [(UILabel *)self->_placeholderLabel setTextAlignment:a4];
    }

    else
    {
      [(UITextView *)self setAttributedPlaceholder:?];
      [(UILabel *)self->_placeholderLabel setTextAlignment:self->_overriddenPlaceholderAlignment];
      overriddenPlaceholder = self->_overriddenPlaceholder;
      self->_overriddenPlaceholder = 0;
    }
  }

  else if (v6)
  {
    v7 = [(UITextView *)self attributedPlaceholder];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
    }

    v11 = v9;

    v12 = [(UILabel *)self->_placeholderLabel textAlignment];
    [(UITextView *)self setAttributedPlaceholder:v14];
    [(UILabel *)self->_placeholderLabel setTextAlignment:a4];
    v13 = self->_overriddenPlaceholder;
    self->_overriddenPlaceholder = v11;

    self->_overriddenPlaceholderAlignment = v12;
  }

  [(UITextView *)self _updatePlaceholderVisibility];
}

- (void)_setTextSizeCacheEnabled:(BOOL)a3
{
  if (((((*&self->_tvFlags & 0x400) == 0) ^ a3) & 1) == 0)
  {
    v3 = 1024;
    if (!a3)
    {
      v3 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFFFBFFLL | v3);
    if (!a3)
    {
      intrinsicSizeCache = self->_intrinsicSizeCache;
      self->_intrinsicSizeCache = 0;
    }
  }
}

- (void)insertText:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained insertText:v4];
}

- (void)insertText:(id)a3 alternatives:(id)a4 style:(int64_t)a5
{
  v6 = [off_1E70ECBA0 attributedText:a3 withAlternativeTexts:a4 style:a5];
  v9 = [v6 mutableCopy];

  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained typingAttributes];
  [v9 addAttributes:v8 range:{0, objc_msgSend(v9, "length")}];

  [(UITextView *)self insertAttributedText:v9];
}

- (void)addTextAlternatives:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained addTextAlternatives:v4];
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

- (void)_deleteBackwardAndNotify:(BOOL)a3
{
  if (a3)
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
  v3 = [WeakRetained textLengthToDeleteBeforeSelectedRangeForSmartDelete];

  return v3;
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
  v2 = [(UITextView *)self interactionAssistant];
  [v2 updateDisplayedSelection];
}

- (BOOL)_restoreFirstResponder
{
  v3 = [(UITextView *)self interactionAssistant];
  v4 = v3;
  if (!v3)
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

  [v3 checkEditabilityAndSetFirstResponderIfNecessary];
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

- (void)beginFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UITextView *)self interactionAssistant];
  [v5 beginFloatingCursorAtPoint:{x, y}];
}

- (void)updateFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UITextView *)self interactionAssistant];
  [v5 updateFloatingCursorAtPoint:{x, y}];
}

- (void)updateFloatingCursorAtPoint:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v7 = [(UITextView *)self interactionAssistant];
  [v7 updateFloatingCursorAtPoint:v4 animated:{x, y}];
}

- (void)endFloatingCursor
{
  v2 = [(UITextView *)self interactionAssistant];
  [v2 endFloatingCursor];
}

- (BOOL)canBecomeFocused
{
  v2 = self;
  v3 = [(UIView *)self _focusBehavior];
  LOBYTE(v2) = [v3 textViewCanBecomeFocused:v2];

  return v2;
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
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 focusGroupContainmentBehavior];

  if ((v4 & 0x200) != 0)
  {
    v5 = _UIFocusGroupIdentifierForInstance(self);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITextView;
    v5 = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return v5;
}

- (void)_diagnoseFocusabilityForReport:(id)a3
{
  v5 = a3;
  if (![(UITextView *)self isSelectable])
  {
    v4 = [_UIDebugIssue issueWithDescription:@"This text view is not selectable. Text views must return YES from -isSelectable in order to be focusable."];
    [v5 addIssue:v4];
  }
}

- (id)editMenuForTextRange:(id)a3 suggestedActions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(UITextView *)self _implementsEditMenu])
  {
    goto LABEL_4;
  }

  tvFlags = self->_tvFlags;
  if ((*&tvFlags & 0x8000000000) != 0)
  {
    v10 = [(_UITextLayoutController *)self->_textLayoutController characterRangesForTextRange:v6 clippedToDocument:0];
    v11 = [(UIScrollView *)self delegate];
    v9 = [v11 textView:self editMenuForTextInRanges:v10 suggestedActions:v7];
  }

  else
  {
    if ((*&tvFlags & 0x4000000000) == 0)
    {
LABEL_4:
      v9 = 0;
      goto LABEL_8;
    }

    v12 = [(_UITextLayoutController *)self->_textLayoutController characterRangeForTextRange:v6];
    v14 = v13;
    v10 = [(UIScrollView *)self delegate];
    v9 = [v10 textView:self editMenuForTextInRange:v12 suggestedActions:{v14, v7}];
  }

LABEL_8:

  return v9;
}

- (void)willPresentEditMenuWithAnimator:(id)a3
{
  v7 = a3;
  v4 = [(UIScrollView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIScrollView *)self delegate];
    [v6 textView:self willPresentEditMenuWithAnimator:v7];
  }
}

- (void)willDismissEditMenuWithAnimator:(id)a3
{
  v7 = a3;
  v4 = [(UIScrollView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIScrollView *)self delegate];
    [v6 textView:self willDismissEditMenuWithAnimator:v7];
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

- (CGRect)_rectForScrollToVisible:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(UITextView *)self textStorage];
  v7 = [v6 length];

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
        v8 = [(UITextView *)self textStorage];
        v9 = [v8 string];
        location = [v9 rangeOfComposedCharacterSequenceAtIndex:location];
        length = v10;
      }
    }

    if (length + location >= v7)
    {
      v11 = [(UITextView *)self textStorage];
      v12 = [v11 string];
      location = [v12 rangeOfComposedCharacterSequenceAtIndex:v7 - 1];
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
  v24 = [(NSTextContainer *)self->_textContainer textView];
  [(UIView *)self convertRect:v24 fromView:v21, v23, width, height];
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

- (CGPoint)_contentOffsetForScrollToVisible:(_NSRange)a3
{
  [(UITextView *)self _rectForScrollToVisible:a3.location, a3.length];
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

- (_NSRange)_visibleRangeWithLayout:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NSTextContainer *)self->_textContainer textView];
  [(UIView *)self convertRect:v13 toView:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  textLayoutController = self->_textLayoutController;
  v23 = [(UITextView *)self textContainer];
  v24 = [(_UITextLayoutController *)textLayoutController textRangeForBounds:v23 inTextContainer:v3 layoutIfNeeded:v15, v17, v19, v21];

  v25 = [(_UITextLayoutController *)self->_textLayoutController characterRangeForTextRange:v24];
  v27 = v26;

  v28 = v25;
  v29 = v27;
  result.length = v29;
  result.location = v28;
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

- (void)_setSiriAnimationDictationStyleWithCharacterInsertionRate:(double)a3 minimumDurationBetweenHypotheses:(double)a4
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"_UITextViewSiriAnimationStyleDictationRate";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v10[1] = @"_UITextViewSiriAnimationStyleDictationDuration";
  v11[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  siriParameters = self->_siriParameters;
  self->_siriParameters = v8;
}

- (id)extractWordArrayFromTokensArray:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
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
          [(__CFString *)v4 appendString:@" "];
        }

        v13 = [v12 text];
        [(__CFString *)v4 appendString:v13];

        v8 = v12;
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);

    if (v8 && ([v8 removeSpaceAfter] & 1) == 0)
    {
      [(__CFString *)v4 appendString:@" "];
    }
  }

  else
  {

    v8 = 0;
  }

  v14 = [MEMORY[0x1E695DF70] array];
  v15 = [(__CFString *)v4 length];
  v16 = [MEMORY[0x1E695DF58] currentLocale];
  v27.location = 0;
  v27.length = v15;
  v17 = CFStringTokenizerCreate(0, v4, v27, 3uLL, v16);
  while (1)
  {

    if (!CFStringTokenizerAdvanceToNextToken(v17))
    {
      break;
    }

    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v17);
    v16 = [(__CFString *)v4 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
    [v14 addObject:v16];
  }

  CFRelease(v17);

  return v14;
}

- (void)_didRecognizeSpeechTokens:(id)a3
{
  v4 = [(UITextView *)self extractWordArrayFromTokensArray:a3];
  [(UITextView *)self _didRecognizeSpeechStrings:v4];
}

- (void)_didRecognizeSpeechStrings:(id)a3
{
  v11 = a3;
  v4 = [(UITextView *)self interactionAssistant];
  [v4 setSelectionDisplayVisible:0];

  v5 = [(UITextView *)self interactionAssistant];
  [v5 deactivateSelection];

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

  [(_UICharacterStreamingManager *)self->_characterStreamingManager setWords:v11];
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

- (void)_restoreScrollPosition:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v7 = [v15 range];
  [(UITextView *)self _contentOffsetForScrollToVisible:v7, v8];
  v10 = v9;
  v12 = v11;
  [v15 offsetWithinLine];
  v14 = v12 + v13;
  if (v4)
  {
    [(UIScrollView *)self _setContentOffset:1 animated:0 animationCurve:v10, v14];
    objc_storeStrong(&self->_scrollTarget, a3);
  }

  else
  {
    [(UITextView *)self setContentOffset:v10, v14];
  }
}

- (void)_scrollRangeToVisible:(_NSRange)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [_UITextViewRestorableScrollPosition restorableScrollPositionWithRange:a3.location, a3.length];
  [(UITextView *)self _restoreScrollPosition:v6 animated:v4];
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

- (void)scrollSelectionToVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(UITextView *)self selectedRange];
  [(UITextView *)self _rectForScrollToVisible:v5, v6];

  [(UIScrollView *)self scrollRectToVisible:v3 animated:?];
}

- (CGPoint)_contentOffsetForScrollingToRect:(CGRect)a3
{
  height = a3.size.height;
  y = a3.origin.y;
  v18.receiver = self;
  v18.super_class = UITextView;
  [(UIScrollView *)&v18 _contentOffsetForScrollingToRect:a3.origin.x, a3.origin.y, a3.size.width];
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

- (CGRect)_rectToScrollToVisibleInCellInWindow:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  v9 = [(UIResponder *)self _textInteraction];
  v10 = [v9 textInput];

  v11 = [v10 selectedTextRange];
  if (v11)
  {
    v12 = [v10 selectionRectsForRange:v11];
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
      if ([v11 isEmpty])
      {
        v25 = [v11 start];

        if (v25)
        {
          v26 = [v11 start];
          [v10 caretRectForPosition:v26];
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
      v31 = [v10 textInputView];
      [v4 convertRect:v31 fromView:{x, y, width, height}];
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
    [(UIView *)&v44 _rectToScrollToVisibleInCellInWindow:v4];
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
  v3 = [(UITextView *)self selectedTextRange];
  if (v3)
  {
    v4 = [(UITextView *)self textInRange:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)textInRange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained textInRange:v4];

  return v6;
}

- (void)insertAttributedText:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained insertAttributedText:v4];
}

- (id)attributedTextInRange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained attributedTextInRange:v4];

  return v6;
}

- (void)_setWritingToolsStreamingReplacements:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained isWritingToolsStreamingReplacements];

  v7 = [(UITextView *)self undoManager];
  v8 = objc_loadWeakRetained(&self->_inputController);
  v9 = [v8 undoManager];

  if ((v6 & 1) == 0 && v3)
  {
    if (*(&self->_tvFlags + 4))
    {
      v10 = [(UIScrollView *)self delegate];
      [v10 _textViewWillBeginUndoCoalescingForWritingTools:self];
    }

    if (v7 != v9)
    {
      if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
      {
        v13 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED4998A8) + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 138412290;
          v16 = v7;
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, ">>>> UITextView will begin undo group in %@ for Writing Tools replacements", &v15, 0xCu);
        }
      }

      [v7 beginUndoGrouping];
    }
  }

  v11 = objc_loadWeakRetained(&self->_inputController);
  [v11 setWritingToolsStreamingReplacements:v3];

  if (v6 && !v3)
  {
    if (v7 != v9)
    {
      if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
      {
        v14 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED4998B0) + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = 138412290;
          v16 = v7;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "<<<< UITextView will end undo group in %@ for Writing Tools replacements", &v15, 0xCu);
        }
      }

      [v7 endUndoGrouping];
    }

    if ((*(&self->_tvFlags + 4) & 2) != 0)
    {
      v12 = [(UIScrollView *)self delegate];
      [v12 _textViewDidEndUndoCoalescingForWritingTools:self];
    }
  }
}

- (BOOL)_isWritingToolsStreamingReplacements
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained isWritingToolsStreamingReplacements];

  return v3;
}

- (void)replaceRange:(id)a3 withText:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained replaceRange:v7 withText:v6];
}

- (void)replaceRange:(id)a3 withAttributedText:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained replaceRange:v7 withAttributedText:v6];
}

- (void)replaceRangeWithTextWithoutClosingTyping:(id)a3 replacementText:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained replaceRangeWithTextWithoutClosingTyping:v7 replacementText:v6];
}

- (id)_replaceRange:(id)a3 withAttributedText:(id)a4 updatingSelection:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v11 = [WeakRetained replaceRange:v9 withAttributedText:v8 updatingSelection:v5];

  return v11;
}

- (void)setSelectedTextRange:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_inputController);
    [v5 setSelectedTextRange:v6];
  }

  else
  {
    v5 = [(UITextView *)self interactionAssistant];
    [v5 selectionChanged];
  }
}

- (int64_t)selectionAffinity
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained selectionAffinity];

  return v3;
}

- (NSDictionary)markedTextStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained markedTextStyle];

  return v3;
}

- (void)setMarkedTextStyle:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setMarkedTextStyle:v4];
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setMarkedText:v7 selectedRange:{location, length}];
}

- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setAttributedMarkedText:v7 selectedRange:{location, length}];
}

- (void)unmarkText
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained unmarkText];
}

- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v9 = [WeakRetained textRangeFromPosition:v7 toPosition:v6];

  return v9;
}

- (id)positionFromPosition:(id)a3 offset:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained positionFromPosition:v6 offset:a4];

  return v8;
}

- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v10 = [WeakRetained positionFromPosition:v8 inDirection:a4 offset:a5];

  return v10;
}

- (int64_t)comparePosition:(id)a3 toPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v9 = [WeakRetained comparePosition:v7 toPosition:v6];

  return v9;
}

- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v9 = [WeakRetained offsetFromPosition:v7 toPosition:v6];

  return v9;
}

- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained positionWithinRange:v6 farthestInDirection:a4];

  return v8;
}

- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained characterRangeByExtendingPosition:v6 inDirection:a4];

  return v8;
}

- (id)undoManager
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained undoManager];

  return v3;
}

- (void)setInputDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setInputDelegate:v4];
}

- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained baseWritingDirectionForPosition:v6 inDirection:a4];

  return v8;
}

- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setBaseWritingDirection:a3 forRange:v6];
}

- (CGRect)firstRectForRange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained firstRectForRange:v4];
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
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained caretRectForPosition:v4];
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

- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained textStylingAtPosition:v6 inDirection:a4];

  return v8;
}

- (id)selectionRectsForRange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained selectionRectsForRange:v4];

  return v6;
}

- (id)closestPositionToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained closestPositionToPoint:{x, y}];

  return v6;
}

- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v9 = [WeakRetained closestPositionToPoint:v7 withinRange:{x, y}];

  return v9;
}

- (id)characterRangeAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)_setShowsEditMenu:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (BOOL)_isSystemAttachment:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained _isSystemAttachment:v4];

  return v6;
}

- (id)insertTextPlaceholderWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained insertTextPlaceholderWithSize:{width, height}];

  return v6;
}

- (void)removeTextPlaceholder:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained removeTextPlaceholder:v4];
}

- (id)insertDictationResultPlaceholder
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained insertDictationResultPlaceholder];

  return v3;
}

- (CGRect)frameForDictationResultPlaceholder:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained frameForDictationResultPlaceholder:v4];
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
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained removeDictationResultPlaceholder:v6 willInsertResult:v4];
}

- (id)rangeWithTextAlternatives:(id *)a3 atPosition:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained rangeWithTextAlternatives:a3 atPosition:v6];

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

- (void)_setTypingAttributesTextColor:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _addToTypingAttributes:*off_1E70EC920 value:v4];

  [(UITextView *)self _syncTypingAttributesToTextContainerAttributesForExtraLineFragment];
}

- (void)setContinuousSpellCheckingEnabled:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setContinuousSpellCheckingEnabled:v3];
}

- (BOOL)performFinalGrammarChecking
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained performFinalGrammarChecking];

  return v3;
}

- (void)applyGrammarCheckingIndication
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained applyGrammarCheckingIndication];
}

- (void)textInputDidChange:(id)a3
{
  v13 = a3;
  if (self)
  {
    self->_textContainerInsetAdjustment.top = [(UITextView *)self _applicableContentOutsetsFromFonts];
    self->_textContainerInsetAdjustment.left = v4;
    self->_textContainerInsetAdjustment.bottom = v5;
    self->_textContainerInsetAdjustment.right = v6;
  }

  [(UITextView *)self _ensureUpToDateTextContainerInsetAndNotifyIfNecessary];
  v7 = [(_UITextContainerView *)self->_containerView canvasView];
  [v7 updateContentSizeIfNeeded];

  [(UITextView *)self _resyncContainerFrameForNonAutolayout];
  [(UITextDragDropSupport *)self->_textDragDropSupport notifyTextInteraction];
  v8 = [(UIScrollView *)self delegate];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 textViewDidChange:self];
  }

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:@"UITextViewTextDidChangeNotification" object:self];

  [(UITextView *)self _updateTextFormattingController];
  [(UITextView *)self _scrollToSelectionIfNeeded];
  v10 = [(UIView *)self->_textEmphasisBackgroundView window];
  if (v10)
  {
    v11 = v10;
    v12 = [(UIView *)self->_textEmphasisBackgroundView isHidden];

    if (!v12)
    {
      [(UIView *)self->_textEmphasisBackgroundView setNeedsDisplay];
    }
  }
}

- (BOOL)textInputShouldExtendCaretHeight:(id)a3
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom] != 5;

  return v4;
}

- (void)textInputDidChangeSelection:(id)a3
{
  v4 = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 textViewDidChangeSelection:self];
  }

  [(UITextView *)self _updateTextFormattingController];
  [(UITextView *)self _scrollToCaretIfNeeded];
}

- (void)textInputDidFinishUndoRedoChanges:(id)a3
{
  if ([(UITextView *)self isWritingToolsActive])
  {
    v4 = [(UITextView *)self _existingTextAssistantManager];
    [v4 finishUndoRedoChanges];
  }
}

- (void)_textInput:(id)a3 pasteDelegateWillPasteText:(id)a4 toTextRange:(id)a5
{
  v9 = a4;
  v7 = a5;
  if ([(UITextView *)self isWritingToolsActive])
  {
    v8 = [(UITextView *)self _existingTextAssistantManager];
    [v8 updateForPasteDelegateWillPasteText:v9 toTextRange:v7];
  }
}

- (void)_textInput:(id)a3 pasteDelegateDidPasteText:(id)a4 toTextRange:(id)a5
{
  v9 = a4;
  v7 = a5;
  if ([(UITextView *)self isWritingToolsActive])
  {
    v8 = [(UITextView *)self _existingTextAssistantManager];
    [v8 updateForPasteDelegateDidPasteText:v9 toTextRange:v7];
  }
}

- (void)textInput:(id)a3 undoRedoDidApplyAttributedText:(id)a4 toCharacterRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a4;
  if ([(UITextView *)self isWritingToolsActive])
  {
    v8 = [(UITextView *)self _existingTextAssistantManager];
    [v8 updateForCharactersInRange:location withReplacement:length isUndoRedo:{v9, 1}];
  }
}

- (void)textInput:(id)a3 didApplyAttributedText:(id)a4 toCharacterRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v18 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (self->_customRenderController && [(UITextView *)self _customRenderControllerPermitsSetTextDidEditRange])
  {
    v11 = [(UITextView *)self _NSTextRangeFromNSRange:location, length];
    -[NSCustomTextRendering textDidEditRange:replacementLength:](self->_customRenderController, "textDidEditRange:replacementLength:", v11, [v10 length]);
  }

  v12 = [(UITextView *)self _existingTextAssistantManager];
  if (-[UITextView isWritingToolsActive](self, "isWritingToolsActive") && ([v12 isReplacingTextByRequest] & 1) == 0 && !-[UITextView _isWritingToolsStreamingReplacements](self, "_isWritingToolsStreamingReplacements"))
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    v14 = [WeakRetained _undoRedoInProgress];

    if (v14)
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
      [v12 updateForCharactersInRange:location withReplacement:length isUndoRedo:{v10, 0}];
    }
  }
}

- (void)setFont:(UIFont *)font
{
  v4 = font;
  if ([(UIView *)self _shouldNotifyGeometryObserversForBaselineChanges]|| (*(&self->super.super._viewFlags + 16) & 8) != 0)
  {
    v6 = [(UITextView *)self font];
    v5 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = [(UITextView *)self text];
  v8 = [(UITextView *)self _resolvedTypesettingLanguage:v7];

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
  v18 = v6;
  v19 = v18;
  v20 = v18;
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
      v26 = [(UIView *)self superview];
      v21 = v26;
      if (!v26 || (*(v26 + 95) & 0x40) != 0)
      {
        goto LABEL_25;
      }

      v20 = [(UIView *)self superview];
      [v20 setNeedsLayout];
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
  v4 = [(UITextView *)self _currentDefaultAttributes];
  if (v7)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v4];
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
  v3 = [v2 _textView];
  v4 = [v3 _font];

  return v4;
}

- (void)_setTextColor:(id)a3
{
  v4 = a3;
  textStorage = self->_textStorage;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__UITextView__setTextColor___block_invoke;
  v7[3] = &unk_1E7126368;
  v8 = v4;
  v6 = v4;
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
  v3 = [WeakRetained typingAttributes];
  v4 = [v3 valueForKey:*off_1E70EC920];

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
  v7 = [WeakRetained typingAttributes];
  v8 = *off_1E70EC988;
  v9 = [v7 valueForKey:*off_1E70EC988];
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
  v3 = [WeakRetained typingAttributes];
  v4 = [v3 valueForKey:*off_1E70EC988];

  if (v4)
  {
    v5 = [v4 alignment];
  }

  else
  {
    v5 = NSTextAlignmentNatural;
  }

  return v5;
}

- (void)setSelectedRange:(NSRange)selectedRange
{
  length = selectedRange.length;
  location = selectedRange.location;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setSelectedRange:{location, length}];

  [(UITextView *)self updateSelection];
}

- (void)setSelectedRanges:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 count])
  {
    v5 = [(UITextView *)self selectedRanges];
    v6 = [v5 lastObject];
    if (v6)
    {
      v7 = [(UITextView *)self selectedRanges];
      v8 = [v7 lastObject];
      v9 = [v8 rangeValue];
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = [MEMORY[0x1E696B098] valueWithRange:{v9 + v11, 0}];
    v15[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

    v4 = v13;
  }

  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setSelectedRanges:v4];

  [(UITextView *)self updateSelection];
}

- (NSArray)selectedRanges
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained selectedRanges];

  return v3;
}

- (void)setClearsOnInsertion:(BOOL)clearsOnInsertion
{
  if (self->_clearsOnInsertion != clearsOnInsertion)
  {
    self->_clearsOnInsertion = clearsOnInsertion;
    if (clearsOnInsertion)
    {
      v5 = [(UITextView *)self interactionAssistant];
      [v5 deactivateSelection];

      [(UITextView *)self selectAll:self];
    }

    else if (![(UITextView *)self isTextDragActive])
    {
      v6 = [(UITextView *)self interactionAssistant];
      [v6 activateSelection];

      v7 = [(UITextView *)self interactionAssistant];
      [v7 setSelectionDisplayVisible:1];
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

- (void)setContentToHTMLString:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 dataUsingEncoding:4];
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

- (void)setShouldAutoscrollAboveBottom:(BOOL)a3
{
  v3 = 128;
  if (!a3)
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

- (void)setMarginTop:(unint64_t)a3
{
  self->_unadjustedTextContainerInset.top = a3;
  self->_unadjustedTextContainerInset.bottom = a3;
  [(UITextView *)self _ensureUpToDateTextContainerInsetAndNotifyIfNecessary];
}

- (void)_setHorizontalMargins:(unint64_t)a3
{
  self->_unadjustedTextContainerInset.left = a3;
  self->_unadjustedTextContainerInset.right = a3;
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

    v10 = [(_UITextContainerView *)self->_containerView textContainer];
    [v10 size];
    v12 = v11;
    v14 = v13;

    [(UITextView *)self _ensureUpToDateTextContainerInsetAndNotifyIfNecessary];
    v15 = [(_UITextContainerView *)self->_containerView textContainer];
    [v15 size];
    v17 = v16;
    v19 = v18;

    if (v12 != v17 || v14 != v19)
    {
      [(UITextView *)self _invalidateContainerViewSize];
    }

    if ((*&self->_tvFlags & 0x20) != 0)
    {
      v21 = [(UITextView *)self interactionAssistant];
      [v21 setNeedsSelectionDisplayUpdate];
    }
  }
}

- (void)setLineHeight:(double)a3
{
  textStorage = self->_textStorage;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__UITextView_setLineHeight___block_invoke;
  v4[3] = &__block_descriptor_40_e23_v16__0__NSTextStorage_8l;
  *&v4[4] = a3;
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

- (void)_invalidateLayoutForLinkAttributesChange:(BOOL)a3
{
  v3 = a3;
  if ([(UITextView *)self _shouldInvalidateLayoutForLinkAttributesChange])
  {
    v6 = [(_UITextLayoutController *)self->_textLayoutController documentRange];
    if (([(_UITextLayoutController *)self->_textLayoutController canAccessLayoutManager]& 1) == 0)
    {
      v5 = [(_UITextContainerView *)self->_containerView canvasView];
      [v5 setLayoutFragmentViewsNeedDisplay:v3];
    }

    [(_UITextLayoutController *)self->_textLayoutController invalidateLayoutForRange:v6];
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

- (void)drawTextHighlightBackgroundForTextRange:(id)a3 origin:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v41[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v11 = [(UITextView *)self textLayoutManager];
  v12 = v11;
  if (v10 && v11)
  {
    v32 = v10;
    v13 = [(UITextView *)self textStorage];
    v14 = [v13 length];
    v33 = v8;
    v41[0] = v8;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v16 = [(UITextView *)self _nsRangeForTextKitRanges:v15];
    v18 = v17;

    if (v14 < v16 + v18)
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      [v31 handleFailureInMethod:a2 object:self file:@"UITextView.m" lineNumber:6333 description:@"Incorrect textRange"];
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
    v35 = v13;
    v36 = self;
    v37 = v24;
    v38 = v25;
    v27 = v25;
    v28 = v24;
    v29 = v13;
    [v29 enumerateAttribute:v26 inRange:v23 options:v22 + v21 usingBlock:{0, v34}];
    v30 = [(UITextView *)self _NSTextRangeFromNSRange:v23, v22 + v21];
    [v12 drawTextHighlightBackgroundForRunTextRanges:v28 attributes:v27 documentRange:v30 origin:v32 context:{x, y}];

    v8 = v33;
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

- (void)_applyHighlightStyle:(id)a3 toTextRange:(id)a4
{
  v11 = a4;
  v6 = a3;
  v7 = [(UITextView *)self attributedTextInRange:v11];
  v8 = [v7 mutableCopy];

  [v8 addAttribute:*off_1E70ECA80 value:v6 range:{0, objc_msgSend(v8, "length")}];
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v10 = [WeakRetained replaceRange:v11 withAttributedText:v8 updatingSelection:0];
}

- (void)_applyHighlightStyle:(id)a3 colorScheme:(id)a4 toTextRange:(id)a5
{
  v14 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(UITextView *)self attributedTextInRange:v14];
  v11 = [v10 mutableCopy];

  [v11 addAttribute:*off_1E70ECA80 value:v9 range:{0, objc_msgSend(v11, "length")}];
  [v11 addAttribute:*off_1E70ECA40 value:v8 range:{0, objc_msgSend(v11, "length")}];

  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v13 = [WeakRetained replaceRange:v14 withAttributedText:v11 updatingSelection:0];
}

- (void)_removeHighlightsFromTextRange:(id)a3
{
  v8 = a3;
  v4 = [(UITextView *)self attributedTextInRange:v8];
  v5 = [v4 mutableCopy];

  [v5 removeAttribute:*off_1E70ECA80 range:{0, objc_msgSend(v5, "length")}];
  [v5 removeAttribute:*off_1E70ECA40 range:{0, objc_msgSend(v5, "length")}];
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v7 = [WeakRetained replaceRange:v8 withAttributedText:v5 updatingSelection:0];
}

- (id)_linkTextAttributesForLink:(id)a3 forCharacterAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3010000000;
    v22 = "";
    v23 = a4;
    v24 = 1;
    textStorage = self->_textStorage;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__UITextView__linkTextAttributesForLink_forCharacterAtIndex___block_invoke;
    v15[3] = &unk_1E70F9548;
    v17 = &v19;
    v18 = a4;
    v9 = v6;
    v16 = v9;
    [(NSTextStorage *)textStorage coordinateReading:v15];
    v10 = [v7 _textView:self linkTextAttributesForLink:v9 inRange:{v20[4], v20[5]}];

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
    v11 = [qword_1ED4998C0 sharedController];
    v10 = [v11 preferredTextAttributesForLinkAtCharacterIndex:a4 ofStorage:self->_textStorage];
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [(UITextView *)self linkTextAttributes];
  }

  v13 = v12;

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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = UITextView;
  v5 = [(UIScrollView *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self->_containerView)
  {
    v6 = self;

    v5 = v6;
  }

  return v5;
}

- (void)setContentMode:(int64_t)a3
{
  if (dyld_program_sdk_at_least())
  {
    [(UIView *)self->_containerView setContentMode:a3];
  }

  v5.receiver = self;
  v5.super_class = UITextView;
  [(UIView *)&v5 setContentMode:a3];
}

- (void)_setAllowedTypingAttributes:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _setAllowedTypingAttributes:v4];
}

- (void)_setCuiCatalog:(id)a3
{
  v5 = a3;
  if (self->_cuiCatalog != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cuiCatalog, a3);
    [(UITextView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)_setCuiStyleEffectConfiguration:(id)a3
{
  v10 = a3;
  v4 = [(_UITextLayoutController *)self->_textLayoutController styleEffectConfiguration];

  v5 = v10;
  if (v4 != v10)
  {
    v6 = [v10 copy];
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

    v7 = [v6 appearanceName];

    if (!v7)
    {
      v8 = [(UIView *)self traitCollection];
      v9 = [(UITraitCollection *)v8 _styleEffectAppearanceName];
      [v6 setAppearanceName:v9];
    }

    [(_UITextLayoutController *)self->_textLayoutController setStyleEffectConfiguration:v6];
    [(UITextView *)self setNeedsDisplay];

    v5 = v10;
  }
}

- (void)_setFreezeTextContainerSize:(BOOL)a3
{
  v3 = a3;
  if ([(UITextView *)self _freezeTextContainerSize]!= a3)
  {
    if (v3)
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

- (id)textContainerView:(id)a3 cuiCatalogForTextEffectName:(id)a4
{
  v5 = a4;
  v6 = [(UITextView *)self _cuiCatalog];
  v7 = [v6 hasStylePresetWithName:v5];

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)startAutoscroll:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (!self->_autoscroll)
  {
    v6 = objc_alloc_init(UIAutoscroll);
    autoscroll = self->_autoscroll;
    self->_autoscroll = v6;
  }

  v48 = self->_interactionAssistant;
  v8 = self;
  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v11 = 32.0;
  }

  else
  {
    v11 = 8.0;
  }

  [(UIScrollView *)v8 visibleBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(UITextView *)v8 textContainerInset];
  v21 = fmax(v20, v8->_textContainerInsetAdjustment.top);
  horizontalTextContainerGeometryAdjustment = fmax(v22, v8->_textContainerInsetAdjustment.left);
  v25 = fmax(v24, v8->_textContainerInsetAdjustment.bottom);
  v27 = fmax(v26, v8->_textContainerInsetAdjustment.right);
  if (v8->_horizontalTextContainerGeometryAdjustment < 0.0)
  {
    horizontalTextContainerGeometryAdjustment = v8->_horizontalTextContainerGeometryAdjustment;
  }

  v28 = v13 + horizontalTextContainerGeometryAdjustment;
  v29 = v15 + v21;
  v30 = v17 - (v27 + horizontalTextContainerGeometryAdjustment);
  v31 = v19 - (v21 + v25);
  [(UIScrollView *)v8 _effectiveContentInset];
  v33 = v32 + v28;
  v35 = v29 + v34;
  v37 = v30 - (v32 + v36);
  v39 = v31 - (v34 + v38);
  [(UIScrollView *)v8 contentSize];
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
      [(UIAutoscroll *)self->_autoscroll startAutoscroll:v48 scrollContainer:v8 point:v47 directions:x repeatInterval:y, 0.075];
      goto LABEL_19;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(UITextInteractionAssistant *)v48 autoscrollWillNotStart];
  }

  [(UITextView *)v8 cancelAutoscroll];
LABEL_19:
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    placeholderLabel = self->_placeholderLabel;
    if (placeholderLabel)
    {
      [(UILabel *)placeholderLabel setAdjustsFontForContentSizeCategory:?];
    }

    [(UITextView *)self _adjustFontForAccessibilityTraits:0];
  }
}

- (void)_adjustFontForAccessibilityTraits:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory || a3)
  {
    v4 = [(UIView *)self traitCollection];
    v5 = [(UITextView *)self font];
    v6 = [v5 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v4];

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v7 = [(UITextView *)self font];
    v8 = 0;
    if (v7 && v6)
    {
      v9 = [(UITextView *)self font];
      v8 = [v9 isEqual:v6] ^ 1;
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
    v12 = v4;
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

- (void)_setWantsContentAwareTypesettingLanguage:(BOOL)a3
{
  if (((((*&self->_tvFlags & 0x8000) == 0) ^ a3) & 1) == 0)
  {
    v3 = 0x8000;
    if (!a3)
    {
      v3 = 0;
    }

    self->_tvFlags = (*&self->_tvFlags & 0xFFFFFFFFFFFF7FFFLL | v3);
    [(UITextView *)self _adjustFontForTypesettingLanguage];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v8 = [WeakRetained _canHandleResponderAction:a3];

  if (!v8)
  {
    if (sel__showTextFormattingOptions_ == a3)
    {
      if ([(UITextView *)self _areDefaultTextFormattingAffordancesAvailable])
      {
        v11 = ![(UITextView *)self _isTextFormattingControllerPresented];
        goto LABEL_31;
      }
    }

    else
    {
      if (sel_find_ != a3 && sel_findAndReplace_ != a3 && sel_findNext_ != a3 && sel_findPrevious_ != a3 && sel_useSelectionForFind_ != a3 && sel__findSelected_ != a3)
      {
        goto LABEL_26;
      }

      if (self->_findInteractionEnabled)
      {
        if (sel_findAndReplace_ == a3)
        {
          v17 = [(UITextView *)self supportsTextReplacement];
          goto LABEL_27;
        }

        if (sel_useSelectionForFind_ == a3 || sel__findSelected_ == a3)
        {
          v9 = [(UITextView *)self selectedTextRange];
          v10 = [v9 _isRanged];
          goto LABEL_3;
        }

LABEL_26:
        v19.receiver = self;
        v19.super_class = UITextView;
        v17 = [(UIView *)&v19 canPerformAction:a3 withSender:v6];
LABEL_27:
        LOBYTE(v11) = v17;
        goto LABEL_31;
      }
    }

    LOBYTE(v11) = 0;
    goto LABEL_31;
  }

  v9 = objc_loadWeakRetained(&self->_inputController);
  v10 = [v9 _shouldHandleResponderAction:a3 withSender:v6];
LABEL_3:
  LOBYTE(v11) = v10;

LABEL_31:
  return v11;
}

- (void)cut:(id)a3
{
  v5 = a3;
  if ([(UITextView *)self keyboardInputShouldDelete:self])
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    [WeakRetained cut:v5];
  }
}

- (void)copy:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained copy:v4];

  v6 = [(UITextView *)self interactionAssistant];
  [v6 hideSelectionCommands];
}

- (void)_define:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _define:v4];
}

- (void)_translate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _translate:v4];
}

- (BOOL)_isDisplayingReferenceLibraryViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained _isDisplayingReferenceLibraryViewController];

  return v3;
}

- (void)_share:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _share:v4];
}

- (BOOL)_isDisplayingTextService
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained _isDisplayingTextService];

  return v3;
}

- (BOOL)_isDisplayingShareViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained _isDisplayingShareViewController];

  return v3;
}

- (BOOL)_isDisplayingLookupViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained _isDisplayingLookupViewController];

  return v3;
}

- (void)_selectionMayChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _selectionMayChange:v4];
}

- (void)_insertAttributedTextWithoutClosingTyping:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _insertAttributedTextWithoutClosingTyping:v4];
}

- (void)_addShortcut:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _addShortcut:v4];
}

- (BOOL)_isDisplayingShortcutViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained _isDisplayingShortcutViewController];

  return v3;
}

- (void)paste:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained paste:v4];
}

- (void)pasteAndMatchStyle:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained pasteAndMatchStyle:v4];
}

- (void)_pasteAttributedString:(id)a3 pasteAsRichText:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _pasteAttributedString:v6 pasteAsRichText:v4];
}

- (id)_attributedStringForInsertionOfAttributedString:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v6 = [WeakRetained _attributedStringForInsertionOfAttributedString:v4];

  return v6;
}

- (void)pasteItemProviders:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained pasteItemProviders:v4];
}

- (id)_effectivePasteConfiguration
{
  v8.receiver = self;
  v8.super_class = UITextView;
  v3 = [(UIResponder *)&v8 _effectivePasteConfiguration];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(UITextView *)self _implicitPasteConfigurationClasses];
    v5 = [UIPasteConfiguration _pasteConfigurationForAcceptingClasses:v6];
  }

  return v5;
}

- (id)_implicitPasteConfigurationClasses
{
  v11[4] = *MEMORY[0x1E69E9840];
  if ([(UITextView *)self isEditable])
  {
    v3 = [(UITextView *)self allowsEditingTextAttributes];
    v4 = objc_opt_class();
    if (v3)
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

- (void)select:(id)a3
{
  v3 = [(UITextView *)self interactionAssistant];
  [v3 selectWord];
}

- (void)selectAll:(id)a3
{
  v4 = a3;
  v5 = [(UITextView *)self interactionAssistant];
  [v5 selectAll:v4];
}

- (void)makeTextWritingDirectionNatural:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained makeTextWritingDirectionNatural:v4];
}

- (void)makeTextWritingDirectionRightToLeft:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained makeTextWritingDirectionRightToLeft:v4];
}

- (void)makeTextWritingDirectionLeftToRight:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained makeTextWritingDirectionLeftToRight:v4];
}

- (void)toggleBoldface:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained toggleBoldface:v4];
}

- (void)toggleItalics:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained toggleItalics:v4];
}

- (void)toggleUnderline:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained toggleUnderline:v4];
}

- (void)increaseSize:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained increaseSize:self];
}

- (void)decreaseSize:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained decreaseSize:self];
}

- (void)updateTextAttributesWithConversionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained updateTextAttributesWithConversionHandler:v4];
}

- (void)replace:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained replace:v4];
}

- (void)_promptForReplace:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _promptForReplace:v4];
}

- (void)_transliterateChinese:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _transliterateChinese:v4];
}

- (void)alignLeft:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained alignLeft:v4];
}

- (void)alignCenter:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained alignCenter:v4];
}

- (void)alignJustified:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained alignJustified:v4];
}

- (void)alignRight:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained alignRight:v4];
}

- (void)_changeLineHeightAction:(id)a3 newLineHeight:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _changeLineHeightAction:v7 newLineHeight:v6];
}

- (void)captureTextFromCamera:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained captureTextFromCamera:v4];
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained validateCommand:v4];
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
  LOBYTE(length) = [(UITextView *)self keyboardInput:v11 shouldReplaceTextInRanges:v13 replacementText:v10];

  return length;
}

- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRanges:(id)a4 replacementText:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(UITextView *)self _hideTextFormattingOptions:0];
  v9 = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 textView:self shouldChangeTextInRanges:v7 replacementText:v8];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v13 = 1;
      goto LABEL_7;
    }

    v11 = [v7 unionRange];
    v10 = [v9 textView:self shouldChangeTextInRange:v11 replacementText:{v12, v8}];
  }

  v13 = v10;
LABEL_7:

  return v13;
}

- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  [(UITextView *)self _hideTextFormattingOptions:0];
  v9 = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(UITextView *)self selectedRanges];
    v11 = [(UITextView *)v9 textView:self shouldChangeTextInRanges:v10 replacementText:v8];

    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [(UITextView *)self selectedRange];
    v14 = [(UITextView *)v9 textView:self shouldChangeTextInRange:v12 replacementText:v13, v8];
LABEL_8:
    v11 = v14;
    goto LABEL_9;
  }

  v11 = 1;
  if ((objc_opt_respondsToSelector() & 1) != 0 && v9 != self)
  {
    v14 = [(UITextView *)v9 keyboardInput:v7 shouldInsertText:v8 isMarkedText:0];
    goto LABEL_8;
  }

LABEL_9:

  return v11;
}

- (BOOL)keyboardInputShouldDelete:(id)a3
{
  v4 = a3;
  [(UITextView *)self _hideTextFormattingOptions:0];
  v5 = [(UIScrollView *)self delegate];
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v7 = [WeakRetained _rangesForBackwardsDelete];

  if (objc_opt_respondsToSelector())
  {
    v8 = [(UITextView *)v5 textView:self shouldChangeTextInRanges:v7 replacementText:&stru_1EFB14550];
LABEL_8:
    v11 = v8;
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v7 unionRange];
    v8 = [(UITextView *)v5 textView:self shouldChangeTextInRange:v9 replacementText:v10, &stru_1EFB14550];
    goto LABEL_8;
  }

  v11 = 1;
  if ((objc_opt_respondsToSelector() & 1) != 0 && v5 != self)
  {
    v8 = [(UITextView *)v5 keyboardInputShouldDelete:v4];
    goto LABEL_8;
  }

LABEL_9:

  return v11;
}

- (BOOL)keyboardInputChanged:(id)a3
{
  v4 = a3;
  v5 = [(UIScrollView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && v5 != self)
  {
    [(UITextView *)v5 keyboardInputChanged:v4];
  }

  return 1;
}

- (void)keyboardInputChangedSelection:(id)a3
{
  v5 = a3;
  v4 = [(UIScrollView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && v4 != self)
  {
    [(UITextView *)v4 keyboardInputChangedSelection:v5];
  }
}

- (id)automaticallySelectedOverlay
{
  v4 = [(UIView *)self _enclosingScrollableScrollerIncludingSelf];
  v5 = v4;
  if (v4 && ([v4 frame], v7 = v6, -[UITextView font](self, "font"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "lineHeight"), v7 > v8 * 3.0))
  {
    v9 = v5;
  }

  else
  {
    v10 = [(UIView *)self keyboardSceneDelegate];
    v9 = [v10 containerView];

    if (!v5)
    {
      goto LABEL_6;
    }
  }

LABEL_6:

  return v9;
}

- (void)setSupportsAdaptiveImageGlyph:(BOOL)a3
{
  v3 = a3;
  *&self->_tvFlags |= 0x800000000uLL;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setSupportsAdaptiveImageGlyph:v3];
}

- (BOOL)supportsAdaptiveImageGlyph
{
  if ((*(&self->_tvFlags + 4) & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    v5 = [WeakRetained supportsAdaptiveImageGlyph];

    LOBYTE(v3) = v5;
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
    v4 = [(UIResponder *)self _supportsImagePaste];
    v5 = 0x1000000000;
    if (v4)
    {
      v5 = 0x3000000000;
    }

    tvFlags = (*&self->_tvFlags & 0xFFFFFFCFFFFFFFFFLL | v5);
    self->_tvFlags = tvFlags;
  }

  return (*&tvFlags >> 37) & 1;
}

- (void)insertAdaptiveImageGlyph:(id)a3 replacementRange:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained insertAdaptiveImageGlyph:v7 replacementRange:v6];
}

- (BOOL)supportsEmojiImageTextAttachments
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained supportsEmojiImageTextAttachments];

  return v3;
}

- (void)insertEmojiImageTextAttachment:(id)a3 replacementRange:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained insertEmojiImageTextAttachment:v7 replacementRange:v6];
}

- (void)insertTextSuggestion:(id)a3
{
  v7 = a3;
  v4 = [(UIScrollView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIScrollView *)self delegate];
    [v6 _textView:self insertTextSuggestion:v7];
  }
}

- (void)insertInputSuggestion:(id)a3
{
  v7 = a3;
  v4 = [(UIScrollView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIScrollView *)self delegate];
    [v6 textView:self insertInputSuggestion:v7];
  }
}

- (BOOL)textInput:(id)a3 shouldChangeCharactersInRanges:(id)a4 replacementText:(id)a5
{
  v7 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    if ([WeakRetained textView:self shouldChangeTextInRanges:v7 replacementText:v8])
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

    v10 = [v7 unionRange];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL && [WeakRetained textView:self shouldChangeTextInRange:v10 replacementText:{v11, v8}])
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

- (id)_attributesForApplyingFormattingModification:(id *)a3 withAttributes:(id)a4 paragraphStyle:(id)a5 forTypingAttributes:(BOOL)a6
{
  v9 = a5;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v12 = [WeakRetained _defaultAttributesForApplyingFormattingModification:a3 withAttributes:v10 paragraphStyle:v9];

  return v12;
}

- (void)_textFormattingDidDisappear:(id)a3
{
  textFormattingViewController = self->_textFormattingViewController;
  if (textFormattingViewController == a3)
  {
    self->_textFormattingViewController = 0;
    v5 = a3;

    [(UITextView *)self _stopSuppressingKeyboardForTextFormatting:v5];
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

- (void)_textFormattingRequestsFirstResponderRestoration:(id)a3
{
  self->_forceSelectionDisplayForTextFormatting = 0;
  [(UITextView *)self _restoreFirstResponder];

  [(UITextView *)self _updateTextFormattingControllerPresentationSource];
}

- (void)_textFormattingRequestsFirstResponderResignation:(id)a3
{
  self->_forceSelectionDisplayForTextFormatting = 1;
  self->_textFormattingShouldSkipHidingOnResignFirstResponder = 1;
  [(UITextView *)self resignFirstResponder];
}

- (void)_startSuppressingKeyboardForTextFormatting:(id)a3
{
  if ([(UITextView *)self _shouldHideInputViewsForTextFormatting])
  {
    v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v4 = [v6 vendKeyboardSuppressionAssertionForReason:@"Text Formatting" type:1];
    textFormattingKeyboardSuppressionAssertion = self->_textFormattingKeyboardSuppressionAssertion;
    self->_textFormattingKeyboardSuppressionAssertion = v4;
  }
}

- (void)_stopSuppressingKeyboardForTextFormatting:(id)a3
{
  textFormattingKeyboardSuppressionAssertion = self->_textFormattingKeyboardSuppressionAssertion;
  self->_textFormattingKeyboardSuppressionAssertion = 0;
}

- (void)insertDictationResult:(id)a3 withCorrectionIdentifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = [v8 dictationPhraseArray];
    [(UITextView *)self insertDictationResult:WeakRetained];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    [WeakRetained insertDictationResult:v8 withCorrectionIdentifier:v6];
  }
}

- (void)_setDictationResult:(id)a3 withCorrectionIdentifier:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11 && [v11 count])
  {
    v8 = [UIDictationUtilities dictationPhrasesFromPhraseArray:v11];
    [v8 setFromKeyboard:0];
    [v8 setTransform:0];
    [v8 setUseServerCapitalization:0];
    if (!v7)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"UITextView.m" lineNumber:7366 description:{@"Only Siri calls -[UITextView _setDictationResult:withCorrectionIdentifier:], and it should always supply the correction identifier from the server."}];
    }

    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    [WeakRetained _insertDictationResult:v8 withCorrectionIdentifier:v7 replacingRange:0 resultLength:{-[NSTextStorage length](self->_textStorage, "length"), 0}];
  }
}

- (void)_registerUndoOperationForReplacementWithActionName:(id)a3 replacementText:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained _registerUndoOperationForReplacementWithActionName:v7 replacementText:v6];
}

- (id)metadataDictionariesForDictationResults
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained metadataDictionariesForDictationResults];

  return v3;
}

- (void)setSecureTextEntry:(BOOL)a3
{
  v3 = a3;
  if ([(UITextView *)self isSecureTextEntry]!= a3)
  {
    v5 = [(UITextView *)self _textInputTraits];
    [v5 setSecureTextEntry:v3];

    if ([(UITextView *)self _shouldObscureInput])
    {
      [(UITextView *)self selectedRange];
      if (v6)
      {
        [(UITextView *)self selectAll:self];
      }
    }

    v7 = [(UITextView *)self interactionAssistant];
    [v7 updateDisplayedSelection];
  }
}

- (BOOL)_shouldObscureInput
{
  v3 = [(UITextView *)self isSecureTextEntry];
  if (v3)
  {
    LOBYTE(v3) = [(UITextView *)self displaySecureTextUsingPlainText]^ 1;
  }

  return v3;
}

- (void)setForceEnableDictation:(BOOL)a3
{
  v3 = a3;
  v4 = [(UITextView *)self _textInputTraits];
  [v4 setForceEnableDictation:v3];
}

- (void)setForceDisableDictation:(BOOL)a3
{
  v3 = a3;
  v4 = [(UITextView *)self _textInputTraits];
  [v4 setForceDisableDictation:v3];
}

- (void)takeTraitsFrom:(id)a3
{
  v4 = a3;
  v5 = [(UITextView *)self textInputTraits];
  [v5 takeTraitsFrom:v4];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if ([objc_opt_class() instancesRespondToSelector:a3])
  {
    v5 = [(UITextView *)self _textInputTraits];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITextView;
    v5 = [(UITextView *)&v7 forwardingTargetForSelector:a3];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_insertTextSuggestion_ != a3 || (*(&self->_tvFlags + 3) & 4) != 0)
  {
    v7.receiver = self;
    v7.super_class = UITextView;
    if ([(UITextView *)&v7 respondsToSelector:a3])
    {
      v5 = 1;
    }

    else
    {
      v5 = [objc_opt_class() instancesRespondToSelector:a3];
    }
  }

  else
  {
    v4 = [(UIScrollView *)self delegate];
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  if (!v4)
  {
    v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  }

  return v4;
}

- (void)_cancelDataDetectors
{
  v3 = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
  [v3 cancelURLificationForContainer:self];
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

- (id)_targetedPreviewForTextInteractableItem:(id)a3 dismissing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6 && (-[UITextView _applyOptionsToGeometry](self, "_applyOptionsToGeometry"), geometry = self->_geometry, [v6 range], v8 = objc_claimAutoreleasedReturnValue(), -[_UITextStorageDraggableGeometry targetedPreviewProviderForTextInRange:dismissing:](geometry, "targetedPreviewProviderForTextInRange:dismissing:", v8, v4), v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
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
  v2 = [(UIScrollView *)self delegate];
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
  v2 = [(UIScrollView *)self delegate];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (BOOL)_allowInteraction:(int64_t)a3 forTextInteractableItem:(id)a4
{
  v6 = a4;
  v7 = [(UIScrollView *)self delegate];
  v8 = a3 != 0;
  if (a3)
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

  if ([v6 isLinkItem])
  {
    v9 = v6;
    if (objc_opt_respondsToSelector())
    {
      textLayoutController = self->_textLayoutController;
      v11 = [v9 range];
      v12 = [(_UITextLayoutController *)textLayoutController characterRangeForTextRange:v11];
      v14 = v13;

      v15 = [v9 link];
      v16 = [v7 textView:self shouldInteractWithURL:v15 inRange:v12 interaction:{v14, v8}];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v19 = 1;
        goto LABEL_19;
      }

      v27 = self->_textLayoutController;
      v28 = [v9 range];
      v29 = [(_UITextLayoutController *)v27 characterRangeForTextRange:v28];
      v31 = v30;

      v15 = [v9 link];
      v16 = [v7 textView:self shouldInteractWithURL:v15 inRange:{v29, v31}];
    }

    v19 = v16;
    goto LABEL_18;
  }

  if ([v6 isAttachmentItem])
  {
    v17 = v6;
    v18 = [v17 attachment];
    v19 = [off_1E70ECBA8 _attachmentHasImage:v18];

    v20 = dyld_program_sdk_at_least();
    if (objc_opt_respondsToSelector())
    {
      v21 = self->_textLayoutController;
      v22 = [v17 range];
      v23 = [(_UITextLayoutController *)v21 characterRangeForTextRange:v22];
      v25 = v24;

      v15 = [v17 attachment];
      v26 = [v7 textView:self shouldInteractWithTextAttachment:v15 inRange:v23 interaction:{v25, v8}];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_19:

        goto LABEL_20;
      }

      v32 = self->_textLayoutController;
      v33 = [v17 range];
      v34 = [(_UITextLayoutController *)v32 characterRangeForTextRange:v33];
      v36 = v35;

      v15 = [v17 attachment];
      v26 = [v7 textView:self shouldInteractWithTextAttachment:v15 inRange:{v34, v36}];
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

- (BOOL)willInteractWithLinkAtPoint:(CGPoint)a3
{
  v3 = [(UITextView *)self _textInteractableItemAtPoint:0 precision:a3.x, a3.y];
  v4 = v3 != 0;

  return v4;
}

- (void)startInteractionWithLinkAtPoint:(CGPoint)a3
{
  v3 = [(UITextView *)self _textInteractableItemAtPoint:0 precision:a3.x, a3.y];
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

- (id)_anyTextItemConstrainedToLineAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UITextLayoutController *)self->_textLayoutController nearestPositionAtPoint:self->_textContainer inContainer:?];
  textLayoutController = self->_textLayoutController;
  v8 = [(_UITextLayoutController *)textLayoutController beginningOfDocument];
  v9 = [(_UITextLayoutController *)textLayoutController offsetFromPosition:v8 toPosition:v6];

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

- (id)_textInteractableItemAtPoint:(CGPoint)a3 precision:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  if (a4 == 2)
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

- (id)_textItemForItem:(id)a3
{
  textLayoutController = self->_textLayoutController;
  v4 = a3;
  v5 = [v4 range];
  v6 = [(_UITextLayoutController *)textLayoutController characterRangeForTextRange:v5];
  v8 = v7;

  v9 = [v4 itemRepresentationWithRange:{v6, v8}];

  return v9;
}

- (id)_textInteractableItemForTag:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v19 = v9;
  v20 = self;
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

- (id)_primaryActionForTextInteractableItem:(id)a3 defaultAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIScrollView *)self delegate];
  v9 = v7;
  v10 = v9;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(UITextView *)self _textItemForItem:v6];
    v10 = [v8 textView:self primaryActionForTextItem:v11 defaultAction:v9];
  }

  return v10;
}

- (id)_menuConfigurationForTextInteractableItem:(id)a3 defaultMenu:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIScrollView *)self delegate];
  v9 = [UITextItemMenuConfiguration configurationWithMenu:v7];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(UITextView *)self _textItemForItem:v6];
    v11 = [v8 textView:self menuConfigurationForTextItem:v10 defaultMenu:v7];

    v9 = v11;
  }

  return v9;
}

- (void)_textInteractableItem:(id)a3 willDisplayMenuWithAnimator:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(UITextView *)self _textItemForItem:v9];
    [v7 textView:self textItemMenuWillDisplayForTextItem:v8 animator:v6];
  }
}

- (void)_textInteractableItem:(id)a3 willDismissMenuWithAnimator:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(UITextView *)self _textItemForItem:v9];
    [v7 textView:self textItemMenuWillEndForTextItem:v8 animator:v6];
  }
}

- (BOOL)_interactionPossibleWithAttachment:(id)a3
{
  if ([off_1E70ECBA8 _attachmentHasImage:a3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UIScrollView *)self delegate];
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

- (BOOL)_allowHighlightForTextInteractableItem:(id)a3
{
  v4 = a3;
  v5 = [(UIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    textLayoutController = self->_textLayoutController;
    v7 = [v4 range];
    v8 = [(_UITextLayoutController *)textLayoutController characterRangeForTextRange:v7];
    v10 = v9;

    v11 = [v5 _textView:self shouldHighlightForInteractionInRange:{v8, v10}];
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

- (void)_findSelected:(id)a3
{
  v4 = a3;
  [(UITextView *)self useSelectionForFind:v4];
  [(UITextView *)self find:v4];
}

- (id)findInteraction:(id)a3 sessionForView:(id)a4
{
  v4 = [[UITextSearchingFindSession alloc] initWithSearchableObject:self];

  return v4;
}

- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4
{
  [(UITextView *)self didBeginTextSearchOperation:a3];
  searchableObject = self->_searchableObject;

  [(_UITextViewSearchableObject *)searchableObject didBeginFindSession];
}

- (void)findInteraction:(id)a3 didEndFindSession:(id)a4
{
  [(UITextView *)self didEndTextSearchOperation:a3];
  searchableObject = self->_searchableObject;

  [(_UITextViewSearchableObject *)searchableObject didEndFindSession];
}

- (id)_textLineRectsForRange:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(UITextView *)self selectionRectsForRange:v4];
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
          [v5 addObject:v17];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_targetedPreviewForRange:(id)a3 withRenderingAttributes:(id)a4 includeFullDocument:(BOOL)a5
{
  v5 = a5;
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
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
          *&buf[4] = v8;
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Creating targeted preview for range: %@, renderingAttributes: %@", buf, 0x16u);
        }
      }
    }
  }

  v10 = [(UITextView *)self _previewRendererForRange:v8 unifyRects:1];
  [v10 addRenderingAttributes:v9];
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
  v11 = v8;
  v31 = v11;
  v33 = buf;
  v12 = v10;
  v32 = v12;
  v34 = &v35;
  v13 = _Block_copy(aBlock);
  v14 = v13;
  if (v5)
  {
    v15 = [(UITextView *)self textContainer];
    [v15 size];
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

  v18 = [v9 allKeys];
  [v12 removeRenderingAttributes:v18];

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

- (void)setAllowedWritingToolsResultOptions:(unint64_t)a3
{
  if (self && (a3 & 8) != 0 && (!_UIIsPrivateMainBundle() || [(UITextView *)self isMemberOfClass:objc_opt_class()]))
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

  v6 = [(UITextView *)self _textInputTraits];
  [v6 setAllowedWritingToolsResultOptions:a3];
}

- (BOOL)isWritingToolsActive
{
  v2 = [(UITextView *)self _existingWritingToolsCoordinator];
  v3 = [v2 state];

  return (v3 & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (void)writingToolsCoordinator:(id)a3 requestsContextsForScope:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  if ([v9 state] == 2)
  {
    tvFlags = self->_tvFlags;
    if ((*&tvFlags & 0x20000000) != 0)
    {
      v11 = [(UIScrollView *)self delegate];
      [v11 textViewWritingToolsWillBegin:self];
    }

    else
    {
      if ((*&tvFlags & 0x8000000) == 0)
      {
        goto LABEL_7;
      }

      v11 = [(UIScrollView *)self delegate];
      [v11 _textViewWillBeginTextAssistantSession:self];
    }
  }

LABEL_7:
  v12 = [(UITextView *)self _textAssistantManager];
  [v12 writingToolsCoordinator:v9 requestsContextsForScope:a4 completion:v8];
}

- (void)writingToolsCoordinator:(id)a3 replaceRange:(_NSRange)a4 inContext:(id)a5 proposedText:(id)a6 reason:(int64_t)a7 animationParameters:(id)a8 completion:(id)a9
{
  length = a4.length;
  location = a4.location;
  v16 = a9;
  v17 = a8;
  v18 = a6;
  v19 = a5;
  v20 = a3;
  v21 = [(UITextView *)self _textAssistantManager];
  [v21 writingToolsCoordinator:v20 replaceRange:location inContext:length proposedText:v19 reason:v18 animationParameters:a7 completion:{v17, v16}];
}

- (void)writingToolsCoordinator:(id)a3 selectRanges:(id)a4 inContext:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(UITextView *)self _textAssistantManager];
  [v14 writingToolsCoordinator:v13 selectRanges:v12 inContext:v11 completion:v10];
}

- (void)writingToolsCoordinator:(id)a3 requestsRangeInContextWithIdentifierForPoint:(CGPoint)a4 completion:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  v10 = a3;
  v11 = [(UITextView *)self _textAssistantManager];
  [v11 writingToolsCoordinator:v10 requestsRangeInContextWithIdentifierForPoint:v9 completion:{x, y}];
}

- (void)writingToolsCoordinator:(id)a3 requestsBoundingBezierPathsForRange:(_NSRange)a4 inContext:(id)a5 completion:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [(UITextView *)self _textAssistantManager];
  [v14 writingToolsCoordinator:v13 requestsBoundingBezierPathsForRange:location inContext:length completion:{v12, v11}];
}

- (void)writingToolsCoordinator:(id)a3 requestsUnderlinePathsForRange:(_NSRange)a4 inContext:(id)a5 completion:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [(UITextView *)self _textAssistantManager];
  [v14 writingToolsCoordinator:v13 requestsUnderlinePathsForRange:location inContext:length completion:{v12, v11}];
}

- (void)writingToolsCoordinator:(id)a3 prepareForTextAnimation:(int64_t)a4 forRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7
{
  length = a5.length;
  location = a5.location;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [(UITextView *)self _textAssistantManager];
  [v16 writingToolsCoordinator:v15 prepareForTextAnimation:a4 forRange:location inContext:length completion:{v14, v13}];
}

- (void)writingToolsCoordinator:(id)a3 adjustForUpdatedRange:(_NSRange)a4 forTextAnimation:(int64_t)a5 inContext:(id)a6 completion:(id)a7
{
  length = a4.length;
  location = a4.location;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [(UITextView *)self _textAssistantManager];
  [v16 writingToolsCoordinator:v15 adjustForUpdatedRange:location forTextAnimation:length inContext:a5 completion:{v14, v13}];
}

- (void)writingToolsCoordinator:(id)a3 requestsPreviewForTextAnimation:(int64_t)a4 ofRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7
{
  length = a5.length;
  location = a5.location;
  v45 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [(UITextView *)self textLayoutManager];

  if (v15)
  {
    v16 = [(UITextView *)self _textAssistantManager];
    [v16 writingToolsCoordinator:v42 requestsPreviewForTextAnimation:a4 ofRange:location inContext:length completion:{v13, v14}];
  }

  else if (self)
  {
    v17 = v14;
    if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v39 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_handleTextKit1PreviewGenerationForTextAnimation_ofRange_completion____s_category) + 8);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = v39;
        v41 = UIWritingToolsCoordinatorTextAnimationDebugDescription(a4);
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
      v22 = [(UITextView *)self textStorage];
      v23 = [v22 length];

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
    v30 = [(UIView *)self superview];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = self;
    }

    v33 = v32;

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

- (void)writingToolsCoordinator:(id)a3 finishTextAnimation:(int64_t)a4 forRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7
{
  length = a5.length;
  location = a5.location;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [(UITextView *)self _textAssistantManager];
  [v16 writingToolsCoordinator:v15 finishTextAnimation:a4 forRange:location inContext:length completion:{v14, v13}];
}

- (void)writingToolsCoordinator:(id)a3 willChangeToState:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  tvFlags = self->_tvFlags;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__UITextView_writingToolsCoordinator_willChangeToState_completion___block_invoke;
  aBlock[3] = &unk_1E7127048;
  v18 = v9;
  v19 = a4;
  v20 = (tvFlags & 0x40000000) != 0;
  v16 = v8;
  v17 = self;
  v21 = (tvFlags & 0x10000000) != 0;
  v11 = v9;
  v12 = v8;
  v13 = _Block_copy(aBlock);
  v14 = [(UITextView *)self _textAssistantManager];
  [v14 writingToolsCoordinator:v12 willChangeToState:a4 completion:v13];
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

- (id)_writingToolsCoordinator:(id)a3 textHighlightColorForScheme:(id)a4 inHighlightStyle:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(UITextView *)self _textAssistantManager];
  v12 = [v11 _writingToolsCoordinator:v10 textHighlightColorForScheme:v9 inHighlightStyle:v8];

  return v12;
}

- (void)_writingToolsCoordinator:(id)a3 didReceiveContexts:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextView *)self _textAssistantManager];
  [v8 _writingToolsCoordinator:v7 didReceiveContexts:v6];
}

- (BOOL)_performExternalEditsForWritingToolsSessionIdentifier:(id)a3 action:(int64_t)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(UITextView *)self isWritingToolsActive])
  {
    v10 = [(UITextView *)self _existingTextAssistantManager];
    v11 = [v10 performExternalEditsForWritingToolsSessionIdentifier:v8 action:a4 usingBlock:v9];
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

- (void)_setWritingToolsCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(UITextView *)self _existingWritingToolsCoordinator];
  v6 = v5;
  if (v5 != v4)
  {
    [v5 _setAssociatedTextView:0];
    v7.receiver = self;
    v7.super_class = UITextView;
    [(UIView *)&v7 _setWritingToolsCoordinator:v4];
    [v4 _setAssociatedTextView:self];
  }
}

- (UIDragInteraction)textDragInteraction
{
  if (self->_textDragDropSupport)
  {
    v3 = [(UIView *)self interactions];
    v4 = [(UITextDragDropSupport *)self->_textDragDropSupport dragInteraction];
    if ([v3 indexOfObject:v4] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = [(UITextDragDropSupport *)self->_textDragDropSupport dragInteraction];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIDropInteraction)textDropInteraction
{
  if (self->_textDragDropSupport)
  {
    v3 = [(UIView *)self interactions];
    v4 = [(UITextDragDropSupport *)self->_textDragDropSupport dropInteraction];
    if ([v3 indexOfObject:v4] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = [(UITextDragDropSupport *)self->_textDragDropSupport dropInteraction];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)draggingFinished:(id)a3
{
  v4 = a3;
  [(UITextView *)self _updateSelectionGestures];
  v5 = [v4 dragTearoffOccured];

  if ((v5 & 1) == 0)
  {
    [(UITextView *)self selectedRange];
    if (v6)
    {
      v7 = [(UITextView *)self interactionAssistant];
      [v7 showSelectionCommands];
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

- (void)encodeRestorableStateWithCoder:(id)a3 includingSelectedTextAndDisplayedViewControllers:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UITextView *)self isEditable];
  v8 = [(UITextView *)self selectedRange];
  v10 = v9;
  v11 = v9 != 0;
  if (v7)
  {
    v12 = [(UIView *)self isFirstResponder];
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v12;
    }
  }

  v18.receiver = self;
  v18.super_class = UITextView;
  [(UIScrollView *)&v18 encodeRestorableStateWithCoder:v6];
  if (v11)
  {
    [v6 encodeInt:v10 forKey:@"kTextSelectedTextLengthKey"];
    [v6 encodeInt:v8 forKey:@"kTextSelectedTextLocationKey"];
    if (v4)
    {
      v13 = [(UITextView *)self selectedText];
      if ([v13 length])
      {
        [v6 encodeObject:v13 forKey:@"kTextSelectedTextKey"];
      }

      if ([(UITextView *)self _isDisplayingShortcutViewController])
      {
        [UIApp ignoreSnapshotOnNextApplicationLaunch];
      }

      if ([(UITextView *)self _isDisplayingReferenceLibraryViewController])
      {
        v14 = +[UIDevice currentDevice];
        v15 = [v14 userInterfaceIdiom];

        if (!v15)
        {
          [UIApp ignoreSnapshotOnNextApplicationLaunch];
        }

        [v6 encodeBool:1 forKey:@"kTextDisplayingReferenceLibraryViewControllerKey"];
      }

      if ([(UITextView *)self _isDisplayingShareViewController])
      {
        [UIApp ignoreSnapshotOnNextApplicationLaunch];
      }
    }
  }

  v16 = [(UITextView *)self _restorableScrollPositionForStateRestoration];
  v17 = [v16 dictionaryRepresentation];

  if (v17)
  {
    [v6 encodeObject:v17 forKey:@"kTextVisiblePosition"];
  }

  [v6 encodeBool:v7 forKey:@"kTextEditableKey"];
  [v6 encodeBool:-[UIView isFirstResponder](self forKey:{"isFirstResponder"), @"kTextFirstResponderKey"}];
}

- (void)decodeRestorableStateWithCoder:(id)a3 includingSelectedTextAndDisplayedViewControllers:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 containsValueForKey:@"kTextEditableKey"])
  {
    -[UITextView setEditable:](self, "setEditable:", [v6 decodeBoolForKey:@"kTextEditableKey"]);
  }

  if ([v6 containsValueForKey:@"kTextFirstResponderKey"] && objc_msgSend(v6, "decodeBoolForKey:", @"kTextFirstResponderKey"))
  {
    [(UITextView *)self becomeFirstResponder];
  }

  if ([v6 containsValueForKey:@"kTextSelectedTextLengthKey"])
  {
    if ([v6 containsValueForKey:@"kTextSelectedTextLocationKey"])
    {
      v7 = [v6 decodeIntForKey:@"kTextSelectedTextLengthKey"];
      v8 = [v6 decodeIntForKey:@"kTextSelectedTextLocationKey"];
      if ([(UITextView *)self isEditable]|| v7)
      {
        if ([(UIScrollView *)self isProgrammaticScrollEnabled])
        {
          [(UIScrollView *)self setProgrammaticScrollEnabled:0];
          [(UITextView *)self becomeFirstResponder];
          [(UITextView *)self setSelectedRange:v8, v7];
          [(UIScrollView *)self setProgrammaticScrollEnabled:1];
          if (!v4)
          {
            goto LABEL_21;
          }
        }

        else
        {
          [(UITextView *)self becomeFirstResponder];
          [(UITextView *)self setSelectedRange:v8, v7];
          if (!v4)
          {
            goto LABEL_21;
          }
        }

        v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"kTextSelectedTextKey"];
        if (v9)
        {
          v10 = [v6 decodeBoolForKey:@"kTextDisplayingShortcutViewControllerKey"];
          v11 = [v6 decodeBoolForKey:@"kTextDisplayingReferenceLibraryViewControllerKey"];
          [v6 decodeBoolForKey:@"kTextDisplayingShareViewControllerKey"];
          if ((v10 & 1) == 0)
          {
            if (v11)
            {
              v12 = +[UIDevice currentDevice];
              v13 = [v12 userInterfaceIdiom];

              if (v13)
              {
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __112__UITextView_StateRestoration__decodeRestorableStateWithCoder_includingSelectedTextAndDisplayedViewControllers___block_invoke;
                block[3] = &unk_1E70F35B8;
                v23 = v9;
                v24 = self;
                dispatch_async(MEMORY[0x1E69E96A0], block);
              }

              else
              {
                v14 = [(UITextView *)self selectedText];
                [v9 isEqualToString:v14];
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
  [(UIScrollView *)&v21 decodeRestorableStateWithCoder:v6];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
  v19 = [v6 decodeObjectOfClasses:v18 forKey:@"kTextVisiblePosition"];

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

- (id)_nonNullUITextRangeForTextKitRanges:(id)a3
{
  v3 = [(UITextView *)self _rangeForTextKitRanges:a3];
  if (!v3)
  {
    v3 = [_UITextKitTextRange rangeWithRange:0, 0];
  }

  return v3;
}

- (id)_nonNullUITextRangeFromNSRange:(_NSRange)a3
{
  v3 = [(UIResponder *)self _textRangeFromNSRange:a3.location, a3.length];
  if (!v3)
  {
    v3 = [_UITextKitTextRange rangeWithRange:0, 0];
  }

  return v3;
}

- (id)_NSTextRangeFromNSRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(UITextView *)self _internalTextLayoutController];
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

- (_NSRange)_nsRangeForNonNullUITextRange:(id)a3
{
  if (a3)
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

- (int64_t)_indexForNonNullUITextPosition:(id)a3
{
  if (a3)
  {
    return [(UIResponder *)self _indexForTextPosition:?];
  }

  else
  {
    return 0;
  }
}

- (_NSRange)_nsRangeForTextKitRanges:(id)a3
{
  v4 = [(UITextView *)self _nonNullUITextRangeForTextKitRanges:a3];
  v5 = [(UIResponder *)self _nsrangeForTextRange:v4];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (id)_nonNullIntersectionOfUITextRange:(id)a3 withOtherUITextRange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIResponder *)self _intersectionOfRange:v6 andRange:v7];
  if (!v8)
  {
    v9 = [v7 start];
    v10 = [v6 start];
    v11 = [v7 start];
    v12 = [(UITextView *)self comparePosition:v10 toPosition:v11];

    if (v12 == -1)
    {
      v13 = [v6 start];

      v9 = v13;
    }

    v8 = [(UITextView *)self textRangeFromPosition:v9 toPosition:v9];
  }

  return v8;
}

- (BOOL)automaticallyAdjustsWritingDirection
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v3 = [WeakRetained automaticallyAdjustsWritingDirection];

  return v3;
}

- (void)setAutomaticallyAdjustsWritingDirection:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setAutomaticallyAdjustsWritingDirection:v3];
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

- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6
{
  if ((a3 - 5) > 1)
  {
    v8.receiver = self;
    v8.super_class = UITextView;
    [(UIView *)&v8 _autolayoutSpacingAtEdge:*&a3 forAttribute:a4 inContainer:a5 isGuide:a6];
  }

  else
  {
    _UIViewBaselineToEdgeSpacing([(UITextView *)self _fontInfoForBaselineSpacing], a3);

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
    v19.super_class = UITextView;
    [(UIView *)&v19 _autolayoutSpacingAtEdge:v13 forAttribute:a4 nextToNeighbor:a5 edge:v10 attribute:a7 multiplier:a8];
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

  _UIViewBaselineSpacing(self, a5, v13);
  return result;
}

@end