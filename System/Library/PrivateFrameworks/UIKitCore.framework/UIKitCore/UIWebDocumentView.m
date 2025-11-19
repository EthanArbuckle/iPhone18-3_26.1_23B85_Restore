@interface UIWebDocumentView
+ (id)_createDefaultHighlightView;
+ (id)_sharedHighlightView;
+ (id)standardTextViewPreferences;
+ (void)initialize;
- ($1AB5FA073B851C12C2339EC22442E995)doubleTapScalesForSize:(CGSize)a3;
- (BOOL)_dataDetectionIsActivated;
- (BOOL)_dragInteraction:(id)a3 sessionSupportsSystemDrag:(id)a4;
- (BOOL)_handleSingleTapZoomPreClickAtLocation:(CGPoint)a3;
- (BOOL)_insertFragmentWithoutPreservingStyle:(id)a3 atDestination:(id)a4 smartReplace:(BOOL)a5 collapseToEnd:(BOOL)a6;
- (BOOL)_interactionShouldBeginFromPreviewItemController:(id)a3 forPosition:(CGPoint)a4;
- (BOOL)_isSubviewOfPlugInView:(id)a3;
- (BOOL)_presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)_previewAllowedForPosition:(CGPoint)a3;
- (BOOL)_restoreFirstResponder;
- (BOOL)_shouldFlattenContentLayersForRect:(CGRect)a3;
- (BOOL)_shouldPaste;
- (BOOL)_shouldResetForNewPage;
- (BOOL)_shouldUpdateSubviewCachesForPlugins;
- (BOOL)_textPlaceholderHasBeenRemoved;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)cancelMouseTracking;
- (BOOL)cancelTouchTracking;
- (BOOL)clearWKFirstResponder;
- (BOOL)gestureRecognizer:(id)a3 canPreventGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)handleKeyAppCommandForCurrentEvent;
- (BOOL)handleKeyTextCommandForCurrentEvent;
- (BOOL)hasBodyElement;
- (BOOL)hasContent;
- (BOOL)hasEditableSelection;
- (BOOL)hasMarkedText;
- (BOOL)hasPlugInSubviews;
- (BOOL)hasRichlyEditableSelection;
- (BOOL)hasSelection;
- (BOOL)inPopover;
- (BOOL)isCaretInEmptyParagraph;
- (BOOL)isEditable;
- (BOOL)isEditing;
- (BOOL)isEditingSingleLineElement;
- (BOOL)isInPrintMode;
- (BOOL)isInsideRichlyEditableTextWidget;
- (BOOL)isPosition:(id)a3 atBoundary:(int64_t)a4 inDirection:(int64_t)a5;
- (BOOL)isPosition:(id)a3 withinTextUnit:(int64_t)a4 inDirection:(int64_t)a5;
- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5;
- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)keyboardInputChanged:(id)a3;
- (BOOL)keyboardInputShouldDelete:(id)a3;
- (BOOL)makeWKFirstResponder;
- (BOOL)mediaPlaybackAllowsAirPlay;
- (BOOL)performTwoStepDrop:(id)a3 atDestination:(id)a4 isMove:(BOOL)a5;
- (BOOL)performsTwoStepPaste:(id)a3;
- (BOOL)resignFirstResponder;
- (BOOL)selectionAtDocumentStart;
- (BOOL)selectionAtWordStart;
- (BOOL)setRangedSelectionExtentPoint:(CGPoint)a3 baseIsStart:(BOOL)a4;
- (BOOL)shouldAutoscroll;
- (BOOL)shouldSelectionAssistantReceiveDoubleTapAtPoint:(CGPoint)a3 forScale:(double)a4;
- (BOOL)shouldSuppressPasswordEcho;
- (BOOL)startActionSheet;
- (BOOL)supportsTwoFingerScrollingAtTouchLocation:(CGPoint)a3 andLocation:(CGPoint)a4;
- (BOOL)updateKeyboardStateOnResponderChanges;
- (BOOL)webView:(id)a3 shouldScrollToPoint:(CGPoint)a4 forFrame:(id)a5;
- (BOOL)willInteractWithLocation:(CGPoint)a3;
- (CGImage)newSnapshotWithRect:(CGRect)a3;
- (CGPoint)autoscrollContentOffset;
- (CGPoint)constrainedPoint:(CGPoint)a3;
- (CGPoint)convertPoint:(CGPoint)a3 fromFrame:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toFrame:(id)a4;
- (CGPoint)convertPointToSelectedFrameCoordinates:(CGPoint)a3;
- (CGPoint)interactionLocation;
- (CGPoint)lastGlobalPosition;
- (CGRect)_adjustedLayoutRectForFixedPositionObjects;
- (CGRect)_documentViewVisibleRect;
- (CGRect)_lastRectForRange:(id)a3;
- (CGRect)_layoutRectForFixedPositionObjects;
- (CGRect)_presentationRectForSheetGivenPoint:(CGPoint)a3 inHostView:(id)a4;
- (CGRect)_scribbleInteraction:(id)a3 frameForElement:(id)a4;
- (CGRect)_selectionClipRect;
- (CGRect)_shortcutPresentationRect;
- (CGRect)autoscrollContentFrame;
- (CGRect)autoscrollDragFrame;
- (CGRect)caretRect;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)caretRectForVisiblePosition:(id)a3;
- (CGRect)closestCaretRectInMarkedTextRangeForPoint:(CGPoint)a3;
- (CGRect)computeRectForElement:(id)a3 withHighligh:(id)a4 isInverted:(BOOL)a5;
- (CGRect)contentFrameForView:(id)a3;
- (CGRect)convertRect:(CGRect)a3 fromFrame:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toFrame:(id)a4;
- (CGRect)convertRectFromSelectedFrameCoordinates:(CGRect)a3;
- (CGRect)convertRectWithDocumentScale:(CGRect)a3;
- (CGRect)currentDragCaretRect;
- (CGRect)documentBounds;
- (CGRect)doubleTapRect;
- (CGRect)exposedScrollViewRect;
- (CGRect)firstRectForRange:(id)a3;
- (CGRect)frameForDictationResultPlaceholder:(id)a3;
- (CGRect)initialPresentationRectInHostViewForSheet:(id)a3;
- (CGRect)presentationRectInHostViewForSheet:(id)a3;
- (CGRect)rectOfInterestForPoint:(CGPoint)a3;
- (CGRect)visibleBounds;
- (CGRect)visibleContentFrame;
- (CGRect)visibleContentRect;
- (CGRect)visibleFrame;
- (CGRect)webViewFrameForUIFrame:(CGRect)a3;
- (CGSize)_sizeForDictationResultPlaceholder;
- (SEL)_actionForLongPressOnElement:(id)a3;
- (UIColor)insertionPointColor;
- (UIEdgeInsets)caretInsets;
- (UITextInteractionAssistant)interactionAssistant;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (UITextRange)markedTextRange;
- (UITextRange)selectedTextRange;
- (UIWebDocumentView)initWithWebView:(id)a3 frame:(CGRect)a4;
- (_NSRange)selectionRange;
- (double)_zoomedDocumentScale;
- (id)_beginPrintModeForHTMLView:(id)a3 withSize:(CGSize)a4 startOffset:(double)a5 minimumLayoutWidth:(double)a6 maximumLayoutWidth:(double)a7 tileClippedContent:(BOOL)a8;
- (id)_beginPrintModeForPDFView:(id)a3 withSize:(CGSize)a4 startOffset:(double)a5 minimumLayoutWidth:(double)a6 maximumLayoutWidth:(double)a7;
- (id)_dataForPreviewItemController:(id)a3 atPosition:(CGPoint)a4 type:(int64_t *)a5;
- (id)_documentUrl;
- (id)_focusedOrMainFrame;
- (id)_insertTextPlaceholderWithSize:(CGSize)a3;
- (id)_positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5 withAffinityDownstream:(BOOL)a6;
- (id)_presentationRectsForPreviewItemController:(id)a3;
- (id)_presentationSnapshotForPreviewItemController:(id)a3;
- (id)_presentedViewControllerForPreviewItemController:(id)a3;
- (id)_responderForBecomeFirstResponder;
- (id)_supportedPasteboardTypesForCurrentSelection;
- (id)_targetURL;
- (id)_textSelectingContainer;
- (id)approximateNodeAtViewportLocation:(CGPoint *)a3;
- (id)automaticallySelectedOverlay;
- (id)beginPrintModeForFrame:(id)a3 withSize:(CGSize)a4 startOffset:(double)a5 minimumLayoutWidth:(double)a6 maximumLayoutWidth:(double)a7 tileClippedContent:(BOOL)a8;
- (id)beginPrintModeForFrame:(id)a3 withWidth:(double)a4 height:(double)a5 startOffset:(double)a6 shrinkToFit:(BOOL)a7 tileClippedContent:(BOOL)a8;
- (id)beginPrintModeWithSize:(CGSize)a3 startOffset:(double)a4 minimumLayoutWidth:(double)a5 maximumLayoutWidth:(double)a6 tileClippedContent:(BOOL)a7;
- (id)beginPrintModeWithWidth:(double)a3 height:(double)a4 startOffset:(double)a5 shrinkToFit:(BOOL)a6 tileClippedContent:(BOOL)a7 forFrame:(id)a8;
- (id)characterRangeAtPoint:(CGPoint)a3;
- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4;
- (id)checkSpellingOfString:(id)a3;
- (id)closestPositionToPoint:(CGPoint)a3;
- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4;
- (id)deepestNodeAtViewportLocation:(CGPoint)a3;
- (id)dictationInterpretations;
- (id)dictationResultMetadataForRange:(id)a3;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)editDragPreviewForTextIndicator:(id)a3;
- (id)fallbackDropPreviewForUninsertedContent:(id)a3;
- (id)fontForCaretSelection;
- (id)initSimpleHTMLDocumentWithStyle:(id)a3 frame:(CGRect)a4 preferences:(id)a5 groupName:(id)a6;
- (id)insertDictationResultPlaceholder;
- (id)insertTextPlaceholderWithSize:(CGSize)a3;
- (id)metadataDictionariesForDictationResults;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)newMouseEvent:(int)a3;
- (id)positionAtStartOrEndOfWord:(id)a3;
- (id)positionFromPosition:(id)a3 offset:(int64_t)a4;
- (id)positionFromPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5;
- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4;
- (id)rangeByExtendingCurrentSelection:(int)a3;
- (id)rangeByMovingCurrentSelection:(int)a3;
- (id)rangeEnclosingPosition:(id)a3 withGranularity:(int64_t)a4 inDirection:(int64_t)a5;
- (id)rangeOfEnclosingWord:(id)a3;
- (id)readDataFromPasteboard:(id)a3 withIndex:(int64_t)a4;
- (id)rectsForNSRange:(_NSRange)a3;
- (id)selectedDOMRange;
- (id)selectionRects;
- (id)selectionRectsForDOMRange:(id)a3;
- (id)selectionRectsForRange:(id)a3;
- (id)subviews;
- (id)superviewForSheet;
- (id)supportedPasteboardTypesForCurrentSelection;
- (id)targetedDragPreviewFromCurrentTextIndicatorData;
- (id)text;
- (id)textColorForCaretSelection;
- (id)textInDOMRange:(id)a3;
- (id)textInRange:(id)a3;
- (id)textInputTraits;
- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4;
- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4;
- (id)undoManagerForWebView:(id)a3;
- (id)webView:(id)a3 plugInViewWithArguments:(id)a4 fromPlugInPackage:(id)a5;
- (id)webVisiblePositionForPoint:(CGPoint)a3;
- (id)wordAtPoint:(CGPoint)a3;
- (int)deviceOrientation;
- (int)selectionState;
- (int)wordOffsetInRange:(id)a3;
- (int64_t)_dragInteraction:(id)a3 dataOwnerForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4;
- (int64_t)comparePosition:(id)a3 toPosition:(id)a4;
- (int64_t)getPasteboardChangeCount;
- (int64_t)getPasteboardItemsCount;
- (unint64_t)effectiveDataDetectorTypes;
- (unint64_t)offsetInMarkedTextForSelection:(id)a3;
- (unsigned)_contentSizeInExposedRect:(CGRect)a3 topLayer:(id)a4 visibleLayerCount:(int *)a5;
- (unsigned)characterAfterCaretSelection;
- (unsigned)characterInRelationToCaretSelection:(int)a3;
- (void)_WAKViewSizeDidChange:(id)a3;
- (void)_addShortcut:(id)a3;
- (void)_appendOpenActionsForURL:(id)a3 actions:(id)a4;
- (void)_applyViewportArguments:(id)a3;
- (void)_cleanUpFrameStateAndLoad:(id)a3;
- (void)_cleanupSheet;
- (void)_clearDoubleTapRect;
- (void)_clearPreviewRevealInformation;
- (void)_collectPreviewRevealInformationIfNeeded;
- (void)_createIOSurfaceFromRect:(CGRect)a3;
- (void)_createSheetWithElementActions:(id)a3 showLinkTitle:(BOOL)a4;
- (void)_define:(id)a3;
- (void)_didChangeDragCaretRectFromRect:(CGRect)a3 toRect:(CGRect)a4;
- (void)_didDismissElementSheet;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_didScroll;
- (void)_dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)_doubleTapRecognized:(id)a3;
- (void)_drawPDFPagesForPage:(unint64_t)a3 withPaginationInfo:(id)a4;
- (void)_editableSelectionLayoutChangedByScrolling:(BOOL)a3;
- (void)_endPrintMode;
- (void)_finishedUsingTextPlaceholder;
- (void)_flattenAndSwapContentLayersInRect:(CGRect)a3;
- (void)_focusAndAssistFormNode:(id)a3;
- (void)_handleDoubleTapAtLocation:(CGPoint)a3;
- (void)_handleSingleTapZoomPostClickAtLocation:(CGPoint)a3;
- (void)_handleTwoFingerDoubleTapAtLocation:(CGPoint)a3;
- (void)_highlightLongPressRecognized:(id)a3;
- (void)_insertAttributedTextWithoutClosingTyping:(id)a3;
- (void)_interactionStartedFromPreviewItemController:(id)a3;
- (void)_interactionStoppedFromPreviewItemController:(id)a3;
- (void)_longPressRecognized:(id)a3;
- (void)_notifyContentHostingLayersOfScaleChange;
- (void)_notifyPlugInViewsOfDidEndZooming;
- (void)_notifyPlugInViewsOfDidZoom;
- (void)_notifyPlugInViewsOfScaleChange;
- (void)_notifyPlugInViewsOfWillBeginZooming;
- (void)_previewItemController:(id)a3 commitPreview:(id)a4;
- (void)_previewItemController:(id)a3 didDismissPreview:(id)a4 committing:(BOOL)a5;
- (void)_previewItemController:(id)a3 willPresentPreview:(id)a4 forPosition:(CGPoint)a5 inSourceView:(id)a6;
- (void)_promptForReplace:(id)a3;
- (void)_registerPreview;
- (void)_removeTextPlaceholder:(id)a3 willInsertResult:(BOOL)a4;
- (void)_renderUnbufferedInContext:(CGContext *)a3;
- (void)_resetForNewPage;
- (void)_resetInteractionWithLocation:(CGPoint)a3 modifierFlags:(int64_t)a4;
- (void)_reshapePlugInViews;
- (void)_restoreFlattenedContentLayers;
- (void)_restoreScrollPointForce:(BOOL)a3;
- (void)_restoreViewportSettingsWithSize:(CGSize)a3;
- (void)_runLoadBlock:(id)a3;
- (void)_saveStateToHistoryItem:(id)a3;
- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6;
- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5;
- (void)_scribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4;
- (void)_scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4;
- (void)_setDocumentScale:(float)a3;
- (void)_setDocumentType:(int)a3 overrideCustomConfigurations:(BOOL)a4 viewportArguments:(id)a5;
- (void)_setFont:(id)a3;
- (void)_setTextColor:(id)a3;
- (void)_share:(id)a3;
- (void)_shareElement:(id)a3 withURL:(id)a4;
- (void)_shareText:(id)a3 fromRect:(CGRect)a4;
- (void)_showDataDetectorsSheet;
- (void)_showImageSheet;
- (void)_showLinkSheet;
- (void)_singleTapRecognized:(id)a3;
- (void)_transitionDragPreviewToImageIfNecessary:(id)a3;
- (void)_translate:(id)a3;
- (void)_transliterateChinese:(id)a3;
- (void)_twoFingerDoubleTapRecognized:(id)a3;
- (void)_twoFingerPanRecognized:(id)a3;
- (void)_undoManagerDidRedo:(id)a3;
- (void)_undoManagerDidUndo:(id)a3;
- (void)_unregisterPreview;
- (void)_updateFixedPositionContent;
- (void)_updateFixedPositionedObjectsLayoutRectUsingWebThread:(BOOL)a3 synchronize:(BOOL)a4;
- (void)_updateFixedPositioningObjectsLayoutAfterScroll;
- (void)_updateScrollViewBoundaryZoomScales;
- (void)_updateSize;
- (void)_updateSubviewCaches;
- (void)_updateWebKitExposedScrollViewRect;
- (void)_webthread_webView:(id)a3 attachRootLayer:(id)a4;
- (void)actionDidFinish;
- (void)addInputString:(id)a3 withFlags:(unint64_t)a4;
- (void)attemptClick:(id)a3;
- (void)beginFloatingCursorAtPoint:(CGPoint)a3;
- (void)beginSelectionChange;
- (void)cancelInteractionWithImmediateDisplay:(BOOL)a3;
- (void)clearInteractionTimer;
- (void)clearRangedSelectionInitialExtent;
- (void)clearSelection;
- (void)collapseSelection;
- (void)completeInteraction;
- (void)computeClientAndGlobalPointsForSession:(id)a3 outClientPoint:(CGPoint *)a4 outGlobalPoint:(CGPoint *)a5;
- (void)confirmMarkedText:(id)a3;
- (void)continueInteractionWithLocation:(CGPoint)a3;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)deferInteraction;
- (void)deferredBecomeFirstResponder;
- (void)deleteBackward;
- (void)deleteFromInput;
- (void)deleteFromInputWithFlags:(unint64_t)a3;
- (void)didEndScroll;
- (void)didEndZoom;
- (void)didRemovePlugInView:(id)a3;
- (void)didRotateInteractionSheet;
- (void)didZoom;
- (void)disableClearsOnInsertion;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
- (void)drawPage:(unint64_t)a3 withPaginationInfo:(id)a4;
- (void)dropInteraction:(id)a3 concludeDrop:(id)a4;
- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)endFloatingCursor;
- (void)endSelectionChange;
- (void)ensureSelection;
- (void)extendCurrentSelection:(int)a3;
- (void)fileUploadPanelDidDismiss:(id)a3;
- (void)forceLayout;
- (void)forwardInvocation:(id)a3;
- (void)handleKeyWebEvent:(id)a3;
- (void)hideTapHighlight;
- (void)highlightApproximateNodeAndDisplayInfoSheet;
- (void)highlightApproximateNodeInverted:(BOOL)a3;
- (void)insertDictationResult:(id)a3 withCorrectionIdentifier:(id)a4;
- (void)insertText:(id)a3;
- (void)installGestureRecognizers;
- (void)keyboardInputChangedSelection:(id)a3;
- (void)layoutSubviews;
- (void)loadData:(id)a3 MIMEType:(id)a4 textEncodingName:(id)a5 baseURL:(id)a6;
- (void)loadHTMLString:(id)a3 baseURL:(id)a4;
- (void)loadRequest:(id)a3;
- (void)paste:(id)a3;
- (void)pasteAndMatchStyle:(id)a3;
- (void)redrawScaledDocument;
- (void)releasePrintMode;
- (void)replace:(id)a3;
- (void)replaceCurrentWordWithText:(id)a3;
- (void)replaceRange:(id)a3 withText:(id)a4;
- (void)replaceRangeWithTextWithoutClosingTyping:(id)a3 replacementText:(id)a4;
- (void)replaceSelectionWithWebArchive:(id)a3 selectReplacement:(BOOL)a4 smartReplace:(BOOL)a5;
- (void)resetCurrentDragInformation;
- (void)resetInteraction;
- (void)resetSelectionAssistant;
- (void)resetTilingAfterLoadComplete;
- (void)saveStateToCurrentHistoryItem;
- (void)select:(id)a3;
- (void)selectAll;
- (void)selectAll:(id)a3;
- (void)selectWord;
- (void)selectionChanged;
- (void)selectionChanged:(id)a3;
- (void)sendOrientationEventForOrientation:(int64_t)a3;
- (void)sendScrollEventIfNecessaryWasUserScroll:(BOOL)a3;
- (void)sendScrollWheelEvents;
- (void)setAllowsShrinkToFit:(BOOL)a3 forDocumentTypes:(int)a4;
- (void)setAllowsUserScaling:(BOOL)a3 forDocumentTypes:(int)a4;
- (void)setAlwaysConstrainsScale:(BOOL)a3;
- (void)setAutoresizes:(BOOL)a3;
- (void)setAutoscrollContentOffset:(CGPoint)a3;
- (void)setAvoidsUnsafeArea:(BOOL)a3 forDocumentTypes:(int)a4;
- (void)setBaseWritingDirection:(int64_t)a3;
- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4;
- (void)setBottomBufferHeight:(double)a3;
- (void)setCaretChangeListener:(id)a3;
- (void)setContinuousSpellCheckingEnabled:(BOOL)a3;
- (void)setCurrentDragCaretRect:(CGRect)a3;
- (void)setDataDetectorTypes:(unint64_t)a3;
- (void)setDoubleTapEnabled:(BOOL)a3;
- (void)setDrawsBackground:(BOOL)a3;
- (void)setExposedScrollViewRect:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setIgnoresFocusingMouse:(BOOL)a3;
- (void)setIgnoresKeyEvents:(BOOL)a3;
- (void)setIgnoresViewportOverflowWhenAutoresizing:(BOOL)a3;
- (void)setInitialScale:(float)a3 forDocumentTypes:(int)a4;
- (void)setInteractionAssistantGestureRecognizers;
- (void)setIsStandaloneEditableView:(BOOL)a3;
- (void)setIsWidgetEditingView:(BOOL)a3;
- (void)setLoadsSynchronously:(BOOL)a3;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setMaximumScale:(float)a3 forDocumentTypes:(int)a4;
- (void)setMediaPlaybackAllowsAirPlay:(BOOL)a3;
- (void)setMinimumScale:(float)a3 forDocumentTypes:(int)a4;
- (void)setMinimumSize:(CGSize)a3 updateCurrentViewportConfigurationSize:(BOOL)a4;
- (void)setOpaque:(BOOL)a3;
- (void)setRangedSelectionBaseToCurrentSelection;
- (void)setRangedSelectionBaseToCurrentSelectionEnd;
- (void)setRangedSelectionBaseToCurrentSelectionStart;
- (void)setRangedSelectionExtentPoint:(CGPoint)a3 baseIsStart:(BOOL)a4 allowFlipping:(BOOL)a5;
- (void)setRangedSelectionInitialExtentToCurrentSelectionEnd;
- (void)setRangedSelectionInitialExtentToCurrentSelectionStart;
- (void)setRangedSelectionWithExtentPoint:(CGPoint)a3;
- (void)setRenderTreeSizeThresholdForReset:(unint64_t)a3;
- (void)setSelectedDOMRange:(id)a3 affinity:(unint64_t)a4;
- (void)setSelectedDOMRange:(id)a3 affinityDownstream:(BOOL)a4;
- (void)setSelectedTextRange:(id)a3;
- (void)setSelectedTextRange:(id)a3 withAffinityDownstream:(BOOL)a4;
- (void)setSelectionGranularity:(int64_t)a3;
- (void)setSelectionToEnd;
- (void)setSelectionToStart;
- (void)setSelectionWithFirstPoint:(CGPoint)a3 secondPoint:(CGPoint)a4;
- (void)setSelectionWithPoint:(CGPoint)a3;
- (void)setShouldAutoscroll:(BOOL)a3;
- (void)setShouldIgnoreCustomViewport:(BOOL)a3;
- (void)setShouldOnlyRecognizeGesturesOnActiveElements:(BOOL)a3;
- (void)setSizeUpdatesSuspended:(BOOL)a3;
- (void)setSmoothsFonts:(BOOL)a3;
- (void)setStandaloneEditingElement:(id)a3;
- (void)setText:(id)a3;
- (void)setTileUpdatesDisabled:(BOOL)a3;
- (void)setTilingArea:(int)a3;
- (void)setUpdatesScrollView:(BOOL)a3;
- (void)setUserStyleSheet:(id)a3;
- (void)setViewportSize:(CGSize)a3 forDocumentTypes:(int)a4;
- (void)showPlaybackTargetPicker:(BOOL)a3 fromRect:(CGRect)a4;
- (void)smartExtendRangedSelection:(int)a3;
- (void)startAutoscroll:(CGPoint)a3;
- (void)startInteractionWithLocation:(CGPoint)a3;
- (void)stopLoading:(id)a3;
- (void)takeTraitsFrom:(id)a3;
- (void)tapInteractionWithLocation:(CGPoint)a3;
- (void)toggleBaseWritingDirection;
- (void)toggleBoldface:(id)a3;
- (void)toggleItalics:(id)a3;
- (void)toggleUnderline:(id)a3;
- (void)unmarkText;
- (void)updateDragCaretIfPossible;
- (void)updateFloatingCursorAtPoint:(CGPoint)a3;
- (void)updateFloatingCursorAtPoint:(CGPoint)a3 animated:(BOOL)a4;
- (void)updateInteractionElements;
- (void)validateInteractionWithLocation:(CGPoint)a3;
- (void)viewportHandler:(id)a3 didChangeAvoidsUnsafeArea:(BOOL)a4;
- (void)viewportHandler:(id)a3 didChangeViewportSize:(CGSize)a4;
- (void)viewportHandlerDidChangeScales:(id)a3;
- (void)webThreadWebViewDidLayout:(id)a3 byScrolling:(BOOL)a4;
- (void)webView:(id)a3 didCommitLoadForFrame:(id)a4;
- (void)webView:(id)a3 didFailLoadWithError:(id)a4 forFrame:(id)a5;
- (void)webView:(id)a3 didFinishLoadForFrame:(id)a4;
- (void)webView:(id)a3 didFirstVisuallyNonEmptyLayoutInFrame:(id)a4;
- (void)webView:(id)a3 didHideFullScreenForPlugInView:(id)a4;
- (void)webView:(id)a3 didObserveDeferredContentChange:(int)a4 forFrame:(id)a5;
- (void)webView:(id)a3 didReceiveViewportArguments:(id)a4;
- (void)webView:(id)a3 needsScrollNotifications:(id)a4 forFrame:(id)a5;
- (void)webView:(id)a3 restoreStateFromHistoryItem:(id)a4 forFrame:(id)a5 force:(BOOL)a6;
- (void)webView:(id)a3 runOpenPanelForFileButtonWithResultListener:(id)a4 configuration:(id)a5;
- (void)webView:(id)a3 saveStateToHistoryItem:(id)a4 forFrame:(id)a5;
- (void)webView:(id)a3 willAddPlugInView:(id)a4;
- (void)webViewDidCommitCompositingLayerChanges:(id)a3;
- (void)webViewDidDrawTiles:(id)a3;
- (void)willMoveToWindow:(id)a3;
- (void)willRotateInteractionSheet;
- (void)willStartScroll;
- (void)willStartScrollToTop;
- (void)willStartZoom;
- (void)willZoomToLocation:(CGPoint)a3 atScale:(double)a4 forDuration:(double)a5;
- (void)writeDataToPasteboard:(id)a3;
@end

@implementation UIWebDocumentView

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _UIApplicationLoadWebKit();
    +[UIWebPDFView setAsPDFDocRepAndView];
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v2 BOOLForKey:@"WebKitSingleTapModeEnabled"];
    kSingleTapInteractionsEnabled = v3;
    if (v3)
    {
      kSingleTapInteractionsHeuristic = [v2 integerForKey:@"WebKitSingleTapModeHeuristic"];
    }
  }
}

- (void)_restoreViewportSettingsWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  LODWORD(a3.width) = 1.0;
  [(UIWebDocumentView *)self setInitialScale:0xFFFFFFLL forDocumentTypes:a3.width];
  LODWORD(v6) = -1.0;
  [(UIWebDocumentView *)self setInitialScale:1 forDocumentTypes:v6];
  LODWORD(v7) = -1.0;
  [(UIWebDocumentView *)self setInitialScale:2 forDocumentTypes:v7];
  LODWORD(v8) = -1.0;
  [(UIWebDocumentView *)self setInitialScale:4 forDocumentTypes:v8];
  LODWORD(v9) = 0.25;
  [(UIWebDocumentView *)self setMinimumScale:0xFFFFFFLL forDocumentTypes:v9];
  LODWORD(v10) = 1.0;
  [(UIWebDocumentView *)self setMinimumScale:8 forDocumentTypes:v10];
  LODWORD(v11) = 1058642330;
  [(UIWebDocumentView *)self setMinimumScale:16 forDocumentTypes:v11];
  LODWORD(v12) = 1074580685;
  [(UIWebDocumentView *)self setMaximumScale:0xFFFFFFLL forDocumentTypes:v12];
  LODWORD(v13) = 5.0;
  [(UIWebDocumentView *)self setMaximumScale:1 forDocumentTypes:v13];
  [(UIWebDocumentView *)self setAllowsUserScaling:1 forDocumentTypes:0xFFFFFFLL];
  [(UIWebDocumentView *)self setAllowsShrinkToFit:1 forDocumentTypes:16];
  [(UIWebDocumentView *)self setAvoidsUnsafeArea:1 forDocumentTypes:0xFFFFFFLL];
  [(UIWebDocumentView *)self setViewportSize:1 forDocumentTypes:320.0, -1.0];
  [(UIWebDocumentView *)self setViewportSize:2 forDocumentTypes:width, -1.0];
  [(UIWebDocumentView *)self setViewportSize:4 forDocumentTypes:500.0, -1.0];
  [(UIWebDocumentView *)self setViewportSize:8 forDocumentTypes:-1.0, -1.0];

  [(UIWebDocumentView *)self setViewportSize:16 forDocumentTypes:width / 0.6, height / 0.6];
}

- (CGRect)webViewFrameForUIFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    [-[UIView _screen](self "_screen")];
    width = v8;
    x = 0.0;
    y = 0.0;
    height = v8;
  }

  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (id)initSimpleHTMLDocumentWithStyle:(id)a3 frame:(CGRect)a4 preferences:(id)a5 groupName:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  WebThreadLock();
  [(UIWebDocumentView *)self webViewFrameForUIFrame:0.0, 0.0, width, height];
  v18 = [objc_alloc(MEMORY[0x1E69E2FB8]) initSimpleHTMLDocumentWithStyle:a3 frame:a5 preferences:a6 groupName:{v14, v15, v16, v17}];
  v19 = [(UIWebDocumentView *)self initWithWebView:v18 frame:x, y, width, height];

  return v19;
}

- (UIWebDocumentView)initWithWebView:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  WebThreadLock();
  [(UIWebDocumentView *)self webViewFrameForUIFrame:0.0, 0.0, width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v28.receiver = self;
  v28.super_class = UIWebDocumentView;
  v18 = [(UIWebTiledView *)&v28 initWithFrame:x, y, width, height];
  if (v18)
  {
    if (a3)
    {
      v19 = a3;
      *(v18 + 54) = v19;
      [v19 setFrame:{v11, v13, v15, v17}];
      v20 = v18[956] & 0xDF;
    }

    else
    {
      *(v18 + 54) = [objc_alloc(MEMORY[0x1E69E2FB8]) initWithFrame:{v11, v13, v15, v17}];
      v20 = v18[956] | 0x20;
    }

    v18[956] = v20;
    [*(v18 + 54) _setUIKitDelegate:v18];
    [*(v18 + 54) setEditingDelegate:v18];
    [*(v18 + 51) setContentView:*(v18 + 54)];
    v21 = *(MEMORY[0x1E695F050] + 16);
    *(v18 + 1464) = *MEMORY[0x1E695F050];
    *(v18 + 1480) = v21;
    v22 = objc_alloc_init(_UIWebViewportHandler);
    *(v18 + 110) = v22;
    [(_UIWebViewportHandler *)v22 setDelegate:v18];
    *(v18 + 223) = 1065353216;
    *(v18 + 118) = 0;
    *(v18 + 849) = 257;
    v18[851] = 1;
    [v18 installGestureRecognizers];
    v23 = [v18 textInputTraits];
    [v23 setAutocapitalizationType:2];
    [v23 setAutocorrectionType:0];
    [v23 setSpellCheckingType:0];
    [v23 setKeyboardType:0];
    [v23 setSmartInsertDeleteType:0];
    [v18 setMultipleTouchEnabled:1];
    [v18 setMinimumSize:{width, height}];
    [v18 _restoreViewportSettingsWithSize:{width, height}];
    [v18 sendOrientationEventForOrientation:{objc_msgSend(UIApp, "_defaultSceneInterfaceOrientationReturningUnknownForNilScene:", 0)}];
    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 addObserver:v18 selector:sel_selectionChanged_ name:*MEMORY[0x1E69E3038] object:0];
    [v24 addObserver:v18 selector:sel__inspectorDidStartSearchingForNode_ name:*MEMORY[0x1E69E2FF0] object:{objc_msgSend(*(v18 + 54), "inspector")}];
    [v24 addObserver:v18 selector:sel__inspectorDidStopSearchingForNode_ name:*MEMORY[0x1E69E2FF8] object:{objc_msgSend(*(v18 + 54), "inspector")}];
    *(v18 + 172) = [[UIDragInteraction alloc] initWithDelegate:v18];
    [v18 addInteraction:{objc_msgSend(v18, "dragInteraction")}];
    *(v18 + 173) = [[UIDropInteraction alloc] initWithDelegate:v18];
    [v18 addInteraction:{objc_msgSend(v18, "dropInteraction")}];
    v30 = 0;
    v31 = &v30;
    v32 = 0x3052000000;
    v33 = __Block_byref_object_copy__248;
    v25 = qword_1ED498E98;
    v34 = __Block_byref_object_dispose__248;
    v35 = qword_1ED498E98;
    if (!qword_1ED498E98)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __getPKScribbleInteractionClass_block_invoke;
      v29[3] = &unk_1E70F2F20;
      v29[4] = &v30;
      __getPKScribbleInteractionClass_block_invoke(v29);
      v25 = v31[5];
    }

    _Block_object_dispose(&v30, 8);
    v26 = objc_alloc_init(v25);
    *(v18 + 143) = v26;
    [v26 setDelegate:v18];
    [*(v18 + 143) setElementSource:v18];
    [v18 addInteraction:*(v18 + 143)];
  }

  return v18;
}

- (BOOL)_presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [delegate _webView:self presentViewController:a3 animated:v6 completion:a5];
}

- (void)_dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [delegate _webView:self dismissViewControllerAnimated:v5 completion:a4];
  }
}

- (void)_setFont:(id)a3
{
  v4 = [a3 markupDescription];
  v5 = [[(WebFrame *)[(WebView *)self->_webView mainFrame] DOMDocument] createCSSStyleDeclaration];
  [(DOMCSSStyleDeclaration *)v5 setCssText:v4];
  v6 = [(UIWebDocumentView *)self selectedTextRange];
  [(UIWebDocumentView *)self selectAll];
  [(WebView *)self->_webView applyStyle:v5];

  [(UIWebDocumentView *)self setSelectedTextRange:v6];
}

- (void)_setTextColor:(id)a3
{
  v4 = [a3 styleString];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"color: %@", v4];
  v6 = [[(WebFrame *)[(WebView *)self->_webView mainFrame] DOMDocument] createCSSStyleDeclaration];
  [(DOMCSSStyleDeclaration *)v6 setCssText:v5];
  v7 = [(UIWebDocumentView *)self selectedTextRange];
  [(UIWebDocumentView *)self selectAll];
  [(WebView *)self->_webView applyStyle:v6];

  [(UIWebDocumentView *)self setSelectedTextRange:v7];
}

- (void)dealloc
{
  v22[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E69E2FF0];
  v22[0] = *MEMORY[0x1E69E3038];
  v22[1] = v4;
  v5 = *MEMORY[0x1E69E2FC0];
  v22[2] = *MEMORY[0x1E69E2FF8];
  v22[3] = v5;
  v6 = *MEMORY[0x1E696AA28];
  v22[4] = *MEMORY[0x1E696AA30];
  v22[5] = v6;
  -[NSNotificationCenter _uiRemoveObserver:names:](v3, self, [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:6]);
  if (self->_textPlaceholderRemovalObserver)
  {
    [v3 removeObserver:?];
  }

  WebThreadLock();

  if ((*(self + 956) & 0x40) != 0)
  {
    v7 = MEMORY[0x1E69E2FB8];
    v8 = [(UIWebDocumentView *)self _groupName];
    [v7 _removeUserStyleSheetsFromGroup:v8 world:{objc_msgSend(MEMORY[0x1E69E2F90], "standardWorld")}];
  }

  if (sDataDetectorsUIFrameworkLoaded == 1 && [(UIWebDocumentView *)self _dataDetectionIsActivated])
  {
    [objc_msgSend(DataDetectorsUIGetClass(@"DDDetectionController") "sharedController")];
  }

  [(WebView *)self->_webView _clearDelegates];
  [(WAKWindow *)self->super._wakWindow close];
  if ((*(self + 956) & 0x20) != 0)
  {
    [(WebView *)self->_webView close];
  }

  [(_UIWebViewportHandler *)self->_viewportHandler setDelegate:0];
  [(UIWebDocumentView *)self cancelInteractionWithImmediateDisplay:1];
  [(UIWebDocumentView *)self _cleanupSheet];
  [(UIAutoscroll *)self->_autoscroll invalidate];

  [(UIWebDocumentView *)self _unregisterPreview];
  [(UIWebDocumentView *)self _clearPreviewRevealInformation];
  plugInViews = self->_plugInViews;
  if (plugInViews)
  {
    v10 = [(__CFDictionary *)plugInViews allValues];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v17 + 1) + 8 * i) setWebView:0];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    CFRelease(self->_plugInViews);
    self->_plugInViews = 0;
  }

  [(CALayer *)self->_contentLayersHostingLayer removeFromSuperlayer];
  fileUploadPanel = self->_fileUploadPanel;
  if (fileUploadPanel)
  {
    [(UIWebFileUploadPanel *)fileUploadPanel setDelegate:0];
    [(UIWebFileUploadPanel *)self->_fileUploadPanel dismiss];
  }

  [(UIWebDocumentView *)self _removeDefinitionController:0];
  [(UIWebDocumentView *)self _removeShareController:0];
  [(UIWebPlaybackTargetPicker *)self->_playbackTargetPicker setDelegate:0];

  v16.receiver = self;
  v16.super_class = UIWebDocumentView;
  [(UIWebTiledView *)&v16 dealloc];
}

- (void)willMoveToWindow:(id)a3
{
  if (a3)
  {
    [(UIWebDocumentView *)self _registerPreview];
  }

  v5.receiver = self;
  v5.super_class = UIWebDocumentView;
  [(UIWebTiledView *)&v5 willMoveToWindow:a3];
}

- (void)stopLoading:(id)a3
{
  [(UIWebDocumentView *)self completeInteraction];
  webView = self->_webView;

  [(WebView *)webView stopLoading:a3];
}

- (void)_runLoadBlock:(id)a3
{
  if (*(self + 955))
  {
    WebThreadLock();
    v4 = *(a3 + 2);

    v4(a3);
  }

  else
  {

    WebThreadRun();
  }
}

- (void)_cleanUpFrameStateAndLoad:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__UIWebDocumentView__cleanUpFrameStateAndLoad___block_invoke;
  v5[3] = &unk_1E70F5CA0;
  v5[4] = self;
  [(UIWebDocumentView *)self _runLoadBlock:v5];
  [(UIWebDocumentView *)self _runLoadBlock:a3];
}

uint64_t __47__UIWebDocumentView__cleanUpFrameStateAndLoad___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 432) mainFrame];
  result = [*(a1 + 32) _dataDetectionIsActivated];
  if (result)
  {
    v4 = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];

    return [v4 cancelURLificationForFrame:v2];
  }

  return result;
}

- (void)loadRequest:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__UIWebDocumentView_loadRequest___block_invoke;
  v3[3] = &unk_1E7101E78;
  v3[4] = self;
  v3[5] = a3;
  [(UIWebDocumentView *)self _cleanUpFrameStateAndLoad:v3];
}

uint64_t __33__UIWebDocumentView_loadRequest___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 432) mainFrame];
  v3 = *(a1 + 40);

  return [v2 loadRequest:v3];
}

- (void)loadHTMLString:(id)a3 baseURL:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__UIWebDocumentView_loadHTMLString_baseURL___block_invoke;
  v4[3] = &unk_1E7105CC8;
  v4[4] = self;
  v4[5] = a3;
  v4[6] = a4;
  [(UIWebDocumentView *)self _cleanUpFrameStateAndLoad:v4];
}

uint64_t __44__UIWebDocumentView_loadHTMLString_baseURL___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 432) mainFrame];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 loadHTMLString:v3 baseURL:v4];
}

- (void)loadData:(id)a3 MIMEType:(id)a4 textEncodingName:(id)a5 baseURL:(id)a6
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__UIWebDocumentView_loadData_MIMEType_textEncodingName_baseURL___block_invoke;
  v6[3] = &unk_1E712C148;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  v6[8] = a6;
  [(UIWebDocumentView *)self _cleanUpFrameStateAndLoad:v6];
}

uint64_t __64__UIWebDocumentView_loadData_MIMEType_textEncodingName_baseURL___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 432) mainFrame];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];

  return [v2 loadData:v3 MIMEType:v4 textEncodingName:v5 baseURL:v6];
}

- (void)setLoadsSynchronously:(BOOL)a3
{
  if ((*(self + 955) & 1) != a3)
  {
    WebThreadLock();
    *(self + 955) = *(self + 955) & 0xFE | a3;
    v5 = [(WebView *)self->_webView mainFrame];
    v6 = *(self + 955) & 1;

    [(WebFrame *)v5 _setLoadsSynchronously:v6];
  }
}

- (id)_focusedOrMainFrame
{
  m_parentTextView = self->m_parentTextView;
  webView = self->_webView;
  if (!m_parentTextView)
  {
    result = [(WebView *)webView selectedFrame];
    if (result)
    {
      return result;
    }

    webView = self->_webView;
  }

  return [(WebView *)webView mainFrame];
}

- (void)setUserStyleSheet:(id)a3
{
  WebThreadLock();
  v5 = [(UIWebDocumentView *)self _groupName];
  if (![(NSString *)[(WebView *)self->_webView groupName] isEqualToString:v5])
  {
    [(WebView *)self->_webView setGroupName:v5];
  }

  v6 = [MEMORY[0x1E69E2F90] standardWorld];
  [MEMORY[0x1E69E2FB8] _removeUserStyleSheetsFromGroup:v5 world:v6];
  LODWORD(v7) = 0;
  [MEMORY[0x1E69E2FB8] _addUserStyleSheetToGroup:v5 world:v6 source:a3 url:0 includeMatchPatternStrings:0 excludeMatchPatternStrings:0 injectedFrames:v7];
  *(self + 956) |= 0x40u;
}

- (BOOL)_dataDetectionIsActivated
{
  dataDetectorTypes = self->_dataDetectorTypes;
  if (dataDetectorTypes)
  {
    v3 = dataDetectorTypes == 0xFFFFFFFF80000000;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (unint64_t)effectiveDataDetectorTypes
{
  if (self->_dataDetectorTypes == -1)
  {
    return 511;
  }

  else
  {
    return self->_dataDetectorTypes;
  }
}

- (void)setDataDetectorTypes:(unint64_t)a3
{
  if (self->_dataDetectorTypes != a3)
  {
    v5 = [(UIWebDocumentView *)self _dataDetectionIsActivated];
    self->_dataDetectorTypes = a3;
    WebThreadLock();
    [(WebView *)self->_webView _setWantsTelephoneNumberParsing:self->_dataDetectorTypes == 0xFFFFFFFF80000000];
    if (v5)
    {
      v6 = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
      v7 = [(WebView *)self->_webView mainFrame];

      [v6 frameWillBeRemoved:v7];
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v8 = v14.origin.x;
  v9 = v14.origin.y;
  v10 = v14.size.width;
  v11 = v14.size.height;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  if (!CGRectEqualToRect(v14, v15))
  {
    v13.receiver = self;
    v13.super_class = UIWebDocumentView;
    [(UIView *)&v13 setFrame:x, y, width, height];
    [(UIWebDocumentView *)self _updateWebKitExposedScrollViewRect];
    v12.receiver = self;
    v12.super_class = UIWebDocumentView;
    [(UIWebTiledView *)&v12 setNeedsLayout];
    [(UIWebDocumentView *)self _notifyContentHostingLayersOfScaleChange];
    if (v10 != width || v11 != height)
    {
      WebThreadLock();
      [(WAKWindow *)self->super._wakWindow setContentRect:0.0, 0.0, width, height];
      [(WebView *)self->_webView setFrameSize:width, height];
    }

    if (objc_opt_respondsToSelector())
    {
      [self->_delegate view:self didSetFrame:(*(self + 954) >> 6) & 1 oldFrame:x asResultOfZoom:{y, width, height, v8, v9, v10, v11}];
    }

    else if (objc_opt_respondsToSelector())
    {
      [self->_delegate view:self didSetFrame:x oldFrame:{y, width, height, v8, v9, v10, v11}];
    }
  }
}

- (void)_setDocumentScale:(float)a3
{
  v5 = [(UIView *)self _scroller];
  if (v5)
  {
    v6 = v5;
    [v5 contentOffset];
    v23.m11 = v7;
    v23.m12 = v8;
    [(_UIWebViewportHandler *)self->_viewportHandler integralScaleForScale:&v23 keepingPointFixed:a3];
    v10 = v9;
    [v6 setContentOffset:{v23.m11, v23.m12}];
  }

  else
  {
    [(_UIWebViewportHandler *)self->_viewportHandler integralScaleForScale:0 keepingPointFixed:a3];
    v10 = v11;
  }

  v12 = v10;
  if (self->_documentScale != v12)
  {
    self->_documentScale = v12;
    memset(&v23, 0, sizeof(v23));
    CATransform3DMakeScale(&v23, v12, v12, 1.0);
    contentLayersHostingLayer = self->_contentLayersHostingLayer;
    v22 = v23;
    [(CALayer *)contentLayersHostingLayer setTransform:&v22];
    WebThreadLock();
    v14 = [(WebFrameView *)[(WebFrame *)[(WebView *)self->_webView mainFrame] frameView] documentView];
    *&v15 = self->_documentScale;
    [(NSView *)v14 setScale:v15];
    *&v16 = self->_documentScale;
    [(WAKWindow *)self->super._wakWindow setCurrentTileScale:v16];
    IsEmpty = CGRectIsEmpty(self->_mainDocumentDoubleTapRect);
    if (v14)
    {
      if (!IsEmpty)
      {
        [(NSView *)v14 convertRect:0 toView:self->_mainDocumentDoubleTapRect.origin.x, self->_mainDocumentDoubleTapRect.origin.y, self->_mainDocumentDoubleTapRect.size.width, self->_mainDocumentDoubleTapRect.size.height];
        self->_doubleTapRect.origin.x = v18;
        self->_doubleTapRect.origin.y = v19;
        self->_doubleTapRect.size.width = v20;
        self->_doubleTapRect.size.height = v21;
      }
    }

    [(UIWebDocumentView *)self _notifyPlugInViewsOfScaleChange];
    [(UIWebDocumentView *)self _updateFixedPositioningObjectsLayoutAfterVisibleGeometryChange];
    [(UIWebDocumentView *)self _notifyContentHostingLayersOfScaleChange];
  }
}

- (double)_zoomedDocumentScale
{
  documentScale = self->_documentScale;
  v3 = [(UIView *)self _scroller];
  if (v3)
  {
    [v3 zoomScale];
    return v4 * documentScale;
  }

  return documentScale;
}

- (void)_updateScrollViewBoundaryZoomScales
{
  if ((*(self + 953) & 4) != 0 && self->_documentScale > 0.0)
  {
    v3 = [(UIView *)self _scroller];
    [(_UIWebViewportHandler *)self->_viewportHandler minimumScale];
    v5 = (v4 / self->_documentScale);
    [(_UIWebViewportHandler *)self->_viewportHandler maximumScale];
    v7 = (v6 / self->_documentScale);
    [v3 setMinimumZoomScale:v5];
    [v3 setMaximumZoomScale:v7];
    v8 = [(_UIWebViewportHandler *)self->_viewportHandler allowsUserScaling];

    [v3 setZoomEnabled:v8];
  }
}

- (void)viewportHandlerDidChangeScales:(id)a3
{
  [(UIWebDocumentView *)self _updateScrollViewBoundaryZoomScales];
  if ((*(self + 953) & 8) != 0)
  {
    if ((*(self + 953) & 2) != 0)
    {
      documentScale = self->_documentScale;
      [a3 minimumScale];
      if (documentScale < v10)
      {
        documentScale = v10;
      }

      [a3 maximumScale];
      if (documentScale < *&v11)
      {
        *&v11 = documentScale;
      }

      [(UIWebDocumentView *)self _setDocumentScale:v11];
    }
  }

  else
  {
    WebThreadLock();
    v5 = [(WebBackForwardList *)[(WebView *)self->_webView backForwardList] currentItem];
    [(WebHistoryItem *)v5 _scale];
    if (v6 <= 0.0 || (v7 = v6, ([(WebHistoryItem *)v5 _scaleIsInitial]& 1) != 0))
    {
      [a3 initialScale];
    }

    else
    {
      [a3 minimumScale];
      if (v7 < v12)
      {
        v7 = v12;
      }

      [a3 maximumScale];
      if (v7 < *&v8)
      {
        *&v8 = v7;
      }
    }

    [(UIWebDocumentView *)self _setDocumentScale:v8];
    [(UIWebDocumentView *)self _updateScrollViewBoundaryZoomScales];
  }

  [(_UIWebViewportHandler *)self->_viewportHandler minimumScale];
  if (v13 > 0.0)
  {
    wakWindow = self->super._wakWindow;

    [(WAKWindow *)wakWindow setZoomedOutTileScale:?];
  }
}

- (void)viewportHandler:(id)a3 didChangeViewportSize:(CGSize)a4
{
  if ((*(self + 952) & 0x10) != 0)
  {
    height = a4.height;
    width = a4.width;
    WebThreadLock();
    v8 = [(WebView *)self->_webView mainFrame];
    v9 = [(WebFrameView *)[(WebFrame *)v8 frameView] documentView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WebView *)self->_webView _fixedLayoutSize];
      v11 = v10;
      [(WebView *)self->_webView _setFixedLayoutSize:width, height];
      if ((*(self + 953) & 0x20) == 0)
      {
        if (width != v11)
        {
          [(WebFrame *)v8 resetTextAutosizingBeforeLayout];
        }

        [(UIWebDocumentView *)self _updateFixedPositionedObjectsLayoutRectUsingWebThread:0 synchronize:1];
      }

      [(NSView *)v9 setNeedsLayout:1];

      [(NSView *)v9 layout];
    }

    else
    {
      [(UIView *)self frame];
      v13 = v12;
      v15 = v14;
      [a3 availableViewSize];

      [(UIWebDocumentView *)self setFrame:v13, v15, v16, v17];
    }
  }
}

- (void)viewportHandler:(id)a3 didChangeAvoidsUnsafeArea:(BOOL)a4
{
  v4 = a4;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [delegate _webView:self didChangeAvoidsUnsafeArea:v4];
  }
}

- (CGPoint)convertPoint:(CGPoint)a3 toFrame:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = [a4 documentView];

  [v6 convertPoint:0 fromView:{x, y}];
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromFrame:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = [a4 documentView];

  [v6 convertPoint:0 toView:{x, y}];
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 toFrame:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [a4 documentView];

  [v8 convertRect:0 fromView:{x, y, width, height}];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 fromFrame:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [a4 documentView];

  [v8 convertRect:0 toView:{x, y, width, height}];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)_setDocumentType:(int)a3 overrideCustomConfigurations:(BOOL)a4 viewportArguments:(id)a5
{
  viewportHandler = self->_viewportHandler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__UIWebDocumentView__setDocumentType_overrideCustomConfigurations_viewportArguments___block_invoke;
  v6[3] = &unk_1E712C170;
  v7 = a3;
  v8 = a4;
  v6[4] = self;
  v6[5] = a5;
  [(_UIWebViewportHandler *)viewportHandler update:v6];
}

uint64_t __85__UIWebDocumentView__setDocumentType_overrideCustomConfigurations_viewportArguments___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 888) = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = v2 + 1152 + 32 * *(v2 + 888);
  if (*(a1 + 52) != 1)
  {
    v9 = 0u;
    v10 = 0u;
    v6 = *(v2 + 880);
    if (v6)
    {
      [v6 rawViewConfiguration];
      v6 = *(*(a1 + 32) + 880);
    }

    v7 = [v6 webkitDefinedConfigurationFlags];
    if ((v7 & 2) != 0)
    {
      if ((v7 & 4) != 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      LODWORD(v10) = *(v3 + 16);
      if ((v7 & 4) != 0)
      {
LABEL_7:
        if ((v7 & 8) != 0)
        {
          goto LABEL_8;
        }

        goto LABEL_18;
      }
    }

    DWORD1(v10) = *(v3 + 20);
    if ((v7 & 8) != 0)
    {
LABEL_8:
      if ((v7 & 0x10) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    DWORD2(v10) = *(v3 + 24);
    if ((v7 & 0x10) != 0)
    {
LABEL_9:
      if ((v7 & 0x20) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    *&v9 = *v3;
    if ((v7 & 0x20) != 0)
    {
LABEL_10:
      if ((v7 & 0x40) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

LABEL_20:
    *(&v9 + 1) = *(v3 + 8);
    if ((v7 & 0x40) != 0)
    {
LABEL_11:
      if ((v7 & 0x80) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }

LABEL_21:
    BYTE12(v10) = *(v3 + 28);
    if ((v7 & 0x80) != 0)
    {
LABEL_12:
      if ((v7 & 0x100) != 0)
      {
LABEL_14:
        v4 = *(*(a1 + 32) + 880);
        v5 = &v9;
        goto LABEL_15;
      }

LABEL_13:
      BYTE14(v10) = *(v3 + 30);
      goto LABEL_14;
    }

LABEL_22:
    BYTE13(v10) = *(v3 + 29);
    if ((v7 & 0x100) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  [*(v2 + 880) clearWebKitViewportConfigurationFlags];
  v4 = *(*(a1 + 32) + 880);
  v5 = v3;
LABEL_15:
  [v4 resetViewportConfiguration:{v5, v9, v10}];
  return [*(a1 + 32) _applyViewportArguments:*(a1 + 40)];
}

- (void)setSizeUpdatesSuspended:(BOOL)a3
{
  v3 = *(self + 956);
  if (((((v3 & 2) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(self + 956) = v3 & 0xFD | v5;
    if (!a3 && (*(self + 956) & 4) != 0)
    {
      [(UIWebDocumentView *)self _updateSize];
    }

    *(self + 956) &= ~4u;
  }
}

- (void)_updateSize
{
  if ((*(self + 952) & 0x80000000) == 0)
  {
    if ((*(self + 956) & 2) != 0)
    {
      *(self + 956) |= 4u;
    }

    else
    {
      WebThreadLock();
      *(self + 952) |= 0x80u;
      v3 = [(WebFrameView *)[(WebFrame *)[(WebView *)self->_webView mainFrame] frameView] documentView];
      if (v3)
      {
        v4 = v3;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          viewportHandler = self->_viewportHandler;
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __32__UIWebDocumentView__updateSize__block_invoke_2;
          v43[3] = &unk_1E70F5CA0;
          v43[4] = self;
          [(_UIWebViewportHandler *)viewportHandler update:v43];
          [(UIView *)self frame];
          [(UIWebDocumentView *)self setFrame:?];
        }

        else
        {
          if ((*(self + 952) & 0x20) != 0)
          {
            [(_UIWebViewportHandler *)self->_viewportHandler viewportWidth];
            v11 = v12;
            [(_UIWebViewportHandler *)self->_viewportHandler viewportHeight];
            v9 = v13;
            v7 = 0;
            v8 = 0;
          }

          else
          {
            [(NSView *)v4 bounds];
            v11 = v10;
          }

          documentScale = self->_documentScale;
          v15 = self->_viewportHandler;
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __32__UIWebDocumentView__updateSize__block_invoke_3;
          v42[3] = &unk_1E710C370;
          v42[4] = self;
          v42[5] = v7;
          v42[6] = v8;
          *&v42[7] = v11;
          *&v42[8] = v9;
          [(_UIWebViewportHandler *)v15 update:v42];
          if ((*(self + 952) & 0x20) == 0)
          {
            [(_UIWebViewportHandler *)self->_viewportHandler documentBounds];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;
            [(NSView *)v4 bounds];
            v46.origin.x = v24;
            v46.origin.y = v25;
            v46.size.width = v26;
            v46.size.height = v27;
            v45.origin.x = v17;
            v45.origin.y = v19;
            v45.size.width = v21;
            v45.size.height = v23;
            if (!CGRectEqualToRect(v45, v46))
            {
              v28 = self->_viewportHandler;
              v41[0] = MEMORY[0x1E69E9820];
              v41[1] = 3221225472;
              v41[2] = __32__UIWebDocumentView__updateSize__block_invoke_4;
              v41[3] = &unk_1E7101E78;
              v41[4] = v4;
              v41[5] = self;
              [(_UIWebViewportHandler *)v28 update:v41];
            }
          }

          [(NSView *)v4 bounds];
          [(NSView *)v4 convertRect:0 toView:?];
          v30 = v29;
          v32 = v31;
          [(_UIWebViewportHandler *)self->_viewportHandler viewportWidth];
          v34 = (v33 * self->_documentScale);
          if (v30 > v34)
          {
            v34 = v30;
          }

          v35 = round(v34);
          [(_UIWebViewportHandler *)self->_viewportHandler viewportHeight];
          v36 = self->_documentScale;
          v38 = (v37 * v36);
          if (v32 > v38)
          {
            v38 = v32;
          }

          v39 = floor(v38);
          if ((*(self + 953) & 0x20) != 0)
          {
            self->_pendingSize.width = v35;
            self->_pendingSize.height = v39;
          }

          else
          {
            v40 = [(UIView *)self _layer];
            [v40 setLayoutsSuspended:1];
            [(UIView *)self frame];
            [(UIWebDocumentView *)self setFrame:?];
            [v40 setLayoutsSuspended:0];
            self->_pendingSize = *MEMORY[0x1E695F060];
            [(UIWebDocumentView *)self _updateFixedPositioningObjectsLayoutAfterVisibleGeometryChange];
            v36 = self->_documentScale;
            if (v36 != documentScale)
            {
              [(UIWebTiledView *)self removeAllNonVisibleTiles];
              v36 = self->_documentScale;
            }
          }

          if (v36 != documentScale)
          {
            [(WebView *)self->_webView setNeedsDisplay:1];
          }
        }
      }

      else
      {
        v6 = self->_viewportHandler;
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __32__UIWebDocumentView__updateSize__block_invoke;
        v44[3] = &unk_1E70F5CA0;
        v44[4] = self;
        [(_UIWebViewportHandler *)v6 update:v44];
      }

      *(self + 952) &= ~0x80u;
    }
  }
}

uint64_t __32__UIWebDocumentView__updateSize__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 880) setDocumentBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(*(a1 + 32) + 648);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 setBounds:{v3, v4, v5, v6}];
}

uint64_t __32__UIWebDocumentView__updateSize__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(*(a1 + 40) + 880) setDocumentBounds:?];
  v10 = *(*(a1 + 40) + 648);

  return [v10 setBounds:{v3, v5, v7, v9}];
}

- (void)_clearDoubleTapRect
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 16);
  self->_mainDocumentDoubleTapRect.origin = *MEMORY[0x1E695F058];
  self->_mainDocumentDoubleTapRect.size = v3;
  self->_doubleTapRect.origin = v2;
  self->_doubleTapRect.size = v3;
  *(self + 954) &= ~1u;
}

- (void)setShouldIgnoreCustomViewport:(BOOL)a3
{
  v3 = *(self + 952);
  if (((((v3 & 0x40) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = 64;
    }

    else
    {
      v5 = 0;
    }

    *(self + 952) = v3 & 0xBF | v5;
    if (a3)
    {
      if ([(_UIWebViewportHandler *)self->_viewportHandler webkitDefinedConfigurationFlags])
      {
        documentType = self->_documentType;

        [(UIWebDocumentView *)self _setDocumentType:documentType];
      }
    }

    else
    {
      WebThreadLock();
      viewportHandler = self->_viewportHandler;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __51__UIWebDocumentView_setShouldIgnoreCustomViewport___block_invoke;
      v8[3] = &unk_1E70F5CA0;
      v8[4] = self;
      [(_UIWebViewportHandler *)viewportHandler update:v8];
    }
  }
}

uint64_t __51__UIWebDocumentView_setShouldIgnoreCustomViewport___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_msgSend(objc_msgSend(v1[54] "backForwardList")];

  return [v1 _applyViewportArguments:v2];
}

- (void)_applyViewportArguments:(id)a3
{
  if (a3)
  {
    self->_wantsMinimalUI = [objc_msgSend(a3 objectForKey:{@"minimal-ui", "BOOLValue"}];
    if ((*(self + 952) & 0x40) == 0)
    {
      [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E69E3058]), "floatValue"}];
      v6 = v5;
      [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E69E3050]), "floatValue"}];
      v8 = v7;
      [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E69E3048]), "floatValue"}];
      v10 = v9;
      [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E69E3070]), "floatValue"}];
      v12 = v11;
      [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E69E3040]), "floatValue"}];
      v14 = v13;
      [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E69E3068]), "floatValue"}];
      v16 = v15;
      [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E69E3060]), "floatValue"}];
      v18 = v17;
      v19 = [a3 objectForKey:@"viewport-fit"];
      viewportHandler = self->_viewportHandler;
      LODWORD(v21) = v10;
      LODWORD(v22) = v6;
      LODWORD(v23) = v8;
      LODWORD(v24) = v16;
      LODWORD(v25) = v18;

      [(_UIWebViewportHandler *)viewportHandler applyWebKitViewportArgumentsSize:v19 initialScale:v12 minimumScale:v14 maximumScale:v21 allowsUserScaling:v22 allowsShrinkToFit:v23 viewportFit:v24, v25];
    }
  }
}

- (void)webView:(id)a3 didReceiveViewportArguments:(id)a4
{
  WebThreadLock();
  viewportHandler = self->_viewportHandler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__UIWebDocumentView_webView_didReceiveViewportArguments___block_invoke;
  v7[3] = &unk_1E7101E78;
  v7[4] = self;
  v7[5] = a4;
  [(_UIWebViewportHandler *)viewportHandler update:v7];
}

- (void)webView:(id)a3 needsScrollNotifications:(id)a4 forFrame:(id)a5
{
  if ([(WebView *)self->_webView mainFrame]== a5)
  {
    if ([a4 BOOLValue])
    {
      v7 = 0x80;
    }

    else
    {
      v7 = 0;
    }

    *(self + 954) = v7 & 0x80 | *(self + 954) & 0x7F;
  }
}

- (void)sendScrollEventIfNecessaryWasUserScroll:(BOOL)a3
{
  v3 = a3;
  [(UIWebDocumentView *)self _updateFixedPositioningObjectsLayoutDuringScroll];
  if (*(self + 954) < 0)
  {
    v5 = v8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v6 = __61__UIWebDocumentView_sendScrollEventIfNecessaryWasUserScroll___block_invoke;
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v5 = v7;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v6 = __61__UIWebDocumentView_sendScrollEventIfNecessaryWasUserScroll___block_invoke_2;
  }

  v5[2] = v6;
  v5[3] = &unk_1E70F5CA0;
  v5[4] = self;
  WebThreadRun();
}

uint64_t __61__UIWebDocumentView_sendScrollEventIfNecessaryWasUserScroll___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 432) mainFrame];

  return [v1 sendScrollEvent];
}

uint64_t __61__UIWebDocumentView_sendScrollEventIfNecessaryWasUserScroll___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 432) mainFrame];

  return [v1 _userScrolled];
}

- (void)resetTilingAfterLoadComplete
{
  if ((*(self + 953) & 0x20) != 0)
  {
    if ((*(self + 952) & 0x10) != 0)
    {
      [(UIWebDocumentView *)self _updateSize];
    }

    [(UIWebTiledView *)self setNeedsLayout];
  }

  if ((*(self + 955) & 8) != 0)
  {
    v3.receiver = self;
    v3.super_class = UIWebDocumentView;
    [(UIWebTiledView *)&v3 setTilingArea:0];
    *(self + 955) &= ~8u;
  }
}

- (void)webView:(id)a3 didFinishLoadForFrame:(id)a4
{
  if ([(WebView *)self->_webView mainFrame]== a4)
  {
    *(self + 957) &= ~8u;
    if (objc_opt_respondsToSelector())
    {
      [self->_delegate webViewMainFrameDidFinishLoad:self];
    }

    [objc_msgSend(a4 "frameView")];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *(self + 955) &= ~0x80u;
      [(UIWebDocumentView *)self resetTilingAfterLoadComplete];
      if ([(UIWebDocumentView *)self _dataDetectionIsActivated])
      {
        if (![(WebView *)self->_webView isEditable]&& ![(UIWebDocumentView *)self _parentTextView])
        {
          WebThreadLock();
          v6 = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
          v7 = [(UIWebDocumentView *)self effectiveDataDetectorTypes];

          [v6 startURLificationForFrame:a4 detectedTypes:v7];
        }
      }
    }
  }
}

- (void)webThreadWebViewDidLayout:(id)a3 byScrolling:(BOOL)a4
{
  if (objc_opt_respondsToSelector())
  {
    [self->_delegate webThreadWebViewDidLayout:self];
  }

  self->_renderTreeSize = [a3 _renderTreeSize];
  if (self->_renderTreeSizeThresholdForReset)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__UIWebDocumentView_webThreadWebViewDidLayout_byScrolling___block_invoke;
    block[3] = &unk_1E70F5CA0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if ([(UIWebDocumentView *)self hasSelection])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__UIWebDocumentView_webThreadWebViewDidLayout_byScrolling___block_invoke_2;
    v7[3] = &unk_1E712C198;
    v7[4] = self;
    v8 = a4;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

uint64_t __59__UIWebDocumentView_webThreadWebViewDidLayout_byScrolling___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _selectionLayoutChangedByScrolling:*(a1 + 40)];
  result = [*(a1 + 32) hasEditableSelection];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _editableSelectionLayoutChangedByScrolling:v4];
  }

  return result;
}

- (void)_editableSelectionLayoutChangedByScrolling:(BOOL)a3
{
  if ([+[UIKeyboardImpl activeInstance](UIKeyboardImpl activeInstance])
  {
    v3 = +[UIKeyboardImpl activeInstance];

    [v3 updateCandidateDisplay];
  }
}

- (void)webView:(id)a3 runOpenPanelForFileButtonWithResultListener:(id)a4 configuration:(id)a5
{
  if (self->_fileUploadPanel)
  {

    [a4 cancel];
  }

  else
  {
    v6 = [[UIWebFileUploadPanel alloc] initWithResultListener:a4 configuration:a5 documentView:self];
    self->_fileUploadPanel = v6;
    [(UIWebFileUploadPanel *)v6 setDelegate:self];
    fileUploadPanel = self->_fileUploadPanel;

    [(UIWebFileUploadPanel *)fileUploadPanel present];
  }
}

- (void)webView:(id)a3 didFirstVisuallyNonEmptyLayoutInFrame:(id)a4
{
  *(self + 955) |= 0x40u;
  if ((*(self + 952) & 0x10) != 0)
  {
    [(UIWebDocumentView *)self _updateSize:a3];
  }

  [(UIWebTiledView *)self setNeedsLayout:a3];
}

- (void)webView:(id)a3 didFailLoadWithError:(id)a4 forFrame:(id)a5
{
  if ([(WebView *)self->_webView mainFrame]== a5)
  {
    if (objc_opt_respondsToSelector())
    {
      [self->_delegate webViewMainFrameDidFailLoad:self withError:a4];
    }

    *(self + 955) &= ~0x80u;

    [(UIWebDocumentView *)self resetTilingAfterLoadComplete];
  }
}

- (void)webView:(id)a3 didCommitLoadForFrame:(id)a4
{
  v6 = [(WebView *)self->_webView mainFrame];
  if (v6 == a4)
  {
    v7 = v6;
    *(self + 953) &= ~8u;
    self->_previousDocumentScale = self->_documentScale;
    self->_documentScale = -1.0;
    [(UIWebDocumentView *)self _resetFormDataForFrame:v6];
    [(UIWebDocumentView *)self setTilingArea:2];
    [(UIWebTiledView *)self setNeedsDisplay];
    *(self + 953) |= 0x20u;
    if ([a4 _isVisuallyNonEmpty])
    {
      v8 = 64;
    }

    else
    {
      v8 = 0;
    }

    *(self + 955) = *(self + 955) & 0xBF | v8;
    *(self + 956) &= ~0x80u;
    *(self + 955) |= 0x80u;
    *(self + 953) &= ~0x40u;
    self->_pendingSize = *MEMORY[0x1E695F060];
    v9 = *(self + 957);
    if ((v9 & 0x10) == 0)
    {
      *(self + 954) &= ~0x80u;
      v9 = *(self + 957);
    }

    *(self + 957) = v9 & 0xEF;
    if (objc_opt_respondsToSelector())
    {
      [self->_delegate webViewMainFrameDidCommitLoad:self];
    }

    v10 = [(WebFrame *)v7 dataSource];
    v11 = [objc_msgSend(a4 "frameView")];
    if (([(WebFrame *)v7 _loadType]& 0xFFFFFFFD) == 4)
    {
      v12 = 0;
    }

    else
    {
      v12 = [(WebHistoryItem *)[(WebBackForwardList *)[(WebView *)self->_webView backForwardList] currentItem] _viewportArguments];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 0;
    }

    else if ([[(NSString *)[(NSURLResponse *)[(WebDataSource *)v10 response] MIMEType] lowercaseString] isEqualToString:@"text/plain"])
    {
      v13 = 1;
    }

    else if ([objc_msgSend(MEMORY[0x1E69E2FB8] "_productivityDocumentMIMETypes")])
    {
      v13 = 2;
    }

    else
    {
      v13 = 4;
    }

    [(UIWebDocumentView *)self _setDocumentType:v13 overrideCustomConfigurations:1 viewportArguments:v12];
    v14 = [(WebBackForwardList *)[(WebView *)self->_webView backForwardList] currentItem];

    self->_latestCommittedPageLoadHistoryItem = v14;
    [(UIWebDocumentView *)self _clearDoubleTapRect];
    [(UIWebDocumentView *)self _clearAllConsoleMessages];
    if ((*(self + 952) & 0x10) != 0)
    {
      [(UIWebDocumentView *)self _updateSize];
      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      v16 = MEMORY[0x1E69E2FC0];
      [v15 removeObserver:self name:*MEMORY[0x1E69E2FC0] object:0];
      v17 = *v16;

      [v15 addObserver:self selector:sel__WAKViewSizeDidChange_ name:v17 object:v11];
    }
  }
}

- (void)_WAKViewSizeDidChange:(id)a3
{
  v5 = [(WebFrameView *)[(WebFrame *)[(WebView *)self->_webView mainFrame] frameView] documentView];
  if (v5 == [a3 object])
  {
    [(NSView *)v5 frame];
    if (v7 != *MEMORY[0x1E695F060] || v6 != *(MEMORY[0x1E695F060] + 8))
    {
      [(UIWebTiledView *)self setNeedsLayout];
      if ((*(self + 952) & 0x10) != 0)
      {

        [(UIWebDocumentView *)self _updateSize];
      }
    }
  }
}

- (CGRect)documentBounds
{
  [(_UIWebViewportHandler *)self->_viewportHandler documentBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setAutoresizes:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 952) = *(self + 952) & 0xEF | v3;
}

- (void)setIgnoresViewportOverflowWhenAutoresizing:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 952) = *(self + 952) & 0xDF | v3;
}

- (void)setMinimumSize:(CGSize)a3 updateCurrentViewportConfigurationSize:(BOOL)a4
{
  viewportHandler = self->_viewportHandler;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__UIWebDocumentView_setMinimumSize_updateCurrentViewportConfigurationSize___block_invoke;
  v5[3] = &unk_1E712C1C0;
  v5[4] = self;
  v7 = a4;
  v6 = a3;
  [(_UIWebViewportHandler *)viewportHandler update:v5];
}

uint64_t __75__UIWebDocumentView_setMinimumSize_updateCurrentViewportConfigurationSize___block_invoke(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1 + 32);
  v3 = *(v2 + 880);
  if (v3)
  {
    [v3 rawViewConfiguration];
    v2 = *(a1 + 32);
  }

  if (*(a1 + 56) != 1 || (v4 = [*(v2 + 880) webkitDefinedConfigurationFlags], v2 = *(a1 + 32), (v4 & 0x10) != 0))
  {
    v5 = 1;
  }

  else if (*&v7 == *(v2 + 1152 + 32 * *(v2 + 888)))
  {
    v5 = 0;
  }

  else
  {
    *&v7 = *(v2 + 1152 + 32 * *(v2 + 888));
    [*(v2 + 880) overrideViewportConfiguration:&v7];
    v5 = 0;
    v2 = *(a1 + 32);
  }

  return [*(v2 + 880) setAvailableViewSize:v5 updateConfigurationSize:{round(*(a1 + 40)), round(*(a1 + 48)), v7, v8}];
}

- (void)setViewportSize:(CGSize)a3 forDocumentTypes:(int)a4
{
  v4 = 0;
  v5 = round(a3.width);
  v6 = round(a3.height);
  do
  {
    if ((a4 >> v4))
    {
      self->_defaultViewportConfigurations[0].size.width = v5;
      self->_defaultViewportConfigurations[0].size.height = v6;
    }

    ++v4;
    self = (self + 32);
  }

  while (v4 != 5);
}

- (void)setInitialScale:(float)a3 forDocumentTypes:(int)a4
{
  v4 = 0;
  p_constraintsExceptingSubviewAutoresizingConstraints = &self->super.super._constraintsExceptingSubviewAutoresizingConstraints;
  do
  {
    if ((a4 >> v4))
    {
      *(p_constraintsExceptingSubviewAutoresizingConstraints + 288) = a3;
    }

    ++v4;
    p_constraintsExceptingSubviewAutoresizingConstraints += 4;
  }

  while (v4 != 5);
}

- (void)setMinimumScale:(float)a3 forDocumentTypes:(int)a4
{
  v4 = 0;
  v5 = &self->super.super._constraintsExceptingSubviewAutoresizingConstraints + 1;
  do
  {
    if ((a4 >> v4))
    {
      v5[288] = a3;
    }

    ++v4;
    v5 += 8;
  }

  while (v4 != 5);
}

- (void)setMaximumScale:(float)a3 forDocumentTypes:(int)a4
{
  v4 = 0;
  p_cachedTraitCollection = &self->super.super._cachedTraitCollection;
  do
  {
    if ((a4 >> v4))
    {
      *(p_cachedTraitCollection + 288) = a3;
    }

    ++v4;
    p_cachedTraitCollection += 4;
  }

  while (v4 != 5);
}

- (void)setAllowsUserScaling:(BOOL)a3 forDocumentTypes:(int)a4
{
  v4 = 0;
  v5 = &self->super.super._cachedTraitCollection + 4;
  do
  {
    if ((a4 >> v4))
    {
      v5[1152] = a3;
    }

    ++v4;
    v5 += 32;
  }

  while (v4 != 5);
}

- (void)setAllowsShrinkToFit:(BOOL)a3 forDocumentTypes:(int)a4
{
  v4 = 0;
  v5 = &self->super.super._cachedTraitCollection + 5;
  do
  {
    if ((a4 >> v4))
    {
      v5[1152] = a3;
    }

    ++v4;
    v5 += 32;
  }

  while (v4 != 5);
}

- (void)setAvoidsUnsafeArea:(BOOL)a3 forDocumentTypes:(int)a4
{
  v4 = 0;
  v5 = &self->super.super._cachedTraitCollection + 6;
  do
  {
    if ((a4 >> v4))
    {
      v5[1152] = a3;
    }

    ++v4;
    v5 += 32;
  }

  while (v4 != 5);
}

- (void)fileUploadPanelDidDismiss:(id)a3
{
  [(UIWebFileUploadPanel *)self->_fileUploadPanel setDelegate:0];

  self->_fileUploadPanel = 0;
}

- (void)setUpdatesScrollView:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 953) = *(self + 953) & 0xFB | v3;
}

- (void)_restoreScrollPointForce:(BOOL)a3
{
  if (a3 || (*(self + 953) & 0x10) != 0 && (*(self + 953) & 8) == 0)
  {
    WebThreadLock();
    v4 = [(UIView *)self _scroller];
    v5 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
    if ((*(self + 953) & 0x40) != 0)
    {
      v7 = [(WebFrameView *)[(WebFrame *)[(WebView *)self->_webView mainFrame] frameView] documentView];
      if (v7)
      {
        [(NSView *)v7 convertPoint:self->_webView toView:self->_scrollPoint.x, self->_scrollPoint.y];
        v5 = v8;
        v6 = v9;
      }

      [(UIView *)self convertPoint:v4 toView:v5, v6];
      v5 = v10;
      v6 = fmax(v11, 0.0);
      *(self + 953) &= ~0x10u;
    }

    [v4 contentOffset];
    v13 = v12;
    v15 = v14;
    [v4 contentInset];
    v17 = v16;
    v19 = v18;
    [v4 _systemContentInset];
    *(self + 957) |= 2u;
    [v4 _setContentOffsetPinned:{v5 - (v19 + v21), v6 - (v17 + v20)}];
    *(self + 957) &= ~2u;
    *(self + 957) &= ~8u;
    [(UIWebDocumentView *)self _updateFixedPositioningObjectsLayoutAfterScroll];
    [v4 contentOffset];
    if (v13 != v23 || v15 != v22)
    {

      [(UIWebTiledView *)self layoutTilesNow];
    }
  }
}

- (void)_resetForNewPage
{
  v3 = [(UIView *)self _scroller];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;
  if (self->_pendingSize.width != 0.0 && self->_pendingSize.height != 0.0)
  {
    [(UIView *)self frame];
    [(UIWebDocumentView *)self setFrame:?];
    self->_pendingSize = *MEMORY[0x1E695F060];
  }

  *(self + 953) &= ~0x20u;
  *(self + 953) |= 0x10u;
  self->_renderTreeSizeThresholdForReset = 0;
  if (*(self + 955) < 0)
  {
    v12.receiver = self;
    v12.super_class = UIWebDocumentView;
    [(UIWebTiledView *)&v12 setTilingArea:1];
    *(self + 955) |= 8u;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIWebDocumentView;
    [(UIWebTiledView *)&v11 setTilingArea:0];
  }

  if ((*(self + 953) & 4) != 0 && [(UIView *)self _scroller])
  {
    [(UIWebDocumentView *)self _restoreScrollPointForce:0];
  }

  [v3 contentOffset];
  if (v5 != v9 || v7 != v8 || (previousDocumentScale = self->_previousDocumentScale, previousDocumentScale != 0.0) && previousDocumentScale != self->_documentScale)
  {
    [(UIWebTiledView *)self removeAllTiles];
    [(UIWebTiledView *)self layoutTilesNow];
    self->_previousDocumentScale = 0.0;
  }

  [(UIWebDocumentView *)self _showPendingContentLayers];
  if (objc_opt_respondsToSelector())
  {
    [self->_delegate didResetViewForNewPage:self];
  }
}

- (void)_saveStateToHistoryItem:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [self->_delegate saveStateToHistoryItem:a3 forWebView:self];
  }

  v5 = [(UIView *)self _scroller];
  if ((*(self + 953) & 4) != 0)
  {
    v6 = v5;
    if (v5)
    {
      if (([a3 lastVisitWasFailure] & 1) == 0)
      {
        [v6 contentOffset];
        [(UIView *)self convertPoint:v6 fromView:?];
        v8 = v7;
        v10 = v9;
        v11 = [(WebFrameView *)[(WebFrame *)[(WebView *)self->_webView mainFrame] frameView] documentView];
        if (v11)
        {
          [(NSView *)v11 convertPoint:self->_webView fromView:v8, v10];
          v8 = v12;
          v10 = v13;
        }

        [(_UIWebViewportHandler *)self->_viewportHandler integralInitialScale];
        v15 = v14;
        [a3 _setScrollPoint:{v8, v10}];
        v16 = self->_documentScale == v15;

        [a3 _setScale:v16 isInitial:?];
      }
    }
  }
}

- (void)saveStateToCurrentHistoryItem
{
  if (self->_latestCommittedPageLoadHistoryItem)
  {
    WebThreadLock();
    latestCommittedPageLoadHistoryItem = self->_latestCommittedPageLoadHistoryItem;

    [(UIWebDocumentView *)self _saveStateToHistoryItem:latestCommittedPageLoadHistoryItem];
  }
}

- (void)webView:(id)a3 saveStateToHistoryItem:(id)a4 forFrame:(id)a5
{
  [(UIWebDocumentView *)self _saveStateToHistoryItem:a4];
  if (([a4 lastVisitWasFailure] & 1) == 0)
  {
    v7 = [(_UIWebViewportHandler *)self->_viewportHandler webkitDefinedConfigurationFlags];
    v8 = v7;
    if (v7 || self->_wantsMinimalUI)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
      viewportHandler = self->_viewportHandler;
      if (viewportHandler)
      {
        [(_UIWebViewportHandler *)viewportHandler rawViewConfiguration];
        LODWORD(v11) = 0;
      }

      else
      {
        v11 = 0.0;
      }

      if ((v8 & 2) == 0)
      {
        *&v11 = -1.0;
      }

      v12 = [MEMORY[0x1E696AD98] numberWithFloat:{v11, 0}];
      [v9 setObject:v12 forKey:*MEMORY[0x1E69E3048]];
      LODWORD(v13) = 0;
      if ((v8 & 4) == 0)
      {
        *&v13 = -1.0;
      }

      v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
      [v9 setObject:v14 forKey:*MEMORY[0x1E69E3058]];
      LODWORD(v15) = 0;
      if ((v8 & 8) == 0)
      {
        *&v15 = -1.0;
      }

      v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
      [v9 setObject:v16 forKey:*MEMORY[0x1E69E3050]];
      if ((v8 & 0x40) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = -1;
      }

      *&v17 = v18;
      v19 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
      [v9 setObject:v19 forKey:*MEMORY[0x1E69E3068]];
      if ((v8 & 0x80) != 0)
      {
        v21 = 0;
      }

      else
      {
        v21 = -1;
      }

      *&v20 = v21;
      v22 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
      [v9 setObject:v22 forKey:*MEMORY[0x1E69E3060]];
      HIDWORD(v23) = HIDWORD(v28);
      *&v23 = v28;
      if ((v8 & 0x10) == 0)
      {
        *&v23 = -1.0;
      }

      v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
      [v9 setObject:v24 forKey:*MEMORY[0x1E69E3070]];
      HIDWORD(v25) = 0;
      *&v25 = 0.0;
      if ((v8 & 0x20) == 0)
      {
        *&v25 = -1.0;
      }

      v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
      [v9 setObject:v26 forKey:*MEMORY[0x1E69E3040]];
      [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_wantsMinimalUI), @"minimal-ui"}];
      if ((v8 & 0x100) != 0)
      {
        v27 = @"cover";
      }

      else
      {
        v27 = @"auto";
      }

      [v9 setObject:v27 forKey:@"viewport-fit"];
      [a4 _setViewportArguments:v9];
    }
  }
}

- (void)webView:(id)a3 restoreStateFromHistoryItem:(id)a4 forFrame:(id)a5 force:(BOOL)a6
{
  v6 = a6;
  if (objc_opt_respondsToSelector())
  {
    [self->_delegate restoreStateFromHistoryItem:a4 forWebView:self];
  }

  if ((*(self + 953) & 4) != 0)
  {
    if ([(UIView *)self _scroller])
    {
      [a4 _scrollPoint];
      self->_scrollPoint.x = v9;
      self->_scrollPoint.y = v10;
      *(self + 953) |= 0x40u;
      if ((*(self + 953) & 0x20) == 0)
      {
        if (![a4 _scaleIsInitial] || (objc_msgSend(a4, "_scale"), v12 = v11, -[_UIWebViewportHandler integralInitialScale](self->_viewportHandler, "integralInitialScale"), v13 == v12))
        {
          [(UIWebDocumentView *)self _restoreScrollPointForce:v6];
        }
      }
    }
  }

  [(UIWebTiledView *)self setNeedsLayout];
}

- (BOOL)webView:(id)a3 shouldScrollToPoint:(CGPoint)a4 forFrame:(id)a5
{
  y = a4.y;
  x = a4.x;
  if ((-[UIGestureRecognizer state](self->_twoFingerPanGestureRecognizer, "state") - 1) < 2 || ([a3 _isProcessingUserGesture] & 1) == 0 && (*(self + 957) & 8) != 0)
  {
    goto LABEL_2;
  }

  if ([(WebView *)self->_webView mainFrame]!= a5)
  {
    LOBYTE(v10) = 1;
    return v10;
  }

  if ((*(self + 953) & 4) != 0)
  {
    v10 = [(UIView *)self _scroller];
    if (v10)
    {
      v11 = [(WebFrame *)[(WebView *)self->_webView mainFrame] frameView];
      v12 = [(WebFrameView *)v11 _scrollView];
      if ((*(self + 953) & 0x20) != 0)
      {
        [v12 convertPoint:-[WebFrameView documentView](v11 toView:{"documentView"), x, y}];
        LOBYTE(v10) = 0;
        self->_scrollPoint.x = v36;
        self->_scrollPoint.y = v37;
        v34 = 953;
        v35 = *(self + 953) | 0x40;
      }

      else
      {
        v13 = [(UIView *)self _scroller];
        [v12 convertPoint:0 toView:{x, y}];
        [(UIView *)self convertPoint:v13 toView:?];
        v15 = v14;
        v17 = v16;
        [(UIView *)self frame];
        if (v15 < v18)
        {
          v15 = v18;
        }

        if (v17 < v19)
        {
          v17 = v19;
        }

        if (!CGRectIsNull(self->_exposedScrollViewRect))
        {
          [v13 contentOffset];
          v17 = v17 - (self->_exposedScrollViewRect.origin.y - v20);
          v15 = v15 - (self->_exposedScrollViewRect.origin.x - v21);
        }

        if ((*(self + 952) & 0x10) != 0)
        {
          [(_UIWebViewportHandler *)self->_viewportHandler documentBounds];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;
          [(NSView *)[(WebFrameView *)v11 documentView] bounds];
          v40.origin.x = v30;
          v40.origin.y = v31;
          v40.size.width = v32;
          v40.size.height = v33;
          v39.origin.x = v23;
          v39.origin.y = v25;
          v39.size.width = v27;
          v39.size.height = v29;
          if (!CGRectEqualToRect(v39, v40))
          {
            [(UIWebDocumentView *)self _updateSize];
          }
        }

        [v13 _setContentOffsetPinned:{v15, v17}];
        [(UIWebDocumentView *)self sendScrollEventIfNecessaryWasUserScroll:0];
        [(UIWebDocumentView *)self _updateFixedPositioningObjectsLayoutAfterScroll];
        LOBYTE(v10) = 0;
        *(self + 953) &= ~0x10u;
        v34 = 957;
        v35 = *(self + 957) & 0xF7;
      }

      *(&self->super.super.super.super.isa + v34) = v35;
    }
  }

  else
  {
LABEL_2:
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)forceLayout
{
  WebThreadLock();
  [(NSView *)[(WebFrameView *)[(WebFrame *)[(WebView *)self->_webView mainFrame] frameView] documentView] layout];
  if ((*(self + 953) & 0x20) != 0 && [(UIWebDocumentView *)self _shouldResetForNewPage])
  {
    [(UIWebDocumentView *)self _resetForNewPage];
  }

  [(UIWebTiledView *)self setNeedsLayout];

  [(UIView *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  if ((WebThreadIsCurrent() & 1) == 0)
  {
    if ((*(self + 953) & 0x20) != 0)
    {
      if (![(UIWebDocumentView *)self _shouldResetForNewPage])
      {
        return;
      }

      [(UIWebDocumentView *)self _resetForNewPage];
    }

    v4 = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = __35__UIWebDocumentView_layoutSubviews__block_invoke;
    v7 = &unk_1E70F5CA0;
    v8 = self;
    WebThreadRun();
    v3.receiver = self;
    v3.super_class = UIWebDocumentView;
    [(UIWebTiledView *)&v3 layoutSubviews];
  }
}

- (void)setSmoothsFonts:(BOOL)a3
{
  v3 = a3;
  if (a3 && (setSmoothsFonts__didSetOrientationProvider & 1) == 0)
  {
    [MEMORY[0x1E69E2F28] setOrientationProvider:objc_opt_class()];
    setSmoothsFonts__didSetOrientationProvider = 1;
  }

  wakWindow = self->super._wakWindow;

  [(WAKWindow *)wakWindow setUseOrientationDependentFontAntialiasing:v3];
}

- (void)setDrawsBackground:(BOOL)a3
{
  v3 = a3;
  WebThreadLock();
  [(WebView *)self->_webView setDrawsBackground:v3];

  [(UIWebTiledView *)self setTilesOpaque:v3];
}

- (void)setOpaque:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UIWebDocumentView;
  [(UIView *)&v5 setOpaque:?];
  [(UIWebDocumentView *)self setDrawsBackground:v3];
}

- (CGImage)newSnapshotWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  WebThreadLock();
  [(UIWebTiledView *)self layoutTilesNow];
  v9.receiver = self;
  v9.super_class = UIWebDocumentView;
  return [(UIView *)&v9 newSnapshotWithRect:x, y, width, height];
}

- (BOOL)cancelMouseTracking
{
  v2 = DynamicCastUIScrollView([(UIView *)self _scroller]);
  if (v2)
  {

    LOBYTE(v2) = [v2 cancelTouchTracking];
  }

  return v2;
}

- (BOOL)cancelTouchTracking
{
  v2 = DynamicCastUIScrollView([(UIView *)self _scroller]);
  if (v2)
  {

    LOBYTE(v2) = [v2 cancelTouchTracking];
  }

  return v2;
}

- (void)setIgnoresFocusingMouse:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 952) = *(self + 952) & 0xFB | v3;
}

- (void)setIgnoresKeyEvents:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 952) = *(self + 952) & 0xF7 | v3;
}

- (void)setTilingArea:(int)a3
{
  if ((*(self + 955) & 8) == 0)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    return;
  }

  if (a3 == 1)
  {
    *(self + 955) &= ~8u;
  }

  else
  {
LABEL_5:
    v6 = v3;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = UIWebDocumentView;
    [(UIWebTiledView *)&v5 setTilingArea:*&a3];
  }
}

- (void)_didScroll
{
  self->_mouseDownCount = 0;
  [(UIWebDocumentView *)self cancelInteractionWithImmediateDisplay:1];
  [(UIWebDocumentView *)self _cancelLongPressGestureRecognizer];
  if ([DynamicCastUIScrollView(-[UIView _scroller](self "_scroller"))])
  {
    *(self + 953) &= ~0x10u;
    [(UIWebDocumentView *)self _clearDoubleTapRect];
    if ((*(self + 955) & 8) != 0)
    {
      *(self + 955) &= ~8u;
      v12.receiver = self;
      v12.super_class = UIWebDocumentView;
      [(UIWebTiledView *)&v12 setTilingArea:0];
    }
  }

  v3 = [(UIView *)self _scroller];
  if (v3)
  {
    v4 = v3;
    [v3 _verticalVelocity];
    v6 = v5;
    [v4 _horizontalVelocity];
    v8 = -v6;
    if (v6 >= 0.0)
    {
      v8 = v6;
    }

    if (v7 >= 0.0)
    {
      v9 = 3;
    }

    else
    {
      v7 = -v7;
      v9 = 2;
    }

    if (v8 >= v7)
    {
      v10 = v6 >= 0.0;
    }

    else
    {
      v10 = v9;
    }

    [(WAKWindow *)self->super._wakWindow setTilingDirection:v10];
    if ((*(self + 957) & 2) == 0)
    {
      [(UIWebDocumentView *)self _updateFixedPositionContent];
    }
  }

  v11.receiver = self;
  v11.super_class = UIWebDocumentView;
  [(UIWebTiledView *)&v11 _didScroll];
}

- (BOOL)_isSubviewOfPlugInView:(id)a3
{
  v3 = 0;
  if (a3 && self->_plugInViews)
  {
    v5 = a3;
    do
    {
      Value = CFDictionaryGetValue(self->_plugInViews, v5);
      v3 = Value != 0;
      if (Value)
      {
        break;
      }

      v5 = [v5 superview];
    }

    while (v5);
  }

  return v3;
}

- (void)_notifyPlugInViewsOfWillBeginZooming
{
  v15 = *MEMORY[0x1E69E9840];
  plugInViews = self->_plugInViews;
  if (plugInViews && CFDictionaryGetCount(plugInViews))
  {
    v4 = [(__CFDictionary *)self->_plugInViews copy];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 _webViewWillBeginZooming];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)_notifyPlugInViewsOfDidEndZooming
{
  v15 = *MEMORY[0x1E69E9840];
  plugInViews = self->_plugInViews;
  if (plugInViews && CFDictionaryGetCount(plugInViews))
  {
    v4 = [(__CFDictionary *)self->_plugInViews copy];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 _webViewDidEndZooming:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)_notifyPlugInViewsOfDidZoom
{
  v17 = *MEMORY[0x1E69E9840];
  plugInViews = self->_plugInViews;
  if (plugInViews && CFDictionaryGetCount(plugInViews))
  {
    [(UIView *)self transform];
    v4 = v15;
    v5 = [(__CFDictionary *)self->_plugInViews copy];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 _webViewDidZoomWithRelativeScale:v4];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)_notifyPlugInViewsOfScaleChange
{
  v15 = *MEMORY[0x1E69E9840];
  plugInViews = self->_plugInViews;
  if (plugInViews && CFDictionaryGetCount(plugInViews))
  {
    v4 = [(__CFDictionary *)self->_plugInViews copy];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 _webViewScaleDidChange];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = UIWebDocumentView;
  [UIView _didMoveFromWindow:sel__didMoveFromWindow_toWindow_ toWindow:?];
  v7 = [(__CFDictionary *)self->_plugInViews copy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 superview])
        {
          [v12 _didMoveFromWindow:a3 toWindow:a4];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_notifyContentHostingLayersOfScaleChange
{
  contentLayersHostingLayer = self->_contentLayersHostingLayer;
  [(UIView *)self bounds];

  [(CALayer *)contentLayersHostingLayer setFrame:?];
}

- (void)setExposedScrollViewRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_exposedScrollViewRect = &self->_exposedScrollViewRect;
  if (!CGRectEqualToRect(self->_exposedScrollViewRect, a3))
  {
    p_exposedScrollViewRect->origin.x = x;
    p_exposedScrollViewRect->origin.y = y;
    p_exposedScrollViewRect->size.width = width;
    p_exposedScrollViewRect->size.height = height;
    [(UIWebDocumentView *)self _updateWebKitExposedScrollViewRect];

    [(UIWebDocumentView *)self _updateFixedPositionContent];
  }
}

- (void)_updateWebKitExposedScrollViewRect
{
  v3 = [(UIView *)self _scroller];
  x = self->_exposedScrollViewRect.origin.x;
  y = self->_exposedScrollViewRect.origin.y;
  width = self->_exposedScrollViewRect.size.width;
  height = self->_exposedScrollViewRect.size.height;
  [(UIView *)self frame];
  if (v3)
  {
    [(UIView *)self bounds];
    [(UIView *)self convertRect:v3 toView:?];
    v11 = v10;
    v13 = v12;
    v25.size.width = v14;
    v25.size.height = v15;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v25.origin.x = v11;
    v25.origin.y = v13;
    v23 = CGRectIntersection(v22, v25);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
  }

  else
  {
    v11 = v8;
    v13 = v9;
  }

  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  IsEmpty = CGRectIsEmpty(v24);
  v17 = !IsEmpty;
  if (IsEmpty)
  {
    v18 = y;
  }

  else
  {
    v18 = y - v13;
  }

  wakWindow = self->super._wakWindow;
  if (v17)
  {
    v20 = x - v11;
  }

  else
  {
    v20 = x;
  }

  [(WAKWindow *)wakWindow setExposedScrollViewRect:v20, v18, width, height];
}

- (CGRect)_documentViewVisibleRect
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIView *)self _scroller];
  if (v11)
  {
    v12 = v11;
    if (CGRectIsNull(self->_exposedScrollViewRect))
    {
      [v12 bounds];
      x = v13;
      y = v15;
      width = v17;
      height = v19;
    }

    else
    {
      x = self->_exposedScrollViewRect.origin.x;
      y = self->_exposedScrollViewRect.origin.y;
      width = self->_exposedScrollViewRect.size.width;
      height = self->_exposedScrollViewRect.size.height;
    }

    [(UIView *)self convertRect:v12 toView:v4, v6, v8, v10];
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v29 = CGRectIntersection(v28, v33);
    [(UIView *)self convertRect:v12 fromView:v29.origin.x, v29.origin.y, v29.size.width, v29.size.height];
    v4 = v30.origin.x;
    v6 = v30.origin.y;
    v8 = v30.size.width;
    v10 = v30.size.height;
    if (CGRectIsNull(v30))
    {
      [(UIView *)self bounds];
      v4 = v21;
      v6 = v22;
      v8 = v23;
      v10 = v24;
    }
  }

  memset(&v27, 0, sizeof(v27));
  CGAffineTransformMakeScale(&v27, self->_documentScale, self->_documentScale);
  v25 = v27;
  CGAffineTransformInvert(&v26, &v25);
  v27 = v26;
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  return CGRectApplyAffineTransform(v31, &v26);
}

- (CGRect)_layoutRectForFixedPositionObjects
{
  [(UIWebDocumentView *)self _documentViewVisibleRect];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if ([(UIView *)self _scroller])
  {
    [(UIWebDocumentView *)self _zoomedDocumentScale];
    v12 = v11;
    v13 = fmin(v11, 1.20000005);
    [(_UIWebViewportHandler *)self->_viewportHandler minimumScale];
    if (v14 <= v13 || v14 == -1.0)
    {
      v14 = v13;
    }

    v16 = v14;
    if (v12 > v14)
    {
      [(_UIWebViewportHandler *)self->_viewportHandler documentBounds];
      if (!CGRectIsEmpty(v33))
      {
        [(_UIWebViewportHandler *)self->_viewportHandler documentBounds];
        v20 = v18 - height;
        v22 = v21 + v19 - width;
        v23 = v19 * (x - v21) / (v19 - width);
        if (v22 > 0.0)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0.0;
        }

        memset(&v32.c, 0, 32);
        if (v17 + v20 > 0.0)
        {
          v25 = v18 * (y - v17) / v20;
        }

        else
        {
          v25 = 0.0;
        }

        *&v32.a = 0uLL;
        CGAffineTransformMakeTranslation(&v32, v24, v25);
        v30 = v32;
        CGAffineTransformScale(&v31, &v30, v12 / v16, v12 / v16);
        v32 = v31;
        v30 = v31;
        CGAffineTransformTranslate(&v31, &v30, -v24, -v25);
        v32 = v31;
        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = width;
        v34.size.height = height;
        v35 = CGRectApplyAffineTransform(v34, &v31);
        x = v35.origin.x;
        y = v35.origin.y;
        width = v35.size.width;
        height = v35.size.height;
      }
    }
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)_updateFixedPositionedObjectsLayoutRectUsingWebThread:(BOOL)a3 synchronize:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(UIWebDocumentView *)self _layoutRectForFixedPositionObjects];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v17 = CGRectIntegral(v16);
  v11 = v17.origin.x;
  v12 = v17.origin.y;
  v13 = v17.size.width;
  v14 = v17.size.height;
  if (!v5)
  {
    v15 = +[UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:0];
    [(WebView *)self->_webView _setCustomFixedPositionLayoutRect:v11, v12, v13, v14];
    [UIView setAnimationsEnabled:v15];
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  [(WebView *)self->_webView _setCustomFixedPositionLayoutRectInWebThread:v4 synchronize:v17.origin.x, v17.origin.y, v17.size.width, v17.size.height];
  if (v4)
  {
LABEL_5:
    self->_fixedLayoutOriginRoundingDelta.width = x - v11;
    self->_fixedLayoutOriginRoundingDelta.height = y - v12;
    self->_fixedLayoutSizeRoundingDelta.width = width - v13;
    self->_fixedLayoutSizeRoundingDelta.height = height - v14;
  }
}

- (CGRect)_adjustedLayoutRectForFixedPositionObjects
{
  [(UIWebDocumentView *)self _layoutRectForFixedPositionObjects];
  v4 = v3 - self->_fixedLayoutOriginRoundingDelta.width;
  v6 = v5 - self->_fixedLayoutOriginRoundingDelta.height;
  v8 = v7 - self->_fixedLayoutSizeRoundingDelta.width;
  v10 = v9 - self->_fixedLayoutSizeRoundingDelta.height;
  result.size.height = v10;
  result.size.width = v8;
  result.origin.y = v6;
  result.origin.x = v4;
  return result;
}

- (void)_updateFixedPositionContent
{
  v3 = [(WebView *)self->_webView _fixedPositionContent];
  if ([v3 hasFixedOrStickyPositionLayers])
  {
    [(UIWebDocumentView *)self _adjustedLayoutRectForFixedPositionObjects];

    [v3 scrollOrZoomChanged:?];
  }
}

- (void)writeDataToPasteboard:(id)a3
{
  if ([(UITextSelection *)[(UITextInteractionAssistant *)self->_textSelectionAssistant activeSelection] granularity]== 1)
  {
    [a3 setValue:@"NeXT smart paste pasteboard type" forKey:@"NeXT smart paste pasteboard type"];
  }

  v4 = +[UIPasteboard generalPasteboard];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:a3];

  [(UIPasteboard *)v4 setItems:v5];
}

- (int64_t)getPasteboardItemsCount
{
  v2 = +[UIPasteboard generalPasteboard];

  return [(UIPasteboard *)v2 numberOfItems];
}

- (BOOL)isInsideRichlyEditableTextWidget
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  m_parentTextView = self->m_parentTextView;

  return [m_parentTextView allowsEditingTextAttributes];
}

- (BOOL)hasRichlyEditableSelection
{
  if (self->_isPerformingDrop)
  {
    v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

    LOBYTE(v4) = [v3 hasRichlyEditableDragCaret];
  }

  else
  {
    LODWORD(v4) = [(UIWebDocumentView *)self hasSelection];
    if (v4)
    {
      if ([(UIWebDocumentView *)self isInsideRichlyEditableTextWidget])
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        v4 = [(UIWebDocumentView *)self formElement];
        if (v4)
        {
          v5 = [(UIWebDocumentView *)self formElement];

          LOBYTE(v4) = [v5 isContentEditable];
        }
      }
    }
  }

  return v4;
}

- (BOOL)performTwoStepDrop:(id)a3 atDestination:(id)a4 isMove:(BOOL)a5
{
  v20 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [objc_msgSend(MEMORY[0x1E69E2F60] sharedInstance];
    v5 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v10 = v5;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if (qword_1ED498EB0 != -1)
          {
            dispatch_once(&qword_1ED498EB0, &__block_literal_global_1724);
          }

          if ([qword_1ED498EA8 containsObject:v13])
          {
            WebThreadLock();
            LODWORD(v5) = [(UIWebDocumentView *)self hasRichlyEditableSelection];
            if (v5)
            {
              LOBYTE(v5) = [(UIWebDocumentView *)self _insertFragmentWithoutPreservingStyle:a3 atDestination:a4 smartReplace:0 collapseToEnd:0];
            }

            return v5;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        LOBYTE(v5) = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  return v5;
}

- (BOOL)performsTwoStepPaste:(id)a3
{
  WebThreadLock();
  if (![(UIWebDocumentView *)self hasRichlyEditableSelection]|| ![(UIWebDocumentView *)self fragmentContainsRichContent:a3])
  {
    return 0;
  }

  v5 = +[UIPasteboard generalPasteboard];
  v6 = [(UIPasteboard *)v5 numberOfItems]== 1 && [(UIPasteboard *)v5 valueForPasteboardType:@"NeXT smart paste pasteboard type"]!= 0;

  return [(UIWebDocumentView *)self _insertFragmentWithoutPreservingStyle:a3 atDestination:0 smartReplace:v6 collapseToEnd:1];
}

- (BOOL)_insertFragmentWithoutPreservingStyle:(id)a3 atDestination:(id)a4 smartReplace:(BOOL)a5 collapseToEnd:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = [(UIWebDocumentView *)self _focusedOrMainFrame];
  v12 = [(UIWebDocumentView *)self undoManager];
  v13 = [v12 groupsByEvent];
  [v12 setGroupsByEvent:0];
  [-[UIWebDocumentView undoManager](self "undoManager")];
  if (a4)
  {
    [v11 setSelectedDOMRange:a4 affinity:1 closeTyping:1];
  }

  [v11 _replaceSelectionWithFragment:a3 selectReplacement:1 smartReplace:v7 matchStyle:0];
  [-[UIWebDocumentView undoManager](self "undoManager")];
  [-[UIWebDocumentView undoManager](self "undoManager")];
  [v11 removeUnchangeableStyles];
  if (v6 && [(UITextRange *)[(UIWebDocumentView *)self selectedTextRange] end])
  {
    [(UIWebDocumentView *)self setSelectedTextRange:[(UIWebDocumentView *)self textRangeFromPosition:[(UITextRange *)[(UIWebDocumentView *)self selectedTextRange] end] toPosition:[(UITextRange *)[(UIWebDocumentView *)self selectedTextRange] end]]];
  }

  [-[UIWebDocumentView undoManager](self "undoManager")];
  [v12 setGroupsByEvent:v13];
  return 1;
}

- (id)_supportedPasteboardTypesForCurrentSelection
{
  m_parentTextView = self->m_parentTextView;
  if (m_parentTextView)
  {

    return [m_parentTextView supportedPasteboardTypesForCurrentSelection];
  }

  else
  {
    if (!qword_1ED498E80)
    {
      qword_1ED498E80 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [qword_1ED498E80 addObject:{objc_msgSend(*MEMORY[0x1E6983030], "identifier")}];
      [qword_1ED498E80 addObjectsFromArray:UIPasteboardTypeListString];
      qword_1ED498E78 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [qword_1ED498E78 addObject:*MEMORY[0x1E69E2FD8]];
      [qword_1ED498E78 addObject:{objc_msgSend(*MEMORY[0x1E6982F90], "identifier")}];
      [qword_1ED498E78 addObject:{objc_msgSend(*MEMORY[0x1E6982DC0], "identifier")}];
      [qword_1ED498E78 addObjectsFromArray:UIPasteboardTypeListImage];
      [qword_1ED498E78 addObjectsFromArray:qword_1ED498E80];
    }

    v5 = [(UIWebDocumentView *)self hasRichlyEditableSelection];
    v6 = 16;
    if (v5)
    {
      v6 = 8;
    }

    return *&_MergedGlobals_25[v6];
  }
}

- (id)supportedPasteboardTypesForCurrentSelection
{
  if (![(UIWebDocumentView *)self hasSelection])
  {
    return 0;
  }

  return [(UIWebDocumentView *)self _supportedPasteboardTypesForCurrentSelection];
}

- (id)readDataFromPasteboard:(id)a3 withIndex:(int64_t)a4
{
  v5 = [MEMORY[0x1E696AC90] indexSetWithIndex:a4];
  if (([a3 isEqualToString:{objc_msgSend(*MEMORY[0x1E6983030], "identifier")}] & 1) != 0 || objc_msgSend(UIPasteboardTypeListString, "containsObject:", a3))
  {
    v6 = +[UIPasteboard generalPasteboard];

    return [(UIPasteboard *)v6 valuesForPasteboardType:a3 inItemSet:v5];
  }

  else
  {
    v8 = +[UIPasteboard generalPasteboard];

    return [(UIPasteboard *)v8 dataForPasteboardType:a3 inItemSet:v5];
  }
}

- (int64_t)getPasteboardChangeCount
{
  v2 = +[UIPasteboard generalPasteboard];

  return [(UIPasteboard *)v2 changeCount];
}

- (void)showPlaybackTargetPicker:(BOOL)a3 fromRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  playbackTargetPicker = self->_playbackTargetPicker;
  if (!playbackTargetPicker)
  {
    v11 = objc_alloc_init(UIWebPlaybackTargetPicker);
    self->_playbackTargetPicker = v11;
    [(UIWebPlaybackTargetPicker *)v11 setDelegate:self];
    playbackTargetPicker = self->_playbackTargetPicker;
  }

  [(UIWebPlaybackTargetPicker *)playbackTargetPicker show:v8 fromRect:x, y, width, height];
}

- (int)deviceOrientation
{
  orientation = self->_orientation;
  switch(orientation)
  {
    case 1:
      return 0;
    case 3:
      return 90;
    case 4:
      return -90;
    case 2:
      return 180;
  }

  return 0;
}

- (BOOL)shouldSuppressPasswordEcho
{
  if ([(UIScreen *)[(UIWindow *)[(UIView *)self window] screen] isCaptured])
  {
    return 1;
  }

  return +[UIKeyboard isInHardwareKeyboardMode];
}

- (void)_webthread_webView:(id)a3 attachRootLayer:(id)a4
{
  if (!self->_contentLayersHostingLayer)
  {
    self->_contentLayersHostingLayer = [MEMORY[0x1E6979398] layer];
    v6 = [MEMORY[0x1E695DFB0] null];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"anchorPoint", v6, @"bounds", v6, @"contents", v6, @"opacity", v6, @"position", v6, @"shadowColor", v6, @"sublayerTransform", v6, @"sublayers", v6, @"transform", v6, @"zPosition", v6, @"hidden", 0}];
    -[CALayer setStyle:](self->_contentLayersHostingLayer, "setStyle:", [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:@"actions"]);
    [(CALayer *)self->_contentLayersHostingLayer setAnchorPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    contentLayersHostingLayer = self->_contentLayersHostingLayer;
    [(UIView *)self bounds];
    [(CALayer *)contentLayersHostingLayer setFrame:?];
    if ((*(self + 952) & 0x10) != 0)
    {
      v9 = self->_contentLayersHostingLayer;
      [(_UIWebViewportHandler *)self->_viewportHandler documentBounds];
      [(CALayer *)v9 setBounds:?];
    }

    memset(&v15, 0, sizeof(v15));
    CATransform3DMakeScale(&v15, self->_documentScale, self->_documentScale, 1.0);
    v10 = self->_contentLayersHostingLayer;
    v14 = v15;
    [(CALayer *)v10 setTransform:&v14];
    v11 = [-[UIView _layer](self "_layer")];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__UIWebDocumentView__webthread_webView_attachRootLayer___block_invoke;
    v13[3] = &unk_1E711F398;
    v13[4] = self;
    [v11 enumerateObjectsUsingBlock:v13];
    if (![(CALayer *)self->_contentLayersHostingLayer superlayer])
    {
      [-[UIView _layer](self "_layer")];
      if (a4)
      {
        goto LABEL_6;
      }

LABEL_10:
      v12 = [(NSArray *)[(CALayer *)self->_contentLayersHostingLayer sublayers] copy];
      [v12 makeObjectsPerformSelector:sel_removeFromSuperlayer];

      return;
    }
  }

  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (![(UIWebDocumentView *)self _shouldResetForNewPage])
  {
    [(CALayer *)self->_contentLayersHostingLayer setHidden:1];
  }

  [(CALayer *)self->_contentLayersHostingLayer addSublayer:a4];
}

uint64_t __56__UIWebDocumentView__webthread_webView_attachRootLayer___block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = result;
    result = [a2 delegate];
    if (result)
    {
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        result = [objc_msgSend(*(v6 + 32) "_layer")];
        *a4 = 1;
      }
    }
  }

  return result;
}

- (void)webViewDidCommitCompositingLayerChanges:(id)a3
{
  if (*(self + 957))
  {
    [(UIWebDocumentView *)self _updateSubviewCaches];
  }

  [(UIWebDocumentView *)self _reshapePlugInViews];
}

- (void)_updateSubviewCaches
{
  self->_additionalSubviews = [(UIWebDocumentView *)self _collectAdditionalSubviews];

  [(UIWebDocumentView *)self _setSubviewCachesNeedUpdate:0];
}

- (BOOL)_shouldUpdateSubviewCachesForPlugins
{
  v15 = *MEMORY[0x1E69E9840];
  plugInViews = self->_plugInViews;
  if (plugInViews)
  {
    plugInViews = CFDictionaryGetCount(plugInViews);
    if (plugInViews)
    {
      v4 = [(__CFDictionary *)self->_plugInViews allValues];
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      plugInViews = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (plugInViews)
      {
        v5 = plugInViews;
        v6 = *v11;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v11 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = *(*(&v10 + 1) + 8 * i);
            if ([v8 willProvidePluginLayer] && !-[NSArray containsObject:](self->_additionalSubviews, "containsObject:", v8))
            {
              LOBYTE(plugInViews) = 1;
              return plugInViews;
            }
          }

          v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
          LOBYTE(plugInViews) = 0;
          if (v5)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return plugInViews;
}

- (id)subviews
{
  v3 = *(self + 957);
  if ((v3 & 1) == 0)
  {
    v4 = [(UIWebDocumentView *)self _shouldUpdateSubviewCachesForPlugins];
    v3 = *(self + 957);
    if (v4)
    {
      v3 |= 1u;
      *(self + 957) = v3;
    }
  }

  if (v3)
  {
    [(UIWebDocumentView *)self _updateSubviewCaches];
  }

  v7.receiver = self;
  v7.super_class = UIWebDocumentView;
  v5 = [(UIView *)&v7 subviews];
  if ([(NSArray *)self->_additionalSubviews count]&& ![(UIWebDocumentView *)self _isInspectorSearchingForNode])
  {
    return [(NSArray *)self->_additionalSubviews arrayByAddingObjectsFromArray:v5];
  }

  return v5;
}

- (void)webViewDidDrawTiles:(id)a3
{
  *(self + 956) |= 0x80u;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [delegate webViewDidDrawTiles:self];
  }
}

- (void)_renderUnbufferedInContext:(CGContext *)a3
{
  if ((WebThreadIsCurrent() & 1) == 0)
  {
    WebThreadLock();
  }

  [-[WAKWindow contentView](self->super._wakWindow "contentView")];
  WKGetCurrentGraphicsContext();
  WKSetCurrentGraphicsContext();
  wakWindow = self->super._wakWindow;
  ClipBoundingBox = CGContextGetClipBoundingBox(a3);
  [(WAKWindow *)wakWindow displayRect:ClipBoundingBox.origin.x, ClipBoundingBox.origin.y, ClipBoundingBox.size.width, ClipBoundingBox.size.height];
  WKSetCurrentGraphicsContext();
  v6 = [(CALayer *)self->_contentLayersHostingLayer isHidden];
  [(CALayer *)self->_contentLayersHostingLayer setHidden:0];
  CGContextSaveGState(a3);
  contentLayersHostingLayer = self->_contentLayersHostingLayer;
  if (contentLayersHostingLayer)
  {
    [(CALayer *)contentLayersHostingLayer transform];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  CATransform3DGetAffineTransform(&transform, &v8);
  CGContextConcatCTM(a3, &transform);
  [(CALayer *)self->_contentLayersHostingLayer renderInContext:a3];
  CGContextRestoreGState(a3);
  [(CALayer *)self->_contentLayersHostingLayer setHidden:v6];
}

- (id)checkSpellingOfString:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!self->_textChecker)
  {
    self->_textChecker = [[UITextChecker alloc] _initWithAsynchronousLoading:1];
  }

  v5 = [MEMORY[0x1E695DF70] array];
  if ([(UITextChecker *)self->_textChecker _doneLoading])
  {
    v6 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
    if ([objc_msgSend(v6 "multilingualLanguages")])
    {
      v7 = [v6 multilingualLanguages];
    }

    else
    {
      if (![v6 primaryLanguage])
      {
        v8 = MEMORY[0x1E695E0F0];
LABEL_9:
        v9 = [a3 length];
        v10 = 0;
        do
        {
          v11 = [(UITextChecker *)self->_textChecker rangeOfMisspelledWordInString:a3 range:0 startingAt:v9 wrap:v10 languages:0, v8];
          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v13 = v11;
          v14 = v12;
          [v5 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", v11, v12)}];
          v10 = v13 + v14;
        }

        while (v10 < [a3 length]);
        return v5;
      }

      v16[0] = [v6 languageWithRegion];
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    }

    v8 = v7;
    goto LABEL_9;
  }

  return v5;
}

- (void)_reshapePlugInViews
{
  v13 = *MEMORY[0x1E69E9840];
  plugInViews = self->_plugInViews;
  if (plugInViews)
  {
    v3 = [(__CFDictionary *)plugInViews allValues];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * i) reshape];
        }

        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)redrawScaledDocument
{
  [(UIWebDocumentView *)self _restoreFlattenedContentLayers];
  *(self + 957) &= ~2u;
  WebThreadLock();
  [(UIView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIWebDocumentView *)self _zoomedDocumentScale];
  v12 = v11;
  v13 = *(MEMORY[0x1E695EFD0] + 16);
  v27[0] = *MEMORY[0x1E695EFD0];
  v27[1] = v13;
  v27[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(UIWebTiledView *)self setTransform:v27];
  v14 = round(v4);
  v15 = round(v6);
  [(_UIWebViewportHandler *)self->_viewportHandler availableViewSize];
  v17 = round(v10);
  v19 = round(v18);
  if (v17 >= v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  v21 = round(v8);
  v22 = round(v16);
  if (v21 >= v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  *(self + 954) |= 0x40u;
  [(UIWebDocumentView *)self setFrame:v14, v15, v23, v20];
  documentScale = self->_documentScale;
  viewportHandler = self->_viewportHandler;
  if ((*(self + 953) & 8) != 0)
  {
    [(_UIWebViewportHandler *)viewportHandler minimumScale];
    if (v12 > *&v26)
    {
      *&v26 = v12;
    }
  }

  else
  {
    [(_UIWebViewportHandler *)viewportHandler initialScale];
  }

  [(UIWebDocumentView *)self _setDocumentScale:v26];
  *(self + 954) &= ~0x40u;
  if (self->_documentScale != documentScale)
  {
    [(UIWebDocumentView *)self _updateScrollViewBoundaryZoomScales];
    [(UIWebTiledView *)self removeForegroundTiles];
    [(UIWebTiledView *)self layoutTilesNow];
    [(UIWebDocumentView *)self _reshapePlugInViews];
  }

  [(UIWebDocumentView *)self updateInteractionElements];
}

- (void)updateInteractionElements
{
  [(UITextInteractionAssistant *)self->_textSelectionAssistant setNeedsSelectionDisplayUpdate];
  if ([(UIWebDocumentView *)self isEditing])
  {
    v3 = [(UIWebDocumentView *)self inputDelegate];
    if (objc_opt_respondsToSelector())
    {

      [(UITextInputDelegate *)v3 layoutHasChanged];
    }
  }
}

- (void)willRotateInteractionSheet
{
  p_interaction = &self->_interaction;
  if (self->_interaction.var0 && ([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1)
  {
    var0 = p_interaction->var0;

    [(UIWebRotatingAlertController *)var0 willRotate];
  }
}

- (void)didRotateInteractionSheet
{
  p_interaction = &self->_interaction;
  if (self->_interaction.var0 && ([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1)
  {
    var0 = p_interaction->var0;

    [(UIWebRotatingAlertController *)var0 didRotate];
  }
}

- (void)sendOrientationEventForOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    v5 = [(WebView *)self->_webView mainFrame];

    [(WebFrame *)v5 deviceOrientationChanged];
  }
}

- (void)setShouldOnlyRecognizeGesturesOnActiveElements:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 956) = *(self + 956) & 0xF7 | v3;
}

- (void)setMediaPlaybackAllowsAirPlay:(BOOL)a3
{
  v3 = a3;
  if ((WebThreadIsLocked() & 1) == 0)
  {
    WebThreadLock();
  }

  v5 = [(WebView *)self->_webView preferences];

  [(WebPreferences *)v5 setMediaPlaybackAllowsAirPlay:v3];
}

- (BOOL)mediaPlaybackAllowsAirPlay
{
  if ((WebThreadIsLocked() & 1) == 0)
  {
    WebThreadLock();
  }

  v3 = [(WebView *)self->_webView preferences];

  return [(WebPreferences *)v3 mediaPlaybackAllowsAirPlay];
}

- (void)setAlwaysConstrainsScale:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 953) = *(self + 953) & 0xFD | v3;
}

- (void)setDoubleTapEnabled:(BOOL)a3
{
  v3 = a3;
  [(UIGestureRecognizer *)self->_doubleTapGestureRecognizer setEnabled:?];
  twoFingerDoubleTapGestureRecognizer = self->_twoFingerDoubleTapGestureRecognizer;

  [(UIGestureRecognizer *)twoFingerDoubleTapGestureRecognizer setEnabled:v3];
}

- (BOOL)_handleSingleTapZoomPreClickAtLocation:(CGPoint)a3
{
  if ((*(self + 953) & 4) == 0 || (*(self + 953) & 0x20) != 0)
  {
    return 0;
  }

  else
  {
    return _UIWebSingleTapZoomAtLocationPreClick(self, a3.x, a3.y);
  }
}

- (void)_handleSingleTapZoomPostClickAtLocation:(CGPoint)a3
{
  if ((*(self + 953) & 4) != 0 && (*(self + 953) & 0x20) == 0)
  {
    _UIWebSingleTapZoomAtLocationPostClick(self, a3.x, a3.y);
  }
}

- (void)_handleDoubleTapAtLocation:(CGPoint)a3
{
  if ((*(self + 953) & 4) != 0 && (*(self + 953) & 0x20) == 0)
  {
    _UIWebDoubleTapAtLocation(self, a3.x, a3.y);
  }
}

- (void)_handleTwoFingerDoubleTapAtLocation:(CGPoint)a3
{
  if ((*(self + 953) & 4) != 0 && (*(self + 953) & 0x20) == 0)
  {
    zoomToMinimumScaleCenteringOnLocation(self, a3.x, a3.y);
  }
}

- (CGRect)doubleTapRect
{
  x = self->_doubleTapRect.origin.x;
  y = self->_doubleTapRect.origin.y;
  width = self->_doubleTapRect.size.width;
  height = self->_doubleTapRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_focusAndAssistFormNode:(id)a3
{
  WebThreadLock();

  [a3 focus];
}

- (void)setIsStandaloneEditableView:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 954) = *(self + 954) & 0xFD | v3;
}

- (void)setStandaloneEditingElement:(id)a3
{
  standaloneEditingElement = self->_standaloneEditingElement;
  self->_standaloneEditingElement = a3;
}

- (void)setIsWidgetEditingView:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 954) = *(self + 954) & 0xFB | v3;
}

- (BOOL)updateKeyboardStateOnResponderChanges
{
  result = 0;
  if ((*(self + 952) & 8) == 0)
  {
    if ((*(self + 954) & 4) != 0)
    {
      return 1;
    }

    if ((*(self + 954) & 2) != 0)
    {
      return 1;
    }

    m_parentTextView = self->m_parentTextView;
    if (m_parentTextView)
    {
      if ([m_parentTextView isEditable])
      {
        return 1;
      }
    }
  }

  return result;
}

- (BOOL)becomeFirstResponder
{
  m_parentTextView = self->m_parentTextView;
  if (m_parentTextView)
  {

    return [m_parentTextView becomeFirstResponder];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIWebDocumentView;
    if (![(UIView *)&v6 becomeFirstResponder])
    {
      return 0;
    }

    if (self->_learnSession)
    {
      [(UIWebDocumentView *)self _removeShortcutController:0];
    }

    WebThreadLock();
    *(self + 956) |= 0x10u;
    [(WAKWindow *)self->super._wakWindow makeFirstResponder:[(WebFrameView *)[(WebFrame *)[(WebView *)self->_webView mainFrame] frameView] documentView]];
    v5 = 1;
    [(UITextInteractionAssistant *)self->_textSelectionAssistant setSelectionDisplayVisible:1];
    [(UITextInteractionAssistant *)self->_textSelectionAssistant activateSelection];
    *(self + 956) &= ~0x10u;
    return v5;
  }
}

- (void)deferredBecomeFirstResponder
{
  if (self->m_parentTextView)
  {
    self = self->m_parentTextView;
  }

  [(UIWebDocumentView *)self becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v3 = self;
  if ((*(self + 956) & 1) != 0 || ![(UIView *)self isFirstResponder])
  {
    return 1;
  }

  if (![(UIWebDocumentView *)self canResignFirstResponder])
  {
    return 0;
  }

  m_parentTextView = self->m_parentTextView;
  if (m_parentTextView)
  {
    if (![m_parentTextView canResignFirstResponder])
    {
      return 0;
    }
  }

  *(self + 956) |= 1u;
  v5 = 1;
  [(UIWebDocumentView *)self cancelInteractionWithImmediateDisplay:1];
  v7.receiver = self;
  v7.super_class = UIWebDocumentView;
  [(UIResponder *)&v7 resignFirstResponder];
  [self->m_parentTextView resignFirstResponder];
  [(UIWebDocumentView *)self _removeDefinitionController:1];
  [(UIWebDocumentView *)self _removeShareController:1];
  [(UIWebDocumentView *)self clearWKFirstResponder];
  [(UITextInteractionAssistant *)self->_textSelectionAssistant resignedFirstResponder];
  *(self + 956) &= ~1u;
  return v5;
}

- (id)_responderForBecomeFirstResponder
{
  WebThreadLock();
  v3 = [(WebView *)self->_webView editingDelegate];
  if (!v3)
  {
    return self;
  }

  v4 = v3;
  if (([v3 __isKindOfUIResponder] & 1) == 0)
  {
    return self;
  }

  return v4;
}

- (BOOL)makeWKFirstResponder
{
  if (self->_learnSession)
  {
    [(UIWebDocumentView *)self _removeShortcutController:0];
  }

  WebThreadLock();
  v3 = [(WebFrameView *)[(WebFrame *)[(WebView *)self->_webView mainFrame] frameView] documentView];
  wakWindow = self->super._wakWindow;

  return [(WAKWindow *)wakWindow makeFirstResponder:v3];
}

- (BOOL)clearWKFirstResponder
{
  WebThreadLock();
  if (_MergedGlobals_25[0] != 1)
  {
    v4 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v4, sel_resignFirstResponder);
    Implementation = method_getImplementation(InstanceMethod);
    v7 = [objc_opt_class() superclass];
    v8 = class_getInstanceMethod(v7, sel_resignFirstResponder);
    v9 = method_getImplementation(v8);
    _MergedGlobals_25[0] = 1;
    byte_1ED498E71 = Implementation != v9;
    if (Implementation == v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    wakWindow = self->super._wakWindow;
    goto LABEL_6;
  }

  if (byte_1ED498E71)
  {
    goto LABEL_5;
  }

LABEL_3:
  wakWindow = [(WAKWindow *)self->super._wakWindow firstResponder];
LABEL_6:
  [(WAKWindow *)wakWindow resignFirstResponder];
  return 1;
}

- (void)ensureSelection
{
  WebThreadLock();
  if ([(UIWebDocumentView *)self makeWKFirstResponder])
  {
    if (![(UIWebDocumentView *)self hasSelection])
    {
      v3 = [(WebFrame *)[(WebView *)self->_webView mainFrame] DOMDocument];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [(DOMDocument *)v3 body];
        v5 = self->_standaloneEditingElement ? self->_standaloneEditingElement : v4;
        if ([(DOMHTMLElement *)v5 isContentEditable])
        {
          v6 = [(DOMDocument *)v3 createRange];
          [(DOMRange *)v6 setStart:v5 offset:0];
          [(DOMRange *)v6 setEnd:v5 offset:0];
          [(WebView *)self->_webView setSelectedDOMRange:v6 affinity:1];

          [(DOMRange *)v6 detach];
        }
      }
    }
  }
}

- (void)setInteractionAssistantGestureRecognizers
{
  if (self->m_parentTextView)
  {
    textSelectionAssistant = [self->m_parentTextView interactionAssistant];
  }

  else
  {
    textSelectionAssistant = self->_textSelectionAssistant;
  }

  [(UITextInteractionAssistant *)textSelectionAssistant setGestureRecognizers];
}

- (void)_undoManagerDidUndo:(id)a3
{
  if (pthread_main_np())
  {
    if (-[UIView isFirstResponder](self, "isFirstResponder") || [self->m_parentTextView isFirstResponder])
    {
      [+[UIKeyboardImpl activeInstance](UIKeyboardImpl "activeInstance")];

      [(UIWebDocumentView *)self setInteractionAssistantGestureRecognizers];
    }
  }

  else
  {

    [(UIWebDocumentView *)self performSelectorOnMainThread:a2 withObject:a3 waitUntilDone:0];
  }
}

- (void)_undoManagerDidRedo:(id)a3
{
  if (pthread_main_np())
  {
    if (-[UIView isFirstResponder](self, "isFirstResponder") || [self->m_parentTextView isFirstResponder])
    {
      [+[UIKeyboardImpl activeInstance](UIKeyboardImpl "activeInstance")];

      [(UIWebDocumentView *)self setInteractionAssistantGestureRecognizers];
    }
  }

  else
  {

    [(UIWebDocumentView *)self performSelectorOnMainThread:a2 withObject:a3 waitUntilDone:0];
  }
}

- (id)undoManagerForWebView:(id)a3
{
  result = self->_undoManager;
  if (!result)
  {
    self->_undoManager = objc_alloc_init(WebThreadSafeUndoManager);
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__undoManagerDidUndo_ name:*MEMORY[0x1E696AA30] object:self->_undoManager];
    [v5 addObserver:self selector:sel__undoManagerDidRedo_ name:*MEMORY[0x1E696AA28] object:self->_undoManager];
    return self->_undoManager;
  }

  return result;
}

+ (id)standardTextViewPreferences
{
  result = standardTextViewPreferences_sTextViewPreferences;
  if (!standardTextViewPreferences_sTextViewPreferences)
  {
    WebThreadLock();
    standardTextViewPreferences_sTextViewPreferences = [objc_alloc(MEMORY[0x1E69E2F78]) initWithIdentifier:@"com.apple.uikit.text"];
    [standardTextViewPreferences_sTextViewPreferences setAutosaves:0];
    [standardTextViewPreferences_sTextViewPreferences setJavaEnabled:0];
    [standardTextViewPreferences_sTextViewPreferences setJavaScriptEnabled:0];
    [standardTextViewPreferences_sTextViewPreferences setPlugInsEnabled:0];
    [standardTextViewPreferences_sTextViewPreferences setDatabasesEnabled:0];
    [standardTextViewPreferences_sTextViewPreferences setLocalStorageEnabled:0];
    [standardTextViewPreferences_sTextViewPreferences setOfflineWebApplicationCacheEnabled:0];
    [standardTextViewPreferences_sTextViewPreferences setDiskImageCacheEnabled:0];
    [standardTextViewPreferences_sTextViewPreferences setAcceleratedDrawingEnabled:0];
    return standardTextViewPreferences_sTextViewPreferences;
  }

  return result;
}

- (void)setContinuousSpellCheckingEnabled:(BOOL)a3
{
  v3 = a3;
  WebThreadLock();
  webView = self->_webView;

  [(WebView *)webView setContinuousSpellCheckingEnabled:v3];
}

- (BOOL)handleKeyTextCommandForCurrentEvent
{
  v2 = +[UIKeyboardImpl sharedInstance];

  return [(UIKeyboardImpl *)v2 handleKeyTextCommandForCurrentEvent];
}

- (BOOL)handleKeyAppCommandForCurrentEvent
{
  v2 = +[UIKeyboardImpl sharedInstance];

  return [(UIKeyboardImpl *)v2 handleKeyAppCommandForCurrentEvent];
}

- (void)addInputString:(id)a3 withFlags:(unint64_t)a4
{
  v6 = +[UIKeyboardImpl sharedInstance];

  [(UIKeyboardImpl *)v6 addInputString:a3 withFlags:a4];
}

- (void)deleteFromInput
{
  v2 = +[UIKeyboardImpl sharedInstance];

  [(UIKeyboardImpl *)v2 deleteFromInputWithFlags:0];
}

- (void)deleteFromInputWithFlags:(unint64_t)a3
{
  v4 = +[UIKeyboardImpl sharedInstance];

  [(UIKeyboardImpl *)v4 deleteFromInputWithFlags:a3];
}

- (void)disableClearsOnInsertion
{
  if (self->m_parentTextView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    m_parentTextView = self->m_parentTextView;

    [m_parentTextView disableClearsOnInsertion];
  }
}

- (void)deleteBackward
{
  if (+[UIDictationController shouldDeleteBackward])
  {
    WebThreadLock();
    [(WebView *)self->_webView deleteBackward:self];

    [(UIWebDocumentView *)self disableClearsOnInsertion];
  }
}

- (void)insertText:(id)a3
{
  if ([UIDictationController shouldInsertText:?])
  {
    WebThreadLock();
    [(WebView *)self->_webView insertText:a3];

    [(UIWebDocumentView *)self disableClearsOnInsertion];
  }
}

- (BOOL)isEditingSingleLineElement
{
  if ([(UIWebDocumentView *)self formElement])
  {
    [(UIWebDocumentView *)self formElement];
    objc_opt_class();
    return objc_opt_isKindOfClass() & 1;
  }

  else
  {

    return [(UIWebDocumentView *)self isSingleLineDocument];
  }
}

- (void)insertDictationResult:(id)a3 withCorrectionIdentifier:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = +[UIKeyboardImpl activeInstance];
  if (!-[UIWebDocumentView isEditingSingleLineElement](self, "isEditingSingleLineElement") || (a3 = [a3 singleLineResult], objc_msgSend(objc_msgSend(a3, "phrases"), "count")))
  {
    v8 = [a3 bestText];
    if (-[UIWebDocumentView keyboardInput:shouldInsertText:isMarkedText:](self, "keyboardInput:shouldInsertText:isMarkedText:", [v7 delegate], v8, 0))
    {
      WebThreadLock();
      [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textWillChange:self];
      v9 = [UIDictationUtilities metadataDictionaryForCorrectionIdentifier:a4];
      webView = self->_webView;
      v11 = v8;
      v12[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
      -[WebView insertDictationPhrases:metadata:](webView, "insertDictationPhrases:metadata:", [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1], v9);
      [(UITextInteractionAssistant *)[(UIWebDocumentView *)self interactionAssistant] setSelectionDisplayVisible:1];
      [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textDidChange:self];
      if ([(UIWebDocumentView *)self rangeToRestoreAfterDictation])
      {
        [(UIWebDocumentView *)self setSelectedDOMRange:[(UIWebDocumentView *)self rangeToRestoreAfterDictation] affinityDownstream:1];
        [(UIWebDocumentView *)self setRangeToRestoreAfterDictation:0];
      }
    }
  }
}

- (id)metadataDictionariesForDictationResults
{
  v10 = 0;
  v11 = 0;
  WebThreadLock();
  [(WebFrame *)[(WebView *)self->_webView mainFrame] getDictationResultRanges:&v11 andMetadatas:&v10];
  result = v10;
  if (v10)
  {
    result = [v10 count];
    if (result)
    {
      v4 = [v10 count];
      if (v4)
      {
        v5 = v4;
        for (i = 0; i != v5; ++i)
        {
          v7 = [v10 objectAtIndex:{i, v10}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v11 objectAtIndex:i];
            if (v8)
            {
              v9 = v8;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v7 setObject:-[WebFrame stringForRange:](-[WebView mainFrame](self->_webView forKey:{"mainFrame"), "stringForRange:", v9), @"fullText"}];
              }
            }
          }
        }
      }

      return v10;
    }
  }

  return result;
}

- (id)dictationResultMetadataForRange:(id)a3
{
  WebThreadLock();
  v5 = [(WebView *)self->_webView mainFrame];

  return [(WebFrame *)v5 dictationResultMetadataForRange:a3];
}

- (BOOL)_textPlaceholderHasBeenRemoved
{
  v3 = [(UIWebDocumentView *)self formElement];
  v4 = [(UIWebTextPlaceholder *)self->_textPlaceholder element];
  if (v3)
  {
    return [(DOMElement *)v4 parentNode]== 0;
  }

  else
  {
    return ![(DOMElement *)v4 inDocument];
  }
}

- (id)insertTextPlaceholderWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WebThreadLock();
  if ([(UIWebDocumentView *)self hasRangedSelection])
  {
    [(UIWebDocumentView *)self deleteBackward];
  }

  return [(UIWebDocumentView *)self _insertTextPlaceholderWithSize:width, height];
}

- (id)insertDictationResultPlaceholder
{
  WebThreadLock();
  if ([(UIWebDocumentView *)self hasRangedSelection])
  {
    [(UIWebDocumentView *)self deleteBackward];
  }

  [(UIWebDocumentView *)self _sizeForDictationResultPlaceholder];

  return [(UIWebDocumentView *)self _insertTextPlaceholderWithSize:?];
}

- (CGSize)_sizeForDictationResultPlaceholder
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self isCaretInEmptyParagraph];
  v4 = [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  v5 = [objc_msgSend(v4 getComputedStyle:objc_msgSend(v4 pseudoElement:{"body"), &stru_1EFB14550), "getPropertyValue:", @"line-height"}];
  if ([v5 isEqualToString:@"normal"])
  {
    [-[UIWebDocumentView fontForCaretSelection](self "fontForCaretSelection")];
  }

  else
  {
    [v5 floatValue];
    v6 = v7;
  }

  if (v3)
  {
    v8 = v6 + 3.0;
  }

  else
  {
    v8 = v6;
  }

  v9 = [(UITextInteractionAssistant *)[(UIWebDocumentView *)self interactionAssistant] activeSelection];
  [(UITextSelection *)v9 caretRectAtEndOfDocument];
  v12 = v11;
  if (v8 > v10 + v10 || v8 < 0.5)
  {
    v8 = v10;
  }

  [(UITextSelection *)v9 caretRectAtBeginOfDocument];
  dictatingIntoEmptyDocument = v14 == v12;
  [UIDictationLandingView widthForLineHeight:v8];
  v16 = v8;
  result.height = v16;
  result.width = v15;
  return result;
}

- (id)_insertTextPlaceholderWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WebThreadLock();
  v6 = [UIWebTextPlaceholder placeholderWithWebDocumentView:self];
  self->_textPlaceholder = v6;
  v7 = [objc_msgSend(-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  [(UIWebTextPlaceholder *)v6 setElement:v7];
  [v7 setAttribute:@"style" value:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"width: %.0fpx; height: %.0fpx; max-width: %.0fpx; max-height: %.0fpx; border: 1px solid red; display:inline-block; border: none; outline: none; opacity: 0; vertical-align: bottom;", *&width, *&height, *&width, *&height)}];
  [v7 setAttribute:@"class" value:@"-webkit-dictation-result-placeholder"];
  [-[UIWebDocumentView selectedDOMRange](self "selectedDOMRange")];
  if ([(UIWebDocumentView *)self formElement])
  {
    [-[UIWebDocumentView formElement](self "formElement")];
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *MEMORY[0x1E69E3030];
  webView = self->_webView;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__UIWebDocumentView__insertTextPlaceholderWithSize___block_invoke;
  v14[3] = &unk_1E712C1E8;
  v14[4] = self;
  self->_textPlaceholderRemovalObserver = [v8 addObserverForName:v9 object:webView queue:0 usingBlock:v14];
  [(WebFrame *)[(WebView *)self->_webView mainFrame] forceLayoutAdjustingViewSize:1];
  m_parentTextView = self->m_parentTextView;
  if (m_parentTextView)
  {
    [m_parentTextView webViewDidChange:0];
  }

  v12 = [objc_msgSend(-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  [v12 setStartAfter:v7];
  [v12 setEndAfter:v7];
  [(UIWebDocumentView *)self setSelectedDOMRange:v12 affinityDownstream:1];
  [(UITextInteractionAssistant *)[(UIWebDocumentView *)self interactionAssistant] selectionChanged];
  [(UIWebDocumentView *)self keyboardInputChanged:self];
  [(UIWebDocumentView *)self disableClearsOnInsertion];
  return v6;
}

uint64_t __52__UIWebDocumentView__insertTextPlaceholderWithSize___block_invoke(uint64_t a1)
{
  WebThreadLock();
  result = [*(a1 + 32) _textPlaceholderHasBeenRemoved];
  if (result)
  {
    v3 = +[UIDictationController sharedInstance];

    return [(UIDictationController *)v3 cancelDictation];
  }

  return result;
}

- (CGRect)frameForDictationResultPlaceholder:(id)a3
{
  if (self->_textPlaceholder == a3)
  {
    [objc_msgSend(a3 "element")];
    [(UIWebDocumentView *)self convertRectFromSelectedFrameCoordinates:?];
    v5 = v8;
    v6 = v9;
    v7 = v10;
  }

  else
  {
    v5 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v6 = *(MEMORY[0x1E695F058] + 16);
    v7 = *(MEMORY[0x1E695F058] + 24);
  }

  v11 = v4 + -3.0;
  if (IsMobileNotes())
  {
    [objc_msgSend(-[UIView _window](self "_window")];
    if (v12 > 1.0)
    {
      v11 = v11 + 7.5;
    }

    else
    {
      v11 = v11 + 8.0;
    }
  }

  v13 = v7 + 3.0;
  v14 = v5;
  v15 = v11;
  v16 = v6;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_finishedUsingTextPlaceholder
{
  self->_textPlaceholderRemovalObserver = 0;

  self->_textPlaceholder = 0;
}

- (void)_removeTextPlaceholder:(id)a3 willInsertResult:(BOOL)a4
{
  v4 = a4;
  WebThreadLock();
  if (v4)
  {
    [(UITextInteractionAssistant *)[(UIWebDocumentView *)self interactionAssistant] setSelectionDisplayVisible:0];
  }

  textPlaceholder = self->_textPlaceholder;
  if (textPlaceholder)
  {
    v8 = textPlaceholder == a3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 && self->_textPlaceholderRemovalObserver)
  {
    if ([(UIWebDocumentView *)self formElement])
    {
      [-[UIWebDocumentView formElement](self "formElement")];
    }

    dictatingIntoEmptyDocument = 0;
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    if (![(UIWebDocumentView *)self _textPlaceholderHasBeenRemoved])
    {
      v9 = [a3 element];
      v10 = [v9 previousSibling];
      for (i = 0; v10; v10 = [v10 previousSibling])
      {
        i = (i + 1);
      }

      v12 = [v9 parentNode];
      v13 = [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
      if ([v13 startContainer] != v12 || objc_msgSend(v13, "startOffset") != i + 1)
      {
        [(UIWebDocumentView *)self setRangeToRestoreAfterDictation:v13];
      }

      [v12 removeChild:v9];
      if (!v4)
      {
        [(WebFrame *)[(WebView *)self->_webView mainFrame] forceLayoutAdjustingViewSize:1];
        m_parentTextView = self->m_parentTextView;
        if (m_parentTextView)
        {
          [m_parentTextView webViewDidChange:0];
        }

        [(UIWebDocumentView *)self keyboardInputChanged:self];
      }

      v15 = [objc_msgSend(-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
      [v15 setStart:v12 offset:i];
      [v15 setEnd:v12 offset:i];
      [(UIWebDocumentView *)self setSelectedDOMRange:v15 affinityDownstream:1];
    }

    [(UIWebDocumentView *)self _finishedUsingTextPlaceholder];
  }
}

- (id)dictationInterpretations
{
  v2 = [(WebView *)self->_webView mainFrame];

  return [(WebFrame *)v2 interpretationsForCurrentRoot];
}

- (void)replaceRangeWithTextWithoutClosingTyping:(id)a3 replacementText:(id)a4
{
  [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textWillChange:self];
  [(UIWebDocumentView *)self clearMarkedText];
  WebThreadLock();
  v7 = [(UIWebDocumentView *)self _focusedOrMainFrame];
  v8 = [(UIResponder *)self _nsrangeForTextRange:a3];
  [v7 selectWithoutClosingTypingNSRange:{v8, v9}];
  if ([a4 length])
  {
    [(UIWebDocumentView *)self insertText:a4];
  }

  else
  {
    [(UIWebDocumentView *)self deleteBackward];
  }

  v10 = [(UIWebDocumentView *)self inputDelegate];

  [(UITextInputDelegate *)v10 textDidChange:self];
}

- (void)replaceCurrentWordWithText:(id)a3
{
  [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textWillChange:self];
  [(UIWebDocumentView *)self clearMarkedText];
  WebThreadLock();
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  if ([a3 length])
  {
    [(UIWebDocumentView *)self insertText:a3];
  }

  else
  {
    [(UIWebDocumentView *)self deleteBackward];
  }

  v5 = [(UIWebDocumentView *)self inputDelegate];

  [(UITextInputDelegate *)v5 textDidChange:self];
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(UIWebDocumentView *)self ensureSelection];
  WebThreadLock();
  [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textWillChange:self];
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  v8 = [(UIWebDocumentView *)self inputDelegate];

  [(UITextInputDelegate *)v8 textDidChange:self];
}

- (void)confirmMarkedText:(id)a3
{
  WebThreadLock();
  [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textWillChange:self];
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textDidChange:self];

  [(UIWebDocumentView *)self setInteractionAssistantGestureRecognizers];
}

- (unsigned)characterInRelationToCaretSelection:(int)a3
{
  v3 = *&a3;
  WebThreadLock();
  v5 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  return [v5 characterInRelationToCaretSelection:v3];
}

- (unsigned)characterAfterCaretSelection
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  return [v3 characterAfterCaretSelection];
}

- (id)fontForCaretSelection
{
  WebThreadLock();
  v4 = 0;
  return [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
}

- (id)textColorForCaretSelection
{
  m_parentTextView = self->m_parentTextView;
  if (m_parentTextView)
  {
    return [m_parentTextView textColor];
  }

  else
  {
    return +[UIColor blackColor];
  }
}

- (id)rectsForNSRange:(_NSRange)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  length = a3.length;
  location = a3.location;
  WebThreadLock();
  v7 = [(UIWebDocumentView *)self _focusedOrMainFrame];
  v3 = [v7 selectionRectsForRange:{objc_msgSend(v7, "convertNSRangeToDOMRange:", location, length)}];
  v8 = [v7 documentView];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        [v13 rect];
        [v8 convertRect:0 toView:?];
        [v13 setRect:?];
      }

      v10 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v3;
}

- (int)wordOffsetInRange:(id)a3
{
  WebThreadLock();
  v5 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  return [v5 wordOffsetInRange:a3];
}

- (void)replaceSelectionWithWebArchive:(id)a3 selectReplacement:(BOOL)a4 smartReplace:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  WebThreadLock();
  [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textWillChange:self];
  [objc_msgSend(-[UIWebDocumentView webView](self "webView")];
  v9 = [(UIWebDocumentView *)self inputDelegate];

  [(UITextInputDelegate *)v9 textDidChange:self];
}

- (_NSRange)selectionRange
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  v4 = [v3 _selectedNSRange];
  result.length = v5;
  result.location = v4;
  return result;
}

- (id)selectedDOMRange
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  return [v3 selectedDOMRange];
}

- (void)setSelectedDOMRange:(id)a3 affinityDownstream:(BOOL)a4
{
  v4 = a4;
  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  if (a3)
  {
    [objc_msgSend(objc_msgSend(objc_msgSend(a3 "startContainer")];
  }

  else
  {
    [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  }

  [(UIWebDocumentView *)self endSelectionChange];
}

- (id)rangeByMovingCurrentSelection:(int)a3
{
  v3 = *&a3;
  WebThreadLock();
  v5 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  return [v5 rangeByMovingCurrentSelection:v3];
}

- (id)rangeByExtendingCurrentSelection:(int)a3
{
  v3 = *&a3;
  WebThreadLock();
  v5 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  return [v5 rangeByExtendingCurrentSelection:v3];
}

- (void)extendCurrentSelection:(int)a3
{
  v3 = *&a3;
  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  v5 = [(UIWebDocumentView *)self _focusedOrMainFrame];
  [v5 setSelectedDOMRange:objc_msgSend(v5 affinity:"rangeByExtendingCurrentSelection:" closeTyping:{v3), v3 >= 0, 0}];

  [(UIWebDocumentView *)self endSelectionChange];
}

- (BOOL)hasSelection
{
  if (pthread_main_np())
  {
    WebThreadLock();
  }

  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  return [v3 hasSelection];
}

- (BOOL)selectionAtDocumentStart
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  return [v3 selectionAtDocumentStart];
}

- (BOOL)selectionAtWordStart
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  return [v3 selectionAtWordStart];
}

- (void)selectAll
{
  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  [(UIWebDocumentView *)self endSelectionChange];
}

- (void)setText:(id)a3
{
  [(UIView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UIView *)self superview];

    [(UIView *)v5 setText:a3];
  }

  else
  {
    WebThreadLock();
    [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textWillChange:self];
    [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
    v6 = [-[UIWebDocumentView textInputTraits](self "textInputTraits")];
    if (v6)
    {
      a3 = [a3 _stringByTrimmingCharactersInCFCharacterSet:v6];
    }

    [(UIWebDocumentView *)self insertText:a3];
    v7 = [(UIWebDocumentView *)self inputDelegate];

    [(UITextInputDelegate *)v7 textDidChange:self];
  }
}

- (id)text
{
  [(UIView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIView *)self superview];

    return [(UIView *)v3 text];
  }

  WebThreadLock();
  v5 = [(UIWebDocumentView *)self _focusedOrMainFrame];
  v6 = [v5 DOMDocument];
  v7 = [v6 documentElement];
  if (!v7)
  {
    return &stru_1EFB14550;
  }

  v8 = v7;
  v9 = [v6 createRange];
  [v9 setStart:v8 offset:0];
  [v9 setEnd:v8 offset:{objc_msgSend(objc_msgSend(v8, "childNodes"), "length")}];
  v10 = [v5 stringForRange:v9];
  v11 = [-[UIWebDocumentView textInputTraits](self "textInputTraits")];
  if (!v11)
  {
    return v10;
  }

  return [v10 _stringByTrimmingCharactersInCFCharacterSet:v11];
}

- (BOOL)hasContent
{
  WebThreadLockFromAnyThread();
  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];
  if (!v3)
  {
    v3 = [(WebView *)self->_webView mainFrame];
  }

  v4 = [(WebFrame *)v3 focusedNodeHasContent];
  WebThreadUnlockFromAnyThread();
  return v4;
}

- (void)setCaretChangeListener:(id)a3
{
  WebThreadLock();
  webView = self->_webView;

  [(WebView *)webView setCaretChangeListener:a3];
}

- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  if (!self->m_parentTextView)
  {
    return 1;
  }

  length = a4.length;
  location = a4.location;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  m_parentTextView = self->m_parentTextView;

  return [m_parentTextView keyboardInput:a3 shouldReplaceTextInRange:location replacementText:{length, a5}];
}

- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5
{
  v5 = a5;
  if (self->m_parentTextView)
  {
    m_parentTextView = self->m_parentTextView;
  }

  else
  {
    v9 = [(UIWebDocumentView *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return 1;
    }

    m_parentTextView = v9;
  }

  return [m_parentTextView keyboardInput:a3 shouldInsertText:a4 isMarkedText:v5];
}

- (BOOL)keyboardInputShouldDelete:(id)a3
{
  if (self->m_parentTextView)
  {
    m_parentTextView = self->m_parentTextView;

    return [m_parentTextView keyboardInputShouldDelete:?];
  }

  else
  {
    v6 = [(UIWebDocumentView *)self delegate];
    if (objc_opt_respondsToSelector())
    {

      return [v6 keyboardInputChanged:a3];
    }

    else
    {
      return 1;
    }
  }
}

- (BOOL)keyboardInputChanged:(id)a3
{
  m_parentTextView = self->m_parentTextView;
  if (m_parentTextView)
  {
    [m_parentTextView keyboardInputChanged:a3];
  }

  v6 = [(UIWebDocumentView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 keyboardInputChanged:a3];
  }

  return 1;
}

- (void)keyboardInputChangedSelection:(id)a3
{
  m_parentTextView = self->m_parentTextView;
  if (m_parentTextView)
  {
    [m_parentTextView keyboardInputChangedSelection:a3];
  }

  v6 = [(UIWebDocumentView *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [v6 keyboardInputChangedSelection:a3];
  }
}

- (id)automaticallySelectedOverlay
{
  v2 = self;
  if (!self->m_parentTextView)
  {
    return v2;
  }

  v3 = objc_opt_respondsToSelector();
  v2 = v2->m_parentTextView;
  if ((v3 & 1) == 0)
  {
    return v2;
  }

  return [(UIWebDocumentView *)v2 automaticallySelectedOverlay];
}

- (void)setBottomBufferHeight:(double)a3
{
  m_parentTextView = self->m_parentTextView;
  if (m_parentTextView)
  {
    [m_parentTextView setBottomBufferHeight:a3];
  }
}

- (void)handleKeyWebEvent:(id)a3
{
  WebThreadLock();
  v5 = [(WebView *)self->_webView mainFrame];

  [(WebFrame *)v5 _handleKeyEvent:a3];
}

uint64_t __42__UIWebDocumentView_setPaused_withEvents___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 432) mainFrame];
  v3 = v2;
  if (*(a1 + 40) == 1 && *(a1 + 41) == 1)
  {
    [v2 prepareForPause];
  }

  [v3 setTimeoutsPaused:*(a1 + 41)];
  result = [v3 setPluginsPaused:*(a1 + 41)];
  if (*(a1 + 40) == 1 && (*(a1 + 41) & 1) == 0)
  {

    return [v3 resumeFromPause];
  }

  return result;
}

- (id)webView:(id)a3 plugInViewWithArguments:(id)a4 fromPlugInPackage:(id)a5
{
  if (![(UIWebDocumentView *)self mediaPlaybackAllowsAirPlay])
  {
    v8 = MEMORY[0x1E69E3020];
    v9 = [objc_msgSend(a4 objectForKey:{*MEMORY[0x1E69E3020]), "mutableCopy"}];
    [v9 setValue:@"deny" forKey:@"airplay"];
    [v9 setValue:@"deny" forKey:@"_media_element_airplay_"];
    a4 = [a4 mutableCopy];
    [a4 setValue:v9 forKey:*v8];
  }

  v10 = [objc_msgSend(a5 "bundle")];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v11 = [v10 plugInViewWithArguments:a4];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = [[UIWebPlugInView alloc] initWithWebView:self plugInView:v11];
  if (v13)
  {
    v14 = [objc_msgSend(a5 "bundle")];
    -[UIWebPlugInView setIsQuickTimePlugIn:](v13, "setIsQuickTimePlugIn:", [v14 isEqualToString:@"com.apple.quicktime.plugin"]);
    -[UIWebPlugInView setIsMapViewPlugIn:](v13, "setIsMapViewPlugIn:", [v14 isEqualToString:@"com.apple.mapview.plugin"]);
    -[UIWebPlugInView setIsiAdPlugIn:](v13, "setIsiAdPlugIn:", [v14 isEqualToString:@"com.apple.iad.plugin"]);
    plugInViews = self->_plugInViews;
    if (!plugInViews)
    {
      plugInViews = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      self->_plugInViews = plugInViews;
    }

    CFDictionarySetValue(plugInViews, v12, v13);
  }

  return v13;
}

- (void)webView:(id)a3 didHideFullScreenForPlugInView:(id)a4
{
  if ((*(self + 954) & 0x20) != 0)
  {
    *(self + 954) &= ~0x20u;
    if (![(UIWebDocumentView *)self isShowingFullScreenPlugInUI:a3]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      delegate = self->_delegate;

      [delegate webViewWillHideFullScreenPlugInUI:self];
    }
  }
}

- (void)didRemovePlugInView:(id)a3
{
  if (a3)
  {
    CFDictionaryRemoveValue(self->_plugInViews, [a3 plugInView]);

    [(UIWebDocumentView *)self _setSubviewCachesNeedUpdate:1];
  }
}

- (BOOL)hasPlugInSubviews
{
  plugInViews = self->_plugInViews;
  if (plugInViews)
  {
    LOBYTE(plugInViews) = CFDictionaryGetCount(plugInViews) != 0;
  }

  return plugInViews;
}

- (void)webView:(id)a3 willAddPlugInView:(id)a4
{
  v6 = [a4 plugInView];
  plugInViews = self->_plugInViews;
  if (!plugInViews || !CFDictionaryGetValue(plugInViews, v6))
  {
    [a4 setWebView:self];
    Mutable = self->_plugInViews;
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      self->_plugInViews = Mutable;
    }

    CFDictionarySetValue(Mutable, v6, a4);
    [a4 reshape];

    [(UIWebDocumentView *)self _setSubviewCachesNeedUpdate:1];
  }
}

- (UIColor)insertionPointColor
{
  v2 = [(WebView *)self->_webView mainFrame];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v3 = [(WebFrame *)v2 caretColor]) != 0)
  {

    return [UIColor colorWithCGColor:v3];
  }

  else
  {

    return +[UIColor insertionPointColor];
  }
}

- (id)textInputTraits
{
  result = self->_traits;
  if (!result)
  {
    result = objc_alloc_init(UITextInputTraits);
    self->_traits = result;
  }

  return result;
}

- (void)forwardInvocation:(id)a3
{
  v5 = [(UIWebDocumentView *)self textInputTraits];
  [a3 selector];
  if (objc_opt_respondsToSelector())
  {

    [a3 invokeWithTarget:v5];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIWebDocumentView;
    [(UIWebDocumentView *)&v6 forwardInvocation:a3];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  result = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  if (!result)
  {
    v5 = objc_opt_class();

    return [v5 instanceMethodSignatureForSelector:a3];
  }

  return result;
}

- (void)takeTraitsFrom:(id)a3
{
  v4 = [(UIWebDocumentView *)self textInputTraits];

  [v4 takeTraitsFrom:a3];
}

- (UITextInteractionAssistant)interactionAssistant
{
  result = objc_getAssociatedObject(self, &_UITextInputImplicitInteractionAssistantKey);
  if (!result)
  {
    result = self->_textSelectionAssistant;
    if (!result)
    {
      m_parentTextView = self->m_parentTextView;
      if (m_parentTextView && [m_parentTextView interactionAssistant])
      {
        v5 = self->m_parentTextView;

        return [v5 interactionAssistant];
      }

      else
      {
        if (!self->_initiatingTextSelectionAssistant || ([UIApp isSuspended] & 1) == 0)
        {
          self->_initiatingTextSelectionAssistant = 1;
          self->_textSelectionAssistant = [[UITextInteractionAssistant alloc] initWithView:self];
          self->_initiatingTextSelectionAssistant = 0;
        }

        return self->_textSelectionAssistant;
      }
    }
  }

  return result;
}

- (BOOL)_restoreFirstResponder
{
  v3 = [(UIWebDocumentView *)self interactionAssistant];
  if (v3)
  {
    [(UITextInteractionAssistant *)v3 checkEditabilityAndSetFirstResponderIfNecessary];

    return [(UIView *)self isFirstResponder];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UIWebDocumentView;
    return [(UIResponder *)&v5 _restoreFirstResponder];
  }
}

- (BOOL)isEditable
{
  if (!self->m_parentTextView || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  m_parentTextView = self->m_parentTextView;

  return [m_parentTextView isEditable];
}

- (BOOL)isEditing
{
  if (!self->m_parentTextView || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  m_parentTextView = self->m_parentTextView;

  return [m_parentTextView isEditing];
}

- (void)beginSelectionChange
{
  if (!UIWebCurrentUserInterfaceIdiomIsSmallScreen())
  {
    [(_UITextServiceSession *)self->_definitionSession dismissTextServiceAnimated:1];
    [(_UITextServiceSession *)self->_shareSession dismissTextServiceAnimated:1];
  }

  v3 = [(UIWebDocumentView *)self inputDelegate];

  [(UITextInputDelegate *)v3 selectionWillChange:self];
}

- (void)endSelectionChange
{
  v3 = [(UIWebDocumentView *)self inputDelegate];

  [(UITextInputDelegate *)v3 selectionDidChange:self];
}

- (CGRect)_selectionClipRect
{
  v3 = [(UIWebDocumentView *)self formElement];
  if (v3)
  {
    v4 = v3;
    WebThreadLock();
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    [v4 innerFrameQuad];
    v5 = [objc_msgSend(objc_msgSend(v4 "ownerDocument")];
    v10[0] = v11;
    v10[1] = v12;
    v10[2] = v13;
    v10[3] = v14;
    [v5 convertRect:0 toView:quadBoundingBox(v10)];
  }

  else
  {
    [(UIView *)self bounds];
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)beginFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UIWebDocumentView *)self interactionAssistant];

  [(UITextInteractionAssistant *)v5 beginFloatingCursorAtPoint:x, y];
}

- (void)updateFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UIWebDocumentView *)self interactionAssistant];

  [(UITextInteractionAssistant *)v5 updateFloatingCursorAtPoint:x, y];
}

- (void)updateFloatingCursorAtPoint:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v7 = [(UIWebDocumentView *)self interactionAssistant];

  [(UITextInteractionAssistant *)v7 updateFloatingCursorAtPoint:v4 animated:x, y];
}

- (void)endFloatingCursor
{
  v2 = [(UIWebDocumentView *)self interactionAssistant];

  [(UITextInteractionAssistant *)v2 endFloatingCursor];
}

- (void)cut:(id)a3
{
  if (-[UIWebDocumentView keyboardInputShouldDelete:](self, "keyboardInputShouldDelete:", [+[UIKeyboardImpl activeInstance](UIKeyboardImpl "activeInstance")]))
  {
    WebThreadLock();
    [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textWillChange:self];
    [(WebView *)self->_webView cut:a3];
    [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textDidChange:self];

    [(UIWebDocumentView *)self disableClearsOnInsertion];
  }
}

- (void)copy:(id)a3
{
  WebThreadLock();
  webView = self->_webView;

  [(WebView *)webView copy:a3];
}

- (void)toggleBoldface:(id)a3
{
  if ([(UIWebDocumentView *)self hasRichlyEditableSelection])
  {
    WebThreadLock();
    [(UIWebDocumentView *)self beginSelectionChange];
    [(WebView *)self->_webView toggleBold:a3];

    [(UIWebDocumentView *)self endSelectionChange];
  }
}

- (void)toggleItalics:(id)a3
{
  if ([(UIWebDocumentView *)self hasRichlyEditableSelection])
  {
    WebThreadLock();
    [(UIWebDocumentView *)self beginSelectionChange];
    [(WebView *)self->_webView toggleItalic:a3];

    [(UIWebDocumentView *)self endSelectionChange];
  }
}

- (void)toggleUnderline:(id)a3
{
  if ([(UIWebDocumentView *)self hasRichlyEditableSelection])
  {
    WebThreadLock();
    [(UIWebDocumentView *)self beginSelectionChange];
    [(WebView *)self->_webView toggleUnderline:a3];

    [(UIWebDocumentView *)self endSelectionChange];
  }
}

- (CGRect)_shortcutPresentationRect
{
  [objc_msgSend(-[UIWebDocumentView selectionRectsForDOMRange:](self selectionRectsForDOMRange:{-[UIWebDocumentView selectedDOMRange](self, "selectedDOMRange")), "objectAtIndex:", 0), "rect"}];
  v5 = round(v4);
  v7 = round(v6);
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v7;
  result.origin.x = v5;
  return result;
}

- (void)_shareText:(id)a3 fromRect:(CGRect)a4
{
  v5 = [(UIResponder *)self _showServiceForType:8 withContext:[_UITextServiceSessionContext sessionContextWithText:a3 withRect:self withView:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height]];
  self->_shareSession = v5;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__UIWebDocumentView__shareText_fromRect___block_invoke;
  v6[3] = &unk_1E71259C0;
  v6[4] = self;
  [(_UITextServiceSession *)v5 setDismissedHandler:v6];
}

- (void)_share:(id)a3
{
  v4 = [(UIWebDocumentView *)self textInRange:[(UIWebDocumentView *)self selectedTextRange]];
  [(UIWebDocumentView *)self _shortcutPresentationRect];

  [(UIWebDocumentView *)self _shareText:v4 fromRect:?];
}

- (void)_shareElement:(id)a3 withURL:(id)a4
{
  v6 = [a4 _web_userVisibleString];
  [a3 boundingBox];

  [(UIWebDocumentView *)self _shareText:v6 fromRect:?];
}

- (void)_define:(id)a3
{
  v4 = [(UIResponder *)self _showServiceForType:16 withContext:[_UITextServiceSessionContext sessionContextForType:16 withTextInput:self]];
  self->_lookupSession = v4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__UIWebDocumentView__define___block_invoke;
  v5[3] = &unk_1E71259C0;
  v5[4] = self;
  [(_UITextServiceSession *)v4 setDismissedHandler:v5];
}

- (void)_translate:(id)a3
{
  v4 = [(UIResponder *)self _showServiceForType:32 withContext:[_UITextServiceSessionContext sessionContextForType:32 withTextInput:self]];
  self->_translateSession = v4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__UIWebDocumentView__translate___block_invoke;
  v5[3] = &unk_1E71259C0;
  v5[4] = self;
  [(_UITextServiceSession *)v4 setDismissedHandler:v5];
}

- (void)_insertAttributedTextWithoutClosingTyping:(id)a3
{
  v4 = [a3 string];

  [(UIWebDocumentView *)self insertText:v4];
}

- (void)_addShortcut:(id)a3
{
  if (!UIWebCurrentUserInterfaceIdiomIsSmallScreen())
  {
    [(UIWebDocumentView *)self _removeShortcutController:0];
  }

  v4 = [(UIResponder *)self _showServiceForType:4 withContext:[_UITextServiceSessionContext sessionContextForType:16 withTextInput:self]];
  self->_learnSession = v4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__UIWebDocumentView__addShortcut___block_invoke;
  v5[3] = &unk_1E71259C0;
  v5[4] = self;
  [(_UITextServiceSession *)v4 setDismissedHandler:v5];
}

uint64_t __34__UIWebDocumentView__addShortcut___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1320) = 0;
  result = UIWebCurrentUserInterfaceIdiomIsSmallScreen();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 becomeFirstResponder];
  }

  return result;
}

- (BOOL)_shouldPaste
{
  v3 = +[UIKeyboardImpl activeInstance];
  if (!self->m_parentTextView)
  {
    return 1;
  }

  v4 = v3;
  v5 = +[UIPasteboard generalPasteboard];
  v6 = [(UIPasteboard *)v5 string];
  if (!v6)
  {
    v7 = -[UIPasteboard valueForPasteboardType:](v5, "valueForPasteboardType:", [*MEMORY[0x1E6983030] identifier]);
    if (v7)
    {
      v6 = [v7 absoluteString];
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = [self->m_parentTextView keyboardInput:objc_msgSend(v4 shouldInsertText:"delegate") isMarkedText:{v6, 0}];
  result = 0;
  if (v8)
  {
    return 1;
  }

  return result;
}

- (void)paste:(id)a3
{
  if ([(UIWebDocumentView *)self _shouldPaste])
  {
    WebThreadLock();
    [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textWillChange:self];
    [(WebView *)self->_webView paste:a3];
    [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textDidChange:self];

    [(UIWebDocumentView *)self disableClearsOnInsertion];
  }
}

- (void)pasteAndMatchStyle:(id)a3
{
  if ([(UIWebDocumentView *)self _shouldPaste])
  {
    WebThreadLock();
    [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textWillChange:self];
    [(WebView *)self->_webView pasteAsPlainText:a3];
    [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textDidChange:self];

    [(UIWebDocumentView *)self disableClearsOnInsertion];
  }
}

- (void)select:(id)a3
{
  if (self->m_parentTextView)
  {
    textSelectionAssistant = [self->m_parentTextView interactionAssistant];
  }

  else
  {
    textSelectionAssistant = self->_textSelectionAssistant;
  }

  [(UITextInteractionAssistant *)textSelectionAssistant selectWord];
}

- (void)selectAll:(id)a3
{
  if (self->m_parentTextView)
  {
    textSelectionAssistant = [self->m_parentTextView interactionAssistant];
  }

  else
  {
    textSelectionAssistant = self->_textSelectionAssistant;
  }

  [(UITextInteractionAssistant *)textSelectionAssistant selectAll:a3];
}

- (void)replace:(id)a3
{
  v4 = [(UIWebDocumentView *)self dictationResultMetadataForRange:[(UIWebDocumentView *)self selectedDOMRange]];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 objectForKey:@"alternativesSelectedCount"];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", objc_msgSend(v6, "intValue") + 1), @"alternativesSelectedCount"}];
  }

  v7 = +[UIKeyboardImpl sharedInstance];

  [(UIKeyboardImpl *)v7 replaceText:a3];
}

- (void)_promptForReplace:(id)a3
{
  if (self->m_parentTextView)
  {
    textSelectionAssistant = [self->m_parentTextView interactionAssistant];
  }

  else
  {
    textSelectionAssistant = self->_textSelectionAssistant;
  }

  [(UITextInteractionAssistant *)textSelectionAssistant scheduleReplacements];
}

- (void)_transliterateChinese:(id)a3
{
  if (self->m_parentTextView)
  {
    textSelectionAssistant = [self->m_parentTextView interactionAssistant];
  }

  else
  {
    textSelectionAssistant = self->_textSelectionAssistant;
  }

  [(UITextInteractionAssistant *)textSelectionAssistant scheduleChineseTransliteration];
}

- (BOOL)isCaretInEmptyParagraph
{
  if ([(UIWebDocumentView *)self selectionState]!= 1)
  {
    return 0;
  }

  v3 = [(UIResponder *)self _characterBeforeCaretSelection];
  if (v3 != 10)
  {
    if (v3)
    {
      return 0;
    }
  }

  v4 = [(UIWebDocumentView *)self characterAfterCaretSelection];
  return v4 == 10 || v4 == 0;
}

- (BOOL)inPopover
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

      v3 = [(UIView *)v3 superview];
    }

    while (v3);
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4
{
  if (!a3 || ![(UIWebDocumentView *)self hasRichlyEditableSelection:a3])
  {
    return 0;
  }

  WebThreadLock();
  webView = self->_webView;

  return [(WebView *)webView typingAttributes];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v7 = [(UITextSelection *)[(UITextInteractionAssistant *)self->_textSelectionAssistant activeSelection] selectionRects];
  if (sel_toggleBoldface_ == a3 || sel_toggleItalics_ == a3 || sel_toggleUnderline_ == a3)
  {

    LOBYTE(v10) = [(UIWebDocumentView *)self hasRichlyEditableSelection];
    return v10;
  }

  if (sel_makeTextWritingDirectionRightToLeft_ == a3 || sel_makeTextWritingDirectionLeftToRight_ == a3)
  {
    LODWORD(v10) = [(UIWebDocumentView *)self hasEditableSelection];
    if (!v10)
    {
      return v10;
    }

    if ([(UIWebDocumentView *)self isCaretInEmptyParagraph])
    {
      goto LABEL_40;
    }

    v12 = [(UIWebDocumentView *)self selectionBaseWritingDirection];
    v13 = [-[UIWebDocumentView textInputTraits](self "textInputTraits")];
    if (v13 - 4) < 8 && ((0x93u >> (v13 - 4)))
    {
      goto LABEL_40;
    }

    if (!UIKeyboardIsRightToLeftInputModeActive() && !v12)
    {
      goto LABEL_40;
    }

    if (sel_makeTextWritingDirectionRightToLeft_ == a3 && !v12)
    {
LABEL_25:
      LOBYTE(v10) = 1;
      return v10;
    }

    v19 = sel_makeTextWritingDirectionLeftToRight_ == a3 && v12 == 1;
    goto LABEL_64;
  }

  if (sel_cut_ == a3)
  {
    if ([-[UIWebDocumentView formElement](self "formElement")])
    {
      goto LABEL_40;
    }

    LODWORD(v10) = [(UIWebDocumentView *)self hasEditableSelection];
    if (!v10)
    {
      return v10;
    }

LABEL_49:
    v19 = [(UIWebDocumentView *)self selectionState]== 2;
LABEL_64:
    LOBYTE(v10) = v19;
    return v10;
  }

  if (sel_paste_ == a3)
  {
    LODWORD(v10) = [(UIWebDocumentView *)self hasEditableSelection];
    if (v10)
    {
      v15 = +[UIPasteboard generalPasteboard];
      v16 = [(UIWebDocumentView *)self supportedPasteboardTypesForCurrentSelection];
      v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, -[UIPasteboard numberOfItems](v15, "numberOfItems")}];

      LOBYTE(v10) = [(UIPasteboard *)v15 containsPasteboardTypes:v16 inItemSet:v17];
    }

    return v10;
  }

  v14 = v7;
  if (sel_copy_ == a3)
  {
    v18 = [-[UIWebDocumentView formElement](self "formElement")];
    LOBYTE(v10) = v18 ^ 1;
    if ((v18 & 1) != 0 || v14)
    {
      return v10;
    }

    goto LABEL_49;
  }

  if (sel__share_ == a3)
  {
    if (([-[UIWebDocumentView formElement](self "formElement")] & 1) != 0 || !v14 && -[UIWebDocumentView selectionState](self, "selectionState") != 2)
    {
      goto LABEL_40;
    }

    LODWORD(v10) = [(UIResponder *)self _canShowTextServiceForType:8];
    if (!v10)
    {
      return v10;
    }

    v20 = [(UIWebDocumentView *)self selectedTextRange];
    if (qword_1ED498E90 != -1)
    {
      dispatch_once(&qword_1ED498E90, &__block_literal_global_726);
    }

    v21 = [(UIWebDocumentView *)self textInRange:v20];
    v22 = [v21 stringByTrimmingCharactersInSet:qword_1ED498E88];
LABEL_74:
    LOBYTE(v10) = [v22 length] != 0;
    return v10;
  }

  if (sel__define_ == a3)
  {
    if (([-[UIWebDocumentView formElement](self "formElement")] & 1) != 0 || !v14 && -[UIWebDocumentView selectionState](self, "selectionState") != 2)
    {
      goto LABEL_40;
    }

    v23 = self;
    v24 = 2;
LABEL_72:
    LODWORD(v10) = [(UIResponder *)v23 _canShowTextServiceForType:v24];
    if (!v10)
    {
      return v10;
    }

    v22 = [(UIWebDocumentView *)self textInRange:[(UIWebDocumentView *)self selectedTextRange]];
    goto LABEL_74;
  }

  if (sel__translate_ == a3)
  {
    if (([-[UIWebDocumentView formElement](self "formElement")] & 1) != 0 || !v14 && -[UIWebDocumentView selectionState](self, "selectionState") != 2)
    {
      goto LABEL_40;
    }

    v23 = self;
    v24 = 32;
    goto LABEL_72;
  }

  if (sel__addShortcut_ == a3)
  {
    if (([+[_UITextServiceSession textServiceSessionForType:](_UITextServiceSession textServiceSessionForType:{4), "isDisplaying"}] & 1) != 0 || (objc_msgSend(-[UIWebDocumentView formElement](self, "formElement"), "isSecure") & 1) != 0 || !v14 && -[UIWebDocumentView selectionState](self, "selectionState") != 2)
    {
      goto LABEL_40;
    }

    LODWORD(v10) = [(UIResponder *)self _canShowTextServiceForType:4];
    if (v10)
    {
      v25 = [(UIWebDocumentView *)self textInRange:[(UIWebDocumentView *)self selectedTextRange]];
      v10 = [v25 length];
      if (v10)
      {
        LODWORD(v10) = TIEnabledInputModesAllowOneToManyShortcuts();
        if (v10)
        {
          LODWORD(v10) = [v25 _containsCJScripts];
          if (v10)
          {
            v26 = [(UIWebDocumentView *)self inPopover];
            goto LABEL_99;
          }
        }
      }
    }

    return v10;
  }

  if (sel__promptForReplace_ == a3 || sel__transliterateChinese_ == a3)
  {
    LODWORD(v10) = [(UIWebDocumentView *)self hasEditableSelection];
    if (!v10)
    {
      return v10;
    }

    v27 = [(UIWebDocumentView *)self selectedTextRange];
    if ([(UITextRange *)v27 isEmpty])
    {
      goto LABEL_40;
    }

    v28 = [(UIWebDocumentView *)self textInRange:v27];

    LOBYTE(v10) = [(UIResponder *)self _shouldPerformUICalloutBarButtonReplaceAction:a3 forText:v28 checkAutocorrection:1];
    return v10;
  }

  if (sel_select_ == a3)
  {
    if ([-[UIWebDocumentView formElement](self "formElement")])
    {
      goto LABEL_40;
    }

    LODWORD(v10) = [(UIWebDocumentView *)self hasContent];
    if (!v10)
    {
      return v10;
    }

    v19 = [(UIWebDocumentView *)self selectionState]== 1;
    goto LABEL_64;
  }

  if (sel_selectAll_ != a3)
  {
    if (sel_replace_ != a3)
    {
LABEL_38:
      v30.receiver = self;
      v30.super_class = UIWebDocumentView;
      LOBYTE(v10) = [(UIView *)&v30 canPerformAction:a3 withSender:a4];
      return v10;
    }

    LODWORD(v10) = [(UIWebDocumentView *)self hasEditableSelection];
    if (!v10)
    {
      return v10;
    }

    v26 = [-[UIWebDocumentView formElement](self "formElement")];
LABEL_99:
    LOBYTE(v10) = v26 ^ 1;
    return v10;
  }

  LODWORD(v10) = [(UIWebDocumentView *)self hasContent];
  if (v10)
  {
    LODWORD(v10) = [(UIWebDocumentView *)self selectionState];
    if (v10)
    {
      if (v10 != 2)
      {
        if (v10 == 1)
        {
          return v10;
        }

        goto LABEL_38;
      }

      if (![(UIWebDocumentView *)self hasEditableSelection])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if ([(UIResponder *)self _selectionAtDocumentStart])
          {
            v26 = [(UIResponder *)self _selectionAtDocumentEnd];
            goto LABEL_99;
          }

          goto LABEL_25;
        }
      }

LABEL_40:
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

uint64_t __49__UIWebDocumentView_canPerformAction_withSender___block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  [v0 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x1E696AB08], "controlCharacterSet")}];
  v2 = -4;
  [v0 addCharactersInString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithCharacters:length:", &v2, 1)}];
  result = [v0 copy];
  qword_1ED498E88 = result;
  return result;
}

- (CGRect)visibleFrame
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)visibleContentFrame
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)autoscrollDragFrame
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)autoscrollContentFrame
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)resetSelectionAssistant
{
  [(UITextInteractionAssistant *)[(UIWebDocumentView *)self interactionAssistant] setGestureRecognizers];
  if ([(UIView *)self isFirstResponder])
  {
    v3 = [(UIWebDocumentView *)self interactionAssistant];

    [(UITextInteractionAssistant *)v3 activateSelection];
  }
}

- (void)willStartScroll
{
  *(self + 957) &= ~8u;
  if (self->super._inGestureType != 2)
  {
    [(UIWebTiledView *)self setInGesture:8];
  }

  textSelectionAssistant = self->_textSelectionAssistant;

  [(UITextInteractionAssistant *)textSelectionAssistant willStartScrollingOrZooming];
}

- (void)willStartScrollToTop
{
  *(self + 957) |= 8u;
  [(UIWebDocumentView *)self setTilingArea:3];
  textSelectionAssistant = self->_textSelectionAssistant;

  [(UITextInteractionAssistant *)textSelectionAssistant willStartScrollingOrZooming];
}

- (void)_updateFixedPositioningObjectsLayoutAfterScroll
{
  [(UIWebDocumentView *)self _updateFixedPositionedObjectsLayoutRectUsingWebThread:1 synchronize:1];
  v3 = [(WebView *)self->_webView _fixedPositionContent];

  [v3 didFinishScrollingOrZooming];
}

- (void)didEndScroll
{
  [(UIWebDocumentView *)self sendScrollEventIfNecessary];
  if (self->super._inGestureType == 8)
  {
    [(UIWebTiledView *)self setInGesture:0];
  }

  if ([(UIWebTiledView *)self tilingArea]== 3)
  {
    [(UIWebDocumentView *)self setTilingArea:0];
  }

  [(UITextInteractionAssistant *)self->_textSelectionAssistant didEndScrollingOrZooming];

  [(UIWebDocumentView *)self _updateFixedPositioningObjectsLayoutAfterScroll];
}

- (void)willStartZoom
{
  [(UIWebTiledView *)self setInGesture:2];
  [(UIWebDocumentView *)self _notifyPlugInViewsOfWillBeginZooming];
  textSelectionAssistant = self->_textSelectionAssistant;

  [(UITextInteractionAssistant *)textSelectionAssistant willStartScrollingOrZooming];
}

- (void)didZoom
{
  if ((*(self + 953) & 0x20) == 0)
  {
    *(self + 953) |= 8u;
  }

  [(UIWebDocumentView *)self _clearDoubleTapRect];

  [(UIWebDocumentView *)self _notifyPlugInViewsOfDidZoom];
}

- (void)didEndZoom
{
  [(UIWebTiledView *)self setInGesture:0];
  [(UIWebDocumentView *)self _notifyPlugInViewsOfDidEndZooming];
  [(UITextInteractionAssistant *)self->_textSelectionAssistant didEndScrollingOrZooming];
  [(UIWebDocumentView *)self _editableSelectionLayoutChangedByScrolling:0];
  v3 = [(WebView *)self->_webView _fixedPositionContent];

  [v3 didFinishScrollingOrZooming];
}

- (unsigned)_contentSizeInExposedRect:(CGRect)a3 topLayer:(id)a4 visibleLayerCount:(int *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v34 = *MEMORY[0x1E69E9840];
  [a4 bounds];
  [(CALayer *)self->_contentLayersHostingLayer convertRect:a4 fromLayer:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ([a4 contents] && (v35.origin.x = x, v35.origin.y = y, v35.size.width = width, v35.size.height = height, v37.origin.x = v13, v37.origin.y = v15, v37.size.width = v17, v37.size.height = v19, v36 = CGRectIntersection(v35, v37), v20 = v36.size.width, v21 = v36.size.height, !CGRectIsEmpty(v36)))
  {
    v22 = (v20 * v21);
    ++*a5;
  }

  else
  {
    v22 = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = [a4 sublayers];
  v24 = [v23 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v30;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v22 += [(UIWebDocumentView *)self _contentSizeInExposedRect:*(*(&v29 + 1) + 8 * i) topLayer:a5 visibleLayerCount:x, y, width, height];
      }

      v25 = [v23 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v25);
  }

  return v22;
}

- (BOOL)_shouldFlattenContentLayersForRect:(CGRect)a3
{
  contentLayersHostingLayer = self->_contentLayersHostingLayer;
  if (!contentLayersHostingLayer)
  {
    return 0;
  }

  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = 0;
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeScale(&v14, 1.0 / self->_documentScale, 1.0 / self->_documentScale);
  v13 = v14;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v17 = CGRectApplyAffineTransform(v16, &v13);
  v9 = [(UIWebDocumentView *)self _contentSizeInExposedRect:contentLayersHostingLayer topLayer:&v15 visibleLayerCount:v17.origin.x, v17.origin.y, v17.size.width, v17.size.height];
  result = 0;
  if (v9 >= 0xC0000 && v15 >= 4)
  {
    plugInViews = self->_plugInViews;
    if (plugInViews && CFDictionaryGetCount(plugInViews) >= 1)
    {
      WebThreadLock();
      return [(WebView *)self->_webView _pluginsAreRunning]^ 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (void)_createIOSurfaceFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v6 = [(UIWindow *)[(UIView *)self window] screen];
  if (!v6)
  {
    return 0;
  }

  [(UIScreen *)v6 scale];
  v8 = v7;
  memset(&v11, 0, sizeof(v11));
  CATransform3DMakeScale(&v11, v7 * self->_documentScale, v7 * self->_documentScale, 1.0);
  v9 = _UIRenderingBufferCreate(0, width * v8, height * v8);
  if (v9)
  {
    [(UIWindow *)[(UIView *)self window] _contextId];
    CARenderServerRenderLayerWithTransform();
  }

  return v9;
}

- (void)_flattenAndSwapContentLayersInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = _flattenAndSwapContentLayersInRect__processorCount;
  if (!_flattenAndSwapContentLayersInRect__processorCount)
  {
    v8 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    _flattenAndSwapContentLayersInRect__processorCount = v8;
  }

  if (v8 <= 1)
  {
    if (self->_contentLayersHostingLayer)
    {
      if ([(UIWebDocumentView *)self _shouldFlattenContentLayersForRect:x, y, width, height])
      {
        v9 = [(UIWebDocumentView *)self _createIOSurfaceFromRect:x, y, width, height];
        if (v9)
        {
          v11 = v9;
          v10 = objc_alloc_init(_UIWebDocumentViewRotationLayer);
          self->_flattenedRotatingContentLayer = &v10->super;
          [(_UIWebDocumentViewRotationLayer *)v10 setContents:v11];
          [(CALayer *)self->_flattenedRotatingContentLayer setFrame:x, y, width, height];
          [(CALayer *)self->_contentLayersHostingLayer removeFromSuperlayer];
          [-[UIView _layer](self "_layer")];
        }
      }
    }
  }
}

- (void)_restoreFlattenedContentLayers
{
  if (self->_contentLayersHostingLayer)
  {
    flattenedRotatingContentLayer = self->_flattenedRotatingContentLayer;
    if (flattenedRotatingContentLayer)
    {
      [(CALayer *)flattenedRotatingContentLayer removeFromSuperlayer];

      self->_flattenedRotatingContentLayer = 0;
      v4 = [(UIView *)self _layer];
      contentLayersHostingLayer = self->_contentLayersHostingLayer;

      [v4 addSublayer:contentLayersHostingLayer];
    }
  }
}

- (void)setTileUpdatesDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIView *)self _layer];

  [v4 setLayoutsSuspended:v3];
}

- (BOOL)hasBodyElement
{
  WebThreadLock();
  v3 = [(WebView *)self->_webView mainFrame];

  return [(WebFrame *)v3 hasBodyElement];
}

- (id)_textSelectingContainer
{
  if (*(self + 55))
  {
    return *(self + 55);
  }

  return self;
}

- (UITextRange)selectedTextRange
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self selectedDOMRange];
  v4 = [(UIWebDocumentView *)self selectionAffinity];

  return [UITextRangeImpl wrapDOMRange:v3 withAffinity:v4];
}

- (void)setSelectedTextRange:(id)a3
{
  if (!self->_selectionAffinity)
  {
    v5 = 1;
    if ([a3 isEmpty])
    {
      if ([objc_msgSend(objc_msgSend(a3 "start")] == 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }
    }

    self->_selectionAffinity = v5;
  }

  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  -[UIWebDocumentView setSelectedDOMRange:affinityDownstream:](self, "setSelectedDOMRange:affinityDownstream:", [a3 domRange], self->_selectionAffinity != 2);
  [(UIWebDocumentView *)self endSelectionChange];
  self->_selectionAffinity = 0;
}

- (void)setSelectedTextRange:(id)a3 withAffinityDownstream:(BOOL)a4
{
  if (a4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  self->_selectionAffinity = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    m_parentTextView = self->m_parentTextView;
  }

  else
  {
    m_parentTextView = self;
  }

  [m_parentTextView setSelectedTextRange:a3];
  self->_selectionAffinity = 0;
}

- (UITextRange)markedTextRange
{
  WebThreadLock();
  v3 = [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  if ([v3 collapsed])
  {
    return 0;
  }

  return [UITextRangeImpl wrapDOMRange:v3];
}

- (void)unmarkText
{
  [(UIWebDocumentView *)self beginSelectionChange];
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  [(UIWebDocumentView *)self endSelectionChange];
}

- (UITextPosition)beginningOfDocument
{
  WebThreadLock();
  v3 = [(WebFrame *)[(WebView *)self->_webView mainFrame] startPosition];

  return [UITextPositionImpl wrapWebVisiblePosition:v3];
}

- (UITextPosition)endOfDocument
{
  WebThreadLock();
  v3 = [(WebFrame *)[(WebView *)self->_webView mainFrame] endPosition];

  return [UITextPositionImpl wrapWebVisiblePosition:v3];
}

- (id)textInRange:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  WebThreadLock();
  v5 = [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  return [v5 _stringByReplacingCharacter:160 withCharacter:32];
}

- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4
{
  WebThreadLock();
  v6 = [MEMORY[0x1E69E2F20] rangeForFirstPosition:objc_msgSend(a3 second:{"webVisiblePosition"), objc_msgSend(a4, "webVisiblePosition")}];
  v7 = [objc_msgSend(a4 "webVisiblePosition")];
  if (!v6)
  {
    return 0;
  }

  return [UITextRangeImpl wrapDOMRange:v6 withAffinity:v7 != 1];
}

- (id)rangeOfEnclosingWord:(id)a3
{
  WebThreadLock();
  v4 = [a3 webVisiblePosition];
  v5 = [v4 enclosingTextUnitOfGranularity:1 inDirectionIfAtBoundary:{objc_msgSend(v4, "atBoundaryOfGranularity:inDirection:", 1, 1) ^ 1}];
  if (!v5)
  {
    v7 = [v4 positionOfNextBoundaryOfGranularity:1 inDirection:1];
    if (!v4)
    {
      return 0;
    }

    v8 = [v7 enclosingTextUnitOfGranularity:1 inDirectionIfAtBoundary:1];
    if (!v8)
    {
      return 0;
    }

    v5 = [MEMORY[0x1E69E2F20] rangeForFirstPosition:objc_msgSend(v8 second:{"startPosition"), v4}];
    if (!v5)
    {
      return 0;
    }
  }

  return [UITextRangeImpl wrapDOMRange:v5];
}

- (void)replaceRange:(id)a3 withText:(id)a4
{
  WebThreadLock();
  [(UITextInputDelegate *)[(UIWebDocumentView *)self inputDelegate] textWillChange:self];
  -[UIWebDocumentView setSelectedDOMRange:affinityDownstream:](self, "setSelectedDOMRange:affinityDownstream:", [a3 domRange], 0);
  if ([a4 length])
  {
    [(UIWebDocumentView *)self insertText:a4];
  }

  else
  {
    [(UIWebDocumentView *)self deleteBackward];
  }

  v7 = [(UIWebDocumentView *)self inputDelegate];

  [(UITextInputDelegate *)v7 textDidChange:self];
}

- (int64_t)comparePosition:(id)a3 toPosition:(id)a4
{
  WebThreadLock();
  v6 = [a3 webVisiblePosition];
  v7 = [a4 webVisiblePosition];

  return [v6 compare:v7];
}

- (id)positionFromPosition:(id)a3 offset:(int64_t)a4
{
  WebThreadLock();
  v6 = [a3 webVisiblePosition];
  if (a4 >= 0)
  {
    v7 = a4;
  }

  else
  {
    v7 = -a4;
  }

  result = [v6 positionByMovingInDirection:a4 < 1 amount:v7];
  if (result)
  {

    return [UITextPositionImpl wrapWebVisiblePosition:result];
  }

  return result;
}

- (id)_positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5 withAffinityDownstream:(BOOL)a6
{
  v6 = a6;
  WebThreadLock();
  v9 = [a3 webVisiblePosition];
  v12 = signpost_c2_entryLock_start(v10, v11);
  result = [v9 positionByMovingInDirection:v13 amount:a5 withAffinityDownstream:{v6, v12}];
  if (result)
  {

    return [UITextPositionImpl wrapWebVisiblePosition:result];
  }

  return result;
}

- (BOOL)isPosition:(id)a3 atBoundary:(int64_t)a4 inDirection:(int64_t)a5
{
  WebThreadLock();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  v7 = [a3 webVisiblePosition];
  v10 = signpost_c2_entryLock_start(v8, v9);
  v12 = v11;
  v15 = signpost_c2_entryLock_start(v10, v13);

  return [v7 atBoundaryOfGranularity:v12 inDirection:{v14, v15}];
}

- (id)positionFromPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5
{
  WebThreadLock();
  v6 = [a3 webVisiblePosition];
  v9 = signpost_c2_entryLock_start(v7, v8);
  v11 = v10;
  v13 = signpost_c2_entryLock_start(v9, v12);
  result = [v6 positionOfNextBoundaryOfGranularity:v11 inDirection:{v14, v13}];
  if (result)
  {

    return [UITextPositionImpl wrapWebVisiblePosition:result];
  }

  return result;
}

- (BOOL)isPosition:(id)a3 withinTextUnit:(int64_t)a4 inDirection:(int64_t)a5
{
  WebThreadLock();
  v6 = [a3 webVisiblePosition];
  v9 = signpost_c2_entryLock_start(v7, v8);
  v11 = v10;
  v14 = signpost_c2_entryLock_start(v9, v12);

  return [v6 withinTextUnitOfGranularity:v11 inDirectionIfAtBoundary:{v13, v14}];
}

- (void)_scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (objc_opt_respondsToSelector())
  {
    m_parentTextView = self->m_parentTextView;

    [m_parentTextView scrollRectToVisible:v4 animated:{x, y, width, height}];
  }
}

- (id)rangeEnclosingPosition:(id)a3 withGranularity:(int64_t)a4 inDirection:(int64_t)a5
{
  WebThreadLock();
  v6 = [a3 webVisiblePosition];
  v9 = signpost_c2_entryLock_start(v7, v8);
  v11 = v10;
  v13 = signpost_c2_entryLock_start(v9, v12);
  v15 = [v6 enclosingTextUnitOfGranularity:v11 inDirectionIfAtBoundary:{v14, v13}];
  v16 = [objc_msgSend(a3 "webVisiblePosition")];
  if (!v15)
  {
    return 0;
  }

  return [UITextRangeImpl wrapDOMRange:v15 withAffinity:v16 != 1];
}

- (CGRect)firstRectForRange:(id)a3
{
  WebThreadLock();
  v5 = -[UIWebDocumentView selectionRectsForDOMRange:](self, "selectionRectsForDOMRange:", [a3 domRange]);
  if ([v5 count])
  {
    [objc_msgSend(v5 objectAtIndex:{0), "rect"}];
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v9 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_lastRectForRange:(id)a3
{
  WebThreadLock();
  v5 = -[UIWebDocumentView selectionRectsForDOMRange:](self, "selectionRectsForDOMRange:", [a3 domRange]);
  if ([v5 count])
  {
    [objc_msgSend(v5 objectAtIndex:{objc_msgSend(v5, "count") - 1), "rect"}];
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v9 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)caretRectForPosition:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 caretRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = [a3 webVisiblePosition];
    if (v13)
    {
      [(UIWebDocumentView *)self caretRectForVisiblePosition:v13];
      v6 = v14;
      v8 = v15;
      v10 = v16;
      v12 = v17;
    }

    else
    {
      v6 = *MEMORY[0x1E695F050];
      v8 = *(MEMORY[0x1E695F050] + 8);
      v10 = *(MEMORY[0x1E695F050] + 16);
      v12 = *(MEMORY[0x1E695F050] + 24);
    }

    textPlaceholder = self->_textPlaceholder;
    if (textPlaceholder)
    {
      if ([(DOMElement *)[(UIWebTextPlaceholder *)textPlaceholder element] parentNode])
      {
        if (IsMobileNotes())
        {
          v19 = [(WebFrame *)[(WebView *)self->_webView mainFrame] DOMDocument];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [(DOMDocument *)v19 createRange];
            v21 = [(DOMElement *)[(UIWebTextPlaceholder *)self->_textPlaceholder element] previousSibling];
            for (i = 1; v21; i = (i + 1))
            {
              v21 = [v21 previousSibling];
            }

            v23 = [(DOMElement *)[(UIWebTextPlaceholder *)self->_textPlaceholder element] parentNode];
            [(DOMRange *)v20 setStart:v23 offset:i];
            [(DOMRange *)v20 setEnd:v23 offset:i];
            if ([-[DOMRange startPosition](v20 "startPosition")])
            {
              v24 = 3.0;
              if (dictatingIntoEmptyDocument)
              {
                v24 = 0.0;
              }

              v8 = v8 + v24;
              v12 = v12 + -3.0;
            }
          }
        }
      }
    }
  }

  v25 = v6;
  v26 = v8;
  v27 = v10;
  v28 = v12;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)closestPositionToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WebThreadLock();
  result = [(UIWebDocumentView *)self webVisiblePositionForPoint:x, y];
  if (result)
  {

    return [UITextPositionImpl wrapWebVisiblePosition:result];
  }

  return result;
}

- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4
{
  y = a3.y;
  x = a3.x;
  WebThreadLock();
  v8 = [(UIWebDocumentView *)self webVisiblePositionForPoint:x, y];
  v9 = [objc_msgSend(a4 "domRange")];
  v10 = [objc_msgSend(a4 "domRange")];
  if (!v9)
  {
    return 0;
  }

  v11 = v10;
  if (!v10)
  {
    return 0;
  }

  if ([v8 compare:v9] != -1)
  {
    v9 = v11;
    if ([v8 compare:v11] != 1)
    {
      v9 = v8;
      if (!v8)
      {
        return 0;
      }
    }
  }

  return [UITextPositionImpl wrapWebVisiblePosition:v9];
}

- (id)characterRangeAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WebThreadLock();
  v6 = [(UIWebDocumentView *)self closestPositionToPoint:x, y];
  v7 = [(UIWebDocumentView *)self positionFromPosition:v6 offset:1];
  if (v7)
  {
    v8 = v7;
    v9 = self;
    v10 = v6;
  }

  else
  {
    result = [(UIWebDocumentView *)self positionFromPosition:v6 offset:-1];
    if (!result)
    {
      return result;
    }

    v10 = result;
    v9 = self;
    v8 = v6;
  }

  return [(UIWebDocumentView *)v9 textRangeFromPosition:v10 toPosition:v8];
}

- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4
{
  WebThreadLock();
  v7 = -[UIWebDocumentView baseWritingDirectionForPosition:inDirection:](self, "baseWritingDirectionForPosition:inDirection:", [a3 start], 0);
  if ((a4 - 3) > 1)
  {
    if (v7 != 1)
    {
      goto LABEL_3;
    }
  }

  else if (v7 == 1)
  {
LABEL_3:

    return [a3 end];
  }

  return [a3 start];
}

- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4
{
  WebThreadLock();
  if ([(UIWebDocumentView *)self baseWritingDirectionForPosition:a3 inDirection:0]== 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  if ((a4 - 3) >= 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  result = [(UIWebDocumentView *)self positionFromPosition:a3 offset:v8];
  if (result)
  {

    return [(UIWebDocumentView *)self textRangeFromPosition:a3 toPosition:result];
  }

  return result;
}

- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4
{
  WebThreadLock();

  return [(UIWebDocumentView *)self selectionBaseWritingDirection];
}

- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4
{
  WebThreadLock();
  v6 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  [v6 setBaseWritingDirection:a3];
}

- (void)setSelectionGranularity:(int64_t)a3
{
  WebThreadLock();
  v5 = [(UIWebDocumentView *)self _focusedOrMainFrame];
  v8 = signpost_c2_entryLock_start(v6, v7);
  [v5 setSelectionGranularity:{v9, v8}];
  self->m_selectionGranularity = a3;
}

- (id)selectionRectsForRange:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  WebThreadLock();
  v5 = -[UIWebDocumentView selectionRectsForDOMRange:](self, "selectionRectsForDOMRange:", [a3 domRange]);

  return [UITextSelectionRectImpl rectsWithWebRects:v5];
}

- (id)_documentUrl
{
  WebThreadLock();
  v3 = [objc_msgSend(objc_msgSend(-[UIWebDocumentView webView](self "webView")];

  return [v3 URL];
}

- (BOOL)_shouldResetForNewPage
{
  if ((*(self + 955) & 0x80000000) == 0)
  {
    return 1;
  }

  if (!self->_suppressesIncrementalRendering && (*(self + 955) & 0x40) != 0)
  {
    return self->_renderTreeSize >= self->_renderTreeSizeThresholdForReset;
  }

  return 0;
}

- (void)setRenderTreeSizeThresholdForReset:(unint64_t)a3
{
  if (self->_renderTreeSizeThresholdForReset != a3)
  {
    self->_renderTreeSizeThresholdForReset = a3;
    [(UIWebTiledView *)self setNeedsLayout];
  }
}

- (CGRect)visibleContentRect
{
  v2 = [(UIView *)self _scroller];

  [v2 bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rectOfInterestForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = MEMORY[0x1E695F058];
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  WebThreadLock();
  v11 = [(WebView *)self->_webView hitTest:x, y];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSView *)v11 convertPoint:0 fromView:x, y];
    v33 = 0;
    v32 = 0;
    [-[NSView _frame](v11 "_frame")];
    v14 = v34.origin.x;
    v15 = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (!CGRectIsEmpty(v34))
    {
      v18 = [(WebFrameView *)[(WebFrame *)[(WebView *)self->_webView mainFrame] frameView] documentView];
      if (v18 == v11)
      {
        v19 = v14;
        v20 = v15;
        v21 = width;
        v22 = height;
      }

      else
      {
        [(NSView *)v11 convertRect:v18 toView:v14, v15, width, height];
      }

      self->_mainDocumentDoubleTapRect.origin.x = v19;
      self->_mainDocumentDoubleTapRect.origin.y = v20;
      self->_mainDocumentDoubleTapRect.size.width = v21;
      self->_mainDocumentDoubleTapRect.size.height = v22;
      [(NSView *)v11 convertRect:0 toView:v14, v15, width, height];
      v7 = v23;
      v8 = v24;
      v9 = v25;
      v10 = v26;
      v27 = *(v6 + 16);
      self->_doubleTapRect.origin = *v6;
      self->_doubleTapRect.size = v27;
      *(self + 954) = *(self + 954) & 0xFE | v33;
    }
  }

  v28 = v7;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)doubleTapScalesForSize:(CGSize)a3
{
  [(UIWebDocumentView *)self minimumScaleForSize:a3.width, a3.height];
  v5 = v4;
  [(UIWebDocumentView *)self maximumDoubleTapScale];
  if (v6 >= v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = 0.0;
  v9 = v5;
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v9;
  return result;
}

- (BOOL)shouldSelectionAssistantReceiveDoubleTapAtPoint:(CGPoint)a3 forScale:(double)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  LOBYTE(self) = 0;
  documentScale = v6->_documentScale;
  if (documentScale > 0.9 && documentScale < 1.1)
  {
    LODWORD(self) = [(UITextInteractionAssistant *)v6->_textSelectionAssistant swallowsDoubleTapWithScale:a4 / documentScale atPoint:x, y];
    if (self)
    {
      [(UIWebDocumentView *)v6 _clearDoubleTapRect];
      LOBYTE(self) = 1;
    }
  }

  return self;
}

- (void)willZoomToLocation:(CGPoint)a3 atScale:(double)a4 forDuration:(double)a5
{
  if (a5 <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2 * (self->_documentScale < a4);
  }

  *(self + 957) = *(self + 957) & 0xFD | v5;
}

- (CGRect)currentDragCaretRect
{
  x = self->_currentDragCaretRect.origin.x;
  y = self->_currentDragCaretRect.origin.y;
  width = self->_currentDragCaretRect.size.width;
  height = self->_currentDragCaretRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setCurrentDragCaretRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_currentDragCaretRect = &self->_currentDragCaretRect;
  if (!CGRectEqualToRect(self->_currentDragCaretRect, a3))
  {
    v9 = p_currentDragCaretRect->origin.x;
    v10 = p_currentDragCaretRect->origin.y;
    v11 = p_currentDragCaretRect->size.width;
    v12 = p_currentDragCaretRect->size.height;
    p_currentDragCaretRect->origin.x = x;
    p_currentDragCaretRect->origin.y = y;
    p_currentDragCaretRect->size.width = width;
    p_currentDragCaretRect->size.height = height;

    [(UIWebDocumentView *)self _didChangeDragCaretRectFromRect:v9 toRect:v10, v11, v12, x, y, width, height];
  }
}

- (CGPoint)lastGlobalPosition
{
  x = self->_lastGlobalPosition.x;
  y = self->_lastGlobalPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)exposedScrollViewRect
{
  x = self->_exposedScrollViewRect.origin.x;
  y = self->_exposedScrollViewRect.origin.y;
  width = self->_exposedScrollViewRect.size.width;
  height = self->_exposedScrollViewRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (id)_createDefaultHighlightView
{
  v2 = [_UIHighlightView alloc];
  v3 = [(_UIHighlightView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v3 setOpaque:0];
  [(_UIHighlightView *)v3 setCornerRadius:2.0];
  [(_UIHighlightView *)v3 setColor:[UIColor colorWithRed:0.101960784 green:0.101960784 blue:0.101960784 alpha:0.3]];
  return v3;
}

+ (id)_sharedHighlightView
{
  result = _sharedHighlightView__highlightView;
  if (!_sharedHighlightView__highlightView)
  {
    result = +[UIWebDocumentView _createDefaultHighlightView];
    _sharedHighlightView__highlightView = result;
  }

  return result;
}

- (void)_registerPreview
{
  if (self->_previewItemController)
  {
    [(UIWebDocumentView *)self _unregisterPreview];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [(UIWebDocumentView *)self allowsLinkPreview])
  {
    v3 = [[UIPreviewItemController alloc] initWithView:self];
    self->_previewItemController = v3;
    [(UIPreviewItemController *)v3 setDelegate:self];
    self->_previewGestureRecognizer = [(UIPreviewItemController *)self->_previewItemController presentationGestureRecognizer];
    self->_previewSecondaryGestureRecognizer = [(UIPreviewItemController *)self->_previewItemController presentationSecondaryGestureRecognizer];
  }
}

- (void)_unregisterPreview
{
  self->_previewGestureRecognizer = 0;

  self->_previewSecondaryGestureRecognizer = 0;
  [(UIPreviewItemController *)self->_previewItemController setDelegate:0];

  self->_previewItemController = 0;
}

- (BOOL)_previewAllowedForPosition:(CGPoint)a3
{
  v7 = a3;
  WebThreadLock();
  v4 = [(UIWebDocumentView *)self approximateNodeAtViewportLocation:&v7];
  if (v4)
  {
    v5 = v4;
    objc_opt_class();
    LOBYTE(v4) = (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [objc_msgSend(objc_msgSend(v5 absoluteLinkURL];
  }

  return v4;
}

- (BOOL)_interactionShouldBeginFromPreviewItemController:(id)a3 forPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    return [delegate _webView:self previewIsAllowedForPosition:{x, y}];
  }

  else
  {

    return [(UIWebDocumentView *)self _previewAllowedForPosition:x, y];
  }
}

- (id)_dataForPreviewItemController:(id)a3 atPosition:(CGPoint)a4 type:(int64_t *)a5
{
  p_interaction = &self->_interaction;
  if (!self->_interaction.element)
  {
    return 0;
  }

  WebThreadLock();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(DOMNode *)p_interaction->element absoluteLinkURL];
    if ([objc_msgSend(v10 "absoluteString")])
    {
      *a5 = 2;
      [v8 setObject:v10 forKeyedSubscript:UIPreviewDataLink[0]];
      v11 = DataDetectorsUIGetClass(@"DDDetectionController");
      v12 = [v11 sharedController];
      v13 = [(WebView *)self->_webView mainFrame];
      if ([objc_msgSend(v11 "tapAndHoldSchemes")])
      {
        v16 = 0;
        v14 = [v12 resultForNode:p_interaction->element url:v10 frame:v13 contextRef:&v16];
        if (v14)
        {
          [v8 setObject:v14 forKeyedSubscript:UIPreviewDataDDResult[0]];
        }

        if (v16)
        {
          [v8 setObject:v16 forKeyedSubscript:UIPreviewDataDDContext];
        }
      }

      else
      {
        v15 = [v12 copyContextForContainer:v13];
        if ([v15 count])
        {
          [v8 setObject:v15 forKeyedSubscript:UIPreviewDataDDContext];
        }
      }
    }
  }

  return v8;
}

- (id)_presentedViewControllerForPreviewItemController:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;
  v6 = [a3 previewData];
  v7 = [v6 objectForKeyedSubscript:UIPreviewDataLink[0]];

  return [delegate _webView:self previewViewControllerForURL:v7];
}

- (void)_previewItemController:(id)a3 willPresentPreview:(id)a4 forPosition:(CGPoint)a5 inSourceView:(id)a6
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [delegate _webView:self willPresentPreview:a4];
  }
}

- (void)_collectPreviewRevealInformationIfNeeded
{
  p_interaction = &self->_interaction;
  if (!self->_interaction.previewHintImage || !self->_interaction.previewHintRects)
  {
    if (self->_interaction.element)
    {
      WebThreadLock();
      v3 = [(DOMNode *)p_interaction->element _realNode];
      v4 = 0;
      v5 = 0;
      [v3 getPreviewSnapshotImage:&v4 andRects:&v5];
      p_interaction->previewHintImage = [UIImage imageWithCGImage:v4];
      p_interaction->previewHintRects = v5;
    }
  }
}

- (void)_clearPreviewRevealInformation
{
  p_interaction = &self->_interaction;

  p_interaction->previewHintImage = 0;
  p_interaction->previewHintRects = 0;
}

- (void)_previewItemController:(id)a3 didDismissPreview:(id)a4 committing:(BOOL)a5
{
  v5 = a5;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [delegate _webView:self didDismissPreview:a4 committing:v5];
  }
}

- (void)_previewItemController:(id)a3 commitPreview:(id)a4
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [delegate _webView:self commitPreview:a4];
  }
}

- (id)_presentationSnapshotForPreviewItemController:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;
    v6 = [a3 presentedViewController];

    return [delegate _webView:self presentationSnapshotForPreview:v6];
  }

  else
  {

    return [(UIWebDocumentView *)self _presentationSnapshotForPreview];
  }
}

- (id)_presentationRectsForPreviewItemController:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;
    v6 = [a3 presentedViewController];

    return [delegate _webView:self presentationRectsForPreview:v6];
  }

  else
  {

    return [(UIWebDocumentView *)self _presentationRectsForPreview];
  }
}

- (CGRect)computeRectForElement:(id)a3 withHighligh:(id)a4 isInverted:(BOOL)a5
{
  v5 = a5;
  v170 = *MEMORY[0x1E69E9840];
  WebThreadLock();
  v9 = [objc_msgSend(objc_msgSend(a3 "ownerDocument")];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [-[UIView _scroller](self "_scroller")];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (a4)
  {
    v19 = 2.0;
  }

  else
  {
    v19 = 0.0;
  }

  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v131 = a3;
  v20 = [a3 absoluteQuadsAtPoint:{self->_interaction.location.x, self->_interaction.location.y, &self->_interaction}];
  v21 = [v20 countByEnumeratingWithState:&v161 objects:v169 count:16];
  if (v21)
  {
    v22 = v21;
    v130 = a4;
    v23 = *v162;
    v132 = v16;
LABEL_6:
    v24 = 0;
    while (1)
    {
      if (*v162 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v25 = *(*(&v161 + 1) + 8 * v24);
      if (v25)
      {
        [v25 quad];
        v26 = v153;
        v27 = v154;
        v29 = v155;
        v28 = v156;
        v31 = v157;
        v30 = v158;
        v33 = v159;
        v32 = v160;
      }

      else
      {
        v32 = 0.0;
        v33 = 0.0;
        v30 = 0.0;
        v31 = 0.0;
        v28 = 0.0;
        v29 = 0.0;
        v27 = 0.0;
        v26 = 0.0;
      }

      if ((v29 - v26) * (v30 - v27) <= (v28 - v27) * (v31 - v26))
      {
        v34 = v27;
        v35 = v26;
      }

      else
      {
        v34 = v30;
        v35 = v31;
        v30 = v27;
        v31 = v26;
      }

      v36 = v28 == v34 && v31 == v29;
      v37 = v36 && v35 == v33;
      v38 = v37 && v32 == v30;
      if (!v38 && (v29 != v35 || v30 != v28 || v34 != v32 || v33 != v31))
      {
        break;
      }

      v153 = v31;
      v154 = v30;
      v155 = v29;
      v156 = v28;
      v157 = v35;
      v158 = v34;
      v159 = v33;
      v160 = v32;
      [v9 convertRect:0 toView:quadBoundingBox(&v153)];
      x = v171.origin.x;
      y = v171.origin.y;
      width = v171.size.width;
      rect = v171.size.height;
      v133 = CGRectGetWidth(v171);
      v172.origin.x = v12;
      v172.origin.y = v14;
      v172.size.width = v132;
      v172.size.height = v18;
      if (v133 > CGRectGetWidth(v172))
      {
        goto LABEL_35;
      }

      v173.origin.x = x;
      v173.origin.y = y;
      v173.size.width = width;
      v173.size.height = rect;
      Height = CGRectGetHeight(v173);
      v174.origin.x = v12;
      v174.origin.y = v14;
      v174.size.width = v132;
      v174.size.height = v18;
      if (Height > CGRectGetHeight(v174))
      {
        goto LABEL_35;
      }

      v175.origin.x = x;
      v175.origin.y = y;
      v175.size.width = width;
      v175.size.height = rect;
      v176 = CGRectIntegral(v175);
      v177 = CGRectInset(v176, -v19, -v19);
      v42 = MEMORY[0x1E696B098];
      if (v5)
      {
        [(UIView *)self convertRect:0 toView:v177.origin.x, v177.origin.y, v177.size.width, v177.size.height];
      }

      [v10 addObject:{objc_msgSend(v42, "valueWithCGRect:", v177.origin.x, v177.origin.y, v177.size.width, v177.size.height)}];
      if (v22 == ++v24)
      {
        v22 = [v20 countByEnumeratingWithState:&v161 objects:v169 count:16];
        if (v22)
        {
          goto LABEL_6;
        }

LABEL_35:
        if (v130)
        {
          goto LABEL_39;
        }

        goto LABEL_49;
      }
    }

    [v10 removeAllObjects];
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v76 = [v131 absoluteQuadsAtPoint:{*(v129 + 8), *(v129 + 16)}];
    v77 = [v76 countByEnumeratingWithState:&v149 objects:v168 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v150;
      do
      {
        for (i = 0; i != v78; ++i)
        {
          if (*v150 != v79)
          {
            objc_enumerationMutation(v76);
          }

          v81 = *(*(&v149 + 1) + 8 * i);
          if (v81)
          {
            [v81 quad];
            v83 = v153;
            v82 = v154;
            v85 = v155;
            v84 = v156;
            v87 = v157;
            v86 = v158;
            v88 = v159;
            v89 = v160;
          }

          else
          {
            v89 = 0.0;
            v88 = 0.0;
            v86 = 0.0;
            v87 = 0.0;
            v84 = 0.0;
            v85 = 0.0;
            v82 = 0.0;
            v83 = 0.0;
          }

          v90 = (v85 - v83) * (v86 - v82);
          v91 = (v84 - v82) * (v87 - v83);
          if (v90 <= v91)
          {
            v92 = v87;
          }

          else
          {
            v92 = v83;
          }

          if (v90 <= v91)
          {
            v93 = v86;
          }

          else
          {
            v93 = v82;
          }

          if (v90 <= v91)
          {
            v94 = v83;
          }

          else
          {
            v94 = v87;
          }

          if (v90 <= v91)
          {
            v95 = v82;
          }

          else
          {
            v95 = v86;
          }

          [v9 convertPoint:0 toView:{v88, v89}];
          v97 = v96 - v19;
          v99 = v19 + v98;
          v100 = MEMORY[0x1E696B098];
          if (v5)
          {
            [(UIView *)self convertPoint:0 toView:v97, v99];
          }

          [v10 addObject:{objc_msgSend(v100, "valueWithCGPoint:", v97, v99)}];
          [v9 convertPoint:0 toView:{v92, v93}];
          v102 = v101 - v19;
          v104 = v103 - v19;
          v105 = MEMORY[0x1E696B098];
          if (v5)
          {
            [(UIView *)self convertPoint:0 toView:v102, v104];
          }

          [v10 addObject:{objc_msgSend(v105, "valueWithCGPoint:", v102, v104)}];
          [v9 convertPoint:0 toView:{v85, v84}];
          v107 = v19 + v106;
          v109 = v108 - v19;
          v110 = MEMORY[0x1E696B098];
          if (v5)
          {
            [(UIView *)self convertPoint:0 toView:v107, v109];
          }

          [v10 addObject:{objc_msgSend(v110, "valueWithCGPoint:", v107, v109)}];
          [v9 convertPoint:0 toView:{v94, v95}];
          v112 = v19 + v111;
          v114 = v19 + v113;
          v115 = MEMORY[0x1E696B098];
          if (v5)
          {
            [(UIView *)self convertPoint:0 toView:v112, v114];
          }

          [v10 addObject:{objc_msgSend(v115, "valueWithCGPoint:", v112, v114)}];
        }

        v78 = [v76 countByEnumeratingWithState:&v149 objects:v168 count:16];
      }

      while (v78);
    }

    if (v130)
    {
      recta = 0;
      goto LABEL_40;
    }

    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v116 = [v10 countByEnumeratingWithState:&v137 objects:v165 count:16];
    if (v116)
    {
      v117 = v116;
      v118 = 0;
      v119 = *v138;
      v120 = 0.0;
      v53 = 0.0;
      v121 = 0.0;
      v54 = 0.0;
      do
      {
        for (j = 0; j != v117; ++j)
        {
          if (*v138 != v119)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v137 + 1) + 8 * j) CGPointValue];
          if (v118)
          {
            v125 = v120;
          }

          else
          {
            v125 = v123;
          }

          if (v118)
          {
            v126 = v53;
          }

          else
          {
            v126 = v123;
          }

          if (v118)
          {
            v127 = v121;
          }

          else
          {
            v127 = v124;
          }

          if (v118)
          {
            v128 = v54;
          }

          else
          {
            v128 = v124;
          }

          if (v123 >= v125)
          {
            v120 = v123;
          }

          else
          {
            v120 = v125;
          }

          if (v123 >= v126)
          {
            v53 = v126;
          }

          else
          {
            v53 = v123;
          }

          if (v124 >= v127)
          {
            v121 = v124;
          }

          else
          {
            v121 = v127;
          }

          if (v124 >= v128)
          {
            v54 = v128;
          }

          else
          {
            v54 = v124;
          }

          v118 = 1;
        }

        v117 = [v10 countByEnumeratingWithState:&v137 objects:v165 count:16];
      }

      while (v117);
    }

    else
    {
      v120 = 0.0;
      v53 = 0.0;
      v121 = 0.0;
      v54 = 0.0;
    }

    v55 = v120 - v53;
    v56 = v121 - v54;
    goto LABEL_59;
  }

  if (!a4)
  {
LABEL_49:
    v53 = *MEMORY[0x1E695F050];
    v54 = *(MEMORY[0x1E695F050] + 8);
    v55 = *(MEMORY[0x1E695F050] + 16);
    v56 = *(MEMORY[0x1E695F050] + 24);
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v57 = [v10 countByEnumeratingWithState:&v141 objects:v166 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = 0;
      v60 = *v142;
      do
      {
        for (k = 0; k != v58; ++k)
        {
          if (*v142 != v60)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v141 + 1) + 8 * k) rectValue];
          v66 = v62;
          v67 = v63;
          v68 = v64;
          v69 = v65;
          if (v59)
          {
            v178.origin.x = v53;
            v178.origin.y = v54;
            v178.size.width = v55;
            v178.size.height = v56;
            v179 = CGRectUnion(v178, *&v66);
            v53 = v179.origin.x;
            v54 = v179.origin.y;
            v55 = v179.size.width;
            v56 = v179.size.height;
          }

          else
          {
            v56 = v65;
            v55 = v64;
            v54 = v63;
            v53 = v62;
          }

          v59 = 1;
        }

        v58 = [v10 countByEnumeratingWithState:&v141 objects:v166 count:16];
      }

      while (v58);
    }

LABEL_59:

    goto LABEL_65;
  }

  v130 = a4;
LABEL_39:
  recta = 1;
LABEL_40:
  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v44 = [v131 borderRadii];
  v45 = [v44 countByEnumeratingWithState:&v145 objects:v167 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v146;
    do
    {
      for (m = 0; m != v46; ++m)
      {
        if (*v146 != v47)
        {
          objc_enumerationMutation(v44);
        }

        [*(*(&v145 + 1) + 8 * m) sizeValue];
        [v9 convertSize:0 toView:?];
        [v43 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGSize:", v49 + 2.0, v50 + 2.0)}];
      }

      v46 = [v44 countByEnumeratingWithState:&v145 objects:v167 count:16];
    }

    while (v46);
  }

  [v130 setCornerRadii:v43];

  [v130 setColor:{objc_msgSend(v131, "tapHighlightColor")}];
  if (v5)
  {
    v51 = *MEMORY[0x1E695EFF8];
    v52 = *(MEMORY[0x1E695EFF8] + 8);
    [-[UIView _screen](self "_screen")];
  }

  else
  {
    [(UIWebTiledView *)self visibleRect];
    v51 = v70;
    v52 = v71;
  }

  if (recta)
  {
    [v130 setFrames:v10 boundaryRect:{v51, v52}];
  }

  else
  {
    [v130 setQuads:v10 boundaryRect:{v51, v52}];
  }

  v53 = *MEMORY[0x1E695F050];
  v54 = *(MEMORY[0x1E695F050] + 8);
  v55 = *(MEMORY[0x1E695F050] + 16);
  v56 = *(MEMORY[0x1E695F050] + 24);
LABEL_65:
  v72 = v53;
  v73 = v54;
  v74 = v55;
  v75 = v56;
  result.size.height = v75;
  result.size.width = v74;
  result.origin.y = v73;
  result.origin.x = v72;
  return result;
}

- (void)_interactionStartedFromPreviewItemController:(id)a3
{
  self->_panGestureWasEnabled = [objc_msgSend(-[UIWebDocumentView enclosingScrollView](self enclosingScrollView];
  self->_pinchGestureWasEnabled = [objc_msgSend(-[UIWebDocumentView enclosingScrollView](self "enclosingScrollView")];
  [objc_msgSend(-[UIWebDocumentView enclosingScrollView](self "enclosingScrollView")];
  [objc_msgSend(-[UIWebDocumentView enclosingScrollView](self "enclosingScrollView")];
  [(UIWebDocumentView *)self _collectPreviewRevealInformationIfNeeded];
  [(UIWebDocumentView *)self hideTapHighlight];

  [(UIWebDocumentView *)self resetInteraction];
}

- (void)_interactionStoppedFromPreviewItemController:(id)a3
{
  if (self->_panGestureWasEnabled)
  {
    [objc_msgSend(-[UIWebDocumentView enclosingScrollView](self enclosingScrollView];
  }

  if (self->_pinchGestureWasEnabled)
  {
    [objc_msgSend(-[UIWebDocumentView enclosingScrollView](self "enclosingScrollView")];
  }

  [(_UIWebHighlightLongPressGestureRecognizer *)self->_highlightLongPressGestureRecognizer cancel];

  [(UIWebDocumentView *)self _clearPreviewRevealInformation];
}

- (void)clearInteractionTimer
{
  [(NSTimer *)self->_interaction.timer invalidate];

  self->_interaction.timer = 0;
}

- (void)_resetInteractionWithLocation:(CGPoint)a3 modifierFlags:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  [(UIWebDocumentView *)self clearInteractionTimer];
  [(UIWebDocumentView *)self cancelInteraction];
  self->_interaction.location.x = x;
  self->_interaction.location.y = y;
  self->_interaction.modifierFlags = a4;
  self->_interaction.isCancelled = 0;
  [(UIWebDocumentView *)self highlightApproximateNodeInverted:0];
  if (!self->_interaction.element)
  {

    [(UIWebDocumentView *)self cancelInteraction];
  }
}

- (void)startInteractionWithLocation:(CGPoint)a3
{
  isOnWebThread = self->_interaction.isOnWebThread;
  self->_interaction.isBlocked = isOnWebThread;
  if (!isOnWebThread)
  {
    [(UIWebDocumentView *)self _resetInteractionWithLocation:0 modifierFlags:a3.x, a3.y];
  }
}

- (void)continueInteractionWithLocation:(CGPoint)a3
{
  if (!self->_interaction.isCancelled)
  {
    [(UIWebDocumentView *)self _resetInteractionWithLocation:0 modifierFlags:a3.x, a3.y];
  }
}

- (void)tapInteractionWithLocation:(CGPoint)a3
{
  if (!self->_interaction.isBlocked && !self->_interaction.var0)
  {
    [(UIWebDocumentView *)self startInteractionWithLocation:a3.x, a3.y];

    [(UIWebDocumentView *)self attemptClick:self];
  }
}

- (void)validateInteractionWithLocation:(CGPoint)a3
{
  if (!self->_interaction.isCancelled && !self->_interaction.isBlocked && !self->_interaction.var0)
  {
    if (!self->_interaction.isDisplayingHighlight)
    {
      [(UIWebDocumentView *)self startInteractionWithLocation:a3.x, a3.y];
    }

    [(UIWebDocumentView *)self attemptClick:self, a3.x, a3.y];
  }
}

- (BOOL)startActionSheet
{
  p_interaction = &self->_interaction;
  if (self->_interaction.allowsDataDetectorsSheet && self->_interaction.element && [objc_msgSend(DataDetectorsUIGetClass(@"DDDetectionController") "tapAndHoldSchemes")])
  {
    [(UIWebDocumentView *)self _showDataDetectorsSheet];
    return 1;
  }

  if (p_interaction->allowsLinkSheet)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIWebDocumentView *)self _showLinkSheet];
      return 1;
    }
  }

  return 0;
}

- (BOOL)willInteractWithLocation:(CGPoint)a3
{
  v7 = a3;
  WebThreadLock();
  v4 = [(UIWebDocumentView *)self approximateNodeAtViewportLocation:&v7];
  v5 = [(UIWebDocumentView *)self formElement:*&v7.x];
  result = (!-[UIWebDocumentView _parentTextView](self, "_parentTextView") || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && v4 && ![v5 isEqual:v4];
  return result;
}

- (void)installGestureRecognizers
{
  if (!self->_singleTapGestureRecognizer)
  {
    v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__singleTapRecognized_];
    self->_singleTapGestureRecognizer = v3;
    [(UIGestureRecognizer *)v3 setDelegate:self];
    [(UIView *)self addGestureRecognizer:self->_singleTapGestureRecognizer];
    if ((kSingleTapInteractionsEnabled & 1) == 0)
    {
      v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__doubleTapRecognized_];
      self->_doubleTapGestureRecognizer = v4;
      [(UITapGestureRecognizer *)v4 setNumberOfTapsRequired:2];
      [(UIGestureRecognizer *)self->_doubleTapGestureRecognizer setDelegate:self];
      [(UIView *)self addGestureRecognizer:self->_doubleTapGestureRecognizer];
      [(UIGestureRecognizer *)self->_singleTapGestureRecognizer requireGestureRecognizerToFail:self->_doubleTapGestureRecognizer];
      v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__twoFingerDoubleTapRecognized_];
      self->_twoFingerDoubleTapGestureRecognizer = v5;
      [(UITapGestureRecognizer *)v5 setNumberOfTapsRequired:2];
      [(UITapGestureRecognizer *)self->_twoFingerDoubleTapGestureRecognizer setNumberOfTouchesRequired:2];
      [(UIGestureRecognizer *)self->_twoFingerDoubleTapGestureRecognizer setDelegate:self];
      [(UIView *)self addGestureRecognizer:self->_twoFingerDoubleTapGestureRecognizer];
      [(UIGestureRecognizer *)self->_singleTapGestureRecognizer requireGestureRecognizerToFail:self->_twoFingerDoubleTapGestureRecognizer];
    }

    v6 = [[_UIWebHighlightLongPressGestureRecognizer alloc] initWithTarget:self action:sel__highlightLongPressRecognized_];
    self->_highlightLongPressGestureRecognizer = v6;
    [(UILongPressGestureRecognizer *)v6 setDelay:0.12];
    [(UIGestureRecognizer *)self->_highlightLongPressGestureRecognizer setDelegate:self];
    [(UIView *)self addGestureRecognizer:self->_highlightLongPressGestureRecognizer];
    v7 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__longPressRecognized_];
    self->_longPressGestureRecognizer = v7;
    [(UILongPressGestureRecognizer *)v7 setDelay:0.75];
    [(UIGestureRecognizer *)self->_longPressGestureRecognizer setDelegate:self];
    [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer _setRequiresQuietImpulse:1];
    [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer set_prefersToBeExclusiveWithCompetingLongPressGestureRecognizers:1];
    [(UIView *)self addGestureRecognizer:self->_longPressGestureRecognizer];
    v8 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__twoFingerPanRecognized_];
    self->_twoFingerPanGestureRecognizer = v8;
    [(UIPanGestureRecognizer *)v8 setMinimumNumberOfTouches:2];
    [(UIPanGestureRecognizer *)self->_twoFingerPanGestureRecognizer setMaximumNumberOfTouches:2];
    [(UIPanGestureRecognizer *)self->_twoFingerPanGestureRecognizer setDelegate:self];
    twoFingerPanGestureRecognizer = self->_twoFingerPanGestureRecognizer;

    [(UIView *)self addGestureRecognizer:twoFingerPanGestureRecognizer];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (self->_doubleTapGestureRecognizer == a3)
  {
    return 1;
  }

  if (self->_twoFingerDoubleTapGestureRecognizer == a3)
  {
    return 1;
  }

  return !-[UIWebDocumentView _isSubviewOfPlugInView:](self, "_isSubviewOfPlugInView:", [a4 view]);
}

- (BOOL)gestureRecognizer:(id)a3 canPreventGestureRecognizer:(id)a4
{
  if (self->_highlightLongPressGestureRecognizer == a3 || self->_longPressGestureRecognizer == a3)
  {
    return [a4 _isGestureType:{9, v4, v5}] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  if (*&self->_highlightLongPressGestureRecognizer == __PAIR128__(a4, a3) || self->_highlightLongPressGestureRecognizer == a4 && self->_longPressGestureRecognizer == a3)
  {
    return 1;
  }

  singleTapGestureRecognizer = self->_singleTapGestureRecognizer;
  if (singleTapGestureRecognizer != a3)
  {
    goto LABEL_7;
  }

  if ([(UITextInteractionAssistant *)self->_textSelectionAssistant singleTapGesture]== a4)
  {
    return 1;
  }

  singleTapGestureRecognizer = self->_singleTapGestureRecognizer;
LABEL_7:
  if (singleTapGestureRecognizer == a4 && [(UITextInteractionAssistant *)self->_textSelectionAssistant singleTapGesture]== a3)
  {
    return 1;
  }

  highlightLongPressGestureRecognizer = self->_highlightLongPressGestureRecognizer;
  if (highlightLongPressGestureRecognizer == a3 && self->_previewSecondaryGestureRecognizer == a4)
  {
    return 1;
  }

  if (highlightLongPressGestureRecognizer == a4 && self->_previewSecondaryGestureRecognizer == a3)
  {
    return 1;
  }

  if (highlightLongPressGestureRecognizer == a3 && self->_previewGestureRecognizer == a4)
  {
    return 1;
  }

  if (highlightLongPressGestureRecognizer == a4 && self->_previewGestureRecognizer == a3)
  {
    return 1;
  }

  if (self->_singleTapGestureRecognizer == a3 || self->_doubleTapGestureRecognizer == a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 1;
    }
  }

  return 0;
}

- (void)_singleTapRecognized:(id)a3
{
  [a3 location];
  v5 = kSingleTapInteractionsEnabled;
  v6 = kSingleTapInteractionsHeuristic;
  if (kSingleTapInteractionsEnabled == 1 && kSingleTapInteractionsHeuristic == 2)
  {
    [a3 location];
    if ([(UIWebDocumentView *)self _handleSingleTapZoomPreClickAtLocation:?])
    {
      return;
    }

    v6 = kSingleTapInteractionsHeuristic;
    v5 = kSingleTapInteractionsEnabled;
  }

  if ((v5 & 1) != 0 && v6 == 3)
  {
    [a3 location];

    [(UIWebDocumentView *)self _handleSingleTapZoomPostClickAtLocation:?];
  }

  else
  {
    if (!self->_interaction.isDisplayingHighlight)
    {
      *(self + 957) |= 0x20u;
    }

    [a3 location];
    -[UIWebDocumentView _resetInteractionWithLocation:modifierFlags:](self, "_resetInteractionWithLocation:modifierFlags:", [a3 modifierFlags], v8, v9);

    [(UIWebDocumentView *)self attemptClick:self];
  }
}

- (void)_doubleTapRecognized:(id)a3
{
  [a3 location];

  [(UIWebDocumentView *)self _handleDoubleTapAtLocation:?];
}

- (void)_twoFingerDoubleTapRecognized:(id)a3
{
  [a3 location];

  [(UIWebDocumentView *)self _handleTwoFingerDoubleTapAtLocation:?];
}

- (SEL)_actionForLongPressOnElement:(id)a3
{
  if (![a3 touchCalloutEnabled])
  {
    return 0;
  }

  if (self->_interaction.allowsImageSheet)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return sel__showImageSheet;
    }
  }

  if (self->_interaction.allowsDataDetectorsSheet)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([objc_msgSend(DataDetectorsUIGetClass(@"DDDetectionController") "tapAndHoldSchemes")])
      {
        return sel__showDataDetectorsSheet;
      }
    }
  }

  if (!self->_interaction.allowsLinkSheet)
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return sel__showLinkSheet;
  }

  else
  {
    return 0;
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if ((*(self + 956) & 8) == 0 || (WebThreadLock(), [a3 locationInView:self], v25 = v5, v26 = v6, (v7 = -[UIWebDocumentView approximateNodeAtViewportLocation:](self, "approximateNodeAtViewportLocation:", &v25)) != 0))
  {
    if (self->_highlightLongPressGestureRecognizer == a3 || self->_doubleTapGestureRecognizer == a3 || self->_twoFingerDoubleTapGestureRecognizer == a3 || self->_singleTapGestureRecognizer == a3 || self->_longPressGestureRecognizer == a3) && (WebThreadLock(), (v8 = -[UIWebDocumentView textFormElement](self, "textFormElement")) != 0) && (v9 = v8, [a3 locationInView:self], v25 = v10, v26 = v11, (v12 = -[UIWebDocumentView approximateNodeAtViewportLocation:](self, "approximateNodeAtViewportLocation:", &v25)) != 0) && (objc_msgSend(v9, "isSameNode:", v12))
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      if (self->_highlightLongPressGestureRecognizer == a3)
      {
        [a3 locationInView:{objc_msgSend(a3, "view")}];
        v25 = v13;
        v26 = v14;
        WebThreadLock();
        v7 = [(UIWebDocumentView *)self approximateNodeAtViewportLocation:&v25];
        if (!v7)
        {
          return v7;
        }

        v15 = v7;
        if (![v7 alwaysAttemptToShowTapHighlight] || (objc_msgSend(v15, "showsTapHighlight") & 1) == 0)
        {
          LOBYTE(v7) = [(UIWebDocumentView *)self _actionForLongPressOnElement:v15]!= 0;
          return v7;
        }
      }

      else if (self->_twoFingerPanGestureRecognizer == a3)
      {
        [a3 locationOfTouch:0 inView:self];
        v17 = v16;
        v19 = v18;
        [a3 locationOfTouch:1 inView:self];
        v21 = v20;
        v23 = v22;
        WebThreadLock();
        LOBYTE(v7) = [(UIWebDocumentView *)self supportsTwoFingerScrollingAtTouchLocation:v17 andLocation:v19, v21, v23];
        return v7;
      }

      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- (void)_highlightLongPressRecognized:(id)a3
{
  v5 = [a3 state];
  if (v5 == 4)
  {
    goto LABEL_10;
  }

  if (v5 != 3)
  {
    if (v5 == 1)
    {
      if (!self->_interaction.isDisplayingHighlight)
      {
        *(self + 957) |= 0x20u;
      }

      [a3 startPoint];
      v7 = v6;
      v9 = v8;
      v10 = [a3 modifierFlags];

      [(UIWebDocumentView *)self _resetInteractionWithLocation:v10 modifierFlags:v7, v9];
    }

    return;
  }

  if ([(UIPreviewItemController *)self->_previewItemController interactionInProgress])
  {
LABEL_10:

    [(UIWebDocumentView *)self cancelInteraction];
  }

  else
  {
    [a3 startPoint];
    -[UIWebDocumentView _resetInteractionWithLocation:modifierFlags:](self, "_resetInteractionWithLocation:modifierFlags:", [a3 modifierFlags], v11, v12);

    [(UIWebDocumentView *)self attemptClick:self];
  }
}

- (void)_longPressRecognized:(id)a3
{
  if ([a3 state] == 1)
  {
    if (self->_interaction.element)
    {
      v4 = [(UIWebDocumentView *)self _actionForLongPressOnElement:?];
      if (v4)
      {
        v5 = v4;
        if (dyld_program_sdk_at_least())
        {
          [self v5];
        }

        else
        {
          [(UIWebDocumentView *)self performSelector:v5];
        }

        highlightLongPressGestureRecognizer = self->_highlightLongPressGestureRecognizer;

        [(_UIWebHighlightLongPressGestureRecognizer *)highlightLongPressGestureRecognizer cancel];
      }
    }

    else
    {

      [(UIWebDocumentView *)self cancelInteraction];
    }
  }
}

- (void)_twoFingerPanRecognized:(id)a3
{
  v5 = [a3 state];
  if ((v5 - 3) < 2)
  {

    [(UIWebDocumentView *)self webViewDidEndOverflowScroll:0];
  }

  else
  {
    if (v5 != 2)
    {
      if (v5 != 1)
      {
        return;
      }

      [a3 locationInView:self];
      self->_interaction.location.x = v6;
      self->_interaction.location.y = v7;
      self->_interaction.lastPanTranslation = *MEMORY[0x1E695EFF8];
      [(UIWebDocumentView *)self webViewDidStartOverflowScroll:0];
    }

    if ([(UIPreviewItemController *)self->_previewItemController interactionInProgress])
    {

      [(UIWebDocumentView *)self cancelInteraction];
    }

    else
    {

      [(UIWebDocumentView *)self sendScrollWheelEvents];
    }
  }
}

uint64_t __47__UIWebDocumentView_Interaction__performClick___block_invoke(uint64_t a1)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v14[5] = MEMORY[0x1E69E9820];
    v14[6] = 3221225472;
    v14[7] = __47__UIWebDocumentView_Interaction__performClick___block_invoke_2;
    v14[8] = &unk_1E70F5CA0;
    v14[9] = *(a1 + 32);
    WebThreadRunOnMainThread();
  }

  v3 = [*(*(a1 + 32) + 824) nodeCanBecomeFirstResponder];
  if (v3)
  {
    v4 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v5 = __47__UIWebDocumentView_Interaction__performClick___block_invoke_3;
LABEL_5:
    v6 = v3 ^ 1;
    v4[2] = v5;
    v4[3] = &unk_1E70F5CA0;
    v4[4] = *(a1 + 32);
    WebThreadRunOnMainThread();
    goto LABEL_10;
  }

  if ([*(*(a1 + 32) + 824) isLikelyToBeginPageLoad] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v5 = __47__UIWebDocumentView_Interaction__performClick___block_invoke_4;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_10:
  v7 = [*(*(a1 + 32) + 432) window];
  v8 = [*(a1 + 32) newMouseEvent:0];
  [v7 sendEventSynchronously:v8];
  v9 = [v8 wasHandled];

  v10 = 1;
  v11 = [*(a1 + 32) newMouseEvent:1];
  [v7 sendEventSynchronously:v11];
  if ((v9 & 1) == 0)
  {
    v10 = [v11 wasHandled];
  }

  if (isKindOfClass)
  {
    WebThreadRunOnMainThread();
  }

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    WebThreadRunOnMainThread();
  }

  if (!(v10 & 1 | ((kSingleTapInteractionsEnabled & 1) == 0)) && (kSingleTapInteractionsHeuristic - 1) <= 1)
  {
    WebThreadRunOnMainThread();
  }

  return WebThreadRunOnMainThread();
}

- (id)newMouseEvent:(int)a3
{
  v3 = *&a3;
  v5 = [MEMORY[0x1E69E2F40] instancesRespondToSelector:sel_initWithMouseEventType_timeStamp_location_modifiers_];
  v6 = objc_alloc(MEMORY[0x1E69E2F40]);
  +[UIWebDocumentView getTimestamp];
  if (v5)
  {
    modifierFlags = self->_interaction.modifierFlags;

    return [v6 initWithMouseEventType:v3 timeStamp:modifierFlags & 0xA0000 | ((HIWORD(modifierFlags) & 1) << 18) & 0xFBEFFFFF | (modifierFlags >> 4) & 0x10000 | (((modifierFlags >> 18) & 1) << 20) & 0xFBFFFFFF | (((modifierFlags >> 23) & 1) << 26) location:? modifiers:?];
  }

  else
  {

    return [v6 initWithMouseEventType:v3 timeStamp:? location:?];
  }
}

uint64_t __64__UIWebDocumentView_Interaction___sendMouseMoveAndAttemptClick___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 432) window];
  v3 = [*(a1 + 32) newMouseEvent:2];
  v5 = 0;
  [v2 sendMouseMoveEvent:v3 contentChange:&v5];

  if (v5 == 1 || v5 == 2)
  {
    return WebThreadRunOnMainThread();
  }

  else
  {
    return [*(a1 + 32) performClick:*(a1 + 32)];
  }
}

- (void)attemptClick:(id)a3
{
  v4 = self;
  v16 = *MEMORY[0x1E69E9840];
  v12 = self;
  if (![(UIView *)self isFirstResponder])
  {
    [(UIWebDocumentView *)v4 becomeFirstResponder];
  }

  [(UIWebDocumentView *)v4 clearInteractionTimer];
  p_interaction = &v4->_interaction;
  if (!v4->_interaction.isDisplayingHighlight && GSEventQueueContainsMouseEvent())
  {
    goto LABEL_7;
  }

  if ([(UIWebDocumentView *)v4 _isInspectorSearchingForNode])
  {
    WebThreadLock();
    [-[UIWebDocumentView deepestNodeAtViewportLocation:](v4 deepestNodeAtViewportLocation:{v4->_interaction.location.x, v4->_interaction.location.y), "inspect"}];
LABEL_7:

    [(UIWebDocumentView *)v4 cancelInteraction];
    return;
  }

  if (!v4->_interaction.isDisplayingHighlight)
  {
    [(UIWebDocumentView *)v4 highlightApproximateNodeInverted:0];
  }

  if (v4->_interaction.allowsImageSheet)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [(interactionSheet *)v4->_interaction.delegate webView:v4 shouldImmediatelyShowImageSheetForElement:v4->_interaction.element])
    {

      [(UIWebDocumentView *)v4 _showImageSheet];
      return;
    }
  }

  if (!v4->_interaction.allowsDataDetectorsSheet)
  {
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_30;
  }

  v6 = [(DOMNode *)v4->_interaction.element absoluteLinkURL];
  v7 = [(WebView *)v4->_webView mainFrame];
  if (!v6)
  {
    goto LABEL_30;
  }

  v8 = v7;
  if ((MGGetBoolAnswer() & 1) == 0)
  {
    v13[0] = 0;
    if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
    {
      v13[1] = MEMORY[0x1E69E9820];
      v13[2] = 3221225472;
      v13[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
      v13[4] = &__block_descriptor_40_e5_v8__0l;
      v13[5] = v13;
      v14 = xmmword_1E712C448;
      v15 = 0;
      TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    }

    if (TelephonyUtilitiesLibraryCore_frameworkLibrary)
    {
      v9 = v13[0];
      if (!v13[0])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TelephonyUtilitiesLibrary(void)"];
      v9 = [(UIWebDocumentView *)v4 handleFailureInFunction:v11 file:@"UIWebDocumentViewInteraction.m" lineNumber:121 description:@"%s", v13[0]];
      __break(1u);
    }

    free(v9);
LABEL_27:
    if ([v6 hasTelephonyScheme])
    {
LABEL_29:
      [(UIWebDocumentView *)v4 _showDataDetectorsSheet];
      return;
    }
  }

  if ([objc_msgSend(DataDetectorsUIGetClass(@"DDDetectionController") "sharedController")])
  {
    goto LABEL_29;
  }

LABEL_30:
  if (p_interaction->element)
  {
    p_interaction->isOnWebThread = 1;
    if (!p_interaction->attemptedClick)
    {
      p_interaction->attemptedClick = 1;
      v10 = v4;
    }

    [(UIWebDocumentView *)v4 _sendMouseMoveAndAttemptClick:a3];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [WebThreadMakeNSInvocation() setArgument:&v12 atIndex:2];
      WebThreadCallDelegateAsync();
    }

    if (kSingleTapInteractionsEnabled == 1 && (kSingleTapInteractionsHeuristic - 1) <= 1)
    {
      [(UIWebDocumentView *)v12 _syntheticMouseEventNotHandledAtLocation:v12->_interaction.location.x, v12->_interaction.location.y];
    }

    [(UIWebDocumentView *)v12 cancelInteraction];
  }
}

- (void)webView:(id)a3 didObserveDeferredContentChange:(int)a4 forFrame:(id)a5
{
  if (a4)
  {
    [(UIWebDocumentView *)self completeInteraction:a3];
  }

  else
  {
    [(UIWebDocumentView *)self performClick:self, *&a4, a5];
  }
}

- (id)approximateNodeAtViewportLocation:(CGPoint *)a3
{
  [(WebFrameView *)[(WebFrame *)[(WebView *)self->_webView mainFrame] frameView] documentView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(WebView *)self->_webView mainFrame];

  return [(WebFrame *)v5 approximateNodeAtViewportLocation:a3];
}

- (id)deepestNodeAtViewportLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(WebFrameView *)[(WebFrame *)[(WebView *)self->_webView mainFrame] frameView] documentView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = [(WebView *)self->_webView mainFrame];

  return [(WebFrame *)v6 deepestNodeAtViewportLocation:x, y];
}

- (void)highlightApproximateNodeInverted:(BOOL)a3
{
  v3 = a3;
  [(UIWebDocumentView *)self clearInteractionTimer];
  if (!GSEventQueueContainsMouseEvent())
  {
    WebThreadLock();
    v5 = [(UIWebDocumentView *)self approximateNodeAtViewportLocation:&self->_interaction.location];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
    }

    v6 = [(UIWebDocumentView *)self formElement];
    if ([(UIWebDocumentView *)self _parentTextView])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (!v5 || [v6 isEqual:v5])
    {
      goto LABEL_8;
    }

    if (v3)
    {
      v7 = +[UIWebDocumentView _createDefaultHighlightView];
      [(UIWebTiledView *)self visibleRect];
      [(UIView *)self convertRect:0 toView:?];
      [v7 setInvertHighlight:1 clipRect:?];
      [v5 showsTapHighlight];
    }

    else
    {
      v8 = +[UIWebDocumentView _sharedHighlightView];
      v7 = v8;
      if (!self->_interaction.element)
      {
        [v8 removeFromSuperview];
        if ([v5 showsTapHighlight])
        {
          [(UIView *)self addSubview:v7];
        }
      }

      self->_interaction.element = [UIThreadSafeNode threadSafeNodeWithNode:v5];
      if (([v5 showsTapHighlight] & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (*(self + 957) & 0x20) != 0 && (objc_opt_respondsToSelector())
    {
      [(interactionSheet *)self->_interaction.delegate webViewWillShowInteractionHighlight:self];
    }

    [(UIWebDocumentView *)self computeRectForElement:v5 withHighligh:v7 isInverted:v3];
    if (v3)
    {

LABEL_8:
      *(self + 957) &= ~0x20u;
      return;
    }

LABEL_21:
    self->_mouseDownCount = 0;
    self->_interaction.isDisplayingHighlight = 1;
    goto LABEL_8;
  }
}

- (void)hideTapHighlight
{
  [(UIWebDocumentView *)self clearInteractionTimer];
  v2 = +[UIWebDocumentView _sharedHighlightView];

  [v2 removeFromSuperview];
}

- (void)highlightApproximateNodeAndDisplayInfoSheet
{
  [(UIWebDocumentView *)self highlightApproximateNodeInverted:0];
  element = self->_interaction.element;
  if (element)
  {
    if (![(DOMNode *)element touchCalloutEnabled])
    {
      return;
    }

    if (self->_interaction.allowsImageSheet && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = sel__showImageSheet;
    }

    else if (self->_interaction.allowsDataDetectorsSheet && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [objc_msgSend(DataDetectorsUIGetClass(@"DDDetectionController") "tapAndHoldSchemes")])
    {
      v4 = sel__showDataDetectorsSheet;
    }

    else
    {
      if (!self->_interaction.allowsLinkSheet)
      {
        return;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return;
      }

      v4 = sel__showLinkSheet;
    }

    [(UIWebDocumentView *)self performInteractionSelector:v4 afterDelay:0.75];
  }

  else
  {

    [(UIWebDocumentView *)self cancelInteraction];
  }
}

- (void)resetInteraction
{
  [(UIWebDocumentView *)self clearInteractionTimer];
  self->_interaction.isCancelled = 1;
  self->_interaction.isDisplayingHighlight = 0;
}

- (void)completeInteraction
{
  p_interaction = &self->_interaction;
  self->_interaction.isOnWebThread = 0;
  [(UIWebDocumentView *)self cancelInteractionWithImmediateDisplay:0];
  if (p_interaction->attemptedClick)
  {
    p_interaction->attemptedClick = 0;
  }
}

- (void)deferInteraction
{
  [(UIWebDocumentView *)self resetInteraction];

  [(UIWebDocumentView *)self performInteractionSelector:sel_hideTapHighlight afterDelay:0.0];
}

- (void)cancelInteractionWithImmediateDisplay:(BOOL)a3
{
  v3 = a3;
  p_interaction = &self->_interaction;
  if (self->_interaction.var0)
  {
    element = self->_interaction.element;
    if (element)
    {
      [(DOMNode *)element absoluteQuad];
      v13.origin.x = quadBoundingBox(v12);
      if (!CGRectIsEmpty(v13))
      {
        if ([(DOMNode *)p_interaction->element ownerDocument])
        {
          return;
        }
      }
    }

    var0 = p_interaction->var0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__UIWebDocumentView_Interaction__cancelInteractionWithImmediateDisplay___block_invoke;
    v11[3] = &unk_1E70F5CA0;
    v11[4] = self;
    [(UIViewController *)var0 dismissViewControllerAnimated:0 completion:v11];
  }

  [(UIWebDocumentView *)self resetInteraction];
  if (!v3)
  {
    p_element = &p_interaction->element;
    if (!p_interaction->element)
    {
      return;
    }

    [(UIWebDocumentView *)self performInteractionSelector:sel_hideTapHighlight afterDelay:0.0];
    goto LABEL_15;
  }

  v8 = [+[UIWebDocumentView _sharedHighlightView](UIWebDocumentView "_sharedHighlightView")];
  p_element = &p_interaction->element;
  if (p_interaction->element)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == self;
  }

  if (v10)
  {
    [(UIWebDocumentView *)self hideTapHighlight];
LABEL_15:
    if (!p_interaction->var0)
    {
      WebThreadLock();

      *p_element = 0;
    }
  }
}

- (id)_targetURL
{
  p_interaction = &self->_interaction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    element = p_interaction->element;

    return [(DOMNode *)element hrefURL];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = p_interaction->element;

      return [(DOMNode *)v5 absoluteLinkURL];
    }

    else
    {
      return 0;
    }
  }
}

- (void)_didDismissElementSheet
{
  [(UIWebDocumentView *)self _cleanupSheet];
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_interaction.delegate;

    [(interactionSheet *)delegate webViewDidDismissElementSheet:self];
  }
}

- (void)_cleanupSheet
{
  p_interaction = &self->_interaction;
  [(UIWebRotatingAlertController *)self->_interaction.var0 doneWithSheet];
  [(_UIRotatingAlertController *)p_interaction->var0 setRotatingSheetDelegate:0];
  v4 = p_interaction->var0;
  p_interaction->var0 = 0;

  [(UIWebDocumentView *)self completeInteraction];
}

- (void)sendScrollWheelEvents
{
  [(UIPanGestureRecognizer *)self->_twoFingerPanGestureRecognizer translationInView:self];
  documentScale = self->_documentScale;
  if ((v3 - self->_interaction.lastPanTranslation.x) / documentScale != 0.0 || (v4 - self->_interaction.lastPanTranslation.y) / documentScale != 0.0)
  {
    self->_interaction.lastPanTranslation.x = v3;
    self->_interaction.lastPanTranslation.y = v4;
    WebThreadLock();
    v6 = objc_alloc(MEMORY[0x1E69E2F40]);
    +[UIWebDocumentView getTimestamp];
    v7 = [v6 initWithScrollWheelEventWithTimeStamp:? location:? deltaX:? deltaY:?];
    [-[WebView window](self->_webView "window")];
  }
}

- (BOOL)supportsTwoFingerScrollingAtTouchLocation:(CGPoint)a3 andLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9 = [(WebView *)self->_webView hitTest:?];
  v10 = [(WebView *)self->_webView hitTest:x, y];
  v11 = [v9 lastScrollableAncestor];
  if (v11 && v11 == [v10 lastScrollableAncestor])
  {
    return 1;
  }

  if (v9 != v10)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v12 = [objc_msgSend(v9 "_frame")];
  v13 = [objc_msgSend(v9 "_frame")];
  return v12 && v12 == v13;
}

- (CGPoint)interactionLocation
{
  x = self->_interaction.location.x;
  y = self->_interaction.location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)superviewForSheet
{
  v2 = self;
  v3 = [(UIWebDocumentView *)self _parentTextView];
  if (!v3)
  {
    v3 = v2;
  }

  v4 = [(UIView *)v3 window];
  v5 = objc_opt_respondsToSelector();
  delegate = v2->_interaction.delegate;
  if (v5)
  {

    return [(interactionSheet *)delegate superviewForInteractionForWebView:v2];
  }

  else if (objc_opt_respondsToSelector())
  {
    v8 = v2->_interaction.delegate;

    return [(interactionSheet *)v8 superviewForImageSheetForWebView:v2];
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = [UIViewController viewControllerForView:v2];
      if (v10)
      {
        v9 = v10;
      }

      v2 = [(UIView *)v2 superview];
    }

    while (v2);
    if (v9)
    {

      return [v9 view];
    }

    else
    {
      return v4;
    }
  }
}

- (void)_didChangeDragCaretRectFromRect:(CGRect)a3 toRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  IsEmpty = CGRectIsEmpty(a3);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v10 = CGRectIsEmpty(v16);
  if (!IsEmpty || !v10)
  {
    if (IsEmpty)
    {
      v11 = [[_UITextDragCaretView alloc] initWithTextInputView:self];
      self->_textDragCaretView = v11;
      v12 = [UIWebCaretRectTextPosition textPositionWithCaretRect:x, y, width, height];

      [(_UITextDragCaretView *)v11 insertAtPosition:v12];
    }

    else
    {
      textDragCaretView = self->_textDragCaretView;
      if (v10)
      {
        [(_UITextDragCaretView *)self->_textDragCaretView remove];

        self->_textDragCaretView = 0;
      }

      else
      {
        v14 = [UIWebCaretRectTextPosition textPositionWithCaretRect:x, y, width, height];

        [(_UITextDragCaretView *)textDragCaretView updateToPosition:v14];
      }
    }
  }
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:@"dragStartedFromWebContent"];
  [a3 _locationInView:self];
  v7 = v6;
  v9 = v8;
  webView = self->_webView;
  [(UIView *)self convertPoint:[(UIView *)self window] toView:v6, v8];
  if (![(WebView *)webView _requestStartDataInteraction:v7 globalPosition:v9, v11, v12])
  {
    return MEMORY[0x1E695E0F0];
  }

  [(UIWebDocumentView *)self setCurrentDragSourceAction:[(WebView *)self->_webView _dragSourceAction]];
  if (![(UIWebDocumentView *)self currentDragSourceAction])
  {
    return MEMORY[0x1E695E0F0];
  }

  [(WebView *)self->_webView _draggedElementBounds];
  self->_currentDragBoundingRect.origin.x = v13;
  self->_currentDragBoundingRect.origin.y = v14;
  self->_currentDragBoundingRect.size.width = v15;
  self->_currentDragBoundingRect.size.height = v16;
  [(UIWebDocumentView *)self setDraggedLinkURL:[(WebView *)self->_webView _draggedLinkURL]];
  [(UIWebDocumentView *)self setDraggedLinkTitle:[(WebView *)self->_webView _draggedLinkTitle]];
  v17 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E69E2F60] "sharedInstance")];
  if (v17)
  {
    v30[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  if (![v18 count])
  {
    return MEMORY[0x1E695E0F0];
  }

  [(UIWebDocumentView *)self webDraggingDelegate];
  if (objc_opt_respondsToSelector())
  {
    v18 = [(UIWebDraggingDelegate *)[(UIWebDocumentView *)self webDraggingDelegate] _webView:self adjustedItemProviders:v18];
  }

  v19 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v18);
        }

        [v19 addObject:{-[UIDragItem initWithItemProvider:]([UIDragItem alloc], "initWithItemProvider:", *(*(&v25 + 1) + 8 * i))}];
      }

      v21 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v21);
  }

  return v19;
}

- (CGRect)convertRectWithDocumentScale:(CGRect)a3
{
  documentScale = self->_documentScale;
  v4 = a3.origin.x * documentScale;
  v5 = a3.origin.y * documentScale;
  v6 = a3.size.width * documentScale;
  v7 = a3.size.height * documentScale;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)targetedDragPreviewFromCurrentTextIndicatorData
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = [(WebView *)self->_webView _getDataInteractionData];
  v4 = [v3 dataInteractionImage];
  v5 = [(UIWebDocumentView *)self currentDragSourceAction];
  [v3 textBoundingRectInRootViewCoordinates];
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;
  if (CGRectIsEmpty(v55))
  {
    x = self->_currentDragBoundingRect.origin.x;
    y = self->_currentDragBoundingRect.origin.y;
    width = self->_currentDragBoundingRect.size.width;
    height = self->_currentDragBoundingRect.size.height;
  }

  v10 = [v3 textRectsInBoundingRectCoordinates];
  if (![v10 count])
  {
    v10 = [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGRect:", *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height)}];
  }

  [(UIWebDocumentView *)self convertRectFromSelectedFrameCoordinates:x, y, width, height];
  if ((v5 & 0xC) != 0)
  {
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = [UIImageView alloc];
    v20 = [v3 contentImage];
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v4;
    }

    v22 = [(UIImageView *)v19 initWithImage:v21];
    [+[UITextEffectsWindow sharedTextEffectsWindowForWindowScene:](UITextEffectsWindow sharedTextEffectsWindowForWindowScene:{objc_msgSend(-[UIView _window](self, "_window"), "windowScene")), "convertRect:fromView:", self, v15, v16, v17, v18}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [(UIImageView *)v22 setFrame:?];
    v31 = -[UIPreviewTarget initWithContainer:center:]([UIDragPreviewTarget alloc], "initWithContainer:center:", +[UITextEffectsWindow sharedTextEffectsWindowForWindowScene:](UITextEffectsWindow, "sharedTextEffectsWindowForWindowScene:", [-[UIView _window](self "_window")]), v24 + v28 * 0.5, v26 + v30 * 0.5);
    if (self->_documentScale != 1.0)
    {
      v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v33 = [v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v50;
        do
        {
          v36 = 0;
          do
          {
            if (*v50 != v35)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v49 + 1) + 8 * v36) CGRectValue];
            [(UIWebDocumentView *)self convertRectWithDocumentScale:?];
            [v32 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGRect:")}];
            ++v36;
          }

          while (v34 != v36);
          v34 = [v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v34);
      }

      v10 = [MEMORY[0x1E695DEC8] arrayWithArray:v32];
    }

    v37 = [(UIPreviewParameters *)[UIDragPreviewParameters alloc] initWithTextLineRects:v10];
    v38 = [v3 estimatedBackgroundColor];
    if (!v38)
    {
      v38 = +[UIColor whiteColor];
    }

    [(UIPreviewParameters *)v37 setBackgroundColor:v38];
    v39 = [[UITargetedDragPreview alloc] initWithView:v22 parameters:v37 target:v31];
  }

  else if ((v5 & 2) != 0)
  {
    v40 = [[UIImageView alloc] initWithImage:v4];
    [(UIView *)self convertRect:self toView:self->_currentDragBoundingRect.origin.x, self->_currentDragBoundingRect.origin.y, self->_currentDragBoundingRect.size.width, self->_currentDragBoundingRect.size.height];
    [(UIImageView *)v40 setFrame:?];
    v41 = [UIDragPreviewTarget alloc];
    __asm { FMOV            V2.2D, #0.5 }

    v47 = [(UIPreviewTarget *)v41 initWithContainer:self center:vaddq_f64(self->_currentDragBoundingRect.origin, vmulq_f64(self->_currentDragBoundingRect.size, _Q2))];
    v37 = objc_alloc_init(UIDragPreviewParameters);
    [(UIPreviewParameters *)v37 setBackgroundColor:+[UIColor whiteColor]];
    v39 = [[UITargetedDragPreview alloc] initWithView:v40 parameters:v37 target:v47];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unhandled draggable content type: %tu", v5}];
    v37 = 0;
    v39 = 0;
  }

  return v39;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  [(UIWebDocumentView *)self webDraggingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [(UIWebDraggingDelegate *)[(UIWebDocumentView *)self webDraggingDelegate] _webView:self previewForLiftingItem:a4 session:a5]) == 0)
  {

    return [(UIWebDocumentView *)self targetedDragPreviewFromCurrentTextIndicatorData];
  }

  return result;
}

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v5 = +[_UIEditMenuSceneComponent sceneComponentForView:](_UIEditMenuSceneComponent, "sceneComponentForView:", [a3 view]);

  [v5 dismissCurrentMenu];
}

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  [(UIWebDocumentView *)self webDraggingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [(UIWebDraggingDelegate *)[(UIWebDocumentView *)self webDraggingDelegate] _webView:self previewForCancellingItem:a4 withDefault:a5]) == 0)
  {

    return [(UIWebDocumentView *)self targetedDragPreviewFromCurrentTextIndicatorData];
  }

  return result;
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  if (!self->_isPerformingDrop)
  {
    [(UIWebDocumentView *)self resetCurrentDragInformation:a3];
  }
}

- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  [(UIWebDocumentView *)self webDraggingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = [(UIWebDocumentView *)self webDraggingDelegate];

  return [(UIWebDraggingDelegate *)v6 _webView:self dataOwnerForDragSession:a4];
}

- (int64_t)_dragInteraction:(id)a3 dataOwnerForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  [(UIWebDocumentView *)self webDraggingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v9 = [(UIWebDocumentView *)self webDraggingDelegate];

  return [(UIWebDraggingDelegate *)v9 _webView:self dataOwnerForAddingToSession:a4 withTouchAtPoint:x, y];
}

- (BOOL)_dragInteraction:(id)a3 sessionSupportsSystemDrag:(id)a4
{
  [(UIWebDocumentView *)self webDraggingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v6 = [(UIWebDocumentView *)self webDraggingDelegate];

  return [(UIWebDraggingDelegate *)v6 _webView:self dragSessionSupportsSystemDrag:a4];
}

- (void)_createSheetWithElementActions:(id)a3 showLinkTitle:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x1E69E9840];
  p_interaction = &self->_interaction;
  var0 = self->_interaction.var0;
  if (var0)
  {
  }

  v7 = [(UIWebDocumentView *)self _targetURL];
  v8 = [v7 isJavaScriptURL];
  if (!v8 || [objc_msgSend(MEMORY[0x1E69E2F78] "standardPreferences")])
  {
    p_interaction->documentScale = self->_documentScale;
    v9 = [[UIWebRotatingAlertController alloc] initWithUIWebDocumentView:self];
    p_interaction->var0 = v9;
    [(_UIRotatingAlertController *)v9 setRotatingSheetDelegate:self];
    [(UIAlertController *)v9 setPreferredStyle:0];
    if (v4)
    {
      if (v8)
      {
        v10 = [_UIKitBundle() localizedStringForKey:@"JavaScript Action Sheet Title" value:@"JavaScript" table:@"Localizable"];
      }

      else
      {
        v10 = [v7 _web_userVisibleString];
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = 0;
        goto LABEL_13;
      }

      v10 = [(DOMNode *)p_interaction->element getAttribute:@"title"];
    }

    v11 = v10;
LABEL_13:
    if ([v11 length])
    {
      [(UIAlertController *)v9 setTitle:v11];
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [a3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(a3);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [v16 _title];
          v22[4] = v16;
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __86__UIWebDocumentView_InteractionPrivate___createSheetWithElementActions_showLinkTitle___block_invoke;
          v23[3] = &unk_1E7105CC8;
          v23[4] = v9;
          v23[5] = self;
          v23[6] = v16;
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __86__UIWebDocumentView_InteractionPrivate___createSheetWithElementActions_showLinkTitle___block_invoke_2;
          v22[3] = &unk_1E712C2C0;
          [(UIAlertController *)v9 _addActionWithTitle:v17 style:0 handler:v23 shouldDismissHandler:v22];
        }

        v13 = [a3 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    v18 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __86__UIWebDocumentView_InteractionPrivate___createSheetWithElementActions_showLinkTitle___block_invoke_3;
    v21[3] = &unk_1E712C2E8;
    v21[4] = self;
    [(UIAlertController *)v9 addAction:[UIAlertAction actionWithTitle:v18 style:1 handler:v21]];
  }
}

void *__86__UIWebDocumentView_InteractionPrivate___createSheetWithElementActions_showLinkTitle___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[105])
  {
    [*(a1 + 48) _runActionWithElement:result[103] targetURL:objc_msgSend(result documentView:"_targetURL") interactionLocation:{*(*(a1 + 40) + 776), *(*(a1 + 40) + 784)}];
    if (![*(a1 + 48) dismissalHandler] || (result = (*(objc_msgSend(*(a1 + 48), "dismissalHandler") + 16))(), result))
    {
      v4 = *(a1 + 40);

      return [v4 _didDismissElementSheet];
    }
  }

  return result;
}

uint64_t __86__UIWebDocumentView_InteractionPrivate___createSheetWithElementActions_showLinkTitle___block_invoke_2(uint64_t a1)
{
  if (![*(a1 + 32) dismissalHandler])
  {
    return 1;
  }

  v2 = *([*(a1 + 32) dismissalHandler] + 16);

  return v2();
}

- (void)_appendOpenActionsForURL:(id)a3 actions:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (_UIApplicationHasAppLinkEntitlements() && (v6 = _UIAppLinkForURL(a3)) != 0)
  {
    v7 = v6;
    v11 = @"UIWebElementActionContextAppLinkKey";
    v12[0] = v6;
    [a4 addObject:{+[UIWebElementAction standardElementActionWithType:customTitle:context:](UIWebElementAction, "standardElementActionWithType:customTitle:context:", 5, 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1))}];
    if ([objc_msgSend(v7 "targetApplicationProxy")])
    {
      v9 = @"UIWebElementActionContextAppLinkKey";
      v10 = v7;
      [a4 addObject:{+[UIWebElementAction standardElementActionWithType:customTitle:context:](UIWebElementAction, "standardElementActionWithType:customTitle:context:", 6, 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v10, &v9, 1))}];
    }
  }

  else
  {
    v8 = [UIWebElementAction standardElementActionWithType:1];

    [a4 addObject:v8];
  }
}

- (void)_showImageSheet
{
  p_interaction = &self->_interaction;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(interactionSheet *)p_interaction->delegate webView:self showCustomImageSheetForElement:p_interaction->element fromLocation:p_interaction->location.x, p_interaction->location.y])
  {
    v4 = UIApp;
    v5 = [-[UIView _window](self "_window")];

    [v4 _cancelAllEventsOfType:0 onWindowScene:v5];
    return;
  }

  v6 = [(DOMNode *)p_interaction->element hrefURL];
  v7 = [(DOMNode *)p_interaction->element showsTapHighlight];
  v8 = [MEMORY[0x1E695DF70] array];
  if (v7)
  {
    [(UIWebDocumentView *)self _appendOpenActionsForURL:v6 actions:v8];
  }

  if ([getSSReadingListClass_0() supportsURL:v6])
  {
    [v8 addObject:{+[UIWebElementAction standardElementActionWithType:](UIWebElementAction, "standardElementActionWithType:", 4)}];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v9 = qword_1ED4A3038;
  v24 = qword_1ED4A3038;
  if (!qword_1ED4A3038)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getkTCCServicePhotosSymbolLoc_block_invoke;
    v20 = &unk_1E70F2F20;
    v10 = TCCLibrary_0();
    v22[3] = dlsym(v10, "kTCCServicePhotos");
    qword_1ED4A3038 = v22[3];
    v9 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkTCCServicePhotos(void)") description:{@"UIWebDocumentViewInteraction.m", 124, @"%s", dlerror(), v17, v18, v19, v20}];
LABEL_29:
    __break(1u);
    return;
  }

  v11 = *v9;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v12 = off_1ED4A3030;
  v24 = off_1ED4A3030;
  if (!off_1ED4A3030)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getTCCAccessPreflightSymbolLoc_block_invoke_0;
    v20 = &unk_1E70F2F20;
    v13 = TCCLibrary_0();
    v22[3] = dlsym(v13, "TCCAccessPreflight");
    off_1ED4A3030 = v22[3];
    v12 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v12)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"TCCAccessPreflightResult __TCCAccessPreflight(CFStringRef description:{CFDictionaryRef)"), @"UIWebDocumentViewInteraction.m", 123, @"%s", dlerror(), v17, v18, v19, v20}];
    goto LABEL_29;
  }

  if (v12(v11, 0) != 1)
  {
    [v8 addObject:{+[UIWebElementAction standardElementActionWithType:](UIWebElementAction, "standardElementActionWithType:", 3)}];
  }

  if (([v6 isJavaScriptURL] & 1) == 0)
  {
    [v8 addObject:{+[UIWebElementAction standardElementActionWithType:](UIWebElementAction, "standardElementActionWithType:", 2)}];
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = -[interactionSheet webView:actionsForImageElement:withTargetURL:suggestedActions:](p_interaction->delegate, "webView:actionsForImageElement:withTargetURL:suggestedActions:", self, p_interaction->element, v6, [v8 copy]);
    if (v14)
    {
      v8 = v14;
    }
  }

  [(UIWebDocumentView *)self _createSheetWithElementActions:v8 showLinkTitle:v7];
  if (p_interaction->var0)
  {
    [(UIWebDocumentView *)self highlightApproximateNodeInverted:1];
    if (![(UIWebRotatingAlertController *)p_interaction->var0 presentSheet])
    {
      [(UIWebDocumentView *)self _didDismissElementSheet];
    }
  }
}

- (void)_showLinkSheet
{
  p_interaction = &self->_interaction;
  v4 = [(DOMNode *)self->_interaction.element absoluteLinkURL];
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x1E695DF70] array];
    [(UIWebDocumentView *)self _appendOpenActionsForURL:v5 actions:v6];
    if ([getSSReadingListClass_0() supportsURL:v5])
    {
      [v6 addObject:{+[UIWebElementAction standardElementActionWithType:](UIWebElementAction, "standardElementActionWithType:", 4)}];
    }

    if (([v5 isJavaScriptURL] & 1) == 0)
    {
      [v6 addObject:{+[UIWebElementAction standardElementActionWithType:](UIWebElementAction, "standardElementActionWithType:", 2)}];
      [v6 addObject:{+[UIWebElementAction standardElementActionWithType:](UIWebElementAction, "standardElementActionWithType:", 7)}];
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = -[interactionSheet webView:actionsForLinkElement:withTargetURL:suggestedActions:](p_interaction->delegate, "webView:actionsForLinkElement:withTargetURL:suggestedActions:", self, p_interaction->element, v5, [v6 copy]);
      if (v7)
      {
        v6 = v7;
      }
    }

    [(UIWebDocumentView *)self _createSheetWithElementActions:v6 showLinkTitle:1];
    if (p_interaction->var0)
    {
      [(UIWebDocumentView *)self hideTapHighlight];
      if (![(UIWebRotatingAlertController *)p_interaction->var0 presentSheet])
      {

        [(UIWebDocumentView *)self _didDismissElementSheet];
      }
    }
  }
}

- (void)actionDidFinish
{
  if (self->m_parentTextView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    m_parentTextView = self->m_parentTextView;

    [m_parentTextView actionDidFinish];
  }
}

- (void)_showDataDetectorsSheet
{
  p_interaction = &self->_interaction;
  v4 = [(DOMNode *)self->_interaction.element absoluteLinkURL];
  if (v4)
  {
    v5 = v4;
    v6 = DataDetectorsUIGetClass(@"DDDetectionController");
    if ([objc_msgSend(v6 "tapAndHoldSchemes")])
    {
      v7 = [objc_msgSend(v6 "sharedController")];
      if ([v7 count])
      {
        v13 = p_interaction;
        v8 = [MEMORY[0x1E695DF70] array];
        if ([v7 count])
        {
          v9 = 0;
          do
          {
            v10 = [v7 objectAtIndex:v9];
            v11 = [v10 localizedName];
            v15[0] = MEMORY[0x1E69E9820];
            v15[1] = 3221225472;
            v15[2] = __64__UIWebDocumentView_InteractionPrivate___showDataDetectorsSheet__block_invoke;
            v15[3] = &unk_1E712C310;
            v15[4] = v6;
            v15[5] = v10;
            v15[6] = self;
            v12 = [UIWebElementAction customElementActionWithTitle:v11 actionHandler:v15];
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = 3221225472;
            v14[2] = __64__UIWebDocumentView_InteractionPrivate___showDataDetectorsSheet__block_invoke_2;
            v14[3] = &unk_1E712C2C0;
            v14[4] = v10;
            [v12 setDismissalHandler:v14];
            [v8 addObject:v12];
            ++v9;
          }

          while (v9 < [v7 count]);
        }

        [(UIWebDocumentView *)self _createSheetWithElementActions:v8 showLinkTitle:0];
        if (v13->var0)
        {
          [(UIWebDocumentView *)self hideTapHighlight];
          if ([v8 count] <= 1)
          {
            [(_UIRotatingAlertController *)v13->var0 setArrowDirections:3];
          }

          if (![(UIWebRotatingAlertController *)v13->var0 presentSheet])
          {
            [(UIWebDocumentView *)self _didDismissElementSheet];
          }
        }
      }
    }
  }
}

uint64_t __64__UIWebDocumentView_InteractionPrivate___showDataDetectorsSheet__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedController];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 840);

  return [v2 performAction:v3 fromAlertController:v4 interactionDelegate:?];
}

- (CGRect)_presentationRectForSheetGivenPoint:(CGPoint)a3 inHostView:(id)a4
{
  [a4 convertPoint:self fromView:{a3.x, a3.y}];
  v6 = 1.0;
  v7 = 1.0;

  return CGRectInset(*&v4, -22.0, -22.0);
}

- (CGRect)initialPresentationRectInHostViewForSheet:(id)a3
{
  v4 = [(UIWebDocumentView *)self superviewForSheet];
  if (v4)
  {
    [(UIWebDocumentView *)self _presentationRectForSheetGivenPoint:v4 inHostView:self->_interaction.location.x, self->_interaction.location.y];
  }

  else
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)presentationRectInHostViewForSheet:(id)a3
{
  WebThreadLock();
  v4 = [(UIWebDocumentView *)self superviewForSheet];
  if (v4 && ((v5 = v4, (element = self->_interaction.element) == 0) ? (v7 = 0, v31 = 0u, v32 = 0u, v29 = 0u, v30 = 0u) : ([(DOMNode *)element absoluteQuad], v7 = self->_interaction.element), (v8 = quadBoundingBox(&v29), v10 = v9, v12 = v11, v14 = v13, v15 = [(DOMDocument *)[(DOMNode *)v7 ownerDocument] webFrame], v34.origin.x = v8, v34.origin.y = v10, v34.size.width = v12, v34.size.height = v14, !CGRectIsEmpty(v34)) && v15))
  {
    x = self->_interaction.location.x;
    y = self->_interaction.location.y;
    documentScale = self->_interaction.documentScale;
    v19 = self->_documentScale;
    if (documentScale != v19)
    {
      v20 = v19 / documentScale;
      x = x * v20;
      y = y * v20;
      self->_interaction.documentScale = v19;
    }

    [(UIWebDocumentView *)self convertRect:v15 fromFrame:v8, v10, v12, v14, v29, v30, v31, v32];
    v21 = v35.origin.x;
    v22 = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
    v33.x = x;
    v33.y = y;
    if (!CGRectContainsPoint(v35, v33))
    {
      v36.origin.x = v21;
      v36.origin.y = v22;
      v36.size.width = width;
      v36.size.height = height;
      x = CGRectGetMidX(v36);
      v37.origin.x = v21;
      v37.origin.y = v22;
      v37.size.width = width;
      v37.size.height = height;
      y = CGRectGetMidY(v37);
    }

    self->_interaction.location.x = x;
    self->_interaction.location.y = y;
    [(UIWebDocumentView *)self _presentationRectForSheetGivenPoint:v5 inHostView:x, y];
  }

  else
  {
    v25 = *MEMORY[0x1E695F058];
    v26 = *(MEMORY[0x1E695F058] + 8);
    v27 = *(MEMORY[0x1E695F058] + 16);
    v28 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)resetCurrentDragInformation
{
  [(UIWebDocumentView *)self setCurrentDragSourceAction:0];
  v3 = MEMORY[0x1E695F058];
  [(UIWebDocumentView *)self setCurrentDragCaretRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIWebDocumentView *)self setDraggedLinkURL:0];
  [(UIWebDocumentView *)self setDraggedLinkTitle:0];
  [(UIWebDocumentView *)self setLastGlobalPosition:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  if (([objc_msgSend(MEMORY[0x1E69E2F60] "sharedInstance")] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E69E2F60] "sharedInstance")];
  }

  [(UIView *)[(UIWebDocumentView *)self initialDropSnapshotView] removeFromSuperview];
  [(UIWebDocumentView *)self setInitialDropSnapshotView:0];
  v4 = *(v3 + 16);
  self->_currentDragBoundingRect.origin = *v3;
  self->_currentDragBoundingRect.size = v4;
  v5 = [(UIWebDocumentView *)self interactionAssistant];

  [(UITextInteractionAssistant *)v5 setGestureRecognizers];
}

- (void)updateDragCaretIfPossible
{
  [(WebView *)self->_webView _dataInteractionCaretRect];

  [(UIWebDocumentView *)self setCurrentDragCaretRect:?];
}

- (void)computeClientAndGlobalPointsForSession:(id)a3 outClientPoint:(CGPoint *)a4 outGlobalPoint:(CGPoint *)a5
{
  if (a4)
  {
    [a3 locationInView:self];
    a4->x = v9;
    a4->y = v10;
  }

  if (a5)
  {
    v11 = [(UIView *)self window];
    if (v11)
    {
      [a3 locationInView:v11];
    }

    else
    {
      [(UIWebDocumentView *)self lastGlobalPosition];
    }

    a5->x = v12;
    a5->y = v13;
  }
}

- (void)_transitionDragPreviewToImageIfNecessary:(id)a3
{
  if (([(UIWebDocumentView *)self currentDragSourceAction]& 6) == 4)
  {
    v5 = [(UIWebDocumentView *)self draggedLinkURL];
    if (v5)
    {
      v6 = v5;
      v7 = [(UIWebDocumentView *)self draggedLinkTitle];
      [objc_msgSend(objc_msgSend(a3 items];
    }
  }
}

UIDragPreview *__82__UIWebDocumentView_InteractionPrivate___transitionDragPreviewToImageIfNecessary___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [UIURLDragPreviewView viewWithTitle:*(a1 + 32) URL:*(a1 + 40)];
  __asm { FMOV            V2.2D, #0.5 }

  [(UIView *)v2 setCenter:vaddq_f64(*(a1 + 48), vmulq_f64(*(a1 + 64), _Q2))];
  v8 = [UIDragPreviewParameters alloc];
  v9 = MEMORY[0x1E696B098];
  [(UIView *)v2 bounds];
  v11[0] = [v9 valueWithCGRect:?];
  return -[UIDragPreview initWithView:parameters:]([UIDragPreview alloc], "initWithView:parameters:", v2, -[UIPreviewParameters initWithTextLineRects:](v8, "initWithTextLineRects:", [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1]));
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  [(UIWebDocumentView *)self webDraggingDelegate];
  if (objc_opt_respondsToSelector())
  {
    [(UIWebDraggingDelegate *)[(UIWebDocumentView *)self webDraggingDelegate] _webView:self sessionDidEnter:a4];
  }

  self->_isPerformingDrop = 0;
  [objc_msgSend(MEMORY[0x1E69E2F60] "sharedInstance")];
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [(UIWebDocumentView *)self computeClientAndGlobalPointsForSession:a4 outClientPoint:&v7 outGlobalPoint:&v9];
  [(UIWebDocumentView *)self setLastGlobalPosition:v9, v10];
  v6 = [a4 _operationMask];
  [(WebView *)self->_webView _enteredDataInteraction:a4 client:v6 global:v7 operation:v8, v9, v10];
  [(UIWebDocumentView *)self updateDragCaretIfPossible];
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  [objc_msgSend(MEMORY[0x1E69E2F60] sharedInstance];
  v15 = 0.0;
  v16 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  [(UIWebDocumentView *)self computeClientAndGlobalPointsForSession:a4 outClientPoint:&v13 outGlobalPoint:&v15];
  [(UIWebDocumentView *)self setLastGlobalPosition:v15, v16];
  v6 = [a4 _operationMask];
  v7 = [(WebView *)self->_webView _updatedDataInteraction:a4 client:v6 global:v13 operation:v14, v15, v16];
  v8 = 3;
  if (v7 != 16)
  {
    v8 = 0;
  }

  if (v7 == 1)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [[UIDropProposal alloc] initWithDropOperation:v9];
  [(UIWebDocumentView *)self webDraggingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = v10;
LABEL_10:
    [(UIWebDocumentView *)self updateDragCaretIfPossible];
    return v11;
  }

  v11 = [(UIWebDraggingDelegate *)[(UIWebDocumentView *)self webDraggingDelegate] _webView:self willUpdateDropProposalToProposal:v10 forSession:a4];
  if (v10 == v11)
  {
    goto LABEL_10;
  }

  return v11;
}

- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  [(UIWebDocumentView *)self webDraggingDelegate];
  if (objc_opt_respondsToSelector())
  {
    [(UIWebDraggingDelegate *)[(UIWebDocumentView *)self webDraggingDelegate] _webView:self dropInteraction:a3 item:a4 willAnimateDropWithAnimator:a5];
  }

  v9 = [(WebView *)self->_webView _dataOperationTextIndicator];
  v10 = [(UIWebDocumentView *)self initialDropSnapshotView];
  if ([v9 contentImageWithoutSelection])
  {
    v11 = -[UIImageView initWithImage:]([UIImageView alloc], "initWithImage:", [v9 contentImageWithoutSelection]);
    v12 = [v9 estimatedBackgroundColor];
    if (!v12)
    {
      v12 = +[UIColor whiteColor];
    }

    [(UIImageView *)v11 setBackgroundColor:v12];
    [v9 contentImageWithoutSelectionRectInRootViewCoordinates];
    [(UIImageView *)v11 setFrame:?];
    [(UIView *)self insertSubview:v11 belowSubview:v10];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __90__UIWebDocumentView_InteractionPrivate__dropInteraction_item_willAnimateDropWithAnimator___block_invoke;
    v15[3] = &unk_1E712C360;
    v15[4] = v11;
    [a5 addCompletion:v15];
  }

  if (v10)
  {
    v13[4] = v10;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __90__UIWebDocumentView_InteractionPrivate__dropInteraction_item_willAnimateDropWithAnimator___block_invoke_2;
    v14[3] = &unk_1E70F5CA0;
    v14[4] = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __90__UIWebDocumentView_InteractionPrivate__dropInteraction_item_willAnimateDropWithAnimator___block_invoke_3;
    v13[3] = &unk_1E712C388;
    [UIView animateWithDuration:v14 animations:v13 completion:0.1];
    [(UIWebDocumentView *)self setInitialDropSnapshotView:0];
  }
}

void __90__UIWebDocumentView_InteractionPrivate__dropInteraction_item_willAnimateDropWithAnimator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 32);
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  [(UIWebDocumentView *)self webDraggingDelegate];
  if (objc_opt_respondsToSelector())
  {
    [(UIWebDraggingDelegate *)[(UIWebDocumentView *)self webDraggingDelegate] _webView:self sessionDidExit:a4];
  }

  [objc_msgSend(MEMORY[0x1E69E2F60] "sharedInstance")];
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [(UIWebDocumentView *)self computeClientAndGlobalPointsForSession:a4 outClientPoint:&v7 outGlobalPoint:&v9];
  v6 = [a4 _operationMask];
  [(WebView *)self->_webView _exitedDataInteraction:a4 client:v6 global:v7 operation:v8, v9, v10];
  [(UIWebDocumentView *)self setCurrentDragCaretRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:@"dropOnWebContent"];
  v6 = [(UIWebDocumentView *)self webDraggingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(UIWebDraggingDelegate *)v6 _webView:self performDropWithSession:a4]& 1) == 0)
  {
    ItemProvidersFromDropSession = extractItemProvidersFromDropSession(a4);
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([(UIWebDraggingDelegate *)v6 _webView:self performDropWithItemProviders:ItemProvidersFromDropSession]& 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || (ItemProvidersFromDropSession = -[UIWebDraggingDelegate _webView:willPerformDropWithSession:](v6, "_webView:willPerformDropWithSession:", self, a4), [ItemProvidersFromDropSession count]))
      {
        self->_didCreateDropPreview = 0;
        self->_didEndDropSession = 0;
        self->_isPerformingDrop = 1;
        v8 = [MEMORY[0x1E69E2F60] sharedInstance];
        [v8 incrementPendingOperationCount];
        [v8 setItemProviders:ItemProvidersFromDropSession];
        if (objc_opt_respondsToSelector())
        {
          [v8 doAfterLoadingProvidedContentIntoFileURLs:&v9 synchronousTimeout:0.25];
        }

        else
        {
          [v8 doAfterLoadingProvidedContentIntoFileURLs:&v9];
        }
      }
    }
  }
}

uint64_t __69__UIWebDocumentView_InteractionPrivate__dropInteraction_performDrop___block_invoke(uint64_t a1)
{
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  [*(a1 + 32) computeClientAndGlobalPointsForSession:*(a1 + 40) outClientPoint:&v8 outGlobalPoint:&v10];
  v2 = [*(a1 + 40) _operationMask];
  v3 = *(a1 + 32);
  if ((v3[1138] & 1) == 0)
  {
    v4 = [v3 snapshotViewAfterScreenUpdates:0];
    [*(a1 + 32) bounds];
    [v4 setFrame:?];
    [*(a1 + 32) addSubview:v4];
    [objc_msgSend(*(a1 + 32) "initialDropSnapshotView")];
    [*(a1 + 32) setInitialDropSnapshotView:v4];
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [*(*(a1 + 32) + 432) _tryToPerformDataInteraction:*(a1 + 40) client:v2 global:v8 operation:{v9, v10, v11}];
  }

  else
  {
    v5 = 1;
  }

  [*(a1 + 32) webDraggingDelegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([objc_msgSend(*(a1 + 32) "webDraggingDelegate")] & 1) == 0)
  {
    [*(a1 + 32) clearSelection];
  }

  v6 = *(a1 + 32);
  if (*(v6 + 1137) == 1)
  {
    [*(v6 + 432) _endedDataInteraction:v8 global:{v9, v10, v11}];
    [*(a1 + 32) resetCurrentDragInformation];
    v6 = *(a1 + 32);
  }

  *(v6 + 1136) = 0;
  [*(a1 + 32) webDraggingDelegate];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "webDraggingDelegate")];
  }

  [*(a1 + 56) decrementPendingOperationCount];
  return [*(a1 + 56) setItemProviders:0];
}

- (void)dropInteraction:(id)a3 concludeDrop:(id)a4
{
  [(UIWebDocumentView *)self webDraggingDelegate];
  if (objc_opt_respondsToSelector())
  {
    [(UIWebDraggingDelegate *)[(UIWebDocumentView *)self webDraggingDelegate] _webView:self dropInteraction:a3 concludeDrop:a4];
  }

  [(UIView *)[(UIWebDocumentView *)self initialDropSnapshotView] removeFromSuperview];

  [(UIWebDocumentView *)self setInitialDropSnapshotView:0];
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  self->_didEndDropSession = 1;
  if (!self->_isPerformingDrop)
  {
    v7 = 0.0;
    v8 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    [(UIWebDocumentView *)self computeClientAndGlobalPointsForSession:a4 outClientPoint:&v5 outGlobalPoint:&v7];
    [(WebView *)self->_webView _endedDataInteraction:v5 global:v6, v7, v8];
    [(UIWebDocumentView *)self resetCurrentDragInformation];
  }
}

- (id)fallbackDropPreviewForUninsertedContent:(id)a3
{
  [(UIWebDocumentView *)self currentDragCaretRect];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (CGRectIsEmpty(v19))
  {
    return 0;
  }

  -[UIView convertRect:toView:](self, "convertRect:toView:", +[UITextEffectsWindow sharedTextEffectsWindowForWindowScene:](UITextEffectsWindow, "sharedTextEffectsWindowForWindowScene:", [-[UIView _window](self "_window")]), x, y, width, height);
  v10 = v20.origin.x;
  v11 = v20.origin.y;
  v12 = v20.size.width;
  v13 = v20.size.height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = v10;
  v21.origin.y = v11;
  v21.size.width = v12;
  v21.size.height = v13;
  MidY = CGRectGetMidY(v21);
  v16 = [UIDragPreviewTarget alloc];
  v17 = +[UITextEffectsWindow sharedTextEffectsWindowForWindowScene:](UITextEffectsWindow, "sharedTextEffectsWindowForWindowScene:", [-[UIView _window](self "_window")]);
  CGAffineTransformMakeScale(&v18, 0.0001, 0.0001);
  return [a3 retargetedPreviewWithTarget:{-[UIPreviewTarget initWithContainer:center:transform:](v16, "initWithContainer:center:transform:", v17, &v18, MidX, MidY)}];
}

- (id)editDragPreviewForTextIndicator:(id)a3
{
  [a3 textBoundingRectInRootViewCoordinates];
  if (CGRectIsEmpty(v20))
  {
    return 0;
  }

  v6 = -[UIImageView initWithImage:]([UIImageView alloc], "initWithImage:", [a3 contentImage]);
  [a3 textBoundingRectInRootViewCoordinates];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UIImageView *)v6 setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v15 = -[UIPreviewParameters initWithTextLineRects:]([UIDragPreviewParameters alloc], "initWithTextLineRects:", [a3 textRectsInBoundingRectCoordinates]);
  v16 = [a3 estimatedBackgroundColor];
  if (!v16)
  {
    v16 = +[UIColor whiteColor];
  }

  [(UIPreviewParameters *)v15 setBackgroundColor:v16];
  v17 = [(UIPreviewTarget *)[UIDragPreviewTarget alloc] initWithContainer:self center:v8 + v12 * 0.5, v10 + v14 * 0.5];
  v18 = [[UITargetedDragPreview alloc] initWithView:v6 parameters:v15 target:v17];

  return v18;
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  [(UIWebDocumentView *)self webDraggingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [(UIWebDraggingDelegate *)[(UIWebDocumentView *)self webDraggingDelegate] _webView:self previewForDroppingItem:a4 withDefault:a5]) == 0)
  {
    result = [(UIWebDocumentView *)self editDragPreviewForTextIndicator:[(WebView *)self->_webView _dataOperationTextIndicator]];
    if (!result)
    {
      result = [(UIWebDocumentView *)self fallbackDropPreviewForUninsertedContent:a5];
    }
  }

  self->_didCreateDropPreview = 1;
  return result;
}

- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  [(UIWebDocumentView *)self webDraggingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = [(UIWebDocumentView *)self webDraggingDelegate];

  return [(UIWebDraggingDelegate *)v6 _webView:self dataOwnerForDropSession:a4];
}

uint64_t __64__UIWebDocumentView_InteractionPrivate___selectPositionAtPoint___block_invoke(uint64_t a1)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    WebThreadRunOnMainThread();
  }

  v3 = [*(a1 + 32) _focusedOrMainFrame];
  [*(a1 + 32) convertPointToSelectedFrameCoordinates:{*(a1 + 40), *(a1 + 48)}];
  v4 = [v3 webVisiblePositionForPoint:?];
  result = [objc_msgSend(*(a1 + 32) "_focusedOrMainFrame")];
  if (isKindOfClass)
  {
    return WebThreadRunOnMainThread();
  }

  return result;
}

- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  WebThreadLock();
  webView = self->_webView;
  [(UIWebDocumentView *)self convertRect:[(WebView *)webView mainFrame] toFrame:x, y, width, height];
  v12 = [(WebView *)webView _editableElementsInRect:?];
  if ([v12 count])
  {
    v13 = [v12 count];
    v14 = v13;
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v13];
    if (v13)
    {
      v16 = 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v18 = [v12 objectAtIndex:v16];
        [v15 addObject:v18];
        if ([-[UIWebDocumentView formElement](self "formElement")])
        {
          v17 = v16;
        }

        ++v16;
      }

      while (v14 != v16);
    }

    else
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v20 = v15;
    v19 = *(a5 + 2);
    v21 = a5;
    v22 = v17;
  }

  else
  {
    v19 = *(a5 + 2);
    v20 = MEMORY[0x1E695E0F0];
    v21 = a5;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v19(v21, v20, v22);
}

- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WebThreadRun();
  }

  else
  {
    v7 = *(a6 + 2);

    v7(a6, 0);
  }
}

uint64_t __122__UIWebDocumentView_InteractionPrivate___scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke(uint64_t a1)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  WebThreadRunOnMainThread();
  v2 = *(a1 + 40);
  if ([v2 isSameNode:{objc_msgSend(*(a1 + 32), "formElement", v4, 3221225472, __122__UIWebDocumentView_InteractionPrivate___scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke_2, &unk_1E712C400, v5, v6)}])
  {
    [*(a1 + 32) _focusAndAssistFormNode:v2];
  }

  else if ([v2 nodeCanBecomeFirstResponder])
  {
    [*(a1 + 32) _selectPositionAtPoint:{*(a1 + 56), *(a1 + 64)}];
    [*(a1 + 32) formElement];
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t __122__UIWebDocumentView_InteractionPrivate___scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) becomeFirstResponder];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (CGRect)_scribbleInteraction:(id)a3 frameForElement:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WebThreadLock();
    if (a4)
    {
      [a4 innerFrameQuad];
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    v10 = quadBoundingBox(v14);
    -[UIWebDocumentView convertRect:fromFrame:](self, "convertRect:fromFrame:", [objc_msgSend(a4 "ownerDocument")], v10, v11, v12, v13);
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v9 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)_scribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4
{
  self->_interaction.isWriting = 1;
  if (objc_opt_respondsToSelector())
  {
    WebThreadLock();

    [a4 setCanShowPlaceholder:0];
  }
}

uint64_t __88__UIWebDocumentView_InteractionPrivate___scribbleInteraction_didFinishWritingInElement___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    WebThreadLock();
    [v2 setCanShowPlaceholder:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 40) + 432) revealCurrentSelection];
  }

  result = [*(a1 + 40) formElement];
  if (result)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      return WebThreadRunOnMainThread();
    }
  }

  return result;
}

- (CGPoint)constrainedPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self frame];
  v7 = v6;
  [(UIView *)self frame];
  v21 = v8 * 0.5;
  [(UIWebDocumentView *)self _selectionClipRect];
  v9 = v23.origin.x;
  v10 = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  MinX = CGRectGetMinX(v23);
  v24.origin.x = v9;
  v24.origin.y = v10;
  v24.size.width = width;
  v24.size.height = height;
  MinY = CGRectGetMinY(v24);
  if (y >= MinY)
  {
    MinY = v10 + height;
    v15 = y - (v10 + height);
    if (v15 <= 0.0)
    {
      goto LABEL_7;
    }

    v16 = v15 / v21 + 5.0;
  }

  else
  {
    v15 = y - MinY;
    if (y - MinY >= 0.0)
    {
      goto LABEL_7;
    }

    v16 = 5.0 - v15 / v21;
  }

  y = MinY + v15 / v16;
LABEL_7:
  v17 = v7 * 0.5;
  if (x >= MinX)
  {
    v25.origin.x = v9;
    v25.origin.y = v10;
    v25.size.width = width;
    v25.size.height = height;
    MaxX = CGRectGetMaxX(v25);
    if (x - MaxX > 0.0)
    {
      x = MaxX + (x - MaxX) / ((x - MaxX) / v17 + 5.0);
    }
  }

  else if (x - MinX < 0.0)
  {
    x = MinX + (x - MinX) / (5.0 - (x - MinX) / v17);
  }

  v19 = x;
  v20 = y;
  result.y = v20;
  result.x = v19;
  return result;
}

- (void)selectWord
{
  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  [(UIWebDocumentView *)self endSelectionChange];
}

- (CGRect)convertRectFromSelectedFrameCoordinates:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  WebThreadLock();
  v8 = [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  [v8 convertRect:0 toView:{x, y, width, height}];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGPoint)convertPointToSelectedFrameCoordinates:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WebThreadLock();
  v6 = [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  [v6 convertPoint:0 fromView:{x, y}];
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)selectionChanged
{
  if ([(UIView *)self superview])
  {
    [(UITextInteractionAssistant *)[(UIWebDocumentView *)self interactionAssistant] selectionChanged];
  }

  [(UIWebDocumentView *)self _removeDefinitionController:1];
}

- (void)selectionChanged:(id)a3
{
  v4 = [a3 object];
  if (v4 == [(UIWebDocumentView *)self webView])
  {
    [(UIWebDocumentView *)self selectionChanged];
    if (_AXSZoomTouchEnabled())
    {
      [(UIWebDocumentView *)self caretRect];

      UIAccessibilityZoomFocusChanged(UIAccessibilityZoomTypeInsertionPoint, *&v5, &self->super.super);
    }
  }
}

- (void)clearSelection
{
  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  [(UIWebDocumentView *)self endSelectionChange];
}

- (BOOL)hasEditableSelection
{
  if (pthread_main_np())
  {
    WebThreadLock();
  }

  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  return [v3 hasEditableSelection];
}

- (BOOL)hasMarkedText
{
  WebThreadLock();
  v3 = [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  if (v3)
  {
    LOBYTE(v3) = [v3 collapsed] ^ 1;
  }

  return v3;
}

- (CGRect)closestCaretRectInMarkedTextRangeForPoint:(CGPoint)a3
{
  [(UIWebDocumentView *)self convertPointToSelectedFrameCoordinates:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  WebThreadLock();
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  [(UIWebDocumentView *)self convertRectFromSelectedFrameCoordinates:?];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (unint64_t)offsetInMarkedTextForSelection:(id)a3
{
  v5 = [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ([v5 collapsed])
  {
    return 0;
  }

  WebThreadLock();
  v8 = [(UIWebDocumentView *)self _focusedOrMainFrame];
  v9 = [v8 convertDOMRangeToNSRange:v6];
  v7 = v10;
  if (a3)
  {
    v11 = v9;
    v12 = [v8 convertDOMRangeToNSRange:a3];
    if (v12 - v11 >= v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v12 - v11;
    }

    if (v12 - v11 >= 0)
    {
      return v13;
    }
  }

  return v7;
}

- (int)selectionState
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  return [v3 selectionState];
}

- (void)collapseSelection
{
  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  [(UIWebDocumentView *)self endSelectionChange];
}

- (UIEdgeInsets)caretInsets
{
  top = self->_caretInsets.top;
  left = self->_caretInsets.left;
  bottom = self->_caretInsets.bottom;
  right = self->_caretInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)caretRect
{
  WebThreadLock();
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  [(UIWebDocumentView *)self convertRectFromSelectedFrameCoordinates:?];
  top = self->_caretInsets.top;
  left = self->_caretInsets.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_caretInsets.right);
  v12 = v11 - (top + self->_caretInsets.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (CGRect)caretRectForVisiblePosition:(id)a3
{
  WebThreadLock();
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  [(UIWebDocumentView *)self convertRectFromSelectedFrameCoordinates:?];
  top = self->_caretInsets.top;
  left = self->_caretInsets.left;
  v8 = v7 + left;
  v10 = v9 + top;
  v12 = v11 - (left + self->_caretInsets.right);
  v14 = v13 - (top + self->_caretInsets.bottom);
  result.size.height = v14;
  result.size.width = v12;
  result.origin.y = v10;
  result.origin.x = v8;
  return result;
}

- (void)toggleBaseWritingDirection
{
  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  [(UIWebDocumentView *)self endSelectionChange];
}

- (void)setBaseWritingDirection:(int64_t)a3
{
  WebThreadLock();
  v5 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  [v5 setBaseWritingDirection:a3];
}

- (void)setRangedSelectionBaseToCurrentSelection
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  [v3 setRangedSelectionBaseToCurrentSelection];
}

- (void)setRangedSelectionBaseToCurrentSelectionStart
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  [v3 setRangedSelectionBaseToCurrentSelectionStart];
}

- (void)setRangedSelectionBaseToCurrentSelectionEnd
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  [v3 setRangedSelectionBaseToCurrentSelectionEnd];
}

- (void)clearRangedSelectionInitialExtent
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  [v3 clearRangedSelectionInitialExtent];
}

- (void)setRangedSelectionInitialExtentToCurrentSelectionStart
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  [v3 setRangedSelectionInitialExtentToCurrentSelectionStart];
}

- (void)setRangedSelectionInitialExtentToCurrentSelectionEnd
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  [v3 setRangedSelectionInitialExtentToCurrentSelectionEnd];
}

- (BOOL)setRangedSelectionExtentPoint:(CGPoint)a3 baseIsStart:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  [(UIWebDocumentView *)self convertPointToSelectedFrameCoordinates:x, y];
  LOBYTE(v4) = [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  [(UIWebDocumentView *)self endSelectionChange];
  return v4;
}

- (void)setRangedSelectionExtentPoint:(CGPoint)a3 baseIsStart:(BOOL)a4 allowFlipping:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  y = a3.y;
  x = a3.x;
  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  [(UIWebDocumentView *)self convertPointToSelectedFrameCoordinates:x, y];
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  [(UIWebDocumentView *)self endSelectionChange];
}

- (void)setSelectionWithFirstPoint:(CGPoint)a3 secondPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  [(UIWebDocumentView *)self convertPointToSelectedFrameCoordinates:v7, v6];
  v10 = v9;
  v12 = v11;
  [(UIWebDocumentView *)self convertPointToSelectedFrameCoordinates:x, y];
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  [(UIWebDocumentView *)self endSelectionChange];
}

- (id)wordAtPoint:(CGPoint)a3
{
  [(UIWebDocumentView *)self convertPointToSelectedFrameCoordinates:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  WebThreadLock();
  v8 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  return [v8 wordAtPoint:{v5, v7}];
}

- (void)setSelectedDOMRange:(id)a3 affinity:(unint64_t)a4
{
  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  [objc_msgSend(objc_msgSend(objc_msgSend(a3 "startContainer")];

  [(UIWebDocumentView *)self endSelectionChange];
}

- (id)textInDOMRange:(id)a3
{
  WebThreadLock();
  v5 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  return [v5 stringForRange:a3];
}

- (id)selectionRectsForDOMRange:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  WebThreadLock();
  v5 = [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  if (![v5 count])
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 rect];
        [(UIWebDocumentView *)self convertRectFromSelectedFrameCoordinates:?];
        [v10 setRect:?];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)selectionRects
{
  v15 = *MEMORY[0x1E69E9840];
  WebThreadLock();
  v3 = [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];
  if (![v3 count])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 rect];
        [(UIWebDocumentView *)self convertRectFromSelectedFrameCoordinates:?];
        [v8 setRect:?];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)smartExtendRangedSelection:(int)a3
{
  v3 = *&a3;
  WebThreadLock();
  v5 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  [v5 smartExtendRangedSelection:v3];
}

- (void)setRangedSelectionWithExtentPoint:(CGPoint)a3
{
  [(UIWebDocumentView *)self convertPointToSelectedFrameCoordinates:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  [(UIWebDocumentView *)self endSelectionChange];
}

- (void)setSelectionToEnd
{
  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  [(UIWebDocumentView *)self endSelectionChange];
}

- (void)setSelectionToStart
{
  WebThreadLock();
  [(UIWebDocumentView *)self beginSelectionChange];
  [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

  [(UIWebDocumentView *)self endSelectionChange];
}

- (void)setAutoscrollContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UIWebDocumentView *)self formElement];
  if (v5)
  {
    v6 = v5;
    WebThreadLock();
    [v6 setScrollLeft:x];

    [v6 setScrollTop:y];
  }
}

- (CGPoint)autoscrollContentOffset
{
  v2 = [(UIWebDocumentView *)self formElement];
  if (v2)
  {
    v3 = v2;
    WebThreadLock();
    v4 = [v3 scrollLeft];
    v5 = [v3 scrollTop];
  }

  else
  {
    v4 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v6 = v4;
  result.y = v5;
  result.x = v6;
  return result;
}

- (CGRect)contentFrameForView:(id)a3
{
  [(UIWebDocumentView *)self formElement];
  v3 = *(MEMORY[0x1E695F058] + 16);
  v4 = *(MEMORY[0x1E695F058] + 24);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)shouldAutoscroll
{
  autoscroll = self->_autoscroll;
  if (autoscroll)
  {
    return ![(UIAutoscroll *)autoscroll disabled];
  }

  else
  {
    return 1;
  }
}

- (void)setShouldAutoscroll:(BOOL)a3
{
  v3 = a3;
  autoscroll = self->_autoscroll;
  if (!autoscroll)
  {
    autoscroll = objc_alloc_init(UIAutoscroll);
    self->_autoscroll = autoscroll;
  }

  [(UIAutoscroll *)autoscroll setDisabled:!v3];
}

- (void)startAutoscroll:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1)
  {
    v5 = 32.0;
  }

  else
  {
    v5 = 8.0;
  }

  if (!self->_autoscroll)
  {
    self->_autoscroll = objc_alloc_init(UIAutoscroll);
  }

  v6 = [(UIWebDocumentView *)self formElement];
  if (v6 && (textSelectionAssistant = v6, [(UITextInteractionAssistant *)v6 isTextControl]))
  {
    v94 = v5;
    [objc_msgSend(objc_msgSend(-[UITextInteractionAssistant ownerDocument](textSelectionAssistant "ownerDocument")];
    v9 = v8;
    [(UIWebDocumentView *)self _selectionClipRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v95 = x;
    v17 = (x - v16) / v9;
    v18 = [(UITextInteractionAssistant *)textSelectionAssistant scrollWidth];
    v19 = [(UITextInteractionAssistant *)textSelectionAssistant scrollHeight];
    v20 = v13 / v9;
    v21 = v18 - v13 / v9;
    v22 = [(UITextInteractionAssistant *)textSelectionAssistant scrollLeft];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v27 = 0.075;
      }

      else
      {
        v27 = 0.2;
      }

      v46 = 0.0;
      if (isKindOfClass)
      {
        v46 = 16.0;
      }

      if (v22 < 1 || v17 >= v46)
      {
        if (v17 <= v20 - v46 || v21 <= v22)
        {
          v47 = 0;
        }

        else
        {
          v47 = 2;
        }
      }

      else
      {
        v47 = 1;
      }

      m_parentTextView = self;
      v49 = v95;
      goto LABEL_65;
    }

    v23 = y - v11;
    v24 = v22;
    v25 = v23 / v9;
    v90 = v15 / v9;
    v26 = v19 - v15 / v9;
    v93 = [(UITextInteractionAssistant *)textSelectionAssistant scrollTop];
    v97 = 0.0;
    v27 = 0.2;
    m_parentTextView = self;
    v91 = 0.0;
    v92 = 0.0;
  }

  else
  {
    v30 = *MEMORY[0x1E695EFF8];
    v29 = *(MEMORY[0x1E695EFF8] + 8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      textSelectionAssistant = [self->m_parentTextView interactionAssistant];
      m_parentTextView = self->m_parentTextView;
      [m_parentTextView contentInset];
      v97 = v31;
      v33 = v32;
      v35 = v34;
      if (!m_parentTextView)
      {
        goto LABEL_69;
      }
    }

    else
    {
      objc_opt_class();
      v36 = objc_opt_isKindOfClass();
      v37 = self->m_parentTextView;
      if (v36)
      {
        textSelectionAssistant = [self->m_parentTextView interactionAssistant];
        m_parentTextView = [v37 _scroller];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_69;
        }

        [m_parentTextView contentInset];
        v97 = v38;
        v33 = v39;
        v35 = v40;
        v41 = [v37 superview];
        [v37 frame];
        v44 = v41;
      }

      else
      {
        if (v37)
        {
          textSelectionAssistant = 0;
          goto LABEL_69;
        }

        textSelectionAssistant = self->_textSelectionAssistant;
        m_parentTextView = [(UIView *)self _scroller];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_69;
        }

        [m_parentTextView contentInset];
        v97 = v50;
        v33 = v51;
        v35 = v52;
        v44 = self;
        v42 = v30;
        v43 = v29;
      }

      [(UIView *)v44 convertPoint:m_parentTextView toView:v42, v43];
      v30 = v53;
      v29 = v54;
      if (!m_parentTextView)
      {
        goto LABEL_69;
      }
    }

    v94 = v5;
    [(UIWebDocumentView *)self visibleBounds];
    v56 = v55;
    v58 = v57;
    v96 = v29;
    v60 = v59;
    v88 = v35;
    v61 = v30;
    v63 = v62;
    [(UIView *)self frame];
    v89 = v33;
    v65 = v64;
    v66 = x;
    v68 = v67;
    [m_parentTextView autoscrollContentOffset];
    v87 = v69;
    v92 = v58;
    v93 = v70;
    v20 = v56 + v60;
    v90 = v58 + v63;
    v91 = -v97;
    [m_parentTextView bounds];
    v21 = v61 + v65 - (v71 - v88);
    [m_parentTextView bounds];
    v26 = v96 + v68 - (v72 - v89);
    v24 = v87;
    v27 = 0.075;
    v25 = y;
    v95 = v66;
    v17 = v66;
  }

  if (v17 > v20 - v94 && v24 < v21)
  {
    v74 = 2;
  }

  else
  {
    v74 = 0;
  }

  if (v24 > 0.0 && v17 < v94)
  {
    v76 = 1;
  }

  else
  {
    v76 = v74;
  }

  v77 = [(UIView *)self _scroller];
  v78 = [(UIView *)self superview];
  [(UIView *)self frame];
  [(UIView *)v78 convertRect:v77 toView:?];
  v80 = v79;
  [v77 contentInset];
  if (v80 >= v81)
  {
    v82 = v97 + v92;
  }

  else
  {
    v82 = v92;
  }

  v83 = v94 + v82;
  v84 = v93 > v91 && v25 < v83;
  v49 = v95;
  if (v84)
  {
    v47 = v76 | 4;
    if (textSelectionAssistant)
    {
      goto LABEL_65;
    }

LABEL_69:
    if (objc_opt_respondsToSelector())
    {
      [(UITextInteractionAssistant *)textSelectionAssistant autoscrollWillNotStart];
    }

    [(UIWebDocumentView *)self cancelAutoscroll];
    return;
  }

  if (v25 >= v90 - v94 && v93 < v26)
  {
    v47 = v76 | 8;
  }

  else
  {
    v47 = v76;
  }

  if (!textSelectionAssistant)
  {
    goto LABEL_69;
  }

LABEL_65:
  if (!v47)
  {
    goto LABEL_69;
  }

  autoscroll = self->_autoscroll;

  [(UIAutoscroll *)autoscroll startAutoscroll:textSelectionAssistant scrollContainer:m_parentTextView point:v49 directions:y repeatInterval:v27];
}

- (void)setSelectionWithPoint:(CGPoint)a3
{
  [(UIWebDocumentView *)self convertPointToSelectedFrameCoordinates:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  v8 = [(UIWebDocumentView *)self formElement];
  if (v8)
  {

    [v8 setSelectionWithPoint:{v5, v7}];
  }

  else
  {
    WebThreadLock();
    [(UIWebDocumentView *)self beginSelectionChange];
    [-[UIWebDocumentView _focusedOrMainFrame](self "_focusedOrMainFrame")];

    [(UIWebDocumentView *)self endSelectionChange];
  }
}

- (id)webVisiblePositionForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WebThreadLock();
  [(UIWebDocumentView *)self convertPointToSelectedFrameCoordinates:x, y];
  v7 = v6;
  v9 = v8;
  v10 = [(UIWebDocumentView *)self formElement];
  if (v10)
  {
    [v10 constrainedPoint:{v7, v9}];
    v7 = v11;
    v9 = v12;
  }

  v13 = [(UIWebDocumentView *)self _focusedOrMainFrame];

  return [v13 webVisiblePositionForPoint:{v7, v9}];
}

- (CGRect)visibleBounds
{
  [(UIView *)self bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = [(UIView *)self _scroller];
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 contentInset];
    [(UIView *)self convertRect:v12 fromView:v14 + v24, v16 + v21, v18 - (v24 + v22), v20 - (v21 + v23)];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [(UIView *)self bounds];
    v48.origin.x = v33;
    v48.origin.y = v34;
    v48.size.width = v35;
    v48.size.height = v36;
    v45.origin.x = v26;
    v45.origin.y = v28;
    v45.size.width = v30;
    v45.size.height = v32;
    v46 = CGRectIntersection(v45, v48);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
  }

  if ([(UIWebDocumentView *)self isEditing])
  {
    [+[UIKeyboardImpl activeInstance](UIKeyboardImpl "activeInstance")];
    x = v37;
    y = v38;
    width = v39;
    height = v40;
  }

  v41 = x;
  v42 = y;
  v43 = width;
  v44 = height;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (id)positionAtStartOrEndOfWord:(id)a3
{
  WebThreadLock();
  if ([objc_msgSend(a3 "webVisiblePosition")])
  {
    return a3;
  }

  v4 = [objc_msgSend(a3 "webVisiblePosition")];
  if (!v4)
  {
    return 0;
  }

  return [UITextPositionImpl wrapWebVisiblePosition:v4];
}

- (BOOL)isInPrintMode
{
  WebThreadLock();
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:{-[WebView mainFrame](self->_webView, "mainFrame")}];
  v4 = [v3 count];
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = [objc_msgSend(objc_msgSend(v3 objectAtIndex:{v5), "frameView"), "documentView"}];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 _isInPrintMode])
      {
        break;
      }

      [v3 addObjectsFromArray:{objc_msgSend(objc_msgSend(v3, "objectAtIndex:", v5++), "childFrames")}];
      if (v5 >= [v3 count])
      {
        LOBYTE(v4) = 0;
        return v4;
      }
    }

    LOBYTE(v4) = 1;
  }

  return v4;
}

- (id)_beginPrintModeForHTMLView:(id)a3 withSize:(CGSize)a4 startOffset:(double)a5 minimumLayoutWidth:(double)a6 maximumLayoutWidth:(double)a7 tileClippedContent:(BOOL)a8
{
  v8 = a8;
  height = a4.height;
  width = a4.width;
  v16 = (a4.height - a5) * (a6 / a4.width);
  [(UIWebDocumentView *)self setTilingArea:2];
  if ([a3 _beginPrintModeWithMinimumPageWidth:a6 height:v16 maximumPageWidth:a7])
  {
    v32 = v16;
    ++self->_printModeCount;
    [a3 bounds];
    v18 = v17;
    v20 = v19;
    if (v17 >= a7)
    {
      v21 = a7;
    }

    else
    {
      v21 = v17;
    }

    v22 = width / v21;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = floor(-a5 / v22);
    if (v24 < v20)
    {
      v25 = floor(width / v22);
      v26 = floor(height / v22);
      do
      {
        [a3 _adjustedBottomOfPageWithTop:v24 bottom:v26 + v24 limit:v24];
        v28 = 0.0;
        if (v24 >= 0.0)
        {
          v29 = v24;
        }

        else
        {
          v29 = 0.0;
        }

        if (v27 <= v20)
        {
          v24 = v27;
        }

        else
        {
          v24 = v20;
        }

        do
        {
          [v23 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRect:", v28, v29, v25, v24 - v29)}];
          if (!v8)
          {
            break;
          }

          v28 = v25 + v28;
        }

        while (v28 < v18);
      }

      while (v24 < v20);
    }

    v30 = [[UIWebPaginationInfo alloc] initWithDocumentView:a3 scaleFactor:v23 layoutSize:v22 pageRects:v18, v32 / v22];
    [(UIWebPaginationInfo *)v30 setWebDocumentView:self];

    return v30;
  }

  else
  {
    [(UIWebDocumentView *)self setTilingArea:0];
    return 0;
  }
}

- (id)_beginPrintModeForPDFView:(id)a3 withSize:(CGSize)a4 startOffset:(double)a5 minimumLayoutWidth:(double)a6 maximumLayoutWidth:(double)a7
{
  height = a4.height;
  width = a4.width;
  v14 = [a3 totalPages];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    v17 = 1;
    do
    {
      [a3 rectForPageNumber:v17];
      if (a6 < v18)
      {
        a6 = v18;
      }

      ++v17;
      --v16;
    }

    while (v16);
  }

  if (a6 >= a7)
  {
    v19 = a7;
  }

  else
  {
    v19 = a6;
  }

  v20 = width / v19;
  v21 = floor(height / (width / v19));
  if (v21 == 0.0)
  {
    return 0;
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [a3 rectForPageNumber:1];
  if (v15)
  {
    v24 = v23;
    v25 = 0;
    v26 = floor(-a5 / v20);
    v27 = floor(width / v20);
    v28 = 0.0;
    do
    {
      v29 = v21 + v26;
      if (v24 <= v21)
      {
        if (v25 + 1 > v15)
        {
          v31 = v25 + 1;
        }

        else
        {
          v31 = v15;
        }

        v32 = v25 + 2;
        while (1)
        {
          v30 = v28 + v24;
          if (v28 + v24 > v29)
          {
            v29 = v28;
            goto LABEL_24;
          }

          if (v32 - 1 >= v15)
          {
            break;
          }

          [a3 rectForPageNumber:v32];
          v24 = v33;
          ++v25;
          ++v32;
          v28 = v30;
          if (v33 > v21)
          {
            goto LABEL_21;
          }
        }

        v25 = v31;
        v29 = v28 + v24;
      }

      else
      {
        v30 = v28;
LABEL_21:
        v24 = v24 - (v29 - v30);
      }

LABEL_24:
      if (v26 >= 0.0)
      {
        v34 = v26;
      }

      else
      {
        v34 = 0.0;
      }

      [v22 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRect:", 0.0, v34, v27, v29 - v34)}];
      v26 = v29;
      v28 = v29;
    }

    while (v25 < v15);
  }

  else
  {
    v27 = floor(width / v20);
  }

  v36 = [[UIWebPaginationInfo alloc] initWithDocumentView:a3 scaleFactor:v22 layoutSize:v20 pageRects:v27, v21];
  [(UIWebPaginationInfo *)v36 setWebDocumentView:self];

  return v36;
}

- (id)beginPrintModeWithWidth:(double)a3 height:(double)a4 startOffset:(double)a5 shrinkToFit:(BOOL)a6 tileClippedContent:(BOOL)a7 forFrame:(id)a8
{
  v8 = a7;
  v9 = a6;
  if (!a8)
  {
    a8 = [(WebView *)self->_webView mainFrame];
  }

  return [(UIWebDocumentView *)self beginPrintModeForFrame:a8 withWidth:v9 height:v8 startOffset:a3 shrinkToFit:a4 tileClippedContent:a5];
}

- (id)beginPrintModeForFrame:(id)a3 withWidth:(double)a4 height:(double)a5 startOffset:(double)a6 shrinkToFit:(BOOL)a7 tileClippedContent:(BOOL)a8
{
  v8 = a8;
  if ([a3 webView] != self->_webView)
  {
    return 0;
  }

  if (a7)
  {
    v16 = *MEMORY[0x1E69E3078] * a4;
    WebThreadLock();
    v17 = [objc_msgSend(a3 "frameView")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = *MEMORY[0x1E69E3080] * a4;

      return [(UIWebDocumentView *)self _beginPrintModeForHTMLView:v17 withSize:v8 startOffset:a4 minimumLayoutWidth:a5 maximumLayoutWidth:a6 tileClippedContent:v18, v16];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      return [(UIWebDocumentView *)self _beginPrintModeForPDFView:v17 withSize:a4 startOffset:a5 minimumLayoutWidth:a6 maximumLayoutWidth:a4, v16];
    }
  }

  else
  {

    return [(UIWebDocumentView *)self beginPrintModeForFrame:a3 withSize:v8 startOffset:a4 minimumLayoutWidth:a5 maximumLayoutWidth:a6 tileClippedContent:a4, a4];
  }
}

- (id)beginPrintModeWithSize:(CGSize)a3 startOffset:(double)a4 minimumLayoutWidth:(double)a5 maximumLayoutWidth:(double)a6 tileClippedContent:(BOOL)a7
{
  v7 = a7;
  height = a3.height;
  width = a3.width;
  v14 = [(WebView *)self->_webView mainFrame];

  return [(UIWebDocumentView *)self beginPrintModeForFrame:v14 withSize:v7 startOffset:width minimumLayoutWidth:height maximumLayoutWidth:a4 tileClippedContent:a5, a6];
}

- (id)beginPrintModeForFrame:(id)a3 withSize:(CGSize)a4 startOffset:(double)a5 minimumLayoutWidth:(double)a6 maximumLayoutWidth:(double)a7 tileClippedContent:(BOOL)a8
{
  v8 = a8;
  height = a4.height;
  width = a4.width;
  v16 = [a3 webView];
  v17 = a6 > 0.0 && v16 == self->_webView;
  if (!v17 || width <= 0.0)
  {
    return 0;
  }

  if (a7 < a6)
  {
    a7 = a6;
  }

  WebThreadLock();
  v18 = [objc_msgSend(a3 "frameView")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [(UIWebDocumentView *)self _beginPrintModeForHTMLView:v18 withSize:v8 startOffset:width minimumLayoutWidth:height maximumLayoutWidth:a5 tileClippedContent:a6, a7];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(UIWebDocumentView *)self _beginPrintModeForPDFView:v18 withSize:width startOffset:height minimumLayoutWidth:a5 maximumLayoutWidth:a6, a7];
}

- (void)releasePrintMode
{
  printModeCount = self->_printModeCount;
  if (!printModeCount || (v3 = printModeCount - 1, (self->_printModeCount = v3) == 0))
  {
    [(UIWebDocumentView *)self _endPrintMode];
  }
}

- (void)_endPrintMode
{
  WebThreadLock();
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:{-[WebView mainFrame](self->_webView, "mainFrame")}];
  if ([v3 count])
  {
    v4 = 0;
    do
    {
      v5 = [v3 objectAtIndex:v4];
      v6 = [objc_msgSend(v5 "frameView")];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v6 _isInPrintMode])
        {
          [(UIWebDocumentView *)self setTilingArea:0];
          [v6 _endPrintMode];
        }
      }

      [v3 addObjectsFromArray:{objc_msgSend(v5, "childFrames")}];
      ++v4;
    }

    while (v4 < [v3 count]);
  }
}

- (void)_drawPDFPagesForPage:(unint64_t)a3 withPaginationInfo:(id)a4
{
  v6 = [a4 documentView];
  v7 = [v6 doc];
  if (CGPDFDocumentAllowsPrinting(v7))
  {
    v8 = [a4 pageRects];
    if ([v8 count] > a3)
    {
      ContextStack = GetContextStack(0);
      if (*ContextStack < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = ContextStack[3 * (*ContextStack - 1) + 1];
      }

      CGContextSaveGState(v10);
      [a4 scaleFactor];
      CGContextScaleCTM(v10, v11, v11);
      [objc_msgSend(v8 objectAtIndex:{a3), "rectValue"}];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [v6 totalPages];
      v21 = v20;
      if (v20)
      {
        v22 = 0.0;
        v23 = 1;
        v37 = v19;
        v38 = v13;
        do
        {
          v40.origin.x = v13;
          v40.origin.y = v15;
          v40.size.width = v17;
          v40.size.height = v19;
          if (v22 >= CGRectGetMaxY(v40))
          {
            break;
          }

          [v6 rectForPageNumber:v23];
          v24 = v19;
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v41.origin.x = v13;
          v33 = v22 + v31;
          v41.size.width = v17;
          v41.origin.y = v15;
          v41.size.height = v24;
          if (v33 > CGRectGetMinY(v41))
          {
            Page = CGPDFDocumentGetPage(v7, v23);
            CGContextSaveGState(v10);
            CGContextScaleCTM(v10, 1.0, -1.0);
            v42.origin.x = v26;
            v42.origin.y = v28;
            v42.size.width = v30;
            v42.size.height = v32;
            Height = CGRectGetHeight(v42);
            CGContextTranslateCTM(v10, 0.0, v15 - v22 - Height);
            v43.origin.x = v26;
            v43.origin.y = v28;
            v43.size.width = v30;
            v43.size.height = v32;
            Width = CGRectGetWidth(v43);
            v44.origin.x = v26;
            v44.origin.y = v28;
            v44.size.width = v30;
            v44.size.height = v32;
            v45.size.height = CGRectGetHeight(v44);
            v45.origin.x = 0.0;
            v45.origin.y = 0.0;
            v45.size.width = Width;
            CGPDFPageGetDrawingTransform(&transform, Page, kCGPDFCropBox, v45, 0, 1);
            CGContextConcatCTM(v10, &transform);
            BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
            CGContextClipToRect(v10, BoxRect);
            CGContextDrawPDFPage(v10, Page);
            CGContextRestoreGState(v10);
          }

          ++v23;
          v22 = v33;
          --v21;
          v19 = v37;
          v13 = v38;
        }

        while (v21);
      }

      CGContextRestoreGState(v10);
    }
  }
}

- (void)drawPage:(unint64_t)a3 withPaginationInfo:(id)a4
{
  WebThreadLock();
  v7 = [a4 documentView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v7 _isInPrintMode])
    {
      v8 = [a4 pageRects];
      if ([v8 count] > a3)
      {
        [a4 layoutSize];
        v10 = v9;
        v12 = v11;
        [v7 bounds];
        if (v13 != v10)
        {
          [v7 _beginPrintModeWithMinimumPageWidth:v10 height:v12 maximumPageWidth:v10];
        }

        ContextStack = GetContextStack(0);
        if (*ContextStack < 1)
        {
          v15 = 0;
        }

        else
        {
          v15 = ContextStack[3 * (*ContextStack - 1) + 1];
        }

        CGContextSaveGState(v15);
        [a4 scaleFactor];
        CGContextScaleCTM(v15, v16, v16);
        [objc_msgSend(v8 objectAtIndex:{a3), "rectValue"}];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        CGContextTranslateCTM(v15, -v17, -v19);
        [(WebView *)self->_webView viewWillDraw];
        [v7 displayRectIgnoringOpacity:v15 inContext:{v18, v20, v22, v24}];

        CGContextRestoreGState(v15);
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      [(UIWebDocumentView *)self _drawPDFPagesForPage:a3 withPaginationInfo:a4];
    }
  }
}

@end