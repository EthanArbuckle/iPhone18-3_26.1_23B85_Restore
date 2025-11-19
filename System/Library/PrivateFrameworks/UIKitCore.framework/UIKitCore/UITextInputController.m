@interface UITextInputController
+ (BOOL)_shouldUseStandardTextScaling:(id)a3;
- (BOOL)_canHandleResponderAction:(SEL)a3;
- (BOOL)_delegateShouldChangeTextInRange:(_NSRange)a3 replacementText:(id)a4;
- (BOOL)_hasMarkedText;
- (BOOL)_hasMarkedTextOrRangedSelection;
- (BOOL)_isDisplayingTextService;
- (BOOL)_isEmptySelection;
- (BOOL)_isInlineCompletionPresentedAsMarkedText:(id)a3;
- (BOOL)_isSecureTextEntry;
- (BOOL)_isSystemAttachment:(id)a3;
- (BOOL)_mightHaveSelection;
- (BOOL)_pasteFromPasteboard:(id)a3 andMatchStyle:(BOOL)a4;
- (BOOL)_range:(id)a3 containsRange:(id)a4;
- (BOOL)_range:(id)a3 intersectsRange:(id)a4;
- (BOOL)_range:(id)a3 isEqualToRange:(id)a4;
- (BOOL)_selectionAtDocumentEnd;
- (BOOL)_selectionAtDocumentStart;
- (BOOL)_selectionAtWordStart;
- (BOOL)_shouldConsiderTextViewForGeometry:(id)a3;
- (BOOL)_shouldHandleResponderAction:(SEL)a3 withSender:(id)a4;
- (BOOL)_shouldPerformUICalloutBarButtonReplaceAction:(SEL)a3 forText:(id)a4 checkAutocorrection:(BOOL)a5;
- (BOOL)_usesAsynchronousProtocol;
- (BOOL)hasText;
- (BOOL)isCoalescing;
- (BOOL)isEditable;
- (BOOL)isEditing;
- (BOOL)markedTextFromClient:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)shouldStartNewUndoGroup:(id)a3 textGranularity:(int64_t)a4 operationType:(int)a5;
- (BOOL)supportsTextKit2TextLists;
- (CGRect)_caretRect;
- (CGRect)_caretRectForOffset:(unint64_t)a3;
- (CGRect)_selectionClipRect;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)firstRectForRange:(id)a3;
- (CGRect)frameForTextPlaceholder:(id)a3;
- (NSArray)selectedRanges;
- (NSAttributedString)filteredAttributedText;
- (NSDictionary)typingAttributes;
- (NSSet)_allowedTypingAttributes;
- (UITextInputController)initWithTextLayoutController:(id)a3;
- (UITextInputControllerDelegate)delegate;
- (UITextInputDelegate)inputDelegate;
- (UITextInputSuggestionDelegate)textInputSuggestionDelegate;
- (UITextInputTokenizer)tokenizer;
- (UITextInteractionAssistant)interactionAssistant;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (UITextRange)markedTextRange;
- (UITextRange)selectedTextRange;
- (_NSRange)_nsrangeForTextRange:(id)a3;
- (_NSRange)_rangeAfterCancelDictationIfNecessaryForChangeInRange:(_NSRange)a3;
- (_NSRange)_selectedNSRange;
- (_NSRange)_selectedRange;
- (_NSRange)_selectedRangeWithinMarkedText;
- (_NSRange)markedRange;
- (_NSRange)nsRangeForTextRange:(id)a3;
- (_NSRange)selectedRange;
- (_UITextLayoutController)textLayoutController;
- (id)_attributedStringForInsertionOfAttributedString:(id)a3;
- (id)_attributedStringWithContentAwareWritingDirectionsFromAttributedString:(id)a3;
- (id)_attributesForApplyingFormattingModification:(id *)a3 withAttributes:(id)a4 paragraphStyle:(id)a5 forTypingAttributes:(BOOL)a6;
- (id)_attributesForInsertionOfText:(_NSRange)a3;
- (id)_attributesForReplacementInRange:(_NSRange)a3;
- (id)_characterPositionForPoint:(CGPoint)a3;
- (id)_clampedpositionFromPosition:(id)a3 offset:(int)a4;
- (id)_defaultAttributesForApplyingFormattingModification:(id *)a3 withAttributes:(id)a4 paragraphStyle:(id)a5;
- (id)_fallbackFont;
- (id)_findBoundaryPositionClosestToPosition:(id)a3 withGranularity:(int64_t)a4;
- (id)_findDocumentBoundaryFromPosition:(id)a3;
- (id)_findPleasingWordBoundaryFromPosition:(id)a3;
- (id)_firstTextView;
- (id)_fixupTypingAttributeForAttributes:(id)a3;
- (id)_fontForCaretSelection;
- (id)_fullRange;
- (id)_fullText;
- (id)_intersectionOfRange:(id)a3 andRange:(id)a4;
- (id)_itemProviderForCopyingRange:(_NSRange)a3;
- (id)_moveDown:(BOOL)a3 withHistory:(id)a4;
- (id)_moveLeft:(BOOL)a3 withHistory:(id)a4;
- (id)_moveRight:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfDocument:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfLine:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfParagraph:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfWord:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfDocument:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfLine:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfParagraph:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfWord:(BOOL)a3 withHistory:(id)a4;
- (id)_moveUp:(BOOL)a3 withHistory:(id)a4;
- (id)_newAttributedStringForInsertionOfAttributedText:(id)a3 inRange:(_NSRange)a4;
- (id)_newAttributedStringForInsertionOfText:(id)a3 inRange:(_NSRange)a4;
- (id)_newAttributedStringForReplacementOfAnnotatedText:(id)a3 inRange:(_NSRange)a4;
- (id)_normalizedStringForRangeComparison:(id)a3;
- (id)_parentScrollView;
- (id)_pasteController;
- (id)_positionAtStartOfWords:(unint64_t)a3 beforePosition:(id)a4;
- (id)_positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5 withAffinityDownstream:(BOOL)a6;
- (id)_positionFromPosition:(id)a3 pastTextUnit:(int64_t)a4 inDirection:(int64_t)a5;
- (id)_positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4;
- (id)_postfixTokensForDictationAttributedText:(id)a3 currentDictationAttributedTextRange:(_NSRange)a4 nextDictationAttributedTextRange:(_NSRange)a5;
- (id)_prefixTokensForDictationAttributedText:(id)a3 lastDictationAttributedTextRange:(_NSRange)a4 currentDictationAttributedTextRange:(_NSRange)a5;
- (id)_rangeFromCurrentRangeWithDelta:(_NSRange)a3;
- (id)_rangeOfSmartSelectionIncludingRange:(id)a3;
- (id)_rangeOfText:(id)a3 endingAtPosition:(id)a4;
- (id)_rangeOfTextUnit:(int64_t)a3 enclosingPosition:(id)a4;
- (id)_rangeSpanningTextUnit:(int64_t)a3 andPosition:(id)a4;
- (id)_rangesForBackwardsDelete;
- (id)_rangesToReplaceWhenInsertingText;
- (id)_rectsForRange:(_NSRange)a3;
- (id)_replaceRange:(id)a3 withAttributedTextFromKeyboard:(id)a4 addingUnderlinesForAlternatives:(BOOL)a5 updatingSelection:(BOOL)a6;
- (id)_selectedAttributedText;
- (id)_selectedRanges;
- (id)_selectedText;
- (id)_senderForDelegateNotifications;
- (id)_setHistory:(id)a3 withExtending:(BOOL)a4 withAnchor:(int)a5 withAffinityDownstream:(BOOL)a6;
- (id)_setSelectionRangeWithHistory:(id)a3;
- (id)_textColorForCaretSelection;
- (id)_textRangeFromDirectionalRange:(id)a3;
- (id)_textRangeFromNSRange:(_NSRange)a3;
- (id)_textStorage;
- (id)_underlineRectsByDocumentLineForSelectionRange:(id)a3;
- (id)_userEditedTextInfo;
- (id)_wordContainingCaretSelection;
- (id)annotatedSubstringForRange:(id)a3;
- (id)attributedSubstringForMarkedRange;
- (id)attributedTextInRange:(id)a3;
- (id)characterRangeAtPoint:(CGPoint)a3;
- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4;
- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4;
- (id)dictationAlternativesForSelectedText;
- (id)dictationLanguageForSelectedText;
- (id)handleInsertedText:(id)a3 intoTextStorage:(id)a4 replacementRange:(_NSRange)a5 updatedTypingAttributes:(id *)a6;
- (id)insertDictationResultPlaceholder;
- (id)insertTextPlaceholderWithSize:(CGSize)a3;
- (id)insertTextPlaceholderWithSize:(CGSize)a3 embeddingType:(int64_t)a4;
- (id)metadataDictionariesForDictationResults;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5;
- (id)positionFromPosition:(id)a3 offset:(int64_t)a4;
- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4;
- (id)rangeWithTextAlternatives:(id *)a3 atPosition:(id)a4;
- (id)replaceRange:(id)a3 withAttributedText:(id)a4 updatingSelection:(BOOL)a5;
- (id)selectionRectsForRange:(id)a3;
- (id)textChecker;
- (id)textInRange:(id)a3;
- (id)textRangeForNSRange:(_NSRange)a3;
- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4;
- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4;
- (id)undoManager;
- (int)_indexForTextPosition:(id)a3;
- (int64_t)_opposingDirectionFromDirection:(int64_t)a3;
- (int64_t)_resolveNaturalDirection:(int64_t)a3;
- (int64_t)_selectionAffinity;
- (int64_t)_textInputSource;
- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4;
- (int64_t)comparePosition:(id)a3 toPosition:(id)a4;
- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4;
- (int64_t)selectionAffinity;
- (int64_t)writingDirectionAtPosition:(id)a3;
- (unint64_t)_validCaretPositionFromCharacterIndex:(unint64_t)a3 downstream:(BOOL)a4;
- (unint64_t)textLengthToDeleteBeforeSelectedRangeForSmartDelete;
- (unsigned)_characterInRelationToCaretSelection:(int)a3;
- (unsigned)_characterInRelationToPosition:(id)a3 amount:(int)a4;
- (unsigned)_characterInRelationToRangedSelection:(int)a3;
- (void)_addShortcut:(id)a3;
- (void)_addToTypingAttributes:(id)a3;
- (void)_addToTypingAttributes:(id)a3 value:(id)a4;
- (void)_adjustSizeByIncreasing:(BOOL)a3;
- (void)_applyFormattingModification:(id)a3;
- (void)_changeLineHeightAction:(id)a3 newLineHeight:(id)a4;
- (void)_changeTextAlignment:(int64_t)a3 undoString:(id)a4;
- (void)_clearMarkedText;
- (void)_clearSelectionUI;
- (void)_coordinateSelectionChange:(id)a3;
- (void)_copySelectionToClipboard;
- (void)_copySelectionToClipboard:(id)a3;
- (void)_define:(id)a3;
- (void)_deleteBackwardAndNotify:(BOOL)a3;
- (void)_deleteByWord;
- (void)_deleteForwardAndNotify:(BOOL)a3;
- (void)_deleteForwardByWord;
- (void)_deleteTextRange:(id)a3;
- (void)_deleteToEndOfLine;
- (void)_deleteToEndOfParagraph;
- (void)_deleteToStartOfLine;
- (void)_detachFromLayoutManager;
- (void)_ensureSelectionValid;
- (void)_ensureSelectionVisible;
- (void)_expandSelectionToBackwardDeletionClusterWithReinsertionOut:(id *)a3;
- (void)_expandSelectionToStartOfWordsBeforeCaretSelection:(int)a3;
- (void)_extendCurrentSelection:(int)a3;
- (void)_forceUnmarkTextDueToEditing;
- (void)_insertAttributedText:(id)a3 fromKeyboard:(BOOL)a4;
- (void)_insertAttributedTextWithoutClosingTyping:(id)a3;
- (void)_insertDictationResult:(id)a3 withCorrectionIdentifier:(id)a4 replacingRange:(_NSRange)a5 resultLength:(unint64_t *)a6;
- (void)_insertText:(id)a3 fromKeyboard:(BOOL)a4;
- (void)_layoutManagerDidCompleteLayout;
- (void)_moveCurrentSelection:(int)a3;
- (void)_pasteAndMatchStyle:(BOOL)a3;
- (void)_pasteAttributedString:(id)a3 pasteAsRichText:(BOOL)a4;
- (void)_pasteAttributedString:(id)a3 toRange:(id)a4 completion:(id)a5;
- (void)_pasteDelegateDidPasteText:(id)a3 toTextRange:(id)a4;
- (void)_pasteDelegateWillPasteText:(id)a3 toTextRange:(id)a4;
- (void)_pasteRawAttributedString:(id)a3 asRichText:(BOOL)a4;
- (void)_performWhileSuppressingDelegateNotifications:(id)a3;
- (void)_promptForReplace:(id)a3;
- (void)_registerUndoOperationForReplacementWithActionName:(id)a3 replacementText:(id)a4;
- (void)_replaceCurrentWordWithText:(id)a3;
- (void)_replaceDocumentWithText:(id)a3;
- (void)_scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4;
- (void)_selectAll;
- (void)_selectionDidScroll:(id)a3;
- (void)_selectionGeometryChanged;
- (void)_sendDelegateChangeNotificationsForText:(BOOL)a3 selection:(BOOL)a4 replacement:(id)a5 characterRange:(_NSRange)a6;
- (void)_sendDelegateWillChangeNotificationsForText:(BOOL)a3 selection:(BOOL)a4;
- (void)_setAllowedTypingAttributes:(id)a3;
- (void)_setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)_setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4 fromKeyboard:(BOOL)a5 useTextStyle:(BOOL)a6;
- (void)_setCaretSelectionAtEndOfSelection;
- (void)_setGestureRecognizers;
- (void)_setInternalGestureRecognizers;
- (void)_setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)_setSelectedRange:(_NSRange)a3;
- (void)_setSelectedRanges:(id)a3;
- (void)_setSelectedTextRange:(id)a3 withAffinityDownstream:(BOOL)a4;
- (void)_setSelectionToPosition:(id)a3;
- (void)_setUndoRedoInProgress:(BOOL)a3;
- (void)_share:(id)a3;
- (void)_textStorageDidProcessEditing:(id)a3;
- (void)_translate:(id)a3;
- (void)_transliterateChinese:(id)a3;
- (void)_transpose;
- (void)_undoManagerWillUndo:(id)a3;
- (void)_unmarkText;
- (void)_updateEmptyStringAttributes;
- (void)_updateFirstTextView;
- (void)_updateRangeForSmartDelete;
- (void)_updateRectsForPlaceholder;
- (void)_updateSelectedRects:(id)a3 byTrimmingWhitespaceInRange:(id)a4 inDocument:(id)a5;
- (void)_updateSelectionWithTextRange:(id)a3 withAffinityDownstream:(BOOL)a4;
- (void)_validateCommand:(id)a3 forFont:(id)a4 traits:(int)a5;
- (void)addTextAlternatives:(id)a3;
- (void)addTextAlternativesDisplayStyle:(int64_t)a3 toRange:(_NSRange)a4 invalidatingDisplayInBoundingRect:(BOOL)a5;
- (void)adjustWritingDirectionIfNeeded;
- (void)alignCenter:(id)a3;
- (void)alignJustified:(id)a3;
- (void)alignLeft:(id)a3;
- (void)alignRight:(id)a3;
- (void)beginSelectionChange;
- (void)captureTextFromCamera:(id)a3;
- (void)changeWillBeUndone:(id)a3;
- (void)changingContextWithTrigger:(id)a3;
- (void)checkSmartPunctuationForWordInRange:(id)a3;
- (void)checkSpellingForSelectionChangeIfNecessary;
- (void)checkSpellingForWordInRange:(id)a3;
- (void)clearText;
- (void)coalesceInTextView:(id)a3 actionName:(id)a4 affectedRanges:(id)a5 replacementRange:(_NSRange)a6 replacementText:(id)a7;
- (void)correctedTypedText:(id)a3 rangeOfReplacement:(id)a4;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)deleteBackward;
- (void)deleteRemainingSpaceForTextListIfNeeded;
- (void)didEndEditing;
- (void)endSelectionChange;
- (void)forwardInvocation:(id)a3;
- (void)handleTextListForInsertedText:(id)a3 attributedText:(id)a4 intoTextStorage:(id)a5 replacementRange:(_NSRange)a6 paragraphStyle:(id)a7 paragraphStart:(unint64_t)a8 paragraphContentsEnd:(unint64_t)a9 updatedTypingAttributes:(id *)a10;
- (void)insertAdaptiveImageGlyph:(id)a3 replacementRange:(id)a4;
- (void)insertAttributedText:(id)a3;
- (void)insertDictationResult:(id)a3 withCorrectionIdentifier:(id)a4;
- (void)insertEmojiImageTextAttachment:(id)a3 replacementRange:(id)a4;
- (void)insertText:(id)a3;
- (void)invalidateDisplayForRange:(uint64_t)a1;
- (void)makeTextWritingDirectionLeftToRight:(id)a3;
- (void)makeTextWritingDirectionNatural:(id)a3;
- (void)makeTextWritingDirectionRightToLeft:(id)a3;
- (void)notifyTextCheckingControllerForSelectionChange;
- (void)pasteItemProviders:(id)a3 matchesStyle:(BOOL)a4;
- (void)preheatTextChecker;
- (void)registerUndoOperationForType:(int)a3 actionName:(id)a4 affectedRange:(_NSRange)a5 replacementText:(id)a6;
- (void)registerUndoOperationForType:(int)a3 actionName:(id)a4 affectedRanges:(id)a5 replacementText:(id)a6;
- (void)removeAllTextAlternatives;
- (void)removeAlternativesForCurrentWord;
- (void)removeAnnotation:(id)a3 forRange:(id)a4;
- (void)removeDictationResultPlaceholder:(id)a3 willInsertResult:(BOOL)a4;
- (void)removeEmojiAlternatives;
- (void)removeSpellingMarkersForCurrentWord;
- (void)removeSpellingMarkersFromWordInRange:(id)a3;
- (void)removeTextPlaceholder:(id)a3 notifyInputDelegate:(BOOL)a4;
- (void)removeTextStylingFromString:(id)a3;
- (void)replace:(id)a3;
- (void)replaceRange:(id)a3 withAnnotatedString:(id)a4 relativeReplacementRange:(_NSRange)a5;
- (void)replaceRange:(id)a3 withAttributedText:(id)a4;
- (void)replaceRange:(id)a3 withText:(id)a4;
- (void)replaceRangeWithTextWithoutClosingTyping:(id)a3 replacementText:(id)a4;
- (void)scrollRangeToVisible:(_NSRange)a3;
- (void)select:(id)a3;
- (void)selectAll;
- (void)selectAll:(id)a3;
- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setAutomaticallyAdjustsWritingDirection:(BOOL)a3;
- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setEffectiveWritingDirection;
- (void)setEffectiveWritingDirectionFromCurrentDirection:(int64_t)a3;
- (void)setInputDelegate:(id)a3;
- (void)setKeyboardWritingDirectionFromCurrentDirection:(int64_t)a3;
- (void)setLayoutWritingDirectionFromCurrentDirection:(int64_t)a3;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setSelectedRange:(_NSRange)a3 afterDelta:(int64_t)a4 appliedToRange:(_NSRange)a5;
- (void)setSelectedRanges:(id)a3;
- (void)setSelectedTextRange:(id)a3;
- (void)setSupportsAdaptiveImageGlyph:(BOOL)a3;
- (void)setTextLayoutController:(id)a3;
- (void)setWritingDirectionToNatural;
- (void)setWritingToolsStreamingReplacements:(BOOL)a3;
- (void)set_textInputSource:(int64_t)a3;
- (void)signalDictationDeletionTip;
- (void)signalDictationInputEvent:(id)a3 insertedText:(id)a4;
- (void)signalDictationSelectionTip:(id)a3;
- (void)stopCoalescing;
- (void)toggleBoldface:(id)a3;
- (void)toggleItalics:(id)a3;
- (void)toggleUnderline:(id)a3;
- (void)undoDidReplaceRange:(_NSRange)a3 withAttributedText:(id)a4;
- (void)undoManagerDidFinishUndoRedo;
- (void)undoManagerWillRemoveAllActions;
- (void)unmarkText:(BOOL)a3;
- (void)updateTextAttributesWithConversionHandler:(id)a3;
- (void)validateCommand:(id)a3;
@end

@implementation UITextInputController

void __45__UITextInputController__updateFirstTextView__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) interactionAssistant];
  [v1 updateDisplayedSelection];
}

- (void)_updateEmptyStringAttributes
{
  v6 = [(UITextInputController *)self _textStorage];
  if ([v6 length])
  {
    v3 = [v6 attributesAtIndex:0 effectiveRange:0];
    v4 = [v3 mutableCopy];

LABEL_3:
    [v4 removeObjectForKey:*off_1E70EC9F8];
    [(UITextInputController *)self _setEmptyStringAttributes:v4];
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 defaultAttributes];
    v4 = [v5 mutableCopy];

    if ([v4 count])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_8:
}

- (id)_textStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v3 = [WeakRetained textStorage];

  return v3;
}

- (void)_updateFirstTextView
{
  v50 = *MEMORY[0x1E69E9840];
  v39 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v5 = [WeakRetained textContainers];

  v6 = [v5 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v6)
  {

    v8 = 0;
LABEL_38:
    v8 = v8;
    v9 = v8;
    goto LABEL_39;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v46;
  v38 = v5;
  v36 = self;
  v37 = *v46;
  do
  {
    v11 = 0;
    v40 = v7;
    do
    {
      v12 = v8;
      if (*v46 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v13 = [*(*(&v45 + 1) + 8 * v11) textView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 superview];

        v13 = v14;
      }

      if (v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      v8 = v15;

      [v13 bounds];
      [v13 convertRect:0 toView:?];
      if (!CGRectIsEmpty(v51))
      {
        v42 = v8;
        v16 = [v13 window];

        if (v16)
        {
          [v39 addObject:v13];
          if ([v3 count])
          {
            v17 = [v3 lastObject];
            v18 = [v13 superview];
            v41 = v9;
            if (v18)
            {
              v19 = v18;
              v20 = 0;
              while (1)
              {
                v21 = [v3 containsObject:v19];
                v22 = v19;
                if (v21)
                {
                  break;
                }

                v19 = [v22 superview];

                v20 = v22;
                if (!v19)
                {
                  v20 = v22;
                  goto LABEL_23;
                }
              }

              v17 = v22;
            }

            else
            {
              v20 = 0;
LABEL_23:
              v22 = 0;
            }

            v26 = [v17 subviews];
            v27 = [v26 indexOfObjectIdenticalTo:v20];

            v28 = [v3 objectAtIndex:{objc_msgSend(v3, "indexOfObject:", v17) - 1}];
            v29 = [v17 subviews];
            v30 = [v29 indexOfObjectIdenticalTo:v28];

            if (v27 <= v30)
            {
              v9 = v41;
              v5 = v38;
            }

            else
            {
              [v3 removeAllObjects];
              v31 = v13;

              [v3 addObject:v31];
              v32 = [v31 superview];

              v5 = v38;
              if (v32)
              {
                do
                {
                  [v3 addObject:v32];
                  v33 = [v32 superview];

                  v32 = v33;
                }

                while (v33);
              }

              v9 = v31;

              v22 = 0;
            }

            v10 = v37;
          }

          else
          {
            v23 = v13;
            [v3 addObject:v23];
            v24 = [v23 superview];

            if (v24)
            {
              do
              {
                [v3 addObject:v24];
                v25 = [v24 superview];

                v24 = v25;
              }

              while (v25);
            }

            v17 = v9;
            v9 = v23;
          }

          v7 = v40;
        }

        v8 = v42;
      }

      ++v11;
    }

    while (v11 != v7);
    v7 = [v5 countByEnumeratingWithState:&v45 objects:v49 count:16];
  }

  while (v7);

  self = v36;
  if (!v9)
  {
    goto LABEL_38;
  }

LABEL_39:

  v34 = objc_loadWeakRetained(&self->_firstTextView);
  if (v34 != v9)
  {
    objc_storeWeak(&self->_firstTextView, v9);
    v35 = [(UITextInputController *)self _pasteController];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __45__UITextInputController__updateFirstTextView__block_invoke;
    v43[3] = &unk_1E70F3590;
    v44 = v9;
    [UIView performWithoutAnimation:v43];
  }
}

- (id)_pasteController
{
  WeakRetained = objc_loadWeakRetained(&self->_firstTextView);

  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  v4 = objc_loadWeakRetained(&self->_firstTextView);
  v5 = objc_getAssociatedObject(v4, sel__pasteController);

  if (v5)
  {
    goto LABEL_10;
  }

  v6 = objc_loadWeakRetained(&self->_firstTextView);
  v7 = [v6 conformsToProtocol:&unk_1EFE8C1A0];

  if (v7)
  {
    v8 = [UITextPasteController alloc];
    v9 = objc_loadWeakRetained(&self->_firstTextView);
    v5 = [(UITextPasteController *)v8 initWithSupportingView:v9];
    goto LABEL_7;
  }

  v10 = objc_loadWeakRetained(&self->_firstTextView);
  v11 = [v10 superview];
  v12 = [v11 conformsToProtocol:&unk_1EFE8C1A0];

  if (!v12)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v13 = [UITextPasteController alloc];
  v9 = objc_loadWeakRetained(&self->_firstTextView);
  v14 = [v9 superview];
  v5 = [(UITextPasteController *)v13 initWithSupportingView:v14];

LABEL_7:
  if (v5)
  {
    v15 = objc_loadWeakRetained(&self->_firstTextView);
    objc_setAssociatedObject(v15, sel__pasteController, v5, 1);
  }

LABEL_10:

  return v5;
}

- (void)_selectionGeometryChanged
{
  if ([(UITextInputController *)self _mightHaveSelection])
  {
    v3 = [(UITextInputController *)self interactionAssistant];
    [v3 setNeedsSelectionDisplayUpdate];
  }
}

- (BOOL)_mightHaveSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_firstTextView);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = objc_loadWeakRetained(&self->_firstTextView);
  v6 = [v5 _mightHaveSelection];

  return v6;
}

- (UITextPosition)beginningOfDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v3 = [WeakRetained beginningOfDocument];

  return v3;
}

- (UITextRange)selectedTextRange
{
  if (self->_markedTextRange.length)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v4 = [WeakRetained textRangeForCharacterRange:{self->_markedTextSelection.location + self->_markedTextRange.location, self->_markedTextSelection.length}];
  }

  else
  {
    v4 = self->_selectedTextRange;
  }

  return v4;
}

- (UITextRange)markedTextRange
{
  if (self->_markedTextRange.length)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v4 = [WeakRetained textRangeForCharacterRange:{self->_markedTextRange.location, self->_markedTextRange.length}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSSet)_allowedTypingAttributes
{
  allowedTypingAttributes = self->_allowedTypingAttributes;
  if (!allowedTypingAttributes)
  {
    if (qword_1ED4A2320 != -1)
    {
      dispatch_once(&qword_1ED4A2320, &__block_literal_global_581);
    }

    allowedTypingAttributes = qword_1ED4A2318;
  }

  v3 = allowedTypingAttributes;

  return v3;
}

- (_NSRange)_selectedRange
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v4 = [WeakRetained characterRangeForTextRange:self->_selectedTextRange];
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

void __49__UITextInputController__allowedTypingAttributes__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{*off_1E70EC918, *off_1E70EC988, *off_1E70EC920, *off_1E70EC8D0, *off_1E70EC958, *off_1E70EC950, *off_1E70EC9C8, *off_1E70ECAD8, *off_1E70EC9D0, *off_1E70EC9D8, *off_1E70EC9B0, *off_1E70ECA30, *off_1E70EC960, *off_1E70EC8D8, *off_1E70ECAD0, *off_1E70EC9C0, *off_1E70EC970, *off_1E70EC910, *off_1E70ECAF0, *off_1E70ECAE0, *off_1E70ECA80, *off_1E70ECA40, @"_UILastStoredDefaultTextAttributesName", *off_1E70ECA08, 0}];
  v1 = qword_1ED4A2318;
  qword_1ED4A2318 = v0;
}

- (NSDictionary)typingAttributes
{
  textPlaceholder = self->_textPlaceholder;
  if (textPlaceholder)
  {
    v4 = [(UITextPlaceholder *)textPlaceholder attachment];
    v5 = [v4 typingAttributesBeforeInsertion];
    [(UITextInputController *)self setTypingAttributes:v5];

LABEL_3:
    typingAttributes = self->_typingAttributes;
    goto LABEL_5;
  }

  typingAttributes = self->_typingAttributes;
  if (!typingAttributes)
  {
    v8 = [(UITextInputController *)self _selectedRange];
    v4 = [(UITextInputController *)self _attributesForReplacementInRange:v8, v9];
    [(UITextInputController *)self setTypingAttributes:v4];
    goto LABEL_3;
  }

LABEL_5:

  return typingAttributes;
}

- (UITextInputDelegate)inputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);

  return WeakRetained;
}

- (_NSRange)selectedRange
{
  if (self->_markedTextRange.length)
  {
    length = self->_markedTextSelection.length;
    v3 = self->_markedTextSelection.location + self->_markedTextRange.location;
  }

  else
  {
    v3 = [(UITextInputController *)self _selectedRange];
  }

  result.length = length;
  result.location = v3;
  return result;
}

- (_NSRange)markedRange
{
  length = self->_markedTextRange.length;
  location = self->_markedTextRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (NSAttributedString)filteredAttributedText
{
  v3 = objc_loadWeakRetained(&self->_textLayoutController);
  v4 = [v3 beginningOfDocument];
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v6 = [WeakRetained endOfDocument];
  v7 = [v3 textRangeFromPosition:v4 toPosition:v6];

  v8 = [(UITextInputController *)self attributedTextInRange:v7];

  return v8;
}

- (void)_detachFromLayoutManager
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  objc_storeWeak(&self->_layoutManager, 0);
  [(UITextCheckingController *)self->_textCheckingController invalidate];
  textCheckingController = self->_textCheckingController;
  self->_textCheckingController = 0;
}

- (void)dealloc
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  WeakRetained = objc_loadWeakRetained(&self->_layoutManager);

  if (has_internal_diagnostics)
  {
    if (WeakRetained)
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "NSLayoutManager was not detached before dealloc of UITextInputController", buf, 2u);
      }
    }
  }

  else if (WeakRetained)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &dealloc___s_category_10) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "NSLayoutManager was not detached before dealloc of UITextInputController", buf, 2u);
    }
  }

  v7.receiver = self;
  v7.super_class = UITextInputController;
  [(UITextInputController *)&v7 dealloc];
}

- (void)_ensureSelectionValid
{
  v3 = [(UITextInputController *)self _textStorage];
  location = [v3 length];

  if ([(UITextInputController *)self _selectedRange]>= location)
  {
    length = 0;
  }

  else
  {
    v9.location = [(UITextInputController *)self _selectedRange];
    v10.location = 0;
    v10.length = location;
    v5 = NSIntersectionRange(v9, v10);
    location = v5.location;
    length = v5.length;
  }

  if ([(UITextInputController *)self _selectedRange]!= location || v7 != length)
  {

    [(UITextInputController *)self _setSelectedRange:location, length];
  }
}

- (id)undoManager
{
  undoManager = self->_undoManager;
  if (!undoManager)
  {
    v4 = objc_alloc_init(_UITextUndoManager);
    v5 = self->_undoManager;
    self->_undoManager = v4;

    [(_UITextUndoManager *)self->_undoManager setInputController:self];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:self selector:sel__undoManagerWillUndo_ name:*MEMORY[0x1E696AA48] object:self->_undoManager];

    undoManager = self->_undoManager;
  }

  return undoManager;
}

- (void)undoManagerWillRemoveAllActions
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(&self->_tiFlags + 3) & 4) != 0)
  {
    if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v3 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &undoManagerWillRemoveAllActions___s_category) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = MEMORY[0x1E696AF00];
        v5 = v3;
        v6 = [v4 callStackSymbols];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "!!!! Undo manager is removing all actions. UITextInputController will prematurely end undo group for Writing Tools replacements\n%@", &v7, 0xCu);
      }
    }

    *&self->_tiFlags |= 0x8000000u;
  }
}

- (void)stopCoalescing
{
  WeakRetained = objc_loadWeakRetained(&self->_undoOperationForCoalescing);

  if (WeakRetained)
  {

    objc_storeWeak(&self->_undoOperationForCoalescing, 0);
  }
}

- (UITextInputTokenizer)tokenizer
{
  tokenizer = self->_tokenizer;
  if (!tokenizer)
  {
    v4 = [[_UITextInputControllerTokenizer alloc] initWithTextInputController:self];
    v5 = self->_tokenizer;
    self->_tokenizer = v4;

    tokenizer = self->_tokenizer;
  }

  return tokenizer;
}

- (UITextInteractionAssistant)interactionAssistant
{
  v2 = [(UITextInputController *)self _firstTextView];
  v3 = [v2 interactionAssistant];

  return v3;
}

- (id)_firstTextView
{
  WeakRetained = objc_loadWeakRetained(&self->_firstTextView);
  v4 = [WeakRetained window];

  if (!v4)
  {
    [(UITextInputController *)self _updateFirstTextView];
  }

  v5 = objc_loadWeakRetained(&self->_firstTextView);

  return v5;
}

- (id)_senderForDelegateNotifications
{
  v3 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [(UITextInputController *)v3 _textSelectingContainer];
  }

  else
  {
    v4 = v3;
    if (!v3)
    {
      v4 = self;
    }
  }

  return v4;
}

- (UITextPosition)endOfDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v3 = [WeakRetained endOfDocument];

  return v3;
}

- (_UITextLayoutController)textLayoutController
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);

  return WeakRetained;
}

- (id)metadataDictionariesForDictationResults
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(UITextInputController *)self _userEditedTextInfo];
  v5 = [(UITextInputController *)self _textStorage];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__UITextInputController_metadataDictionariesForDictationResults__block_invoke;
  v11[3] = &unk_1E7126970;
  v6 = v3;
  v12 = v6;
  v13 = v4;
  v7 = v4;
  [v5 coordinateReading:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)_userEditedTextInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__214;
  v17 = __Block_byref_object_dispose__214;
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__214;
  v11 = __Block_byref_object_dispose__214;
  v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(UITextInputController *)self _textStorage];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__UITextInputController__userEditedTextInfo__block_invoke;
  v6[3] = &unk_1E7126A10;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  [v4 coordinateReading:v6];

  [v3 setObject:v8[5] forKeyedSubscript:@"userEditedText"];
  [v3 setObject:v14[5] forKeyedSubscript:@"userEditedTextRanges"];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v3;
}

void __44__UITextInputController__userEditedTextInfo__block_invoke(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 length];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __44__UITextInputController__userEditedTextInfo__block_invoke_2;
  v35[3] = &unk_1E70F3050;
  v6 = v4;
  v36 = v6;
  [v3 enumerateAttribute:@"_UITextInputDictationResultMetadata" inRange:0 options:v5 usingBlock:{0x100000, v35}];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3010000000;
  v34[3] = "";
  v34[4] = 0;
  v34[5] = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __44__UITextInputController__userEditedTextInfo__block_invoke_3;
  v29[3] = &unk_1E710AB00;
  v29[4] = a1[4];
  v7 = v3;
  v30 = v7;
  v8 = a1[5];
  v32 = v34;
  v33 = v8;
  v9 = v6;
  v31 = v9;
  [v9 enumerateObjectsUsingBlock:v29];
  v10 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:*(*(a1[5] + 8) + 40)];
  v11 = [v10 array];
  v12 = [v11 mutableCopy];
  v13 = *(a1[5] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = *(*(a1[5] + 8) + 40);
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v16)
  {
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        v20 = *(*(a1[6] + 8) + 40);
        v21 = [v7 string];
        v22 = [v19 rangeValue];
        v24 = [v21 substringWithRange:{v22, v23}];
        [v20 appendString:v24];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v16);
  }

  _Block_object_dispose(v34, 8);
}

- (void)didEndEditing
{
  [(UITextInputController *)self removeAllTextAlternatives];
  v3 = [(UITextInputController *)self _textStorage];
  v4 = [v3 length];

  if ((*(&self->_tiFlags + 2) & 0x80) != 0)
  {
    v5 = [(UITextInputController *)self _textStorage];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__UITextInputController_didEndEditing__block_invoke;
    v6[3] = &__block_descriptor_48_e23_v16__0__NSTextStorage_8l;
    v6[4] = 0;
    v6[5] = v4;
    [v5 coordinateEditing:v6];

    *&self->_tiFlags &= ~0x800000u;
  }
}

- (void)removeAllTextAlternatives
{
  v3 = [(UITextInputController *)self _textStorage];
  v4 = [v3 length];

  if ((*(&self->_tiFlags + 2) & 0x40) != 0)
  {
    v5 = [(UITextInputController *)self _textStorage];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [(UITextInputController *)self _textStorage];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __50__UITextInputController_removeAllTextAlternatives__block_invoke;
      v12[3] = &__block_descriptor_48_e23_v16__0__NSTextStorage_8l;
      v12[4] = 0;
      v12[5] = v4;
      [v7 coordinateEditing:v12];

      WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
      v9 = *off_1E70ECA00;
      v10 = WeakRetained;
      v11 = [v10 documentRange];
      [v10 removeAnnotationAttribute:v9 forRange:v11];
    }
  }

  *&self->_tiFlags &= ~0x400000u;
}

void __64__UITextInputController_metadataDictionariesForDictationResults__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__214;
  v17[4] = __Block_byref_object_dispose__214;
  v18 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__214;
  v15[4] = __Block_byref_object_dispose__214;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3010000000;
  v13[3] = "";
  v14 = xmmword_18A678470;
  v4 = [v3 length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__UITextInputController_metadataDictionariesForDictationResults__block_invoke_2;
  v6[3] = &unk_1E7126948;
  v10 = v17;
  v11 = v15;
  v7 = *(a1 + 32);
  v12 = v13;
  v5 = v3;
  v8 = v5;
  v9 = *(a1 + 40);
  [v5 enumerateAttribute:@"_UITextInputDictationResultMetadata" inRange:0 options:v4 usingBlock:{0x100000, v6}];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);

  _Block_object_dispose(v17, 8);
}

- (BOOL)hasText
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(UITextInputController *)self _textStorage];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__UITextInputController_hasText__block_invoke;
  v4[3] = &unk_1E70F94A8;
  v4[4] = &v5;
  [v2 coordinateReading:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __32__UITextInputController_hasText__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 length];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

- (id)_selectedText
{
  v3 = [(UITextInputController *)self _textStorage];
  v4 = [v3 string];
  v5 = [(UITextInputController *)self selectedRange];
  v7 = [v4 substringWithRange:{v5, v6}];

  return v7;
}

- (id)dictationLanguageForSelectedText
{
  v3 = [(UITextInputController *)self selectedTextRange];
  v4 = [v3 start];
  v5 = [(UITextInputController *)self _rangeOfEnclosingWord:v4];

  v6 = [(UITextInputController *)self attributedTextInRange:v5];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__214;
  v18 = __Block_byref_object_dispose__214;
  v19 = 0;
  v7 = [v6 length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__UITextInputController_dictationLanguageForSelectedText__block_invoke;
  v11[3] = &unk_1E7126998;
  v8 = v6;
  v12 = v8;
  v13 = &v14;
  [v8 enumerateAttributesInRange:0 options:v7 usingBlock:{0x100000, v11}];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __57__UITextInputController_dictationLanguageForSelectedText__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = [a2 allKeys];
  v9 = [v8 containsObject:@"_UITextInputDictationResultMetadata"];

  if (v9)
  {
    v14 = [*(a1 + 32) attribute:@"_UITextInputDictationResultMetadata" atIndex:a3 effectiveRange:0];
    v10 = [v14 objectForKeyedSubscript:@"dictationLanguage"];
    v11 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:v10];
    v12 = *(*(a1 + 40) + 8);
    if ((v11 & 1) != 0 || (v13 = *(v12 + 40)) == 0)
    {
      objc_storeStrong((v12 + 40), v10);
    }

    else
    {
      *(v12 + 40) = 0;

      *a5 = 1;
    }
  }

  else
  {
    *a5 = 1;
  }
}

- (UITextInputSuggestionDelegate)textInputSuggestionDelegate
{
  v2 = [(UITextInputController *)self _selectableText];
  v3 = [v2 inputDelegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_textInputSource
{
  v2 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];

  if (!v2)
  {
    return __UIPlatformFallbackInputSource;
  }

  v3 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
  v4 = [v3 lastEventSource];

  return v4;
}

- (void)set_textInputSource:(int64_t)a3
{
  v5 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];

  if (v5)
  {
    v6 = (objc_opt_respondsToSelector() & 1) != 0 && [(UITextInputController *)self keyboardType]== 122;
    if (a3 == 3 && v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = self;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
    [v10 updateEventSource:a3 options:v7 responder:v9];
  }

  else
  {
    __UIPlatformFallbackInputSource = a3;
  }
}

- (_NSRange)_selectedNSRange
{
  v3 = [(UITextInputController *)self _selectableText];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 selectedTextRange];
    if (v5)
    {
      v6 = [(UITextInputController *)self _nsrangeForTextRange:v5];
      v8 = v7;
    }

    else
    {
      v8 = 0;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)_selectedRangeWithinMarkedText
{
  v2 = [(UITextInputController *)self _selectableText];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 selectedTextRange];
    if (v4)
    {
      v5 = [v3 markedTextRange];
      v6 = v5;
      if (!v5 || ([v5 start], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "start"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v3, "offsetFromPosition:toPosition:", v7, v8), v8, v7, v9 < 0))
      {
        v12 = 0;
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = [v4 start];
        v11 = [v4 end];
        v12 = [v3 offsetFromPosition:v10 toPosition:v11];
      }
    }

    else
    {
      v12 = 0;
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v12 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v9;
  v14 = v12;
  result.length = v14;
  result.location = v13;
  return result;
}

- (void)_selectAll
{
  v3 = [(UITextInputController *)self _selectableText];
  v2 = [v3 _fullRange];
  [v3 setSelectedTextRange:v2];
}

- (int)_indexForTextPosition:(id)a3
{
  v4 = a3;
  v5 = [(UITextInputController *)self _selectableText];
  v6 = [v5 beginningOfDocument];
  v7 = [v5 offsetFromPosition:v6 toPosition:v4];

  return v7;
}

- (_NSRange)_nsrangeForTextRange:(id)a3
{
  v4 = a3;
  v5 = [(UITextInputController *)self _selectableText];
  v6 = [v4 start];
  v7 = [(UITextInputController *)self _indexForTextPosition:v6];

  v8 = [v4 start];
  v9 = [v4 end];

  v10 = [v5 offsetFromPosition:v8 toPosition:v9];
  v11 = v7;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (id)_textRangeFromNSRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(UITextInputController *)self _selectableText];
  v6 = [v5 beginningOfDocument];
  v7 = [v5 positionFromPosition:v6 offset:location];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 endOfDocument];
  }

  v10 = v9;

  v11 = [v5 positionFromPosition:v10 offset:length];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v5 endOfDocument];
  }

  v14 = v13;

  v15 = [v5 textRangeFromPosition:v10 toPosition:v14];

  return v15;
}

- (id)_textRangeFromDirectionalRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(UITextInputController *)self _selectableText];
  v6 = [v5 selectedTextRange];
  v7 = [v6 start];
  v8 = [v5 positionFromPosition:v7 offset:var0];

  v9 = [v5 positionFromPosition:v8 offset:var1];
  v10 = [v5 textRangeFromPosition:v8 toPosition:v9];

  return v10;
}

- (unsigned)_characterInRelationToCaretSelection:(int)a3
{
  v3 = *&a3;
  v5 = [(UITextInputController *)self _selectableText];
  v6 = [v5 selectedTextRange];
  if (v6 && (v7 = v6, [v5 selectedTextRange], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEmpty"), v8, v7, v9))
  {
    v10 = [(UITextInputController *)self _characterInRelationToRangedSelection:v3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unsigned)_characterInRelationToRangedSelection:(int)a3
{
  v4 = [(UITextInputController *)self _selectableText];
  v5 = [v4 selectedTextRange];

  if (!v5)
  {
    goto LABEL_4;
  }

  if (a3 > -101)
  {
    if ((a3 & 0x80000000) == 0)
    {
      v7 = [v4 selectedTextRange];
      v8 = [v7 end];

      if (a3)
      {
        v9 = [v4 positionFromPosition:v8 offset:a3];

        v8 = v9;
      }

      if (!v8)
      {
        goto LABEL_17;
      }

LABEL_11:
      v12 = [v4 positionFromPosition:v8 offset:1];
      if (v12)
      {
        v13 = v12;
        v14 = [v4 textRangeFromPosition:v8 toPosition:v12];
        v15 = [v4 textInRange:v14];
        if ([v15 length])
        {
          if ([v15 length] == 2 && (v16 = objc_msgSend(v15, "characterAtIndex:", 0), v17 = objc_msgSend(v15, "characterAtIndex:", 1), (v16 & 0xFC00) == 0xD800) && (v17 & 0xFC00) == 0xDC00)
          {
            v6 = v17 + (v16 << 10) - 56613888;
          }

          else
          {
            v6 = [v15 characterAtIndex:0];
          }
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_21;
      }

LABEL_17:
      v6 = 0;
LABEL_21:

      goto LABEL_22;
    }

LABEL_10:
    v10 = [v4 selectedTextRange];
    v11 = [v10 start];
    v8 = [v4 positionFromPosition:v11 offset:a3];

    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = 0;
LABEL_22:

  return v6;
}

- (unsigned)_characterInRelationToPosition:(id)a3 amount:(int)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = a3;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = [v7 positionFromPosition:v6 offset:a4];

  v9 = [v7 positionFromPosition:v8 offset:1];
  v10 = [v7 textRangeFromPosition:v8 toPosition:v9];
  v11 = [v7 textInRange:v10];
  if ([v11 length])
  {
    if ([v11 length] == 2 && (v12 = objc_msgSend(v11, "characterAtIndex:", 0), v13 = objc_msgSend(v11, "characterAtIndex:", 1), (v12 & 0xFC00) == 0xD800) && (v13 & 0xFC00) == 0xDC00)
    {
      v14 = v13 + (v12 << 10) - 56613888;
    }

    else
    {
      v14 = [v11 characterAtIndex:0];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_wordContainingCaretSelection
{
  v3 = [(UITextInputController *)self _selectableText];
  v4 = [v3 selectedTextRange];
  if (v4)
  {
    v5 = [v3 selectedTextRange];
    v6 = [v5 isEmpty];

    if (v6)
    {
      v7 = [v3 selectedTextRange];
      v8 = [v7 start];
      v9 = [(UITextInputController *)self _rangeOfEnclosingWord:v8];

      if (v9)
      {
        v4 = [v3 textInRange:v9];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)_fullText
{
  v2 = [(UITextInputController *)self _selectableText];
  v3 = [v2 beginningOfDocument];
  v4 = [v2 endOfDocument];
  v5 = [v2 textRangeFromPosition:v3 toPosition:v4];

  v6 = [v2 textInRange:v5];

  return v6;
}

- (void)_setSelectionToPosition:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(UITextInputController *)self _selectableText];
    v5 = [v6 textRangeFromPosition:v4 toPosition:v4];

    if (v5)
    {
      [v6 setSelectedTextRange:v5];
    }
  }
}

- (BOOL)_selectionAtWordStart
{
  v3 = [(UITextInputController *)self _selectableText];
  v4 = [v3 selectedTextRange];
  v5 = [v4 start];
  v6 = [(UITextInputController *)self _rangeOfEnclosingWord:v5];

  if (v6)
  {
    v7 = [v6 start];
    v8 = [v3 selectedTextRange];
    v9 = [v8 start];
    v10 = [v3 comparePosition:v7 toPosition:v9];

    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_selectionAtDocumentStart
{
  v2 = [(UITextInputController *)self _selectableText];
  v3 = [v2 selectedTextRange];
  v4 = [v3 start];

  if (v4)
  {
    v5 = [v2 beginningOfDocument];
    v6 = [v2 comparePosition:v5 toPosition:v4] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_selectionAtDocumentEnd
{
  v2 = [(UITextInputController *)self _selectableText];
  v3 = [v2 selectedTextRange];
  v4 = [v3 end];

  if (v4)
  {
    v5 = [v2 endOfDocument];
    v6 = [v2 comparePosition:v5 toPosition:v4] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)_selectionClipRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)_isEmptySelection
{
  v2 = [(UITextInputController *)self _selectableText];
  v3 = [v2 selectedTextRange];
  v4 = [v3 start];
  v5 = [v3 end];
  v6 = [v2 comparePosition:v4 toPosition:v5] == 0;

  return v6;
}

- (BOOL)_hasMarkedTextOrRangedSelection
{
  v2 = [(UITextInputController *)self _selectableText];
  v3 = [v2 markedTextRange];
  if (v3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [v2 selectedTextRange];
    if (v5)
    {
      v6 = [v2 selectedTextRange];
      v4 = [v6 isEmpty] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)_extendCurrentSelection:(int)a3
{
  v3 = *&a3;
  v5 = [(UITextInputController *)self _selectableText];
  if (v3)
  {
    v15 = v5;
    v6 = [v5 selectedTextRange];

    v5 = v15;
    if (v6)
    {
      v7 = [v15 selectedTextRange];
      v8 = [v7 start];

      v9 = [v15 selectedTextRange];
      v10 = [v9 end];

      if (v3 < 1)
      {
        v13 = [(UITextInputController *)self _clampedpositionFromPosition:v8 offset:v3];
        v12 = v8;
        v8 = v13;
      }

      else
      {
        v11 = [(UITextInputController *)self _clampedpositionFromPosition:v10 offset:v3];
        v12 = v10;
        v10 = v11;
      }

      v14 = [v15 textRangeFromPosition:v8 toPosition:v10];
      [v15 setSelectedTextRange:v14];

      v5 = v15;
    }
  }
}

- (void)_moveCurrentSelection:(int)a3
{
  v3 = *&a3;
  v5 = [(UITextInputController *)self _selectableText];
  if (v3)
  {
    v14 = v5;
    v6 = [v5 selectedTextRange];

    v5 = v14;
    if (v6)
    {
      v7 = [v14 selectedTextRange];
      v8 = [v7 isEmpty];

      if (v8)
      {
        v9 = [v14 selectedTextRange];
        v10 = [v9 start];
      }

      else
      {
        v11 = [v14 selectedTextRange];
        v10 = [v11 end];

        if (v3 < 1)
        {
          v3 = (v3 + 1);
        }

        else
        {
          v3 = (v3 - 1);
        }
      }

      v12 = [(UITextInputController *)self _clampedpositionFromPosition:v10 offset:v3];

      v13 = [v14 textRangeFromPosition:v12 toPosition:v12];
      if (v13)
      {
        [v14 setSelectedTextRange:v13];
      }

      v5 = v14;
    }
  }
}

- (void)_expandSelectionToBackwardDeletionClusterWithReinsertionOut:(id *)a3
{
  v24 = [(UITextInputController *)self _selectableText];
  v4 = [v24 selectedTextRange];
  v5 = [v4 start];
  v6 = [v4 end];
  v7 = v5;
  if (!v4 || ([v4 isEmpty] & 1) != 0)
  {
    v8 = &stru_1EFB14550;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_18:
    v19 = 0;
    v10 = 0;
    goto LABEL_29;
  }

  v8 = [v24 textInRange:v4];
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_4:
  v23 = a3;
  v9 = v7;
  v10 = v7;
  while (1)
  {
    v11 = v8;
    v12 = [(__CFString *)v11 length];
    if (v12)
    {
      v13 = v12;
      [(__CFString *)v11 _rangeOfBackwardDeletionClusterAtIndex:[(__CFString *)v11 length]- 1];
      v15 = v14;
      v16 = v13 - v14;

      if (v13 != v15)
      {
        v8 = v11;
        v19 = v9;
        goto LABEL_20;
      }
    }

    else
    {

      v16 = 0;
    }

    v19 = v10;

    v10 = [v24 positionFromPosition:v19 offset:-1];

    if (v10)
    {
      v17 = [v24 textRangeFromPosition:v10 toPosition:v19];
      if (v17)
      {
        v18 = [v24 textInRange:v17];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    if (![v18 length])
    {
      break;
    }

    v8 = [v18 stringByAppendingString:v11];

    v9 = v19;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  v10 = 0;
  v8 = v11;
LABEL_20:
  v20 = v24;
  if (v23 && v16 >= 1)
  {
    v21 = v10;

    *v23 = [(__CFString *)v8 substringToIndex:v16];
    v20 = v24;
    v19 = v21;
  }

  if (v19 != v7 && v19 && v6)
  {
    v22 = [v20 textRangeFromPosition:v19 toPosition:v6];
    if (v22)
    {
      [v24 setSelectedTextRange:v22];
    }
  }

LABEL_29:
}

- (void)_expandSelectionToStartOfWordsBeforeCaretSelection:(int)a3
{
  v10 = [(UITextInputController *)self _selectableText];
  v4 = [v10 selectedTextRange];
  v5 = v4;
  if (a3 && v4)
  {
    v6 = [v4 start];
    v7 = [v10 _positionAtStartOfWords:a3 beforePosition:v6];

    if (v7)
    {
      v8 = [v5 end];
      v9 = [v10 textRangeFromPosition:v7 toPosition:v8];
      [v10 setSelectedTextRange:v9];
    }
  }
}

- (id)_positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = v7;
  if (a4 == 1)
  {
    v9 = [v6 start];
    goto LABEL_7;
  }

  if (!a4)
  {
    v9 = [v6 end];
LABEL_7:
    v10 = v9;
    goto LABEL_8;
  }

  if (v6)
  {
    v9 = [v7 positionWithinRange:v6 farthestInDirection:a4];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (int64_t)_opposingDirectionFromDirection:(int64_t)a3
{
  result = a3;
  if (a3 <= 5)
  {
    return qword_18A680700[a3];
  }

  return result;
}

- (id)_positionFromPosition:(id)a3 pastTextUnit:(int64_t)a4 inDirection:(int64_t)a5
{
  v8 = a3;
  v9 = [(UITextInputController *)self _selectableText];
  if (v8)
  {
    v10 = -3;
    while (!__CFADD__(v10++, 1))
    {
      v12 = [v9 tokenizer];
      v13 = [v12 positionFromPosition:v8 toBoundary:a4 inDirection:a5];

      if (!v13)
      {
        v17 = 0;
        v8 = 0;
        goto LABEL_12;
      }

      v14 = [v9 tokenizer];
      if ([v14 isPosition:v13 atBoundary:a4 inDirection:a5])
      {

LABEL_11:
        v17 = v13;
        v8 = v17;
        goto LABEL_12;
      }

      v15 = [v9 tokenizer];
      v16 = [v15 isPosition:v13 atBoundary:a4 inDirection:{-[UITextInputController _opposingDirectionFromDirection:](self, "_opposingDirectionFromDirection:", a5)}];

      v8 = v13;
      if (v16)
      {
        goto LABEL_11;
      }
    }
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (id)_positionAtStartOfWords:(unint64_t)a3 beforePosition:(id)a4
{
  v6 = a4;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = v7;
  if (!a3 || !v6)
  {
    v6 = v6;
    v10 = v6;
    goto LABEL_13;
  }

  v9 = [v7 tokenizer];
  v10 = [v9 rangeEnclosingPosition:v6 withGranularity:1 inDirection:1];

  if (v10)
  {
    goto LABEL_4;
  }

  v18 = [v8 tokenizer];
  v19 = [v18 positionFromPosition:v6 toBoundary:1 inDirection:1];

  if (!v19)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v20 = [v8 tokenizer];
  v10 = [v20 rangeEnclosingPosition:v19 withGranularity:1 inDirection:1];

  if (v10)
  {
LABEL_4:
    v11 = [v10 start];

    if (a3 >= 2)
    {
      v12 = a3 - 1;
      while (1)
      {
        v13 = [v8 tokenizer];
        v14 = [v13 positionFromPosition:v11 toBoundary:1 inDirection:1];

        if (!v14)
        {
          break;
        }

        v15 = [v8 tokenizer];
        v16 = [v15 positionFromPosition:v14 toBoundary:1 inDirection:1];

        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!--v12)
        {
          goto LABEL_12;
        }
      }
    }

    v16 = v11;
LABEL_12:
    v6 = v16;

    v10 = v6;
  }

LABEL_13:

  return v10;
}

- (void)_setCaretSelectionAtEndOfSelection
{
  v7 = [(UITextInputController *)self _selectableText];
  v2 = [v7 selectedTextRange];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 end];
    v5 = [v3 end];
    v6 = [v7 textRangeFromPosition:v4 toPosition:v5];
    [v7 setSelectedTextRange:v6];
  }
}

- (void)_deleteByWord
{
  v10 = [(UITextInputController *)self _selectableText];
  v3 = [v10 selectedTextRange];
  v4 = [v10 inputDelegate];
  [v4 textWillChange:v10];

  if ([v3 isEmpty])
  {
    v5 = [v3 start];
    v6 = [v10 _positionAtStartOfWords:1 beforePosition:v5];

    if (v6)
    {
      v7 = [v3 end];
      v8 = [v10 textRangeFromPosition:v6 toPosition:v7];

      v3 = v8;
    }
  }

  [(UITextInputController *)self _deleteTextRange:v3];
  v9 = [v10 inputDelegate];
  [v9 textDidChange:v10];
}

- (void)_deleteForwardByWord
{
  v18 = [(UITextInputController *)self _selectableText];
  v3 = [v18 selectedTextRange];
  v4 = [v18 inputDelegate];
  [v4 textWillChange:v18];

  if ([v3 isEmpty])
  {
    v5 = [(UITextInputController *)self _selectableText];
    v6 = v5;
    if (v3)
    {
      v7 = [v5 tokenizer];
      v8 = [v3 end];
      v9 = [v7 rangeEnclosingPosition:v8 withGranularity:1 inDirection:0];

      if (v9 || ([v6 tokenizer], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "end"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "positionFromPosition:toBoundary:inDirection:", v15, 1, 0), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, v16) && (objc_msgSend(v6, "tokenizer"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "rangeEnclosingPosition:withGranularity:inDirection:", v16, 1, 0), v9 = objc_claimAutoreleasedReturnValue(), v17, v16, v9))
      {
        v10 = [v3 start];
        v11 = [v9 end];
        v12 = [v6 textRangeFromPosition:v10 toPosition:v11];

        v3 = v12;
      }
    }
  }

  [(UITextInputController *)self _deleteTextRange:v3];
  v13 = [v18 inputDelegate];
  [v13 textDidChange:v18];
}

- (void)_deleteToStartOfLine
{
  v13 = [(UITextInputController *)self _selectableText];
  v3 = [v13 selectedTextRange];
  v4 = [v13 inputDelegate];
  [v4 textWillChange:v13];

  if ([v3 isEmpty])
  {
    v5 = [v13 tokenizer];
    v6 = [v3 start];
    v7 = [v5 positionFromPosition:v6 toBoundary:4 inDirection:1];

    if (v7)
    {
      v8 = [v3 start];
      v9 = [v13 comparePosition:v8 toPosition:v7];

      if (v9 == 1)
      {
        v10 = [v3 start];
        v11 = [v13 textRangeFromPosition:v7 toPosition:v10];

        v3 = v11;
      }
    }
  }

  [(UITextInputController *)self _deleteTextRange:v3];
  v12 = [v13 inputDelegate];
  [v12 textDidChange:v13];
}

- (void)_deleteToEndOfLine
{
  v13 = [(UITextInputController *)self _selectableText];
  v3 = [v13 selectedTextRange];
  v4 = [v13 inputDelegate];
  [v4 textWillChange:v13];

  if ([v3 isEmpty])
  {
    v5 = [v13 tokenizer];
    v6 = [v3 end];
    v7 = [v5 positionFromPosition:v6 toBoundary:4 inDirection:0];

    if (v7)
    {
      v8 = [v3 end];
      v9 = [v13 comparePosition:v7 toPosition:v8];

      if (v9 == 1)
      {
        v10 = [v3 end];
        v11 = [v13 textRangeFromPosition:v10 toPosition:v7];

        v3 = v11;
      }
    }
  }

  [(UITextInputController *)self _deleteTextRange:v3];
  v12 = [v13 inputDelegate];
  [v12 textDidChange:v13];
}

- (void)_deleteToEndOfParagraph
{
  v13 = [(UITextInputController *)self _selectableText];
  v3 = [v13 selectedTextRange];
  v4 = [v13 inputDelegate];
  [v4 textWillChange:v13];

  if ([v3 isEmpty])
  {
    v5 = [v13 tokenizer];
    v6 = [v3 end];
    v7 = [v5 positionFromPosition:v6 toBoundary:3 inDirection:0];

    if (v7)
    {
      v8 = [v3 end];
      v9 = [v13 comparePosition:v7 toPosition:v8];

      if (v9 == 1)
      {
        v10 = [v3 end];
        v11 = [v13 textRangeFromPosition:v10 toPosition:v7];

        v3 = v11;
      }
    }
  }

  [(UITextInputController *)self _deleteTextRange:v3];
  v12 = [v13 inputDelegate];
  [v12 textDidChange:v13];
}

- (void)_deleteTextRange:(id)a3
{
  v4 = a3;
  v9 = [(UITextInputController *)self _selectableText];
  v5 = [v9 selectedTextRange];
  [v9 setSelectedTextRange:v4];

  v6 = [v9 selectedTextRange];
  v7 = [v6 isEmpty];

  if ((v7 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = v9;
      if ([v8 keyboardInputShouldDelete:v8])
      {
        [v8 deleteBackward];
      }

      else
      {
        [v8 setSelectedTextRange:v5];
      }
    }

    else
    {
      [v9 deleteBackward];
    }
  }
}

- (void)_deleteBackwardAndNotify:(BOOL)a3
{
  v3 = [(UITextInputController *)self _keyInput];
  [v3 deleteBackward];
}

- (void)_deleteForwardAndNotify:(BOOL)a3
{
  v14 = [(UITextInputController *)self _selectableText];
  v4 = [v14 selectedTextRange];
  v5 = [v14 inputDelegate];
  [v5 textWillChange:v14];

  if ([v4 isEmpty])
  {
    v6 = [v14 tokenizer];
    v7 = [v4 end];
    v8 = [v6 positionFromPosition:v7 toBoundary:0 inDirection:0];

    if (v8)
    {
      v9 = [v4 end];
      v10 = [v14 comparePosition:v8 toPosition:v9];

      if (v10 == 1)
      {
        v11 = [v4 end];
        v12 = [v14 textRangeFromPosition:v11 toPosition:v8];

        v4 = v12;
      }
    }
  }

  [(UITextInputController *)self _deleteTextRange:v4];
  v13 = [v14 inputDelegate];
  [v13 textDidChange:v14];
}

- (void)_transpose
{
  v19 = [(UITextInputController *)self _selectableText];
  v2 = [v19 selectedTextRange];
  if ([v2 isEmpty])
  {
    v3 = [v19 inputDelegate];
    [v3 textWillChange:v19];

    v4 = [v19 tokenizer];
    v5 = [v2 start];
    v6 = [v4 positionFromPosition:v5 toBoundary:0 inDirection:1];

    v7 = [v19 tokenizer];
    v8 = [v2 end];
    v9 = [v7 positionFromPosition:v8 toBoundary:0 inDirection:0];

    if (v6 && v9)
    {
      v10 = [v2 start];
      v11 = [v19 textRangeFromPosition:v6 toPosition:v10];

      v12 = [v2 end];
      v13 = [v19 textRangeFromPosition:v12 toPosition:v9];

      if (v11 && v13)
      {
        v14 = [v19 textInRange:v11];
        v15 = [v19 textInRange:v13];
        v16 = [v15 stringByAppendingString:v14];
        v17 = [v19 textRangeFromPosition:v6 toPosition:v9];
        if (v17)
        {
          [v19 replaceRange:v17 withText:v16];
        }
      }
    }

    v18 = [v19 inputDelegate];
    [v18 textDidChange:v19];
  }
}

- (void)_replaceCurrentWordWithText:(id)a3
{
  v8 = a3;
  v4 = [(UITextInputController *)self _selectableText];
  v5 = [v4 selectedTextRange];
  v6 = [v5 start];
  v7 = [(UITextInputController *)self _rangeOfEnclosingWord:v6];

  if (v7)
  {
    [v4 replaceRange:v7 withText:v8];
  }
}

- (void)_replaceDocumentWithText:(id)a3
{
  v7 = a3;
  v4 = [(UITextInputController *)self _selectableText];
  v5 = [(UITextInputController *)self _fullRange];
  v6 = v5;
  if (v5)
  {
    if (([v5 isEmpty] & 1) == 0)
    {
      [v4 replaceRange:v6 withText:&stru_1EFB14550];
    }

    [v4 insertText:v7];
  }
}

- (void)_scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [(UITextInputController *)self _selectableText];
  v9 = [v11 textInputView];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 performSelector:sel__enclosingScrollerIncludingSelf];
    [v10 convertRect:v9 fromView:{x, y, width, height}];
    [v10 scrollRectToVisible:v4 animated:?];
  }
}

- (id)_normalizedStringForRangeComparison:(id)a3
{
  v3 = [a3 _stringByReplacingCharacter:160 withCharacter:32];
  v4 = [v3 _stringByReplacingCharacter:8217 withCharacter:39];

  v5 = [v4 _stringByReplacingCharacter:8216 withCharacter:39];

  return v5;
}

- (id)_rangeOfText:(id)a3 endingAtPosition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UITextInputController *)self _selectableText];
  if (![v6 length])
  {
    v11 = [v8 textRangeFromPosition:v7 toPosition:v7];
    goto LABEL_30;
  }

  v9 = [v8 _rangeOfEnclosingWord:v7];
  if (v9)
  {
    v10 = [v8 textInRange:v9];
  }

  else
  {
    v10 = 0;
  }

  if (![v10 isEqualToString:v6])
  {
    v13 = [v8 positionFromPosition:v7 offset:{-objc_msgSend(v6, "length")}];
    if (!v13)
    {
      v13 = [v8 beginningOfDocument];
    }

    v14 = [v8 textRangeFromPosition:v13 toPosition:v7];

    if (v14)
    {
      v15 = [v8 textInRange:v14];

      v16 = [v15 length];
      if (v16 <= [v6 length])
      {
        v12 = v14;
        v10 = v15;
LABEL_25:
        v21 = [(UITextInputController *)self _normalizedStringForRangeComparison:v10];
        v22 = [(UITextInputController *)self _normalizedStringForRangeComparison:v6];
        if ([v21 isEqualToString:v22])
        {
          v11 = v12;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_29;
      }

      v17 = 0;
      while (1)
      {
        v18 = v13;
        v13 = [v8 positionFromPosition:v13 offset:1];

        if (!v13)
        {
          break;
        }

        if ([v8 comparePosition:v13 toPosition:v7] != -1)
        {

          break;
        }

        v12 = [v8 textRangeFromPosition:v13 toPosition:v7];

        if (!v12)
        {
          goto LABEL_24;
        }

        v10 = [v8 textInRange:v12];

        v19 = [v10 length];
        if (v19 > [v6 length])
        {
          v14 = v12;
          v15 = v10;
          if (v17++ < 9)
          {
            continue;
          }
        }

        goto LABEL_25;
      }

      v13 = 0;
    }

    else
    {
      v15 = v10;
    }

LABEL_24:

    v12 = 0;
    v10 = 0;
    goto LABEL_25;
  }

  v12 = v9;
  v11 = v12;
LABEL_29:

LABEL_30:

  return v11;
}

- (id)_rangeOfTextUnit:(int64_t)a3 enclosingPosition:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(UITextInputController *)self _selectableText];
    v8 = [v7 tokenizer];
    v9 = [v8 rangeEnclosingPosition:v6 withGranularity:a3 inDirection:0];

    if (!v9)
    {
      v10 = [v7 tokenizer];
      v9 = [v10 rangeEnclosingPosition:v6 withGranularity:a3 inDirection:1];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_fullRange
{
  v2 = [(UITextInputController *)self _selectableText];
  v3 = [v2 beginningOfDocument];
  v4 = [v2 endOfDocument];
  v5 = [v2 textRangeFromPosition:v3 toPosition:v4];

  return v5;
}

- (id)_rangeSpanningTextUnit:(int64_t)a3 andPosition:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v7 = [(UITextInputController *)self _selectableText];
  v8 = [(UITextInputController *)self _rangeOfTextUnit:a3 enclosingPosition:v6];
  if (!v8)
  {
    v9 = [v7 tokenizer];
    v10 = 1;
    v11 = [v9 positionFromPosition:v6 toBoundary:a3 inDirection:1];

    v12 = v11;
    if (!v11)
    {
      v13 = [v7 tokenizer];
      v12 = [v13 positionFromPosition:v6 toBoundary:a3 inDirection:0];

      if (!v12)
      {
        v15 = 0;
        goto LABEL_11;
      }

      v10 = 0;
    }

    v14 = [v7 tokenizer];
    v15 = [v14 rangeEnclosingPosition:v12 withGranularity:a3 inDirection:v10];

    if (v11)
    {
      v16 = [v15 start];
      if (v16)
      {
        v17 = v7;
        v18 = v16;
        v19 = v6;
LABEL_13:
        v8 = [v17 textRangeFromPosition:v18 toPosition:v19];
LABEL_15:

        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_11:
    v16 = [v15 end];
    if (v16)
    {
      v17 = v7;
      v18 = v6;
      v19 = v16;
      goto LABEL_13;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

LABEL_16:

LABEL_17:

  return v8;
}

- (BOOL)_range:(id)a3 containsRange:(id)a4
{
  v6 = a4;
  v7 = [(UITextInputController *)self _nsrangeForTextRange:a3];
  v9 = v8;
  v10 = [(UITextInputController *)self _nsrangeForTextRange:v6];
  v12 = v11;

  if (!v12)
  {
    return v10 >= v7 && v10 - v7 < v9;
  }

  v17.location = v7;
  v17.length = v9;
  v18.location = v10;
  v18.length = v12;
  v13 = NSIntersectionRange(v17, v18);
  return v10 == v13.location && v12 == v13.length;
}

- (BOOL)_range:(id)a3 intersectsRange:(id)a4
{
  v6 = a4;
  v7 = [(UITextInputController *)self _nsrangeForTextRange:a3];
  v9 = v8;
  v10 = [(UITextInputController *)self _nsrangeForTextRange:v6];
  v12 = v11;

  v14.location = v7;
  v14.length = v9;
  v15.location = v10;
  v15.length = v12;
  return NSIntersectionRange(v14, v15).length != 0;
}

- (id)_intersectionOfRange:(id)a3 andRange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [v6 start];
  v10 = [v7 start];
  if ([(UITextInputController *)v8 comparePosition:v9 toPosition:v10]== 1)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  v12 = [v11 start];

  v13 = [v6 end];
  v14 = [v7 end];
  if ([(UITextInputController *)v8 comparePosition:v13 toPosition:v14]== -1)
  {
    v15 = v6;
  }

  else
  {
    v15 = v7;
  }

  v16 = [v15 end];

  v17 = [(UITextInputController *)v8 textRangeFromPosition:v12 toPosition:v16];

  return v17;
}

- (BOOL)_range:(id)a3 isEqualToRange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v10 = self;
      v11 = [v6 start];
      v12 = [v8 start];
      v13 = [(UITextInputController *)v10 comparePosition:v11 toPosition:v12];

      v14 = [v6 end];
      v15 = [v8 end];
      v16 = v13 | [(UITextInputController *)v10 comparePosition:v14 toPosition:v15];

      v9 = v16 == 0;
    }
  }

  return v9;
}

- (id)_findBoundaryPositionClosestToPosition:(id)a3 withGranularity:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 5)
  {
    v8 = [(UITextInputController *)self _findDocumentBoundaryFromPosition:v6];
  }

  else if (a4 == 1)
  {
    v8 = [(UITextInputController *)self _findPleasingWordBoundaryFromPosition:v6];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

- (id)_findPleasingWordBoundaryFromPosition:(id)a3
{
  v4 = a3;
  v5 = [(UITextInputController *)self _selectableText];
  v6 = [v5 tokenizer];
  if ([v6 isPosition:v4 atBoundary:4 inDirection:0])
  {
    goto LABEL_2;
  }

  v9 = [v6 isPosition:v4 withinTextUnit:1 inDirection:0];
  v10 = [v5 tokenizer];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 rangeEnclosingPosition:v4 withGranularity:1 inDirection:0];

    v13 = [v12 start];
    v14 = [v5 offsetFromPosition:v13 toPosition:v4];

    if (v14 > 1)
    {
      [v12 end];
    }

    else
    {
      [v12 start];
    }
    v8 = ;

    goto LABEL_12;
  }

  v15 = [v10 isPosition:v4 atBoundary:1 inDirection:1];

  if (v15)
  {
LABEL_2:
    v7 = v4;
LABEL_3:
    v8 = v7;
    goto LABEL_12;
  }

  v16 = [v5 tokenizer];
  v8 = [v16 positionFromPosition:v4 toBoundary:1 inDirection:0];

  if (!v8)
  {
    v7 = [v5 endOfDocument];
    goto LABEL_3;
  }

LABEL_12:

  return v8;
}

- (id)_findDocumentBoundaryFromPosition:(id)a3
{
  v4 = a3;
  v5 = [(UITextInputController *)self _selectableText];
  v6 = [v5 beginningOfDocument];
  v7 = [v5 endOfDocument];
  v8 = [v5 offsetFromPosition:v6 toPosition:v4];
  v9 = [v5 offsetFromPosition:v4 toPosition:v7];

  if (v8 <= v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  v12 = v11;

  return v11;
}

- (id)_underlineRectsByDocumentLineForSelectionRange:(id)a3
{
  v4 = a3;
  v5 = [(UITextInputController *)self _selectableText];
  v6 = [v5 tokenizer];
  v7 = [v4 start];
  v8 = [v6 rangeEnclosingPosition:v7 withGranularity:4 inDirection:0];

  v9 = [v4 end];
  v10 = [v6 rangeEnclosingPosition:v9 withGranularity:4 inDirection:0];

  if (!v8 || !v10 || ([v8 isEmpty] & 1) != 0 || (objc_msgSend(v10, "isEmpty") & 1) != 0 || (objc_msgSend(v8, "isEqual:", v10) & 1) != 0)
  {
    goto LABEL_9;
  }

  v11 = [v8 start];
  v12 = [v10 start];
  if ([v11 isEqual:v12])
  {

LABEL_9:
    v15 = [v5 selectionRectsForRange:v4];
    goto LABEL_10;
  }

  v13 = [v8 end];
  v14 = [v10 end];
  v28 = [v13 isEqual:v14];

  if (v28)
  {
    goto LABEL_9;
  }

  v15 = objc_opt_new();
  v17 = [v4 start];
  v18 = [v8 end];
  v19 = [v5 textRangeFromPosition:v17 toPosition:v18];

  v29 = v19;
  [(UITextInputController *)self _updateSelectedRects:v15 byTrimmingWhitespaceInRange:v19 inDocument:v5];
  v20 = [v8 end];
  v21 = [v6 rangeEnclosingPosition:v20 withGranularity:4 inDirection:0];

  if (v21)
  {
    while (([v21 isEqual:v10] & 1) == 0)
    {
      v22 = [v21 end];
      v23 = [v6 rangeEnclosingPosition:v22 withGranularity:4 inDirection:0];

      if ([v23 isEqual:v21])
      {

        break;
      }

      v24 = [v5 selectionRectsForRange:v21];
      [v15 addObjectsFromArray:v24];

      v21 = v23;
      if (!v23)
      {
        break;
      }
    }
  }

  v25 = [v10 start];
  v26 = [v4 end];
  v27 = [v5 textRangeFromPosition:v25 toPosition:v26];

  if (v27)
  {
    [(UITextInputController *)self _updateSelectedRects:v15 byTrimmingWhitespaceInRange:v27 inDocument:v5];
  }

LABEL_10:

  return v15;
}

- (void)_updateSelectedRects:(id)a3 byTrimmingWhitespaceInRange:(id)a4 inDocument:(id)a5
{
  v18 = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    v10 = [v8 textInRange:v7];
    v11 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v12 = [v10 stringByTrimmingCharactersInSet:v11];

    if ([v12 length])
    {
      v13 = [v7 start];
      v14 = [v9 positionFromPosition:v13 offset:{objc_msgSend(v12, "length")}];

      v15 = [v7 start];
      v16 = [v9 textRangeFromPosition:v15 toPosition:v14];

      if (v16)
      {
        v17 = [v9 selectionRectsForRange:v16];
        [v18 addObjectsFromArray:v17];
      }
    }
  }
}

- (id)_rangeOfSmartSelectionIncludingRange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UITextInputController *)self _selectableText];
    v58 = v4;
    v6 = v4;
    v7 = [v5 tokenizer];
    v8 = [v6 start];
    v9 = [v7 positionFromPosition:v8 toBoundary:2 inDirection:1];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v5 beginningOfDocument];
    }

    v12 = v11;

    v13 = [v6 start];
    v14 = [v5 offsetFromPosition:v12 toPosition:v13];

    if (v14 >= 65)
    {
      v15 = [v6 start];
      v16 = [v5 positionFromPosition:v15 offset:-64];

      v12 = [v7 positionFromPosition:v16 toBoundary:1 inDirection:0];

      if (!v12)
      {
        v17 = [v6 start];
        v18 = [v5 positionFromPosition:v17 offset:-64];

        v12 = [v7 positionFromPosition:v18 toBoundary:0 inDirection:0];
      }

      v19 = [v6 start];
      v20 = [v5 comparePosition:v12 toPosition:v19];

      if (v20 == 1)
      {
        v21 = [v6 start];
        v22 = [v7 positionFromPosition:v21 toBoundary:0 inDirection:1];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = [v6 start];
        }

        v25 = v24;

        v12 = v25;
      }
    }

    v26 = [v6 end];
    v27 = [v7 positionFromPosition:v26 toBoundary:2 inDirection:0];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = [v5 endOfDocument];
    }

    v30 = v29;

    v31 = [v6 end];
    v32 = [v5 offsetFromPosition:v31 toPosition:v30];

    if (v32 >= 65)
    {
      v33 = [v6 end];
      v34 = [v5 positionFromPosition:v33 offset:64];

      v30 = [v7 positionFromPosition:v34 toBoundary:1 inDirection:1];

      if (!v30)
      {
        v35 = [v6 end];
        v36 = [v5 positionFromPosition:v35 offset:64];

        v30 = [v7 positionFromPosition:v36 toBoundary:0 inDirection:1];
      }

      v37 = [v6 end];
      v38 = [v5 comparePosition:v37 toPosition:v30];

      if (v38 == 1)
      {
        v39 = [v6 end];
        v40 = [v7 positionFromPosition:v39 toBoundary:0 inDirection:0];
        v41 = v40;
        if (v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = [v6 end];
        }

        v43 = v42;

        v30 = v43;
      }
    }

    v57 = v7;
    v59 = [v5 textRangeFromPosition:v12 toPosition:v30];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v44 = [v5 keyboardType], v45 = 420, v44 != 3) && v44 != 10 && v44 != 120)
    {
      v45 = 428;
    }

    v46 = [v5 beginningOfDocument];
    v56 = v12;
    v47 = [v5 offsetFromPosition:v46 toPosition:v12];

    v48 = [(UITextInputController *)self _nsrangeForTextRange:v6];
    v50 = v49;
    v51 = [v5 textInRange:v59];
    v61 = 0;
    v62 = &v61;
    v63 = 0x3010000000;
    v64 = "";
    v65 = xmmword_18A678470;
    v52 = +[UIKeyboardImpl activeInstance];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __84__UITextInputController_UITextInput_Internal___rangeOfSmartSelectionIncludingRange___block_invoke;
    v60[3] = &unk_1E71191D8;
    v60[4] = &v61;
    [v52 smartSelectionForTextInDocument:v51 inRange:v48 - v47 options:v50 completion:{v45, v60}];

    v53 = v62[4];
    if (v53 != 0x7FFFFFFFFFFFFFFFLL && v62[5])
    {
      v62[4] = v53 + v47;
      v54 = [(UITextInputController *)self _textRangeFromNSRange:?];

      v6 = v54;
    }

    _Block_object_dispose(&v61, 8);

    v4 = v58;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __84__UITextInputController_UITextInput_Internal___rangeOfSmartSelectionIncludingRange___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return result;
}

- (id)_clampedpositionFromPosition:(id)a3 offset:(int)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = [(UITextInputController *)self _selectableText];
    v9 = v8;
    if (a4 < 1)
    {
      v10 = [v8 positionFromPosition:v7 offset:a4];
      if (!v10)
      {
        v10 = [v9 beginningOfDocument];
      }
    }

    else
    {
      v10 = [v8 positionFromPosition:v7 offset:a4];
      if (!v10)
      {
        v10 = [v9 endOfDocument];
      }
    }

    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  return v11;
}

- (id)_rangeFromCurrentRangeWithDelta:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(UITextInputController *)self _selectableText];
  v6 = [v5 selectedTextRange];
  v7 = v6;
  if (location | length)
  {
    v9 = length + location;
    v10 = [v6 start];
    v11 = [v7 end];
    if (location)
    {
      v12 = [v5 positionFromPosition:v10 offset:location];

      v10 = v12;
      if (!v12)
      {
        if ((location & 0x8000000000000000) != 0)
        {
          [v5 beginningOfDocument];
        }

        else
        {
          [v5 endOfDocument];
        }
        v10 = ;
      }
    }

    if (v9)
    {
      v13 = [v5 positionFromPosition:v11 offset:v9];

      v11 = v13;
      if (!v13)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          v14 = v10;
        }

        else
        {
          v14 = [v5 endOfDocument];
        }

        v11 = v14;
      }
    }

    v15 = [v5 textRangeFromPosition:v10 toPosition:v11];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v7;
    }

    v8 = v17;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (id)_textColorForCaretSelection
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UITextInputController *)self textColorForCaretSelection];
  }

  else
  {
    v4 = [(UITextInputController *)self _selectableText];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 selectedTextRange];
      v6 = [v5 end];

      if (v6)
      {
        v7 = [v4 endOfDocument];
        if (v7 && [v4 comparePosition:v7 toPosition:v6] == -1)
        {
          v8 = v7;

          v6 = v8;
        }

        v9 = [v4 textStylingAtPosition:v6 inDirection:0];
      }

      else
      {
        v9 = 0;
      }

      if (dyld_program_sdk_at_least())
      {
        v10 = *off_1E70EC920;
      }

      else
      {
        v10 = @"UITextInputTextColorKey";
      }

      v3 = [v9 objectForKey:v10];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)_fontForCaretSelection
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UITextInputController *)self fontForCaretSelection];
  }

  else
  {
    v4 = [(UITextInputController *)self _selectableText];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 selectedTextRange];
      v6 = [v5 end];

      if (v6)
      {
        v7 = [v4 endOfDocument];
        if (v7 && [v4 comparePosition:v7 toPosition:v6] == -1)
        {
          v8 = v7;

          v6 = v8;
        }

        v9 = [v4 textStylingAtPosition:v6 inDirection:0];
      }

      else
      {
        v9 = 0;
      }

      if (dyld_program_sdk_at_least())
      {
        v10 = *off_1E70EC918;
      }

      else
      {
        v10 = @"UITextInputTextFontKey";
      }

      v3 = [v9 objectForKey:v10];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_updateSelectionWithTextRange:(id)a3 withAffinityDownstream:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UITextInputController *)self _selectableText];
  [v7 _setSelectedTextRange:v6 withAffinityDownstream:v4];
}

- (id)_setSelectionRangeWithHistory:(id)a3
{
  v4 = a3;
  v5 = [(UITextInputController *)self _selectableText];
  v6 = [v4 cursor];

  if (!v6)
  {
    goto LABEL_19;
  }

  if ([v4 anchor] == 1)
  {
    v7 = [v4 cursor];
LABEL_5:
    [v4 setEnd:v7];
    goto LABEL_6;
  }

  v8 = [v4 anchor];
  v7 = [v4 cursor];
  [v4 setStart:v7];
  if (v8 != 2)
  {
    goto LABEL_5;
  }

LABEL_6:

  v9 = [v4 start];
  v10 = [v4 end];
  v11 = [v5 comparePosition:v9 toPosition:v10];

  if (v11 >= 1)
  {
    if ([v4 anchor] == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [v4 setAnchor:v12];
  }

  v13 = [v4 start];
  v14 = [v4 end];
  v15 = [v5 textRangeFromPosition:v13 toPosition:v14];

  -[UITextInputController _updateSelectionWithTextRange:withAffinityDownstream:](self, "_updateSelectionWithTextRange:withAffinityDownstream:", v15, [v4 affinityDownstream]);
  if ([v4 anchor])
  {
    if ([v4 anchor] == 1)
    {
      [v5 _lastRectForRange:v15];
    }

    else
    {
      [v5 firstRectForRange:v15];
    }

    [v5 _scrollRectToVisible:0 animated:?];
  }

  else if (objc_opt_respondsToSelector())
  {
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = *MEMORY[0x1E69E3030];
    v18 = [(UITextInputController *)self webView];
    [v16 postNotificationName:v17 object:v18];
  }

LABEL_19:

  return v4;
}

- (id)_setHistory:(id)a3 withExtending:(BOOL)a4 withAnchor:(int)a5 withAffinityDownstream:(BOOL)a6
{
  v6 = a6;
  v7 = *&a5;
  v8 = a4;
  v10 = a3;
  if (v10)
  {
    v11 = v10;
    if (!v8)
    {
      [(UITextInputArrowKeyHistory *)v10 setAnchor:0];
    }
  }

  else
  {
    v11 = objc_alloc_init(UITextInputArrowKeyHistory);
  }

  v12 = [(UITextInputController *)self _selectableText];
  v13 = [v12 selectedTextRange];
  v14 = [v13 start];
  [(UITextInputArrowKeyHistory *)v11 setStart:v14];

  v15 = [v12 selectedTextRange];
  v16 = [v15 end];
  [(UITextInputArrowKeyHistory *)v11 setEnd:v16];

  v17 = [(UITextInputArrowKeyHistory *)v11 anchor];
  v18 = [v12 selectedTextRange];
  v19 = v18;
  if (v7 == 2)
  {
    if (v17 == 1)
    {
LABEL_7:
      v20 = [v18 end];
      goto LABEL_10;
    }
  }

  else if (v17 != 2)
  {
    goto LABEL_7;
  }

  v20 = [v18 start];
LABEL_10:
  v21 = v20;
  [(UITextInputArrowKeyHistory *)v11 setCursor:v20];

  v22 = [(UITextInputArrowKeyHistory *)v11 startPosition];

  if (!v22)
  {
    v23 = [(UITextInputArrowKeyHistory *)v11 cursor];
    [(UITextInputArrowKeyHistory *)v11 setStartPosition:v23];

    if (v8)
    {
      goto LABEL_12;
    }

LABEL_16:
    v7 = 0;
LABEL_17:
    [(UITextInputArrowKeyHistory *)v11 setAnchor:v7];
    goto LABEL_18;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (![(UITextInputArrowKeyHistory *)v11 anchor]|| [(UITextInputController *)self _isEmptySelection])
  {
    goto LABEL_17;
  }

LABEL_18:
  [(UITextInputArrowKeyHistory *)v11 setAffinityDownstream:v6];

  return v11;
}

- (id)_moveToStartOfWord:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UITextInputController *)self _setHistory:v6 withExtending:v4 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 tokenizer];
    v11 = [v9 cursor];
    v12 = [v10 isPosition:v11 withinTextUnit:1 inDirection:1];

    if (v12)
    {
LABEL_7:
      v22 = [v7 tokenizer];
      v23 = [v9 cursor];
      v24 = [v22 positionFromPosition:v23 toBoundary:1 inDirection:1];
      [v9 setCursor:v24];

      v25 = [v9 cursor];
      [v9 setStartPosition:v25];

      v26 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
      goto LABEL_9;
    }

    v13 = [v7 tokenizer];
    v14 = [v9 cursor];
    v15 = [v13 positionFromPosition:v14 toBoundary:1 inDirection:1];

    if (v15)
    {
LABEL_4:
      v16 = [v7 tokenizer];
      v17 = [v9 cursor];
      v18 = [v16 isPosition:v17 withinTextUnit:1 inDirection:1];

      if ((v18 & 1) == 0)
      {
        v19 = [v7 tokenizer];
        v20 = [v9 cursor];
        v21 = [v19 positionFromPosition:v20 toBoundary:1 inDirection:1];
        [v9 setCursor:v21];
      }

      goto LABEL_7;
    }

    v15 = [v9 cursor];
    v28 = 0;
    while (1)
    {
      v29 = [v7 beginningOfDocument];
      v30 = [v7 comparePosition:v29 toPosition:v15];

      if (!v30)
      {
        break;
      }

      if (v28 && ![v7 comparePosition:v28 toPosition:v15])
      {
        v35 = [v7 beginningOfDocument];
        [v9 setCursor:v35];

        v36 = [v9 cursor];
        [v9 setStartPosition:v36];

        break;
      }

      v31 = v15;

      v32 = [v7 tokenizer];
      v15 = [v32 positionFromPosition:v31 toBoundary:3 inDirection:1];

      v33 = [v7 tokenizer];
      v34 = [v33 isPosition:v15 atBoundary:3 inDirection:1];

      v28 = v31;
      if ((v34 & 1) == 0)
      {
        [v9 setCursor:v15];

        goto LABEL_4;
      }
    }

    v26 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v26 = 0;
    v9 = v6;
  }

LABEL_9:

  return v26;
}

- (id)_moveToEndOfWord:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UITextInputController *)self _setHistory:v6 withExtending:v4 withAnchor:1 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 tokenizer];
    v11 = [v9 cursor];
    v12 = [v10 isPosition:v11 withinTextUnit:1 inDirection:0];

    if ((v12 & 1) == 0)
    {
      v13 = [v7 tokenizer];
      v14 = [v9 cursor];
      v15 = [v13 positionFromPosition:v14 toBoundary:1 inDirection:0];

      if (v15)
      {
        [v9 setCursor:v15];
      }
    }

    v16 = [v7 tokenizer];
    v17 = [v9 cursor];
    v18 = [v16 positionFromPosition:v17 toBoundary:1 inDirection:0];
    [v9 setCursor:v18];

    v19 = [v9 cursor];

    if (!v19)
    {
      v20 = [v7 endOfDocument];
      [v9 setCursor:v20];
    }

    v21 = [v9 cursor];
    [v9 setStartPosition:v21];

    v22 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v22 = 0;
    v9 = v6;
  }

  return v22;
}

- (id)_moveToStartOfLine:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (!v8)
  {
    v17 = 0;
    v10 = v6;
    goto LABEL_11;
  }

  v9 = [v6 affinityDownstream];
  v10 = [(UITextInputController *)self _setHistory:v6 withExtending:v4 withAnchor:2 withAffinityDownstream:1];

  [v10 setAmount:0];
  v11 = [v7 tokenizer];
  v12 = [v7 selectedTextRange];
  v13 = [v12 end];
  if (([v11 isPosition:v13 atBoundary:3 inDirection:1] & 1) == 0)
  {
    if (v9)
    {
      v14 = [v7 tokenizer];
      v15 = [v10 cursor];
      v16 = [v14 isPosition:v15 atBoundary:4 inDirection:1];

      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v11 = [v7 tokenizer];
    v12 = [v10 cursor];
    v13 = [v11 positionFromPosition:v12 toBoundary:4 inDirection:1];
    [v10 setCursor:v13];
  }

LABEL_10:
  v18 = [v10 cursor];
  [v10 setStartPosition:v18];

  v17 = [(UITextInputController *)self _setSelectionRangeWithHistory:v10];
LABEL_11:

  return v17;
}

- (id)_moveToEndOfLine:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (!v8)
  {
    v14 = 0;
    v10 = v6;
    goto LABEL_10;
  }

  v9 = [v6 affinityDownstream];
  v10 = [(UITextInputController *)self _setHistory:v6 withExtending:v4 withAnchor:1 withAffinityDownstream:0];

  [v10 setAmount:0];
  v11 = [v7 tokenizer];
  v12 = [v7 selectedTextRange];
  v13 = [v12 end];
  if ([v11 isPosition:v13 atBoundary:3 inDirection:0])
  {
    goto LABEL_8;
  }

  if (v9)
  {

LABEL_7:
    v11 = [v7 tokenizer];
    v12 = [v10 cursor];
    v13 = [v11 positionFromPosition:v12 toBoundary:4 inDirection:0];
    [v10 setCursor:v13];
LABEL_8:

    goto LABEL_9;
  }

  v15 = [v7 tokenizer];
  v16 = [v10 cursor];
  v17 = [v15 isPosition:v16 atBoundary:4 inDirection:0];

  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v18 = [v10 cursor];
  [v10 setStartPosition:v18];

  v14 = [(UITextInputController *)self _setSelectionRangeWithHistory:v10];
LABEL_10:

  return v14;
}

- (id)_moveToStartOfParagraph:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UITextInputController *)self _setHistory:v6 withExtending:v4 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 tokenizer];
    v11 = [v9 cursor];
    v12 = [v10 isPosition:v11 atBoundary:3 inDirection:1];

    if (v12)
    {
      v13 = [v9 cursor];
      v14 = [v10 positionFromPosition:v13 toBoundary:0 inDirection:1];

      if (v14)
      {
        [v9 setCursor:v14];
      }
    }

    v15 = [v9 cursor];
    v16 = [v10 positionFromPosition:v15 toBoundary:3 inDirection:1];
    [v9 setCursor:v16];

    v17 = [v9 cursor];
    [v9 setStartPosition:v17];

    v18 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v18 = 0;
    v9 = v6;
  }

  return v18;
}

- (id)_moveToEndOfParagraph:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UITextInputController *)self _setHistory:v6 withExtending:v4 withAnchor:1 withAffinityDownstream:0];

    [v9 setAmount:0];
    v10 = [v7 tokenizer];
    v11 = [v9 cursor];
    v12 = [v10 isPosition:v11 atBoundary:3 inDirection:0];

    if (v12)
    {
      v13 = [v9 cursor];
      v14 = [v10 positionFromPosition:v13 toBoundary:0 inDirection:0];

      if (v14)
      {
        [v9 setCursor:v14];
      }
    }

    v15 = [v9 cursor];
    v16 = [v10 positionFromPosition:v15 toBoundary:3 inDirection:0];
    [v9 setCursor:v16];

    v17 = [v9 cursor];
    [v9 setStartPosition:v17];

    v18 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v18 = 0;
    v9 = v6;
  }

  return v18;
}

- (id)_moveToStartOfDocument:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UITextInputController *)self _setHistory:v6 withExtending:v4 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 beginningOfDocument];
    [v9 setCursor:v10];

    v11 = [v9 cursor];
    [v9 setStartPosition:v11];

    v12 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
    v6 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_moveToEndOfDocument:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UITextInputController *)self _setHistory:v6 withExtending:v4 withAnchor:1 withAffinityDownstream:0];

    [v9 setAmount:0];
    v10 = [v7 endOfDocument];
    [v9 setCursor:v10];

    v11 = [v9 cursor];
    [v9 setStartPosition:v11];

    v12 = [v7 tokenizer];
    v13 = [v9 cursor];
    v14 = [v12 isPosition:v13 atBoundary:4 inDirection:3];

    if (v14)
    {
      [v9 setAffinityDownstream:1];
    }

    v15 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = v6;
  }

  return v15;
}

- (id)_moveUp:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    if (v6)
    {
      v9 = [v6 affinityDownstream];
    }

    else
    {
      v9 = [(UITextInputController *)self _selectionAffinity]== 0;
    }

    v11 = [(UITextInputController *)self _setHistory:v6 withExtending:v4 withAnchor:2 withAffinityDownstream:v9];

    [v11 setAmount:{objc_msgSend(v11, "amount") + 1}];
    v12 = [v11 cursor];
    v13 = [v7 beginningOfDocument];
    v14 = [v7 comparePosition:v12 toPosition:v13];

    if (v14)
    {
      v15 = [v11 startPosition];
      if ([v11 amount] > 0)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }

      v17 = [v11 amount];
      if (v17 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = -v17;
      }

      v19 = [v7 _positionFromPosition:v15 inDirection:v16 offset:v18 withAffinityDownstream:{objc_msgSend(v11, "affinityDownstream")}];

      v20 = [v11 cursor];
      v21 = [v7 comparePosition:v20 toPosition:v19];

      if (v21)
      {
        [v11 setCursor:v19];
      }

      else
      {
        v22 = [v7 beginningOfDocument];
        [v11 setCursor:v22];

        [v11 setAmount:{objc_msgSend(v11, "amount") - 1}];
      }
    }

    else
    {
      [v11 setAmount:{objc_msgSend(v11, "amount") - 1}];
    }

    v10 = [(UITextInputController *)self _setSelectionRangeWithHistory:v11];
  }

  else
  {
    v10 = 0;
    v11 = v6;
  }

  return v10;
}

- (id)_moveDown:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    if (v6)
    {
      v9 = [v6 affinityDownstream];
    }

    else
    {
      v9 = [(UITextInputController *)self _selectionAffinity]== 0;
    }

    v11 = [(UITextInputController *)self _setHistory:v6 withExtending:v4 withAnchor:1 withAffinityDownstream:v9];

    [v11 setAmount:{objc_msgSend(v11, "amount") - 1}];
    v12 = [v11 cursor];
    v13 = [v7 endOfDocument];
    v14 = [v7 comparePosition:v12 toPosition:v13];

    if (v14)
    {
      v15 = [v11 startPosition];
      if ([v11 amount] > 0)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }

      v17 = [v11 amount];
      if (v17 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = -v17;
      }

      v19 = [v7 _positionFromPosition:v15 inDirection:v16 offset:v18 withAffinityDownstream:{objc_msgSend(v11, "affinityDownstream")}];

      v20 = [v11 cursor];
      v21 = [v7 comparePosition:v20 toPosition:v19];

      if (v21)
      {
        [v11 setCursor:v19];
      }

      else
      {
        v22 = [v7 endOfDocument];
        [v11 setCursor:v22];

        [v11 setAmount:{objc_msgSend(v11, "amount") + 1}];
      }
    }

    else
    {
      [v11 setAmount:{objc_msgSend(v11, "amount") + 1}];
    }

    v10 = [(UITextInputController *)self _setSelectionRangeWithHistory:v11];
  }

  else
  {
    v10 = 0;
    v11 = v6;
  }

  return v10;
}

- (id)_moveLeft:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UITextInputController *)self _setHistory:v6 withExtending:v4 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 selectedTextRange];
    v11 = [v10 isEmpty];

    if ((v11 & 1) != 0 || v4)
    {
      v12 = [v9 cursor];
      v13 = [v7 positionFromPosition:v12 inDirection:3 offset:1];
      [v9 setCursor:v13];
    }

    v14 = [v9 cursor];
    [v9 setStartPosition:v14];

    v15 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = v6;
  }

  return v15;
}

- (id)_moveRight:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UITextInputController *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UITextInputController *)self _setHistory:v6 withExtending:v4 withAnchor:1 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 selectedTextRange];
    v11 = [v10 isEmpty];

    if ((v11 & 1) != 0 || v4)
    {
      v12 = [v9 cursor];
      v13 = [v7 positionFromPosition:v12 inDirection:2 offset:1];
      [v9 setCursor:v13];
    }

    v14 = [v9 cursor];
    [v9 setStartPosition:v14];

    v15 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = v6;
  }

  return v15;
}

- (id)_positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5 withAffinityDownstream:(BOOL)a6
{
  v9 = a3;
  v10 = [(UITextInputController *)self _selectableText];
  v11 = [v10 positionFromPosition:v9 inDirection:a4 offset:a5];

  return v11;
}

- (void)_setSelectedTextRange:(id)a3 withAffinityDownstream:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(UITextInputController *)self setSelectedTextRange:v7 withAffinityDownstream:v4];
  }

  else
  {
    v6 = [(UITextInputController *)self _selectableText];
    [v6 setSelectedTextRange:v7];
  }
}

- (int64_t)_selectionAffinity
{
  v2 = [(UITextInputController *)self _selectableText];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = [v2 tokenizer];
    v5 = [v2 selectedTextRange];
    v6 = [v5 start];
    if ([v4 isPosition:v6 atBoundary:3 inDirection:1])
    {
    }

    else
    {
      v7 = [v2 tokenizer];
      v8 = [v2 selectedTextRange];
      v9 = [v8 end];
      v10 = [v7 isPosition:v9 atBoundary:4 inDirection:2];

      if (v10)
      {
        v3 = 1;
        goto LABEL_8;
      }
    }

    v3 = 0;
    goto LABEL_8;
  }

  v3 = [v2 selectionAffinity];
LABEL_8:

  return v3;
}

- (void)_setGestureRecognizers
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {

    [(UITextInputController *)self _setInternalGestureRecognizers];
  }

  else
  {
    v3 = +[UIKeyboardImpl activeInstance];
    v4 = [v3 markedTextOverlay];
    [v4 removeFromSuperview];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v4 interactions];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 removeInteraction:*(*(&v16 + 1) + 8 * i)];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v10 = [(UITextInputController *)self _selectableText];
    v11 = [v10 interactionAssistant];
    v12 = v11;
    if (v11)
    {
      [v11 setGestureRecognizers];
    }

    else if ([v10 _hasMarkedText] && objc_msgSend(v3, "hasEditableMarkedText"))
    {
      v13 = [v10 markedTextRange];
      [v10 firstRectForRange:v13];
      [v4 setFrame:?];

      v14 = [v10 textInputView];
      [v14 addSubview:v4];

      v15 = [[UITextPhraseBoundaryInteraction alloc] initWithTextInput:v10];
      [v4 addInteraction:v15];
    }
  }
}

- (BOOL)_usesAsynchronousProtocol
{
  v2 = [(UITextInputController *)self _selectableText];
  if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v2 conformsToProtocol:&unk_1F016CC30];
LABEL_9:
      v3 = v4;
      goto LABEL_11;
    }

LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v2 conformsToProtocolCached:&unk_1F016C7B0] & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v2 conformsToProtocolCached:&unk_1F016C810];
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v3 = 1;
LABEL_11:

  return v3;
}

- (BOOL)_hasMarkedText
{
  v2 = [(UITextInputController *)self _selectableText];
  if ([v2 _usesAsynchronousProtocol] && (!+[UIKBInputDelegateManager isAsyncTextInputEnabled](UIKBInputDelegateManager, "isAsyncTextInputEnabled") || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0))
  {
    v3 = [v2 hasMarkedText];
  }

  else
  {
    v4 = [v2 markedTextRange];
    v3 = v4 != 0;
  }

  return v3;
}

- (void)_setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = MEMORY[0x1E696AAB0];
  v8 = a3;
  v9 = [[v7 alloc] initWithString:v8];

  [(UITextInputController *)self _setAttributedMarkedText:v9 selectedRange:location, length];
}

- (void)_setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v26 = [(UITextInputController *)self _selectableText];
  v8 = [(UITextInputController *)self _hasMarkedText];
  if (objc_opt_respondsToSelector())
  {
    [v26 setAttributedMarkedText:v7 selectedRange:{location, length}];
  }

  else
  {
    v9 = [v7 string];

    [v26 setMarkedText:v9 selectedRange:{location, length}];
    v7 = v9;
  }

  v10 = [(UITextInputController *)self _hasMarkedText];
  if (v8 != v10)
  {
    if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      v11 = [v26 _selectionDisplayInteraction];
      v12 = v26;
      v13 = v11;
    }

    else
    {
      v13 = 0;
      v12 = v26;
    }

    [v12 _setGestureRecognizers];
    v18 = [(UITextInputController *)self _textSelectingContainer];
    v19 = [v18 interactionAssistant];
    if (v19)
    {
      v20 = v19;
      v21 = [(UITextInputController *)self _textSelectingContainer];
      v22 = [v21 interactionAssistant];
      v23 = [v22 externalInteractions];

      if (v23)
      {
        v24 = [(UITextInputController *)self _textSelectingContainer];
        v25 = [v24 interactionAssistant];
        [v25 deactivateSelection];

        [v26 _setSelectionDisplayInteraction:v13];
      }
    }

    else
    {
    }

    goto LABEL_15;
  }

  if (v10)
  {
    v14 = [(UITextInputController *)self _textSelectingContainer];
    v15 = [v14 interactionAssistant];

    if (!v15)
    {
      v16 = +[UIKeyboardImpl activeInstance];
      v13 = [v16 markedTextOverlay];

      v17 = [v26 markedTextRange];
      [v26 firstRectForRange:v17];
      [v13 setFrame:?];

LABEL_15:
    }
  }
}

- (void)_unmarkText
{
  v15 = [(UITextInputController *)self _selectableText];
  v3 = [(UITextInputController *)self _hasMarkedText];
  [v15 unmarkText];
  if (v3)
  {
    if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      v4 = [v15 _selectionDisplayInteraction];
      v5 = v15;
      v6 = v4;
    }

    else
    {
      v6 = 0;
      v5 = v15;
    }

    [v5 _setGestureRecognizers];
    v7 = [(UITextInputController *)self _textSelectingContainer];
    v8 = [v7 interactionAssistant];
    if (v8)
    {
      v9 = v8;
      v10 = [(UITextInputController *)self _textSelectingContainer];
      v11 = [v10 interactionAssistant];
      v12 = [v11 externalInteractions];

      if (v12)
      {
        v13 = [(UITextInputController *)self _textSelectingContainer];
        v14 = [v13 interactionAssistant];
        [v14 deactivateSelection];

        [v15 _setSelectionDisplayInteraction:v6];
      }
    }

    else
    {
    }
  }
}

- (BOOL)_shouldPerformUICalloutBarButtonReplaceAction:(SEL)a3 forText:(id)a4 checkAutocorrection:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = v7;
  if (sel_promptForReplace_ != a3 && sel__promptForReplace_ != a3)
  {
    if (sel__transliterateChinese_ == a3)
    {
      v14 = UIKeyboardEnabledInputModesAllowChineseTransliterationForText(v7);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v5 && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 autocorrectSpellingEnabled], v10, !v11) || (objc_msgSend(v8, "_containsCJScriptsOnly") & 1) != 0)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_13;
  }

  v12 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v13 = [v8 componentsSeparatedByCharactersInSet:v12];

  v14 = [v13 count] < 8;
LABEL_13:

  return v14;
}

- (UITextInputController)initWithTextLayoutController:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = UITextInputController;
  v6 = [(UITextInputController *)&v20 init];
  if (v6)
  {
    v7 = +[UITextInputTraits defaultTextInputTraits];
    textInputTraits = v6->_textInputTraits;
    v6->_textInputTraits = v7;

    if (!v5)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:v6 file:@"UITextInputController.m" lineNumber:351 description:@"UITextInputController requires a text layout controller!"];
    }

    [(UITextInputController *)v6 setTextLayoutController:v5];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = *off_1E70ECAC0;
    v11 = [v5 textStorage];
    [v9 addObserver:v6 selector:sel__textStorageDidProcessEditing_ name:v10 object:v11];

    v6->_markedTextRange = xmmword_18A678470;
    markedTextStyle = v6->_markedTextStyle;
    v6->_markedTextStyle = 0;

    v13 = [v5 beginningOfDocument];
    v14 = [v5 emptyTextRangeAtPosition:v13];
    selectedTextRange = v6->_selectedTextRange;
    v6->_selectedTextRange = v14;

    [(UITextInputController *)v6 _updateFirstTextView];
    [(UITextInputController *)v6 _updateEmptyStringAttributes];
    v6->_currentUndoGroupType = 0;
    v16 = [[UITextCheckingController alloc] initWithClient:v6];
    textCheckingController = v6->_textCheckingController;
    v6->_textCheckingController = v16;

    *&v6->_tiFlags |= 0x10000000u;
  }

  return v6;
}

- (void)setTextLayoutController:(id)a3
{
  obj = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_textLayoutController);
    if (([v7 canAccessLayoutManager] & 1) != 0 || (objc_msgSend(obj, "canAccessLayoutManager") & 1) == 0)
    {
      v8 = objc_loadWeakRetained(&self->_textLayoutController);
      v9 = [v8 textStorage];
      v10 = [obj textStorage];

      if (v9 == v10)
      {
LABEL_7:
        [v5 removeObserver:self name:*off_1E70ECD50 object:0];
        objc_storeWeak(&self->_layoutManager, 0);
        goto LABEL_8;
      }

      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"UITextInputController.m" lineNumber:382 description:@"Cannot change the text storage after view is created"];
    }

    goto LABEL_7;
  }

LABEL_8:
  v11 = self;
  v12 = objc_loadWeakRetained(&self->_textLayoutController);
  [v12 detachFromTextInputController];

  v13 = objc_storeWeak(&self->_textLayoutController, obj);
  [obj adoptTextInputController:v11];

  if ([obj canAccessLayoutManager])
  {
    v14 = [obj layoutManager];
    objc_storeWeak(&v11->_layoutManager, v14);

    v15 = *off_1E70ECD50;
    v16 = objc_loadWeakRetained(&v11->_layoutManager);
    [v5 addObserver:v11 selector:sel__textContainerDidChangeView_ name:v15 object:v16];
  }

  [(UITextInputController *)v11 _updateFirstTextView];
  [(UITextInputController *)v11 _updateEmptyStringAttributes];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  self->_tiFlags = (*&self->_tiFlags & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1);
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFFFFFD | v5);
  if (objc_opt_respondsToSelector())
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFFFFFB | v6);
  if (objc_opt_respondsToSelector())
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFFFEFF | v7);
  if (objc_opt_respondsToSelector())
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFFFFF7 | v8);
  if (objc_opt_respondsToSelector())
  {
    v9 = 16;
  }

  else
  {
    v9 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFFFFEF | v9);
  if (objc_opt_respondsToSelector())
  {
    v10 = 32;
  }

  else
  {
    v10 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFFFFDF | v10);
  if (objc_opt_respondsToSelector())
  {
    v11 = 64;
  }

  else
  {
    v11 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFFFFBF | v11);
  if (objc_opt_respondsToSelector())
  {
    v12 = 512;
  }

  else
  {
    v12 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFFFDFF | v12);
  if (objc_opt_respondsToSelector())
  {
    v13 = 4096;
  }

  else
  {
    v13 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFFEFFF | v13);
  if (objc_opt_respondsToSelector())
  {
    v14 = 2048;
  }

  else
  {
    v14 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFFF7FF | v14);
  if (objc_opt_respondsToSelector())
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFFDFFF | v15);
  if (objc_opt_respondsToSelector())
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFEFFFF | v16);
  if (objc_opt_respondsToSelector())
  {
    v17 = 0x20000;
  }

  else
  {
    v17 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFDFFFF | v17);
  if (objc_opt_respondsToSelector())
  {
    v18 = 0x4000;
  }

  else
  {
    v18 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFFBFFF | v18);
  if (objc_opt_respondsToSelector())
  {
    v19 = 0x8000;
  }

  else
  {
    v19 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFF7FFF | v19);
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = 1024;
  }

  else
  {
    v21 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFFFFBFF | v21);
}

- (_NSRange)_rangeAfterCancelDictationIfNecessaryForChangeInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  textPlaceholder = self->_textPlaceholder;
  if (textPlaceholder)
  {
    v7 = [(UITextPlaceholder *)textPlaceholder attachment];
    v8 = [v7 attachmentRange];
    v10 = v9;

    if (location <= v8 && location + length <= v8 + v10)
    {
      if (!+[UIKeyboard isModelessActive])
      {
        v14 = +[UIDictationController sharedInstance];
        [v14 cancelDictation];
      }

      if (!self->_textPlaceholder)
      {
        v15.location = location;
        v15.length = length;
        v17.location = v8;
        v17.length = v10;
        length -= NSIntersectionRange(v15, v17).length;
      }
    }
  }

  v12 = location;
  v13 = length;
  result.length = v13;
  result.location = v12;
  return result;
}

- (void)_sendDelegateWillChangeNotificationsForText:(BOOL)a3 selection:(BOOL)a4
{
  if ((*(&self->_tiFlags + 2) & 4) == 0)
  {
    v4 = a3;
    v6 = [(UITextInputController *)self _senderForDelegateNotifications:a3];
    if (v4)
    {
      v8 = v6;
      WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
      [WeakRetained textWillChange:v8];

      v6 = v8;
    }
  }
}

- (void)_sendDelegateChangeNotificationsForText:(BOOL)a3 selection:(BOOL)a4 replacement:(id)a5 characterRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v8 = a4;
  v9 = a3;
  v19 = a5;
  v11 = +[UIDictationController sharedInstance];
  v12 = [v11 suppressDelegateTextInputDidChangeNotifications];

  tiFlags = self->_tiFlags;
  if ((*&tiFlags & 0x1000000) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = WeakRetained;
    if (v8 && (*&self->_tiFlags & 0x10) != 0)
    {
      [WeakRetained textInputDidChangeSelection:self];
    }

    if (v9 && !(((*&self->_tiFlags & 8) == 0) | v12 & 1))
    {
      [v15 textInputDidChange:self];
    }

    tiFlags = self->_tiFlags;
  }

  if ((*&tiFlags & 0x40000) == 0)
  {
    v16 = [(UITextInputController *)self _senderForDelegateNotifications];
    if (v9)
    {
      v17 = objc_loadWeakRetained(&self->_inputDelegate);
      [v17 textDidChange:v16];
    }

    tiFlags = self->_tiFlags;
  }

  if (v19 && (*&tiFlags & 0x2000) != 0 && location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [(UITextInputController *)self delegate];
    [v18 textInput:self didApplyAttributedText:v19 toCharacterRange:{location, length}];
  }
}

- (BOOL)_delegateShouldChangeTextInRange:(_NSRange)a3 replacementText:(id)a4
{
  length = a3.length;
  location = a3.location;
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(UITextInputController *)self _rangeAfterCancelDictationIfNecessaryForChangeInRange:location, length];
  v10 = v9;
  tiFlags = self->_tiFlags;
  if ((*&tiFlags & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = [MEMORY[0x1E696B098] valueWithRange:{v8, v10}];
    v17[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v12 = [WeakRetained textInput:self shouldChangeCharactersInRanges:v15 replacementText:v7];

LABEL_6:
    goto LABEL_7;
  }

  if ((*&tiFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [WeakRetained textInput:self shouldChangeCharactersInRange:v8 replacementText:{v10, v7}];
    goto LABEL_6;
  }

  v12 = 1;
LABEL_7:

  return v12;
}

- (void)_setInternalGestureRecognizers
{
  v2 = [(UITextInputController *)self interactionAssistant];
  [v2 clearGestureRecognizers:1];
}

- (BOOL)_shouldConsiderTextViewForGeometry:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isHiddenOrHasHiddenAncestor] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_firstTextView);
    v8 = [WeakRetained window];
    v9 = [v5 window];
    v6 = v8 == v9;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_textStorageDidProcessEditing:(id)a3
{
  [(_UITextInputControllerTokenizer *)self->_tokenizer invalidateTokenizer];
  [(UITextInputController *)self _updateEmptyStringAttributes];
  v4 = [(UITextInputController *)self _textStorage];
  if (([v4 editedMask] & 2) == 0 || (*(&self->_tiFlags + 2) & 0x10) != 0)
  {
    goto LABEL_15;
  }

  v5 = [(UITextInputController *)self _selectedRange];
  v7 = v6;
  v24.length = [v4 length];
  v24.location = 0;
  length = NSIntersectionRange(v24, self[96]).length;
  v9 = [(UITextInputController *)self markedTextRange];
  if (v9)
  {
    v10 = v9;
    if (length && length == self->_markedTextRange.length)
    {
      v11 = [(NSAttributedString *)self->_markedText string];
      v12 = [(UITextInputController *)self _isInlineCompletionPresentedAsMarkedText:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    [(UITextInputController *)self _forceUnmarkTextDueToEditing];
  }

LABEL_10:
  [(UITextInputController *)self _ensureSelectionValid];
  if (v5 != [(UITextInputController *)self _selectedRange]|| v7 != v13)
  {
    *&self->_tiFlags |= 0x200000u;
    v14 = [(UITextInputController *)self interactionAssistant];
    v15 = [v14 activeSelection];
    [v15 selectionChanged];
  }

  v16 = [v4 editedRange];
  if (v16 <= [(UITextInputController *)self _selectedRange])
  {
    [(UITextInputController *)self _selectionGeometryChanged];
  }

LABEL_15:
  if (([v4 editedMask] & 2) != 0 && (*(&self->_tiFlags + 2) & 0x14) == 0)
  {
    v17 = [(UITextInputController *)self undoManager];
    v18 = [v17 groupingLevel];

    if (!v18)
    {
      v19 = [(UITextInputController *)self undoManager];
      [v19 removeAllActions];
    }
  }

  if (([v4 editedMask] & 2) != 0 && !+[UIKeyboard isModelessActive](UIKeyboard, "isModelessActive"))
  {
    v20 = +[UIDictationController activeInstance];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [v20 cancelDictationForTextStoreChangesInResponder:WeakRetained];
  }

  v22 = [(UITextInputController *)self _textStorage];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __55__UITextInputController__textStorageDidProcessEditing___block_invoke;
  v23[3] = &unk_1E71264B8;
  v23[4] = self;
  [v22 coordinateReading:v23];
}

void __55__UITextInputController__textStorageDidProcessEditing___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectedRange];
  v6 = v5;
  if ([v3 length] && v4 + v6 >= objc_msgSend(v3, "length"))
  {
    v4 = [v3 length] - 1;
    v6 = 1;
  }

  if (v4 < [v3 length])
  {
    v14 = 0;
    v15 = 0;
    if (v6)
    {
      [v3 attributesAtIndex:v4 longestEffectiveRange:&v14 inRange:{v4, v6}];
    }

    else
    {
      [v3 attributesAtIndex:v4 effectiveRange:&v14];
    }
    v7 = ;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
    v9 = [WeakRetained keyboardSceneDelegate];
    v10 = [v9 textFormattingCoordinator];

    v11 = v15 + v14;
    v12 = [*(a1 + 32) selectedRange];
    [v10 setSelectedAttributes:v7 isMultiple:v11 < v12 + v13];
  }
}

- (void)_selectionDidScroll:(id)a3
{
  v3 = [(UITextInputController *)self interactionAssistant];
  [v3 setNeedsSelectionDisplayUpdate];
}

- (void)setSelectedTextRange:(id)a3
{
  v4 = a3;
  [(UITextInputController *)self signalDictationSelectionTip:v4];
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v6 = [WeakRetained characterRangesForTextRange:v4 clippedToDocument:0];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__214;
  v30 = __Block_byref_object_dispose__214;
  v7 = v6;
  v31 = v7;
  v8 = [(UITextInputController *)self _textStorage];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __46__UITextInputController_setSelectedTextRange___block_invoke;
  v25[3] = &unk_1E71267E8;
  v25[4] = self;
  v25[5] = &v26;
  [v8 coordinateReading:v25];

  if (self->_markedTextRange.length)
  {
    if ([v7 count])
    {
      v9 = [v7 firstObject];
      v10 = [v9 rangeValue];
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v17 = [(UITextInputController *)self _selectedRange];
    if (self->_markedTextSelection.location != v10 - v17 || self->_markedTextSelection.length != v12)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __46__UITextInputController_setSelectedTextRange___block_invoke_2;
      v24[3] = &unk_1E70F6848;
      v24[4] = self;
      v24[5] = v10 - v17;
      v24[6] = v12;
      [(UITextInputController *)self _coordinateSelectionChange:v24];
    }
  }

  else
  {
    v13 = [(UITextInputController *)self _selectedRanges];
    v14 = v13;
    if (v13 == v27[5])
    {
      tiFlags = self->_tiFlags;

      if ((*&tiFlags & 0x200000) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v15 = [(UITextInputController *)self _selectedRanges];
      if ([v15 isEqualToArray:v27[5]])
      {
        v16 = self->_tiFlags;

        if ((*&v16 & 0x200000) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    *&self->_tiFlags &= ~0x200000u;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46__UITextInputController_setSelectedTextRange___block_invoke_3;
    v19[3] = &unk_1E7114798;
    v20 = v4;
    v23 = &v26;
    v21 = v7;
    v22 = self;
    [(UITextInputController *)self _coordinateSelectionChange:v19];
  }

LABEL_16:
  _Block_object_dispose(&v26, 8);
}

void __46__UITextInputController_setSelectedTextRange___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [a2 length];
  v4 = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10.location = [*(*(&v39 + 1) + 8 * i) rangeValue];
        length = 0;
        location = v3;
        if (v10.location < v3)
        {
          v46.location = 0;
          v46.length = v3;
          v13 = NSIntersectionRange(v10, v46);
          location = v13.location;
          length = v13.length;
        }

        v14 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v7);
  }

  v15 = *(*(a1 + 40) + 8);
  v17 = *(v15 + 40);
  v16 = (v15 + 40);
  if (v17)
  {
    v18 = v4;
  }

  else
  {
    v18 = 0;
  }

  objc_storeStrong(v16, v18);
  v19 = *(a1 + 32);
  v20 = *(v19 + 144);
  if ((v20 & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained((v19 + 264));
    v35 = *(a1 + 32);
    v34 = [v35 _selectedRanges];
    v36 = [WeakRetained textInput:v35 willChangeSelectionFromCharacterRanges:v34 toCharacterRanges:*(*(*(a1 + 40) + 8) + 40)];
    v37 = *(*(a1 + 40) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;

    goto LABEL_18;
  }

  if ((v20 & 0x20) != 0 && [*(*(*(a1 + 40) + 8) + 40) count])
  {
    v21 = objc_loadWeakRetained((*(a1 + 32) + 264));
    v22 = *(a1 + 32);
    v23 = [v22 _selectedRange];
    v25 = v24;
    v26 = [*(*(*(a1 + 40) + 8) + 40) unionRange];
    v28 = [v21 textInput:v22 willChangeSelectionFromCharacterRange:v23 toCharacterRange:{v25, v26, v27}];
    v30 = v29;

    WeakRetained = [MEMORY[0x1E696B098] valueWithRange:{v28, v30}];
    v43 = WeakRetained;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    v33 = *(*(a1 + 40) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;
LABEL_18:
  }
}

uint64_t __46__UITextInputController_setSelectedTextRange___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 112) = *(a1 + 40);
  v2 = [*(a1 + 32) interactionAssistant];
  [v2 selectionChanged];

  v3 = *(a1 + 32);

  return [v3 _sendDelegateChangeNotificationsForText:0 selection:1];
}

void __46__UITextInputController_setSelectedTextRange___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 56) + 8) + 40);
  if (v3 != *(a1 + 40) && ([v3 isEqualToArray:?] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 248));
    v5 = [WeakRetained textRangeForCharacterRanges:*(*(*(a1 + 56) + 8) + 40)];

    v2 = v5;
  }

  v6 = *(a1 + 48);
  v7 = *(v6 + 24);
  *(v6 + 24) = v2;
  v9 = v2;

  [*(a1 + 48) _invalidateTypingAttributes];
  v8 = [*(a1 + 48) interactionAssistant];
  [v8 selectionChanged];

  [*(a1 + 48) _sendDelegateChangeNotificationsForText:0 selection:1];
}

- (void)_setSelectedRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v6 = [WeakRetained textRangeForCharacterRange:{location, length}];
  selectedTextRange = self->_selectedTextRange;
  self->_selectedTextRange = v6;
}

- (void)_setSelectedRanges:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v5 = [WeakRetained textRangeForCharacterRanges:v4];

  selectedTextRange = self->_selectedTextRange;
  self->_selectedTextRange = v5;
}

- (id)_selectedRanges
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v4 = [WeakRetained characterRangesForTextRange:self->_selectedTextRange clippedToDocument:0];

  return v4;
}

- (void)setSelectedRange:(_NSRange)a3 afterDelta:(int64_t)a4 appliedToRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v8 = a3.length;
  v9 = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v13 = [WeakRetained textRangeForCharacterRange:{v9, v8}];
  [(UITextInputController *)self setSelectedTextRange:v13];

  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = self->_accumulatedSelectedRangeForCoalescedUndoRedo.location;
    if (v14 != 0x7FFFFFFFFFFFFFFFLL && v14 != v9)
    {
      v15.length = self->_accumulatedSelectedRangeForCoalescedUndoRedo.length;
      if (location + length <= v15.length + v14)
      {
        v16 = a4;
      }

      else
      {
        v16 = 0;
      }

      v15.location = v16 + v14;
      if (v8 && v15.length)
      {
        v20.location = v9;
        v20.length = v8;
        v17 = NSUnionRange(v20, v15);
        v9 = v17.location;
        v8 = v17.length;
      }

      else
      {
        if (v15.location <= v9)
        {
          v18 = v9;
        }

        else
        {
          v18 = v16 + v14;
        }

        if (!v8)
        {
          v8 = self->_accumulatedSelectedRangeForCoalescedUndoRedo.length;
          v9 = v18;
        }
      }
    }

    if ((v9 & 0x8000000000000000) != 0 || (v8 & 0x8000000000000000) != 0)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"UITextInputController.m" lineNumber:912 description:{@"Overflow in accumulation of selected range for coalesced undo or redo. Previous accumulation={%lu, %lu} Replacement range={%lu, %lu} delta=%li", self->_accumulatedSelectedRangeForCoalescedUndoRedo.location, self->_accumulatedSelectedRangeForCoalescedUndoRedo.length, location, length, a4}];
    }

    self->_accumulatedSelectedRangeForCoalescedUndoRedo.location = v9;
    self->_accumulatedSelectedRangeForCoalescedUndoRedo.length = v8;
  }
}

- (void)setSelectedRanges:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v5 = [WeakRetained textRangeForCharacterRanges:v4];

  [(UITextInputController *)self setSelectedTextRange:v5];
}

- (NSArray)selectedRanges
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->_markedTextRange.length)
  {
    v2 = MEMORY[0x1E696B098];
    v3 = [(UITextInputController *)self selectedRange];
    v5 = [v2 valueWithRange:{v3, v4}];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = [(UITextInputController *)self _selectedRanges];
  }

  return v6;
}

- (void)_coordinateSelectionChange:(id)a3
{
  v4 = a3;
  v5 = [(UITextInputController *)self _textStorage];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__UITextInputController__coordinateSelectionChange___block_invoke;
  v7[3] = &unk_1E71264E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 coordinateReading:v7];
}

void __52__UITextInputController__coordinateSelectionChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _ensureSelectionValid];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = WeakRetained;
  if ((*(*(a1 + 32) + 146) & 4) == 0)
  {
    [WeakRetained selectionWillChange:?];
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _ensureSelectionValid];
  v6 = [*(a1 + 32) selectedRange];
  v8 = v7;
  if ([v3 length] && v6 + v8 >= objc_msgSend(v3, "length"))
  {
    v6 = [v3 length] - 1;
    v8 = 1;
  }

  if ((v6 & 0x8000000000000000) == 0 && v6 < [v3 length])
  {
    v16 = 0;
    v17 = 0;
    if (v8)
    {
      [v3 attributesAtIndex:v6 longestEffectiveRange:&v16 inRange:{v6, v8}];
    }

    else
    {
      [v3 attributesAtIndex:v6 effectiveRange:&v16];
    }
    v9 = ;
    v10 = objc_loadWeakRetained((*(a1 + 32) + 152));
    v11 = [v10 keyboardSceneDelegate];
    v12 = [v11 textFormattingCoordinator];

    v13 = v17 + v16;
    v14 = [*(a1 + 32) selectedRange];
    [v12 setSelectedAttributes:v9 isMultiple:v13 < v14 + v15];
  }

  if ((*(*(a1 + 32) + 146) & 4) == 0)
  {
    [v5 selectionDidChange:?];
  }
}

- (id)_rangesToReplaceWhenInsertingText
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(UITextInputController *)self selectedTextRange];
  if (v3)
  {
    location = self->_markedTextRange.location;
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
      v6 = [WeakRetained characterRangesForTextRange:v3 clippedToDocument:0];
      goto LABEL_7;
    }

    WeakRetained = [MEMORY[0x1E696B098] valueWithRange:{location, 0}];
    v12 = WeakRetained;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v12;
  }

  else
  {
    WeakRetained = [MEMORY[0x1E696B098] valueWithRange:{0, 0}];
    v13[0] = WeakRetained;
    v7 = MEMORY[0x1E695DEC8];
    v8 = v13;
  }

  v6 = [v7 arrayWithObjects:v8 count:1];
LABEL_7:
  v9 = v6;

  v10 = [[_UITextInsertionRanges alloc] initWithSelectedRanges:v9];

  return v10;
}

- (void)_insertText:(id)a3 fromKeyboard:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(UITextInputController *)self isWritingToolsStreamingReplacements])
  {
    if (v4)
    {
      v7 = 0x40000;
    }

    else
    {
      v7 = 0;
    }

    self->_tiFlags = (*&self->_tiFlags & 0xFFFBFFFF | v7);
    v8 = [(UITextInputController *)self _rangesToReplaceWhenInsertingText];
    v9 = [v8 rangeToBeReplaced];
    v11 = v10;
    v12 = [v8 rangesToBeDeleted];
    v13 = [(UITextInputController *)self _rangeAfterCancelDictationIfNecessaryForChangeInRange:v9, v11];
    v15 = v14;
    [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
    if (*(&self->_tiFlags + 2))
    {
      v16 = [(UITextInputController *)self delegate];
      [v16 textInput:self willChangeCharactersInRange:{v13, v15}];
    }

    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v18 = [WeakRetained textRangeForCharacterRange:{v13, v15}];

    [(UITextCheckingController *)self->_textCheckingController willReplaceTextInRange:v18 withText:v6];
    v19 = [(UITextInputController *)self _rangesToReplaceWhenInsertingText];

    v39 = v19;
    v20 = [v19 rangeToBeReplaced];
    v22 = v21;
    v23 = [(UITextInputController *)self _textStorage];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __50__UITextInputController__insertText_fromKeyboard___block_invoke;
    v66[3] = &unk_1E7126508;
    v68 = v20;
    v69 = v22;
    v24 = v6;
    v67 = v24;
    [v23 coordinateReading:v66];

    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__214;
    v64 = __Block_byref_object_dispose__214;
    v65 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__214;
    v58 = __Block_byref_object_dispose__214;
    v59 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__214;
    v52 = __Block_byref_object_dispose__214;
    v53 = 0;
    v25 = [(UITextInputController *)self _textStorage];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __50__UITextInputController__insertText_fromKeyboard___block_invoke_2;
    v40[3] = &unk_1E7126558;
    v40[4] = self;
    v26 = v12;
    v41 = v26;
    v43 = &v54;
    v46 = v13;
    v47 = v15;
    v42 = v24;
    v44 = &v48;
    v45 = &v60;
    [v25 coordinateEditing:v40];

    [(_UITextInputControllerTokenizer *)self->_tokenizer invalidateTokenizer];
    v27 = [(UITextInputController *)self selectionAffinity];
    if ([v61[5] length])
    {
      v28 = v61[5];
      v29 = [v28 rangeOfComposedCharacterSequenceAtIndex:{objc_msgSend(v28, "length") - 1}];
      v31 = [v28 substringWithRange:{v29, v30}];
      v32 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v33 = [v31 rangeOfCharacterFromSet:v32];

      if (!v33)
      {
        v27 = 0;
      }
    }

    v34 = [(UITextRange *)self->_selectedTextRange start];
    v35 = objc_loadWeakRetained(&self->_textLayoutController);
    v36 = [v35 positionFromPosition:v34 offset:objc_msgSend(v61[5] affinity:{"length"), v27}];

    if (v36)
    {
      v37 = objc_loadWeakRetained(&self->_textLayoutController);
      v38 = [v37 emptyTextRangeAtPosition:v36];
      [(UITextInputController *)self setSelectedTextRange:v38];
    }

    [(UITextInputController *)self adjustWritingDirectionIfNeeded];
    if (v49[5])
    {
      [(UITextInputController *)self setTypingAttributes:?];
    }

    [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0 replacement:v55[5] characterRange:v13, v15];
    *&self->_tiFlags &= ~0x40000u;

    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v54, 8);

    _Block_object_dispose(&v60, 8);
  }
}

void __50__UITextInputController__insertText_fromKeyboard___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v25 = v3;
  if (v4 < [v3 length] && (objc_msgSend(v25, "attribute:atIndex:effectiveRange:", @"_UITextInputDictationResultMetadata", *(a1 + 40), 0), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 40) - 1;
    v6 = 0;
    v7 = 0;
    if (v8 >= [v25 length] || (v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    v6 = [v25 attribute:@"_UITextInputDictationResultMetadata" atIndex:v8 effectiveRange:0];
    if (!v6)
    {
      v7 = 0;
      goto LABEL_35;
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = +[UIDictationUtilities trackingPunctuations];
    v10 = [v9 containsObject:*(a1 + 32)];

    if (v10)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"suffixPunctuationAdded"];
    }

    if ([*(a1 + 32) isEqualToString:&stru_1EFB14550])
    {
      [v7 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"suffixPunctuationAdded"];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v6;
    v6 = v11;
    if (v7)
    {
      [v11 addEntriesFromDictionary:v7];
    }

    v27.length = [v25 length];
    v27.location = 0;
    v12 = NSIntersectionRange(*(a1 + 40), v27);
    v13 = [*(a1 + 32) length] - LODWORD(v12.length);
    [UIDictationUtilities updateCharacterModificationCount:v6 delta:v13];
    if (v13 != 1 || v12.length)
    {
      if (v13 == -1 && v12.length == 1 || (v13 & 0x80000000) != 0 && ![*(a1 + 32) length])
      {
        [UIDictationUtilities updateCharacterDeletionCount:v6 delta:-v13];
        v15 = [v25 attributedSubstringFromRange:{v12.location, v12.length}];
        v16 = [v15 string];

        [UIDictationUtilities trackDeletion:v6 text:v16 range:v12.location, v12.length];
      }

      else
      {
        v17 = [UIDictationUtilities characterSubstitutionCount:v6];
        v18 = [UIDictationUtilities maxLoggableLengthOfInsertionBySubstitution:v6];
        v19 = v18 - v17;
        if (v18 != v17)
        {
          v20 = [v25 attributedSubstringFromRange:{v12.location, v12.length}];
          v21 = [v20 string];

          v22 = [*(a1 + 32) length];
          if (v22 >= v19)
          {
            v23 = v19;
          }

          else
          {
            v23 = v22;
          }

          v24 = [*(a1 + 32) substringWithRange:{0, v23}];
          [UIDictationUtilities trackSubstitution:v6 originalText:v21 originalTextRange:v12.location replacementText:v12.length replacementTextRange:v24, 0, v23];
        }

        +[UIDictationUtilities updateCharacterSubstitutionCount:delta:](UIDictationUtilities, "updateCharacterSubstitutionCount:delta:", v6, [*(a1 + 32) length]);
      }
    }

    else
    {
      if ([UIDictationUtilities characterDeletionCount:v6])
      {
        v14 = [UIDictationUtilities maxLoggableLengthOfInsertionWithDeletion:v6];
      }

      else
      {
        v14 = [UIDictationUtilities maxLoggableLengthOfInsertionWithoutDeletion:v6];
      }

      if ([UIDictationUtilities characterInsertionCount:v6]< v14)
      {
        [UIDictationUtilities trackInsertion:v6 text:*(a1 + 32) range:v12.location, 0];
      }

      [UIDictationUtilities updateCharacterInsertionCount:v6 delta:1];
    }
  }

LABEL_35:
}

void __50__UITextInputController__insertText_fromKeyboard___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 96);
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 replaceCharactersInRange:v6 withString:{*(v5 + 104), &stru_1EFB14550}];
    [*(a1 + 32) _clearMarkedText];
  }

  v7 = *(a1 + 40);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __50__UITextInputController__insertText_fromKeyboard___block_invoke_3;
  v23[3] = &unk_1E7126530;
  v8 = v4;
  v24 = v8;
  [v7 enumerateObjectsUsingBlock:v23];
  v9 = [*(a1 + 32) supportsTextKit2TextLists];
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  if (v9)
  {
    v12 = *(*(a1 + 64) + 8);
    obj = *(v12 + 40);
    v13 = [v10 handleInsertedText:v11 intoTextStorage:v8 replacementRange:*(a1 + 80) updatedTypingAttributes:{*(a1 + 88), &obj}];
    objc_storeStrong((v12 + 40), obj);
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v16 = [v10 _newAttributedStringForInsertionOfText:v11 inRange:{*(a1 + 80), *(a1 + 88)}];
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [v8 replaceCharactersInRange:*(a1 + 80) withAttributedString:{*(a1 + 88), *(*(*(a1 + 56) + 8) + 40)}];
  }

  v19 = [*(*(*(a1 + 56) + 8) + 40) string];
  v20 = *(*(a1 + 72) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

uint64_t __50__UITextInputController__insertText_fromKeyboard___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 rangeValue];

  return [v2 replaceCharactersInRange:v4 withString:{v3, &stru_1EFB14550}];
}

- (BOOL)supportsTextKit2TextLists
{
  WeakRetained = objc_loadWeakRetained(&self->_firstTextView);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_firstTextView);
  v6 = [v5 _supportsTextKit2TextLists];

  return v6;
}

- (id)handleInsertedText:(id)a3 intoTextStorage:(id)a4 replacementRange:(_NSRange)a5 updatedTypingAttributes:(id *)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a3;
  v12 = a4;
  v13 = [(UITextInputController *)self _newAttributedStringForInsertionOfText:v11 inRange:location, length];
  v21 = 0;
  v22 = 0;
  v14 = [v12 string];
  [v14 getParagraphStart:&v22 end:0 contentsEnd:&v21 forRange:{location, length}];

  v15 = v22;
  if (v15 >= [v12 length])
  {
    [v12 replaceCharactersInRange:location withAttributedString:{length, v13}];
  }

  else
  {
    v16 = [v12 attribute:*off_1E70EC988 atIndex:v22 effectiveRange:0];
    v17 = v16;
    if (v16 && ([v16 textLists], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v19))
    {
      [(UITextInputController *)self handleTextListForInsertedText:v11 attributedText:v13 intoTextStorage:v12 replacementRange:location paragraphStyle:length paragraphStart:v17 paragraphContentsEnd:v22 updatedTypingAttributes:v21, a6];
    }

    else
    {
      [v12 replaceCharactersInRange:location withAttributedString:{length, v13}];
    }
  }

  return v13;
}

- (void)handleTextListForInsertedText:(id)a3 attributedText:(id)a4 intoTextStorage:(id)a5 replacementRange:(_NSRange)a6 paragraphStyle:(id)a7 paragraphStart:(unint64_t)a8 paragraphContentsEnd:(unint64_t)a9 updatedTypingAttributes:(id *)a10
{
  length = a6.length;
  location = a6.location;
  v38 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a9 - a8;
  if (a9 - a8 > [v17 length])
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"UITextInputController.m" lineNumber:1205 description:@"Paragraph length somehow larger than text storage length"];
  }

  if ([v38 length] == 1 && (objc_msgSend(MEMORY[0x1E696AB08], "newlineCharacterSet"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "characterIsMember:", objc_msgSend(v38, "characterAtIndex:", 0)), v20, v21))
  {
    v22 = [v16 attributesAtIndex:0 effectiveRange:0];
    v23 = [v22 mutableCopy];

    v24 = [v17 string];
    v25 = [v24 substringWithRange:{a8, v19}];

    v26 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v36 = v25;
    v27 = [v25 stringByTrimmingCharactersInSet:v26];
    v28 = [v27 length];

    if (v28)
    {
      v29 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n " attributes:v23];
      [v17 replaceCharactersInRange:location withAttributedString:{length, v29}];
    }

    else
    {
      v29 = [v18 mutableCopy];
      [v29 setTextLists:MEMORY[0x1E695E0F0]];
      [v23 setObject:v29 forKeyedSubscript:*off_1E70EC988];
      v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550 attributes:v23];
      [v17 replaceCharactersInRange:a8 withAttributedString:{v19, v34}];
      *a10 = [v23 copy];
    }
  }

  else
  {
    v23 = v16;
    v30 = [v23 length];
    if (v19 == 1 && !v30)
    {
      v31 = objc_alloc(MEMORY[0x1E696AAB0]);
      v32 = [(UITextInputController *)self typingAttributes];
      v33 = [v31 initWithString:@" " attributes:v32];

      v23 = v33;
    }

    [v17 replaceCharactersInRange:location withAttributedString:{length, v23}];
  }
}

- (int64_t)_resolveNaturalDirection:(int64_t)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = a3;
  if (a3 == -1)
  {
    v4 = [(UITextInputController *)self _textStorage];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__UITextInputController__resolveNaturalDirection___block_invoke;
    v6[3] = &unk_1E70F94A8;
    v6[4] = &v7;
    [v4 coordinateReading:v6];

    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

void __50__UITextInputController__resolveNaturalDirection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 string];
  *(*(*(a1 + 32) + 8) + 24) = [v3 _isNaturallyRTL];
}

- (BOOL)_isInlineCompletionPresentedAsMarkedText:(id)a3
{
  v4 = a3;
  if ([v4 length] && self->_inputDelegateRespondsToInlineCompletionAsMarkedText)
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
    v6 = [WeakRetained inlineCompletionAsMarkedText];

    v7 = [v6 string];
    v8 = [v7 isEqualToString:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)attributedSubstringForMarkedRange
{
  v3 = [(UITextInputController *)self markedTextRange];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_21;
  }

  markedText = self->_markedText;
  if (markedText)
  {
    v5 = markedText;
    goto LABEL_21;
  }

  v6 = +[UIKeyboard isRedesignedTextCursorEnabled];
  v7 = [(UITextInputController *)self attributedTextInRange:v3];
  v5 = v7;
  v22 = 0;
  v23 = 0;
  if (v6)
  {
    v8 = *off_1E70ECAD8;
    v9 = [(NSAttributedString *)v7 attribute:*off_1E70ECAD8 atIndex:0 effectiveRange:&v22];
    if (v9)
    {
      v10 = v23;
      if (v10 >= [(NSAttributedString *)v5 length])
      {
        goto LABEL_20;
      }
    }

    v11 = [(NSAttributedString *)v5 mutableCopy];
    [(NSAttributedString *)v11 beginEditing];
    [(NSAttributedString *)v11 addAttribute:v8 value:&unk_1EFE337D8 range:0, [(NSAttributedString *)v5 length]];
    v12 = [(UITextInputController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(UITextInputController *)self delegate];
      v15 = [v14 tintColor];

      if (v15)
      {
        [(NSAttributedString *)v11 addAttribute:*off_1E70ECAD0 value:v15 range:0, [(NSAttributedString *)v5 length]];
      }
    }

    length = self->_markedTextSelection.length;
    if (length)
    {
      v17 = self->_markedTextSelection.location + length;
      if (v17 <= [(NSAttributedString *)v5 length])
      {
        [(NSAttributedString *)v11 addAttribute:@"NSMarkedTextSelectionAttributeName" value:MEMORY[0x1E695E118] range:self->_markedTextSelection.location, self->_markedTextSelection.length];
      }
    }

    [(NSAttributedString *)v11 endEditing];
  }

  else
  {
    v18 = *off_1E70EC8D0;
    v9 = [(NSAttributedString *)v7 attribute:*off_1E70EC8D0 atIndex:0 effectiveRange:&v22];
    if (v9)
    {
      v19 = v23;
      if (v19 >= [(NSAttributedString *)v5 length])
      {
        goto LABEL_20;
      }
    }

    v11 = [(NSAttributedString *)v5 mutableCopy];
    v20 = +[UIColor _markedTextBackgroundColor];
    [(NSAttributedString *)v11 addAttribute:v18 value:v20 range:0, [(NSAttributedString *)v5 length]];
  }

  v5 = v11;
LABEL_20:

LABEL_21:

  return v5;
}

- (BOOL)isEditable
{
  WeakRetained = objc_loadWeakRetained(&self->_firstTextView);
  v3 = [WeakRetained isEditable];

  return v3;
}

- (BOOL)isEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_firstTextView);
  v3 = [WeakRetained isEditing];

  return v3;
}

- (void)removeAlternativesForCurrentWord
{
  if ((*(&self->_tiFlags + 2) & 0x40) != 0)
  {
    v3 = [(UITextInputController *)self _textStorage];
    v4 = [v3 length];

    if (v4)
    {
      v5 = [(UITextInputController *)self beginningOfDocument];
      v6 = [(UITextInputController *)self positionFromPosition:v5 offset:[(UITextInputController *)self selectedRange]];

      v7 = [(UITextInputController *)self tokenizer];
      v8 = [v7 rangeEnclosingPosition:v6 withGranularity:1 inDirection:1];

      v9 = [(UITextInputController *)self nsRangeForTextRange:v8];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v9;
        v12 = v10;
        v13 = [(UITextInputController *)self _textStorage];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __57__UITextInputController_removeAlternativesForCurrentWord__block_invoke;
        v15[3] = &__block_descriptor_48_e23_v16__0__NSTextStorage_8l;
        v15[4] = v11;
        v15[5] = v12;
        [v13 coordinateEditing:v15];

        WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
        [WeakRetained removeAnnotationAttribute:*off_1E70ECA00 forRange:v8];
      }
    }
  }
}

- (void)insertText:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([UIDictationController shouldInsertText:v4])
  {
    v5 = +[UIDevice currentDevice];
    if ([v5 _graphicsQuality] == 100)
    {
      v6 = 1;
    }

    else
    {
      v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v6 = [v4 rangeOfCharacterFromSet:v7] != 0x7FFFFFFFFFFFFFFFLL;
    }

    v8 = [(UITextInputController *)self selectedRange];
    v9 = v8;
    v11 = v10;
    length = self->_markedTextRange.length;
    if (length)
    {
      v9 = v8 - length;
      v13 = [(UITextInputController *)self _textStorage];
      v14 = [v13 length];

      if (v9 < 0)
      {
        v9 = 0;
      }

      if (v9 + v11 > v14)
      {
        v11 = v14 - v9;
      }

      v15 = [MEMORY[0x1E696B098] valueWithRange:{v9, v11}];
      v25[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    }

    else
    {
      v16 = [(UITextInputController *)self selectedRanges];
    }

    v17 = [(UITextInputController *)self _textStorage];
    v18 = [v17 string];
    v19 = [v18 substringWithRange:{v9, v11}];
    [(UITextInputController *)self signalDictationInputEvent:v19 insertedText:v4];

    v20 = getUndoActionNameTyping();
    [(UITextInputController *)self registerUndoOperationForType:2 actionName:v20 affectedRanges:v16 replacementText:v4];

    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v22 = [(UITextInputController *)self selectedTextRange];
    v23 = [v22 start];
    v24 = [WeakRetained emptyTextRangeAtPosition:v23];
    [(UITextInputController *)self setPreviousSelectedTextRange:v24];

    [(UITextInputController *)self _insertText:v4 fromKeyboard:1];
    if (v6)
    {
      [(UITextInputController *)self notifyTextCheckingControllerForSelectionChange];
    }

    [(UITextInputController *)self removeAlternativesForCurrentWord];
  }
}

- (void)invalidateDisplayForRange:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 248));
    [WeakRetained boundingRectForRange:v3];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = objc_loadWeakRetained((a1 + 152));
    [v13 setNeedsDisplayInRect:{v6, v8, v10, v12}];
  }
}

- (void)addTextAlternativesDisplayStyle:(int64_t)a3 toRange:(_NSRange)a4 invalidatingDisplayInBoundingRect:(BOOL)a5
{
  v5 = a5;
  length = a4.length;
  location = a4.location;
  *&self->_tiFlags |= 0x400000u;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v14 = [WeakRetained textRangeForCharacterRange:{location, length}];

  v11 = objc_loadWeakRetained(&self->_textLayoutController);
  v12 = *off_1E70ECA00;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v11 addAnnotationAttribute:v12 value:v13 forRange:v14];

  if (v5)
  {
    [(UITextInputController *)self invalidateDisplayForRange:v14];
  }
}

- (void)insertAttributedText:(id)a3
{
  v4 = a3;
  v5 = getUndoActionNameTyping();
  v6 = [(UITextInputController *)self selectedRanges];
  v7 = [v4 string];
  [(UITextInputController *)self registerUndoOperationForType:2 actionName:v5 affectedRanges:v6 replacementText:v7];

  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v9 = [(UITextInputController *)self selectedTextRange];
  v10 = [v9 start];
  v11 = [WeakRetained emptyTextRangeAtPosition:v10];
  [(UITextInputController *)self setPreviousSelectedTextRange:v11];

  v12 = [(UITextInputController *)self selectedRange];
  v14 = [(UITextInputController *)self _newAttributedStringForInsertionOfAttributedText:v4 inRange:v12, v13];

  [(UITextInputController *)self _insertAttributedText:v14 fromKeyboard:1];
  if (_os_feature_enabled_impl())
  {
    [(UITextInputController *)self notifyTextCheckingControllerForSelectionChange];
  }
}

- (void)_insertAttributedText:(id)a3 fromKeyboard:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(UITextInputController *)self isWritingToolsStreamingReplacements])
  {
    if (v4)
    {
      v7 = 0x40000;
    }

    else
    {
      v7 = 0;
    }

    self->_tiFlags = (*&self->_tiFlags & 0xFFFBFFFF | v7);
    [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
    v8 = [(UITextInputController *)self _rangesToReplaceWhenInsertingText];
    v9 = [v8 rangeToBeReplaced];
    v11 = v10;
    v12 = [v8 rangesToBeDeleted];
    v13 = [(UITextInputController *)self _selectedText];
    v14 = [v6 string];
    [(UITextInputController *)self signalDictationInputEvent:v13 insertedText:v14];

    v15 = [(UITextInputController *)self _rangeAfterCancelDictationIfNecessaryForChangeInRange:v9, v11];
    v17 = v16;
    if (*(&self->_tiFlags + 2))
    {
      v18 = [(UITextInputController *)self delegate];
      [v18 textInput:self willChangeCharactersInRange:{v15, v17}];
    }

    v19 = [(UITextInputController *)self _textStorage];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __60__UITextInputController__insertAttributedText_fromKeyboard___block_invoke;
    v25[3] = &unk_1E71265A0;
    v25[4] = self;
    v26 = v12;
    v28 = v15;
    v29 = v17;
    v20 = v6;
    v27 = v20;
    v21 = v12;
    [v19 coordinateEditing:v25];

    v22 = *off_1E70EC9F8;
    v23 = [v20 length];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __60__UITextInputController__insertAttributedText_fromKeyboard___block_invoke_3;
    v24[3] = &unk_1E71265C8;
    v24[5] = v15;
    v24[6] = v17;
    v24[4] = self;
    [v20 enumerateAttribute:v22 inRange:0 options:v23 usingBlock:{0, v24}];
    -[UITextInputController setSelectedRange:](self, "setSelectedRange:", -[UITextInputController _selectedRange](self, "_selectedRange") + [v20 length], 0);
    [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0 replacement:v20 characterRange:v15, v17];
    *&self->_tiFlags &= ~0x40000u;
  }
}

void __60__UITextInputController__insertAttributedText_fromKeyboard___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 96);
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 replaceCharactersInRange:v6 withString:{*(v5 + 104), &stru_1EFB14550}];
    [*(a1 + 32) _clearMarkedText];
  }

  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__UITextInputController__insertAttributedText_fromKeyboard___block_invoke_2;
  v9[3] = &unk_1E7126530;
  v10 = v4;
  v8 = v4;
  [v7 enumerateObjectsUsingBlock:v9];
  [v8 replaceCharactersInRange:*(a1 + 56) withAttributedString:{*(a1 + 64), *(a1 + 48)}];
}

uint64_t __60__UITextInputController__insertAttributedText_fromKeyboard___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 rangeValue];

  return [v2 replaceCharactersInRange:v4 withString:{v3, &stru_1EFB14550}];
}

uint64_t __60__UITextInputController__insertAttributedText_fromKeyboard___block_invoke_3(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = result;
    v6 = *(result + 32);
    v7 = *(result + 40) + a3;
    v8 = a2;
    v9 = [v6 _textStorage];
    v10 = [v9 string];
    v11 = [v10 substringWithRange:{v7, 1}];
    v12 = [v11 isEqualToString:@" "];

    v13 = v7 + v12;
    v14 = [v8 isLowConfidence];

    v15 = *(v5 + 32);

    return [v15 addTextAlternativesDisplayStyle:v14 toRange:{v13, a4 - v12}];
  }

  return result;
}

- (void)_insertAttributedTextWithoutClosingTyping:(id)a3
{
  v7 = a3;
  v4 = getUndoActionNameTyping();
  v5 = [(UITextInputController *)self selectedRanges];
  v6 = [v7 string];
  [(UITextInputController *)self registerUndoOperationForType:2 actionName:v4 affectedRanges:v5 replacementText:v6];

  [(UITextInputController *)self _insertAttributedText:v7 fromKeyboard:1];
}

- (void)_registerUndoOperationForReplacementWithActionName:(id)a3 replacementText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(UITextInputController *)self selectedRanges];
  v8 = [v6 string];

  [(UITextInputController *)self registerUndoOperationForType:3 actionName:v7 affectedRanges:v9 replacementText:v8];
}

- (id)_rangesForBackwardsDelete
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [(UITextInputController *)self _selectedRanges];
  if ([v3 count])
  {
    v4 = [v3 unionRange];
    length = v5;
    if ([(UITextInputController *)self _hasMarkedText])
    {
      location = self->_markedTextSelection.location;
      length = self->_markedTextSelection.length;
      v4 += location;
      v8 = [MEMORY[0x1E696B098] valueWithRange:{v4, length}];
      v19[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

      v3 = v9;
      if (!location)
      {
        goto LABEL_8;
      }
    }

    else if (!v4)
    {
      goto LABEL_8;
    }

    if (!length)
    {
      WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
      v11 = [WeakRetained rangeOfCharacterClusterAtIndex:v4 - 1 type:4];
      v13 = v12;

      v14 = [MEMORY[0x1E696B098] valueWithRange:{v11, v13}];
      v18 = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];

      v3 = v15;
    }
  }

LABEL_8:
  v16 = v3;

  return v3;
}

- (void)_updateRangeForSmartDelete
{
  [(UITextInputController *)self selectedRange];
  if (v3)
  {
    v4 = [(UITextInputController *)self selectedRanges];
    v5 = [v4 count];

    if (v5 == 1)
    {
      v6 = +[UIKeyboardImpl activeInstance];
      v7 = [v6 smartInsertDeleteIsEnabled];

      if (v7)
      {
        v8 = [MEMORY[0x1E69D96E0] traitsForUITextInputTraits:self->_textInputTraits];
        v9 = [objc_alloc(MEMORY[0x1E69D9698]) initWithTextInputTraits:v8];
        v10 = [MEMORY[0x1E69D9590] documentStateOfDocumentWithParagraph:self];
        v13 = 0uLL;
        [v9 smartDeleteForDocumentState:v10 outBeforeLength:&v13 + 8 outAfterLength:&v13];
        if (v13 != 0)
        {
          v11 = [(UITextInputController *)self selectedRange];
          [(UITextInputController *)self setSelectedRange:v11 - *(&v13 + 1), v12 + *(&v13 + 1) + v13];
        }
      }
    }
  }
}

- (unint64_t)textLengthToDeleteBeforeSelectedRangeForSmartDelete
{
  [(UITextInputController *)self selectedRange];
  if (!v3)
  {
    return 0;
  }

  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 smartInsertDeleteIsEnabled];

  if (!v5)
  {
    return 0;
  }

  v6 = [MEMORY[0x1E69D96E0] traitsForUITextInputTraits:self->_textInputTraits];
  v7 = [objc_alloc(MEMORY[0x1E69D9698]) initWithTextInputTraits:v6];
  v8 = [MEMORY[0x1E69D9590] documentStateOfDocumentWithParagraph:self];
  v11 = 0;
  v12 = 0;
  [v7 smartDeleteForDocumentState:v8 outBeforeLength:&v12 outAfterLength:&v11];
  v9 = v12;

  if (!v9)
  {
    return 0;
  }

  return v9;
}

- (void)deleteBackward
{
  if ([(UITextInputController *)self _selectedRange]|| ([(UITextInputController *)self _selectedRange], v4))
  {
    if (+[UIDictationController shouldDeleteBackward])
    {
      [(UITextInputController *)self signalDictationDeletionTip];
      *&self->_tiFlags |= 0x40000u;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __39__UITextInputController_deleteBackward__block_invoke;
      v5[3] = &unk_1E70F32F0;
      v5[4] = self;
      v5[5] = a2;
      [(UITextInputController *)self _performWhileSuppressingDelegateNotifications:v5];
      [(UITextInputController *)self _insertText:&stru_1EFB14550 fromKeyboard:1];
      [(UITextInputController *)self removeSpellingMarkersForCurrentWord];
      [(UITextInputController *)self removeAlternativesForCurrentWord];
      *&self->_tiFlags &= ~0x40000u;
    }
  }

  else
  {

    [(UITextInputController *)self deleteRemainingSpaceForTextListIfNeeded];
  }
}

void __39__UITextInputController_deleteBackward__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _selectedRange];
  v2 = *(a1 + 32);
  if (v3)
  {
    [v2 _updateRangeForSmartDelete];
    v4 = *(a1 + 32);
    WeakRetained = getUndoActionNameTyping();
    v5 = [*(a1 + 32) selectedRanges];
    [v4 registerUndoOperationForType:2 actionName:WeakRetained affectedRanges:v5 replacementText:&stru_1EFB14550];

LABEL_5:
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
    v8 = [*(a1 + 32) selectedTextRange];
    v9 = [v8 start];
    v10 = [WeakRetained emptyTextRangeAtPosition:v9];
    [*(a1 + 32) setPreviousSelectedTextRange:v10];

    goto LABEL_6;
  }

  WeakRetained = [v2 _rangesForBackwardsDelete];
  if ([WeakRetained count])
  {
    v6 = *(a1 + 32);
    v7 = getUndoActionNameTyping();
    [v6 registerUndoOperationForType:2 actionName:v7 affectedRanges:WeakRetained replacementText:&stru_1EFB14550];

    [*(a1 + 32) setSelectedRanges:WeakRetained];
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"UITextInputController.m" lineNumber:1678 description:@"Failed to deleteBackward in a non-empty document."];

  *(*(a1 + 32) + 144) &= ~0x40000u;
LABEL_6:
}

- (void)deleteRemainingSpaceForTextListIfNeeded
{
  v3 = [(UITextInputController *)self _textStorage];
  if ([v3 length] == 1)
  {
    v4 = [v3 string];
    v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];
    v7 = [v6 length];

    if (!v7)
    {
      v19 = 0;
      v8 = [v3 string];
      [v8 getParagraphStart:&v19 end:0 contentsEnd:0 forRange:{0, objc_msgSend(v3, "length")}];

      v9 = v19;
      if (v9 < [v3 length])
      {
        v10 = *off_1E70EC988;
        v11 = [v3 attribute:*off_1E70EC988 atIndex:v19 effectiveRange:0];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 textLists];
          v14 = [v13 count];

          if (v14)
          {
            v15 = [(UITextInputController *)self _textStorage];
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __64__UITextInputController_deleteRemainingSpaceForTextListIfNeeded__block_invoke;
            v18[3] = &unk_1E7126368;
            v18[4] = self;
            [v15 coordinateEditing:v18];

            v16 = [(UITextInputController *)self typingAttributes];
            v17 = [v16 objectForKeyedSubscript:v10];

            [v17 setTextLists:MEMORY[0x1E695E0F0]];
          }
        }
      }
    }
  }
}

void __64__UITextInputController_deleteRemainingSpaceForTextListIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAB0];
  v4 = a2;
  v5 = [v3 alloc];
  v7 = [*(a1 + 32) typingAttributes];
  v6 = [v5 initWithString:&stru_1EFB14550 attributes:v7];
  [v4 replaceCharactersInRange:0 withAttributedString:{1, v6}];
}

- (void)checkSmartPunctuationForWordInRange:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && ![(UITextInputController *)self isWritingToolsStreamingReplacements])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [v5 smartPunctuationController];

    if (v6)
    {
      v7 = [(UITextInputController *)self selectedRange];
      v31 = v8;
      v9 = [(UITextInputController *)self textInRange:v4];
      v10 = objc_loadWeakRetained(&self->_textLayoutController);
      v11 = [v10 beginningOfDocument];
      v12 = [v4 start];
      v13 = [v10 offsetFromPosition:v11 toPosition:v12];

      [v6 smartPunctuationResultsForString:v9];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v37 = 0u;
      v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v14)
      {
        v15 = v14;
        v27 = v7;
        v28 = v9;
        v29 = v6;
        v30 = v4;
        v32 = 0;
        v16 = *v35;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v35 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v34 + 1) + 8 * i);
            v19 = [v18 range];
            v21 = v20;
            v22 = [v18 replacementString];
            v23 = [(UITextInputController *)self _delegateShouldChangeTextInRange:v19 + v13 replacementText:v21, v22];

            if (v23)
            {
              WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
              v25 = [WeakRetained textRangeForCharacterRange:{v19 + v13, v21}];

              v26 = [v18 replacementString];
              [(UITextInputController *)self replaceRange:v25 withText:v26];

              v32 = 1;
            }
          }

          v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v15);
        v6 = v29;
        v4 = v30;
        v9 = v28;
        if (v32)
        {
          [(UITextInputController *)self setSelectedRange:v27, v31];
        }
      }
    }
  }
}

- (id)textChecker
{
  textChecker = self->_textChecker;
  if (!textChecker)
  {
    v4 = [[UITextChecker alloc] _initWithAsynchronousLoading:1];
    v5 = self->_textChecker;
    self->_textChecker = v4;

    textChecker = self->_textChecker;
  }

  if ([(UITextChecker *)textChecker _doneLoading])
  {
    v6 = self->_textChecker;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)preheatTextChecker
{
  if (!self->_textChecker)
  {
    v4 = [[UITextChecker alloc] _initWithAsynchronousLoading:1];
    textChecker = self->_textChecker;
    self->_textChecker = v4;
  }
}

- (void)checkSpellingForWordInRange:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(UITextInputController *)self textInRange:v4];
    v6 = [(UITextInputController *)self textChecker];
    if (!v6)
    {
LABEL_19:

      goto LABEL_20;
    }

    v7 = +[UIKeyboardInputModeController sharedInputModeController];
    v8 = [v7 currentInputMode];

    v9 = [v8 multilingualLanguages];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v8 multilingualLanguages];
    }

    else
    {
      v12 = [v8 primaryLanguage];

      if (v12)
      {
        v13 = [v8 languageWithRegion];
        v28[0] = v13;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      }

      else
      {
        v11 = MEMORY[0x1E695E0F0];
      }
    }

    v14 = +[UIDictationController sharedInstance];
    v15 = [v14 detectedLanguage];

    v16 = +[UIDictationController sharedInstance];
    v17 = [v16 language];

    if (v15)
    {
      v18 = [v15 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

      if (([v11 containsObject:v18] & 1) == 0)
      {
        v19 = [v11 arrayByAddingObject:v18];
LABEL_15:

        v11 = v19;
      }
    }

    else
    {
      if (v17 && ([v11 containsObject:v17] & 1) == 0)
      {
        v19 = [v11 arrayByAddingObject:v17];
        v18 = 0;
        goto LABEL_15;
      }

      v18 = 0;
    }

    if ([v6 rangeOfMisspelledWordInString:v5 range:0 startingAt:objc_msgSend(v5 wrap:"length") languages:{0, 0, v11}] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [(UITextInputController *)self beginningOfDocument];
      [v4 start];
      v27 = v5;
      v22 = v21 = v8;
      v26 = [(UITextInputController *)self offsetFromPosition:v20 toPosition:v22];

      v23 = [v4 start];
      v24 = [v4 end];
      v25 = [(UITextInputController *)self offsetFromPosition:v23 toPosition:v24];

      v8 = v21;
      v5 = v27;

      [(UITextInputController *)self addTextAlternativesDisplayStyle:2 toRange:v26, v25];
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (_NSRange)nsRangeForTextRange:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(UITextInputController *)self beginningOfDocument];
    v6 = [v4 start];
    v7 = [(UITextInputController *)self offsetFromPosition:v5 toPosition:v6];

    v8 = [v4 start];
    v9 = [v4 end];

    v10 = [(UITextInputController *)self offsetFromPosition:v8 toPosition:v9];
  }

  else
  {
    v10 = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v7;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (id)textRangeForNSRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v6 = [WeakRetained textRangeForCharacterRange:{location, length}];

  return v6;
}

- (void)removeSpellingMarkersFromWordInRange:(id)a3
{
  v23 = a3;
  v4 = [(UITextInputController *)self nsRangeForTextRange:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    v7 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v9 = *off_1E70ECA00;
    v10 = [v23 start];
    v11 = [WeakRetained annotationAttribute:v9 atPosition:v10];

    if (v11 && [v11 integerValue] == 2)
    {
      v12 = objc_loadWeakRetained(&self->_textLayoutController);
      [v12 removeAnnotationAttribute:v9 forRange:v23];

      v13 = objc_loadWeakRetained(&self->_textLayoutController);
      [v13 boundingRectForCharacterRange:{v6, v7}];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = objc_loadWeakRetained(&self->_firstTextView);
      [v22 setNeedsDisplayInRect:{v15, v17, v19, v21}];
    }
  }
}

- (void)removeSpellingMarkersForCurrentWord
{
  v3 = [(UITextInputController *)self selectedTextRange];
  v8 = [v3 start];

  v4 = v8;
  if (v8)
  {
    v5 = [(UITextInputController *)self tokenizer];
    v6 = [v5 rangeEnclosingPosition:v8 withGranularity:1 inDirection:0];

    if (!v6)
    {
      v7 = [(UITextInputController *)self tokenizer];
      v6 = [v7 rangeEnclosingPosition:v8 withGranularity:1 inDirection:1];
    }

    [(UITextInputController *)self removeSpellingMarkersFromWordInRange:v6];

    v4 = v8;
  }
}

- (void)notifyTextCheckingControllerForSelectionChange
{
  textCheckingController = self->_textCheckingController;
  v3 = [(UITextInputController *)self previousSelectedTextRange];
  [(UITextCheckingController *)textCheckingController didChangeSelectionFromRange:v3];
}

- (void)checkSpellingForSelectionChangeIfNecessary
{
  if ([(UITextInputController *)self continuousSpellCheckingEnabled])
  {
    v3 = [(UITextInputController *)self previousSelectedTextRange];
    v4 = [v3 start];

    if (v4)
    {
      v5 = [(UITextInputController *)self tokenizer];
      v17 = [v5 rangeEnclosingPosition:v4 withGranularity:1 inDirection:0];

      if (!v17)
      {
        v6 = [(UITextInputController *)self tokenizer];
        v17 = [v6 rangeEnclosingPosition:v4 withGranularity:1 inDirection:1];
      }
    }

    else
    {
      v17 = 0;
    }

    v7 = [(UITextInputController *)self beginningOfDocument];
    v8 = [(UITextInputController *)self positionFromPosition:v7 offset:[(UITextInputController *)self selectedRange]];

    v9 = [(UITextInputController *)self tokenizer];
    v10 = [v9 rangeEnclosingPosition:v8 withGranularity:1 inDirection:0];

    if (!v10)
    {
      v11 = [(UITextInputController *)self tokenizer];
      v10 = [v11 rangeEnclosingPosition:v8 withGranularity:1 inDirection:1];
    }

    v12 = [(UITextInputController *)self nsRangeForTextRange:v17];
    v14 = v13;
    if (([v17 isEqual:v10] & 1) == 0)
    {
      v15 = [(UITextInputController *)self selectedRange];
      if (v15 + v16 < v12 || [(UITextInputController *)self selectedRange]> v12 + v14)
      {
        [(UITextInputController *)self checkSpellingForWordInRange:v17];
        [(UITextInputController *)self removeSpellingMarkersFromWordInRange:v10];
      }
    }
  }
}

- (void)beginSelectionChange
{
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
  [WeakRetained selectionWillChange:self];

  v4 = [(UITextInputController *)self selectedTextRange];
  [(UITextInputController *)self setPreviousSelectedTextRange:v4];
}

- (void)endSelectionChange
{
  [(UITextInputController *)self notifyTextCheckingControllerForSelectionChange];
  v3 = [(UITextInputController *)self previousSelectedTextRange];
  v4 = [(UITextInputController *)self selectedTextRange];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v5 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [v5 isEqual:v6];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    [(UITextInputController *)self setTypingAttributes:0];
  }

LABEL_9:
  [(UITextInputController *)self changingContextWithTrigger:@"selectionChange"];
  +[UIKBAnalyticsDispatcher incrementAllowCursorMovementCount];
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
  [WeakRetained selectionDidChange:self];

  +[UIKBAnalyticsDispatcher decrementAllowCursorMovementCount];
}

- (void)changingContextWithTrigger:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_inputDelegate);
    [v6 performSelector:sel_changingContextWithTrigger_ withObject:v7];
  }
}

- (id)selectionRectsForRange:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v62 = a3;
  v4 = [(UITextInputController *)self interactionAssistant];
  v5 = [v4 view];
  v6 = [v5 textInputView];

  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __48__UITextInputController_selectionRectsForRange___block_invoke;
  v82[3] = &unk_1E71265F0;
  v82[4] = self;
  v60 = [WeakRetained selectionRectsForRange:v62 fromView:v6 forContainerPassingTest:v82];

  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v8 = [v62 end];
  v9 = v8;
  if (v8)
  {
    v61 = v8;
  }

  else
  {
    v61 = [v62 start];
  }

  v10 = objc_loadWeakRetained(&self->_textLayoutController);
  v11 = [(UITextInputController *)self typingAttributes];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __48__UITextInputController_selectionRectsForRange___block_invoke_2;
  v77[3] = &unk_1E7126618;
  v77[4] = &v78;
  [v10 requestTextGeometryAtPosition:v61 typingAttributes:v11 resultBlock:v77];

  v12 = [v60 mutableCopy];
  if ([v12 count])
  {
    if ([v62 isEmpty])
    {
      goto LABEL_36;
    }

    v13 = [v12 bs_firstObjectPassingTest:&__block_literal_global_546];
    v14 = v13;
    if (v13)
    {
      v59 = v13;
    }

    else
    {
      v59 = [v12 firstObject];
    }

    v16 = [v12 bs_firstObjectPassingTest:&__block_literal_global_548];
    v17 = v16;
    if (v16)
    {
      v58 = v16;
    }

    else
    {
      v58 = [v12 lastObject];
    }

    if ((*(&self->_tiFlags + 1) & 2) == 0 || (v18 = objc_loadWeakRetained(&self->_delegate), v19 = [v18 textInputShouldExtendCaretHeight:self], v18, v19))
    {
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __48__UITextInputController_selectionRectsForRange___block_invoke_6;
      v74[3] = &unk_1E7126680;
      v76 = &__block_literal_global_551;
      v75 = v59;
      v20 = [v12 indexesOfObjectsPassingTest:v74];
      v21 = [v12 objectsAtIndexes:v20];

      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __48__UITextInputController_selectionRectsForRange___block_invoke_7;
      v71[3] = &unk_1E7126680;
      v73 = &__block_literal_global_551;
      v72 = v58;
      v22 = [v12 indexesOfObjectsPassingTest:v71];
      v23 = [v12 objectsAtIndexes:v22];

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v24 = v21;
      v25 = [v24 countByEnumeratingWithState:&v67 objects:v84 count:16];
      if (v25)
      {
        v26 = *v68;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v68 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v67 + 1) + 8 * i);
            [v28 rect];
            v30 = v29;
            v32 = v31;
            v34 = v33;
            v36 = v35;
            [v28 setBaselineOffset:v79[3]];
            [v28 setRect:v6 fromView:{v30, v32 + -1.0, v34, v36 + 1.0}];
          }

          v25 = [v24 countByEnumeratingWithState:&v67 objects:v84 count:16];
        }

        while (v25);
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v37 = v23;
      v38 = [v37 countByEnumeratingWithState:&v63 objects:v83 count:16];
      if (v38)
      {
        v39 = *v64;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v64 != v39)
            {
              objc_enumerationMutation(v37);
            }

            v41 = *(*(&v63 + 1) + 8 * j);
            [v41 rect];
            v43 = v42;
            v45 = v44;
            v47 = v46;
            v49 = v48;
            v50 = objc_loadWeakRetained(&self->_firstTextView);
            UIRoundToViewScale(v50);
            v52 = v51;

            [v41 setBaselineOffset:v79[3]];
            [v41 setRect:v6 fromView:{v43, v45, v47, v49 + v52}];
          }

          v38 = [v37 countByEnumeratingWithState:&v63 objects:v83 count:16];
        }

        while (v38);
      }
    }

    if (([v59 containsStart] & 1) == 0)
    {
      v53 = [v62 start];
      [(UITextInputController *)self caretRectForPosition:v53];

      UIFloorToViewScale(v6);
      v54 = [_UIMutableTextSelectionRect selectionRectWithRect:v6 fromView:?];
      [v54 setContainsStart:1];
      [v54 setBaselineOffset:v79[3]];
      [v12 addObject:v54];
    }

    if (([v58 containsEnd] & 1) == 0)
    {
      v55 = [v62 end];
      [(UITextInputController *)self caretRectForPosition:v55];

      UIFloorToViewScale(v6);
      v56 = [_UIMutableTextSelectionRect selectionRectWithRect:v6 fromView:?];
      [v56 setContainsEnd:1];
      [v56 setBaselineOffset:v79[3]];
      [v12 addObject:v56];
    }

    v15 = v59;
  }

  else
  {
    v15 = [_UIMutableTextSelectionRect selectionRectWithRect:v6 fromView:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    [v12 addObject:v15];
  }

LABEL_36:
  _Block_object_dispose(&v78, 8);

  return v12;
}

uint64_t __48__UITextInputController_selectionRectsForRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 textView];
  v4 = [*(a1 + 32) _shouldConsiderTextViewForGeometry:v3];

  return v4;
}

BOOL __48__UITextInputController_selectionRectsForRange___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isEqual:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 isVertical];
    if (v7 == [v5 isVertical])
    {
      v8 = [v4 isVertical];
      [v4 rect];
      v10 = v9;
      v12 = v11;
      [v5 rect];
      if (v8)
      {
        v6 = v10 == v13;
      }

      else
      {
        v6 = v12 == v14;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_rectsForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v7 = [WeakRetained textRangeForCharacterRange:{location, length}];
  v8 = [(UITextInputController *)self selectionRectsForRange:v7];

  return v8;
}

- (id)_characterPositionForPoint:(CGPoint)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v5 = [WeakRetained textContainers];

  v6 = [v5 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    v9 = *(MEMORY[0x1E695EFF8] + 8);
    v34 = v9;
    v35 = *MEMORY[0x1E695EFF8];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = [v11 textView];
        if ([(UITextInputController *)self _shouldConsiderTextViewForGeometry:v12])
        {
          v13 = objc_opt_respondsToSelector();
          v14 = v35;
          v15 = v9;
          if (v13)
          {
            [v12 textContainerOrigin];
          }

          v16 = a3.x - v14;
          v17 = a3.y - v15;
          [v12 bounds];
          x = v45.origin.x;
          y = v45.origin.y;
          width = v45.size.width;
          height = v45.size.height;
          v44.x = v16;
          v44.y = v17;
          if (CGRectContainsPoint(v45, v44) || (v46.origin.x = x, v46.origin.y = y, v46.size.width = width, v46.size.height = height, v22 = CGRectGetMinX(v46) - v16, v47.origin.x = x, v47.origin.y = y, v47.size.width = width, v47.size.height = height, v23 = fmin(v22, v16 - CGRectGetMaxX(v47)), v48.origin.x = x, v48.origin.y = y, v48.size.width = width, v48.size.height = height, v24 = CGRectGetMinY(v48) - v17, v49.origin.x = x, v49.origin.y = y, v49.size.width = width, v49.size.height = height, v25 = fmin(v24, v17 - CGRectGetMaxY(v49)), v26 = v23 * v23, v9 = v34, v26 + v25 * v25 != INFINITY))
          {
            [v11 size];
            if (y <= a3.y && a3.y <= y + height)
            {
              v30 = v9 + v27;
              if (v17 > v9 + v27)
              {
                [v12 _currentScreenScale];
                v17 = v30 + -1.0 / v31;
              }

              if (v17 < v9)
              {
                v17 = v9;
              }
            }

            v32 = objc_loadWeakRetained(&self->_textLayoutController);
            v29 = [v32 cursorPositionAtPoint:v11 inContainer:{v16, v17}];

            goto LABEL_25;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = objc_loadWeakRetained(&self->_textLayoutController);
  v29 = [v5 endOfDocument];
LABEL_25:

  return v29;
}

- (unint64_t)_validCaretPositionFromCharacterIndex:(unint64_t)a3 downstream:(BOOL)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = a3;
  v6 = [(UITextInputController *)self _textStorage];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__UITextInputController__validCaretPositionFromCharacterIndex_downstream___block_invoke;
  v9[3] = &unk_1E71266A8;
  v9[4] = self;
  v9[5] = &v11;
  v10 = a4;
  [v6 coordinateReading:v9];

  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v7;
}

void __74__UITextInputController__validCaretPositionFromCharacterIndex_downstream___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 string];
  v4 = *(*(*(a1 + 40) + 8) + 24);
  if (v4 != [v3 length])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
    v6 = [WeakRetained rangeOfCharacterClusterAtIndex:*(*(*(a1 + 40) + 8) + 24) type:3];
    v8 = v7;

    while (1)
    {
      if (*(a1 + 48))
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      *(*(*(a1 + 40) + 8) + 24) = v9 + v6;
      [*(a1 + 32) _caretRectForOffset:*(*(*(a1 + 40) + 8) + 24)];
      if (!CGRectIsNull(v16))
      {
        goto LABEL_2;
      }

      if (*(a1 + 48) != 1)
      {
        goto LABEL_15;
      }

      v10 = *(*(*(a1 + 40) + 8) + 24);
      if (v10 >= [v3 length])
      {
        break;
      }

      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 24);
      if ((*(a1 + 48) & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_17:
      *(v11 + 24) = v12;
      v6 = [v3 rangeOfComposedCharacterSequenceAtIndex:*(*(*(a1 + 40) + 8) + 24)];
      v8 = v13;
    }

    if (*(a1 + 48))
    {
      goto LABEL_2;
    }

LABEL_15:
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 24);
    if (!v12)
    {
      goto LABEL_2;
    }

LABEL_16:
    --v12;
    goto LABEL_17;
  }

LABEL_2:
}

- (id)_parentScrollView
{
  v2 = [(UITextInputController *)self _firstTextView];
  if (v2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (void)scrollRangeToVisible:(_NSRange)a3
{
  v14 = [(UITextInputController *)self _rectsForRange:a3.location, a3.length];
  if ([v14 count])
  {
    v4 = [v14 objectAtIndex:0];
    [v4 rect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [(UITextInputController *)self _parentScrollView];
    [v13 scrollRectToVisible:1 animated:{v6, v8, v10, v12}];
  }
}

- (void)_ensureSelectionVisible
{
  v3 = [(UITextInputController *)self _selectedRange];

  [(UITextInputController *)self scrollRangeToVisible:v3, 1];
}

- (id)textInRange:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__214;
  v16 = __Block_byref_object_dispose__214;
  v17 = 0;
  v5 = [(UITextInputController *)self _textStorage];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__UITextInputController_textInRange___block_invoke;
  v9[3] = &unk_1E71266D0;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 coordinateReading:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __37__UITextInputController_textInRange___block_invoke(uint64_t a1, void *a2)
{
  v24 = [a2 string];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  v4 = [*(a1 + 32) selectedTextRange];
  v5 = [WeakRetained characterRangeForTextRange:v4];

  v6 = objc_loadWeakRetained((*(a1 + 32) + 248));
  v7 = [v6 characterRangeForTextRange:*(a1 + 40)];
  v9 = v8;

  if (v7 < 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 + v7;
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > [v24 length])
  {
    v12 = [v24 length];
  }

  if (v12 + v9 > [v24 length])
  {
    v9 = [v24 length] - v12;
  }

  v13 = *(*(a1 + 32) + 224);
  if (v13 && ([v13 attachment], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "attachmentRange"), v17 = v16, v14, v15 + v17 < objc_msgSend(v24, "length")))
  {
    v18 = [MEMORY[0x1E696AEC0] _stringWithUnichar:65532];
    v19 = [v24 stringByReplacingCharactersInRange:v15 withString:{v17, v18}];

    v20 = v19;
  }

  else
  {
    v20 = v24;
  }

  v25 = v20;
  v21 = [v20 substringWithRange:{v12, v9}];
  v22 = *(*(a1 + 48) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;
}

- (id)attributedTextInRange:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__214;
  v16 = __Block_byref_object_dispose__214;
  v17 = 0;
  v5 = [(UITextInputController *)self _textStorage];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__UITextInputController_attributedTextInRange___block_invoke;
  v9[3] = &unk_1E71266D0;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 coordinateReading:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __47__UITextInputController_attributedTextInRange___block_invoke(uint64_t a1, void *a2)
{
  v27 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  v4 = [*(a1 + 32) selectedTextRange];
  v5 = [WeakRetained characterRangeForTextRange:v4];

  v6 = objc_loadWeakRetained((*(a1 + 32) + 248));
  v7 = [v6 characterRangeForTextRange:*(a1 + 40)];
  v9 = v8;

  if (v7 < 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 + v7;
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > [v27 length])
  {
    v12 = [v27 length];
  }

  if (v12 + v9 > [v27 length])
  {
    v9 = [v27 length] - v12;
  }

  v13 = *(*(a1 + 32) + 224);
  if (v13)
  {
    v14 = [v13 attachment];
    v15 = [v14 attachmentRange];
    v17 = v16;

    v29.location = v12;
    v29.length = v9;
    v30.location = v15;
    v30.length = v17;
    v18 = NSIntersectionRange(v29, v30);
    if (v18.length)
    {
      v19 = [v27 attributedSubstringFromRange:{v12, v9}];
      v20 = [v19 mutableCopy];

      v21 = [MEMORY[0x1E696AEC0] _stringWithUnichar:65532];
      [v20 replaceCharactersInRange:v18.location - v12 withString:{v18.length, v21}];

      v22 = *(*(a1 + 48) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v20;
    }
  }

  v24 = [v27 attributedSubstringFromRange:{v12, v9}];
  v25 = *(*(a1 + 48) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;
}

- (void)replaceRange:(id)a3 withText:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(UITextInputController *)self _selectedRange];
  v9 = [(UITextInputController *)self _newAttributedStringForInsertionOfText:v6 inRange:v7, v8];

  v10 = [(UITextInputController *)self _replaceRange:v11 withAttributedTextFromKeyboard:v9 addingUnderlinesForAlternatives:0 updatingSelection:1];
}

- (void)replaceRange:(id)a3 withAttributedText:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(UITextInputController *)self _replaceRange:v8 withAttributedTextFromKeyboard:v6 addingUnderlinesForAlternatives:[(UITextInputController *)self isWritingToolsStreamingReplacements]^ 1 updatingSelection:1];
}

- (id)replaceRange:(id)a3 withAttributedText:(id)a4 updatingSelection:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(UITextInputController *)self _replaceRange:v9 withAttributedTextFromKeyboard:v8 addingUnderlinesForAlternatives:[(UITextInputController *)self isWritingToolsStreamingReplacements]^ 1 updatingSelection:v5];

  return v10;
}

- (id)_replaceRange:(id)a3 withAttributedTextFromKeyboard:(id)a4 addingUnderlinesForAlternatives:(BOOL)a5 updatingSelection:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v62 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
    {
      if (byte_1EA95E17C)
      {
        v39 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_replaceRange_withAttributedTextFromKeyboard_addingUnderlinesForAlternatives_updatingSelection____s_category) + 8);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = @"NO";
          *buf = 138413058;
          *&buf[4] = v10;
          if (v7)
          {
            v41 = @"YES";
          }

          else
          {
            v41 = @"NO";
          }

          if (v6)
          {
            v40 = @"YES";
          }

          *&buf[12] = 2112;
          *&buf[14] = v11;
          *&buf[22] = 2112;
          v60 = v41;
          LOWORD(v61) = 2112;
          *(&v61 + 2) = v40;
          _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_ERROR, "replacing range, %@, with attributed text: %@\naddUnderlines? %@ updateSelection? %@", buf, 0x2Au);
        }
      }
    }
  }

  *&self->_tiFlags |= 0x40000u;
  v12 = [(UITextInputController *)self selectedRange];
  [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3010000000;
  v60 = "";
  v61 = xmmword_18A678470;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__214;
  v56 = __Block_byref_object_dispose__214;
  v57 = 0;
  v13 = [(UITextInputController *)self _textStorage];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __120__UITextInputController__replaceRange_withAttributedTextFromKeyboard_addingUnderlinesForAlternatives_updatingSelection___block_invoke;
  v46[3] = &unk_1E7126720;
  v46[4] = self;
  v49 = buf;
  v14 = v10;
  v47 = v14;
  v15 = v11;
  v51 = v7;
  v48 = v15;
  v50 = &v52;
  [v13 coordinateEditing:v46];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = v53[5];
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (v17)
  {
    v18 = *v43;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [(UITextInputController *)self invalidateDisplayForRange:?];
      }

      v17 = [v16 countByEnumeratingWithState:&v42 objects:v58 count:16];
    }

    while (v17);
  }

  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v21 = [v14 start];
  v22 = -[_UITextLayoutControllerBase positionFromPosition:offset:](WeakRetained, v21, [v15 length]);

  if (v6)
  {
    v23 = objc_loadWeakRetained(&self->_textLayoutController);
    v24 = [v23 emptyTextRangeAtPosition:v22];
    [(UITextInputController *)self setSelectedTextRange:v24];

    v25 = [(UITextInputController *)self interactionAssistant];
    [v25 selectionChanged];

    v26 = [(UITextInputController *)self selectedRange];
    if (v26 + v27 >= v12)
    {
      v28 = v26 + v27 - v12;
    }

    else
    {
      v28 = 0;
    }

    if (v26 + v27 >= v12)
    {
      v29 = v12;
    }

    else
    {
      v29 = v26 + v27;
    }

    v30 = objc_loadWeakRetained(&self->_textLayoutController);
    v31 = [v30 textRangeForCharacterRange:{v29, v28}];

    [(UITextInputController *)self checkSmartPunctuationForWordInRange:v31];
  }

  [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0 replacement:v15 characterRange:*(*&buf[8] + 32), *(*&buf[8] + 40)];
  *&self->_tiFlags &= ~0x40000u;
  v32 = [v14 start];
  if (v32)
  {
    v33 = v22 == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = v33;

  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v36 = objc_loadWeakRetained(&self->_textLayoutController);
    v37 = [v14 start];
    v35 = [v36 textRangeFromPosition:v37 toPosition:v22];
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(buf, 8);

  return v35;
}

void __120__UITextInputController__replaceRange_withAttributedTextFromKeyboard_addingUnderlinesForAlternatives_updatingSelection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 string];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  v6 = [*(a1 + 32) selectedTextRange];
  v7 = [WeakRetained characterRangeForTextRange:v6];

  v8 = objc_loadWeakRetained((*(a1 + 32) + 248));
  v9 = [v8 characterRangeForTextRange:*(a1 + 40)];
  v10 = *(*(a1 + 56) + 8);
  *(v10 + 32) = v9;
  *(v10 + 40) = v11;

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 32);
  if (v13 < 0)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0;
  }

  *(v12 + 32) = v14 + v13;
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 32);
  if (v16 < 0)
  {
    v16 = 0;
  }

  *(v15 + 32) = v16;
  v17 = *(*(*(a1 + 56) + 8) + 32);
  if (v17 <= [v4 length])
  {
    v19 = *(*(a1 + 56) + 8);
    v18 = *(v19 + 32);
  }

  else
  {
    v18 = [v4 length];
    v19 = *(*(a1 + 56) + 8);
  }

  *(v19 + 32) = v18;
  v20 = *(*(*(a1 + 56) + 8) + 40) + *(*(*(a1 + 56) + 8) + 32);
  if (v20 <= [v4 length])
  {
    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
  }

  else
  {
    v21 = [v4 length];
    v22 = *(*(a1 + 56) + 8);
    v23 = v21 - *(v22 + 32);
  }

  *(v22 + 40) = v23;
  v24 = *(a1 + 32);
  v25 = _UIKitBundle();
  v26 = [v25 localizedStringForKey:@"Replace" value:@"Replace" table:@"Localizable"];
  v27 = *(*(a1 + 56) + 8);
  v28 = [*(a1 + 48) string];
  [v24 registerUndoOperationForType:3 actionName:v26 affectedRange:*(v27 + 32) replacementText:{*(v27 + 40), v28}];

  v29 = [*(a1 + 32) _rangeAfterCancelDictationIfNecessaryForChangeInRange:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40)}];
  v30 = *(*(a1 + 56) + 8);
  *(v30 + 32) = v29;
  *(v30 + 40) = v31;
  v32 = *(a1 + 32);
  if (v32[146])
  {
    v33 = [v32 delegate];
    [v33 textInput:*(a1 + 32) willChangeCharactersInRange:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40)}];
  }

  [v3 replaceCharactersInRange:*(*(*(a1 + 56) + 8) + 32) withAttributedString:{*(*(*(a1 + 56) + 8) + 40), *(a1 + 48)}];
  if (*(a1 + 72) == 1)
  {
    v34 = *(a1 + 48);
    v35 = *off_1E70EC9F8;
    v36 = [v34 length];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __120__UITextInputController__replaceRange_withAttributedTextFromKeyboard_addingUnderlinesForAlternatives_updatingSelection___block_invoke_2;
    v37[3] = &unk_1E71266F8;
    v38 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
    v37[4] = *(a1 + 32);
    [v34 enumerateAttribute:v35 inRange:0 options:v36 usingBlock:{0, v37}];
  }
}

void __120__UITextInputController__replaceRange_withAttributedTextFromKeyboard_addingUnderlinesForAlternatives_updatingSelection___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v16 = v7;
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v11 = *(*(*(a1 + 48) + 8) + 32);
    [*(a1 + 32) addTextAlternativesDisplayStyle:objc_msgSend(v16 toRange:"isLowConfidence") invalidatingDisplayInBoundingRect:{v11 + a3, a4, 0}];
    v12 = *(a1 + 32);
    v13 = *(*(*(a1 + 40) + 8) + 40);
    WeakRetained = objc_loadWeakRetained((v12 + 248));
    v15 = [WeakRetained textRangeForCharacterRange:{v11 + a3, a4}];
    [v13 addObject:v15];

    v7 = v16;
  }
}

- (void)replaceRangeWithTextWithoutClosingTyping:(id)a3 replacementText:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v9 = [WeakRetained characterRangeForTextRange:v6];
  v11 = v10;

  if (*(&self->_tiFlags + 2))
  {
    v12 = [(UITextInputController *)self delegate];
    [v12 textInput:self willChangeCharactersInRange:{v9, v11}];
  }

  v13 = getUndoActionNameTyping();
  [(UITextInputController *)self registerUndoOperationForType:2 actionName:v13 affectedRange:v9 replacementText:v11, &stru_1EFB14550];

  v14 = getUndoActionNameTyping();
  [(UITextInputController *)self registerUndoOperationForType:2 actionName:v14 affectedRange:v9 replacementText:0, v7];

  v15 = [(UITextInputController *)self selectedTextRange];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__UITextInputController_replaceRangeWithTextWithoutClosingTyping_replacementText___block_invoke;
  v20[3] = &unk_1E7103E40;
  v20[4] = self;
  v21 = v6;
  v16 = v7;
  v22 = v16;
  v23 = v9;
  v24 = v11;
  v17 = v6;
  [(UITextInputController *)self _performWhileSuppressingDelegateNotifications:v20];
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1EFB14550;
  }

  v19 = [(UITextInputController *)self selectedTextRange];
  -[UITextInputController _sendDelegateChangeNotificationsForText:selection:](self, "_sendDelegateChangeNotificationsForText:selection:", 1, [v15 isEqual:v19] ^ 1);
}

void __82__UITextInputController_replaceRangeWithTextWithoutClosingTyping_replacementText___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSelectedTextRange:*(a1 + 40)];
  [*(a1 + 32) _insertText:*(a1 + 48) fromKeyboard:1];
  v2 = [*(a1 + 32) selectedRange];
  v4 = *(a1 + 56);
  if (v2 + v3 >= v4)
  {
    v5 = v2 + v3 - v4;
  }

  else
  {
    v5 = v3;
  }

  if (v2 + v3 >= v4)
  {
    v6 = *(a1 + 56);
  }

  else
  {
    v6 = v2;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  v8 = [WeakRetained textRangeForCharacterRange:{v6, v5}];

  [*(a1 + 32) checkSmartPunctuationForWordInRange:v8];
}

- (void)correctedTypedText:(id)a3 rangeOfReplacement:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained correctedTypedText:v8 rangeOfReplacement:v6];
  }
}

- (void)_performWhileSuppressingDelegateNotifications:(id)a3
{
  tiFlags = self->_tiFlags;
  self->_tiFlags = (*&tiFlags | 0x1000000);
  (*(a3 + 2))(a3, a2);
  self->_tiFlags = (*&self->_tiFlags & 0xFEFFFFFF | ((HIBYTE(*&tiFlags) & 1) << 24));
}

- (int64_t)selectionAffinity
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  [(UITextRange *)self->_selectedTextRange end];

  return *&self->_markedTextRange.length != 0;
}

- (void)_setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4 fromKeyboard:(BOOL)a5 useTextStyle:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  length = self->_markedTextRange.length;
  if (length)
  {
    location = self->_markedTextRange.location;
  }

  else
  {
    location = [(UITextInputController *)self _selectedRange];
    length = v11;
  }

  if (v6)
  {
    v12 = [(UITextInputController *)self markedTextStyle];
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v17 = v15;

    v18 = [(UITextInputController *)self _attributesForInsertionOfText:location, length];
    [v17 addEntriesFromDictionary:v18];

    v16 = [v17 copy];
  }

  else
  {
    v16 = [(UITextInputController *)self _attributesForInsertionOfText:location, length];
  }

  v19 = objc_alloc(MEMORY[0x1E696AD40]);
  v20 = [v8 string];
  v21 = [v19 initWithString:v20 attributes:v16];

  [v21 beginEditing];
  v22 = [v8 length];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __90__UITextInputController__setAttributedMarkedText_selectedRange_fromKeyboard_useTextStyle___block_invoke;
  v69[3] = &unk_1E70F30C8;
  v23 = v21;
  v70 = v23;
  [v8 enumerateAttributesInRange:0 options:v22 usingBlock:{0, v69}];
  if (*(&self->_tiFlags + 1))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained textInput:self prepareAttributedTextForInsertion:v23];
  }

  [v23 endEditing];
  v25 = [v23 copy];

  v26 = [v25 length];
  if (v26 || self->_markedTextRange.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    *&self->_tiFlags |= 0x100000u;
    [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:1];
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x3010000000;
    v63 = 0;
    v64 = 0;
    v62 = "";
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__214;
    v57 = __Block_byref_object_dispose__214;
    v58 = 0;
    v27 = [(UITextInputController *)self _textStorage];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __90__UITextInputController__setAttributedMarkedText_selectedRange_fromKeyboard_useTextStyle___block_invoke_2;
    v48[3] = &unk_1E7126748;
    v48[4] = self;
    v28 = v25;
    v49 = v28;
    v50 = &v53;
    v51 = &v59;
    v52 = &v65;
    [v27 coordinateEditing:v48];

    v29 = [(UITextInputController *)self _textStorage];
    v30 = [v29 length];

    if (v66[3] == v30)
    {
      goto LABEL_19;
    }

    v31 = self->_markedTextRange.location;
    v32 = self->_markedTextRange.length;
    v33 = [(UITextInputController *)self _textStorage];
    v34 = [v33 string];
    if (v32 + v31 <= [v34 length])
    {
      v46 = [(UITextInputController *)self _textStorage];
      v35 = [v46 string];
      v36 = [v35 substringWithRange:{self->_markedTextRange.location, self->_markedTextRange.length}];
      v37 = [v28 string];
      v38 = [v36 isEqualToString:v37];

      if (v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    self->_markedTextRange.location += v30 - v66[3];
LABEL_19:
    v39 = objc_loadWeakRetained(&self->_textLayoutController);
    [v39 invalidateDisplayForCharacterRange:{self->_markedTextRange.location, self->_markedTextRange.length}];

    [(UITextInputController *)self _setSelectedRange:self->_markedTextRange.location, self->_markedTextRange.length];
    v40 = self->_markedTextRange.location;
    v41 = [(UITextInputController *)self _selectedRange];
    v42 = a4.location;
    v44 = a4.length;
    if (v40 + a4.location > v41 + v43 || v41 > v40 + a4.location + a4.length)
    {
      v44 = 0;
      v42 = self->_markedTextRange.length;
    }

    self->_markedTextSelection.location = v42;
    self->_markedTextSelection.length = v44;
    v45 = [(UITextInputController *)self interactionAssistant];
    [v45 selectionChanged];

    if (!v26)
    {
      [(UITextInputController *)self unmarkText];
    }

    *&self->_tiFlags &= ~0x100000u;
    [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:1 replacement:v54[5] characterRange:v60[4], v60[5]];

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v65, 8);
  }
}

void __90__UITextInputController__setAttributedMarkedText_selectedRange_fromKeyboard_useTextStyle___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = *(a1 + 32);
  v4 = v3[13];
  if (!v4)
  {
    v3[12] = [*(a1 + 32) _selectedRange];
    v3[13] = v5;
    v3 = *(a1 + 32);
    v4 = v3[13];
  }

  v3[12] = [v3 _rangeAfterCancelDictationIfNecessaryForChangeInRange:{v3[12], v4}];
  v3[13] = v6;
  v7 = *(a1 + 32);
  v8 = getUndoActionNameTyping();
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) string];
  [v7 registerUndoOperationForType:2 actionName:v8 affectedRange:*(v9 + 96) replacementText:{*(v9 + 104), v10}];

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 136), *(a1 + 40));
  v11 = *(a1 + 32);
  v12 = [*(*(*(a1 + 48) + 8) + 40) string];
  v13 = [v11 _newAttributedStringForInsertionOfText:v12 inRange:{*(*(a1 + 32) + 96), *(*(a1 + 32) + 104)}];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  *(*(*(a1 + 56) + 8) + 32) = *(*(a1 + 32) + 96);
  v16 = *(a1 + 32);
  if (*(v16 + 146))
  {
    v17 = [v16 delegate];
    [v17 textInput:*(a1 + 32) willChangeCharactersInRange:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40)}];

    v16 = *(a1 + 32);
  }

  [v18 replaceCharactersInRange:*(v16 + 96) withAttributedString:{*(v16 + 104), *(*(*(a1 + 48) + 8) + 40)}];
  *(*(a1 + 32) + 104) = [*(*(*(a1 + 48) + 8) + 40) length];
  *(*(*(a1 + 64) + 8) + 24) = [v18 length];
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = self->_markedTextRange.length;
  v14 = v7;
  if (v8)
  {
    v9 = v7;
    v10 = self->_markedTextRange.location;
  }

  else
  {
    v11 = [(UITextInputController *)self _selectedRange];
    v9 = v14;
    v10 = v11;
    v8 = v12;
  }

  v13 = [(UITextInputController *)self _newAttributedStringForInsertionOfText:v9 inRange:v10, v8];
  [(UITextInputController *)self _setAttributedMarkedText:v13 selectedRange:location fromKeyboard:length useTextStyle:0, 1];
}

- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v15 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UITextInputController *)self markedTextFromClient:v15];
    v10 = objc_loadWeakRetained(&self->_inputDelegate);
    [v10 setMarkedTextFromClient:v9];
  }

  v11 = self->_markedTextRange.length;
  if (v11)
  {
    v12 = self->_markedTextRange.location;
  }

  else
  {
    v12 = [(UITextInputController *)self _selectedRange];
    v11 = v13;
  }

  v14 = [(UITextInputController *)self _newAttributedStringForInsertionOfAttributedText:v15 inRange:v12, v11];
  [(UITextInputController *)self _setAttributedMarkedText:v14 selectedRange:location fromKeyboard:length useTextStyle:0, 1];
}

- (BOOL)markedTextFromClient:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([v3 length])
  {
    v4 = [v3 length];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__UITextInputController_markedTextFromClient___block_invoke;
    v9[3] = &unk_1E70F8050;
    v9[4] = &v10;
    [v3 enumerateAttribute:@"UITextInputAttributedStringMarkedTextFromClient" inRange:0 options:v4 usingBlock:{0, v9}];
    if ((v11[3] & 1) == 0)
    {
      v5 = *off_1E70EC920;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46__UITextInputController_markedTextFromClient___block_invoke_2;
      v8[3] = &unk_1E70F8050;
      v8[4] = &v10;
      [v3 enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v8}];
    }
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v6;
}

uint64_t __46__UITextInputController_markedTextFromClient___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 BOOLValue];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void __46__UITextInputController_markedTextFromClient___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    [v4 alphaComponent];
    if (fabs(v3 + -0.8) < 2.22044605e-16)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }
}

- (void)_clearMarkedText
{
  self->_markedTextRange = xmmword_18A678470;
  markedText = self->_markedText;
  self->_markedText = 0;
}

- (void)_forceUnmarkTextDueToEditing
{
  [(UITextInputController *)self _setSelectedRange:[(UITextInputController *)self _selectedRange]+ self->_markedTextRange.location, 0];

  [(UITextInputController *)self _clearMarkedText];
}

- (void)unmarkText:(BOOL)a3
{
  if (self->_markedTextRange.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v4 = a3;
  v6 = [(UITextInputController *)self markedTextStyle];
  v7 = v6;
  if (!v6 || !self->_markedTextRange.length)
  {
    goto LABEL_6;
  }

  if (v4)
  {
    v8 = [(UITextInputController *)self _textStorage];
    v9 = [v8 string];
    v7 = [v9 substringWithRange:{self->_markedTextRange.location, self->_markedTextRange.length}];

    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7];
    -[UITextInputController _setAttributedMarkedText:selectedRange:fromKeyboard:useTextStyle:](self, "_setAttributedMarkedText:selectedRange:fromKeyboard:useTextStyle:", v10, [v7 length], 0, 0, 0);

LABEL_6:
  }

  [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:1];
  [(UITextInputController *)self _clearMarkedText];
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v12 = [(UITextInputController *)self _selectedRange];
  [WeakRetained invalidateDisplayForCharacterRange:{v12, v13}];

  [(UITextInputController *)self setSelectedRange:[(UITextInputController *)self _selectedRange]+ self->_markedTextSelection.location, 0];

  [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:1];
}

- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v9 = [WeakRetained textRangeFromPosition:v7 toPosition:v6];

  return v9;
}

- (id)positionFromPosition:(id)a3 offset:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v8 = [(_UITextLayoutControllerBase *)WeakRetained positionFromPosition:v6 offset:a4];

  return v8;
}

- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5
{
  v8 = a3;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v9 = a4 != 3;
    v10 = a4 != 2;
    v11 = [(UITextInputController *)self _resolveNaturalDirection:[(UITextInputController *)self baseWritingDirectionForPosition:v8 inDirection:0]];
    v12 = v11 != 1 || v10;
    v13 = v11 == 1 || v9;
    v14 = objc_loadWeakRetained(&self->_textLayoutController);
    v15 = [v14 beginningOfDocument];
    v16 = [v14 offsetFromPosition:v15 toPosition:v8];

    if (a5 >= 1)
    {
      v17 = v13 & v12;
      do
      {
        if (v17)
        {
          v18 = [(UITextInputController *)self _textStorage];
          v19 = [v18 length];

          if (v16 >= v19)
          {
            break;
          }

          v20 = self;
          v21 = v16;
          v22 = 1;
        }

        else
        {
          if (!v16)
          {
            break;
          }

          v21 = v16 - 1;
          v20 = self;
          v22 = 0;
        }

        v16 = [(UITextInputController *)v20 _validCaretPositionFromCharacterIndex:v21 downstream:v22];
        --a5;
      }

      while (a5);
    }

    v23 = objc_loadWeakRetained(&self->_textLayoutController);
    v24 = [v23 beginningOfDocument];
    v25 = [(_UITextLayoutControllerBase *)v23 positionFromPosition:v24 offset:v16];
  }

  else if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v27 = objc_opt_respondsToSelector();

    if ((v27 & 1) == 0 || (v28 = objc_loadWeakRetained(&self->_textLayoutController), -[UITextInputController typingAttributes](self, "typingAttributes"), v29 = objc_claimAutoreleasedReturnValue(), -[UITextPlaceholder attachment](self->_textPlaceholder, "attachment"), v30 = objc_claimAutoreleasedReturnValue(), [v28 insertionRectForPosition:v8 typingAttributes:v29 placeholderAttachment:v30 textContainer:0], MinX = CGRectGetMinX(v41), v30, v29, v28, v32 = objc_loadWeakRetained(&self->_textLayoutController), objc_msgSend(v32, "positionFromPosition:inDirection:offset:affinity:anchorPositionOffset:", v8, a4, a5, -[UITextInputController selectionAffinity](self, "selectionAffinity"), MinX), v25 = objc_claimAutoreleasedReturnValue(), v32, !v25))
    {
      v33 = v8;
      [(UITextInputController *)self caretRectForPosition:v33];
      if (a5 < 1)
      {
        v25 = v33;
      }

      else
      {
        v35 = v34;
        do
        {
          [(UITextInputController *)self caretRectForPosition:v33];
          v38 = v37 + 1.0;
          if (a4 == 4)
          {
            v38 = -1.0;
          }

          v25 = [(UITextInputController *)self _characterPositionForPoint:v35, v36 + v38];

          v33 = v25;
          --a5;
        }

        while (a5);
      }
    }
  }

  else
  {
    v25 = [(UITextInputController *)self endOfDocument];
  }

  return v25;
}

- (int64_t)comparePosition:(id)a3 toPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v9 = [WeakRetained comparePosition:v7 toPosition:v6];

  return v9;
}

- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v9 = [WeakRetained offsetFromPosition:v7 toPosition:v6];

  return v9;
}

- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 5 || a4 == 2)
  {
    v7 = [v5 end];
  }

  else
  {
    v7 = [v5 start];
  }

  v8 = v7;

  return v8;
}

- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4
{
  if (a4 == 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v8 = [(_UITextLayoutControllerBase *)WeakRetained positionFromPosition:v6 offset:v5];

  v9 = objc_loadWeakRetained(&self->_textLayoutController);
  v10 = [v9 textRangeFromPosition:v6 toPosition:v8];

  return v10;
}

- (void)setInputDelegate:(id)a3
{
  v6 = a3;
  v4 = objc_storeWeak(&self->_inputDelegate, v6);
  v5 = objc_opt_respondsToSelector();

  self->_inputDelegateRespondsToInlineCompletionAsMarkedText = v5 & 1;
}

- (void)_setAllowedTypingAttributes:(id)a3
{
  if (self->_allowedTypingAttributes != a3)
  {
    v5 = [a3 copy];
    allowedTypingAttributes = self->_allowedTypingAttributes;
    self->_allowedTypingAttributes = v5;
  }
}

- (id)_fixupTypingAttributeForAttributes:(id)a3
{
  v4 = *off_1E70EC978;
  v5 = a3;
  v6 = [v5 objectForKey:v4];
  v7 = [v5 objectForKey:@"DDResultAttributeName"];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [(UITextInputController *)self _allowedTypingAttributes];
  v10 = [v5 objectForKey:@"mt_systemAttributes"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__UITextInputController__fixupTypingAttributeForAttributes___block_invoke;
  v17[3] = &unk_1E70FEC28;
  v18 = v9;
  v19 = v10;
  v11 = v8;
  v20 = v11;
  v12 = v10;
  v13 = v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v17];

  if (v6)
  {
    [v11 setObject:v6 forKey:*off_1E70EC918];
  }

  if (v7)
  {
    [v11 removeObjectForKey:*off_1E70EC960];
  }

  v14 = v20;
  v15 = v11;

  return v11;
}

void __60__UITextInputController__fixupTypingAttributeForAttributes___block_invoke(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([a1[4] containsObject:v6] && (objc_msgSend(a1[5], "containsObject:", v6) & 1) == 0)
  {
    [a1[6] setObject:v5 forKey:v6];
  }
}

- (id)_newAttributedStringForInsertionOfText:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1EFB14550;
  }

  v9 = [(UITextInputController *)self _attributesForInsertionOfText:location, length];
  v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v8 attributes:v9];
  if (*(&self->_tiFlags + 1))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained textInput:self prepareAttributedTextForInsertion:v10];
  }

  return v10;
}

- (id)_newAttributedStringForInsertionOfAttributedText:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(UITextInputController *)self _attributesForInsertionOfText:location, length];
  v9 = [v7 mutableCopy];

  if ([v8 count])
  {
    v10 = [v9 length];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __82__UITextInputController__newAttributedStringForInsertionOfAttributedText_inRange___block_invoke;
    v13[3] = &unk_1E7126770;
    v14 = v8;
    v15 = v9;
    [v15 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v13}];
  }

  if (*(&self->_tiFlags + 1))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained textInput:self prepareAttributedTextForInsertion:v9];
  }

  return v9;
}

void __82__UITextInputController__newAttributedStringForInsertionOfAttributedText_inRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 mutableCopy];
  [v9 addEntriesFromDictionary:v8];

  [*(a1 + 40) setAttributes:v9 range:{a3, a4}];
}

- (id)_newAttributedStringForReplacementOfAnnotatedText:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__214;
  v32 = __Block_byref_object_dispose__214;
  v33 = 0;
  v8 = [(UITextInputController *)self _textStorage];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __83__UITextInputController__newAttributedStringForReplacementOfAnnotatedText_inRange___block_invoke;
  v27[3] = &unk_1E7126798;
  v27[4] = &v28;
  v27[5] = location;
  v27[6] = length;
  [v8 coordinateReading:v27];

  v9 = [v29[5] string];
  v10 = [v7 string];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    v12 = [v29[5] mutableCopy];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = [(UITextInputController *)self validAnnotations];
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v34 count:16];
    if (v14)
    {
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [v12 removeAttribute:*(*(&v23 + 1) + 8 * v16++) range:{0, objc_msgSend(v12, "length")}];
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v23 objects:v34 count:16];
      }

      while (v14);
    }

    v17 = [v7 length];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __83__UITextInputController__newAttributedStringForReplacementOfAnnotatedText_inRange___block_invoke_2;
    v21[3] = &unk_1E70F30C8;
    v18 = v12;
    v22 = v18;
    [v7 enumerateAttributesInRange:0 options:v17 usingBlock:{0, v21}];
    if (*(&self->_tiFlags + 1))
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained textInput:self prepareAttributedTextForInsertion:v18];
    }
  }

  else
  {
    v18 = [(UITextInputController *)self _newAttributedStringForInsertionOfAttributedText:v7 inRange:location, length];
  }

  _Block_object_dispose(&v28, 8);

  return v18;
}

void __83__UITextInputController__newAttributedStringForReplacementOfAnnotatedText_inRange___block_invoke(void *a1, void *a2)
{
  v3 = [a2 attributedSubstringFromRange:{a1[5], a1[6]}];
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_attributesForInsertionOfText:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location == [(UITextInputController *)self _selectedRange]&& length == v6)
  {
    v7 = [(UITextInputController *)self typingAttributes];
  }

  else
  {
    v7 = [(UITextInputController *)self _attributesForReplacementInRange:location, length];
  }

  return v7;
}

- (id)_attributesForReplacementInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__214;
  v14 = __Block_byref_object_dispose__214;
  v15 = 0;
  v6 = [(UITextInputController *)self _textStorage];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__UITextInputController__attributesForReplacementInRange___block_invoke;
  v9[3] = &unk_1E71267C0;
  v9[6] = location;
  v9[7] = length;
  v9[4] = self;
  v9[5] = &v10;
  [v6 coordinateReading:v9];

  v7 = [(UITextInputController *)self _fixupTypingAttributeForAttributes:v11[5]];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __58__UITextInputController__attributesForReplacementInRange___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 length];
  if (v3)
  {
    v4 = v3;
    v21.location = 0;
    v21.length = v3;
    v5 = NSIntersectionRange(*(a1 + 48), v21);
    if (v5 == 0uLL)
    {
      if (*(a1 + 48) || *(a1 + 56))
      {
        location = v4 - 1;
LABEL_11:
        v9 = v19;
LABEL_12:
        v10 = location;
LABEL_13:
        v11 = [v9 attributesAtIndex:v10 effectiveRange:0];
        v12 = *(*(a1 + 40) + 8);
        v7 = *(v12 + 40);
        *(v12 + 40) = v11;
        goto LABEL_14;
      }

      goto LABEL_23;
    }

    location = v5.location;
    if (v5.length)
    {
      goto LABEL_11;
    }

    if (!v5.location)
    {
LABEL_23:
      v9 = v19;
      v10 = 0;
      goto LABEL_13;
    }

    if (v5.location >= v4)
    {
      v15 = v5.location - 1;
    }

    else
    {
      v13 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v14 = [v19 string];
      v15 = v5.location - 1;
      if ([v13 characterIsMember:{objc_msgSend(v14, "characterAtIndex:", v5.location - 1)}])
      {
        if (v5.location + 1 >= v4)
        {

          goto LABEL_11;
        }

        v16 = [MEMORY[0x1E696AB08] newlineCharacterSet];
        v17 = [v19 string];
        v18 = [v16 characterIsMember:{objc_msgSend(v17, "characterAtIndex:", v5.location)}];

        v9 = v19;
        if ((v18 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_27:
        v10 = v15;
        goto LABEL_13;
      }
    }

    v9 = v19;
    goto LABEL_27;
  }

  v7 = [*(a1 + 32) _emptyStringAttributes];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DF20] dictionary];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
  if (!v7)
  {
  }

LABEL_14:
}

- (void)_addToTypingAttributes:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextInputController *)self typingAttributes];
  v9 = [v8 mutableCopy];

  [v9 setValue:v6 forKey:v7];
  [(UITextInputController *)self setTypingAttributes:v9];
}

- (void)_addToTypingAttributes:(id)a3
{
  v4 = a3;
  v5 = [(UITextInputController *)self typingAttributes];
  v6 = [v5 mutableCopy];

  [v6 addEntriesFromDictionary:v4];
  [(UITextInputController *)self setTypingAttributes:v6];
}

- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4
{
  v5 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  v6 = [(UITextInputController *)self _textStorage];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__UITextInputController_baseWritingDirectionForPosition_inDirection___block_invoke;
  v9[3] = &unk_1E71267E8;
  v9[4] = self;
  v9[5] = &v10;
  [v6 coordinateReading:v9];

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __69__UITextInputController_baseWritingDirectionForPosition_inDirection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__214;
  v20 = __Block_byref_object_dispose__214;
  v21 = 0;
  if ([v3 length])
  {
    v4 = [v3 string];
    v5 = [*(a1 + 32) _selectedRange];
    v7 = [v4 paragraphRangeForRange:{v5, v6}];
    v9 = v8;

    v10 = *off_1E70EC988;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__UITextInputController_baseWritingDirectionForPosition_inDirection___block_invoke_2;
    v15[3] = &unk_1E70F8050;
    v15[4] = &v16;
    [v3 enumerateAttribute:v10 inRange:v7 options:v9 usingBlock:{0x100000, v15}];
  }

  v11 = v17[5];
  if (v11 || ([*(a1 + 32) typingAttributes], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectForKey:", *off_1E70EC988), v13 = objc_claimAutoreleasedReturnValue(), v14 = v17[5], v17[5] = v13, v14, v12, (v11 = v17[5]) != 0))
  {
    *(*(*(a1 + 40) + 8) + 24) = [v11 baseWritingDirection];
  }

  _Block_object_dispose(&v16, 8);
}

void __69__UITextInputController_baseWritingDirectionForPosition_inDirection___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  v9 = *(*(a1 + 32) + 8);
  v11 = *(v9 + 40);
  v10 = (v9 + 40);
  if (!v11)
  {
    v12 = v8;
    objc_storeStrong(v10, a2);
    v8 = v12;
    *a5 = 1;
  }
}

- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v8 = [WeakRetained characterRangeForTextRange:v6];
  v10 = v9;

  v11 = [(UITextInputController *)self _textStorage];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58__UITextInputController_setBaseWritingDirection_forRange___block_invoke;
  v20[3] = &__block_descriptor_56_e23_v16__0__NSTextStorage_8l;
  v20[4] = v8;
  v20[5] = v10;
  v20[6] = a3;
  [v11 coordinateEditing:v20];

  if ([(UITextInputController *)self _selectedRange]== v8 && v12 == v10)
  {
    v13 = [(UITextInputController *)self typingAttributes];
    v14 = *off_1E70EC988;
    v15 = [v13 objectForKey:*off_1E70EC988];
    v16 = [v15 mutableCopy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = objc_opt_new();
    }

    v19 = v18;

    [v19 setBaseWritingDirection:a3];
    [(UITextInputController *)self _addToTypingAttributes:v14 value:v19];
  }

  [(UITextInputController *)self _selectionGeometryChanged];
}

void __58__UITextInputController_setBaseWritingDirection_forRange___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 string];
  v5 = [v4 paragraphRangeForRange:{a1[4], a1[5]}];
  v7 = v6;

  v8 = *off_1E70EC988;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__UITextInputController_setBaseWritingDirection_forRange___block_invoke_2;
  v11[3] = &unk_1E7126810;
  v9 = a1[6];
  v12 = v3;
  v13 = v9;
  v10 = v3;
  [v10 enumerateAttribute:v8 inRange:v5 options:v7 usingBlock:{0x100000, v11}];
}

void __58__UITextInputController_setBaseWritingDirection_forRange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v9 = [off_1E70ECB88 defaultParagraphStyle];
    v10 = [v9 mutableCopy];
  }

  [v10 setBaseWritingDirection:*(a1 + 40)];
  [*(a1 + 32) addAttribute:*off_1E70EC988 value:v10 range:{a3, a4}];
}

- (CGRect)firstRectForRange:(id)a3
{
  v3 = [(UITextInputController *)self selectionRectsForRange:a3];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
    [v4 rect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_caretRectForOffset:(unint64_t)a3
{
  v5 = objc_loadWeakRetained(&self->_textLayoutController);
  v6 = [v5 beginningOfDocument];
  v7 = [(_UITextLayoutControllerBase *)v5 positionFromPosition:v6 offset:a3];
  [(UITextInputController *)self caretRectForPosition:v7];
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

- (CGRect)_caretRect
{
  v3 = [(UITextRange *)self->_selectedTextRange start];
  [(UITextInputController *)self caretRectForPosition:v3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)caretRectForPosition:(id)a3
{
  v4 = a3;
  v5 = [(UITextInputController *)self _textStorage];
  v6 = [v5 editedRange];
  v8 = v7;

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(UITextPlaceholder *)self->_textPlaceholder attachment];
    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v11 = [(UITextInputController *)self typingAttributes];
    v43 = 0;
    [WeakRetained insertionRectForPosition:v4 typingAttributes:v11 placeholderAttachment:v9 textContainer:&v43];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = v43;

    v45.origin.x = v13;
    v45.origin.y = v15;
    v45.size.width = v17;
    v45.size.height = v19;
    if (CGRectIsNull(v45))
    {
      v13 = *MEMORY[0x1E695F058];
      v15 = *(MEMORY[0x1E695F058] + 8);
    }

    v21 = [v20 textView];
    if ((*(&self->_tiFlags + 1) & 2) == 0 || (v22 = objc_loadWeakRetained(&self->_delegate), v23 = [v22 textInputShouldExtendCaretHeight:self], v22, v23))
    {
      v15 = v15 + -1.0;
      UIRoundToViewScale(v21);
      v24 = v25 + 1.0;
    }

    [v20 textContainerOrigin];
    v27 = v13 + v26;
    v29 = v15 + v28;
    [v21 _currentScreenScale];
    v31 = UIPointRoundToScale(v27, v29, v30);
    v33 = v32;
    UICeilToViewScale(v21);
    v35 = v34;
    UICeilToViewScale(v21);
    v37 = v36;
    if (v31 < 0.0)
    {
      v31 = 0.0;
    }
  }

  else
  {
    v31 = *MEMORY[0x1E695F050];
    v33 = *(MEMORY[0x1E695F050] + 8);
    v35 = *(MEMORY[0x1E695F050] + 16);
    v37 = *(MEMORY[0x1E695F050] + 24);
    v44.location = v6;
    v44.length = v8;
    v38 = NSStringFromRange(v44);
    NSLog(&cfstr_RequestingCare.isa, v38);
  }

  v39 = v31;
  v40 = v33;
  v41 = v35;
  v42 = v37;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UITextInputController *)self _characterPositionForPoint:x, y];
  v9 = [v7 start];
  v10 = [(UITextInputController *)self comparePosition:v8 toPosition:v9];

  if (v10 == -1)
  {
    v13 = [v7 start];
  }

  else
  {
    v11 = [v7 end];
    v12 = [(UITextInputController *)self comparePosition:v11 toPosition:v8];

    if (v12 != -1)
    {
      goto LABEL_6;
    }

    v13 = [v7 end];
  }

  v14 = v13;

  v8 = v14;
LABEL_6:

  return v8;
}

- (id)characterRangeAtPoint:(CGPoint)a3
{
  v4 = [(UITextInputController *)self _characterPositionForPoint:a3.x, a3.y];
  v5 = [(UITextInputController *)self tokenizer];
  v6 = [v5 rangeEnclosingPosition:v4 withGranularity:0 inDirection:-1];

  return v6;
}

- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4
{
  v6 = a3;
  selectedTextRange = self->_selectedTextRange;
  if (!selectedTextRange || !-[UITextRange isEmpty](selectedTextRange, "isEmpty") || (v8 = objc_loadWeakRetained(&self->_textLayoutController), -[UITextRange start](self->_selectedTextRange, "start"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 comparePosition:v6 toPosition:v9], v9, v8, v10))
  {
    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v12 = [(UITextInputController *)self endOfDocument];
    v13 = [WeakRetained comparePosition:v6 toPosition:v12] | a4;

    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_textLayoutController);
      v15 = [v14 attributesAtPosition:v6 inDirection:a4];

      if (v15)
      {
        goto LABEL_6;
      }

LABEL_9:
      v16 = 0;
      goto LABEL_11;
    }
  }

  v15 = [(UITextInputController *)self typingAttributes];
  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (dyld_program_sdk_at_least())
  {
    v16 = [v15 mutableCopy];
  }

  else
  {
    v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    v17 = [v15 objectForKey:*off_1E70EC918];
    [v16 setValue:v17 forKey:@"UITextInputTextFontKey"];

    v18 = [v15 objectForKey:*off_1E70EC920];
    [v16 setValue:v18 forKey:@"UITextInputTextColorKey"];

    v19 = [v15 objectForKey:*off_1E70EC8D0];
    [v16 setValue:v19 forKey:@"UITextInputTextBackgroundColorKey"];
  }

LABEL_11:

  return v16;
}

- (void)_undoManagerWillUndo:(id)a3
{
  [(UITextInputController *)self stopCoalescing];

  [(UITextInputController *)self unmarkText];
}

- (void)coalesceInTextView:(id)a3 actionName:(id)a4 affectedRanges:(id)a5 replacementRange:(_NSRange)a6 replacementText:(id)a7
{
  length = a6.length;
  location = a6.location;
  v45 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [v45 undoManager];
  v17 = [v45 _textStorage];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_undoOperationForCoalescing), v19 = [v16 _shouldCoalesceTypingForText:WeakRetained :v17], WeakRetained, !v19) || -[UITextInputController shouldStartNewUndoGroup:textGranularity:operationType:](self, "shouldStartNewUndoGroup:textGranularity:operationType:", v15, 2, 2) || ((v20 = objc_msgSend(v45, "selectedRange"), self->_markedTextRange.location != 0x7FFFFFFFFFFFFFFFLL) ? (v22 = 0) : (v22 = v21), v42 = v22, v43 = v20, v41 = objc_loadWeakRetained(&self->_undoOperationForCoalescing), objc_msgSend(v14, "firstObject"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "rangeValue"), v26 = objc_msgSend(v41, "coalesceAffectedRange:replacementRange:selectedRange:textStorage:", v24, v25, location, length, v43, v42, v17), v23, v41, (v26 & 1) == 0))
  {
    [(UITextInputController *)self stopCoalescing];
    if (_os_feature_enabled_impl() && [v14 count] >= 2)
    {
      v27 = -[_UITextUndoOperationTyping initWithAffectedRanges:inputController:replacementTextLength:]([_UITextUndoOperationTyping alloc], "initWithAffectedRanges:inputController:replacementTextLength:", v14, self, [v15 length]);
    }

    else
    {
      v28 = [v14 firstObject];
      v29 = [v28 rangeValue];
      v44 = v16;
      v30 = v14;
      v31 = v17;
      v32 = v13;
      v33 = v15;
      v34 = length;
      v36 = v35;

      v37 = [_UITextUndoOperationTyping alloc];
      v38 = v34;
      v15 = v33;
      v13 = v32;
      v17 = v31;
      v14 = v30;
      v16 = v44;
      v27 = [(_UITextUndoOperationTyping *)v37 initWithAffectedRange:v29 inputController:v36 replacementRange:self, location, v38];
    }

    v39 = v27;
    v40 = [(UITextInputController *)self _textStorage];
    [v16 registerUndoWithTarget:v40 selector:sel__UIUndoRedoTextOperation_ object:v39];

    [v16 setActionName:v13];
    objc_storeWeak(&self->_undoOperationForCoalescing, v39);
  }
}

- (BOOL)shouldStartNewUndoGroup:(id)a3 textGranularity:(int64_t)a4 operationType:(int)a5
{
  v7 = a3;
  v8 = v7;
  if (a5 != 2)
  {
    goto LABEL_6;
  }

  if (a4 == 3)
  {
    v10 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    [v8 rangeOfCharacterFromSet:v10];
    LOBYTE(v9) = v11 != 0;
LABEL_11:

    goto LABEL_12;
  }

  if (a4 == 2)
  {
    v10 = +[UIKeyboardImpl activeInstance];
    if ([v10 nextInputWouldStartSentence])
    {
      v9 = [v8 isEqualToString:@" "] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    goto LABEL_11;
  }

  if (a4 != 1)
  {
LABEL_6:
    LOBYTE(v9) = 0;
    goto LABEL_12;
  }

  LOBYTE(v9) = [v7 isEqualToString:@" "];
LABEL_12:

  return v9;
}

- (void)registerUndoOperationForType:(int)a3 actionName:(id)a4 affectedRange:(_NSRange)a5 replacementText:(id)a6
{
  length = a5.length;
  location = a5.location;
  v9 = *&a3;
  v16[1] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E696B098];
  v12 = a6;
  v13 = a4;
  v14 = [v11 valueWithRange:{location, length}];
  v16[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [(UITextInputController *)self registerUndoOperationForType:v9 actionName:v13 affectedRanges:v15 replacementText:v12];
}

- (void)registerUndoOperationForType:(int)a3 actionName:(id)a4 affectedRanges:(id)a5 replacementText:(id)a6
{
  v26 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v11 firstObject];
  v14 = [v13 rangeValue];
  v16 = v15;

  if (+[UIDictationController isRunning](UIDictationController, "isRunning") && !+[UIDictationController canUndoOrRedo]|| [(UITextInputController *)self _undoRedoInProgress])
  {
    goto LABEL_19;
  }

  switch(a3)
  {
    case 3:
      v18 = [v12 length];
      [(UITextInputController *)self stopCoalescing];
      if (_os_feature_enabled_impl() && [v11 count] >= 2)
      {
        v17 = -[_UITextUndoOperationReplace initWithAffectedRanges:inputController:replacementTextLength:]([_UITextUndoOperationReplace alloc], "initWithAffectedRanges:inputController:replacementTextLength:", v11, self, [v12 length]);
      }

      else
      {
        v17 = [[_UITextUndoOperationReplace alloc] initWithAffectedRange:v14 inputController:v16 replacementRange:self, v14, v18];
      }

      goto LABEL_17;
    case 2:
      -[UITextInputController coalesceInTextView:actionName:affectedRanges:replacementRange:replacementText:](self, "coalesceInTextView:actionName:affectedRanges:replacementRange:replacementText:", self, v26, v11, v14, [v12 length], v12);
      goto LABEL_19;
    case 1:
      [(UITextInputController *)self stopCoalescing];
      if (_os_feature_enabled_impl() && [v11 count] >= 2)
      {
        v17 = [[_UITextUndoOperationSetAttributes alloc] initWithAffectedRanges:v11 inputController:self];
      }

      else
      {
        v20 = [_UITextUndoOperationSetAttributes alloc];
        v21 = [(UITextInputController *)self selectedRange];
        v17 = [(_UITextUndoOperationSetAttributes *)v20 initWithAffectedRange:v21 inputController:v22, self];
      }

LABEL_17:
      v19 = v17;
      v23 = [(UITextInputController *)self undoManager];
      v24 = [(UITextInputController *)self _textStorage];
      [v23 registerUndoWithTarget:v24 selector:sel__UIUndoRedoTextOperation_ object:v19];

      v25 = [(UITextInputController *)self undoManager];
      [v25 setActionName:v26];

      goto LABEL_18;
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"UITextInputController.m" lineNumber:3340 description:@"Unknown text undo operation type encountered"];
LABEL_18:

LABEL_19:
}

- (void)undoManagerDidFinishUndoRedo
{
  if ((*(&self->_tiFlags + 1) & 0x10) != 0)
  {
    v3 = [(UITextInputController *)self delegate];
    [v3 textInputDidFinishUndoRedoChanges:self];
  }

  if (self->_accumulatedSelectedRangeForCoalescedUndoRedo.location != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(UITextInputController *)self setSelectedRange:?];
  }
}

- (void)undoDidReplaceRange:(_NSRange)a3 withAttributedText:(id)a4
{
  if ((*(&self->_tiFlags + 1) & 8) != 0)
  {
    length = a3.length;
    location = a3.location;
    v7 = a4;
    v8 = [(UITextInputController *)self delegate];
    [v8 textInput:self undoRedoDidApplyAttributedText:v7 toCharacterRange:{location, length}];
  }

  [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:1, a4];
}

- (void)_setUndoRedoInProgress:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFFF7FFFF | v3);
}

- (BOOL)isCoalescing
{
  WeakRetained = objc_loadWeakRetained(&self->_undoOperationForCoalescing);
  v3 = WeakRetained != 0;

  return v3;
}

- (void)changeWillBeUndone:(id)a3
{
  [(UITextInputController *)self stopCoalescing];

  [(UITextInputController *)self unmarkText];
}

- (void)clearText
{
  [(UITextInputController *)self unmarkText:0];
  [(UITextInputController *)self selectAll];
  v3 = _UIKitBundle();
  v4 = [v3 localizedStringForKey:@"DELETE_FOR_UNDO" value:@"Delete" table:@"Localizable"];
  v5 = [(UITextInputController *)self selectedRange];
  [(UITextInputController *)self registerUndoOperationForType:3 actionName:v4 affectedRange:v5 replacementText:v6, &stru_1EFB14550];

  [(UITextInputController *)self _insertText:&stru_1EFB14550 fromKeyboard:0];
}

- (void)insertEmojiImageTextAttachment:(id)a3 replacementRange:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([off_1E70ECAF8 prefersEmojiImageTextAttachment])
  {
    v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];

    [(UITextInputController *)self replaceRange:v6 withAttributedText:v8];
  }

  else
  {
    v8 = [v7 adaptiveImageGlyph];

    [(UITextInputController *)self insertAdaptiveImageGlyph:v8 replacementRange:v6];
  }
}

- (void)setSupportsAdaptiveImageGlyph:(BOOL)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x2000000;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFDFFFFFF | v3);
}

- (void)insertAdaptiveImageGlyph:(id)a3 replacementRange:(id)a4
{
  v13 = a3;
  v6 = a4;
  if ([(UITextInputController *)self supportsAdaptiveImageGlyph])
  {
    if ([off_1E70ECAF8 prefersTextAttachment])
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([v13 nominalTextAttachment], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v11 = 0;
LABEL_10:

        goto LABEL_11;
      }

      v8 = v7;
      v9 = MEMORY[0x1E696AAB0];
      v10 = [(UITextInputController *)self typingAttributes];
      v11 = [v9 attributedStringWithAttachment:v8 attributes:v10];
    }

    else
    {
      v12 = MEMORY[0x1E696AAB0];
      v8 = [(UITextInputController *)self typingAttributes];
      v11 = [v12 attributedStringWithAdaptiveImageGlyph:v13 attributes:v8];
    }

    if (v11)
    {
      [(UITextInputController *)self replaceRange:v6 withAttributedText:v11];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)setWritingToolsStreamingReplacements:(BOOL)a3
{
  v3 = a3;
  tiFlags = self->_tiFlags;
  if ((((*&tiFlags & 0x4000000) == 0) ^ a3))
  {
    goto LABEL_9;
  }

  if (a3)
  {
    if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v8 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED4A2328) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, ">>>> UITextInputController will begin undo group for Writing Tools replacements", buf, 2u);
      }
    }

    *&self->_tiFlags &= ~0x8000000u;
    v6 = [(UITextInputController *)self undoManager];
    [v6 beginUndoGrouping];
  }

  else
  {
    if ((*&tiFlags & 0x8000000) != 0)
    {
      goto LABEL_9;
    }

    if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v9 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED4A2330) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "<<<< UITextInputController will end undo group for Writing Tools replacements", v10, 2u);
      }
    }

    v6 = [(UITextInputController *)self undoManager];
    [v6 endUndoGrouping];
  }

  tiFlags = self->_tiFlags;
LABEL_9:
  if (v3)
  {
    v7 = 0x4000000;
  }

  else
  {
    v7 = 0;
  }

  self->_tiFlags = (*&tiFlags & 0xFBFFFFFF | v7);
}

- (BOOL)_isSystemAttachment:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_insertDictationResult:(id)a3 withCorrectionIdentifier:(id)a4 replacingRange:(_NSRange)a5 resultLength:(unint64_t *)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a4;
  v12 = a3;
  [(UITextInputController *)self setSelectedRange:location, length];
  *&self->_tiFlags |= 0x800000u;
  v13 = [UIDictationUtilities attributedStringForDictationResult:v12 andCorrectionIdentifier:v11 capturePrefixAndPostfixWordCount:5];

  v18 = [v13 mutableCopy];
  v14 = [(UITextInputController *)self typingAttributes];

  if (v14)
  {
    v15 = [(UITextInputController *)self typingAttributes];
    v16 = [v15 mutableCopy];

    if (v16)
    {
      [v16 removeObjectForKey:*off_1E70EC9F8];
    }

    v17 = [v16 objectForKey:@"_UITextInputDictationResultMetadata"];
    if (v17)
    {
      [v16 removeObjectForKey:@"_UITextInputDictationResultMetadata"];
    }

    [v18 addAttributes:v16 range:{0, objc_msgSend(v18, "length")}];
  }

  ++self->_dontRemoveAllActionsCount;
  [(UITextInputController *)self _insertAttributedText:v18 fromKeyboard:1];
  --self->_dontRemoveAllActionsCount;
  if (a6)
  {
    *a6 = [v18 length];
  }
}

- (void)insertDictationResult:(id)a3 withCorrectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((*(&self->_tiFlags + 2) & 4) == 0)
  {
    v8 = [v6 bestText];
    v9 = [(UITextInputController *)self _firstTextView];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_firstTextView), +[UIKeyboardImpl sharedInstance](UIKeyboardImpl, "sharedInstance"), v12 = objc_claimAutoreleasedReturnValue(), [v12 delegate], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(WeakRetained, "keyboardInput:shouldInsertText:isMarkedText:", v13, v8, 0), v13, v12, WeakRetained, v14))
    {
      v15 = [(UITextInputController *)self selectedRange];
      v17 = v16;
      v22 = 0;
      *&self->_tiFlags |= 0x40000u;
      [(UITextInputController *)self _insertDictationResult:v6 withCorrectionIdentifier:v7 replacingRange:v15 resultLength:v16, &v22];
      *&self->_tiFlags &= ~0x40000u;
      [(UITextInputController *)self stopCoalescing];
      v18 = _UIKitBundle();
      v19 = [v18 localizedStringForKey:@"Dictation" value:@"Dictation" table:@"Localizable"];
      v20 = [v8 length];
      if (v20 <= v22)
      {
        [(UITextInputController *)self registerUndoOperationForType:2 actionName:v19 affectedRange:v15 replacementText:v17, v8];
      }

      else
      {
        v21 = [v8 substringToIndex:?];
        [(UITextInputController *)self registerUndoOperationForType:2 actionName:v19 affectedRange:v15 replacementText:v17, v21];
      }

      [(UITextInputController *)self stopCoalescing];
      [(UITextInputController *)self setSelectedRange:v22 + v15, 0];
      [(UITextInputController *)self _setSelectedRangeToEndIfNecessary];
    }
  }
}

- (id)insertTextPlaceholderWithSize:(CGSize)a3 embeddingType:(int64_t)a4
{
  p_textPlaceholder = &self->_textPlaceholder;
  if (self->_textPlaceholder)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v39 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v39, OS_LOG_TYPE_FAULT, "Multiple text placeholders", buf, 2u);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &insertTextPlaceholderWithSize_embeddingType____s_category) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Multiple text placeholders", buf, 2u);
      }
    }

    v6 = *p_textPlaceholder;
  }

  else
  {
    height = a3.height;
    width = a3.width;
    *buf = 0;
    v50 = buf;
    v51 = 0x2020000000;
    v52 = 0;
    v11 = [(UITextInputController *)self selectedTextRange];
    v12 = [v11 start];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [(UITextInputController *)self endOfDocument];
    }

    v15 = v14;

    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v17 = [(UITextInputController *)self typingAttributes];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __69__UITextInputController_insertTextPlaceholderWithSize_embeddingType___block_invoke;
    v48[3] = &unk_1E7126618;
    v48[4] = buf;
    [WeakRetained requestTextGeometryAtPosition:v15 typingAttributes:v17 resultBlock:v48];

    v18 = objc_alloc_init(UITextPlaceholder);
    v19 = *(v50 + 3);
    v20 = [(UITextPlaceholder *)v18 attachment];
    [v20 setBounds:{0.0, -(height - v19), width, height}];

    v21 = [(UITextInputController *)self typingAttributes];
    v22 = [(UITextPlaceholder *)v18 attachment];
    [v22 setTypingAttributesBeforeInsertion:v21];

    v23 = [(UITextInputController *)self _selectedRange];
    v24 = [(UITextPlaceholder *)v18 attachment];
    [v24 setAttachmentRange:{v23, 1}];

    v25 = [(UITextPlaceholder *)v18 attachment];
    [v25 setImage:0];

    v26 = [(UITextPlaceholder *)v18 attachment];
    [v26 setEmbeddingType:a4];

    v27 = [(UITextInputController *)self selectedTextRange];
    v28 = [v27 start];
    [(UITextInputController *)self caretRectForPosition:v28];
    [(UITextPlaceholder *)v18 setCaretRectBeforeInsertion:?];

    objc_storeStrong(p_textPlaceholder, v18);
    tiFlags = self->_tiFlags;
    self->_tiFlags = (*&tiFlags | 0x40000);
    [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
    v30 = [(UITextInputController *)self _selectedRange];
    v32 = v31;
    v33 = [(UITextInputController *)self _textStorage];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __69__UITextInputController_insertTextPlaceholderWithSize_embeddingType___block_invoke_2;
    v43[3] = &unk_1E7126858;
    v34 = v18;
    v44 = v34;
    v45 = self;
    v46 = v30;
    v47 = v32;
    [v33 coordinateEditing:v43];

    [(UITextInputController *)self setSelectedRange:v30 + 1, 0];
    [(UITextInputController *)self _setSelectedRangeToEndIfNecessary];
    v35 = [(UITextInputController *)self interactionAssistant];
    [v35 selectionChanged];

    [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0];
    v36 = objc_loadWeakRetained(&self->_layoutManager);
    LOBYTE(v30) = objc_opt_respondsToSelector();

    if (v30)
    {
      objc_initWeak(&location, self);
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __69__UITextInputController_insertTextPlaceholderWithSize_embeddingType___block_invoke_3;
      v40[3] = &unk_1E70F5A28;
      objc_copyWeak(&v41, &location);
      v37 = objc_loadWeakRetained(&self->_layoutManager);
      [v37 setDidCompleteLayoutObserverBlock:v40];

      objc_destroyWeak(&v41);
      objc_destroyWeak(&location);
    }

    self->_tiFlags = (*&self->_tiFlags & 0xFFFBFFFF | (((*&tiFlags >> 18) & 1) << 18));
    [(UITextInputController *)self _updateRectsForPlaceholder];
    v6 = *p_textPlaceholder;

    _Block_object_dispose(buf, 8);
  }

  return v6;
}

void __69__UITextInputController_insertTextPlaceholderWithSize_embeddingType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAB0];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 attachment];
  v7 = [v3 attributedStringWithAttachment:v6];
  v9 = [v7 mutableCopy];

  v8 = [*(a1 + 40) typingAttributes];
  [v9 addAttributes:v8 range:{0, 1}];

  [v5 replaceCharactersInRange:*(a1 + 48) withAttributedString:{*(a1 + 56), v9}];
}

void __69__UITextInputController_insertTextPlaceholderWithSize_embeddingType___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _layoutManagerDidCompleteLayout];
}

- (void)_layoutManagerDidCompleteLayout
{
  v3 = [(UITextInputController *)self _textStorage];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__UITextInputController__layoutManagerDidCompleteLayout__block_invoke;
  v4[3] = &unk_1E71264B8;
  v4[4] = self;
  [v3 coordinateReading:v4];

  [(UITextInputController *)self _updateRectsForPlaceholder];
}

void __56__UITextInputController__layoutManagerDidCompleteLayout__block_invoke(uint64_t a1, void *a2)
{
  v3 = *off_1E70EC8C8;
  v4 = a2;
  v5 = [v4 length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__UITextInputController__layoutManagerDidCompleteLayout__block_invoke_2;
  v6[3] = &unk_1E7126880;
  v6[4] = *(a1 + 32);
  [v4 enumerateAttribute:v3 inRange:0 options:v5 usingBlock:{0, v6}];
}

void __56__UITextInputController__layoutManagerDidCompleteLayout__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = *(*(a1 + 32) + 224);
  v10 = a2;
  v11 = [v9 attachment];

  if (v11 == v10)
  {
    v12 = [*(*(a1 + 32) + 224) attachment];
    [v12 setAttachmentRange:{a3, a4}];

    *a5 = 1;
  }
}

- (void)_updateRectsForPlaceholder
{
  v48 = *MEMORY[0x1E69E9840];
  textPlaceholder = self->_textPlaceholder;
  if (textPlaceholder)
  {
    v4 = [(UITextPlaceholder *)textPlaceholder attachment];
    v5 = [v4 attachmentRange];
    v7 = [(UITextInputController *)self _rectsForRange:v5, v6];

    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v40 + 1) + 8 * i);
          [v14 rect];
          if (!CGRectIsEmpty(v49))
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v11);
    }

    [(UITextPlaceholder *)self->_textPlaceholder setRects:v8];
    v15 = [(UITextPlaceholder *)self->_textPlaceholder attachment];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v50.origin.x = v17;
    v50.origin.y = v19;
    v50.size.width = v21;
    v50.size.height = v23;
    if (CGRectIsEmpty(v50))
    {
      v24 = [(UITextPlaceholder *)self->_textPlaceholder attachment];
      v25 = [v24 attachmentRange];
      v27 = v26;

      WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
      v29 = [WeakRetained textRangeForCharacterRange:{v25, v27}];

      v30 = [v29 start];
      v31 = [(UITextInputController *)self _resolveNaturalDirection:[(UITextInputController *)self baseWritingDirectionForPosition:v30 inDirection:0]];

      v32 = [(UITextInputController *)self interactionAssistant];
      v33 = [v32 view];
      v34 = [v33 textInputView];

      [(UITextPlaceholder *)self->_textPlaceholder caretRectBeforeInsertion];
      v35 = [_UIMutableTextSelectionRect selectionRectWithRect:v34 fromView:v40];
      [v35 setWritingDirection:v31];
      v46 = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      [(UITextPlaceholder *)self->_textPlaceholder setRects:v36];
    }

    v37 = [MEMORY[0x1E696AD88] defaultCenter];
    v38 = self->_textPlaceholder;
    v44 = @"UITextInputPlaceholderChangedPlaceholderKey";
    v45 = v38;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    [v37 postNotificationName:@"UITextInputPlaceholderChangedNotification" object:0 userInfo:v39];
  }
}

- (id)insertTextPlaceholderWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = a3.height > 0.0;
  if (a3.height <= 0.0)
  {
    v7 = [(UITextInputController *)self selectedTextRange];
    v8 = [v7 start];
    [(UITextInputController *)self caretRectForPosition:v8];
    v10 = v9 + -2.0;

    height = fmax(v10, 1.0);
  }

  v11 = [(UITextInputController *)self insertTextPlaceholderWithSize:v6 embeddingType:width, height];
  v12 = v11;
  if (width <= 0.0)
  {
    v21 = [v11 attachment];
    [v21 setImage:0];
  }

  else
  {
    _UIGraphicsBeginImageContextWithOptions(0, 0, width, height, 0.0);
    v13 = +[UIColor clearColor];
    [v13 setFill];

    v14 = [v12 attachment];
    [v14 bounds];
    UIRectFillUsingOperation(1, v15, v16, v17, v18);

    v19 = _UIGraphicsGetImageFromCurrentImageContext(0);
    v20 = [v12 attachment];
    [v20 setImage:v19];

    UIGraphicsEndImageContext();
  }

  return v12;
}

- (id)insertDictationResultPlaceholder
{
  v3 = [(UITextInputController *)self selectedTextRange];
  v4 = [v3 start];
  [(UITextInputController *)self caretRectForPosition:v4];
  v6 = v5 + -1.0;

  [UIDictationLandingView widthForLineHeight:v6];
  ++self->_dontRemoveAllActionsCount;
  result = [(UITextInputController *)self insertTextPlaceholderWithSize:0 embeddingType:?];
  --self->_dontRemoveAllActionsCount;
  return result;
}

- (CGRect)frameForTextPlaceholder:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = [a3 attachment];
  v5 = [v4 attachmentRange];
  v7 = [(UITextInputController *)self _rectsForRange:v5, v6];

  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v30 + 1) + 8 * v16) rect];
        v39.origin.x = v17;
        v39.origin.y = v18;
        v39.size.width = v19;
        v39.size.height = v20;
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        v37 = CGRectUnion(v36, v39);
        x = v37.origin.x;
        y = v37.origin.y;
        width = v37.size.width;
        height = v37.size.height;
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v21 = _UIMainBundleIdentifier();
  if ([v21 isEqual:@"com.apple.MobileSMS"])
  {
    v22 = [objc_opt_self() mainScreen];
    [v22 scale];
    v24 = v23;

    if (v24 <= 1.0)
    {
      v25 = -1.0;
    }

    else
    {
      v25 = -0.5;
    }
  }

  else
  {

    v25 = -1.0;
  }

  v26 = y + v25;
  v27 = height + 2.0;
  v28 = x;
  v29 = width;
  result.size.height = v27;
  result.size.width = v29;
  result.origin.y = v26;
  result.origin.x = v28;
  return result;
}

- (void)removeTextPlaceholder:(id)a3 notifyInputDelegate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self->_textPlaceholder == v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_layoutManager);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_layoutManager);
      [v9 setDidCompleteLayoutObserverBlock:0];
    }

    textPlaceholder = self->_textPlaceholder;
    self->_textPlaceholder = 0;

    location = self->_markedTextRange.location;
    length = self->_markedTextRange.length;
    v13 = [(UITextInputController *)self _selectedRange];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3010000000;
    v33 = 0;
    v34 = 0;
    v32 = "";
    v14 = [(UITextPlaceholder *)v6 attachment];
    v33 = [v14 attachmentRange];
    v34 = v15;

    v16 = [(UITextInputController *)self _textStorage];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __67__UITextInputController_removeTextPlaceholder_notifyInputDelegate___block_invoke;
    v26[3] = &unk_1E71267E8;
    v28 = &v29;
    v17 = v6;
    v27 = v17;
    [v16 coordinateReading:v26];

    if (v30[4] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v4)
      {
        [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:1];
      }

      v18 = [(UITextInputController *)self _textStorage];
      v19 = [v18 length];

      v20 = v30[4];
      if (v20 < v19 && v30[5] + v20 <= v19)
      {
        v24 = [(UITextInputController *)self _textStorage];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __67__UITextInputController_removeTextPlaceholder_notifyInputDelegate___block_invoke_3;
        v25[3] = &unk_1E71268D0;
        v25[4] = &v29;
        [v24 coordinateEditing:v25];

        v21 = v30[4];
        if (v13 > v21)
        {
          v21 = v13 - v30[5];
        }
      }

      else
      {
        v21 = v19 - 1;
      }

      [(UITextInputController *)self setSelectedRange:v21, 0];
      [(UITextInputController *)self _setSelectedRangeToEndIfNecessary];
      if (location != 0x7FFFFFFFFFFFFFFFLL)
      {
        self->_markedTextRange.location = location;
        self->_markedTextRange.length = length;
        if (location > v30[4])
        {
          self->_markedTextRange.location = location - 1;
        }
      }

      v22 = [(UITextPlaceholder *)v17 attachment];
      v23 = [v22 typingAttributesBeforeInsertion];
      [(UITextInputController *)self setTypingAttributes:v23];

      if (v4)
      {
        [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:1];
      }
    }

    _Block_object_dispose(&v29, 8);
  }
}

void __67__UITextInputController_removeTextPlaceholder_notifyInputDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 32);
  v5 = [v3 length];
  v6 = *off_1E70EC8C8;
  if (v4 >= v5 || ([v3 attribute:*off_1E70EC8C8 atIndex:*(*(*(a1 + 40) + 8) + 32) effectiveRange:0], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "attachment"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v7 != v8))
  {
    *(*(*(a1 + 40) + 8) + 32) = xmmword_18A678470;
    v9 = [v3 length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__UITextInputController_removeTextPlaceholder_notifyInputDelegate___block_invoke_2;
    v12[3] = &unk_1E71268A8;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = v10;
    v14 = v11;
    [v3 enumerateAttribute:v6 inRange:0 options:v9 usingBlock:{0x100000, v12}];
  }
}

void __67__UITextInputController_removeTextPlaceholder_notifyInputDelegate___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 attachment];

  if (v11 == v10)
  {
    v12 = *(*(a1 + 40) + 8);
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    *a5 = 1;
  }
}

- (void)removeDictationResultPlaceholder:(id)a3 willInsertResult:(BOOL)a4
{
  ++self->_dontRemoveAllActionsCount;
  tiFlags = self->_tiFlags;
  self->_tiFlags = (*&tiFlags | 0x40000);
  [(UITextInputController *)self removeTextPlaceholder:a3 notifyInputDelegate:!a4];
  self->_tiFlags = (*&self->_tiFlags & 0xFFFBFFFF | (((*&tiFlags >> 18) & 1) << 18));
  --self->_dontRemoveAllActionsCount;
}

- (id)rangeWithTextAlternatives:(id *)a3 atPosition:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    v9 = [(UITextInputController *)self _textStorage];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [(UITextInputController *)self textRangeFromPosition:v7 toPosition:v7];
      v12 = [(UITextInputController *)self nsRangeForTextRange:v11];

      v8 = 0;
      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x2020000000;
      v28[3] = v12;
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = 0;
        v23 = &v22;
        v24 = 0x3032000000;
        v25 = __Block_byref_object_copy__214;
        v26 = __Block_byref_object_dispose__214;
        v27 = 0;
        v16 = 0;
        v17 = &v16;
        v18 = 0x3032000000;
        v19 = __Block_byref_object_copy__214;
        v20 = __Block_byref_object_dispose__214;
        v21 = 0;
        v13 = [(UITextInputController *)self _textStorage];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __62__UITextInputController_rangeWithTextAlternatives_atPosition___block_invoke;
        v15[3] = &unk_1E71268F8;
        v15[6] = &v16;
        v15[7] = &v22;
        v15[4] = self;
        v15[5] = v28;
        [v13 coordinateReading:v15];

        *a3 = v17[5];
        v8 = v23[5];
        _Block_object_dispose(&v16, 8);

        _Block_object_dispose(&v22, 8);
      }

      _Block_object_dispose(v28, 8);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void __62__UITextInputController_rangeWithTextAlternatives_atPosition___block_invoke(uint64_t a1, void *a2)
{
  v11 = 0;
  v12 = 0;
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = a2;
  if (v3 == [v4 length])
  {
    --*(*(*(a1 + 40) + 8) + 24);
  }

  v5 = [v4 attribute:*off_1E70EC9F8 atIndex:*(*(*(a1 + 40) + 8) + 24) longestEffectiveRange:&v11 inRange:{0, objc_msgSend(v4, "length", v11, v12)}];

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [*(a1 + 32) textRangeForNSRange:{v11, v12}];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (void)addTextAlternatives:(id)a3
{
  v4 = a3;
  v5 = [(UITextInputController *)self _selectedRange];
  v6 = [v4 primaryString];
  v7 = [v6 length];

  if (v5 >= v7)
  {
    v8 = [(UITextInputController *)self _selectedRange];
    v9 = [v4 primaryString];
    v10 = v8 - [v9 length];
    v11 = [v4 primaryString];
    v12 = [v11 length];

    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v14 = [WeakRetained textRangeForCharacterRange:{v10, v12}];

    v15 = [(UITextInputController *)self textInRange:v14];
    v16 = [v4 primaryString];
    v17 = [v15 isEqualToString:v16];

    if (v17)
    {
      v18 = [(UITextInputController *)self _textStorage];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __45__UITextInputController_addTextAlternatives___block_invoke;
      v19[3] = &unk_1E71265A0;
      v23 = v10;
      v24 = v12;
      v20 = v4;
      v21 = self;
      v22 = v14;
      [v18 coordinateEditing:v19];
    }
  }
}

void __45__UITextInputController_addTextAlternatives___block_invoke(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v23[0] = 0;
  v23[1] = 0;
  v5 = *off_1E70EC9F8;
  v6 = *(a1 + 56);
  v7 = a2;
  v8 = [v7 attribute:v5 atIndex:v6 effectiveRange:v23];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 primaryString];
    v11 = [v4 primaryString];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      v13 = MEMORY[0x1E695DFA0];
      v14 = [v9 alternativeStrings];
      v15 = [v13 orderedSetWithArray:v14];

      v16 = [*(a1 + 32) alternativeStrings];
      [v15 addObjectsFromArray:v16];

      v17 = [off_1E70ECBA0 alloc];
      v18 = [v4 primaryString];
      v19 = [v15 array];
      v20 = [v17 initWithPrimaryString:v18 alternativeStrings:v19 isLowConfidence:{objc_msgSend(v4, "isLowConfidence")}];

      v4 = v20;
    }
  }

  [v7 removeAttribute:v5 range:{*(a1 + 56), *(a1 + 64)}];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 248));
  [WeakRetained removeAnnotationAttribute:*off_1E70ECA00 forRange:*(a1 + 48)];

  v24 = v5;
  v25[0] = v4;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  [v7 addAttributes:v22 range:{*(a1 + 56), *(a1 + 64)}];

  [*(a1 + 40) addTextAlternativesDisplayStyle:objc_msgSend(v4 toRange:{"isLowConfidence"), *(a1 + 56), *(a1 + 64)}];
}

- (void)removeEmojiAlternatives
{
  if ((*(&self->_tiFlags + 2) & 0x40) != 0)
  {
    v3 = [(UITextInputController *)self _textStorage];
    v4 = [v3 length];

    if (v4)
    {
      v5 = [(UITextInputController *)self _textStorage];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __48__UITextInputController_removeEmojiAlternatives__block_invoke;
      v6[3] = &unk_1E7126368;
      v6[4] = self;
      [v5 coordinateEditing:v6];
    }
  }
}

void __48__UITextInputController_removeEmojiAlternatives__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _selectedRange];
  v5 = [*(a1 + 32) _textStorage];
  v6 = v4 - (v4 >= [v5 length]);

  v28 = 0;
  v29 = 0;
  v7 = *off_1E70EC9F8;
  v8 = [v3 attribute:*off_1E70EC9F8 atIndex:v6 effectiveRange:&v28];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x1E695DF70];
    v11 = [v8 alternativeStrings];
    v12 = [v10 arrayWithCapacity:{objc_msgSend(v11, "count")}];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = [v9 alternativeStrings];
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          if (([v18 _containsEmojiOnly] & 1) == 0)
          {
            [v12 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v15);
    }

    [v3 removeAttribute:v7 range:{v28, v29}];
    if ([v12 count])
    {
      v19 = [off_1E70ECBA0 alloc];
      v20 = [v9 primaryString];
      WeakRetained = [v19 initWithPrimaryString:v20 alternativeStrings:v12 isLowConfidence:{objc_msgSend(v9, "isLowConfidence")}];

      v30 = v7;
      v31 = WeakRetained;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      [v3 addAttributes:v22 range:{v28, v29}];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
      v23 = *off_1E70ECA00;
      v22 = [*(a1 + 32) textRangeForNSRange:{v28, v29}];
      [WeakRetained removeAnnotationAttribute:v23 forRange:v22];
    }
  }
}

- (id)_prefixTokensForDictationAttributedText:(id)a3 lastDictationAttributedTextRange:(_NSRange)a4 currentDictationAttributedTextRange:(_NSRange)a5
{
  location = a5.location;
  length = a4.length;
  v7 = a4.location;
  v8 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__214;
  v24 = __Block_byref_object_dispose__214;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v9 = v7 + length;
  v10 = location - v9;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __134__UITextInputController__prefixTokensForDictationAttributedText_lastDictationAttributedTextRange_currentDictationAttributedTextRange___block_invoke;
  v15[3] = &unk_1E7126920;
  v15[4] = &v16;
  v15[5] = &v20;
  [v8 enumerateSubstringsInRange:v9 options:v10 usingBlock:{259, v15}];
  if (!*(v17 + 6))
  {
    v11 = v21[5];
    v12 = [MEMORY[0x1E696B098] valueWithRange:{v9, v10}];
    [v11 addObject:v12];
  }

  v13 = v21[5];
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v13;
}

void __134__UITextInputController__prefixTokensForDictationAttributedText_lastDictationAttributedTextRange_currentDictationAttributedTextRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (++*(*(*(a1 + 32) + 8) + 24) >= 5)
  {
    *a7 = 1;
  }

  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = [MEMORY[0x1E696B098] valueWithRange:{a5, a6}];
  [v8 addObject:v9];
}

- (id)_postfixTokensForDictationAttributedText:(id)a3 currentDictationAttributedTextRange:(_NSRange)a4 nextDictationAttributedTextRange:(_NSRange)a5
{
  location = a5.location;
  length = a4.length;
  v7 = a4.location;
  v8 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__214;
  v24 = __Block_byref_object_dispose__214;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v9 = v7 + length;
  v10 = location - v9;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __135__UITextInputController__postfixTokensForDictationAttributedText_currentDictationAttributedTextRange_nextDictationAttributedTextRange___block_invoke;
  v15[3] = &unk_1E7126920;
  v15[4] = &v16;
  v15[5] = &v20;
  [v8 enumerateSubstringsInRange:v9 options:v10 usingBlock:{3, v15}];
  if (!*(v17 + 6))
  {
    v11 = v21[5];
    v12 = [MEMORY[0x1E696B098] valueWithRange:{v9, v10}];
    [v11 addObject:v12];
  }

  v13 = v21[5];
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v13;
}

void __135__UITextInputController__postfixTokensForDictationAttributedText_currentDictationAttributedTextRange_nextDictationAttributedTextRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (++*(*(*(a1 + 32) + 8) + 24) >= 5)
  {
    *a7 = 1;
  }

  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = [MEMORY[0x1E696B098] valueWithRange:{a5, a6}];
  [v8 addObject:v9];
}

void __44__UITextInputController__userEditedTextInfo__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x1E696B098] valueWithRange:?];
    [v2 addObject:v3];
  }
}

void __44__UITextInputController__userEditedTextInfo__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v39 = a2;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) string];
  v10 = *(*(a1 + 56) + 8);
  v11 = [v39 rangeValue];
  v13 = [v8 _prefixTokensForDictationAttributedText:v9 lastDictationAttributedTextRange:*(v10 + 32) currentDictationAttributedTextRange:{*(v10 + 40), v11, v12}];
  [v7 addObjectsFromArray:v13];

  v14 = *(*(*(a1 + 64) + 8) + 40);
  v15 = [v7 reverseObjectEnumerator];
  v16 = [v15 allObjects];
  [v14 addObjectsFromArray:v16];

  v17 = [v39 rangeValue];
  v18 = *(*(a1 + 56) + 8);
  *(v18 + 32) = v17;
  *(v18 + 40) = v19;
  [*(*(*(a1 + 64) + 8) + 40) addObject:v39];
  if ([*(a1 + 48) count] - 1 == a3)
  {
    v20 = [v39 rangeValue];
    [v39 rangeValue];
    v22 = v21 + v20;
    v23 = [*(a1 + 40) string];
    v24 = [v23 length];

    if (v22 != v24)
    {
      v25 = [*(a1 + 40) string];
      v26 = [v25 length] - v22;

      v27 = *(*(*(a1 + 64) + 8) + 40);
      v28 = [MEMORY[0x1E696B098] valueWithRange:{v22, v26}];
      [v27 addObject:v28];
    }

    *a4 = 1;
  }

  else
  {
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = *(a1 + 32);
    v31 = [*(a1 + 40) string];
    v32 = [v39 rangeValue];
    v34 = v33;
    v35 = [*(a1 + 48) objectAtIndexedSubscript:a3 + 1];
    v36 = [v35 rangeValue];
    v38 = [v30 _postfixTokensForDictationAttributedText:v31 currentDictationAttributedTextRange:v32 nextDictationAttributedTextRange:{v34, v36, v37}];
    [v29 addObjectsFromArray:v38];

    [*(*(*(a1 + 64) + 8) + 40) addObjectsFromArray:v29];
  }
}

void __64__UITextInputController_metadataDictionariesForDictationResults__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v59[1] = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (!v8)
  {
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_30;
  }

  v9 = v8;
  v10 = *(*(a1 + 56) + 8);
  v12 = *(v10 + 40);
  v11 = (v10 + 40);
  if (v12 != v9)
  {
    objc_storeStrong(v11, a2);
    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = &stru_1EFB14550;

    v15 = [v9 objectForKey:@"insertion"];

    if (v15)
    {
      v16 = [v9 objectForKey:@"insertion"];
      [v9 removeObjectForKey:@"insertion"];
      v17 = [v9 objectForKey:@"insertions"];

      if (v17)
      {
        v18 = MEMORY[0x1E695DF70];
        v19 = [v9 objectForKey:@"insertions"];
        v20 = [v18 arrayWithArray:v19];

        [v20 addObject:v16];
      }

      else
      {
        v59[0] = v16;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
      }

      [v9 setObject:v20 forKey:@"insertions"];
    }

    v21 = [v9 objectForKey:@"deletion"];

    if (v21)
    {
      v22 = [v9 objectForKey:@"deletion"];
      [v9 removeObjectForKey:@"deletion"];
      v23 = [v9 objectForKey:@"deletions"];

      if (v23)
      {
        v24 = MEMORY[0x1E695DF70];
        v25 = [v9 objectForKey:@"deletions"];
        v26 = [v24 arrayWithArray:v25];

        [v26 addObject:v22];
      }

      else
      {
        v58 = v22;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
      }

      [v9 setObject:v26 forKey:@"deletions"];
    }

    if (([*(a1 + 32) containsObject:v9] & 1) == 0)
    {
      [*(a1 + 32) addObject:v9];
    }
  }

  v27 = *(*(a1 + 72) + 8);
  v28 = *(v27 + 32);
  if (v28 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([*(*(*(a1 + 64) + 8) + 40) length])
    {
      v29 = 1;
    }

    else
    {
      v29 = a3 == 0;
    }

    v30 = a4;
    v31 = a3;
    if (v29)
    {
      goto LABEL_26;
    }

    v32 = [*(*(*(a1 + 64) + 8) + 40) stringByAppendingString:@"*"];
    v33 = *(*(a1 + 64) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;

    goto LABEL_25;
  }

  v31 = *(v27 + 40) + v28;
  v35 = a3 - v31;
  if (a3 - v31 >= [UIDictationUtilities maxLoggableLengthOfInsertionWithDeletion:v9])
  {
    v36 = *(*(a1 + 72) + 8);
    v37 = *(v36 + 32);
    v38 = *(v36 + 40);
    v39 = [UIDictationUtilities maxLoggableLengthOfInsertionWithDeletion:v9];
    v40 = [*(a1 + 40) string];
    v41 = [v40 substringWithRange:{v38 + v37, v39}];

    v42 = *(*(*(a1 + 64) + 8) + 40);
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v35 - +[UIDictationUtilities maxLoggableLengthOfInsertionWithDeletion:](UIDictationUtilities, "maxLoggableLengthOfInsertionWithDeletion:", v9)}];
    v44 = [v42 stringByAppendingFormat:@"%@(%@*)", v41, v43];
    v45 = *(*(a1 + 64) + 8);
    v46 = *(v45 + 40);
    *(v45 + 40) = v44;

LABEL_25:
    v30 = a4;
    v31 = a3;
    goto LABEL_26;
  }

  v30 = v35 + a4;
LABEL_26:
  v47 = *(*(a1 + 72) + 8);
  *(v47 + 32) = a3;
  *(v47 + 40) = a4;
  v48 = *(*(*(a1 + 64) + 8) + 40);
  v49 = [*(a1 + 40) string];
  v50 = [v49 substringWithRange:{v31, v30}];
  v51 = [v48 stringByAppendingString:v50];
  v52 = *(*(a1 + 64) + 8);
  v53 = *(v52 + 40);
  *(v52 + 40) = v51;

  [v9 setObject:*(*(*(a1 + 64) + 8) + 40) forKey:@"fullText"];
  v54 = [v9 objectForKeyedSubscript:@"recognizedTextInfo"];
  v55 = *(a1 + 48);
  if (v54)
  {
    v56 = [v55 objectForKeyedSubscript:@"userEditedText"];
    [v54 setObject:v56 forKey:@"userEditedText"];

    v57 = [*(a1 + 48) objectForKeyedSubscript:@"userEditedTextRanges"];
    [v54 setObject:v57 forKey:@"userEditedTextRanges"];
  }

  else
  {
    v54 = [v55 mutableCopy];
  }

  [v9 setObject:v54 forKey:@"recognizedTextInfo"];

LABEL_30:
}

- (id)dictationAlternativesForSelectedText
{
  v3 = [(UITextInputController *)self selectedTextRange];
  v4 = [v3 start];
  v5 = [(UITextInputController *)self _rangeOfEnclosingWord:v4];

  v6 = [(UITextInputController *)self attributedTextInRange:v5];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__214;
  v15 = __Block_byref_object_dispose__214;
  v16 = 0;
  v7 = [v6 length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__UITextInputController_dictationAlternativesForSelectedText__block_invoke;
  v10[3] = &unk_1E71269C0;
  v10[4] = &v11;
  [v6 enumerateAttributesInRange:0 options:v7 usingBlock:{0x100000, v10}];
  v8 = [v12[5] alternativeStrings];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __61__UITextInputController_dictationAlternativesForSelectedText__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *off_1E70EC9F8;
  v9 = v3;
  v5 = [v3 objectForKey:*off_1E70EC9F8];

  if (v5)
  {
    v6 = [v9 objectForKeyedSubscript:v4];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)signalDictationInputEvent:(id)a3 insertedText:(id)a4
{
  v13 = a4;
  if (+[UIDictationController isRunning])
  {
    v5 = [(UITextInputController *)self _selectedText];
    v6 = [v5 length];

    v7 = +[UIDictationController sharedInstance];
    v8 = [v7 dictationTipController];
    v9 = v8;
    if (v6)
    {
      v10 = [(UITextInputController *)self _selectedText];
      [v9 signalDictationReplacementTip:v10];
    }

    else
    {
      [v8 signalDictationInsertionTip:v13];
    }

    v11 = +[UIDictationController sharedInstance];
    v12 = [v11 dictationTipController];
    [v12 recordDictationTipReplacementText:v13];
  }
}

- (void)signalDictationDeletionTip
{
  v25 = [MEMORY[0x1E69D9590] documentStateOfDocumentWithParagraph:self];
  v3 = [v25 selectedText];

  if (v3)
  {
    v4 = [v25 selectedText];
  }

  else
  {
    v5 = [v25 contextBeforeInput];
    v6 = [v5 _lastGrapheme];

    v7 = [v25 contextBeforeInput];
    v8 = [v25 contextBeforeInput];
    v4 = [v7 substringFromIndex:{objc_msgSend(v8, "length") - objc_msgSend(v6, "length")}];
  }

  v9 = +[UIDictationController activeInstance];
  v10 = [(UITextInputController *)self _selectedRange];
  [v9 markDictationTipDeletionEvent:v4 deletedTextRange:{v10, v11}];

  v12 = +[UIDictationController sharedInstance];
  if ([v12 consecutiveKeyboardDeleteEventCount] > 4)
  {
    v14 = 0;
  }

  else
  {
    v13 = [(UITextInputController *)self _selectedText];
    v14 = [v13 length] == 0;
  }

  if (+[UIDictationController isRunning]&& !v14)
  {
    v15 = [(UITextInputController *)self _selectedText];
    v16 = [v15 length];

    if (v16)
    {
      v17 = [(UITextInputController *)self _selectedText];
      v18 = [v17 length];
      v19 = [v25 string];
      v20 = [v19 length];

      v21 = +[UIDictationController sharedInstance];
      v22 = [v21 dictationTipController];
      v23 = v22;
      if (v18 == v20)
      {
        [v22 signalDictationClearAllTip];
      }

      else
      {
        v24 = [(UITextInputController *)self _selectedText];
        [v23 signalDictationDeletionTip:v24];
      }
    }

    else
    {
      v21 = +[UIDictationController sharedInstance];
      v23 = [v21 dictationTipController];
      [v23 signalDictationDeletionTip:v4];
    }
  }
}

- (void)signalDictationSelectionTip:(id)a3
{
  v10 = a3;
  if (+[UIDictationController isRunning])
  {
    v4 = [v10 start];
    v5 = [v10 end];
    v6 = [(UITextInputController *)self offsetFromPosition:v4 toPosition:v5];

    if (v6 >= 1)
    {
      v7 = +[UIDictationController sharedInstance];
      v8 = [v7 dictationTipController];
      v9 = [(UITextInputController *)self textInRange:v10];
      [v8 signalDictationSelectionTip:v9];
    }
  }
}

- (BOOL)_canHandleResponderAction:(SEL)a3
{
  v4 = 1;
  if (sel_cut_ != a3 && sel_copy_ != a3 && sel_paste_ != a3 && sel_pasteAndMatchStyle_ != a3 && sel_alignLeft_ != a3 && sel_alignCenter_ != a3 && sel_alignJustified_ != a3 && sel_alignRight_ != a3 && sel_promptForReplace_ != a3 && sel__promptForReplace_ != a3 && sel__transliterateChinese_ != a3 && sel_select_ != a3 && sel_selectAll_ != a3 && sel_makeTextWritingDirectionNatural_ != a3 && sel_makeTextWritingDirectionRightToLeft_ != a3 && sel_makeTextWritingDirectionLeftToRight_ != a3 && sel_replace_ != a3 && sel__insertDrawing_ != a3 && sel_captureTextFromCamera_ != a3 && sel_toggleBoldface_ != a3 && sel_toggleItalics_ != a3 && sel_toggleUnderline_ != a3 && sel_increaseSize_ != a3 && sel_decreaseSize_ != a3)
  {
    v4 = sel_showWritingTools_ == a3;
  }

  v5 = [(UITextInputController *)self _firstTextView];
  v6 = [v5 traitCollection];

  v7 = [v6 userInterfaceIdiom] != 6 || objc_msgSend(v6, "_presentationSemanticContext") != 3;
  v11 = sel__define_ == a3 || sel__translate_ == a3 || sel__addShortcut_ == a3 || sel__share_ == a3;
  v12 = v11 && v7;

  return v4 || v12;
}

- (BOOL)_shouldHandleResponderAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v7 = [(UITextInputController *)self hasText];
  if (sel_paste_ == a3 || sel_pasteAndMatchStyle_ == a3)
  {
    v9 = [(UITextInputController *)self isEditing];
    *(v55 + 24) = v9;
    if ([(UITextInputController *)self allowsEditingTextAttributes])
    {
LABEL_54:
      LOBYTE(v15) = *(v55 + 24);
      goto LABEL_55;
    }

    v10 = v55;
    if (*(v55 + 24) != 1)
    {
LABEL_51:
      *(v10 + 24) = 0;
      goto LABEL_54;
    }

    v11 = +[UIPasteboard generalPasteboard];
    v12 = [v11 hasStrings];
    *(v55 + 24) = v12;
LABEL_9:

    goto LABEL_54;
  }

  if (sel_copy_ == a3)
  {
    if (([(UITextInputController *)self isSecureTextEntry]& 1) != 0)
    {
LABEL_42:
      LOBYTE(v16) = 0;
LABEL_53:
      *(v55 + 24) = v16;
      goto LABEL_54;
    }

LABEL_52:
    [(UITextInputController *)self selectedRange];
    LOBYTE(v16) = v20 != 0;
    goto LABEL_53;
  }

  if (sel_cut_ == a3)
  {
    if (![(UITextInputController *)self isEditing]|| ([(UITextInputController *)self isSecureTextEntry]& 1) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_52;
  }

  if (sel_promptForReplace_ == a3 || sel__promptForReplace_ == a3 || sel__transliterateChinese_ == a3)
  {
    if ([(UITextInputController *)self isEditing])
    {
      if (([(UITextInputController *)self isSecureTextEntry]& 1) == 0)
      {
        [(UITextInputController *)self selectedRange];
        if (v17)
        {
          v18 = [(UITextInputController *)self _selectedAttributedText];
          v19 = [UIDictationMultilingualUtilities hasMultilingualAttributesForAttributedString:v18];

          if (v19)
          {
            LOBYTE(v15) = 1;
          }

          else
          {
            v26 = [(UITextInputController *)self _selectedText];
            v27 = [(UITextInputController *)self _shouldPerformUICalloutBarButtonReplaceAction:a3 forText:v26 checkAutocorrection:1];
            LOBYTE(v15) = v27;
            if (v27 && sel__transliterateChinese_ != a3)
            {
              v28 = [(UITextInputController *)self interactionAssistant];
              LOBYTE(v15) = [v28 hasReplacements];
            }
          }

          goto LABEL_55;
        }
      }
    }

    goto LABEL_93;
  }

  v13 = v7;
  if (sel_select_ == a3)
  {
    if (![(UITextInputController *)self isEditing]|| [(UITextInputController *)self isSecureTextEntry]& 1 | !v13)
    {
LABEL_50:
      v10 = v55;
      goto LABEL_51;
    }

LABEL_62:
    v11 = [(UITextInputController *)self _selectedText];
    v25 = [v11 length];
    *(v55 + 24) = v25 == 0;
    goto LABEL_9;
  }

  if (sel_selectAll_ == a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v6 sender];
      v23 = v22 == 0;
    }

    else
    {
      v23 = 0;
    }

    v16 = [(UITextInputController *)self isEditing]&& v13;
    if (v23 || (v16 & 1) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_62;
  }

  if (sel_makeTextWritingDirectionRightToLeft_ == a3 || sel_makeTextWritingDirectionLeftToRight_ == a3 || sel_makeTextWritingDirectionNatural_ == a3)
  {
    if ([(UITextInputController *)self allowsEditingTextAttributes])
    {
      v24 = [(UITextInputController *)self _textStorage];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __65__UITextInputController__shouldHandleResponderAction_withSender___block_invoke;
      v53[3] = &unk_1E71269E8;
      v53[4] = self;
      v53[5] = &v54;
      v53[6] = a3;
      [v24 coordinateReading:v53];
    }

    goto LABEL_54;
  }

  if (sel_replace_ == a3)
  {
    if ([(UITextInputController *)self isEditing])
    {
      LOBYTE(v16) = ([(UITextInputController *)self isSecureTextEntry]^ 1) & v13;
      goto LABEL_53;
    }

    goto LABEL_42;
  }

  if (sel__share_ == a3)
  {
    if (([(UITextInputController *)self isSecureTextEntry]& 1) == 0)
    {
      if (qword_1ED4A2340 != -1)
      {
        dispatch_once(&qword_1ED4A2340, &__block_literal_global_712);
      }

      v29 = [(UITextInputController *)self _selectedText];
      v30 = [v29 stringByTrimmingCharactersInSet:qword_1ED4A2338];

      if ([v30 length])
      {
        v31 = [(UITextInputController *)self _firstTextView];
        v32 = [v31 _canShowTextServiceForType:8];
        *(v55 + 24) = v32;

        goto LABEL_54;
      }
    }

    goto LABEL_93;
  }

  if (sel__define_ == a3)
  {
    if (([(UITextInputController *)self isSecureTextEntry]& 1) != 0)
    {
      goto LABEL_93;
    }

    v33 = [(UITextInputController *)self _firstTextView];
    v15 = [v33 _canShowTextServiceForType:2];

    if (!v15)
    {
      goto LABEL_55;
    }

LABEL_79:
    v14 = [(UITextInputController *)self _selectedText];
    LOBYTE(v15) = [v14 length] != 0;
    goto LABEL_80;
  }

  if (sel__translate_ == a3)
  {
    if (([(UITextInputController *)self isSecureTextEntry]& 1) != 0)
    {
      goto LABEL_93;
    }

    v34 = [(UITextInputController *)self _firstTextView];
    v15 = [v34 _canShowTextServiceForType:32];

    if (!v15)
    {
      goto LABEL_55;
    }

    goto LABEL_79;
  }

  if (sel__addShortcut_ == a3)
  {
    v35 = [_UITextServiceSession textServiceSessionForType:4];
    v36 = [v35 isDisplaying];

    if ((v36 & 1) == 0 && ([(UITextInputController *)self isSecureTextEntry]& 1) == 0)
    {
      [(UITextInputController *)self selectedRange];
      if (v37)
      {
        v38 = [(UITextInputController *)self _firstTextView];
        v15 = [v38 _canShowTextServiceForType:4];

        if (!v15)
        {
          goto LABEL_55;
        }

        if (TIEnabledInputModesAllowOneToManyShortcuts())
        {
          v39 = [(UITextInputController *)self _selectedText];
          v15 = [v39 _containsCJScripts];

          if (!v15)
          {
            goto LABEL_55;
          }

          v40 = [(UITextInputController *)self _firstTextView];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = [(UITextInputController *)self _firstTextView];
            v42 = [v41 _inPopover];

            if (v42)
            {
              goto LABEL_93;
            }
          }

          else
          {
          }

          v46 = +[UIDevice currentDevice];
          v47 = [v46 userInterfaceIdiom];

          if ((v47 & 0xFFFFFFFFFFFFFFFBLL) != 1 || (-[UITextInputController _firstTextView](self, "_firstTextView"), v48 = objc_claimAutoreleasedReturnValue(), [v48 window], v49 = objc_claimAutoreleasedReturnValue(), -[UITextInputController _firstTextView](self, "_firstTextView"), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v50, "keyboardSceneDelegate"), v51 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v51, "containerWindow"), v52 = objc_claimAutoreleasedReturnValue(), v52, v51, v50, v49, v48, v49 != v52))
          {
            *(v55 + 24) = 1;
            goto LABEL_54;
          }
        }
      }
    }

LABEL_93:
    LOBYTE(v15) = 0;
    goto LABEL_55;
  }

  if (sel_toggleBoldface_ == a3 || sel_toggleItalics_ == a3 || sel_toggleUnderline_ == a3 || sel_alignLeft_ == a3 || sel_alignRight_ == a3 || sel_alignCenter_ == a3 || sel_alignJustified_ == a3 || sel_increaseSize_ == a3 || sel_decreaseSize_ == a3)
  {
    if ([(UITextInputController *)self isEditing])
    {
      LOBYTE(v15) = [(UITextInputController *)self allowsEditingTextAttributes];
      goto LABEL_55;
    }

    goto LABEL_93;
  }

  if (sel__insertDrawing_ == a3)
  {
    if ([(UITextInputController *)self isEditing])
    {
      v43 = [(UITextInputController *)self _firstTextView];
      if (objc_opt_respondsToSelector())
      {
        v44 = [(UITextInputController *)self _firstTextView];
        LOBYTE(v15) = [v44 _canInsertDrawing];
      }

      else
      {
        LOBYTE(v15) = 0;
      }

      goto LABEL_55;
    }

    goto LABEL_93;
  }

  if (sel_captureTextFromCamera_ != a3)
  {
    if (sel_showWritingTools_ == a3)
    {
      v14 = [(UITextInputController *)self _firstTextView];
      LOBYTE(v15) = [v14 _shouldDisplayWritingToolsCalloutBarItem];
LABEL_80:

      goto LABEL_55;
    }

    goto LABEL_50;
  }

  if (+[UIKeyboardCameraSession isEnabled]&& [(UITextInputController *)self isEditable])
  {
    [(UITextInputController *)self selectedRange];
    LOBYTE(v15) = v45 == 0;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  if (+[UIKeyboard isModelessActive])
  {
    v14 = +[UIDictationController activeInstance];
    LOBYTE(v15) = v15 & ([v14 shouldSuppressSoftwareKeyboard] ^ 1);
    goto LABEL_80;
  }

LABEL_55:
  _Block_object_dispose(&v54, 8);

  return v15 & 1;
}

void __65__UITextInputController__shouldHandleResponderAction_withSender___block_invoke(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [off_1E70ECB88 defaultWritingDirectionForLanguage:0];
  v4 = [*(a1 + 32) typingAttributes];
  v5 = *off_1E70EC988;
  v6 = [v4 objectForKey:*off_1E70EC988];

  if ([v24 length] && !v6)
  {
    v7 = [v24 string];
    v8 = [*(a1 + 32) selectedRange];
    v10 = [v7 paragraphRangeForRange:{v8, v9}];
    v12 = v11;

    if (!v12)
    {
      v6 = 0;
      goto LABEL_11;
    }

    v6 = [v24 attribute:v5 atIndex:v10 effectiveRange:0];
  }

  if (v6 && [v6 alignment] != 1)
  {
    v13 = [v6 baseWritingDirection];
    if (v13 == -1)
    {
      v14 = [v24 string];
      v3 = [v14 _isNaturallyRTL];
    }

    else
    {
      v3 = v13;
    }
  }

LABEL_11:
  if ([*(a1 + 32) isEditing])
  {
    v15 = [*(a1 + 32) keyboardType];
    if (v15 <= 0xB)
    {
      v16 = 0x6CFu >> v15;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v16 & 1;
  v17 = *(*(a1 + 40) + 8);
  if (*(v17 + 24) == 1)
  {
    IsRightToLeftInputModeActive = UIKeyboardIsRightToLeftInputModeActive();
    if (v3 == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = IsRightToLeftInputModeActive;
    }

    v17 = *(*(a1 + 40) + 8);
  }

  else
  {
    v19 = 0;
  }

  *(v17 + 24) = v19;
  v20 = *(*(a1 + 40) + 8);
  if (*(v20 + 24) == 1)
  {
    v21 = *(a1 + 48);
    v22 = v21 == sel_makeTextWritingDirectionRightToLeft_ && v3 != 1 || v21 == sel_makeTextWritingDirectionLeftToRight_ && v3 || v21 == sel_makeTextWritingDirectionNatural_ && v3 != -1;
  }

  else
  {
    v22 = 0;
  }

  *(v20 + 24) = v22;
}

void __65__UITextInputController__shouldHandleResponderAction_withSender___block_invoke_2()
{
  v0 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  v1 = [MEMORY[0x1E696AB08] controlCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  v5 = -4;
  v2 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v5 length:1];
  [v0 addCharactersInString:v2];
  v3 = [v0 copy];
  v4 = qword_1ED4A2338;
  qword_1ED4A2338 = v3;
}

- (id)_selectedAttributedText
{
  v3 = [(UITextInputController *)self _textStorage];
  v4 = [(UITextInputController *)self selectedRange];
  v6 = [v3 attributedSubstringFromRange:{v4, v5}];

  return v6;
}

- (void)selectAll
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __34__UITextInputController_selectAll__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [(UITextInputController *)self _coordinateSelectionChange:v2];
}

void __34__UITextInputController_selectAll__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  v2 = [WeakRetained documentRange];
  [*(a1 + 32) setSelectedTextRange:v2];
}

- (void)replace:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"UITextInputController.m" lineNumber:4493 description:0];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x3010000000;
  v38 = 0;
  v39 = 0;
  v37 = "";
  v38 = [(UITextInputController *)self _selectedRange];
  v39 = v6;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__214;
  v32 = __Block_byref_object_dispose__214;
  v33 = 0;
  v7 = [(UITextInputController *)self _textStorage];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __33__UITextInputController_replace___block_invoke;
  v24[3] = &unk_1E7126A10;
  v26 = &v34;
  v8 = v5;
  v25 = v8;
  v27 = &v28;
  [v7 coordinateReading:v24];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v10 = [v9 replacementText];
  }

  else
  {
    v10 = 0;
  }

  textCheckingController = self->_textCheckingController;
  v12 = [(UITextInputController *)self selectedTextRange];
  [(UITextCheckingController *)textCheckingController willReplaceTextInRange:v12 withText:v10];

  v13 = +[UIKeyboardImpl sharedInstance];
  [v13 replaceText:v8];

  if (v29[5])
  {
    if (v10)
    {
      v14 = v35[4];
      v15 = [v10 length];
      v16 = [(UITextInputController *)self _textStorage];
      v17 = [v16 length];

      if (v15 + v14 <= v17)
      {
        v18 = [(UITextInputController *)self _textStorage];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __33__UITextInputController_replace___block_invoke_3;
        v20[3] = &unk_1E7126A38;
        v22 = &v28;
        v23 = &v34;
        v21 = v10;
        [v18 coordinateEditing:v20];
      }
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
}

void __33__UITextInputController_replace___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 32);
  if (v4 < [v3 length] && (objc_msgSend(v3, "attribute:atIndex:effectiveRange:", @"_UITextInputDictationResultMetadata", *(*(*(a1 + 40) + 8) + 32), 0), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [v7 valueForKey:@"alternativesSelectedCount"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "intValue") + 1}];
        [v7 setObject:v9 forKey:@"alternativesSelectedCount"];

        v10 = [v3 attribute:*off_1E70EC9F8 atIndex:*(*(*(a1 + 40) + 8) + 32) effectiveRange:0];
        v11 = [v10 alternativeStrings];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __33__UITextInputController_replace___block_invoke_2;
        v12[3] = &unk_1E70FF4D0;
        v13 = *(a1 + 32);
        v14 = v7;
        [v11 enumerateObjectsUsingBlock:v12];

        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
      }
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }
}

void __33__UITextInputController_replace___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = *(a1 + 32);
  v8 = [v7 replacementText];
  v9 = [v8 isEqualToString:v12];

  if (v9)
  {
    v10 = *(a1 + 40);
    v11 = [v7 originalText];
    [UIDictationUtilities logSpeechAlternativeReplacement:v10 originalText:v11 replacementText:v12 index:a3];

    *a4 = 1;
  }
}

void __33__UITextInputController_replace___block_invoke_3(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = *(*(a1[5] + 8) + 40);
  v4 = *(*(a1[6] + 8) + 32);
  v5 = a2;
  [v5 addAttribute:@"_UITextInputDictationResultMetadata" value:v3 range:{v4, objc_msgSend(v2, "length")}];
}

- (BOOL)_isSecureTextEntry
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(UITextInputController *)self isSecureTextEntry];
}

- (int64_t)writingDirectionAtPosition:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v6 = [WeakRetained baseWritingDirectionAtPosition:v4];

  return v6;
}

- (void)makeTextWritingDirectionNatural:(id)a3
{
  v4 = [(UITextInputController *)self selectedTextRange];
  [(UITextInputController *)self setBaseWritingDirection:-1 forRange:v4];
}

- (void)makeTextWritingDirectionRightToLeft:(id)a3
{
  v4 = [(UITextInputController *)self selectedTextRange];
  [(UITextInputController *)self setBaseWritingDirection:1 forRange:v4];
}

- (void)makeTextWritingDirectionLeftToRight:(id)a3
{
  v4 = [(UITextInputController *)self selectedTextRange];
  [(UITextInputController *)self setBaseWritingDirection:0 forRange:v4];
}

- (void)removeTextStylingFromString:(id)a3
{
  v5 = a3;
  if (![(UITextInputController *)self allowsEditingTextAttributes])
  {
    v4 = [v5 length];
    [v5 removeAttribute:*off_1E70EC918 range:{0, v4}];
    [v5 removeAttribute:*off_1E70EC988 range:{0, v4}];
    [v5 removeAttribute:*off_1E70EC920 range:{0, v4}];
    [v5 removeAttribute:*off_1E70EC8D0 range:{0, v4}];
    [v5 removeAttribute:*off_1E70EC8D8 range:{0, v4}];
    [v5 removeAttribute:*off_1E70EC9B0 range:{0, v4}];
  }
}

+ (BOOL)_shouldUseStandardTextScaling:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 usesStandardTextScaling];
  }

  else
  {
    v4 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 traitCollection];
    v6 = [v5 userInterfaceIdiom] == 5;
  }

  else
  {
    v6 = 0;
  }

  return (v4 | v6) & 1;
}

- (void)_copySelectionToClipboard
{
  v3 = +[UIPasteboard generalPasteboard];
  [(UITextInputController *)self _copySelectionToClipboard:v3];
}

- (void)_copySelectionToClipboard:(id)a3
{
  v4 = a3;
  v5 = [(UITextInputController *)self _firstTextView];
  v6 = [v5 _dataOwnerForCopy];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__UITextInputController__copySelectionToClipboard___block_invoke;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [UIPasteboard _performAsDataOwner:v6 block:v8];
}

void __51__UITextInputController__copySelectionToClipboard___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = [*(a1 + 32) selectedRanges];
  v15 = [v2 initWithCapacity:{objc_msgSend(v3, "count")}];

  v4 = [*(a1 + 32) selectedRanges];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [*(a1 + 32) selectedRanges];
      v8 = [v7 objectAtIndexedSubscript:v6];
      v9 = [v8 rangeValue];
      v11 = v10;

      v12 = [*(a1 + 32) _itemProviderForCopyingRange:{v9, v11}];
      if (v12)
      {
        [v15 addObject:v12];
      }

      ++v6;
      v13 = [*(a1 + 32) selectedRanges];
      v14 = [v13 count];
    }

    while (v14 > v6);
  }

  [*(a1 + 40) setItemProviders:v15];
}

- (id)_itemProviderForCopyingRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v7 = dyld_program_sdk_at_least();
  if (([(UITextInputController *)self isSecureTextEntry]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7 ^ 1;
    v10 = [(UITextInputController *)self _firstTextView];
    v11 = [UITextInputController _shouldUseStandardTextScaling:v10];

    v12 = !v11;
    v13 = [(UITextInputController *)self _textStorage];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __54__UITextInputController__itemProviderForCopyingRange___block_invoke;
    v21 = &unk_1E7126A60;
    v24 = location;
    v25 = length;
    v27 = v9;
    v22 = self;
    v14 = v6;
    v23 = v14;
    v26 = v12;
    [v13 coordinateReading:&v18];

    v15 = [v14 registeredTypeIdentifiers];
    if ([v15 count])
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v8 = v16;
  }

  return v8;
}

void __54__UITextInputController__itemProviderForCopyingRange___block_invoke(uint64_t a1, void *a2)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v26 = [v3 dictionary];
  v5 = [v4 attributedSubstringFromRange:{*(a1 + 48), *(a1 + 56)}];

  v6 = [v5 mutableCopy];
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) removeTextStylingFromString:v6];
  }

  v7 = [v6 length];
  if ([*(a1 + 32) allowsEditingTextAttributes] & 1) != 0 || (*(a1 + 72))
  {
    v8 = *off_1E70EC8F8;
    v37 = *off_1E70EC8F8;
    v38[0] = *off_1E70EC940;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v10 = [v6 dataFromRange:0 documentAttributes:v7 error:{v9, 0}];

    if (v10)
    {
      v11 = *(a1 + 40);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __54__UITextInputController__itemProviderForCopyingRange___block_invoke_2;
      v31[3] = &unk_1E70F6AD0;
      v32 = v10;
      [v11 registerDataRepresentationForTypeIdentifier:@"Apple Web Archive pasteboard type" visibility:0 loadHandler:v31];
    }

    v12 = *off_1E70EC998;
    v13 = *off_1E70ECAB8;
    v35[0] = v8;
    v35[1] = v13;
    v36[0] = v12;
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 64)];
    v36[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v16 = [v6 dataFromRange:0 documentAttributes:v7 error:{v15, 0}];

    if (v16)
    {
      v17 = *(a1 + 40);
      v18 = [*MEMORY[0x1E6982DC0] identifier];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __54__UITextInputController__itemProviderForCopyingRange___block_invoke_3;
      v29[3] = &unk_1E70F6AD0;
      v19 = v16;
      v30 = v19;
      [v17 registerDataRepresentationForTypeIdentifier:v18 visibility:0 loadHandler:v29];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v8 = *off_1E70EC8F8;
  }

  v34[0] = *off_1E70EC990;
  v20 = *off_1E70EC8E0;
  v33[0] = v8;
  v33[1] = v20;
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:4];
  v34[1] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v23 = [v6 dataFromRange:0 documentAttributes:v7 error:{v22, 0}];

  if (v23)
  {
    v24 = *(a1 + 40);
    v25 = [*MEMORY[0x1E6983060] identifier];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __54__UITextInputController__itemProviderForCopyingRange___block_invoke_4;
    v27[3] = &unk_1E70F6AD0;
    v28 = v23;
    [v24 registerDataRepresentationForTypeIdentifier:v25 visibility:0 loadHandler:v27];
  }
}

- (void)cut:(id)a3
{
  [(UITextInputController *)self _copySelectionToClipboard];
  [(UITextInputController *)self changingContextWithTrigger:@"cut"];
  [(UITextInputController *)self _updateRangeForSmartDelete];
  v4 = _UIKitBundle();
  v5 = [v4 localizedStringForKey:@"CUT_FOR_UNDO" value:@"Cut" table:@"Localizable"];
  v6 = [(UITextInputController *)self selectedRanges];
  [(UITextInputController *)self registerUndoOperationForType:3 actionName:v5 affectedRanges:v6 replacementText:&stru_1EFB14550];

  [(UITextInputController *)self _insertText:&stru_1EFB14550 fromKeyboard:0];
}

- (void)_pasteAndMatchStyle:(BOOL)a3
{
  [(UITextInputController *)self changingContextWithTrigger:@"paste"];
  v5 = [(UITextInputController *)self _firstTextView];
  v6 = [v5 _dataOwnerForPaste];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__UITextInputController__pasteAndMatchStyle___block_invoke;
  v7[3] = &unk_1E70F35E0;
  v7[4] = self;
  v8 = a3;
  [UIPasteboard _performAsDataOwner:v6 block:v7];
}

void __45__UITextInputController__pasteAndMatchStyle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[UIPasteboard generalPasteboard];
  [v2 _pasteFromPasteboard:v3 andMatchStyle:*(a1 + 40)];
}

- (BOOL)_pasteFromPasteboard:(id)a3 andMatchStyle:(BOOL)a4
{
  v4 = a4;
  v38[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 itemProviders];

  if (!v7)
  {
    if (![(UITextInputController *)self allowsEditingTextAttributes])
    {
      v18 = 0;
      v13 = 0;
      goto LABEL_17;
    }

    v10 = [(UITextInputController *)self _firstTextView];
    v11 = [UITextInputController _shouldUseStandardTextScaling:v10];

    v12 = [*MEMORY[0x1E6982DC0] identifier];
    v13 = [v6 dataForPasteboardType:v12];

    v14 = *off_1E70EC998;
    v15 = v14;
    if (v13)
    {
      if (v11)
      {
        v16 = *off_1E70EC8F0;
        v37[0] = @"Timeout";
        v37[1] = v16;
        v38[0] = &unk_1EFE2EFA8;
        v38[1] = v14;
        v37[2] = *off_1E70EC9E8;
        v38[2] = &unk_1EFE337F0;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
LABEL_12:
        v34 = 0;
        v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithData:v13 options:v17 documentAttributes:0 error:&v34];
        v18 = v34;
        if (v4)
        {
          v23 = objc_alloc(MEMORY[0x1E696AAB0]);
          v24 = [v22 string];
          v25 = [v23 initWithString:v24];

          v22 = v25;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v13 = [v6 valueForPasteboardType:@"Apple Web Archive pasteboard type"];
      v19 = *off_1E70EC940;

      if (v13)
      {
LABEL_11:
        v21 = *off_1E70EC8F0;
        v35[0] = @"Timeout";
        v35[1] = v21;
        v36[0] = &unk_1EFE2EFA8;
        v36[1] = v19;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
        v15 = v19;
        goto LABEL_12;
      }

      v20 = [*MEMORY[0x1E6982F90] identifier];
      v13 = [v6 valueForPasteboardType:v20];

      v15 = *off_1E70EC9A0;
      if (!v13)
      {
        v13 = [v6 valueForPasteboardType:*off_1E70EC900];
        if (v13 && (v31 = [[off_1E70ECB60 alloc] initWithData:v13]) != 0)
        {
          v32 = v31;
          v22 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v31];
        }

        else
        {
          v32 = [v6 image];
          if (v32)
          {
            v33 = objc_alloc_init(off_1E70ECBA8);
            [v33 setImage:v32];
          }

          v22 = 0;
        }

        v18 = 0;
LABEL_15:

        if (v22)
        {
          v26 = 1;
          goto LABEL_19;
        }

LABEL_17:
        v27 = [v6 string];

        if (!v27)
        {
          v9 = 0;
          goto LABEL_21;
        }

        v28 = objc_alloc(MEMORY[0x1E696AAB0]);
        v29 = [v6 string];
        v22 = [v28 initWithString:v29];

        v26 = 0;
LABEL_19:
        [(UITextInputController *)self _pasteAttributedString:v22 pasteAsRichText:v26];

        v9 = 1;
LABEL_21:

        goto LABEL_22;
      }
    }

    v19 = v15;
    goto LABEL_11;
  }

  v8 = [v6 itemProviders];
  [(UITextInputController *)self pasteItemProviders:v8 matchesStyle:v4];

  v9 = 1;
LABEL_22:

  return v9;
}

- (void)pasteItemProviders:(id)a3 matchesStyle:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(UITextInputController *)self _pasteController];
  v7 = [(UITextInputController *)self selectedTextRange];
  v8 = [v7 start];

  if (!v8)
  {
    v8 = [(UITextInputController *)self beginningOfDocument];
  }

  v9 = [(UITextInputController *)self textRangeFromPosition:v8 toPosition:v8];
  v10 = [v6 beginPastingItems:v11 toRange:v9 delegate:0 matchesTextStyles:v4];
}

- (id)_attributedStringForInsertionOfAttributedString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(&self->_tiFlags + 1))
  {
    v6 = [v4 mutableCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained textInput:self prepareAttributedTextForInsertion:v6];

    v5 = v6;
  }

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 smartInsertDeleteIsEnabled];

  if (v9)
  {
    v10 = [MEMORY[0x1E69D96E0] traitsForUITextInputTraits:self->_textInputTraits];
    v11 = [objc_alloc(MEMORY[0x1E69D9698]) initWithTextInputTraits:v10];
    v12 = [MEMORY[0x1E69D9590] documentStateOfDocumentWithParagraph:self];
    v13 = [v5 string];
    v28 = 0;
    v29 = 0;
    [v11 smartInsertForDocumentState:v12 stringToInsert:v13 outBeforeString:&v29 outAfterString:&v28];
    v14 = v29;
    v15 = v28;

    if ((*(&self->_tiFlags + 1) & 4) != 0)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      v17 = [v16 isSingleLineDocument];

      if (v17)
      {
        if ([v14 length])
        {
          v18 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1EFB14550];

          v14 = v18;
        }

        if ([v15 length])
        {
          v19 = [v15 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1EFB14550];

          v15 = v19;
        }
      }
    }

    if ([v14 length] || objc_msgSend(v15, "length"))
    {
      v20 = [v5 mutableCopy];
      if ([v14 length])
      {
        if ([v20 length])
        {
          v21 = [v20 attributesAtIndex:0 effectiveRange:0];
          v22 = [v21 mutableCopy];

          [v22 removeObjectForKey:*off_1E70EC8C8];
          [v22 removeObjectForKey:*off_1E70ECAA8];
          [v22 removeObjectForKey:*off_1E70EC8C0];
        }

        else
        {
          v22 = 0;
        }

        v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v14 attributes:v22];
        [v20 insertAttributedString:v23 atIndex:0];
      }

      if ([v15 length])
      {
        if ([v20 length])
        {
          v24 = [v20 attributesAtIndex:objc_msgSend(v20 effectiveRange:{"length") - 1, 0}];
          v25 = [v24 mutableCopy];

          [v25 removeObjectForKey:*off_1E70EC8C8];
          [v25 removeObjectForKey:*off_1E70ECAA8];
          [v25 removeObjectForKey:*off_1E70EC8C0];
        }

        else
        {
          v25 = 0;
        }

        v26 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15 attributes:v25];
        [v20 appendAttributedString:v26];
      }

      v5 = v20;
    }
  }

  return v5;
}

- (void)_pasteAttributedString:(id)a3 pasteAsRichText:(BOOL)a4
{
  v4 = a4;
  v6 = [(UITextInputController *)self _attributedStringForInsertionOfAttributedString:a3];
  v7 = [(UITextInputController *)self _attributedStringWithContentAwareWritingDirectionsFromAttributedString:v6];

  [(UITextInputController *)self _pasteRawAttributedString:v7 asRichText:v4];
}

- (void)_pasteAttributedString:(id)a3 toRange:(id)a4 completion:(id)a5
{
  v19 = a4;
  v8 = a5;
  v9 = [(UITextInputController *)self _attributedStringForInsertionOfAttributedString:a3];
  v10 = [(UITextInputController *)self _attributedStringWithContentAwareWritingDirectionsFromAttributedString:v9];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained keyboardSceneDelegate];
  v13 = objc_loadWeakRetained(&self->_firstTextView);
  [v12 _beginPinningInputViewsOnBehalfOfResponder:v13];

  [(UITextInputController *)self _pasteRawAttributedString:v10 asRichText:1];
  [v12 _stopPinningInputViewsOnBehalfOfResponder:WeakRetained];
  if (v8)
  {
    v14 = [v19 start];
    v15 = [v19 start];
    v16 = -[UITextInputController positionFromPosition:offset:](self, "positionFromPosition:offset:", v15, [v10 length]);
    if (v16)
    {
      v17 = [(UITextInputController *)self textRangeFromPosition:v14 toPosition:v16];
    }

    else
    {
      v18 = [v19 end];
      v17 = [(UITextInputController *)self textRangeFromPosition:v14 toPosition:v18];
    }

    v8[2](v8, v17, v10);
  }
}

- (id)_attributedStringWithContentAwareWritingDirectionsFromAttributedString:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v3 mutableCopy];
    v5 = *off_1E70EC988;
    v6 = [v3 length];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __96__UITextInputController__attributedStringWithContentAwareWritingDirectionsFromAttributedString___block_invoke;
    v9[3] = &unk_1E7126A88;
    v7 = v4;
    v10 = v7;
    [v3 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, v9}];
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

void __96__UITextInputController__attributedStringWithContentAwareWritingDirectionsFromAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = [a2 mutableCopy];
    [v8 setBaseWritingDirection:-1];
    v7 = *off_1E70EC988;
    [*(a1 + 32) removeAttribute:*off_1E70EC988 range:{a3, a4}];
  }

  else
  {
    v8 = objc_opt_new();
    [v8 setBaseWritingDirection:-1];
    v7 = *off_1E70EC988;
  }

  [*(a1 + 32) addAttribute:v7 value:v8 range:{a3, a4}];
}

- (void)_pasteRawAttributedString:(id)a3 asRichText:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  v6 = _UIKitBundle();
  v7 = [v6 localizedStringForKey:@"PASTE_FOR_UNDO" value:@"Paste" table:@"Localizable"];
  v8 = [(UITextInputController *)self selectedRanges];
  v9 = [v17 string];
  [(UITextInputController *)self registerUndoOperationForType:3 actionName:v7 affectedRanges:v8 replacementText:v9];

  v10 = [(UITextInputController *)self _selectedRange];
  v12 = v11;
  v13 = [v17 string];
  LODWORD(v10) = [(UITextInputController *)self _delegateShouldChangeTextInRange:v10 replacementText:v12, v13];

  if (v10)
  {
    v14 = [(UITextInputController *)self _selectedRange];
    [(UITextInputController *)self _rangeAfterCancelDictationIfNecessaryForChangeInRange:v14, v15];
    if (v4)
    {
      [(UITextInputController *)self _insertAttributedText:v17 fromKeyboard:0];
    }

    else
    {
      v16 = [v17 string];
      [(UITextInputController *)self _insertText:v16 fromKeyboard:0];
    }
  }
}

- (void)_pasteDelegateWillPasteText:(id)a3 toTextRange:(id)a4
{
  if ((*(&self->_tiFlags + 1) & 0x40) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(UITextInputController *)self delegate];
    [v9 _textInput:self pasteDelegateWillPasteText:v8 toTextRange:v7];
  }
}

- (void)_pasteDelegateDidPasteText:(id)a3 toTextRange:(id)a4
{
  if ((*(&self->_tiFlags + 1) & 0x80) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(UITextInputController *)self delegate];
    [v9 _textInput:self pasteDelegateDidPasteText:v8 toTextRange:v7];
  }
}

- (void)_adjustSizeByIncreasing:(BOOL)a3
{
  v3 = a3;
  if ([(UITextInputController *)self allowsEditingTextAttributes])
  {
    v5 = _UIKitBundle();
    v6 = v5;
    if (v3)
    {
      v7 = @"Bigger";
    }

    else
    {
      v7 = @"Smaller";
    }

    v8 = [v5 localizedStringForKey:v7 value:v7 table:@"Localizable"];

    v9 = [(UITextInputController *)self selectedRanges];
    [(UITextInputController *)self registerUndoOperationForType:1 actionName:v8 affectedRanges:v9 replacementText:0];

    [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__214;
    v30 = __Block_byref_object_dispose__214;
    v31 = 0;
    v10 = [(UITextInputController *)self _textStorage];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __49__UITextInputController__adjustSizeByIncreasing___block_invoke;
    v25[3] = &unk_1E71267E8;
    v25[4] = self;
    v25[5] = &v26;
    [v10 coordinateReading:v25];

    v11 = [v27[5] fontDescriptor];
    [v11 pointSize];
    v13 = 0.862068966;
    if (v3)
    {
      v13 = 1.16;
    }

    v14 = [off_1E70ECC18 fontWithDescriptor:v11 size:{fmax(v13 * v12, 7.0)}];
    v15 = [(UITextInputController *)self _selectedRange];
    v17 = v16;
    v18 = [(UITextInputController *)self _textStorage];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__UITextInputController__adjustSizeByIncreasing___block_invoke_2;
    v20[3] = &unk_1E7126AD8;
    v20[4] = self;
    v19 = v14;
    v21 = v19;
    v22 = v15;
    v23 = v17;
    v24 = v3;
    [v18 coordinateEditing:v20];

    [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0];
    _Block_object_dispose(&v26, 8);
  }
}

void __49__UITextInputController__adjustSizeByIncreasing___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) _selectedRange];
  if (v4 && v3 < [v8 length])
  {
    v5 = [v8 attribute:*off_1E70EC918 atIndex:objc_msgSend(*(a1 + 32) effectiveRange:{"_selectedRange"), 0}];
  }

  else
  {
    v5 = [*(a1 + 32) _fallbackFont];
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __49__UITextInputController__adjustSizeByIncreasing___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _addToTypingAttributes:*off_1E70EC918 value:*(a1 + 40)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__UITextInputController__adjustSizeByIncreasing___block_invoke_3;
  v7[3] = &unk_1E7126AB0;
  v10 = *(a1 + 64);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = v3;
  [v6 enumerateAttributesInRange:v5 options:v4 usingBlock:{0x100000, v7}];
}

void __49__UITextInputController__adjustSizeByIncreasing___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = xmmword_18A65B640;
  BYTE8(v4) = *(a1 + 64);
  v3 = [*(a1 + 32) _attributesForApplyingFormattingModification:&v4 withAttributes:a2 paragraphStyle:0 forTypingAttributes:0];
  if (v3)
  {
    [*(a1 + 40) addAttributes:v3 range:{*(a1 + 48), *(a1 + 56)}];
  }
}

- (void)updateTextAttributesWithConversionHandler:(id)a3
{
  v4 = a3;
  if ([(UITextInputController *)self allowsEditingTextAttributes])
  {
    [(UITextInputController *)self _selectedRange];
    if (v5)
    {
      v6 = _UIKitBundle();
      v7 = [v6 localizedStringForKey:@"Set Font" value:@"Set Font" table:@"Localizable"];
      v8 = [(UITextInputController *)self selectedRanges];
      [(UITextInputController *)self registerUndoOperationForType:1 actionName:v7 affectedRanges:v8 replacementText:0];

      [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
      v9 = [(UITextInputController *)self _selectedRange];
      v11 = v10;
      v12 = [(UITextInputController *)self _fallbackFont];
      v13 = [(UITextInputController *)self _textStorage];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __67__UITextInputController_updateTextAttributesWithConversionHandler___block_invoke;
      v15[3] = &unk_1E7126B28;
      v19 = v9;
      v20 = v11;
      v16 = v12;
      v17 = self;
      v18 = v4;
      v14 = v12;
      [v13 coordinateEditing:v15];

      [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0];
    }
  }
}

void __67__UITextInputController_updateTextAttributesWithConversionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__UITextInputController_updateTextAttributesWithConversionHandler___block_invoke_2;
  v8[3] = &unk_1E7126B00;
  v9 = *(a1 + 32);
  v4 = *(a1 + 48);
  v11 = v3;
  v12 = v4;
  v10 = *(a1 + 40);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = v3;
  [v7 enumerateAttributesInRange:v6 options:v5 usingBlock:{0x100000, v8}];
}

void __67__UITextInputController_updateTextAttributesWithConversionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *off_1E70EC918;
  v9 = [v7 valueForKey:*off_1E70EC918];

  v10 = v7;
  if (!v9)
  {
    v10 = [v7 mutableCopy];
    [v10 setObject:*(a1 + 32) forKey:v8];
  }

  v13 = xmmword_18A65B630;
  v11 = (*(*(a1 + 56) + 16))(*(a1 + 56), v10);
  v12 = [*(a1 + 40) _attributesForApplyingFormattingModification:&v13 withAttributes:v11 paragraphStyle:0 forTypingAttributes:0];
  [*(a1 + 48) setAttributes:v12 range:{a3, a4}];
  [*(a1 + 48) removeAttribute:*off_1E70EC978 range:{a3, a4}];
}

- (void)select:(id)a3
{
  v3 = [(UITextInputController *)self interactionAssistant];
  [v3 selectWord];
}

- (void)selectAll:(id)a3
{
  v4 = a3;
  v5 = [(UITextInputController *)self interactionAssistant];
  [v5 selectAll:v4];
}

- (void)_promptForReplace:(id)a3
{
  v3 = [(UITextInputController *)self interactionAssistant];
  [v3 scheduleReplacements];
}

- (void)_transliterateChinese:(id)a3
{
  v3 = [(UITextInputController *)self interactionAssistant];
  [v3 scheduleChineseTransliteration];
}

- (void)_share:(id)a3
{
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(UITextInputController *)self _removeShareController];
  }

  v6 = [(UITextInputController *)self _firstTextView];
  v7 = [_UITextServiceSessionContext sessionContextForType:8 withTextInput:v6];
  v8 = [v6 _showServiceForType:8 withContext:v7];
  shareSession = self->_shareSession;
  self->_shareSession = v8;

  v10 = self->_shareSession;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__UITextInputController__share___block_invoke;
  v11[3] = &unk_1E71253D8;
  v11[4] = self;
  [(_UITextServiceSession *)v10 setDismissedHandler:v11];
}

void __32__UITextInputController__share___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;
}

- (void)_define:(id)a3
{
  v5 = a3;
  if (self->_lookupSession)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UITextInputController.m" lineNumber:5193 description:@"Shouldn't have a lookup session"];
  }

  v6 = [(UITextInputController *)self _firstTextView];
  v7 = [_UITextServiceSessionContext sessionContextForType:16 withTextInput:v6];
  v8 = [v6 _showServiceForType:16 withContext:v7];
  lookupSession = self->_lookupSession;
  self->_lookupSession = v8;

  objc_initWeak(&location, self);
  v10 = self->_lookupSession;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __33__UITextInputController__define___block_invoke;
  v12[3] = &unk_1E7126B50;
  objc_copyWeak(&v13, &location);
  [(_UITextServiceSession *)v10 setDismissedHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __33__UITextInputController__define___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[9];
    WeakRetained[9] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (void)_translate:(id)a3
{
  v5 = a3;
  if (self->_translateSession)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UITextInputController.m" lineNumber:5209 description:@"Shouldn't have translate session"];
  }

  v6 = [(UITextInputController *)self _firstTextView];
  v7 = [_UITextServiceSessionContext sessionContextForType:32 withTextInput:v6];
  v8 = [v6 _showServiceForType:32 withContext:v7];
  translateSession = self->_translateSession;
  self->_translateSession = v8;

  objc_initWeak(&location, self);
  v10 = self->_translateSession;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__UITextInputController__translate___block_invoke;
  v12[3] = &unk_1E7126B50;
  objc_copyWeak(&v13, &location);
  [(_UITextServiceSession *)v10 setDismissedHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __36__UITextInputController__translate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[10];
    WeakRetained[10] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (BOOL)_isDisplayingTextService
{
  if ([(UITextInputController *)self _isDisplayingShortcutViewController]|| [(UITextInputController *)self _isDisplayingReferenceLibraryViewController]|| [(UITextInputController *)self _isDisplayingLookupViewController])
  {
    return 1;
  }

  return [(UITextInputController *)self _isDisplayingShareViewController];
}

- (void)_clearSelectionUI
{
  v3 = [(UITextInputController *)self interactionAssistant];
  v4 = [v3 activeSelection];
  [v4 clearSelection];

  v5 = [(UITextInputController *)self interactionAssistant];
  [v5 updateDisplayedSelection];
}

- (void)_addShortcut:(id)a3
{
  v4 = a3;
  v5 = +[UIDevice currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(UITextInputController *)self _removeShortcutController];
  }

  v7 = [(UITextInputController *)self _firstTextView];
  v8 = [_UITextServiceSessionContext sessionContextForType:4 withTextInput:v7];
  v9 = [v7 _showServiceForType:4 withContext:v8];
  learnSession = self->_learnSession;
  self->_learnSession = v9;

  [v7 resignFirstResponder];
  objc_initWeak(&location, self);
  v11 = self->_learnSession;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__UITextInputController__addShortcut___block_invoke;
  v12[3] = &unk_1E7126B50;
  objc_copyWeak(&v13, &location);
  [(_UITextServiceSession *)v11 setDismissedHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __38__UITextInputController__addShortcut___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[7];
    WeakRetained[7] = 0;
    v5 = WeakRetained;

    v3 = +[UIDevice currentDevice];
    v4 = [v3 userInterfaceIdiom];

    WeakRetained = v5;
    if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      [v5 _clearSelectionUI];
      WeakRetained = v5;
    }
  }
}

- (id)_fallbackFont
{
  v2 = [(UITextInputController *)self typingAttributes];
  v3 = [v2 objectForKey:*off_1E70EC918];

  if (!v3)
  {
    [off_1E70ECC18 defaultFontSize];
    v3 = [off_1E70ECC18 systemFontOfSize:?];
  }

  return v3;
}

- (id)_defaultAttributesForApplyingFormattingModification:(id *)a3 withAttributes:(id)a4 paragraphStyle:(id)a5
{
  v7 = a5;
  v8 = *off_1E70EC918;
  v9 = a4;
  v10 = [v9 objectForKeyedSubscript:v8];
  v11 = [v9 mutableCopy];

  var0 = a3->var0;
  if (a3->var0 <= 1)
  {
    if (var0)
    {
      if (var0 != 1)
      {
        goto LABEL_24;
      }

      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3->var1.var1];
      v15 = off_1E70ECAD8;
      goto LABEL_11;
    }

    v23 = a3->var1.var0;
    v24 = [v10 fontDescriptor];
    v25 = [v24 symbolicTraits];

    if ((v25 & v23) != 0)
    {
      v26 = 0;
    }

    else
    {
      v26 = v23;
    }

    v27 = [v10 fontDescriptor];
    v14 = [v27 fontDescriptorWithSymbolicTraits:v26 mask:v23];

    if (!v14)
    {
      goto LABEL_23;
    }

    [v10 pointSize];
    v19 = [off_1E70ECC18 fontWithDescriptor:v14 size:?];
    [v11 setObject:v19 forKeyedSubscript:v8];
    goto LABEL_22;
  }

  if (var0 != 2)
  {
    if (var0 != 3)
    {
      if (var0 != 5)
      {
        goto LABEL_24;
      }

      var4 = a3->var1.var4;
      v14 = [v7 mutableCopy];
      [v14 setMinimumLineHeight:var4];
      [v14 setMaximumLineHeight:var4];
      goto LABEL_10;
    }

    var3 = a3->var1.var3;
    [off_1E70ECC18 defaultFontSize];
    v18 = [off_1E70ECC18 systemFontOfSize:?];
    v14 = v18;
    if (!v10)
    {
      v10 = v18;
    }

    v19 = [v10 fontDescriptor];
    [v19 pointSize];
    v21 = 0.862068966;
    if (var3)
    {
      v21 = 1.16;
    }

    v22 = [off_1E70ECC18 fontWithDescriptor:v19 size:{fmax(v21 * v20, 7.0)}];
    [v11 setObject:v22 forKeyedSubscript:v8];

LABEL_22:
    goto LABEL_23;
  }

  var1 = a3->var1.var1;
  v14 = [v7 mutableCopy];
  [v14 setAlignment:var1];
LABEL_10:
  v15 = off_1E70EC988;
LABEL_11:
  [v11 setObject:v14 forKeyedSubscript:*v15];
LABEL_23:

LABEL_24:

  return v11;
}

- (id)_attributesForApplyingFormattingModification:(id *)a3 withAttributes:(id)a4 paragraphStyle:(id)a5 forTypingAttributes:(BOOL)a6
{
  if ((*(&self->_tiFlags + 2) & 2) != 0)
  {
    v12 = a6;
    v13 = a5;
    v9 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [WeakRetained textInput:self attributesForApplyingFormattingModification:a3 withAttributes:v9 paragraphStyle:v13 forTypingAttributes:v12];
  }

  else
  {
    v9 = a5;
    WeakRetained = a4;
    v11 = [(UITextInputController *)self _defaultAttributesForApplyingFormattingModification:a3 withAttributes:WeakRetained paragraphStyle:v9];
  }

  return v11;
}

- (void)_applyFormattingModification:(id)a3
{
  var1 = a3.var1.var1;
  var0 = a3.var0;
  v6 = [(UITextInputController *)self _textStorage];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__UITextInputController__applyFormattingModification___block_invoke;
  v7[3] = &unk_1E7126120;
  v7[4] = self;
  v7[5] = var0;
  v7[6] = var1;
  [v6 coordinateEditing:v7];
}

void __54__UITextInputController__applyFormattingModification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _fallbackFont];
  v5 = [*(a1 + 32) _selectedRange];
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__UITextInputController__applyFormattingModification___block_invoke_2;
    v12[3] = &unk_1E7126B78;
    v9 = v4;
    v10 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    v16 = *(a1 + 40);
    v15 = v3;
    [v15 enumerateAttributesInRange:v7 options:v8 usingBlock:{0x100000, v12}];
  }

  v11 = [*(a1 + 32) _attributesForApplyingFormattingModification:a1 + 40 withAttributes:*(*(a1 + 32) + 256) paragraphStyle:0 forTypingAttributes:1];
  [*(a1 + 32) _addToTypingAttributes:v11];
}

void __54__UITextInputController__applyFormattingModification___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v7 = *off_1E70EC918;
  v8 = [v11 objectForKeyedSubscript:*off_1E70EC918];

  v9 = v11;
  if (!v8)
  {
    v9 = [v11 mutableCopy];
    [v9 setObject:*(a1 + 32) forKeyedSubscript:v7];
  }

  v10 = [*(a1 + 40) _attributesForApplyingFormattingModification:a1 + 56 withAttributes:v9 paragraphStyle:0 forTypingAttributes:0];
  if (v10)
  {
    [*(a1 + 48) addAttributes:v10 range:{a3, a4}];
    [*(a1 + 48) removeAttribute:*off_1E70EC978 range:{a3, a4}];
  }
}

- (void)toggleBoldface:(id)a3
{
  v4 = _UIKitBundle();
  v5 = [v4 localizedStringForKey:@"BOLD_FOR_UNDO" value:@"Bold" table:@"Localizable"];
  v6 = [(UITextInputController *)self selectedRanges];
  [(UITextInputController *)self registerUndoOperationForType:1 actionName:v5 affectedRanges:v6 replacementText:0];

  [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
  [(UITextInputController *)self _toggleFontTrait:2];

  [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0];
}

- (void)toggleItalics:(id)a3
{
  v4 = _UIKitBundle();
  v5 = [v4 localizedStringForKey:@"ITALIC_FOR_UNDO" value:@"Italic" table:@"Localizable"];
  v6 = [(UITextInputController *)self selectedRanges];
  [(UITextInputController *)self registerUndoOperationForType:1 actionName:v5 affectedRanges:v6 replacementText:0];

  [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
  [(UITextInputController *)self _toggleFontTrait:1];

  [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0];
}

- (void)toggleUnderline:(id)a3
{
  v4 = _UIKitBundle();
  v5 = [v4 localizedStringForKey:@"UNDERLINE_FOR_UNDO" value:@"Underline" table:@"Localizable"];
  v6 = [(UITextInputController *)self selectedRanges];
  [(UITextInputController *)self registerUndoOperationForType:1 actionName:v5 affectedRanges:v6 replacementText:0];

  [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
  v7 = [(UITextInputController *)self typingAttributes];
  v8 = [v7 objectForKey:*off_1E70ECAD8];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &unk_1EFE33808;
  }

  v10 = v9;
  -[UITextInputController _applyFormattingModification:](self, "_applyFormattingModification:", 1, [v9 intValue] == 0);
  [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0];
}

- (void)_changeLineHeightAction:(id)a3 newLineHeight:(id)a4
{
  if (a4)
  {
    [a4 doubleValue];
    v6 = v5;
    v7 = [(UITextInputController *)self _textStorage];
    v8 = [v7 string];
    v9 = [(UITextInputController *)self _selectedRange];
    v11 = [v8 paragraphRangeForRange:{v9, v10}];
    v13 = v12;

    v14 = _UIKitBundle();
    v15 = [v14 localizedStringForKey:@"Set Line Height" value:@"Set Line Height" table:@"Localizable"];
    [(UITextInputController *)self registerUndoOperationForType:1 actionName:v15 affectedRange:v11 replacementText:v13, 0];

    [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
    v16 = [(UITextInputController *)self _textStorage];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__UITextInputController__changeLineHeightAction_newLineHeight___block_invoke;
    v19[3] = &unk_1E7126BC8;
    v19[5] = v6;
    v19[4] = self;
    v19[6] = v11;
    v19[7] = v13;
    [v16 coordinateEditing:v19];

    [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v18 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Line height may not be nil.", buf, 2u);
    }
  }

  else
  {
    v17 = *(__UILogGetCategoryCachedImpl("Assert", &_changeLineHeightAction_newLineHeight____s_category) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Line height may not be nil.", buf, 2u);
    }
  }
}

void __63__UITextInputController__changeLineHeightAction_newLineHeight___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *&v16 = 5;
  *(&v16 + 1) = *(a1 + 40);
  v4 = [*(a1 + 32) typingAttributes];
  v5 = *off_1E70EC988;
  v6 = [v4 objectForKey:*off_1E70EC988];

  if (!v6)
  {
    v6 = [off_1E70ECB88 defaultParagraphStyle];
  }

  if (*(a1 + 56))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__UITextInputController__changeLineHeightAction_newLineHeight___block_invoke_2;
    v12[3] = &unk_1E7126BA0;
    v14 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v15 = v16;
    v13 = v3;
    [v13 enumerateAttribute:v5 inRange:*(a1 + 48) options:*(a1 + 56) usingBlock:{0x100000, v12}];
  }

  [v6 minimumLineHeight];
  if (v7 != *(a1 + 40) || ([v6 maximumLineHeight], v8 != *(a1 + 40)))
  {
    v9 = *(a1 + 32);
    v10 = [v9 typingAttributes];
    v11 = [v9 _attributesForApplyingFormattingModification:&v16 withAttributes:v10 paragraphStyle:v6 forTypingAttributes:1];

    [*(a1 + 32) _addToTypingAttributes:v11];
  }
}

void __63__UITextInputController__changeLineHeightAction_newLineHeight___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v13 = v7;
  if (!v7)
  {
    v7 = [off_1E70ECB88 defaultParagraphStyle];
  }

  [v7 minimumLineHeight];
  if (v8 != *(a1 + 48) || ([v7 maximumLineHeight], v9 != *(a1 + 48)))
  {
    v10 = *(a1 + 32);
    v11 = [v10 typingAttributes];
    v12 = [v10 _attributesForApplyingFormattingModification:a1 + 56 withAttributes:v11 paragraphStyle:v7 forTypingAttributes:0];

    [*(a1 + 40) addAttributes:v12 range:{a3, a4}];
  }
}

- (void)_changeTextAlignment:(int64_t)a3 undoString:(id)a4
{
  v6 = a4;
  v7 = [(UITextInputController *)self _textStorage];
  v8 = [v7 string];
  v9 = [(UITextInputController *)self _selectedRange];
  v11 = [v8 paragraphRangeForRange:{v9, v10}];
  v13 = v12;

  [(UITextInputController *)self registerUndoOperationForType:1 actionName:v6 affectedRange:v11 replacementText:v13, 0];
  [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
  v14 = [(UITextInputController *)self _textStorage];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__UITextInputController__changeTextAlignment_undoString___block_invoke;
  v15[3] = &unk_1E7126BC8;
  v15[4] = self;
  v15[5] = a3;
  v15[6] = v11;
  v15[7] = v13;
  [v14 coordinateEditing:v15];

  [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0];
}

void __57__UITextInputController__changeTextAlignment_undoString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *&v17 = 2;
  *(&v17 + 1) = v5;
  v6 = [v4 typingAttributes];
  v7 = *off_1E70EC988;
  v8 = [v6 objectForKey:*off_1E70EC988];

  if (!v8)
  {
    v8 = [off_1E70ECB88 defaultParagraphStyle];
  }

  if (*(a1 + 56))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__UITextInputController__changeTextAlignment_undoString___block_invoke_2;
    v13[3] = &unk_1E7126BA0;
    v9 = *(a1 + 32);
    v15 = *(a1 + 40);
    v13[4] = v9;
    v16 = v17;
    v14 = v3;
    [v14 enumerateAttribute:v7 inRange:*(a1 + 48) options:*(a1 + 56) usingBlock:{0x100000, v13}];
  }

  if ([v8 alignment] != *(a1 + 40))
  {
    v10 = *(a1 + 32);
    v11 = [v10 typingAttributes];
    v12 = [v10 _attributesForApplyingFormattingModification:&v17 withAttributes:v11 paragraphStyle:v8 forTypingAttributes:1];

    [*(a1 + 32) _addToTypingAttributes:v12];
  }
}

void __57__UITextInputController__changeTextAlignment_undoString___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v11 = v7;
  if (!v7)
  {
    v7 = [off_1E70ECB88 defaultParagraphStyle];
  }

  if ([v7 alignment] != *(a1 + 48))
  {
    v8 = *(a1 + 32);
    v9 = [v8 typingAttributes];
    v10 = [v8 _attributesForApplyingFormattingModification:a1 + 56 withAttributes:v9 paragraphStyle:v7 forTypingAttributes:0];

    [*(a1 + 40) addAttributes:v10 range:{a3, a4}];
  }
}

- (void)alignLeft:(id)a3
{
  v5 = _UIKitBundle();
  v4 = [v5 localizedStringForKey:@"Align Left" value:@"Align Left" table:@"Localizable"];
  [(UITextInputController *)self _changeTextAlignment:0 undoString:v4];
}

- (void)alignCenter:(id)a3
{
  v5 = _UIKitBundle();
  v4 = [v5 localizedStringForKey:@"Center" value:@"Center" table:@"Localizable"];
  [(UITextInputController *)self _changeTextAlignment:1 undoString:v4];
}

- (void)alignJustified:(id)a3
{
  v5 = _UIKitBundle();
  v4 = [v5 localizedStringForKey:@"Justify" value:@"Justify" table:@"Localizable"];
  [(UITextInputController *)self _changeTextAlignment:3 undoString:v4];
}

- (void)alignRight:(id)a3
{
  v5 = _UIKitBundle();
  v4 = [v5 localizedStringForKey:@"Align Right" value:@"Align Right" table:@"Localizable"];
  [(UITextInputController *)self _changeTextAlignment:2 undoString:v4];
}

- (void)_validateCommand:(id)a3 forFont:(id)a4 traits:(int)a5
{
  v5 = *&a5;
  v12 = a3;
  v7 = a4;
  v8 = [v7 traits];
  LODWORD(a4) = v8 & v5;
  [v12 setState:(v8 & v5) == v5];
  if (a4 != v5)
  {
    v9 = [v7 fontDescriptor];
    v10 = [v9 fontDescriptorWithSymbolicTraits:v5 mask:v5];

    if (v10)
    {
      [v7 pointSize];
      v11 = [off_1E70ECC18 fontWithDescriptor:v10 size:?];

      if (v11 && (v5 & ~[v11 traits]) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {

      v11 = 0;
    }

    [v12 setAttributes:{objc_msgSend(v12, "attributes") | 1}];
LABEL_8:

    v7 = v11;
  }
}

- (void)validateCommand:(id)a3
{
  v37 = a3;
  v4 = [v37 action];
  v5 = [(UITextInputController *)self _canHandleResponderAction:v4];
  v6 = v37;
  if (!v5)
  {
    goto LABEL_62;
  }

  v8 = v4 == sel_makeTextWritingDirectionNatural_ || v4 == sel_makeTextWritingDirectionLeftToRight_ || v4 == sel_makeTextWritingDirectionRightToLeft_;
  if ([(UITextInputController *)self _shouldHandleResponderAction:v4 withSender:v37])
  {
    v9 = [(UITextInputController *)self typingAttributes];
    v10 = [(UITextInputController *)self selectedRange];
    v11 = [(UITextInputController *)self _textStorage];
    v12 = [v11 length];

    v13 = *off_1E70EC988;
    v14 = [v9 objectForKeyedSubscript:*off_1E70EC988];
    v15 = v14;
    v16 = 1;
    if (v4 != sel_alignLeft_ && v4 != sel_alignCenter_ && v4 != sel_alignJustified_)
    {
      v16 = v4 == sel_alignRight_;
    }

    v17 = v16 || v8;
    if (v9 || v10 >= v12)
    {
      if (v17)
      {
        if (!v14)
        {
LABEL_20:
          v15 = [off_1E70ECB88 defaultParagraphStyle];
        }

LABEL_21:
        v24 = [v15 alignment];
        v25 = [v15 baseWritingDirection];
        if (v16)
        {
          if (v24 == 4)
          {
            if (v25 == -1)
            {
              v25 = [off_1E70ECB88 defaultWritingDirectionForLanguage:0];
            }

            v24 = 2 * (v25 == 1);
          }

          v26 = 3;
          if (v4 != sel_alignJustified_)
          {
            v26 = 0;
          }

          v27 = 2;
          if (v4 != sel_alignRight_)
          {
            v27 = v26;
          }

          if (v4 == sel_alignCenter_)
          {
            v27 = 1;
          }

          v28 = v27 == v24;
        }

        else
        {
          v29 = 1;
          if (v4 != sel_makeTextWritingDirectionRightToLeft_)
          {
            v29 = -1;
          }

          if (v4 == sel_makeTextWritingDirectionLeftToRight_)
          {
            v29 = 0;
          }

          v28 = v29 == v25;
        }

        v30 = v28;
        [v37 setState:v30];
        goto LABEL_59;
      }
    }

    else
    {
      v18 = [(UITextInputController *)self _textStorage];
      v19 = v18;
      if (v17)
      {
        v20 = [v18 string];
        v21 = [v20 paragraphRangeForRange:{v10, 1}];

        v22 = [(UITextInputController *)self _textStorage];
        v23 = [v22 attribute:v13 atIndex:v21 effectiveRange:0];

        v9 = 0;
        v15 = v23;
        if (!v23)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      v9 = [v18 attributesAtIndex:v10 effectiveRange:0];
    }

    if (v4 == sel_toggleBoldface_ || v4 == sel_toggleItalics_)
    {
      v31 = [v9 objectForKeyedSubscript:*off_1E70EC918];
      if (v31)
      {
        if (v4 == sel_toggleBoldface_)
        {
          v33 = 2;
        }

        else
        {
          v33 = 1;
        }

        [(UITextInputController *)self _validateCommand:v37 forFont:v31 traits:v33];
      }
    }

    else
    {
      if (v4 == sel_toggleUnderline_)
      {
        v31 = [v9 objectForKeyedSubscript:*off_1E70ECAD8];
        v32 = [v31 integerValue] == 0;
      }

      else
      {
        if (v4 != sel_toggleSmartInsertDelete_)
        {
LABEL_59:

          goto LABEL_60;
        }

        v31 = [(UITextInputController *)self _textInputTraits];
        v32 = [v31 smartInsertDeleteType] == 1;
      }

      v34 = !v32;
      [v37 setState:v34];
    }

    goto LABEL_59;
  }

LABEL_60:
  v6 = v37;
  if (v4 == sel_captureTextFromCamera_)
  {
    WeakRetained = objc_loadWeakRetained(&self->_firstTextView);
    v36 = [UIAction _textFromCameraTitleForResponder:WeakRetained];
    [v37 setTitle:v36];

    v6 = v37;
  }

LABEL_62:
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() instancesRespondToSelector:{objc_msgSend(v4, "selector")}])
  {
    [v4 invokeWithTarget:self->_textInputTraits];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITextInputController;
    [(UITextInputController *)&v5 forwardInvocation:v4];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v5.receiver = self;
  v5.super_class = UITextInputController;
  if ([(UITextInputController *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [objc_opt_class() instancesRespondToSelector:a3];
  }
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

- (id)annotatedSubstringForRange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v6 = [WeakRetained annotatedSubstringForRange:v4];

  return v6;
}

- (void)replaceRange:(id)a3 withAnnotatedString:(id)a4 relativeReplacementRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(UITextInputController *)self _textStorage];
  v11 = [v9 length];
  v12 = [v10 length];
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v14 = [WeakRetained characterRangeForTextRange:v8];
  v16 = v15;

  v48 = v14;
  v17 = v14 + v16;
  v18 = v10;
  if (v17 <= v12)
  {
    if (location != 0x7FFFFFFFFFFFFFFFLL && location + length <= v16)
    {
      v19 = v11 + length - v16;
      if (v11 + length >= v16)
      {
        v42 = v11;
        v44 = v8;
        v41 = v16;
        v20 = v48 + location;
        v21 = [(UITextInputController *)self selectedRange];
        v38 = v22;
        v39 = v19;
        v40 = [v9 attributedSubstringFromRange:{location, v19}];
        v23 = [UITextInputController _newAttributedStringForReplacementOfAnnotatedText:"_newAttributedStringForReplacementOfAnnotatedText:inRange:" inRange:?];
        v24 = _UIKitBundle();
        v25 = [v24 localizedStringForKey:@"Replace" value:@"Replace" table:@"Localizable"];
        v26 = [v23 string];
        [(UITextInputController *)self registerUndoOperationForType:3 actionName:v25 affectedRange:v20 replacementText:length, v26];

        [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __83__UITextInputController_replaceRange_withAnnotatedString_relativeReplacementRange___block_invoke;
        v57[3] = &unk_1E7126120;
        v59 = v20;
        v60 = length;
        v58 = v23;
        v27 = v23;
        [v10 coordinateEditing:v57];
        if (v21 >= v20 + length && v39 != length)
        {
          [(UITextInputController *)self setSelectedRange:v39 - length + v21, v38];
        }

        [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0 replacement:v27 characterRange:v20, length];

        v16 = v41;
        v11 = v42;
        v8 = v44;
      }
    }

    v28 = [v10 length];
    if (v11 && v48 + v11 <= v28)
    {
      v45 = v8;
      v47 = v9;
      v29 = objc_loadWeakRetained(&self->_textLayoutController);
      v43 = v11;
      v30 = [v29 textRangeForCharacterRange:{v48, v11}];

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v31 = [(UITextInputController *)self validAnnotations];
      v32 = [v31 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v54;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v54 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v53 + 1) + 8 * i);
            v37 = objc_loadWeakRetained(&self->_textLayoutController);
            [v37 removeAnnotationAttribute:v36 forRange:v30];
          }

          v33 = [v31 countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v33);
      }

      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __83__UITextInputController_replaceRange_withAnnotatedString_relativeReplacementRange___block_invoke_2;
      v49[3] = &unk_1E7126BF0;
      v51 = v48;
      v52 = v16;
      v49[4] = self;
      v50 = v18;
      v9 = v47;
      [v47 enumerateAttributesInRange:0 options:v43 usingBlock:{0, v49}];

      v8 = v45;
    }
  }
}

void __83__UITextInputController_replaceRange_withAnnotatedString_relativeReplacementRange___block_invoke_2(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *off_1E70EC9F8;
  v9 = [v7 objectForKey:*off_1E70EC9F8];
  v10 = a1[6] + a3;
  v11 = v7;
  if (v9)
  {
    *(a1[4] + 144) |= 0x400000u;
    v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v7];
    v12 = a1[5];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__UITextInputController_replaceRange_withAnnotatedString_relativeReplacementRange___block_invoke_3;
    v16[3] = &unk_1E7126120;
    v17 = v9;
    v18 = v10;
    v19 = a4;
    [v12 coordinateEditing:v16];
    [v11 removeObjectForKey:v8];
  }

  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  v14 = [WeakRetained textRangeForCharacterRange:{v10, a4}];

  v15 = objc_loadWeakRetained((a1[4] + 248));
  [v15 addRenderingAttributes:v11 forRange:v14];
}

- (void)removeAnnotation:(id)a3 forRange:(id)a4
{
  v17 = a3;
  v6 = a4;
  if ([v17 isEqualToString:*off_1E70ECA00])
  {
    [(UITextInputController *)self removeSpellingMarkersFromWordInRange:v6];
  }

  else
  {
    v7 = [(UITextInputController *)self _textStorage];
    v8 = [v7 length];

    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v10 = [WeakRetained characterRangeForTextRange:v6];
    v12 = v11;

    if (v12 && v8 > v10)
    {
      if (v10 + v12 <= v8)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8 - v10;
      }

      v14 = objc_loadWeakRetained(&self->_textLayoutController);
      v15 = [v14 textRangeForCharacterRange:{v10, v13}];

      v16 = objc_loadWeakRetained(&self->_textLayoutController);
      [v16 removeAnnotationAttribute:v17 forRange:v15];
    }
  }
}

- (void)captureTextFromCamera:(id)a3
{
  v4 = a3;
  v6 = [(UITextInputController *)self _firstTextView];
  v5 = +[UIKeyboardCameraSession sharedSession];
  [v5 showForResponder:v6 sender:v4 rtiConfiguration:0];
}

- (void)setAutomaticallyAdjustsWritingDirection:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xEFFFFFFF | v3);
  if (a3)
  {
    [(UITextInputController *)self adjustWritingDirectionIfNeeded];
  }

  else
  {
    [(UITextInputController *)self setEffectiveWritingDirection];
  }
}

- (void)adjustWritingDirectionIfNeeded
{
  if (_os_feature_enabled_impl())
  {
    if ((*(&self->_tiFlags + 3) & 0x10) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
      v4 = [WeakRetained canAccessLayoutManager];

      if ((v4 & 1) == 0)
      {
        v5 = [(UITextInputController *)self selectedTextRange];
        v6 = [v5 start];
        v7 = [(UITextInputController *)self baseWritingDirectionForPosition:v6 inDirection:0];

        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v10 = 0;
        v11 = &v10;
        v12 = 0x2020000000;
        v13 = 0;
        v8 = [(UITextInputController *)self _textStorage];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __55__UITextInputController_adjustWritingDirectionIfNeeded__block_invoke;
        v9[3] = &unk_1E7126C18;
        v9[4] = self;
        v9[5] = &v14;
        v9[6] = &v10;
        v9[7] = v7;
        [v8 coordinateReading:v9];

        if (*(v15 + 24) == 1)
        {
          [(UITextInputController *)self setWritingDirectionToNatural];
        }

        else if (*(v11 + 24) == 1)
        {
          [(UITextInputController *)self setEffectiveWritingDirectionFromCurrentDirection:v7];
        }

        _Block_object_dispose(&v10, 8);
        _Block_object_dispose(&v14, 8);
      }
    }
  }
}

void __55__UITextInputController_adjustWritingDirectionIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 string];
  v5 = [*(a1 + 32) _selectedRange];
  v7 = [v4 paragraphRangeForRange:{v5, v6}];
  v9 = v8;

  v20 = [v3 attributedSubstringFromRange:{v7, v9}];

  if ([v20 length])
  {
    v10 = [MEMORY[0x1E696AB08] letterCharacterSet];
    v11 = [v20 string];
    v12 = [v11 rangeOfCharacterFromSet:v10];
    v14 = v13;

    v15 = *(a1 + 56);
    v16 = v15 != -1;
    v17 = v12 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0;
    v18 = !v17;
    if (v17)
    {
      v16 = 0;
    }

    v17 = v15 == -1;
    *(*(*(a1 + 40) + 8) + 24) = v16;
    v19 = v18 ^ 1;
    if (!v17)
    {
      v19 = 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = v19;
  }
}

- (void)setWritingDirectionToNatural
{
  v3 = [(UITextInputController *)self selectedTextRange];
  [(UITextInputController *)self setBaseWritingDirection:-1 forRange:v3];
}

- (void)setEffectiveWritingDirection
{
  v3 = [(UITextInputController *)self selectedTextRange];
  v4 = [v3 start];
  v5 = [(UITextInputController *)self baseWritingDirectionForPosition:v4 inDirection:0];

  [(UITextInputController *)self setEffectiveWritingDirectionFromCurrentDirection:v5];
}

- (void)setEffectiveWritingDirectionFromCurrentDirection:(int64_t)a3
{
  v5 = _os_feature_enabled_impl();
  v6 = _os_feature_enabled_impl();
  if (v5)
  {

    [(UITextInputController *)self setKeyboardWritingDirectionFromCurrentDirection:a3];
  }

  else if (v6)
  {

    [(UITextInputController *)self setLayoutWritingDirectionFromCurrentDirection:a3];
  }

  else
  {
    v7 = *(__UILogGetCategoryCachedImpl("LanguageAwareString", &setEffectiveWritingDirectionFromCurrentDirection____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
    }
  }
}

- (void)setKeyboardWritingDirectionFromCurrentDirection:(int64_t)a3
{
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v10 = [v5 currentInputMode];

  v6 = [v10 isDefaultRightToLeft];
  if (a3 != 1 && (v6 & 1) != 0)
  {
    v7 = 1;
LABEL_7:
    v9 = [(UITextInputController *)self selectedTextRange];
    [(UITextInputController *)self setBaseWritingDirection:v7 forRange:v9];

    goto LABEL_8;
  }

  v8 = [v10 isDefaultRightToLeft];
  if (a3 && (v8 & 1) == 0)
  {
    v7 = 0;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)setLayoutWritingDirectionFromCurrentDirection:(int64_t)a3
{
  v5 = [(UITextInputController *)self _firstTextView];
  v6 = [v5 traitCollection];
  v7 = [v6 layoutDirection];

  if (a3 == 1 || v7 != 1)
  {
    if (!a3 || v7)
    {
      return;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(UITextInputController *)self selectedTextRange];
  [(UITextInputController *)self setBaseWritingDirection:v8 forRange:v9];
}

- (UITextInputControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end