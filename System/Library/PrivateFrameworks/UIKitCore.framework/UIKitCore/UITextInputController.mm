@interface UITextInputController
+ (BOOL)_shouldUseStandardTextScaling:(id)scaling;
- (BOOL)_canHandleResponderAction:(SEL)action;
- (BOOL)_delegateShouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)_hasMarkedText;
- (BOOL)_hasMarkedTextOrRangedSelection;
- (BOOL)_isDisplayingTextService;
- (BOOL)_isEmptySelection;
- (BOOL)_isInlineCompletionPresentedAsMarkedText:(id)text;
- (BOOL)_isSecureTextEntry;
- (BOOL)_isSystemAttachment:(id)attachment;
- (BOOL)_mightHaveSelection;
- (BOOL)_pasteFromPasteboard:(id)pasteboard andMatchStyle:(BOOL)style;
- (BOOL)_range:(id)_range containsRange:(id)range;
- (BOOL)_range:(id)_range intersectsRange:(id)range;
- (BOOL)_range:(id)_range isEqualToRange:(id)range;
- (BOOL)_selectionAtDocumentEnd;
- (BOOL)_selectionAtDocumentStart;
- (BOOL)_selectionAtWordStart;
- (BOOL)_shouldConsiderTextViewForGeometry:(id)geometry;
- (BOOL)_shouldHandleResponderAction:(SEL)action withSender:(id)sender;
- (BOOL)_shouldPerformUICalloutBarButtonReplaceAction:(SEL)action forText:(id)text checkAutocorrection:(BOOL)autocorrection;
- (BOOL)_usesAsynchronousProtocol;
- (BOOL)hasText;
- (BOOL)isCoalescing;
- (BOOL)isEditable;
- (BOOL)isEditing;
- (BOOL)markedTextFromClient:(id)client;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)shouldStartNewUndoGroup:(id)group textGranularity:(int64_t)granularity operationType:(int)type;
- (BOOL)supportsTextKit2TextLists;
- (CGRect)_caretRect;
- (CGRect)_caretRectForOffset:(unint64_t)offset;
- (CGRect)_selectionClipRect;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)firstRectForRange:(id)range;
- (CGRect)frameForTextPlaceholder:(id)placeholder;
- (NSArray)selectedRanges;
- (NSAttributedString)filteredAttributedText;
- (NSDictionary)typingAttributes;
- (NSSet)_allowedTypingAttributes;
- (UITextInputController)initWithTextLayoutController:(id)controller;
- (UITextInputControllerDelegate)delegate;
- (UITextInputDelegate)inputDelegate;
- (UITextInputSuggestionDelegate)textInputSuggestionDelegate;
- (UITextInputTokenizer)tokenizer;
- (UITextInteractionAssistant)interactionAssistant;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (UITextRange)markedTextRange;
- (UITextRange)selectedTextRange;
- (_NSRange)_nsrangeForTextRange:(id)range;
- (_NSRange)_rangeAfterCancelDictationIfNecessaryForChangeInRange:(_NSRange)range;
- (_NSRange)_selectedNSRange;
- (_NSRange)_selectedRange;
- (_NSRange)_selectedRangeWithinMarkedText;
- (_NSRange)markedRange;
- (_NSRange)nsRangeForTextRange:(id)range;
- (_NSRange)selectedRange;
- (_UITextLayoutController)textLayoutController;
- (id)_attributedStringForInsertionOfAttributedString:(id)string;
- (id)_attributedStringWithContentAwareWritingDirectionsFromAttributedString:(id)string;
- (id)_attributesForApplyingFormattingModification:(id *)modification withAttributes:(id)attributes paragraphStyle:(id)style forTypingAttributes:(BOOL)typingAttributes;
- (id)_attributesForInsertionOfText:(_NSRange)text;
- (id)_attributesForReplacementInRange:(_NSRange)range;
- (id)_characterPositionForPoint:(CGPoint)point;
- (id)_clampedpositionFromPosition:(id)position offset:(int)offset;
- (id)_defaultAttributesForApplyingFormattingModification:(id *)modification withAttributes:(id)attributes paragraphStyle:(id)style;
- (id)_fallbackFont;
- (id)_findBoundaryPositionClosestToPosition:(id)position withGranularity:(int64_t)granularity;
- (id)_findDocumentBoundaryFromPosition:(id)position;
- (id)_findPleasingWordBoundaryFromPosition:(id)position;
- (id)_firstTextView;
- (id)_fixupTypingAttributeForAttributes:(id)attributes;
- (id)_fontForCaretSelection;
- (id)_fullRange;
- (id)_fullText;
- (id)_intersectionOfRange:(id)range andRange:(id)andRange;
- (id)_itemProviderForCopyingRange:(_NSRange)range;
- (id)_moveDown:(BOOL)down withHistory:(id)history;
- (id)_moveLeft:(BOOL)left withHistory:(id)history;
- (id)_moveRight:(BOOL)right withHistory:(id)history;
- (id)_moveToEndOfDocument:(BOOL)document withHistory:(id)history;
- (id)_moveToEndOfLine:(BOOL)line withHistory:(id)history;
- (id)_moveToEndOfParagraph:(BOOL)paragraph withHistory:(id)history;
- (id)_moveToEndOfWord:(BOOL)word withHistory:(id)history;
- (id)_moveToStartOfDocument:(BOOL)document withHistory:(id)history;
- (id)_moveToStartOfLine:(BOOL)line withHistory:(id)history;
- (id)_moveToStartOfParagraph:(BOOL)paragraph withHistory:(id)history;
- (id)_moveToStartOfWord:(BOOL)word withHistory:(id)history;
- (id)_moveUp:(BOOL)up withHistory:(id)history;
- (id)_newAttributedStringForInsertionOfAttributedText:(id)text inRange:(_NSRange)range;
- (id)_newAttributedStringForInsertionOfText:(id)text inRange:(_NSRange)range;
- (id)_newAttributedStringForReplacementOfAnnotatedText:(id)text inRange:(_NSRange)range;
- (id)_normalizedStringForRangeComparison:(id)comparison;
- (id)_parentScrollView;
- (id)_pasteController;
- (id)_positionAtStartOfWords:(unint64_t)words beforePosition:(id)position;
- (id)_positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset withAffinityDownstream:(BOOL)downstream;
- (id)_positionFromPosition:(id)position pastTextUnit:(int64_t)unit inDirection:(int64_t)direction;
- (id)_positionWithinRange:(id)range farthestInDirection:(int64_t)direction;
- (id)_postfixTokensForDictationAttributedText:(id)text currentDictationAttributedTextRange:(_NSRange)range nextDictationAttributedTextRange:(_NSRange)textRange;
- (id)_prefixTokensForDictationAttributedText:(id)text lastDictationAttributedTextRange:(_NSRange)range currentDictationAttributedTextRange:(_NSRange)textRange;
- (id)_rangeFromCurrentRangeWithDelta:(_NSRange)delta;
- (id)_rangeOfSmartSelectionIncludingRange:(id)range;
- (id)_rangeOfText:(id)text endingAtPosition:(id)position;
- (id)_rangeOfTextUnit:(int64_t)unit enclosingPosition:(id)position;
- (id)_rangeSpanningTextUnit:(int64_t)unit andPosition:(id)position;
- (id)_rangesForBackwardsDelete;
- (id)_rangesToReplaceWhenInsertingText;
- (id)_rectsForRange:(_NSRange)range;
- (id)_replaceRange:(id)range withAttributedTextFromKeyboard:(id)keyboard addingUnderlinesForAlternatives:(BOOL)alternatives updatingSelection:(BOOL)selection;
- (id)_selectedAttributedText;
- (id)_selectedRanges;
- (id)_selectedText;
- (id)_senderForDelegateNotifications;
- (id)_setHistory:(id)history withExtending:(BOOL)extending withAnchor:(int)anchor withAffinityDownstream:(BOOL)downstream;
- (id)_setSelectionRangeWithHistory:(id)history;
- (id)_textColorForCaretSelection;
- (id)_textRangeFromDirectionalRange:(id)range;
- (id)_textRangeFromNSRange:(_NSRange)range;
- (id)_textStorage;
- (id)_underlineRectsByDocumentLineForSelectionRange:(id)range;
- (id)_userEditedTextInfo;
- (id)_wordContainingCaretSelection;
- (id)annotatedSubstringForRange:(id)range;
- (id)attributedSubstringForMarkedRange;
- (id)attributedTextInRange:(id)range;
- (id)characterRangeAtPoint:(CGPoint)point;
- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction;
- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range;
- (id)dictationAlternativesForSelectedText;
- (id)dictationLanguageForSelectedText;
- (id)handleInsertedText:(id)text intoTextStorage:(id)storage replacementRange:(_NSRange)range updatedTypingAttributes:(id *)attributes;
- (id)insertDictationResultPlaceholder;
- (id)insertTextPlaceholderWithSize:(CGSize)size;
- (id)insertTextPlaceholderWithSize:(CGSize)size embeddingType:(int64_t)type;
- (id)metadataDictionariesForDictationResults;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset;
- (id)positionFromPosition:(id)position offset:(int64_t)offset;
- (id)positionWithinRange:(id)range farthestInDirection:(int64_t)direction;
- (id)rangeWithTextAlternatives:(id *)alternatives atPosition:(id)position;
- (id)replaceRange:(id)range withAttributedText:(id)text updatingSelection:(BOOL)selection;
- (id)selectionRectsForRange:(id)range;
- (id)textChecker;
- (id)textInRange:(id)range;
- (id)textRangeForNSRange:(_NSRange)range;
- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition;
- (id)textStylingAtPosition:(id)position inDirection:(int64_t)direction;
- (id)undoManager;
- (int)_indexForTextPosition:(id)position;
- (int64_t)_opposingDirectionFromDirection:(int64_t)direction;
- (int64_t)_resolveNaturalDirection:(int64_t)direction;
- (int64_t)_selectionAffinity;
- (int64_t)_textInputSource;
- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(int64_t)direction;
- (int64_t)comparePosition:(id)position toPosition:(id)toPosition;
- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition;
- (int64_t)selectionAffinity;
- (int64_t)writingDirectionAtPosition:(id)position;
- (unint64_t)_validCaretPositionFromCharacterIndex:(unint64_t)index downstream:(BOOL)downstream;
- (unint64_t)textLengthToDeleteBeforeSelectedRangeForSmartDelete;
- (unsigned)_characterInRelationToCaretSelection:(int)selection;
- (unsigned)_characterInRelationToPosition:(id)position amount:(int)amount;
- (unsigned)_characterInRelationToRangedSelection:(int)selection;
- (void)_addShortcut:(id)shortcut;
- (void)_addToTypingAttributes:(id)attributes;
- (void)_addToTypingAttributes:(id)attributes value:(id)value;
- (void)_adjustSizeByIncreasing:(BOOL)increasing;
- (void)_applyFormattingModification:(id)modification;
- (void)_changeLineHeightAction:(id)action newLineHeight:(id)height;
- (void)_changeTextAlignment:(int64_t)alignment undoString:(id)string;
- (void)_clearMarkedText;
- (void)_clearSelectionUI;
- (void)_coordinateSelectionChange:(id)change;
- (void)_copySelectionToClipboard;
- (void)_copySelectionToClipboard:(id)clipboard;
- (void)_define:(id)_define;
- (void)_deleteBackwardAndNotify:(BOOL)notify;
- (void)_deleteByWord;
- (void)_deleteForwardAndNotify:(BOOL)notify;
- (void)_deleteForwardByWord;
- (void)_deleteTextRange:(id)range;
- (void)_deleteToEndOfLine;
- (void)_deleteToEndOfParagraph;
- (void)_deleteToStartOfLine;
- (void)_detachFromLayoutManager;
- (void)_ensureSelectionValid;
- (void)_ensureSelectionVisible;
- (void)_expandSelectionToBackwardDeletionClusterWithReinsertionOut:(id *)out;
- (void)_expandSelectionToStartOfWordsBeforeCaretSelection:(int)selection;
- (void)_extendCurrentSelection:(int)selection;
- (void)_forceUnmarkTextDueToEditing;
- (void)_insertAttributedText:(id)text fromKeyboard:(BOOL)keyboard;
- (void)_insertAttributedTextWithoutClosingTyping:(id)typing;
- (void)_insertDictationResult:(id)result withCorrectionIdentifier:(id)identifier replacingRange:(_NSRange)range resultLength:(unint64_t *)length;
- (void)_insertText:(id)text fromKeyboard:(BOOL)keyboard;
- (void)_layoutManagerDidCompleteLayout;
- (void)_moveCurrentSelection:(int)selection;
- (void)_pasteAndMatchStyle:(BOOL)style;
- (void)_pasteAttributedString:(id)string pasteAsRichText:(BOOL)text;
- (void)_pasteAttributedString:(id)string toRange:(id)range completion:(id)completion;
- (void)_pasteDelegateDidPasteText:(id)text toTextRange:(id)range;
- (void)_pasteDelegateWillPasteText:(id)text toTextRange:(id)range;
- (void)_pasteRawAttributedString:(id)string asRichText:(BOOL)text;
- (void)_performWhileSuppressingDelegateNotifications:(id)notifications;
- (void)_promptForReplace:(id)replace;
- (void)_registerUndoOperationForReplacementWithActionName:(id)name replacementText:(id)text;
- (void)_replaceCurrentWordWithText:(id)text;
- (void)_replaceDocumentWithText:(id)text;
- (void)_scrollRectToVisible:(CGRect)visible animated:(BOOL)animated;
- (void)_selectAll;
- (void)_selectionDidScroll:(id)scroll;
- (void)_selectionGeometryChanged;
- (void)_sendDelegateChangeNotificationsForText:(BOOL)text selection:(BOOL)selection replacement:(id)replacement characterRange:(_NSRange)range;
- (void)_sendDelegateWillChangeNotificationsForText:(BOOL)text selection:(BOOL)selection;
- (void)_setAllowedTypingAttributes:(id)attributes;
- (void)_setAttributedMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)_setAttributedMarkedText:(id)text selectedRange:(_NSRange)range fromKeyboard:(BOOL)keyboard useTextStyle:(BOOL)style;
- (void)_setCaretSelectionAtEndOfSelection;
- (void)_setGestureRecognizers;
- (void)_setInternalGestureRecognizers;
- (void)_setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)_setSelectedRange:(_NSRange)range;
- (void)_setSelectedRanges:(id)ranges;
- (void)_setSelectedTextRange:(id)range withAffinityDownstream:(BOOL)downstream;
- (void)_setSelectionToPosition:(id)position;
- (void)_setUndoRedoInProgress:(BOOL)progress;
- (void)_share:(id)_share;
- (void)_textStorageDidProcessEditing:(id)editing;
- (void)_translate:(id)_translate;
- (void)_transliterateChinese:(id)chinese;
- (void)_transpose;
- (void)_undoManagerWillUndo:(id)undo;
- (void)_unmarkText;
- (void)_updateEmptyStringAttributes;
- (void)_updateFirstTextView;
- (void)_updateRangeForSmartDelete;
- (void)_updateRectsForPlaceholder;
- (void)_updateSelectedRects:(id)rects byTrimmingWhitespaceInRange:(id)range inDocument:(id)document;
- (void)_updateSelectionWithTextRange:(id)range withAffinityDownstream:(BOOL)downstream;
- (void)_validateCommand:(id)command forFont:(id)font traits:(int)traits;
- (void)addTextAlternatives:(id)alternatives;
- (void)addTextAlternativesDisplayStyle:(int64_t)style toRange:(_NSRange)range invalidatingDisplayInBoundingRect:(BOOL)rect;
- (void)adjustWritingDirectionIfNeeded;
- (void)alignCenter:(id)center;
- (void)alignJustified:(id)justified;
- (void)alignLeft:(id)left;
- (void)alignRight:(id)right;
- (void)beginSelectionChange;
- (void)captureTextFromCamera:(id)camera;
- (void)changeWillBeUndone:(id)undone;
- (void)changingContextWithTrigger:(id)trigger;
- (void)checkSmartPunctuationForWordInRange:(id)range;
- (void)checkSpellingForSelectionChangeIfNecessary;
- (void)checkSpellingForWordInRange:(id)range;
- (void)clearText;
- (void)coalesceInTextView:(id)view actionName:(id)name affectedRanges:(id)ranges replacementRange:(_NSRange)range replacementText:(id)text;
- (void)correctedTypedText:(id)text rangeOfReplacement:(id)replacement;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)deleteBackward;
- (void)deleteRemainingSpaceForTextListIfNeeded;
- (void)didEndEditing;
- (void)endSelectionChange;
- (void)forwardInvocation:(id)invocation;
- (void)handleTextListForInsertedText:(id)text attributedText:(id)attributedText intoTextStorage:(id)storage replacementRange:(_NSRange)range paragraphStyle:(id)style paragraphStart:(unint64_t)start paragraphContentsEnd:(unint64_t)end updatedTypingAttributes:(id *)self0;
- (void)insertAdaptiveImageGlyph:(id)glyph replacementRange:(id)range;
- (void)insertAttributedText:(id)text;
- (void)insertDictationResult:(id)result withCorrectionIdentifier:(id)identifier;
- (void)insertEmojiImageTextAttachment:(id)attachment replacementRange:(id)range;
- (void)insertText:(id)text;
- (void)invalidateDisplayForRange:(uint64_t)range;
- (void)makeTextWritingDirectionLeftToRight:(id)right;
- (void)makeTextWritingDirectionNatural:(id)natural;
- (void)makeTextWritingDirectionRightToLeft:(id)left;
- (void)notifyTextCheckingControllerForSelectionChange;
- (void)pasteItemProviders:(id)providers matchesStyle:(BOOL)style;
- (void)preheatTextChecker;
- (void)registerUndoOperationForType:(int)type actionName:(id)name affectedRange:(_NSRange)range replacementText:(id)text;
- (void)registerUndoOperationForType:(int)type actionName:(id)name affectedRanges:(id)ranges replacementText:(id)text;
- (void)removeAllTextAlternatives;
- (void)removeAlternativesForCurrentWord;
- (void)removeAnnotation:(id)annotation forRange:(id)range;
- (void)removeDictationResultPlaceholder:(id)placeholder willInsertResult:(BOOL)result;
- (void)removeEmojiAlternatives;
- (void)removeSpellingMarkersForCurrentWord;
- (void)removeSpellingMarkersFromWordInRange:(id)range;
- (void)removeTextPlaceholder:(id)placeholder notifyInputDelegate:(BOOL)delegate;
- (void)removeTextStylingFromString:(id)string;
- (void)replace:(id)replace;
- (void)replaceRange:(id)range withAnnotatedString:(id)string relativeReplacementRange:(_NSRange)replacementRange;
- (void)replaceRange:(id)range withAttributedText:(id)text;
- (void)replaceRange:(id)range withText:(id)text;
- (void)replaceRangeWithTextWithoutClosingTyping:(id)typing replacementText:(id)text;
- (void)scrollRangeToVisible:(_NSRange)visible;
- (void)select:(id)select;
- (void)selectAll;
- (void)selectAll:(id)all;
- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setAutomaticallyAdjustsWritingDirection:(BOOL)direction;
- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range;
- (void)setDelegate:(id)delegate;
- (void)setEffectiveWritingDirection;
- (void)setEffectiveWritingDirectionFromCurrentDirection:(int64_t)direction;
- (void)setInputDelegate:(id)delegate;
- (void)setKeyboardWritingDirectionFromCurrentDirection:(int64_t)direction;
- (void)setLayoutWritingDirectionFromCurrentDirection:(int64_t)direction;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setSelectedRange:(_NSRange)range afterDelta:(int64_t)delta appliedToRange:(_NSRange)toRange;
- (void)setSelectedRanges:(id)ranges;
- (void)setSelectedTextRange:(id)range;
- (void)setSupportsAdaptiveImageGlyph:(BOOL)glyph;
- (void)setTextLayoutController:(id)controller;
- (void)setWritingDirectionToNatural;
- (void)setWritingToolsStreamingReplacements:(BOOL)replacements;
- (void)set_textInputSource:(int64_t)source;
- (void)signalDictationDeletionTip;
- (void)signalDictationInputEvent:(id)event insertedText:(id)text;
- (void)signalDictationSelectionTip:(id)tip;
- (void)stopCoalescing;
- (void)toggleBoldface:(id)boldface;
- (void)toggleItalics:(id)italics;
- (void)toggleUnderline:(id)underline;
- (void)undoDidReplaceRange:(_NSRange)range withAttributedText:(id)text;
- (void)undoManagerDidFinishUndoRedo;
- (void)undoManagerWillRemoveAllActions;
- (void)unmarkText:(BOOL)text;
- (void)updateTextAttributesWithConversionHandler:(id)handler;
- (void)validateCommand:(id)command;
@end

@implementation UITextInputController

void __45__UITextInputController__updateFirstTextView__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) interactionAssistant];
  [v1 updateDisplayedSelection];
}

- (void)_updateEmptyStringAttributes
{
  _textStorage = [(UITextInputController *)self _textStorage];
  if ([_textStorage length])
  {
    v3 = [_textStorage attributesAtIndex:0 effectiveRange:0];
    v4 = [v3 mutableCopy];

LABEL_3:
    [v4 removeObjectForKey:*off_1E70EC9F8];
    [(UITextInputController *)self _setEmptyStringAttributes:v4];
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    defaultAttributes = [_textStorage defaultAttributes];
    v4 = [defaultAttributes mutableCopy];

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
  textStorage = [WeakRetained textStorage];

  return textStorage;
}

- (void)_updateFirstTextView
{
  v50 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  textContainers = [WeakRetained textContainers];

  v6 = [textContainers countByEnumeratingWithState:&v45 objects:v49 count:16];
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
  v38 = textContainers;
  selfCopy = self;
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
        objc_enumerationMutation(textContainers);
      }

      textView = [*(*(&v45 + 1) + 8 * v11) textView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        superview = [textView superview];

        textView = superview;
      }

      if (v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = textView;
      }

      v8 = v15;

      [textView bounds];
      [textView convertRect:0 toView:?];
      if (!CGRectIsEmpty(v51))
      {
        v42 = v8;
        window = [textView window];

        if (window)
        {
          [array addObject:textView];
          if ([orderedSet count])
          {
            lastObject = [orderedSet lastObject];
            superview2 = [textView superview];
            v41 = v9;
            if (superview2)
            {
              superview3 = superview2;
              v20 = 0;
              while (1)
              {
                v21 = [orderedSet containsObject:superview3];
                v22 = superview3;
                if (v21)
                {
                  break;
                }

                superview3 = [v22 superview];

                v20 = v22;
                if (!superview3)
                {
                  v20 = v22;
                  goto LABEL_23;
                }
              }

              lastObject = v22;
            }

            else
            {
              v20 = 0;
LABEL_23:
              v22 = 0;
            }

            subviews = [lastObject subviews];
            v27 = [subviews indexOfObjectIdenticalTo:v20];

            v28 = [orderedSet objectAtIndex:{objc_msgSend(orderedSet, "indexOfObject:", lastObject) - 1}];
            subviews2 = [lastObject subviews];
            v30 = [subviews2 indexOfObjectIdenticalTo:v28];

            if (v27 <= v30)
            {
              v9 = v41;
              textContainers = v38;
            }

            else
            {
              [orderedSet removeAllObjects];
              v31 = textView;

              [orderedSet addObject:v31];
              superview4 = [v31 superview];

              textContainers = v38;
              if (superview4)
              {
                do
                {
                  [orderedSet addObject:superview4];
                  v32Superview = [superview4 superview];

                  superview4 = v32Superview;
                }

                while (v32Superview);
              }

              v9 = v31;

              v22 = 0;
            }

            v10 = v37;
          }

          else
          {
            v23 = textView;
            [orderedSet addObject:v23];
            superview5 = [v23 superview];

            if (superview5)
            {
              do
              {
                [orderedSet addObject:superview5];
                v24Superview = [superview5 superview];

                superview5 = v24Superview;
              }

              while (v24Superview);
            }

            lastObject = v9;
            v9 = v23;
          }

          v7 = v40;
        }

        v8 = v42;
      }

      ++v11;
    }

    while (v11 != v7);
    v7 = [textContainers countByEnumeratingWithState:&v45 objects:v49 count:16];
  }

  while (v7);

  self = selfCopy;
  if (!v9)
  {
    goto LABEL_38;
  }

LABEL_39:

  v34 = objc_loadWeakRetained(&self->_firstTextView);
  if (v34 != v9)
  {
    objc_storeWeak(&self->_firstTextView, v9);
    _pasteController = [(UITextInputController *)self _pasteController];
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
  superview = [v10 superview];
  v12 = [superview conformsToProtocol:&unk_1EFE8C1A0];

  if (!v12)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v13 = [UITextPasteController alloc];
  v9 = objc_loadWeakRetained(&self->_firstTextView);
  superview2 = [v9 superview];
  v5 = [(UITextPasteController *)v13 initWithSupportingView:superview2];

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
    interactionAssistant = [(UITextInputController *)self interactionAssistant];
    [interactionAssistant setNeedsSelectionDisplayUpdate];
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
  _mightHaveSelection = [v5 _mightHaveSelection];

  return _mightHaveSelection;
}

- (UITextPosition)beginningOfDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  beginningOfDocument = [WeakRetained beginningOfDocument];

  return beginningOfDocument;
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
    attachment = [(UITextPlaceholder *)textPlaceholder attachment];
    typingAttributesBeforeInsertion = [attachment typingAttributesBeforeInsertion];
    [(UITextInputController *)self setTypingAttributes:typingAttributesBeforeInsertion];

LABEL_3:
    typingAttributes = self->_typingAttributes;
    goto LABEL_5;
  }

  typingAttributes = self->_typingAttributes;
  if (!typingAttributes)
  {
    _selectedRange = [(UITextInputController *)self _selectedRange];
    attachment = [(UITextInputController *)self _attributesForReplacementInRange:_selectedRange, v9];
    [(UITextInputController *)self setTypingAttributes:attachment];
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
    _selectedRange = self->_markedTextSelection.location + self->_markedTextRange.location;
  }

  else
  {
    _selectedRange = [(UITextInputController *)self _selectedRange];
  }

  result.length = length;
  result.location = _selectedRange;
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
  beginningOfDocument = [v3 beginningOfDocument];
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  endOfDocument = [WeakRetained endOfDocument];
  v7 = [v3 textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  v8 = [(UITextInputController *)self attributedTextInRange:v7];

  return v8;
}

- (void)_detachFromLayoutManager
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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
  _textStorage = [(UITextInputController *)self _textStorage];
  location = [_textStorage length];

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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__undoManagerWillUndo_ name:*MEMORY[0x1E696AA48] object:self->_undoManager];

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
        callStackSymbols = [v4 callStackSymbols];
        v7 = 138412290;
        v8 = callStackSymbols;
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
  _firstTextView = [(UITextInputController *)self _firstTextView];
  interactionAssistant = [_firstTextView interactionAssistant];

  return interactionAssistant;
}

- (id)_firstTextView
{
  WeakRetained = objc_loadWeakRetained(&self->_firstTextView);
  window = [WeakRetained window];

  if (!window)
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
    selfCopy = [(UITextInputController *)v3 _textSelectingContainer];
  }

  else
  {
    selfCopy = v3;
    if (!v3)
    {
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (UITextPosition)endOfDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  endOfDocument = [WeakRetained endOfDocument];

  return endOfDocument;
}

- (_UITextLayoutController)textLayoutController
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);

  return WeakRetained;
}

- (id)metadataDictionariesForDictationResults
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _userEditedTextInfo = [(UITextInputController *)self _userEditedTextInfo];
  _textStorage = [(UITextInputController *)self _textStorage];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__UITextInputController_metadataDictionariesForDictationResults__block_invoke;
  v11[3] = &unk_1E7126970;
  v6 = v3;
  v12 = v6;
  v13 = _userEditedTextInfo;
  v7 = _userEditedTextInfo;
  [_textStorage coordinateReading:v11];

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
  _textStorage = [(UITextInputController *)self _textStorage];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__UITextInputController__userEditedTextInfo__block_invoke;
  v6[3] = &unk_1E7126A10;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  [_textStorage coordinateReading:v6];

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
  _textStorage = [(UITextInputController *)self _textStorage];
  v4 = [_textStorage length];

  if ((*(&self->_tiFlags + 2) & 0x80) != 0)
  {
    _textStorage2 = [(UITextInputController *)self _textStorage];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__UITextInputController_didEndEditing__block_invoke;
    v6[3] = &__block_descriptor_48_e23_v16__0__NSTextStorage_8l;
    v6[4] = 0;
    v6[5] = v4;
    [_textStorage2 coordinateEditing:v6];

    *&self->_tiFlags &= ~0x800000u;
  }
}

- (void)removeAllTextAlternatives
{
  _textStorage = [(UITextInputController *)self _textStorage];
  v4 = [_textStorage length];

  if ((*(&self->_tiFlags + 2) & 0x40) != 0)
  {
    _textStorage2 = [(UITextInputController *)self _textStorage];
    v6 = [_textStorage2 length];

    if (v6)
    {
      _textStorage3 = [(UITextInputController *)self _textStorage];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __50__UITextInputController_removeAllTextAlternatives__block_invoke;
      v12[3] = &__block_descriptor_48_e23_v16__0__NSTextStorage_8l;
      v12[4] = 0;
      v12[5] = v4;
      [_textStorage3 coordinateEditing:v12];

      WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
      v9 = *off_1E70ECA00;
      v10 = WeakRetained;
      documentRange = [v10 documentRange];
      [v10 removeAnnotationAttribute:v9 forRange:documentRange];
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
  _textStorage = [(UITextInputController *)self _textStorage];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__UITextInputController_hasText__block_invoke;
  v4[3] = &unk_1E70F94A8;
  v4[4] = &v5;
  [_textStorage coordinateReading:v4];

  LOBYTE(_textStorage) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return _textStorage;
}

uint64_t __32__UITextInputController_hasText__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 length];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

- (id)_selectedText
{
  _textStorage = [(UITextInputController *)self _textStorage];
  string = [_textStorage string];
  selectedRange = [(UITextInputController *)self selectedRange];
  v7 = [string substringWithRange:{selectedRange, v6}];

  return v7;
}

- (id)dictationLanguageForSelectedText
{
  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  start = [selectedTextRange start];
  v5 = [(UITextInputController *)self _rangeOfEnclosingWord:start];

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
  _selectableText = [(UITextInputController *)self _selectableText];
  inputDelegate = [_selectableText inputDelegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = inputDelegate;
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
  lastEventSource = [v3 lastEventSource];

  return lastEventSource;
}

- (void)set_textInputSource:(int64_t)source
{
  v5 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];

  if (v5)
  {
    v6 = (objc_opt_respondsToSelector() & 1) != 0 && [(UITextInputController *)self keyboardType]== 122;
    if (source == 3 && v6)
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
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v9 = selfCopy;
    v10 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
    [v10 updateEventSource:source options:v7 responder:v9];
  }

  else
  {
    __UIPlatformFallbackInputSource = source;
  }
}

- (_NSRange)_selectedNSRange
{
  _selectableText = [(UITextInputController *)self _selectableText];
  v4 = _selectableText;
  if (_selectableText)
  {
    selectedTextRange = [_selectableText selectedTextRange];
    if (selectedTextRange)
    {
      v6 = [(UITextInputController *)self _nsrangeForTextRange:selectedTextRange];
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
  _selectableText = [(UITextInputController *)self _selectableText];
  v3 = _selectableText;
  if (_selectableText)
  {
    selectedTextRange = [_selectableText selectedTextRange];
    if (selectedTextRange)
    {
      markedTextRange = [v3 markedTextRange];
      v6 = markedTextRange;
      if (!markedTextRange || ([markedTextRange start], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(selectedTextRange, "start"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v3, "offsetFromPosition:toPosition:", v7, v8), v8, v7, v9 < 0))
      {
        v12 = 0;
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        start = [selectedTextRange start];
        v11 = [selectedTextRange end];
        v12 = [v3 offsetFromPosition:start toPosition:v11];
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
  _selectableText = [(UITextInputController *)self _selectableText];
  _fullRange = [_selectableText _fullRange];
  [_selectableText setSelectedTextRange:_fullRange];
}

- (int)_indexForTextPosition:(id)position
{
  positionCopy = position;
  _selectableText = [(UITextInputController *)self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  v7 = [_selectableText offsetFromPosition:beginningOfDocument toPosition:positionCopy];

  return v7;
}

- (_NSRange)_nsrangeForTextRange:(id)range
{
  rangeCopy = range;
  _selectableText = [(UITextInputController *)self _selectableText];
  start = [rangeCopy start];
  v7 = [(UITextInputController *)self _indexForTextPosition:start];

  start2 = [rangeCopy start];
  v9 = [rangeCopy end];

  v10 = [_selectableText offsetFromPosition:start2 toPosition:v9];
  v11 = v7;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (id)_textRangeFromNSRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  _selectableText = [(UITextInputController *)self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  v7 = [_selectableText positionFromPosition:beginningOfDocument offset:location];
  v8 = v7;
  if (v7)
  {
    endOfDocument = v7;
  }

  else
  {
    endOfDocument = [_selectableText endOfDocument];
  }

  v10 = endOfDocument;

  v11 = [_selectableText positionFromPosition:v10 offset:length];
  v12 = v11;
  if (v11)
  {
    endOfDocument2 = v11;
  }

  else
  {
    endOfDocument2 = [_selectableText endOfDocument];
  }

  v14 = endOfDocument2;

  v15 = [_selectableText textRangeFromPosition:v10 toPosition:v14];

  return v15;
}

- (id)_textRangeFromDirectionalRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v8 = [_selectableText positionFromPosition:start offset:var0];

  v9 = [_selectableText positionFromPosition:v8 offset:var1];
  v10 = [_selectableText textRangeFromPosition:v8 toPosition:v9];

  return v10;
}

- (unsigned)_characterInRelationToCaretSelection:(int)selection
{
  v3 = *&selection;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  if (selectedTextRange && (v7 = selectedTextRange, [_selectableText selectedTextRange], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEmpty"), v8, v7, v9))
  {
    v10 = [(UITextInputController *)self _characterInRelationToRangedSelection:v3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unsigned)_characterInRelationToRangedSelection:(int)selection
{
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (!selectedTextRange)
  {
    goto LABEL_4;
  }

  if (selection > -101)
  {
    if ((selection & 0x80000000) == 0)
    {
      selectedTextRange2 = [_selectableText selectedTextRange];
      v8 = [selectedTextRange2 end];

      if (selection)
      {
        v9 = [_selectableText positionFromPosition:v8 offset:selection];

        v8 = v9;
      }

      if (!v8)
      {
        goto LABEL_17;
      }

LABEL_11:
      v12 = [_selectableText positionFromPosition:v8 offset:1];
      if (v12)
      {
        v13 = v12;
        v14 = [_selectableText textRangeFromPosition:v8 toPosition:v12];
        v15 = [_selectableText textInRange:v14];
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
    selectedTextRange3 = [_selectableText selectedTextRange];
    start = [selectedTextRange3 start];
    v8 = [_selectableText positionFromPosition:start offset:selection];

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

- (unsigned)_characterInRelationToPosition:(id)position amount:(int)amount
{
  if (!position)
  {
    return 0;
  }

  positionCopy = position;
  _selectableText = [(UITextInputController *)self _selectableText];
  v8 = [_selectableText positionFromPosition:positionCopy offset:amount];

  v9 = [_selectableText positionFromPosition:v8 offset:1];
  v10 = [_selectableText textRangeFromPosition:v8 toPosition:v9];
  v11 = [_selectableText textInRange:v10];
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
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  if (selectedTextRange)
  {
    selectedTextRange2 = [_selectableText selectedTextRange];
    isEmpty = [selectedTextRange2 isEmpty];

    if (isEmpty)
    {
      selectedTextRange3 = [_selectableText selectedTextRange];
      start = [selectedTextRange3 start];
      v9 = [(UITextInputController *)self _rangeOfEnclosingWord:start];

      if (v9)
      {
        selectedTextRange = [_selectableText textInRange:v9];
      }

      else
      {
        selectedTextRange = 0;
      }
    }

    else
    {
      selectedTextRange = 0;
    }
  }

  return selectedTextRange;
}

- (id)_fullText
{
  _selectableText = [(UITextInputController *)self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  endOfDocument = [_selectableText endOfDocument];
  v5 = [_selectableText textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  v6 = [_selectableText textInRange:v5];

  return v6;
}

- (void)_setSelectionToPosition:(id)position
{
  if (position)
  {
    positionCopy = position;
    _selectableText = [(UITextInputController *)self _selectableText];
    v5 = [_selectableText textRangeFromPosition:positionCopy toPosition:positionCopy];

    if (v5)
    {
      [_selectableText setSelectedTextRange:v5];
    }
  }
}

- (BOOL)_selectionAtWordStart
{
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v6 = [(UITextInputController *)self _rangeOfEnclosingWord:start];

  if (v6)
  {
    start2 = [v6 start];
    selectedTextRange2 = [_selectableText selectedTextRange];
    start3 = [selectedTextRange2 start];
    v10 = [_selectableText comparePosition:start2 toPosition:start3];

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
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];

  if (start)
  {
    beginningOfDocument = [_selectableText beginningOfDocument];
    v6 = [_selectableText comparePosition:beginningOfDocument toPosition:start] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_selectionAtDocumentEnd
{
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  v4 = [selectedTextRange end];

  if (v4)
  {
    endOfDocument = [_selectableText endOfDocument];
    v6 = [_selectableText comparePosition:endOfDocument toPosition:v4] == 0;
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
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v5 = [selectedTextRange end];
  v6 = [_selectableText comparePosition:start toPosition:v5] == 0;

  return v6;
}

- (BOOL)_hasMarkedTextOrRangedSelection
{
  _selectableText = [(UITextInputController *)self _selectableText];
  markedTextRange = [_selectableText markedTextRange];
  if (markedTextRange)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    selectedTextRange = [_selectableText selectedTextRange];
    if (selectedTextRange)
    {
      selectedTextRange2 = [_selectableText selectedTextRange];
      v4 = [selectedTextRange2 isEmpty] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)_extendCurrentSelection:(int)selection
{
  v3 = *&selection;
  _selectableText = [(UITextInputController *)self _selectableText];
  if (v3)
  {
    v15 = _selectableText;
    selectedTextRange = [_selectableText selectedTextRange];

    _selectableText = v15;
    if (selectedTextRange)
    {
      selectedTextRange2 = [v15 selectedTextRange];
      start = [selectedTextRange2 start];

      selectedTextRange3 = [v15 selectedTextRange];
      v10 = [selectedTextRange3 end];

      if (v3 < 1)
      {
        v13 = [(UITextInputController *)self _clampedpositionFromPosition:start offset:v3];
        v12 = start;
        start = v13;
      }

      else
      {
        v11 = [(UITextInputController *)self _clampedpositionFromPosition:v10 offset:v3];
        v12 = v10;
        v10 = v11;
      }

      v14 = [v15 textRangeFromPosition:start toPosition:v10];
      [v15 setSelectedTextRange:v14];

      _selectableText = v15;
    }
  }
}

- (void)_moveCurrentSelection:(int)selection
{
  v3 = *&selection;
  _selectableText = [(UITextInputController *)self _selectableText];
  if (v3)
  {
    v14 = _selectableText;
    selectedTextRange = [_selectableText selectedTextRange];

    _selectableText = v14;
    if (selectedTextRange)
    {
      selectedTextRange2 = [v14 selectedTextRange];
      isEmpty = [selectedTextRange2 isEmpty];

      if (isEmpty)
      {
        selectedTextRange3 = [v14 selectedTextRange];
        start = [selectedTextRange3 start];
      }

      else
      {
        selectedTextRange4 = [v14 selectedTextRange];
        start = [selectedTextRange4 end];

        if (v3 < 1)
        {
          v3 = (v3 + 1);
        }

        else
        {
          v3 = (v3 - 1);
        }
      }

      v12 = [(UITextInputController *)self _clampedpositionFromPosition:start offset:v3];

      v13 = [v14 textRangeFromPosition:v12 toPosition:v12];
      if (v13)
      {
        [v14 setSelectedTextRange:v13];
      }

      _selectableText = v14;
    }
  }
}

- (void)_expandSelectionToBackwardDeletionClusterWithReinsertionOut:(id *)out
{
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v6 = [selectedTextRange end];
  v7 = start;
  if (!selectedTextRange || ([selectedTextRange isEmpty] & 1) != 0)
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

  v8 = [_selectableText textInRange:selectedTextRange];
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_4:
  outCopy = out;
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

    v10 = [_selectableText positionFromPosition:v19 offset:-1];

    if (v10)
    {
      v17 = [_selectableText textRangeFromPosition:v10 toPosition:v19];
      if (v17)
      {
        v18 = [_selectableText textInRange:v17];
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
  v20 = _selectableText;
  if (outCopy && v16 >= 1)
  {
    v21 = v10;

    *outCopy = [(__CFString *)v8 substringToIndex:v16];
    v20 = _selectableText;
    v19 = v21;
  }

  if (v19 != v7 && v19 && v6)
  {
    v22 = [v20 textRangeFromPosition:v19 toPosition:v6];
    if (v22)
    {
      [_selectableText setSelectedTextRange:v22];
    }
  }

LABEL_29:
}

- (void)_expandSelectionToStartOfWordsBeforeCaretSelection:(int)selection
{
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  v5 = selectedTextRange;
  if (selection && selectedTextRange)
  {
    start = [selectedTextRange start];
    v7 = [_selectableText _positionAtStartOfWords:selection beforePosition:start];

    if (v7)
    {
      v8 = [v5 end];
      v9 = [_selectableText textRangeFromPosition:v7 toPosition:v8];
      [_selectableText setSelectedTextRange:v9];
    }
  }
}

- (id)_positionWithinRange:(id)range farthestInDirection:(int64_t)direction
{
  rangeCopy = range;
  _selectableText = [(UITextInputController *)self _selectableText];
  v8 = _selectableText;
  if (direction == 1)
  {
    start = [rangeCopy start];
    goto LABEL_7;
  }

  if (!direction)
  {
    start = [rangeCopy end];
LABEL_7:
    v10 = start;
    goto LABEL_8;
  }

  if (rangeCopy)
  {
    start = [_selectableText positionWithinRange:rangeCopy farthestInDirection:direction];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (int64_t)_opposingDirectionFromDirection:(int64_t)direction
{
  result = direction;
  if (direction <= 5)
  {
    return qword_18A680700[direction];
  }

  return result;
}

- (id)_positionFromPosition:(id)position pastTextUnit:(int64_t)unit inDirection:(int64_t)direction
{
  positionCopy = position;
  _selectableText = [(UITextInputController *)self _selectableText];
  if (positionCopy)
  {
    v10 = -3;
    while (!__CFADD__(v10++, 1))
    {
      tokenizer = [_selectableText tokenizer];
      v13 = [tokenizer positionFromPosition:positionCopy toBoundary:unit inDirection:direction];

      if (!v13)
      {
        v17 = 0;
        positionCopy = 0;
        goto LABEL_12;
      }

      tokenizer2 = [_selectableText tokenizer];
      if ([tokenizer2 isPosition:v13 atBoundary:unit inDirection:direction])
      {

LABEL_11:
        v17 = v13;
        positionCopy = v17;
        goto LABEL_12;
      }

      tokenizer3 = [_selectableText tokenizer];
      v16 = [tokenizer3 isPosition:v13 atBoundary:unit inDirection:{-[UITextInputController _opposingDirectionFromDirection:](self, "_opposingDirectionFromDirection:", direction)}];

      positionCopy = v13;
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

- (id)_positionAtStartOfWords:(unint64_t)words beforePosition:(id)position
{
  positionCopy = position;
  _selectableText = [(UITextInputController *)self _selectableText];
  v8 = _selectableText;
  if (!words || !positionCopy)
  {
    positionCopy = positionCopy;
    v10 = positionCopy;
    goto LABEL_13;
  }

  tokenizer = [_selectableText tokenizer];
  v10 = [tokenizer rangeEnclosingPosition:positionCopy withGranularity:1 inDirection:1];

  if (v10)
  {
    goto LABEL_4;
  }

  tokenizer2 = [v8 tokenizer];
  v19 = [tokenizer2 positionFromPosition:positionCopy toBoundary:1 inDirection:1];

  if (!v19)
  {
    v10 = 0;
    goto LABEL_13;
  }

  tokenizer3 = [v8 tokenizer];
  v10 = [tokenizer3 rangeEnclosingPosition:v19 withGranularity:1 inDirection:1];

  if (v10)
  {
LABEL_4:
    start = [v10 start];

    if (words >= 2)
    {
      v12 = words - 1;
      while (1)
      {
        tokenizer4 = [v8 tokenizer];
        v14 = [tokenizer4 positionFromPosition:start toBoundary:1 inDirection:1];

        if (!v14)
        {
          break;
        }

        tokenizer5 = [v8 tokenizer];
        v16 = [tokenizer5 positionFromPosition:v14 toBoundary:1 inDirection:1];

        if (!v16)
        {
          break;
        }

        start = v16;
        if (!--v12)
        {
          goto LABEL_12;
        }
      }
    }

    v16 = start;
LABEL_12:
    positionCopy = v16;

    v10 = positionCopy;
  }

LABEL_13:

  return v10;
}

- (void)_setCaretSelectionAtEndOfSelection
{
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  v3 = selectedTextRange;
  if (selectedTextRange)
  {
    v4 = [selectedTextRange end];
    v5 = [v3 end];
    v6 = [_selectableText textRangeFromPosition:v4 toPosition:v5];
    [_selectableText setSelectedTextRange:v6];
  }
}

- (void)_deleteByWord
{
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    start = [selectedTextRange start];
    v6 = [_selectableText _positionAtStartOfWords:1 beforePosition:start];

    if (v6)
    {
      v7 = [selectedTextRange end];
      v8 = [_selectableText textRangeFromPosition:v6 toPosition:v7];

      selectedTextRange = v8;
    }
  }

  [(UITextInputController *)self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteForwardByWord
{
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    _selectableText2 = [(UITextInputController *)self _selectableText];
    v6 = _selectableText2;
    if (selectedTextRange)
    {
      tokenizer = [_selectableText2 tokenizer];
      v8 = [selectedTextRange end];
      v9 = [tokenizer rangeEnclosingPosition:v8 withGranularity:1 inDirection:0];

      if (v9 || ([v6 tokenizer], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(selectedTextRange, "end"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "positionFromPosition:toBoundary:inDirection:", v15, 1, 0), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, v16) && (objc_msgSend(v6, "tokenizer"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "rangeEnclosingPosition:withGranularity:inDirection:", v16, 1, 0), v9 = objc_claimAutoreleasedReturnValue(), v17, v16, v9))
      {
        start = [selectedTextRange start];
        v11 = [v9 end];
        v12 = [v6 textRangeFromPosition:start toPosition:v11];

        selectedTextRange = v12;
      }
    }
  }

  [(UITextInputController *)self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteToStartOfLine
{
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    tokenizer = [_selectableText tokenizer];
    start = [selectedTextRange start];
    v7 = [tokenizer positionFromPosition:start toBoundary:4 inDirection:1];

    if (v7)
    {
      start2 = [selectedTextRange start];
      v9 = [_selectableText comparePosition:start2 toPosition:v7];

      if (v9 == 1)
      {
        start3 = [selectedTextRange start];
        v11 = [_selectableText textRangeFromPosition:v7 toPosition:start3];

        selectedTextRange = v11;
      }
    }
  }

  [(UITextInputController *)self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteToEndOfLine
{
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    tokenizer = [_selectableText tokenizer];
    v6 = [selectedTextRange end];
    v7 = [tokenizer positionFromPosition:v6 toBoundary:4 inDirection:0];

    if (v7)
    {
      v8 = [selectedTextRange end];
      v9 = [_selectableText comparePosition:v7 toPosition:v8];

      if (v9 == 1)
      {
        v10 = [selectedTextRange end];
        v11 = [_selectableText textRangeFromPosition:v10 toPosition:v7];

        selectedTextRange = v11;
      }
    }
  }

  [(UITextInputController *)self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteToEndOfParagraph
{
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    tokenizer = [_selectableText tokenizer];
    v6 = [selectedTextRange end];
    v7 = [tokenizer positionFromPosition:v6 toBoundary:3 inDirection:0];

    if (v7)
    {
      v8 = [selectedTextRange end];
      v9 = [_selectableText comparePosition:v7 toPosition:v8];

      if (v9 == 1)
      {
        v10 = [selectedTextRange end];
        v11 = [_selectableText textRangeFromPosition:v10 toPosition:v7];

        selectedTextRange = v11;
      }
    }
  }

  [(UITextInputController *)self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteTextRange:(id)range
{
  rangeCopy = range;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  [_selectableText setSelectedTextRange:rangeCopy];

  selectedTextRange2 = [_selectableText selectedTextRange];
  isEmpty = [selectedTextRange2 isEmpty];

  if ((isEmpty & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = _selectableText;
      if ([v8 keyboardInputShouldDelete:v8])
      {
        [v8 deleteBackward];
      }

      else
      {
        [v8 setSelectedTextRange:selectedTextRange];
      }
    }

    else
    {
      [_selectableText deleteBackward];
    }
  }
}

- (void)_deleteBackwardAndNotify:(BOOL)notify
{
  _keyInput = [(UITextInputController *)self _keyInput];
  [_keyInput deleteBackward];
}

- (void)_deleteForwardAndNotify:(BOOL)notify
{
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    tokenizer = [_selectableText tokenizer];
    v7 = [selectedTextRange end];
    v8 = [tokenizer positionFromPosition:v7 toBoundary:0 inDirection:0];

    if (v8)
    {
      v9 = [selectedTextRange end];
      v10 = [_selectableText comparePosition:v8 toPosition:v9];

      if (v10 == 1)
      {
        v11 = [selectedTextRange end];
        v12 = [_selectableText textRangeFromPosition:v11 toPosition:v8];

        selectedTextRange = v12;
      }
    }
  }

  [(UITextInputController *)self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_transpose
{
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  if ([selectedTextRange isEmpty])
  {
    inputDelegate = [_selectableText inputDelegate];
    [inputDelegate textWillChange:_selectableText];

    tokenizer = [_selectableText tokenizer];
    start = [selectedTextRange start];
    v6 = [tokenizer positionFromPosition:start toBoundary:0 inDirection:1];

    tokenizer2 = [_selectableText tokenizer];
    v8 = [selectedTextRange end];
    v9 = [tokenizer2 positionFromPosition:v8 toBoundary:0 inDirection:0];

    if (v6 && v9)
    {
      start2 = [selectedTextRange start];
      v11 = [_selectableText textRangeFromPosition:v6 toPosition:start2];

      v12 = [selectedTextRange end];
      v13 = [_selectableText textRangeFromPosition:v12 toPosition:v9];

      if (v11 && v13)
      {
        v14 = [_selectableText textInRange:v11];
        v15 = [_selectableText textInRange:v13];
        v16 = [v15 stringByAppendingString:v14];
        v17 = [_selectableText textRangeFromPosition:v6 toPosition:v9];
        if (v17)
        {
          [_selectableText replaceRange:v17 withText:v16];
        }
      }
    }

    inputDelegate2 = [_selectableText inputDelegate];
    [inputDelegate2 textDidChange:_selectableText];
  }
}

- (void)_replaceCurrentWordWithText:(id)text
{
  textCopy = text;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v7 = [(UITextInputController *)self _rangeOfEnclosingWord:start];

  if (v7)
  {
    [_selectableText replaceRange:v7 withText:textCopy];
  }
}

- (void)_replaceDocumentWithText:(id)text
{
  textCopy = text;
  _selectableText = [(UITextInputController *)self _selectableText];
  _fullRange = [(UITextInputController *)self _fullRange];
  v6 = _fullRange;
  if (_fullRange)
  {
    if (([_fullRange isEmpty] & 1) == 0)
    {
      [_selectableText replaceRange:v6 withText:&stru_1EFB14550];
    }

    [_selectableText insertText:textCopy];
  }
}

- (void)_scrollRectToVisible:(CGRect)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  _selectableText = [(UITextInputController *)self _selectableText];
  textInputView = [_selectableText textInputView];
  if (objc_opt_respondsToSelector())
  {
    v10 = [textInputView performSelector:sel__enclosingScrollerIncludingSelf];
    [v10 convertRect:textInputView fromView:{x, y, width, height}];
    [v10 scrollRectToVisible:animatedCopy animated:?];
  }
}

- (id)_normalizedStringForRangeComparison:(id)comparison
{
  v3 = [comparison _stringByReplacingCharacter:160 withCharacter:32];
  v4 = [v3 _stringByReplacingCharacter:8217 withCharacter:39];

  v5 = [v4 _stringByReplacingCharacter:8216 withCharacter:39];

  return v5;
}

- (id)_rangeOfText:(id)text endingAtPosition:(id)position
{
  textCopy = text;
  positionCopy = position;
  _selectableText = [(UITextInputController *)self _selectableText];
  if (![textCopy length])
  {
    v11 = [_selectableText textRangeFromPosition:positionCopy toPosition:positionCopy];
    goto LABEL_30;
  }

  v9 = [_selectableText _rangeOfEnclosingWord:positionCopy];
  if (v9)
  {
    v10 = [_selectableText textInRange:v9];
  }

  else
  {
    v10 = 0;
  }

  if (![v10 isEqualToString:textCopy])
  {
    beginningOfDocument = [_selectableText positionFromPosition:positionCopy offset:{-objc_msgSend(textCopy, "length")}];
    if (!beginningOfDocument)
    {
      beginningOfDocument = [_selectableText beginningOfDocument];
    }

    v14 = [_selectableText textRangeFromPosition:beginningOfDocument toPosition:positionCopy];

    if (v14)
    {
      v15 = [_selectableText textInRange:v14];

      v16 = [v15 length];
      if (v16 <= [textCopy length])
      {
        v12 = v14;
        v10 = v15;
LABEL_25:
        v21 = [(UITextInputController *)self _normalizedStringForRangeComparison:v10];
        v22 = [(UITextInputController *)self _normalizedStringForRangeComparison:textCopy];
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
        v18 = beginningOfDocument;
        beginningOfDocument = [_selectableText positionFromPosition:beginningOfDocument offset:1];

        if (!beginningOfDocument)
        {
          break;
        }

        if ([_selectableText comparePosition:beginningOfDocument toPosition:positionCopy] != -1)
        {

          break;
        }

        v12 = [_selectableText textRangeFromPosition:beginningOfDocument toPosition:positionCopy];

        if (!v12)
        {
          goto LABEL_24;
        }

        v10 = [_selectableText textInRange:v12];

        v19 = [v10 length];
        if (v19 > [textCopy length])
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

      beginningOfDocument = 0;
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

- (id)_rangeOfTextUnit:(int64_t)unit enclosingPosition:(id)position
{
  positionCopy = position;
  if (positionCopy)
  {
    _selectableText = [(UITextInputController *)self _selectableText];
    tokenizer = [_selectableText tokenizer];
    v9 = [tokenizer rangeEnclosingPosition:positionCopy withGranularity:unit inDirection:0];

    if (!v9)
    {
      tokenizer2 = [_selectableText tokenizer];
      v9 = [tokenizer2 rangeEnclosingPosition:positionCopy withGranularity:unit inDirection:1];
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
  _selectableText = [(UITextInputController *)self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  endOfDocument = [_selectableText endOfDocument];
  v5 = [_selectableText textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  return v5;
}

- (id)_rangeSpanningTextUnit:(int64_t)unit andPosition:(id)position
{
  positionCopy = position;
  if (!positionCopy)
  {
    v8 = 0;
    goto LABEL_17;
  }

  _selectableText = [(UITextInputController *)self _selectableText];
  v8 = [(UITextInputController *)self _rangeOfTextUnit:unit enclosingPosition:positionCopy];
  if (!v8)
  {
    tokenizer = [_selectableText tokenizer];
    v10 = 1;
    v11 = [tokenizer positionFromPosition:positionCopy toBoundary:unit inDirection:1];

    v12 = v11;
    if (!v11)
    {
      tokenizer2 = [_selectableText tokenizer];
      v12 = [tokenizer2 positionFromPosition:positionCopy toBoundary:unit inDirection:0];

      if (!v12)
      {
        v15 = 0;
        goto LABEL_11;
      }

      v10 = 0;
    }

    tokenizer3 = [_selectableText tokenizer];
    v15 = [tokenizer3 rangeEnclosingPosition:v12 withGranularity:unit inDirection:v10];

    if (v11)
    {
      start = [v15 start];
      if (start)
      {
        v17 = _selectableText;
        v18 = start;
        v19 = positionCopy;
LABEL_13:
        v8 = [v17 textRangeFromPosition:v18 toPosition:v19];
LABEL_15:

        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_11:
    start = [v15 end];
    if (start)
    {
      v17 = _selectableText;
      v18 = positionCopy;
      v19 = start;
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

- (BOOL)_range:(id)_range containsRange:(id)range
{
  rangeCopy = range;
  v7 = [(UITextInputController *)self _nsrangeForTextRange:_range];
  v9 = v8;
  v10 = [(UITextInputController *)self _nsrangeForTextRange:rangeCopy];
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

- (BOOL)_range:(id)_range intersectsRange:(id)range
{
  rangeCopy = range;
  v7 = [(UITextInputController *)self _nsrangeForTextRange:_range];
  v9 = v8;
  v10 = [(UITextInputController *)self _nsrangeForTextRange:rangeCopy];
  v12 = v11;

  v14.location = v7;
  v14.length = v9;
  v15.location = v10;
  v15.length = v12;
  return NSIntersectionRange(v14, v15).length != 0;
}

- (id)_intersectionOfRange:(id)range andRange:(id)andRange
{
  rangeCopy = range;
  andRangeCopy = andRange;
  selfCopy = self;
  start = [rangeCopy start];
  start2 = [andRangeCopy start];
  if ([(UITextInputController *)selfCopy comparePosition:start toPosition:start2]== 1)
  {
    v11 = rangeCopy;
  }

  else
  {
    v11 = andRangeCopy;
  }

  start3 = [v11 start];

  v13 = [rangeCopy end];
  v14 = [andRangeCopy end];
  if ([(UITextInputController *)selfCopy comparePosition:v13 toPosition:v14]== -1)
  {
    v15 = rangeCopy;
  }

  else
  {
    v15 = andRangeCopy;
  }

  v16 = [v15 end];

  v17 = [(UITextInputController *)selfCopy textRangeFromPosition:start3 toPosition:v16];

  return v17;
}

- (BOOL)_range:(id)_range isEqualToRange:(id)range
{
  _rangeCopy = _range;
  rangeCopy = range;
  v8 = rangeCopy;
  if (_rangeCopy == rangeCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (_rangeCopy && rangeCopy)
    {
      selfCopy = self;
      start = [_rangeCopy start];
      start2 = [v8 start];
      v13 = [(UITextInputController *)selfCopy comparePosition:start toPosition:start2];

      v14 = [_rangeCopy end];
      v15 = [v8 end];
      v16 = v13 | [(UITextInputController *)selfCopy comparePosition:v14 toPosition:v15];

      v9 = v16 == 0;
    }
  }

  return v9;
}

- (id)_findBoundaryPositionClosestToPosition:(id)position withGranularity:(int64_t)granularity
{
  positionCopy = position;
  v7 = positionCopy;
  if (granularity == 5)
  {
    v8 = [(UITextInputController *)self _findDocumentBoundaryFromPosition:positionCopy];
  }

  else if (granularity == 1)
  {
    v8 = [(UITextInputController *)self _findPleasingWordBoundaryFromPosition:positionCopy];
  }

  else
  {
    v8 = positionCopy;
  }

  v9 = v8;

  return v9;
}

- (id)_findPleasingWordBoundaryFromPosition:(id)position
{
  positionCopy = position;
  _selectableText = [(UITextInputController *)self _selectableText];
  tokenizer = [_selectableText tokenizer];
  if ([tokenizer isPosition:positionCopy atBoundary:4 inDirection:0])
  {
    goto LABEL_2;
  }

  v9 = [tokenizer isPosition:positionCopy withinTextUnit:1 inDirection:0];
  tokenizer2 = [_selectableText tokenizer];
  v11 = tokenizer2;
  if (v9)
  {
    v12 = [tokenizer2 rangeEnclosingPosition:positionCopy withGranularity:1 inDirection:0];

    start = [v12 start];
    v14 = [_selectableText offsetFromPosition:start toPosition:positionCopy];

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

  v15 = [tokenizer2 isPosition:positionCopy atBoundary:1 inDirection:1];

  if (v15)
  {
LABEL_2:
    endOfDocument = positionCopy;
LABEL_3:
    v8 = endOfDocument;
    goto LABEL_12;
  }

  tokenizer3 = [_selectableText tokenizer];
  v8 = [tokenizer3 positionFromPosition:positionCopy toBoundary:1 inDirection:0];

  if (!v8)
  {
    endOfDocument = [_selectableText endOfDocument];
    goto LABEL_3;
  }

LABEL_12:

  return v8;
}

- (id)_findDocumentBoundaryFromPosition:(id)position
{
  positionCopy = position;
  _selectableText = [(UITextInputController *)self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  endOfDocument = [_selectableText endOfDocument];
  v8 = [_selectableText offsetFromPosition:beginningOfDocument toPosition:positionCopy];
  v9 = [_selectableText offsetFromPosition:positionCopy toPosition:endOfDocument];

  if (v8 <= v9)
  {
    v10 = beginningOfDocument;
  }

  else
  {
    v10 = endOfDocument;
  }

  v11 = v10;
  v12 = v11;

  return v11;
}

- (id)_underlineRectsByDocumentLineForSelectionRange:(id)range
{
  rangeCopy = range;
  _selectableText = [(UITextInputController *)self _selectableText];
  tokenizer = [_selectableText tokenizer];
  start = [rangeCopy start];
  v8 = [tokenizer rangeEnclosingPosition:start withGranularity:4 inDirection:0];

  v9 = [rangeCopy end];
  v10 = [tokenizer rangeEnclosingPosition:v9 withGranularity:4 inDirection:0];

  if (!v8 || !v10 || ([v8 isEmpty] & 1) != 0 || (objc_msgSend(v10, "isEmpty") & 1) != 0 || (objc_msgSend(v8, "isEqual:", v10) & 1) != 0)
  {
    goto LABEL_9;
  }

  start2 = [v8 start];
  start3 = [v10 start];
  if ([start2 isEqual:start3])
  {

LABEL_9:
    v15 = [_selectableText selectionRectsForRange:rangeCopy];
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
  start4 = [rangeCopy start];
  v18 = [v8 end];
  v19 = [_selectableText textRangeFromPosition:start4 toPosition:v18];

  v29 = v19;
  [(UITextInputController *)self _updateSelectedRects:v15 byTrimmingWhitespaceInRange:v19 inDocument:_selectableText];
  v20 = [v8 end];
  v21 = [tokenizer rangeEnclosingPosition:v20 withGranularity:4 inDirection:0];

  if (v21)
  {
    while (([v21 isEqual:v10] & 1) == 0)
    {
      v22 = [v21 end];
      v23 = [tokenizer rangeEnclosingPosition:v22 withGranularity:4 inDirection:0];

      if ([v23 isEqual:v21])
      {

        break;
      }

      v24 = [_selectableText selectionRectsForRange:v21];
      [v15 addObjectsFromArray:v24];

      v21 = v23;
      if (!v23)
      {
        break;
      }
    }
  }

  start5 = [v10 start];
  v26 = [rangeCopy end];
  v27 = [_selectableText textRangeFromPosition:start5 toPosition:v26];

  if (v27)
  {
    [(UITextInputController *)self _updateSelectedRects:v15 byTrimmingWhitespaceInRange:v27 inDocument:_selectableText];
  }

LABEL_10:

  return v15;
}

- (void)_updateSelectedRects:(id)rects byTrimmingWhitespaceInRange:(id)range inDocument:(id)document
{
  rectsCopy = rects;
  rangeCopy = range;
  documentCopy = document;
  v9 = documentCopy;
  if (rangeCopy)
  {
    v10 = [documentCopy textInRange:rangeCopy];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v12 = [v10 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    if ([v12 length])
    {
      start = [rangeCopy start];
      v14 = [v9 positionFromPosition:start offset:{objc_msgSend(v12, "length")}];

      start2 = [rangeCopy start];
      v16 = [v9 textRangeFromPosition:start2 toPosition:v14];

      if (v16)
      {
        v17 = [v9 selectionRectsForRange:v16];
        [rectsCopy addObjectsFromArray:v17];
      }
    }
  }
}

- (id)_rangeOfSmartSelectionIncludingRange:(id)range
{
  rangeCopy = range;
  if (rangeCopy)
  {
    _selectableText = [(UITextInputController *)self _selectableText];
    v58 = rangeCopy;
    v6 = rangeCopy;
    tokenizer = [_selectableText tokenizer];
    start = [v6 start];
    v9 = [tokenizer positionFromPosition:start toBoundary:2 inDirection:1];
    v10 = v9;
    if (v9)
    {
      beginningOfDocument = v9;
    }

    else
    {
      beginningOfDocument = [_selectableText beginningOfDocument];
    }

    v12 = beginningOfDocument;

    start2 = [v6 start];
    v14 = [_selectableText offsetFromPosition:v12 toPosition:start2];

    if (v14 >= 65)
    {
      start3 = [v6 start];
      v16 = [_selectableText positionFromPosition:start3 offset:-64];

      v12 = [tokenizer positionFromPosition:v16 toBoundary:1 inDirection:0];

      if (!v12)
      {
        start4 = [v6 start];
        v18 = [_selectableText positionFromPosition:start4 offset:-64];

        v12 = [tokenizer positionFromPosition:v18 toBoundary:0 inDirection:0];
      }

      start5 = [v6 start];
      v20 = [_selectableText comparePosition:v12 toPosition:start5];

      if (v20 == 1)
      {
        start6 = [v6 start];
        v22 = [tokenizer positionFromPosition:start6 toBoundary:0 inDirection:1];
        v23 = v22;
        if (v22)
        {
          start7 = v22;
        }

        else
        {
          start7 = [v6 start];
        }

        v25 = start7;

        v12 = v25;
      }
    }

    v26 = [v6 end];
    v27 = [tokenizer positionFromPosition:v26 toBoundary:2 inDirection:0];
    v28 = v27;
    if (v27)
    {
      endOfDocument = v27;
    }

    else
    {
      endOfDocument = [_selectableText endOfDocument];
    }

    v30 = endOfDocument;

    v31 = [v6 end];
    v32 = [_selectableText offsetFromPosition:v31 toPosition:v30];

    if (v32 >= 65)
    {
      v33 = [v6 end];
      v34 = [_selectableText positionFromPosition:v33 offset:64];

      v30 = [tokenizer positionFromPosition:v34 toBoundary:1 inDirection:1];

      if (!v30)
      {
        v35 = [v6 end];
        v36 = [_selectableText positionFromPosition:v35 offset:64];

        v30 = [tokenizer positionFromPosition:v36 toBoundary:0 inDirection:1];
      }

      v37 = [v6 end];
      v38 = [_selectableText comparePosition:v37 toPosition:v30];

      if (v38 == 1)
      {
        v39 = [v6 end];
        v40 = [tokenizer positionFromPosition:v39 toBoundary:0 inDirection:0];
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

    v57 = tokenizer;
    v59 = [_selectableText textRangeFromPosition:v12 toPosition:v30];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v44 = [_selectableText keyboardType], v45 = 420, v44 != 3) && v44 != 10 && v44 != 120)
    {
      v45 = 428;
    }

    beginningOfDocument2 = [_selectableText beginningOfDocument];
    v56 = v12;
    v47 = [_selectableText offsetFromPosition:beginningOfDocument2 toPosition:v12];

    v48 = [(UITextInputController *)self _nsrangeForTextRange:v6];
    v50 = v49;
    v51 = [_selectableText textInRange:v59];
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

    rangeCopy = v58;
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

- (id)_clampedpositionFromPosition:(id)position offset:(int)offset
{
  positionCopy = position;
  v7 = positionCopy;
  if (offset)
  {
    _selectableText = [(UITextInputController *)self _selectableText];
    v9 = _selectableText;
    if (offset < 1)
    {
      beginningOfDocument = [_selectableText positionFromPosition:v7 offset:offset];
      if (!beginningOfDocument)
      {
        beginningOfDocument = [v9 beginningOfDocument];
      }
    }

    else
    {
      beginningOfDocument = [_selectableText positionFromPosition:v7 offset:offset];
      if (!beginningOfDocument)
      {
        beginningOfDocument = [v9 endOfDocument];
      }
    }

    v11 = beginningOfDocument;
  }

  else
  {
    v11 = positionCopy;
  }

  return v11;
}

- (id)_rangeFromCurrentRangeWithDelta:(_NSRange)delta
{
  length = delta.length;
  location = delta.location;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  v7 = selectedTextRange;
  if (location | length)
  {
    v9 = length + location;
    start = [selectedTextRange start];
    v11 = [v7 end];
    if (location)
    {
      v12 = [_selectableText positionFromPosition:start offset:location];

      start = v12;
      if (!v12)
      {
        if ((location & 0x8000000000000000) != 0)
        {
          [_selectableText beginningOfDocument];
        }

        else
        {
          [_selectableText endOfDocument];
        }
        start = ;
      }
    }

    if (v9)
    {
      v13 = [_selectableText positionFromPosition:v11 offset:v9];

      v11 = v13;
      if (!v13)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          endOfDocument = start;
        }

        else
        {
          endOfDocument = [_selectableText endOfDocument];
        }

        v11 = endOfDocument;
      }
    }

    v15 = [_selectableText textRangeFromPosition:start toPosition:v11];
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
    v8 = selectedTextRange;
  }

  return v8;
}

- (id)_textColorForCaretSelection
{
  if (objc_opt_respondsToSelector())
  {
    textColorForCaretSelection = [(UITextInputController *)self textColorForCaretSelection];
  }

  else
  {
    _selectableText = [(UITextInputController *)self _selectableText];
    if (objc_opt_respondsToSelector())
    {
      selectedTextRange = [_selectableText selectedTextRange];
      v6 = [selectedTextRange end];

      if (v6)
      {
        endOfDocument = [_selectableText endOfDocument];
        if (endOfDocument && [_selectableText comparePosition:endOfDocument toPosition:v6] == -1)
        {
          v8 = endOfDocument;

          v6 = v8;
        }

        v9 = [_selectableText textStylingAtPosition:v6 inDirection:0];
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

      textColorForCaretSelection = [v9 objectForKey:v10];
    }

    else
    {
      textColorForCaretSelection = 0;
    }
  }

  return textColorForCaretSelection;
}

- (id)_fontForCaretSelection
{
  if (objc_opt_respondsToSelector())
  {
    fontForCaretSelection = [(UITextInputController *)self fontForCaretSelection];
  }

  else
  {
    _selectableText = [(UITextInputController *)self _selectableText];
    if (objc_opt_respondsToSelector())
    {
      selectedTextRange = [_selectableText selectedTextRange];
      v6 = [selectedTextRange end];

      if (v6)
      {
        endOfDocument = [_selectableText endOfDocument];
        if (endOfDocument && [_selectableText comparePosition:endOfDocument toPosition:v6] == -1)
        {
          v8 = endOfDocument;

          v6 = v8;
        }

        v9 = [_selectableText textStylingAtPosition:v6 inDirection:0];
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

      fontForCaretSelection = [v9 objectForKey:v10];
    }

    else
    {
      fontForCaretSelection = 0;
    }
  }

  return fontForCaretSelection;
}

- (void)_updateSelectionWithTextRange:(id)range withAffinityDownstream:(BOOL)downstream
{
  downstreamCopy = downstream;
  rangeCopy = range;
  _selectableText = [(UITextInputController *)self _selectableText];
  [_selectableText _setSelectedTextRange:rangeCopy withAffinityDownstream:downstreamCopy];
}

- (id)_setSelectionRangeWithHistory:(id)history
{
  historyCopy = history;
  _selectableText = [(UITextInputController *)self _selectableText];
  cursor = [historyCopy cursor];

  if (!cursor)
  {
    goto LABEL_19;
  }

  if ([historyCopy anchor] == 1)
  {
    cursor2 = [historyCopy cursor];
LABEL_5:
    [historyCopy setEnd:cursor2];
    goto LABEL_6;
  }

  anchor = [historyCopy anchor];
  cursor2 = [historyCopy cursor];
  [historyCopy setStart:cursor2];
  if (anchor != 2)
  {
    goto LABEL_5;
  }

LABEL_6:

  start = [historyCopy start];
  v10 = [historyCopy end];
  v11 = [_selectableText comparePosition:start toPosition:v10];

  if (v11 >= 1)
  {
    if ([historyCopy anchor] == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [historyCopy setAnchor:v12];
  }

  start2 = [historyCopy start];
  v14 = [historyCopy end];
  v15 = [_selectableText textRangeFromPosition:start2 toPosition:v14];

  -[UITextInputController _updateSelectionWithTextRange:withAffinityDownstream:](self, "_updateSelectionWithTextRange:withAffinityDownstream:", v15, [historyCopy affinityDownstream]);
  if ([historyCopy anchor])
  {
    if ([historyCopy anchor] == 1)
    {
      [_selectableText _lastRectForRange:v15];
    }

    else
    {
      [_selectableText firstRectForRange:v15];
    }

    [_selectableText _scrollRectToVisible:0 animated:?];
  }

  else if (objc_opt_respondsToSelector())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = *MEMORY[0x1E69E3030];
    webView = [(UITextInputController *)self webView];
    [defaultCenter postNotificationName:v17 object:webView];
  }

LABEL_19:

  return historyCopy;
}

- (id)_setHistory:(id)history withExtending:(BOOL)extending withAnchor:(int)anchor withAffinityDownstream:(BOOL)downstream
{
  downstreamCopy = downstream;
  v7 = *&anchor;
  extendingCopy = extending;
  historyCopy = history;
  if (historyCopy)
  {
    v11 = historyCopy;
    if (!extendingCopy)
    {
      [(UITextInputArrowKeyHistory *)historyCopy setAnchor:0];
    }
  }

  else
  {
    v11 = objc_alloc_init(UITextInputArrowKeyHistory);
  }

  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  [(UITextInputArrowKeyHistory *)v11 setStart:start];

  selectedTextRange2 = [_selectableText selectedTextRange];
  v16 = [selectedTextRange2 end];
  [(UITextInputArrowKeyHistory *)v11 setEnd:v16];

  anchor = [(UITextInputArrowKeyHistory *)v11 anchor];
  selectedTextRange3 = [_selectableText selectedTextRange];
  v19 = selectedTextRange3;
  if (v7 == 2)
  {
    if (anchor == 1)
    {
LABEL_7:
      start2 = [selectedTextRange3 end];
      goto LABEL_10;
    }
  }

  else if (anchor != 2)
  {
    goto LABEL_7;
  }

  start2 = [selectedTextRange3 start];
LABEL_10:
  v21 = start2;
  [(UITextInputArrowKeyHistory *)v11 setCursor:start2];

  startPosition = [(UITextInputArrowKeyHistory *)v11 startPosition];

  if (!startPosition)
  {
    cursor = [(UITextInputArrowKeyHistory *)v11 cursor];
    [(UITextInputArrowKeyHistory *)v11 setStartPosition:cursor];

    if (extendingCopy)
    {
      goto LABEL_12;
    }

LABEL_16:
    v7 = 0;
LABEL_17:
    [(UITextInputArrowKeyHistory *)v11 setAnchor:v7];
    goto LABEL_18;
  }

  if (!extendingCopy)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (![(UITextInputArrowKeyHistory *)v11 anchor]|| [(UITextInputController *)self _isEmptySelection])
  {
    goto LABEL_17;
  }

LABEL_18:
  [(UITextInputArrowKeyHistory *)v11 setAffinityDownstream:downstreamCopy];

  return v11;
}

- (id)_moveToStartOfWord:(BOOL)word withHistory:(id)history
{
  wordCopy = word;
  historyCopy = history;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UITextInputController *)self _setHistory:historyCopy withExtending:wordCopy withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    tokenizer = [_selectableText tokenizer];
    cursor = [v9 cursor];
    v12 = [tokenizer isPosition:cursor withinTextUnit:1 inDirection:1];

    if (v12)
    {
LABEL_7:
      tokenizer2 = [_selectableText tokenizer];
      cursor2 = [v9 cursor];
      v24 = [tokenizer2 positionFromPosition:cursor2 toBoundary:1 inDirection:1];
      [v9 setCursor:v24];

      cursor3 = [v9 cursor];
      [v9 setStartPosition:cursor3];

      v26 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
      goto LABEL_9;
    }

    tokenizer3 = [_selectableText tokenizer];
    cursor4 = [v9 cursor];
    cursor7 = [tokenizer3 positionFromPosition:cursor4 toBoundary:1 inDirection:1];

    if (cursor7)
    {
LABEL_4:
      tokenizer4 = [_selectableText tokenizer];
      cursor5 = [v9 cursor];
      v18 = [tokenizer4 isPosition:cursor5 withinTextUnit:1 inDirection:1];

      if ((v18 & 1) == 0)
      {
        tokenizer5 = [_selectableText tokenizer];
        cursor6 = [v9 cursor];
        v21 = [tokenizer5 positionFromPosition:cursor6 toBoundary:1 inDirection:1];
        [v9 setCursor:v21];
      }

      goto LABEL_7;
    }

    cursor7 = [v9 cursor];
    v28 = 0;
    while (1)
    {
      beginningOfDocument = [_selectableText beginningOfDocument];
      v30 = [_selectableText comparePosition:beginningOfDocument toPosition:cursor7];

      if (!v30)
      {
        break;
      }

      if (v28 && ![_selectableText comparePosition:v28 toPosition:cursor7])
      {
        beginningOfDocument2 = [_selectableText beginningOfDocument];
        [v9 setCursor:beginningOfDocument2];

        cursor8 = [v9 cursor];
        [v9 setStartPosition:cursor8];

        break;
      }

      v31 = cursor7;

      tokenizer6 = [_selectableText tokenizer];
      cursor7 = [tokenizer6 positionFromPosition:v31 toBoundary:3 inDirection:1];

      tokenizer7 = [_selectableText tokenizer];
      v34 = [tokenizer7 isPosition:cursor7 atBoundary:3 inDirection:1];

      v28 = v31;
      if ((v34 & 1) == 0)
      {
        [v9 setCursor:cursor7];

        goto LABEL_4;
      }
    }

    v26 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v26 = 0;
    v9 = historyCopy;
  }

LABEL_9:

  return v26;
}

- (id)_moveToEndOfWord:(BOOL)word withHistory:(id)history
{
  wordCopy = word;
  historyCopy = history;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UITextInputController *)self _setHistory:historyCopy withExtending:wordCopy withAnchor:1 withAffinityDownstream:1];

    [v9 setAmount:0];
    tokenizer = [_selectableText tokenizer];
    cursor = [v9 cursor];
    v12 = [tokenizer isPosition:cursor withinTextUnit:1 inDirection:0];

    if ((v12 & 1) == 0)
    {
      tokenizer2 = [_selectableText tokenizer];
      cursor2 = [v9 cursor];
      v15 = [tokenizer2 positionFromPosition:cursor2 toBoundary:1 inDirection:0];

      if (v15)
      {
        [v9 setCursor:v15];
      }
    }

    tokenizer3 = [_selectableText tokenizer];
    cursor3 = [v9 cursor];
    v18 = [tokenizer3 positionFromPosition:cursor3 toBoundary:1 inDirection:0];
    [v9 setCursor:v18];

    cursor4 = [v9 cursor];

    if (!cursor4)
    {
      endOfDocument = [_selectableText endOfDocument];
      [v9 setCursor:endOfDocument];
    }

    cursor5 = [v9 cursor];
    [v9 setStartPosition:cursor5];

    v22 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v22 = 0;
    v9 = historyCopy;
  }

  return v22;
}

- (id)_moveToStartOfLine:(BOOL)line withHistory:(id)history
{
  lineCopy = line;
  historyCopy = history;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (!selectedTextRange)
  {
    v17 = 0;
    v10 = historyCopy;
    goto LABEL_11;
  }

  affinityDownstream = [historyCopy affinityDownstream];
  v10 = [(UITextInputController *)self _setHistory:historyCopy withExtending:lineCopy withAnchor:2 withAffinityDownstream:1];

  [v10 setAmount:0];
  tokenizer = [_selectableText tokenizer];
  selectedTextRange2 = [_selectableText selectedTextRange];
  v13 = [selectedTextRange2 end];
  if (([tokenizer isPosition:v13 atBoundary:3 inDirection:1] & 1) == 0)
  {
    if (affinityDownstream)
    {
      tokenizer2 = [_selectableText tokenizer];
      cursor = [v10 cursor];
      v16 = [tokenizer2 isPosition:cursor atBoundary:4 inDirection:1];

      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    tokenizer = [_selectableText tokenizer];
    selectedTextRange2 = [v10 cursor];
    v13 = [tokenizer positionFromPosition:selectedTextRange2 toBoundary:4 inDirection:1];
    [v10 setCursor:v13];
  }

LABEL_10:
  cursor2 = [v10 cursor];
  [v10 setStartPosition:cursor2];

  v17 = [(UITextInputController *)self _setSelectionRangeWithHistory:v10];
LABEL_11:

  return v17;
}

- (id)_moveToEndOfLine:(BOOL)line withHistory:(id)history
{
  lineCopy = line;
  historyCopy = history;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (!selectedTextRange)
  {
    v14 = 0;
    v10 = historyCopy;
    goto LABEL_10;
  }

  affinityDownstream = [historyCopy affinityDownstream];
  v10 = [(UITextInputController *)self _setHistory:historyCopy withExtending:lineCopy withAnchor:1 withAffinityDownstream:0];

  [v10 setAmount:0];
  tokenizer = [_selectableText tokenizer];
  selectedTextRange2 = [_selectableText selectedTextRange];
  v13 = [selectedTextRange2 end];
  if ([tokenizer isPosition:v13 atBoundary:3 inDirection:0])
  {
    goto LABEL_8;
  }

  if (affinityDownstream)
  {

LABEL_7:
    tokenizer = [_selectableText tokenizer];
    selectedTextRange2 = [v10 cursor];
    v13 = [tokenizer positionFromPosition:selectedTextRange2 toBoundary:4 inDirection:0];
    [v10 setCursor:v13];
LABEL_8:

    goto LABEL_9;
  }

  tokenizer2 = [_selectableText tokenizer];
  cursor = [v10 cursor];
  v17 = [tokenizer2 isPosition:cursor atBoundary:4 inDirection:0];

  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  cursor2 = [v10 cursor];
  [v10 setStartPosition:cursor2];

  v14 = [(UITextInputController *)self _setSelectionRangeWithHistory:v10];
LABEL_10:

  return v14;
}

- (id)_moveToStartOfParagraph:(BOOL)paragraph withHistory:(id)history
{
  paragraphCopy = paragraph;
  historyCopy = history;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UITextInputController *)self _setHistory:historyCopy withExtending:paragraphCopy withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    tokenizer = [_selectableText tokenizer];
    cursor = [v9 cursor];
    v12 = [tokenizer isPosition:cursor atBoundary:3 inDirection:1];

    if (v12)
    {
      cursor2 = [v9 cursor];
      v14 = [tokenizer positionFromPosition:cursor2 toBoundary:0 inDirection:1];

      if (v14)
      {
        [v9 setCursor:v14];
      }
    }

    cursor3 = [v9 cursor];
    v16 = [tokenizer positionFromPosition:cursor3 toBoundary:3 inDirection:1];
    [v9 setCursor:v16];

    cursor4 = [v9 cursor];
    [v9 setStartPosition:cursor4];

    v18 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v18 = 0;
    v9 = historyCopy;
  }

  return v18;
}

- (id)_moveToEndOfParagraph:(BOOL)paragraph withHistory:(id)history
{
  paragraphCopy = paragraph;
  historyCopy = history;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UITextInputController *)self _setHistory:historyCopy withExtending:paragraphCopy withAnchor:1 withAffinityDownstream:0];

    [v9 setAmount:0];
    tokenizer = [_selectableText tokenizer];
    cursor = [v9 cursor];
    v12 = [tokenizer isPosition:cursor atBoundary:3 inDirection:0];

    if (v12)
    {
      cursor2 = [v9 cursor];
      v14 = [tokenizer positionFromPosition:cursor2 toBoundary:0 inDirection:0];

      if (v14)
      {
        [v9 setCursor:v14];
      }
    }

    cursor3 = [v9 cursor];
    v16 = [tokenizer positionFromPosition:cursor3 toBoundary:3 inDirection:0];
    [v9 setCursor:v16];

    cursor4 = [v9 cursor];
    [v9 setStartPosition:cursor4];

    v18 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v18 = 0;
    v9 = historyCopy;
  }

  return v18;
}

- (id)_moveToStartOfDocument:(BOOL)document withHistory:(id)history
{
  documentCopy = document;
  historyCopy = history;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UITextInputController *)self _setHistory:historyCopy withExtending:documentCopy withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    beginningOfDocument = [_selectableText beginningOfDocument];
    [v9 setCursor:beginningOfDocument];

    cursor = [v9 cursor];
    [v9 setStartPosition:cursor];

    v12 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
    historyCopy = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_moveToEndOfDocument:(BOOL)document withHistory:(id)history
{
  documentCopy = document;
  historyCopy = history;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UITextInputController *)self _setHistory:historyCopy withExtending:documentCopy withAnchor:1 withAffinityDownstream:0];

    [v9 setAmount:0];
    endOfDocument = [_selectableText endOfDocument];
    [v9 setCursor:endOfDocument];

    cursor = [v9 cursor];
    [v9 setStartPosition:cursor];

    tokenizer = [_selectableText tokenizer];
    cursor2 = [v9 cursor];
    v14 = [tokenizer isPosition:cursor2 atBoundary:4 inDirection:3];

    if (v14)
    {
      [v9 setAffinityDownstream:1];
    }

    v15 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = historyCopy;
  }

  return v15;
}

- (id)_moveUp:(BOOL)up withHistory:(id)history
{
  upCopy = up;
  historyCopy = history;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    if (historyCopy)
    {
      affinityDownstream = [historyCopy affinityDownstream];
    }

    else
    {
      affinityDownstream = [(UITextInputController *)self _selectionAffinity]== 0;
    }

    v11 = [(UITextInputController *)self _setHistory:historyCopy withExtending:upCopy withAnchor:2 withAffinityDownstream:affinityDownstream];

    [v11 setAmount:{objc_msgSend(v11, "amount") + 1}];
    cursor = [v11 cursor];
    beginningOfDocument = [_selectableText beginningOfDocument];
    v14 = [_selectableText comparePosition:cursor toPosition:beginningOfDocument];

    if (v14)
    {
      startPosition = [v11 startPosition];
      if ([v11 amount] > 0)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }

      amount = [v11 amount];
      if (amount >= 0)
      {
        v18 = amount;
      }

      else
      {
        v18 = -amount;
      }

      v19 = [_selectableText _positionFromPosition:startPosition inDirection:v16 offset:v18 withAffinityDownstream:{objc_msgSend(v11, "affinityDownstream")}];

      cursor2 = [v11 cursor];
      v21 = [_selectableText comparePosition:cursor2 toPosition:v19];

      if (v21)
      {
        [v11 setCursor:v19];
      }

      else
      {
        beginningOfDocument2 = [_selectableText beginningOfDocument];
        [v11 setCursor:beginningOfDocument2];

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
    v11 = historyCopy;
  }

  return v10;
}

- (id)_moveDown:(BOOL)down withHistory:(id)history
{
  downCopy = down;
  historyCopy = history;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    if (historyCopy)
    {
      affinityDownstream = [historyCopy affinityDownstream];
    }

    else
    {
      affinityDownstream = [(UITextInputController *)self _selectionAffinity]== 0;
    }

    v11 = [(UITextInputController *)self _setHistory:historyCopy withExtending:downCopy withAnchor:1 withAffinityDownstream:affinityDownstream];

    [v11 setAmount:{objc_msgSend(v11, "amount") - 1}];
    cursor = [v11 cursor];
    endOfDocument = [_selectableText endOfDocument];
    v14 = [_selectableText comparePosition:cursor toPosition:endOfDocument];

    if (v14)
    {
      startPosition = [v11 startPosition];
      if ([v11 amount] > 0)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }

      amount = [v11 amount];
      if (amount >= 0)
      {
        v18 = amount;
      }

      else
      {
        v18 = -amount;
      }

      v19 = [_selectableText _positionFromPosition:startPosition inDirection:v16 offset:v18 withAffinityDownstream:{objc_msgSend(v11, "affinityDownstream")}];

      cursor2 = [v11 cursor];
      v21 = [_selectableText comparePosition:cursor2 toPosition:v19];

      if (v21)
      {
        [v11 setCursor:v19];
      }

      else
      {
        endOfDocument2 = [_selectableText endOfDocument];
        [v11 setCursor:endOfDocument2];

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
    v11 = historyCopy;
  }

  return v10;
}

- (id)_moveLeft:(BOOL)left withHistory:(id)history
{
  leftCopy = left;
  historyCopy = history;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UITextInputController *)self _setHistory:historyCopy withExtending:leftCopy withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    selectedTextRange2 = [_selectableText selectedTextRange];
    isEmpty = [selectedTextRange2 isEmpty];

    if ((isEmpty & 1) != 0 || leftCopy)
    {
      cursor = [v9 cursor];
      v13 = [_selectableText positionFromPosition:cursor inDirection:3 offset:1];
      [v9 setCursor:v13];
    }

    cursor2 = [v9 cursor];
    [v9 setStartPosition:cursor2];

    v15 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = historyCopy;
  }

  return v15;
}

- (id)_moveRight:(BOOL)right withHistory:(id)history
{
  rightCopy = right;
  historyCopy = history;
  _selectableText = [(UITextInputController *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UITextInputController *)self _setHistory:historyCopy withExtending:rightCopy withAnchor:1 withAffinityDownstream:1];

    [v9 setAmount:0];
    selectedTextRange2 = [_selectableText selectedTextRange];
    isEmpty = [selectedTextRange2 isEmpty];

    if ((isEmpty & 1) != 0 || rightCopy)
    {
      cursor = [v9 cursor];
      v13 = [_selectableText positionFromPosition:cursor inDirection:2 offset:1];
      [v9 setCursor:v13];
    }

    cursor2 = [v9 cursor];
    [v9 setStartPosition:cursor2];

    v15 = [(UITextInputController *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = historyCopy;
  }

  return v15;
}

- (id)_positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset withAffinityDownstream:(BOOL)downstream
{
  positionCopy = position;
  _selectableText = [(UITextInputController *)self _selectableText];
  v11 = [_selectableText positionFromPosition:positionCopy inDirection:direction offset:offset];

  return v11;
}

- (void)_setSelectedTextRange:(id)range withAffinityDownstream:(BOOL)downstream
{
  downstreamCopy = downstream;
  rangeCopy = range;
  if (objc_opt_respondsToSelector())
  {
    [(UITextInputController *)self setSelectedTextRange:rangeCopy withAffinityDownstream:downstreamCopy];
  }

  else
  {
    _selectableText = [(UITextInputController *)self _selectableText];
    [_selectableText setSelectedTextRange:rangeCopy];
  }
}

- (int64_t)_selectionAffinity
{
  _selectableText = [(UITextInputController *)self _selectableText];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    tokenizer = [_selectableText tokenizer];
    selectedTextRange = [_selectableText selectedTextRange];
    start = [selectedTextRange start];
    if ([tokenizer isPosition:start atBoundary:3 inDirection:1])
    {
    }

    else
    {
      tokenizer2 = [_selectableText tokenizer];
      selectedTextRange2 = [_selectableText selectedTextRange];
      v9 = [selectedTextRange2 end];
      v10 = [tokenizer2 isPosition:v9 atBoundary:4 inDirection:2];

      if (v10)
      {
        selectionAffinity = 1;
        goto LABEL_8;
      }
    }

    selectionAffinity = 0;
    goto LABEL_8;
  }

  selectionAffinity = [_selectableText selectionAffinity];
LABEL_8:

  return selectionAffinity;
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
    markedTextOverlay = [v3 markedTextOverlay];
    [markedTextOverlay removeFromSuperview];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    interactions = [markedTextOverlay interactions];
    v6 = [interactions countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(interactions);
          }

          [markedTextOverlay removeInteraction:*(*(&v16 + 1) + 8 * i)];
        }

        v7 = [interactions countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    _selectableText = [(UITextInputController *)self _selectableText];
    interactionAssistant = [_selectableText interactionAssistant];
    v12 = interactionAssistant;
    if (interactionAssistant)
    {
      [interactionAssistant setGestureRecognizers];
    }

    else if ([_selectableText _hasMarkedText] && objc_msgSend(v3, "hasEditableMarkedText"))
    {
      markedTextRange = [_selectableText markedTextRange];
      [_selectableText firstRectForRange:markedTextRange];
      [markedTextOverlay setFrame:?];

      textInputView = [_selectableText textInputView];
      [textInputView addSubview:markedTextOverlay];

      v15 = [[UITextPhraseBoundaryInteraction alloc] initWithTextInput:_selectableText];
      [markedTextOverlay addInteraction:v15];
    }
  }
}

- (BOOL)_usesAsynchronousProtocol
{
  _selectableText = [(UITextInputController *)self _selectableText];
  if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [_selectableText conformsToProtocol:&unk_1F016CC30];
LABEL_9:
      v3 = v4;
      goto LABEL_11;
    }

LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([_selectableText conformsToProtocolCached:&unk_1F016C7B0] & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [_selectableText conformsToProtocolCached:&unk_1F016C810];
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
  _selectableText = [(UITextInputController *)self _selectableText];
  if ([_selectableText _usesAsynchronousProtocol] && (!+[UIKBInputDelegateManager isAsyncTextInputEnabled](UIKBInputDelegateManager, "isAsyncTextInputEnabled") || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0))
  {
    hasMarkedText = [_selectableText hasMarkedText];
  }

  else
  {
    markedTextRange = [_selectableText markedTextRange];
    hasMarkedText = markedTextRange != 0;
  }

  return hasMarkedText;
}

- (void)_setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = MEMORY[0x1E696AAB0];
  textCopy = text;
  v9 = [[v7 alloc] initWithString:textCopy];

  [(UITextInputController *)self _setAttributedMarkedText:v9 selectedRange:location, length];
}

- (void)_setAttributedMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  _selectableText = [(UITextInputController *)self _selectableText];
  _hasMarkedText = [(UITextInputController *)self _hasMarkedText];
  if (objc_opt_respondsToSelector())
  {
    [_selectableText setAttributedMarkedText:textCopy selectedRange:{location, length}];
  }

  else
  {
    string = [textCopy string];

    [_selectableText setMarkedText:string selectedRange:{location, length}];
    textCopy = string;
  }

  _hasMarkedText2 = [(UITextInputController *)self _hasMarkedText];
  if (_hasMarkedText != _hasMarkedText2)
  {
    if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      _selectionDisplayInteraction = [_selectableText _selectionDisplayInteraction];
      v12 = _selectableText;
      markedTextOverlay = _selectionDisplayInteraction;
    }

    else
    {
      markedTextOverlay = 0;
      v12 = _selectableText;
    }

    [v12 _setGestureRecognizers];
    _textSelectingContainer = [(UITextInputController *)self _textSelectingContainer];
    interactionAssistant = [_textSelectingContainer interactionAssistant];
    if (interactionAssistant)
    {
      v20 = interactionAssistant;
      _textSelectingContainer2 = [(UITextInputController *)self _textSelectingContainer];
      interactionAssistant2 = [_textSelectingContainer2 interactionAssistant];
      externalInteractions = [interactionAssistant2 externalInteractions];

      if (externalInteractions)
      {
        _textSelectingContainer3 = [(UITextInputController *)self _textSelectingContainer];
        interactionAssistant3 = [_textSelectingContainer3 interactionAssistant];
        [interactionAssistant3 deactivateSelection];

        [_selectableText _setSelectionDisplayInteraction:markedTextOverlay];
      }
    }

    else
    {
    }

    goto LABEL_15;
  }

  if (_hasMarkedText2)
  {
    _textSelectingContainer4 = [(UITextInputController *)self _textSelectingContainer];
    interactionAssistant4 = [_textSelectingContainer4 interactionAssistant];

    if (!interactionAssistant4)
    {
      v16 = +[UIKeyboardImpl activeInstance];
      markedTextOverlay = [v16 markedTextOverlay];

      markedTextRange = [_selectableText markedTextRange];
      [_selectableText firstRectForRange:markedTextRange];
      [markedTextOverlay setFrame:?];

LABEL_15:
    }
  }
}

- (void)_unmarkText
{
  _selectableText = [(UITextInputController *)self _selectableText];
  _hasMarkedText = [(UITextInputController *)self _hasMarkedText];
  [_selectableText unmarkText];
  if (_hasMarkedText)
  {
    if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      _selectionDisplayInteraction = [_selectableText _selectionDisplayInteraction];
      v5 = _selectableText;
      v6 = _selectionDisplayInteraction;
    }

    else
    {
      v6 = 0;
      v5 = _selectableText;
    }

    [v5 _setGestureRecognizers];
    _textSelectingContainer = [(UITextInputController *)self _textSelectingContainer];
    interactionAssistant = [_textSelectingContainer interactionAssistant];
    if (interactionAssistant)
    {
      v9 = interactionAssistant;
      _textSelectingContainer2 = [(UITextInputController *)self _textSelectingContainer];
      interactionAssistant2 = [_textSelectingContainer2 interactionAssistant];
      externalInteractions = [interactionAssistant2 externalInteractions];

      if (externalInteractions)
      {
        _textSelectingContainer3 = [(UITextInputController *)self _textSelectingContainer];
        interactionAssistant3 = [_textSelectingContainer3 interactionAssistant];
        [interactionAssistant3 deactivateSelection];

        [_selectableText _setSelectionDisplayInteraction:v6];
      }
    }

    else
    {
    }
  }
}

- (BOOL)_shouldPerformUICalloutBarButtonReplaceAction:(SEL)action forText:(id)text checkAutocorrection:(BOOL)autocorrection
{
  autocorrectionCopy = autocorrection;
  textCopy = text;
  v8 = textCopy;
  if (sel_promptForReplace_ != action && sel__promptForReplace_ != action)
  {
    if (sel__transliterateChinese_ == action)
    {
      v14 = UIKeyboardEnabledInputModesAllowChineseTransliterationForText(textCopy);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (autocorrectionCopy && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 autocorrectSpellingEnabled], v10, !v11) || (objc_msgSend(v8, "_containsCJScriptsOnly") & 1) != 0)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_13;
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v13 = [v8 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  v14 = [v13 count] < 8;
LABEL_13:

  return v14;
}

- (UITextInputController)initWithTextLayoutController:(id)controller
{
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = UITextInputController;
  v6 = [(UITextInputController *)&v20 init];
  if (v6)
  {
    v7 = +[UITextInputTraits defaultTextInputTraits];
    textInputTraits = v6->_textInputTraits;
    v6->_textInputTraits = v7;

    if (!controllerCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"UITextInputController.m" lineNumber:351 description:@"UITextInputController requires a text layout controller!"];
    }

    [(UITextInputController *)v6 setTextLayoutController:controllerCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = *off_1E70ECAC0;
    textStorage = [controllerCopy textStorage];
    [defaultCenter addObserver:v6 selector:sel__textStorageDidProcessEditing_ name:v10 object:textStorage];

    v6->_markedTextRange = xmmword_18A678470;
    markedTextStyle = v6->_markedTextStyle;
    v6->_markedTextStyle = 0;

    beginningOfDocument = [controllerCopy beginningOfDocument];
    v14 = [controllerCopy emptyTextRangeAtPosition:beginningOfDocument];
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

- (void)setTextLayoutController:(id)controller
{
  obj = controller;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);

  if (WeakRetained)
  {
    currentHandler = objc_loadWeakRetained(&self->_textLayoutController);
    if (([currentHandler canAccessLayoutManager] & 1) != 0 || (objc_msgSend(obj, "canAccessLayoutManager") & 1) == 0)
    {
      v8 = objc_loadWeakRetained(&self->_textLayoutController);
      textStorage = [v8 textStorage];
      textStorage2 = [obj textStorage];

      if (textStorage == textStorage2)
      {
LABEL_7:
        [defaultCenter removeObserver:self name:*off_1E70ECD50 object:0];
        objc_storeWeak(&self->_layoutManager, 0);
        goto LABEL_8;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputController.m" lineNumber:382 description:@"Cannot change the text storage after view is created"];
    }

    goto LABEL_7;
  }

LABEL_8:
  selfCopy = self;
  v12 = objc_loadWeakRetained(&self->_textLayoutController);
  [v12 detachFromTextInputController];

  v13 = objc_storeWeak(&self->_textLayoutController, obj);
  [obj adoptTextInputController:selfCopy];

  if ([obj canAccessLayoutManager])
  {
    layoutManager = [obj layoutManager];
    objc_storeWeak(&selfCopy->_layoutManager, layoutManager);

    v15 = *off_1E70ECD50;
    v16 = objc_loadWeakRetained(&selfCopy->_layoutManager);
    [defaultCenter addObserver:selfCopy selector:sel__textContainerDidChangeView_ name:v15 object:v16];
  }

  [(UITextInputController *)selfCopy _updateFirstTextView];
  [(UITextInputController *)selfCopy _updateEmptyStringAttributes];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
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

- (_NSRange)_rangeAfterCancelDictationIfNecessaryForChangeInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textPlaceholder = self->_textPlaceholder;
  if (textPlaceholder)
  {
    attachment = [(UITextPlaceholder *)textPlaceholder attachment];
    attachmentRange = [attachment attachmentRange];
    v10 = v9;

    if (location <= attachmentRange && location + length <= attachmentRange + v10)
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
        v17.location = attachmentRange;
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

- (void)_sendDelegateWillChangeNotificationsForText:(BOOL)text selection:(BOOL)selection
{
  if ((*(&self->_tiFlags + 2) & 4) == 0)
  {
    textCopy = text;
    v6 = [(UITextInputController *)self _senderForDelegateNotifications:text];
    if (textCopy)
    {
      v8 = v6;
      WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
      [WeakRetained textWillChange:v8];

      v6 = v8;
    }
  }
}

- (void)_sendDelegateChangeNotificationsForText:(BOOL)text selection:(BOOL)selection replacement:(id)replacement characterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selectionCopy = selection;
  textCopy = text;
  replacementCopy = replacement;
  v11 = +[UIDictationController sharedInstance];
  suppressDelegateTextInputDidChangeNotifications = [v11 suppressDelegateTextInputDidChangeNotifications];

  tiFlags = self->_tiFlags;
  if ((*&tiFlags & 0x1000000) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = WeakRetained;
    if (selectionCopy && (*&self->_tiFlags & 0x10) != 0)
    {
      [WeakRetained textInputDidChangeSelection:self];
    }

    if (textCopy && !(((*&self->_tiFlags & 8) == 0) | suppressDelegateTextInputDidChangeNotifications & 1))
    {
      [v15 textInputDidChange:self];
    }

    tiFlags = self->_tiFlags;
  }

  if ((*&tiFlags & 0x40000) == 0)
  {
    _senderForDelegateNotifications = [(UITextInputController *)self _senderForDelegateNotifications];
    if (textCopy)
    {
      v17 = objc_loadWeakRetained(&self->_inputDelegate);
      [v17 textDidChange:_senderForDelegateNotifications];
    }

    tiFlags = self->_tiFlags;
  }

  if (replacementCopy && (*&tiFlags & 0x2000) != 0 && location != 0x7FFFFFFFFFFFFFFFLL)
  {
    delegate = [(UITextInputController *)self delegate];
    [delegate textInput:self didApplyAttributedText:replacementCopy toCharacterRange:{location, length}];
  }
}

- (BOOL)_delegateShouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v17[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v8 = [(UITextInputController *)self _rangeAfterCancelDictationIfNecessaryForChangeInRange:location, length];
  v10 = v9;
  tiFlags = self->_tiFlags;
  if ((*&tiFlags & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = [MEMORY[0x1E696B098] valueWithRange:{v8, v10}];
    v17[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v12 = [WeakRetained textInput:self shouldChangeCharactersInRanges:v15 replacementText:textCopy];

LABEL_6:
    goto LABEL_7;
  }

  if ((*&tiFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [WeakRetained textInput:self shouldChangeCharactersInRange:v8 replacementText:{v10, textCopy}];
    goto LABEL_6;
  }

  v12 = 1;
LABEL_7:

  return v12;
}

- (void)_setInternalGestureRecognizers
{
  interactionAssistant = [(UITextInputController *)self interactionAssistant];
  [interactionAssistant clearGestureRecognizers:1];
}

- (BOOL)_shouldConsiderTextViewForGeometry:(id)geometry
{
  geometryCopy = geometry;
  v5 = geometryCopy;
  if (geometryCopy && ([geometryCopy isHiddenOrHasHiddenAncestor] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_firstTextView);
    window = [WeakRetained window];
    window2 = [v5 window];
    v6 = window == window2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_textStorageDidProcessEditing:(id)editing
{
  [(_UITextInputControllerTokenizer *)self->_tokenizer invalidateTokenizer];
  [(UITextInputController *)self _updateEmptyStringAttributes];
  _textStorage = [(UITextInputController *)self _textStorage];
  if (([_textStorage editedMask] & 2) == 0 || (*(&self->_tiFlags + 2) & 0x10) != 0)
  {
    goto LABEL_15;
  }

  _selectedRange = [(UITextInputController *)self _selectedRange];
  v7 = v6;
  v24.length = [_textStorage length];
  v24.location = 0;
  length = NSIntersectionRange(v24, self[96]).length;
  markedTextRange = [(UITextInputController *)self markedTextRange];
  if (markedTextRange)
  {
    v10 = markedTextRange;
    if (length && length == self->_markedTextRange.length)
    {
      string = [(NSAttributedString *)self->_markedText string];
      v12 = [(UITextInputController *)self _isInlineCompletionPresentedAsMarkedText:string];

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
  if (_selectedRange != [(UITextInputController *)self _selectedRange]|| v7 != v13)
  {
    *&self->_tiFlags |= 0x200000u;
    interactionAssistant = [(UITextInputController *)self interactionAssistant];
    activeSelection = [interactionAssistant activeSelection];
    [activeSelection selectionChanged];
  }

  editedRange = [_textStorage editedRange];
  if (editedRange <= [(UITextInputController *)self _selectedRange])
  {
    [(UITextInputController *)self _selectionGeometryChanged];
  }

LABEL_15:
  if (([_textStorage editedMask] & 2) != 0 && (*(&self->_tiFlags + 2) & 0x14) == 0)
  {
    undoManager = [(UITextInputController *)self undoManager];
    groupingLevel = [undoManager groupingLevel];

    if (!groupingLevel)
    {
      undoManager2 = [(UITextInputController *)self undoManager];
      [undoManager2 removeAllActions];
    }
  }

  if (([_textStorage editedMask] & 2) != 0 && !+[UIKeyboard isModelessActive](UIKeyboard, "isModelessActive"))
  {
    v20 = +[UIDictationController activeInstance];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [v20 cancelDictationForTextStoreChangesInResponder:WeakRetained];
  }

  _textStorage2 = [(UITextInputController *)self _textStorage];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __55__UITextInputController__textStorageDidProcessEditing___block_invoke;
  v23[3] = &unk_1E71264B8;
  v23[4] = self;
  [_textStorage2 coordinateReading:v23];
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

- (void)_selectionDidScroll:(id)scroll
{
  interactionAssistant = [(UITextInputController *)self interactionAssistant];
  [interactionAssistant setNeedsSelectionDisplayUpdate];
}

- (void)setSelectedTextRange:(id)range
{
  rangeCopy = range;
  [(UITextInputController *)self signalDictationSelectionTip:rangeCopy];
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v6 = [WeakRetained characterRangesForTextRange:rangeCopy clippedToDocument:0];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__214;
  v30 = __Block_byref_object_dispose__214;
  v7 = v6;
  v31 = v7;
  _textStorage = [(UITextInputController *)self _textStorage];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __46__UITextInputController_setSelectedTextRange___block_invoke;
  v25[3] = &unk_1E71267E8;
  v25[4] = self;
  v25[5] = &v26;
  [_textStorage coordinateReading:v25];

  if (self->_markedTextRange.length)
  {
    if ([v7 count])
    {
      firstObject = [v7 firstObject];
      rangeValue = [firstObject rangeValue];
      v12 = v11;
    }

    else
    {
      rangeValue = 0;
      v12 = 0;
    }

    _selectedRange = [(UITextInputController *)self _selectedRange];
    if (self->_markedTextSelection.location != rangeValue - _selectedRange || self->_markedTextSelection.length != v12)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __46__UITextInputController_setSelectedTextRange___block_invoke_2;
      v24[3] = &unk_1E70F6848;
      v24[4] = self;
      v24[5] = rangeValue - _selectedRange;
      v24[6] = v12;
      [(UITextInputController *)self _coordinateSelectionChange:v24];
    }
  }

  else
  {
    _selectedRanges = [(UITextInputController *)self _selectedRanges];
    v14 = _selectedRanges;
    if (_selectedRanges == v27[5])
    {
      tiFlags = self->_tiFlags;

      if ((*&tiFlags & 0x200000) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      _selectedRanges2 = [(UITextInputController *)self _selectedRanges];
      if ([_selectedRanges2 isEqualToArray:v27[5]])
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
    v20 = rangeCopy;
    v23 = &v26;
    v21 = v7;
    selfCopy = self;
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

- (void)_setSelectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v6 = [WeakRetained textRangeForCharacterRange:{location, length}];
  selectedTextRange = self->_selectedTextRange;
  self->_selectedTextRange = v6;
}

- (void)_setSelectedRanges:(id)ranges
{
  rangesCopy = ranges;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v5 = [WeakRetained textRangeForCharacterRanges:rangesCopy];

  selectedTextRange = self->_selectedTextRange;
  self->_selectedTextRange = v5;
}

- (id)_selectedRanges
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v4 = [WeakRetained characterRangesForTextRange:self->_selectedTextRange clippedToDocument:0];

  return v4;
}

- (void)setSelectedRange:(_NSRange)range afterDelta:(int64_t)delta appliedToRange:(_NSRange)toRange
{
  length = toRange.length;
  location = toRange.location;
  v8 = range.length;
  v9 = range.location;
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
        deltaCopy = delta;
      }

      else
      {
        deltaCopy = 0;
      }

      v15.location = deltaCopy + v14;
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
          v18 = deltaCopy + v14;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputController.m" lineNumber:912 description:{@"Overflow in accumulation of selected range for coalesced undo or redo. Previous accumulation={%lu, %lu} Replacement range={%lu, %lu} delta=%li", self->_accumulatedSelectedRangeForCoalescedUndoRedo.location, self->_accumulatedSelectedRangeForCoalescedUndoRedo.length, location, length, delta}];
    }

    self->_accumulatedSelectedRangeForCoalescedUndoRedo.location = v9;
    self->_accumulatedSelectedRangeForCoalescedUndoRedo.length = v8;
  }
}

- (void)setSelectedRanges:(id)ranges
{
  rangesCopy = ranges;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v5 = [WeakRetained textRangeForCharacterRanges:rangesCopy];

  [(UITextInputController *)self setSelectedTextRange:v5];
}

- (NSArray)selectedRanges
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->_markedTextRange.length)
  {
    v2 = MEMORY[0x1E696B098];
    selectedRange = [(UITextInputController *)self selectedRange];
    v5 = [v2 valueWithRange:{selectedRange, v4}];
    v8[0] = v5;
    _selectedRanges = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    _selectedRanges = [(UITextInputController *)self _selectedRanges];
  }

  return _selectedRanges;
}

- (void)_coordinateSelectionChange:(id)change
{
  changeCopy = change;
  _textStorage = [(UITextInputController *)self _textStorage];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__UITextInputController__coordinateSelectionChange___block_invoke;
  v7[3] = &unk_1E71264E0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  [_textStorage coordinateReading:v7];
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
  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  if (selectedTextRange)
  {
    location = self->_markedTextRange.location;
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
      v6 = [WeakRetained characterRangesForTextRange:selectedTextRange clippedToDocument:0];
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

- (void)_insertText:(id)text fromKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  textCopy = text;
  if (![(UITextInputController *)self isWritingToolsStreamingReplacements])
  {
    if (keyboardCopy)
    {
      v7 = 0x40000;
    }

    else
    {
      v7 = 0;
    }

    self->_tiFlags = (*&self->_tiFlags & 0xFFFBFFFF | v7);
    _rangesToReplaceWhenInsertingText = [(UITextInputController *)self _rangesToReplaceWhenInsertingText];
    rangeToBeReplaced = [_rangesToReplaceWhenInsertingText rangeToBeReplaced];
    v11 = v10;
    rangesToBeDeleted = [_rangesToReplaceWhenInsertingText rangesToBeDeleted];
    v13 = [(UITextInputController *)self _rangeAfterCancelDictationIfNecessaryForChangeInRange:rangeToBeReplaced, v11];
    v15 = v14;
    [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
    if (*(&self->_tiFlags + 2))
    {
      delegate = [(UITextInputController *)self delegate];
      [delegate textInput:self willChangeCharactersInRange:{v13, v15}];
    }

    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v18 = [WeakRetained textRangeForCharacterRange:{v13, v15}];

    [(UITextCheckingController *)self->_textCheckingController willReplaceTextInRange:v18 withText:textCopy];
    _rangesToReplaceWhenInsertingText2 = [(UITextInputController *)self _rangesToReplaceWhenInsertingText];

    v39 = _rangesToReplaceWhenInsertingText2;
    rangeToBeReplaced2 = [_rangesToReplaceWhenInsertingText2 rangeToBeReplaced];
    v22 = v21;
    _textStorage = [(UITextInputController *)self _textStorage];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __50__UITextInputController__insertText_fromKeyboard___block_invoke;
    v66[3] = &unk_1E7126508;
    v68 = rangeToBeReplaced2;
    v69 = v22;
    v24 = textCopy;
    v67 = v24;
    [_textStorage coordinateReading:v66];

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
    _textStorage2 = [(UITextInputController *)self _textStorage];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __50__UITextInputController__insertText_fromKeyboard___block_invoke_2;
    v40[3] = &unk_1E7126558;
    v40[4] = self;
    v26 = rangesToBeDeleted;
    v41 = v26;
    v43 = &v54;
    v46 = v13;
    v47 = v15;
    v42 = v24;
    v44 = &v48;
    v45 = &v60;
    [_textStorage2 coordinateEditing:v40];

    [(_UITextInputControllerTokenizer *)self->_tokenizer invalidateTokenizer];
    selectionAffinity = [(UITextInputController *)self selectionAffinity];
    if ([v61[5] length])
    {
      v28 = v61[5];
      v29 = [v28 rangeOfComposedCharacterSequenceAtIndex:{objc_msgSend(v28, "length") - 1}];
      v31 = [v28 substringWithRange:{v29, v30}];
      newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v33 = [v31 rangeOfCharacterFromSet:newlineCharacterSet];

      if (!v33)
      {
        selectionAffinity = 0;
      }
    }

    start = [(UITextRange *)self->_selectedTextRange start];
    v35 = objc_loadWeakRetained(&self->_textLayoutController);
    v36 = [v35 positionFromPosition:start offset:objc_msgSend(v61[5] affinity:{"length"), selectionAffinity}];

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
  _supportsTextKit2TextLists = [v5 _supportsTextKit2TextLists];

  return _supportsTextKit2TextLists;
}

- (id)handleInsertedText:(id)text intoTextStorage:(id)storage replacementRange:(_NSRange)range updatedTypingAttributes:(id *)attributes
{
  length = range.length;
  location = range.location;
  textCopy = text;
  storageCopy = storage;
  v13 = [(UITextInputController *)self _newAttributedStringForInsertionOfText:textCopy inRange:location, length];
  v21 = 0;
  v22 = 0;
  string = [storageCopy string];
  [string getParagraphStart:&v22 end:0 contentsEnd:&v21 forRange:{location, length}];

  v15 = v22;
  if (v15 >= [storageCopy length])
  {
    [storageCopy replaceCharactersInRange:location withAttributedString:{length, v13}];
  }

  else
  {
    v16 = [storageCopy attribute:*off_1E70EC988 atIndex:v22 effectiveRange:0];
    v17 = v16;
    if (v16 && ([v16 textLists], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v19))
    {
      [(UITextInputController *)self handleTextListForInsertedText:textCopy attributedText:v13 intoTextStorage:storageCopy replacementRange:location paragraphStyle:length paragraphStart:v17 paragraphContentsEnd:v22 updatedTypingAttributes:v21, attributes];
    }

    else
    {
      [storageCopy replaceCharactersInRange:location withAttributedString:{length, v13}];
    }
  }

  return v13;
}

- (void)handleTextListForInsertedText:(id)text attributedText:(id)attributedText intoTextStorage:(id)storage replacementRange:(_NSRange)range paragraphStyle:(id)style paragraphStart:(unint64_t)start paragraphContentsEnd:(unint64_t)end updatedTypingAttributes:(id *)self0
{
  length = range.length;
  location = range.location;
  textCopy = text;
  attributedTextCopy = attributedText;
  storageCopy = storage;
  styleCopy = style;
  v19 = end - start;
  if (end - start > [storageCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputController.m" lineNumber:1205 description:@"Paragraph length somehow larger than text storage length"];
  }

  if ([textCopy length] == 1 && (objc_msgSend(MEMORY[0x1E696AB08], "newlineCharacterSet"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "characterIsMember:", objc_msgSend(textCopy, "characterAtIndex:", 0)), v20, v21))
  {
    v22 = [attributedTextCopy attributesAtIndex:0 effectiveRange:0];
    v23 = [v22 mutableCopy];

    string = [storageCopy string];
    v25 = [string substringWithRange:{start, v19}];

    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v36 = v25;
    v27 = [v25 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    v28 = [v27 length];

    if (v28)
    {
      v29 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n " attributes:v23];
      [storageCopy replaceCharactersInRange:location withAttributedString:{length, v29}];
    }

    else
    {
      v29 = [styleCopy mutableCopy];
      [v29 setTextLists:MEMORY[0x1E695E0F0]];
      [v23 setObject:v29 forKeyedSubscript:*off_1E70EC988];
      v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550 attributes:v23];
      [storageCopy replaceCharactersInRange:start withAttributedString:{v19, v34}];
      *attributes = [v23 copy];
    }
  }

  else
  {
    v23 = attributedTextCopy;
    v30 = [v23 length];
    if (v19 == 1 && !v30)
    {
      v31 = objc_alloc(MEMORY[0x1E696AAB0]);
      typingAttributes = [(UITextInputController *)self typingAttributes];
      v33 = [v31 initWithString:@" " attributes:typingAttributes];

      v23 = v33;
    }

    [storageCopy replaceCharactersInRange:location withAttributedString:{length, v23}];
  }
}

- (int64_t)_resolveNaturalDirection:(int64_t)direction
{
  directionCopy = direction;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  directionCopy2 = direction;
  if (direction == -1)
  {
    _textStorage = [(UITextInputController *)self _textStorage];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__UITextInputController__resolveNaturalDirection___block_invoke;
    v6[3] = &unk_1E70F94A8;
    v6[4] = &v7;
    [_textStorage coordinateReading:v6];

    directionCopy = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  return directionCopy;
}

void __50__UITextInputController__resolveNaturalDirection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 string];
  *(*(*(a1 + 32) + 8) + 24) = [v3 _isNaturallyRTL];
}

- (BOOL)_isInlineCompletionPresentedAsMarkedText:(id)text
{
  textCopy = text;
  if ([textCopy length] && self->_inputDelegateRespondsToInlineCompletionAsMarkedText)
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
    inlineCompletionAsMarkedText = [WeakRetained inlineCompletionAsMarkedText];

    string = [inlineCompletionAsMarkedText string];
    v8 = [string isEqualToString:textCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)attributedSubstringForMarkedRange
{
  markedTextRange = [(UITextInputController *)self markedTextRange];
  if (!markedTextRange)
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
  v7 = [(UITextInputController *)self attributedTextInRange:markedTextRange];
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
    delegate = [(UITextInputController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(UITextInputController *)self delegate];
      tintColor = [delegate2 tintColor];

      if (tintColor)
      {
        [(NSAttributedString *)v11 addAttribute:*off_1E70ECAD0 value:tintColor range:0, [(NSAttributedString *)v5 length]];
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
  isEditable = [WeakRetained isEditable];

  return isEditable;
}

- (BOOL)isEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_firstTextView);
  isEditing = [WeakRetained isEditing];

  return isEditing;
}

- (void)removeAlternativesForCurrentWord
{
  if ((*(&self->_tiFlags + 2) & 0x40) != 0)
  {
    _textStorage = [(UITextInputController *)self _textStorage];
    v4 = [_textStorage length];

    if (v4)
    {
      beginningOfDocument = [(UITextInputController *)self beginningOfDocument];
      v6 = [(UITextInputController *)self positionFromPosition:beginningOfDocument offset:[(UITextInputController *)self selectedRange]];

      tokenizer = [(UITextInputController *)self tokenizer];
      v8 = [tokenizer rangeEnclosingPosition:v6 withGranularity:1 inDirection:1];

      v9 = [(UITextInputController *)self nsRangeForTextRange:v8];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v9;
        v12 = v10;
        _textStorage2 = [(UITextInputController *)self _textStorage];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __57__UITextInputController_removeAlternativesForCurrentWord__block_invoke;
        v15[3] = &__block_descriptor_48_e23_v16__0__NSTextStorage_8l;
        v15[4] = v11;
        v15[5] = v12;
        [_textStorage2 coordinateEditing:v15];

        WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
        [WeakRetained removeAnnotationAttribute:*off_1E70ECA00 forRange:v8];
      }
    }
  }
}

- (void)insertText:(id)text
{
  v25[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  if ([UIDictationController shouldInsertText:textCopy])
  {
    v5 = +[UIDevice currentDevice];
    if ([v5 _graphicsQuality] == 100)
    {
      v6 = 1;
    }

    else
    {
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v6 = [textCopy rangeOfCharacterFromSet:whitespaceCharacterSet] != 0x7FFFFFFFFFFFFFFFLL;
    }

    selectedRange = [(UITextInputController *)self selectedRange];
    v9 = selectedRange;
    v11 = v10;
    length = self->_markedTextRange.length;
    if (length)
    {
      v9 = selectedRange - length;
      _textStorage = [(UITextInputController *)self _textStorage];
      v14 = [_textStorage length];

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
      selectedRanges = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    }

    else
    {
      selectedRanges = [(UITextInputController *)self selectedRanges];
    }

    _textStorage2 = [(UITextInputController *)self _textStorage];
    string = [_textStorage2 string];
    v19 = [string substringWithRange:{v9, v11}];
    [(UITextInputController *)self signalDictationInputEvent:v19 insertedText:textCopy];

    v20 = getUndoActionNameTyping();
    [(UITextInputController *)self registerUndoOperationForType:2 actionName:v20 affectedRanges:selectedRanges replacementText:textCopy];

    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    selectedTextRange = [(UITextInputController *)self selectedTextRange];
    start = [selectedTextRange start];
    v24 = [WeakRetained emptyTextRangeAtPosition:start];
    [(UITextInputController *)self setPreviousSelectedTextRange:v24];

    [(UITextInputController *)self _insertText:textCopy fromKeyboard:1];
    if (v6)
    {
      [(UITextInputController *)self notifyTextCheckingControllerForSelectionChange];
    }

    [(UITextInputController *)self removeAlternativesForCurrentWord];
  }
}

- (void)invalidateDisplayForRange:(uint64_t)range
{
  if (range)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((range + 248));
    [WeakRetained boundingRectForRange:v3];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = objc_loadWeakRetained((range + 152));
    [v13 setNeedsDisplayInRect:{v6, v8, v10, v12}];
  }
}

- (void)addTextAlternativesDisplayStyle:(int64_t)style toRange:(_NSRange)range invalidatingDisplayInBoundingRect:(BOOL)rect
{
  rectCopy = rect;
  length = range.length;
  location = range.location;
  *&self->_tiFlags |= 0x400000u;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v14 = [WeakRetained textRangeForCharacterRange:{location, length}];

  v11 = objc_loadWeakRetained(&self->_textLayoutController);
  v12 = *off_1E70ECA00;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [v11 addAnnotationAttribute:v12 value:v13 forRange:v14];

  if (rectCopy)
  {
    [(UITextInputController *)self invalidateDisplayForRange:v14];
  }
}

- (void)insertAttributedText:(id)text
{
  textCopy = text;
  v5 = getUndoActionNameTyping();
  selectedRanges = [(UITextInputController *)self selectedRanges];
  string = [textCopy string];
  [(UITextInputController *)self registerUndoOperationForType:2 actionName:v5 affectedRanges:selectedRanges replacementText:string];

  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  start = [selectedTextRange start];
  v11 = [WeakRetained emptyTextRangeAtPosition:start];
  [(UITextInputController *)self setPreviousSelectedTextRange:v11];

  selectedRange = [(UITextInputController *)self selectedRange];
  v14 = [(UITextInputController *)self _newAttributedStringForInsertionOfAttributedText:textCopy inRange:selectedRange, v13];

  [(UITextInputController *)self _insertAttributedText:v14 fromKeyboard:1];
  if (_os_feature_enabled_impl())
  {
    [(UITextInputController *)self notifyTextCheckingControllerForSelectionChange];
  }
}

- (void)_insertAttributedText:(id)text fromKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  textCopy = text;
  if (![(UITextInputController *)self isWritingToolsStreamingReplacements])
  {
    if (keyboardCopy)
    {
      v7 = 0x40000;
    }

    else
    {
      v7 = 0;
    }

    self->_tiFlags = (*&self->_tiFlags & 0xFFFBFFFF | v7);
    [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
    _rangesToReplaceWhenInsertingText = [(UITextInputController *)self _rangesToReplaceWhenInsertingText];
    rangeToBeReplaced = [_rangesToReplaceWhenInsertingText rangeToBeReplaced];
    v11 = v10;
    rangesToBeDeleted = [_rangesToReplaceWhenInsertingText rangesToBeDeleted];
    _selectedText = [(UITextInputController *)self _selectedText];
    string = [textCopy string];
    [(UITextInputController *)self signalDictationInputEvent:_selectedText insertedText:string];

    v15 = [(UITextInputController *)self _rangeAfterCancelDictationIfNecessaryForChangeInRange:rangeToBeReplaced, v11];
    v17 = v16;
    if (*(&self->_tiFlags + 2))
    {
      delegate = [(UITextInputController *)self delegate];
      [delegate textInput:self willChangeCharactersInRange:{v15, v17}];
    }

    _textStorage = [(UITextInputController *)self _textStorage];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __60__UITextInputController__insertAttributedText_fromKeyboard___block_invoke;
    v25[3] = &unk_1E71265A0;
    v25[4] = self;
    v26 = rangesToBeDeleted;
    v28 = v15;
    v29 = v17;
    v20 = textCopy;
    v27 = v20;
    v21 = rangesToBeDeleted;
    [_textStorage coordinateEditing:v25];

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

- (void)_insertAttributedTextWithoutClosingTyping:(id)typing
{
  typingCopy = typing;
  v4 = getUndoActionNameTyping();
  selectedRanges = [(UITextInputController *)self selectedRanges];
  string = [typingCopy string];
  [(UITextInputController *)self registerUndoOperationForType:2 actionName:v4 affectedRanges:selectedRanges replacementText:string];

  [(UITextInputController *)self _insertAttributedText:typingCopy fromKeyboard:1];
}

- (void)_registerUndoOperationForReplacementWithActionName:(id)name replacementText:(id)text
{
  textCopy = text;
  nameCopy = name;
  selectedRanges = [(UITextInputController *)self selectedRanges];
  string = [textCopy string];

  [(UITextInputController *)self registerUndoOperationForType:3 actionName:nameCopy affectedRanges:selectedRanges replacementText:string];
}

- (id)_rangesForBackwardsDelete
{
  v19[1] = *MEMORY[0x1E69E9840];
  _selectedRanges = [(UITextInputController *)self _selectedRanges];
  if ([_selectedRanges count])
  {
    unionRange = [_selectedRanges unionRange];
    length = v5;
    if ([(UITextInputController *)self _hasMarkedText])
    {
      location = self->_markedTextSelection.location;
      length = self->_markedTextSelection.length;
      unionRange += location;
      v8 = [MEMORY[0x1E696B098] valueWithRange:{unionRange, length}];
      v19[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

      _selectedRanges = v9;
      if (!location)
      {
        goto LABEL_8;
      }
    }

    else if (!unionRange)
    {
      goto LABEL_8;
    }

    if (!length)
    {
      WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
      v11 = [WeakRetained rangeOfCharacterClusterAtIndex:unionRange - 1 type:4];
      v13 = v12;

      v14 = [MEMORY[0x1E696B098] valueWithRange:{v11, v13}];
      v18 = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];

      _selectedRanges = v15;
    }
  }

LABEL_8:
  v16 = _selectedRanges;

  return _selectedRanges;
}

- (void)_updateRangeForSmartDelete
{
  [(UITextInputController *)self selectedRange];
  if (v3)
  {
    selectedRanges = [(UITextInputController *)self selectedRanges];
    v5 = [selectedRanges count];

    if (v5 == 1)
    {
      v6 = +[UIKeyboardImpl activeInstance];
      smartInsertDeleteIsEnabled = [v6 smartInsertDeleteIsEnabled];

      if (smartInsertDeleteIsEnabled)
      {
        v8 = [MEMORY[0x1E69D96E0] traitsForUITextInputTraits:self->_textInputTraits];
        v9 = [objc_alloc(MEMORY[0x1E69D9698]) initWithTextInputTraits:v8];
        v10 = [MEMORY[0x1E69D9590] documentStateOfDocumentWithParagraph:self];
        v13 = 0uLL;
        [v9 smartDeleteForDocumentState:v10 outBeforeLength:&v13 + 8 outAfterLength:&v13];
        if (v13 != 0)
        {
          selectedRange = [(UITextInputController *)self selectedRange];
          [(UITextInputController *)self setSelectedRange:selectedRange - *(&v13 + 1), v12 + *(&v13 + 1) + v13];
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
  smartInsertDeleteIsEnabled = [v4 smartInsertDeleteIsEnabled];

  if (!smartInsertDeleteIsEnabled)
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
  _textStorage = [(UITextInputController *)self _textStorage];
  if ([_textStorage length] == 1)
  {
    string = [_textStorage string];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v6 = [string stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    v7 = [v6 length];

    if (!v7)
    {
      v19 = 0;
      string2 = [_textStorage string];
      [string2 getParagraphStart:&v19 end:0 contentsEnd:0 forRange:{0, objc_msgSend(_textStorage, "length")}];

      v9 = v19;
      if (v9 < [_textStorage length])
      {
        v10 = *off_1E70EC988;
        v11 = [_textStorage attribute:*off_1E70EC988 atIndex:v19 effectiveRange:0];
        v12 = v11;
        if (v11)
        {
          textLists = [v11 textLists];
          v14 = [textLists count];

          if (v14)
          {
            _textStorage2 = [(UITextInputController *)self _textStorage];
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __64__UITextInputController_deleteRemainingSpaceForTextListIfNeeded__block_invoke;
            v18[3] = &unk_1E7126368;
            v18[4] = self;
            [_textStorage2 coordinateEditing:v18];

            typingAttributes = [(UITextInputController *)self typingAttributes];
            v17 = [typingAttributes objectForKeyedSubscript:v10];

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

- (void)checkSmartPunctuationForWordInRange:(id)range
{
  v39 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  if (rangeCopy && ![(UITextInputController *)self isWritingToolsStreamingReplacements])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    smartPunctuationController = [v5 smartPunctuationController];

    if (smartPunctuationController)
    {
      selectedRange = [(UITextInputController *)self selectedRange];
      v31 = v8;
      v9 = [(UITextInputController *)self textInRange:rangeCopy];
      v10 = objc_loadWeakRetained(&self->_textLayoutController);
      beginningOfDocument = [v10 beginningOfDocument];
      start = [rangeCopy start];
      v13 = [v10 offsetFromPosition:beginningOfDocument toPosition:start];

      [smartPunctuationController smartPunctuationResultsForString:v9];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v37 = 0u;
      v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v14)
      {
        v15 = v14;
        v27 = selectedRange;
        v28 = v9;
        v29 = smartPunctuationController;
        v30 = rangeCopy;
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
            range = [v18 range];
            v21 = v20;
            replacementString = [v18 replacementString];
            v23 = [(UITextInputController *)self _delegateShouldChangeTextInRange:range + v13 replacementText:v21, replacementString];

            if (v23)
            {
              WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
              v25 = [WeakRetained textRangeForCharacterRange:{range + v13, v21}];

              replacementString2 = [v18 replacementString];
              [(UITextInputController *)self replaceRange:v25 withText:replacementString2];

              v32 = 1;
            }
          }

          v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v15);
        smartPunctuationController = v29;
        rangeCopy = v30;
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

- (void)checkSpellingForWordInRange:(id)range
{
  v28[1] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  if (rangeCopy)
  {
    v5 = [(UITextInputController *)self textInRange:rangeCopy];
    textChecker = [(UITextInputController *)self textChecker];
    if (!textChecker)
    {
LABEL_19:

      goto LABEL_20;
    }

    v7 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v7 currentInputMode];

    multilingualLanguages = [currentInputMode multilingualLanguages];
    v10 = [multilingualLanguages count];

    if (v10)
    {
      multilingualLanguages2 = [currentInputMode multilingualLanguages];
    }

    else
    {
      primaryLanguage = [currentInputMode primaryLanguage];

      if (primaryLanguage)
      {
        languageWithRegion = [currentInputMode languageWithRegion];
        v28[0] = languageWithRegion;
        multilingualLanguages2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      }

      else
      {
        multilingualLanguages2 = MEMORY[0x1E695E0F0];
      }
    }

    v14 = +[UIDictationController sharedInstance];
    detectedLanguage = [v14 detectedLanguage];

    v16 = +[UIDictationController sharedInstance];
    language = [v16 language];

    if (detectedLanguage)
    {
      v18 = [detectedLanguage stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

      if (([multilingualLanguages2 containsObject:v18] & 1) == 0)
      {
        v19 = [multilingualLanguages2 arrayByAddingObject:v18];
LABEL_15:

        multilingualLanguages2 = v19;
      }
    }

    else
    {
      if (language && ([multilingualLanguages2 containsObject:language] & 1) == 0)
      {
        v19 = [multilingualLanguages2 arrayByAddingObject:language];
        v18 = 0;
        goto LABEL_15;
      }

      v18 = 0;
    }

    if ([textChecker rangeOfMisspelledWordInString:v5 range:0 startingAt:objc_msgSend(v5 wrap:"length") languages:{0, 0, multilingualLanguages2}] != 0x7FFFFFFFFFFFFFFFLL)
    {
      beginningOfDocument = [(UITextInputController *)self beginningOfDocument];
      [rangeCopy start];
      v27 = v5;
      v22 = v21 = currentInputMode;
      v26 = [(UITextInputController *)self offsetFromPosition:beginningOfDocument toPosition:v22];

      start = [rangeCopy start];
      v24 = [rangeCopy end];
      v25 = [(UITextInputController *)self offsetFromPosition:start toPosition:v24];

      currentInputMode = v21;
      v5 = v27;

      [(UITextInputController *)self addTextAlternativesDisplayStyle:2 toRange:v26, v25];
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (_NSRange)nsRangeForTextRange:(id)range
{
  if (range)
  {
    rangeCopy = range;
    beginningOfDocument = [(UITextInputController *)self beginningOfDocument];
    start = [rangeCopy start];
    v7 = [(UITextInputController *)self offsetFromPosition:beginningOfDocument toPosition:start];

    start2 = [rangeCopy start];
    v9 = [rangeCopy end];

    v10 = [(UITextInputController *)self offsetFromPosition:start2 toPosition:v9];
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

- (id)textRangeForNSRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v6 = [WeakRetained textRangeForCharacterRange:{location, length}];

  return v6;
}

- (void)removeSpellingMarkersFromWordInRange:(id)range
{
  rangeCopy = range;
  v4 = [(UITextInputController *)self nsRangeForTextRange:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    v7 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v9 = *off_1E70ECA00;
    start = [rangeCopy start];
    v11 = [WeakRetained annotationAttribute:v9 atPosition:start];

    if (v11 && [v11 integerValue] == 2)
    {
      v12 = objc_loadWeakRetained(&self->_textLayoutController);
      [v12 removeAnnotationAttribute:v9 forRange:rangeCopy];

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
  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  start = [selectedTextRange start];

  v4 = start;
  if (start)
  {
    tokenizer = [(UITextInputController *)self tokenizer];
    v6 = [tokenizer rangeEnclosingPosition:start withGranularity:1 inDirection:0];

    if (!v6)
    {
      tokenizer2 = [(UITextInputController *)self tokenizer];
      v6 = [tokenizer2 rangeEnclosingPosition:start withGranularity:1 inDirection:1];
    }

    [(UITextInputController *)self removeSpellingMarkersFromWordInRange:v6];

    v4 = start;
  }
}

- (void)notifyTextCheckingControllerForSelectionChange
{
  textCheckingController = self->_textCheckingController;
  previousSelectedTextRange = [(UITextInputController *)self previousSelectedTextRange];
  [(UITextCheckingController *)textCheckingController didChangeSelectionFromRange:previousSelectedTextRange];
}

- (void)checkSpellingForSelectionChangeIfNecessary
{
  if ([(UITextInputController *)self continuousSpellCheckingEnabled])
  {
    previousSelectedTextRange = [(UITextInputController *)self previousSelectedTextRange];
    start = [previousSelectedTextRange start];

    if (start)
    {
      tokenizer = [(UITextInputController *)self tokenizer];
      v17 = [tokenizer rangeEnclosingPosition:start withGranularity:1 inDirection:0];

      if (!v17)
      {
        tokenizer2 = [(UITextInputController *)self tokenizer];
        v17 = [tokenizer2 rangeEnclosingPosition:start withGranularity:1 inDirection:1];
      }
    }

    else
    {
      v17 = 0;
    }

    beginningOfDocument = [(UITextInputController *)self beginningOfDocument];
    v8 = [(UITextInputController *)self positionFromPosition:beginningOfDocument offset:[(UITextInputController *)self selectedRange]];

    tokenizer3 = [(UITextInputController *)self tokenizer];
    v10 = [tokenizer3 rangeEnclosingPosition:v8 withGranularity:1 inDirection:0];

    if (!v10)
    {
      tokenizer4 = [(UITextInputController *)self tokenizer];
      v10 = [tokenizer4 rangeEnclosingPosition:v8 withGranularity:1 inDirection:1];
    }

    v12 = [(UITextInputController *)self nsRangeForTextRange:v17];
    v14 = v13;
    if (([v17 isEqual:v10] & 1) == 0)
    {
      selectedRange = [(UITextInputController *)self selectedRange];
      if (selectedRange + v16 < v12 || [(UITextInputController *)self selectedRange]> v12 + v14)
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

  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  [(UITextInputController *)self setPreviousSelectedTextRange:selectedTextRange];
}

- (void)endSelectionChange
{
  [(UITextInputController *)self notifyTextCheckingControllerForSelectionChange];
  previousSelectedTextRange = [(UITextInputController *)self previousSelectedTextRange];
  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  v5 = previousSelectedTextRange;
  v6 = selectedTextRange;
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

- (void)changingContextWithTrigger:(id)trigger
{
  triggerCopy = trigger;
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_inputDelegate);
    [v6 performSelector:sel_changingContextWithTrigger_ withObject:triggerCopy];
  }
}

- (id)selectionRectsForRange:(id)range
{
  v85 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  interactionAssistant = [(UITextInputController *)self interactionAssistant];
  view = [interactionAssistant view];
  textInputView = [view textInputView];

  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __48__UITextInputController_selectionRectsForRange___block_invoke;
  v82[3] = &unk_1E71265F0;
  v82[4] = self;
  v60 = [WeakRetained selectionRectsForRange:rangeCopy fromView:textInputView forContainerPassingTest:v82];

  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v8 = [rangeCopy end];
  v9 = v8;
  if (v8)
  {
    start = v8;
  }

  else
  {
    start = [rangeCopy start];
  }

  v10 = objc_loadWeakRetained(&self->_textLayoutController);
  typingAttributes = [(UITextInputController *)self typingAttributes];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __48__UITextInputController_selectionRectsForRange___block_invoke_2;
  v77[3] = &unk_1E7126618;
  v77[4] = &v78;
  [v10 requestTextGeometryAtPosition:start typingAttributes:typingAttributes resultBlock:v77];

  v12 = [v60 mutableCopy];
  if ([v12 count])
  {
    if ([rangeCopy isEmpty])
    {
      goto LABEL_36;
    }

    v13 = [v12 bs_firstObjectPassingTest:&__block_literal_global_546];
    v14 = v13;
    if (v13)
    {
      firstObject = v13;
    }

    else
    {
      firstObject = [v12 firstObject];
    }

    v16 = [v12 bs_firstObjectPassingTest:&__block_literal_global_548];
    v17 = v16;
    if (v16)
    {
      lastObject = v16;
    }

    else
    {
      lastObject = [v12 lastObject];
    }

    if ((*(&self->_tiFlags + 1) & 2) == 0 || (v18 = objc_loadWeakRetained(&self->_delegate), v19 = [v18 textInputShouldExtendCaretHeight:self], v18, v19))
    {
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __48__UITextInputController_selectionRectsForRange___block_invoke_6;
      v74[3] = &unk_1E7126680;
      v76 = &__block_literal_global_551;
      v75 = firstObject;
      v20 = [v12 indexesOfObjectsPassingTest:v74];
      v21 = [v12 objectsAtIndexes:v20];

      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __48__UITextInputController_selectionRectsForRange___block_invoke_7;
      v71[3] = &unk_1E7126680;
      v73 = &__block_literal_global_551;
      v72 = lastObject;
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
            [v28 setRect:textInputView fromView:{v30, v32 + -1.0, v34, v36 + 1.0}];
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
            [v41 setRect:textInputView fromView:{v43, v45, v47, v49 + v52}];
          }

          v38 = [v37 countByEnumeratingWithState:&v63 objects:v83 count:16];
        }

        while (v38);
      }
    }

    if (([firstObject containsStart] & 1) == 0)
    {
      start2 = [rangeCopy start];
      [(UITextInputController *)self caretRectForPosition:start2];

      UIFloorToViewScale(textInputView);
      v54 = [_UIMutableTextSelectionRect selectionRectWithRect:textInputView fromView:?];
      [v54 setContainsStart:1];
      [v54 setBaselineOffset:v79[3]];
      [v12 addObject:v54];
    }

    if (([lastObject containsEnd] & 1) == 0)
    {
      v55 = [rangeCopy end];
      [(UITextInputController *)self caretRectForPosition:v55];

      UIFloorToViewScale(textInputView);
      v56 = [_UIMutableTextSelectionRect selectionRectWithRect:textInputView fromView:?];
      [v56 setContainsEnd:1];
      [v56 setBaselineOffset:v79[3]];
      [v12 addObject:v56];
    }

    v15 = firstObject;
  }

  else
  {
    v15 = [_UIMutableTextSelectionRect selectionRectWithRect:textInputView fromView:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
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

- (id)_rectsForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v7 = [WeakRetained textRangeForCharacterRange:{location, length}];
  v8 = [(UITextInputController *)self selectionRectsForRange:v7];

  return v8;
}

- (id)_characterPositionForPoint:(CGPoint)point
{
  v42 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  textContainers = [WeakRetained textContainers];

  v6 = [textContainers countByEnumeratingWithState:&v37 objects:v41 count:16];
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
          objc_enumerationMutation(textContainers);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        textView = [v11 textView];
        if ([(UITextInputController *)self _shouldConsiderTextViewForGeometry:textView])
        {
          v13 = objc_opt_respondsToSelector();
          v14 = v35;
          v15 = v9;
          if (v13)
          {
            [textView textContainerOrigin];
          }

          v16 = point.x - v14;
          v17 = point.y - v15;
          [textView bounds];
          x = v45.origin.x;
          y = v45.origin.y;
          width = v45.size.width;
          height = v45.size.height;
          v44.x = v16;
          v44.y = v17;
          if (CGRectContainsPoint(v45, v44) || (v46.origin.x = x, v46.origin.y = y, v46.size.width = width, v46.size.height = height, v22 = CGRectGetMinX(v46) - v16, v47.origin.x = x, v47.origin.y = y, v47.size.width = width, v47.size.height = height, v23 = fmin(v22, v16 - CGRectGetMaxX(v47)), v48.origin.x = x, v48.origin.y = y, v48.size.width = width, v48.size.height = height, v24 = CGRectGetMinY(v48) - v17, v49.origin.x = x, v49.origin.y = y, v49.size.width = width, v49.size.height = height, v25 = fmin(v24, v17 - CGRectGetMaxY(v49)), v26 = v23 * v23, v9 = v34, v26 + v25 * v25 != INFINITY))
          {
            [v11 size];
            if (y <= point.y && point.y <= y + height)
            {
              v30 = v9 + v27;
              if (v17 > v9 + v27)
              {
                [textView _currentScreenScale];
                v17 = v30 + -1.0 / v31;
              }

              if (v17 < v9)
              {
                v17 = v9;
              }
            }

            v32 = objc_loadWeakRetained(&self->_textLayoutController);
            endOfDocument = [v32 cursorPositionAtPoint:v11 inContainer:{v16, v17}];

            goto LABEL_25;
          }
        }
      }

      v7 = [textContainers countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  textContainers = objc_loadWeakRetained(&self->_textLayoutController);
  endOfDocument = [textContainers endOfDocument];
LABEL_25:

  return endOfDocument;
}

- (unint64_t)_validCaretPositionFromCharacterIndex:(unint64_t)index downstream:(BOOL)downstream
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  indexCopy = index;
  _textStorage = [(UITextInputController *)self _textStorage];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__UITextInputController__validCaretPositionFromCharacterIndex_downstream___block_invoke;
  v9[3] = &unk_1E71266A8;
  v9[4] = self;
  v9[5] = &v11;
  downstreamCopy = downstream;
  [_textStorage coordinateReading:v9];

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
  _firstTextView = [(UITextInputController *)self _firstTextView];
  if (_firstTextView)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [_firstTextView superview];

      _firstTextView = superview;
    }

    while (superview);
  }

  return _firstTextView;
}

- (void)scrollRangeToVisible:(_NSRange)visible
{
  v14 = [(UITextInputController *)self _rectsForRange:visible.location, visible.length];
  if ([v14 count])
  {
    v4 = [v14 objectAtIndex:0];
    [v4 rect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    _parentScrollView = [(UITextInputController *)self _parentScrollView];
    [_parentScrollView scrollRectToVisible:1 animated:{v6, v8, v10, v12}];
  }
}

- (void)_ensureSelectionVisible
{
  _selectedRange = [(UITextInputController *)self _selectedRange];

  [(UITextInputController *)self scrollRangeToVisible:_selectedRange, 1];
}

- (id)textInRange:(id)range
{
  rangeCopy = range;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__214;
  v16 = __Block_byref_object_dispose__214;
  v17 = 0;
  _textStorage = [(UITextInputController *)self _textStorage];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__UITextInputController_textInRange___block_invoke;
  v9[3] = &unk_1E71266D0;
  v9[4] = self;
  v6 = rangeCopy;
  v10 = v6;
  v11 = &v12;
  [_textStorage coordinateReading:v9];

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

- (id)attributedTextInRange:(id)range
{
  rangeCopy = range;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__214;
  v16 = __Block_byref_object_dispose__214;
  v17 = 0;
  _textStorage = [(UITextInputController *)self _textStorage];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__UITextInputController_attributedTextInRange___block_invoke;
  v9[3] = &unk_1E71266D0;
  v9[4] = self;
  v6 = rangeCopy;
  v10 = v6;
  v11 = &v12;
  [_textStorage coordinateReading:v9];

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

- (void)replaceRange:(id)range withText:(id)text
{
  rangeCopy = range;
  textCopy = text;
  _selectedRange = [(UITextInputController *)self _selectedRange];
  v9 = [(UITextInputController *)self _newAttributedStringForInsertionOfText:textCopy inRange:_selectedRange, v8];

  v10 = [(UITextInputController *)self _replaceRange:rangeCopy withAttributedTextFromKeyboard:v9 addingUnderlinesForAlternatives:0 updatingSelection:1];
}

- (void)replaceRange:(id)range withAttributedText:(id)text
{
  rangeCopy = range;
  textCopy = text;
  v7 = [(UITextInputController *)self _replaceRange:rangeCopy withAttributedTextFromKeyboard:textCopy addingUnderlinesForAlternatives:[(UITextInputController *)self isWritingToolsStreamingReplacements]^ 1 updatingSelection:1];
}

- (id)replaceRange:(id)range withAttributedText:(id)text updatingSelection:(BOOL)selection
{
  selectionCopy = selection;
  textCopy = text;
  rangeCopy = range;
  v10 = [(UITextInputController *)self _replaceRange:rangeCopy withAttributedTextFromKeyboard:textCopy addingUnderlinesForAlternatives:[(UITextInputController *)self isWritingToolsStreamingReplacements]^ 1 updatingSelection:selectionCopy];

  return v10;
}

- (id)_replaceRange:(id)range withAttributedTextFromKeyboard:(id)keyboard addingUnderlinesForAlternatives:(BOOL)alternatives updatingSelection:(BOOL)selection
{
  selectionCopy = selection;
  alternativesCopy = alternatives;
  v62 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  keyboardCopy = keyboard;
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
          *&buf[4] = rangeCopy;
          if (alternativesCopy)
          {
            v41 = @"YES";
          }

          else
          {
            v41 = @"NO";
          }

          if (selectionCopy)
          {
            v40 = @"YES";
          }

          *&buf[12] = 2112;
          *&buf[14] = keyboardCopy;
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
  selectedRange = [(UITextInputController *)self selectedRange];
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
  _textStorage = [(UITextInputController *)self _textStorage];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __120__UITextInputController__replaceRange_withAttributedTextFromKeyboard_addingUnderlinesForAlternatives_updatingSelection___block_invoke;
  v46[3] = &unk_1E7126720;
  v46[4] = self;
  v49 = buf;
  v14 = rangeCopy;
  v47 = v14;
  v15 = keyboardCopy;
  v51 = alternativesCopy;
  v48 = v15;
  v50 = &v52;
  [_textStorage coordinateEditing:v46];

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
  start = [v14 start];
  v22 = -[_UITextLayoutControllerBase positionFromPosition:offset:](WeakRetained, start, [v15 length]);

  if (selectionCopy)
  {
    v23 = objc_loadWeakRetained(&self->_textLayoutController);
    v24 = [v23 emptyTextRangeAtPosition:v22];
    [(UITextInputController *)self setSelectedTextRange:v24];

    interactionAssistant = [(UITextInputController *)self interactionAssistant];
    [interactionAssistant selectionChanged];

    selectedRange2 = [(UITextInputController *)self selectedRange];
    if (selectedRange2 + v27 >= selectedRange)
    {
      v28 = selectedRange2 + v27 - selectedRange;
    }

    else
    {
      v28 = 0;
    }

    if (selectedRange2 + v27 >= selectedRange)
    {
      v29 = selectedRange;
    }

    else
    {
      v29 = selectedRange2 + v27;
    }

    v30 = objc_loadWeakRetained(&self->_textLayoutController);
    v31 = [v30 textRangeForCharacterRange:{v29, v28}];

    [(UITextInputController *)self checkSmartPunctuationForWordInRange:v31];
  }

  [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0 replacement:v15 characterRange:*(*&buf[8] + 32), *(*&buf[8] + 40)];
  *&self->_tiFlags &= ~0x40000u;
  start2 = [v14 start];
  if (start2)
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
    start3 = [v14 start];
    v35 = [v36 textRangeFromPosition:start3 toPosition:v22];
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

- (void)replaceRangeWithTextWithoutClosingTyping:(id)typing replacementText:(id)text
{
  typingCopy = typing;
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v9 = [WeakRetained characterRangeForTextRange:typingCopy];
  v11 = v10;

  if (*(&self->_tiFlags + 2))
  {
    delegate = [(UITextInputController *)self delegate];
    [delegate textInput:self willChangeCharactersInRange:{v9, v11}];
  }

  v13 = getUndoActionNameTyping();
  [(UITextInputController *)self registerUndoOperationForType:2 actionName:v13 affectedRange:v9 replacementText:v11, &stru_1EFB14550];

  v14 = getUndoActionNameTyping();
  [(UITextInputController *)self registerUndoOperationForType:2 actionName:v14 affectedRange:v9 replacementText:0, textCopy];

  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__UITextInputController_replaceRangeWithTextWithoutClosingTyping_replacementText___block_invoke;
  v20[3] = &unk_1E7103E40;
  v20[4] = self;
  v21 = typingCopy;
  v16 = textCopy;
  v22 = v16;
  v23 = v9;
  v24 = v11;
  v17 = typingCopy;
  [(UITextInputController *)self _performWhileSuppressingDelegateNotifications:v20];
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1EFB14550;
  }

  selectedTextRange2 = [(UITextInputController *)self selectedTextRange];
  -[UITextInputController _sendDelegateChangeNotificationsForText:selection:](self, "_sendDelegateChangeNotificationsForText:selection:", 1, [selectedTextRange isEqual:selectedTextRange2] ^ 1);
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

- (void)correctedTypedText:(id)text rangeOfReplacement:(id)replacement
{
  textCopy = text;
  replacementCopy = replacement;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained correctedTypedText:textCopy rangeOfReplacement:replacementCopy];
  }
}

- (void)_performWhileSuppressingDelegateNotifications:(id)notifications
{
  tiFlags = self->_tiFlags;
  self->_tiFlags = (*&tiFlags | 0x1000000);
  (*(notifications + 2))(notifications, a2);
  self->_tiFlags = (*&self->_tiFlags & 0xFEFFFFFF | ((HIBYTE(*&tiFlags) & 1) << 24));
}

- (int64_t)selectionAffinity
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  [(UITextRange *)self->_selectedTextRange end];

  return *&self->_markedTextRange.length != 0;
}

- (void)_setAttributedMarkedText:(id)text selectedRange:(_NSRange)range fromKeyboard:(BOOL)keyboard useTextStyle:(BOOL)style
{
  styleCopy = style;
  textCopy = text;
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

  if (styleCopy)
  {
    markedTextStyle = [(UITextInputController *)self markedTextStyle];
    v13 = [markedTextStyle mutableCopy];
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
  string = [textCopy string];
  v21 = [v19 initWithString:string attributes:v16];

  [v21 beginEditing];
  v22 = [textCopy length];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __90__UITextInputController__setAttributedMarkedText_selectedRange_fromKeyboard_useTextStyle___block_invoke;
  v69[3] = &unk_1E70F30C8;
  v23 = v21;
  v70 = v23;
  [textCopy enumerateAttributesInRange:0 options:v22 usingBlock:{0, v69}];
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
    _textStorage = [(UITextInputController *)self _textStorage];
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
    [_textStorage coordinateEditing:v48];

    _textStorage2 = [(UITextInputController *)self _textStorage];
    v30 = [_textStorage2 length];

    if (v66[3] == v30)
    {
      goto LABEL_19;
    }

    v31 = self->_markedTextRange.location;
    v32 = self->_markedTextRange.length;
    _textStorage3 = [(UITextInputController *)self _textStorage];
    string2 = [_textStorage3 string];
    if (v32 + v31 <= [string2 length])
    {
      _textStorage4 = [(UITextInputController *)self _textStorage];
      string3 = [_textStorage4 string];
      v36 = [string3 substringWithRange:{self->_markedTextRange.location, self->_markedTextRange.length}];
      string4 = [v28 string];
      v38 = [v36 isEqualToString:string4];

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
    _selectedRange = [(UITextInputController *)self _selectedRange];
    v42 = range.location;
    v44 = range.length;
    if (v40 + range.location > _selectedRange + v43 || _selectedRange > v40 + range.location + range.length)
    {
      v44 = 0;
      v42 = self->_markedTextRange.length;
    }

    self->_markedTextSelection.location = v42;
    self->_markedTextSelection.length = v44;
    interactionAssistant = [(UITextInputController *)self interactionAssistant];
    [interactionAssistant selectionChanged];

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

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v8 = self->_markedTextRange.length;
  v14 = textCopy;
  if (v8)
  {
    v9 = textCopy;
    v10 = self->_markedTextRange.location;
  }

  else
  {
    _selectedRange = [(UITextInputController *)self _selectedRange];
    v9 = v14;
    v10 = _selectedRange;
    v8 = v12;
  }

  v13 = [(UITextInputController *)self _newAttributedStringForInsertionOfText:v9 inRange:v10, v8];
  [(UITextInputController *)self _setAttributedMarkedText:v13 selectedRange:location fromKeyboard:length useTextStyle:0, 1];
}

- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UITextInputController *)self markedTextFromClient:textCopy];
    v10 = objc_loadWeakRetained(&self->_inputDelegate);
    [v10 setMarkedTextFromClient:v9];
  }

  v11 = self->_markedTextRange.length;
  if (v11)
  {
    _selectedRange = self->_markedTextRange.location;
  }

  else
  {
    _selectedRange = [(UITextInputController *)self _selectedRange];
    v11 = v13;
  }

  v14 = [(UITextInputController *)self _newAttributedStringForInsertionOfAttributedText:textCopy inRange:_selectedRange, v11];
  [(UITextInputController *)self _setAttributedMarkedText:v14 selectedRange:location fromKeyboard:length useTextStyle:0, 1];
}

- (BOOL)markedTextFromClient:(id)client
{
  clientCopy = client;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([clientCopy length])
  {
    v4 = [clientCopy length];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__UITextInputController_markedTextFromClient___block_invoke;
    v9[3] = &unk_1E70F8050;
    v9[4] = &v10;
    [clientCopy enumerateAttribute:@"UITextInputAttributedStringMarkedTextFromClient" inRange:0 options:v4 usingBlock:{0, v9}];
    if ((v11[3] & 1) == 0)
    {
      v5 = *off_1E70EC920;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46__UITextInputController_markedTextFromClient___block_invoke_2;
      v8[3] = &unk_1E70F8050;
      v8[4] = &v10;
      [clientCopy enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v8}];
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

- (void)unmarkText:(BOOL)text
{
  if (self->_markedTextRange.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  textCopy = text;
  markedTextStyle = [(UITextInputController *)self markedTextStyle];
  v7 = markedTextStyle;
  if (!markedTextStyle || !self->_markedTextRange.length)
  {
    goto LABEL_6;
  }

  if (textCopy)
  {
    _textStorage = [(UITextInputController *)self _textStorage];
    string = [_textStorage string];
    v7 = [string substringWithRange:{self->_markedTextRange.location, self->_markedTextRange.length}];

    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7];
    -[UITextInputController _setAttributedMarkedText:selectedRange:fromKeyboard:useTextStyle:](self, "_setAttributedMarkedText:selectedRange:fromKeyboard:useTextStyle:", v10, [v7 length], 0, 0, 0);

LABEL_6:
  }

  [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:1];
  [(UITextInputController *)self _clearMarkedText];
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  _selectedRange = [(UITextInputController *)self _selectedRange];
  [WeakRetained invalidateDisplayForCharacterRange:{_selectedRange, v13}];

  [(UITextInputController *)self setSelectedRange:[(UITextInputController *)self _selectedRange]+ self->_markedTextSelection.location, 0];

  [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:1];
}

- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v9 = [WeakRetained textRangeFromPosition:positionCopy toPosition:toPositionCopy];

  return v9;
}

- (id)positionFromPosition:(id)position offset:(int64_t)offset
{
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v8 = [(_UITextLayoutControllerBase *)WeakRetained positionFromPosition:positionCopy offset:offset];

  return v8;
}

- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset
{
  positionCopy = position;
  if ((direction & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v9 = direction != 3;
    v10 = direction != 2;
    v11 = [(UITextInputController *)self _resolveNaturalDirection:[(UITextInputController *)self baseWritingDirectionForPosition:positionCopy inDirection:0]];
    v12 = v11 != 1 || v10;
    v13 = v11 == 1 || v9;
    v14 = objc_loadWeakRetained(&self->_textLayoutController);
    beginningOfDocument = [v14 beginningOfDocument];
    v16 = [v14 offsetFromPosition:beginningOfDocument toPosition:positionCopy];

    if (offset >= 1)
    {
      v17 = v13 & v12;
      do
      {
        if (v17)
        {
          _textStorage = [(UITextInputController *)self _textStorage];
          v19 = [_textStorage length];

          if (v16 >= v19)
          {
            break;
          }

          selfCopy2 = self;
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
          selfCopy2 = self;
          v22 = 0;
        }

        v16 = [(UITextInputController *)selfCopy2 _validCaretPositionFromCharacterIndex:v21 downstream:v22];
        --offset;
      }

      while (offset);
    }

    v23 = objc_loadWeakRetained(&self->_textLayoutController);
    beginningOfDocument2 = [v23 beginningOfDocument];
    endOfDocument = [(_UITextLayoutControllerBase *)v23 positionFromPosition:beginningOfDocument2 offset:v16];
  }

  else if ((direction & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v27 = objc_opt_respondsToSelector();

    if ((v27 & 1) == 0 || (v28 = objc_loadWeakRetained(&self->_textLayoutController), -[UITextInputController typingAttributes](self, "typingAttributes"), v29 = objc_claimAutoreleasedReturnValue(), -[UITextPlaceholder attachment](self->_textPlaceholder, "attachment"), v30 = objc_claimAutoreleasedReturnValue(), [v28 insertionRectForPosition:positionCopy typingAttributes:v29 placeholderAttachment:v30 textContainer:0], MinX = CGRectGetMinX(v41), v30, v29, v28, v32 = objc_loadWeakRetained(&self->_textLayoutController), objc_msgSend(v32, "positionFromPosition:inDirection:offset:affinity:anchorPositionOffset:", positionCopy, direction, offset, -[UITextInputController selectionAffinity](self, "selectionAffinity"), MinX), endOfDocument = objc_claimAutoreleasedReturnValue(), v32, !endOfDocument))
    {
      v33 = positionCopy;
      [(UITextInputController *)self caretRectForPosition:v33];
      if (offset < 1)
      {
        endOfDocument = v33;
      }

      else
      {
        v35 = v34;
        do
        {
          [(UITextInputController *)self caretRectForPosition:v33];
          v38 = v37 + 1.0;
          if (direction == 4)
          {
            v38 = -1.0;
          }

          endOfDocument = [(UITextInputController *)self _characterPositionForPoint:v35, v36 + v38];

          v33 = endOfDocument;
          --offset;
        }

        while (offset);
      }
    }
  }

  else
  {
    endOfDocument = [(UITextInputController *)self endOfDocument];
  }

  return endOfDocument;
}

- (int64_t)comparePosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v9 = [WeakRetained comparePosition:positionCopy toPosition:toPositionCopy];

  return v9;
}

- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v9 = [WeakRetained offsetFromPosition:positionCopy toPosition:toPositionCopy];

  return v9;
}

- (id)positionWithinRange:(id)range farthestInDirection:(int64_t)direction
{
  rangeCopy = range;
  v6 = rangeCopy;
  if (direction == 5 || direction == 2)
  {
    start = [rangeCopy end];
  }

  else
  {
    start = [rangeCopy start];
  }

  v8 = start;

  return v8;
}

- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction
{
  if (direction == 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v8 = [(_UITextLayoutControllerBase *)WeakRetained positionFromPosition:positionCopy offset:v5];

  v9 = objc_loadWeakRetained(&self->_textLayoutController);
  v10 = [v9 textRangeFromPosition:positionCopy toPosition:v8];

  return v10;
}

- (void)setInputDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_inputDelegate, delegateCopy);
  v5 = objc_opt_respondsToSelector();

  self->_inputDelegateRespondsToInlineCompletionAsMarkedText = v5 & 1;
}

- (void)_setAllowedTypingAttributes:(id)attributes
{
  if (self->_allowedTypingAttributes != attributes)
  {
    v5 = [attributes copy];
    allowedTypingAttributes = self->_allowedTypingAttributes;
    self->_allowedTypingAttributes = v5;
  }
}

- (id)_fixupTypingAttributeForAttributes:(id)attributes
{
  v4 = *off_1E70EC978;
  attributesCopy = attributes;
  v6 = [attributesCopy objectForKey:v4];
  v7 = [attributesCopy objectForKey:@"DDResultAttributeName"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  _allowedTypingAttributes = [(UITextInputController *)self _allowedTypingAttributes];
  v10 = [attributesCopy objectForKey:@"mt_systemAttributes"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__UITextInputController__fixupTypingAttributeForAttributes___block_invoke;
  v17[3] = &unk_1E70FEC28;
  v18 = _allowedTypingAttributes;
  v19 = v10;
  v11 = dictionary;
  v20 = v11;
  v12 = v10;
  v13 = _allowedTypingAttributes;
  [attributesCopy enumerateKeysAndObjectsUsingBlock:v17];

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

- (id)_newAttributedStringForInsertionOfText:(id)text inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  if (textCopy)
  {
    v8 = textCopy;
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

- (id)_newAttributedStringForInsertionOfAttributedText:(id)text inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v8 = [(UITextInputController *)self _attributesForInsertionOfText:location, length];
  v9 = [textCopy mutableCopy];

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

- (id)_newAttributedStringForReplacementOfAnnotatedText:(id)text inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v35 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__214;
  v32 = __Block_byref_object_dispose__214;
  v33 = 0;
  _textStorage = [(UITextInputController *)self _textStorage];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __83__UITextInputController__newAttributedStringForReplacementOfAnnotatedText_inRange___block_invoke;
  v27[3] = &unk_1E7126798;
  v27[4] = &v28;
  v27[5] = location;
  v27[6] = length;
  [_textStorage coordinateReading:v27];

  string = [v29[5] string];
  string2 = [textCopy string];
  v11 = [string isEqualToString:string2];

  if (v11)
  {
    v12 = [v29[5] mutableCopy];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    validAnnotations = [(UITextInputController *)self validAnnotations];
    v14 = [validAnnotations countByEnumeratingWithState:&v23 objects:v34 count:16];
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
            objc_enumerationMutation(validAnnotations);
          }

          [v12 removeAttribute:*(*(&v23 + 1) + 8 * v16++) range:{0, objc_msgSend(v12, "length")}];
        }

        while (v14 != v16);
        v14 = [validAnnotations countByEnumeratingWithState:&v23 objects:v34 count:16];
      }

      while (v14);
    }

    v17 = [textCopy length];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __83__UITextInputController__newAttributedStringForReplacementOfAnnotatedText_inRange___block_invoke_2;
    v21[3] = &unk_1E70F30C8;
    v18 = v12;
    v22 = v18;
    [textCopy enumerateAttributesInRange:0 options:v17 usingBlock:{0, v21}];
    if (*(&self->_tiFlags + 1))
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained textInput:self prepareAttributedTextForInsertion:v18];
    }
  }

  else
  {
    v18 = [(UITextInputController *)self _newAttributedStringForInsertionOfAttributedText:textCopy inRange:location, length];
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

- (id)_attributesForInsertionOfText:(_NSRange)text
{
  length = text.length;
  location = text.location;
  if (text.location == [(UITextInputController *)self _selectedRange]&& length == v6)
  {
    typingAttributes = [(UITextInputController *)self typingAttributes];
  }

  else
  {
    typingAttributes = [(UITextInputController *)self _attributesForReplacementInRange:location, length];
  }

  return typingAttributes;
}

- (id)_attributesForReplacementInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__214;
  v14 = __Block_byref_object_dispose__214;
  v15 = 0;
  _textStorage = [(UITextInputController *)self _textStorage];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__UITextInputController__attributesForReplacementInRange___block_invoke;
  v9[3] = &unk_1E71267C0;
  v9[6] = location;
  v9[7] = length;
  v9[4] = self;
  v9[5] = &v10;
  [_textStorage coordinateReading:v9];

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

- (void)_addToTypingAttributes:(id)attributes value:(id)value
{
  valueCopy = value;
  attributesCopy = attributes;
  typingAttributes = [(UITextInputController *)self typingAttributes];
  v9 = [typingAttributes mutableCopy];

  [v9 setValue:valueCopy forKey:attributesCopy];
  [(UITextInputController *)self setTypingAttributes:v9];
}

- (void)_addToTypingAttributes:(id)attributes
{
  attributesCopy = attributes;
  typingAttributes = [(UITextInputController *)self typingAttributes];
  v6 = [typingAttributes mutableCopy];

  [v6 addEntriesFromDictionary:attributesCopy];
  [(UITextInputController *)self setTypingAttributes:v6];
}

- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  _textStorage = [(UITextInputController *)self _textStorage];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__UITextInputController_baseWritingDirectionForPosition_inDirection___block_invoke;
  v9[3] = &unk_1E71267E8;
  v9[4] = self;
  v9[5] = &v10;
  [_textStorage coordinateReading:v9];

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

- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v8 = [WeakRetained characterRangeForTextRange:rangeCopy];
  v10 = v9;

  _textStorage = [(UITextInputController *)self _textStorage];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58__UITextInputController_setBaseWritingDirection_forRange___block_invoke;
  v20[3] = &__block_descriptor_56_e23_v16__0__NSTextStorage_8l;
  v20[4] = v8;
  v20[5] = v10;
  v20[6] = direction;
  [_textStorage coordinateEditing:v20];

  if ([(UITextInputController *)self _selectedRange]== v8 && v12 == v10)
  {
    typingAttributes = [(UITextInputController *)self typingAttributes];
    v14 = *off_1E70EC988;
    v15 = [typingAttributes objectForKey:*off_1E70EC988];
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

    [v19 setBaseWritingDirection:direction];
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

- (CGRect)firstRectForRange:(id)range
{
  v3 = [(UITextInputController *)self selectionRectsForRange:range];
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

- (CGRect)_caretRectForOffset:(unint64_t)offset
{
  v5 = objc_loadWeakRetained(&self->_textLayoutController);
  beginningOfDocument = [v5 beginningOfDocument];
  v7 = [(_UITextLayoutControllerBase *)v5 positionFromPosition:beginningOfDocument offset:offset];
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
  start = [(UITextRange *)self->_selectedTextRange start];
  [(UITextInputController *)self caretRectForPosition:start];
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

- (CGRect)caretRectForPosition:(id)position
{
  positionCopy = position;
  _textStorage = [(UITextInputController *)self _textStorage];
  editedRange = [_textStorage editedRange];
  v8 = v7;

  if (editedRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    attachment = [(UITextPlaceholder *)self->_textPlaceholder attachment];
    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    typingAttributes = [(UITextInputController *)self typingAttributes];
    v43 = 0;
    [WeakRetained insertionRectForPosition:positionCopy typingAttributes:typingAttributes placeholderAttachment:attachment textContainer:&v43];
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

    textView = [v20 textView];
    if ((*(&self->_tiFlags + 1) & 2) == 0 || (v22 = objc_loadWeakRetained(&self->_delegate), v23 = [v22 textInputShouldExtendCaretHeight:self], v22, v23))
    {
      v15 = v15 + -1.0;
      UIRoundToViewScale(textView);
      v24 = v25 + 1.0;
    }

    [v20 textContainerOrigin];
    v27 = v13 + v26;
    v29 = v15 + v28;
    [textView _currentScreenScale];
    v31 = UIPointRoundToScale(v27, v29, v30);
    v33 = v32;
    UICeilToViewScale(textView);
    v35 = v34;
    UICeilToViewScale(textView);
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
    v44.location = editedRange;
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

- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range
{
  y = point.y;
  x = point.x;
  rangeCopy = range;
  v8 = [(UITextInputController *)self _characterPositionForPoint:x, y];
  start = [rangeCopy start];
  v10 = [(UITextInputController *)self comparePosition:v8 toPosition:start];

  if (v10 == -1)
  {
    start2 = [rangeCopy start];
  }

  else
  {
    v11 = [rangeCopy end];
    v12 = [(UITextInputController *)self comparePosition:v11 toPosition:v8];

    if (v12 != -1)
    {
      goto LABEL_6;
    }

    start2 = [rangeCopy end];
  }

  v14 = start2;

  v8 = v14;
LABEL_6:

  return v8;
}

- (id)characterRangeAtPoint:(CGPoint)point
{
  v4 = [(UITextInputController *)self _characterPositionForPoint:point.x, point.y];
  tokenizer = [(UITextInputController *)self tokenizer];
  v6 = [tokenizer rangeEnclosingPosition:v4 withGranularity:0 inDirection:-1];

  return v6;
}

- (id)textStylingAtPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  selectedTextRange = self->_selectedTextRange;
  if (!selectedTextRange || !-[UITextRange isEmpty](selectedTextRange, "isEmpty") || (v8 = objc_loadWeakRetained(&self->_textLayoutController), -[UITextRange start](self->_selectedTextRange, "start"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 comparePosition:positionCopy toPosition:v9], v9, v8, v10))
  {
    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    endOfDocument = [(UITextInputController *)self endOfDocument];
    v13 = [WeakRetained comparePosition:positionCopy toPosition:endOfDocument] | direction;

    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_textLayoutController);
      typingAttributes = [v14 attributesAtPosition:positionCopy inDirection:direction];

      if (typingAttributes)
      {
        goto LABEL_6;
      }

LABEL_9:
      v16 = 0;
      goto LABEL_11;
    }
  }

  typingAttributes = [(UITextInputController *)self typingAttributes];
  if (!typingAttributes)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (dyld_program_sdk_at_least())
  {
    v16 = [typingAttributes mutableCopy];
  }

  else
  {
    v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    v17 = [typingAttributes objectForKey:*off_1E70EC918];
    [v16 setValue:v17 forKey:@"UITextInputTextFontKey"];

    v18 = [typingAttributes objectForKey:*off_1E70EC920];
    [v16 setValue:v18 forKey:@"UITextInputTextColorKey"];

    v19 = [typingAttributes objectForKey:*off_1E70EC8D0];
    [v16 setValue:v19 forKey:@"UITextInputTextBackgroundColorKey"];
  }

LABEL_11:

  return v16;
}

- (void)_undoManagerWillUndo:(id)undo
{
  [(UITextInputController *)self stopCoalescing];

  [(UITextInputController *)self unmarkText];
}

- (void)coalesceInTextView:(id)view actionName:(id)name affectedRanges:(id)ranges replacementRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  nameCopy = name;
  rangesCopy = ranges;
  textCopy = text;
  undoManager = [viewCopy undoManager];
  _textStorage = [viewCopy _textStorage];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_undoOperationForCoalescing), v19 = [undoManager _shouldCoalesceTypingForText:WeakRetained :_textStorage], WeakRetained, !v19) || -[UITextInputController shouldStartNewUndoGroup:textGranularity:operationType:](self, "shouldStartNewUndoGroup:textGranularity:operationType:", textCopy, 2, 2) || ((v20 = objc_msgSend(viewCopy, "selectedRange"), self->_markedTextRange.location != 0x7FFFFFFFFFFFFFFFLL) ? (v22 = 0) : (v22 = v21), v42 = v22, v43 = v20, v41 = objc_loadWeakRetained(&self->_undoOperationForCoalescing), objc_msgSend(rangesCopy, "firstObject"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "rangeValue"), v26 = objc_msgSend(v41, "coalesceAffectedRange:replacementRange:selectedRange:textStorage:", v24, v25, location, length, v43, v42, _textStorage), v23, v41, (v26 & 1) == 0))
  {
    [(UITextInputController *)self stopCoalescing];
    if (_os_feature_enabled_impl() && [rangesCopy count] >= 2)
    {
      v27 = -[_UITextUndoOperationTyping initWithAffectedRanges:inputController:replacementTextLength:]([_UITextUndoOperationTyping alloc], "initWithAffectedRanges:inputController:replacementTextLength:", rangesCopy, self, [textCopy length]);
    }

    else
    {
      firstObject = [rangesCopy firstObject];
      rangeValue = [firstObject rangeValue];
      v44 = undoManager;
      v30 = rangesCopy;
      v31 = _textStorage;
      v32 = nameCopy;
      v33 = textCopy;
      v34 = length;
      v36 = v35;

      v37 = [_UITextUndoOperationTyping alloc];
      v38 = v34;
      textCopy = v33;
      nameCopy = v32;
      _textStorage = v31;
      rangesCopy = v30;
      undoManager = v44;
      v27 = [(_UITextUndoOperationTyping *)v37 initWithAffectedRange:rangeValue inputController:v36 replacementRange:self, location, v38];
    }

    v39 = v27;
    _textStorage2 = [(UITextInputController *)self _textStorage];
    [undoManager registerUndoWithTarget:_textStorage2 selector:sel__UIUndoRedoTextOperation_ object:v39];

    [undoManager setActionName:nameCopy];
    objc_storeWeak(&self->_undoOperationForCoalescing, v39);
  }
}

- (BOOL)shouldStartNewUndoGroup:(id)group textGranularity:(int64_t)granularity operationType:(int)type
{
  groupCopy = group;
  v8 = groupCopy;
  if (type != 2)
  {
    goto LABEL_6;
  }

  if (granularity == 3)
  {
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
    [v8 rangeOfCharacterFromSet:newlineCharacterSet];
    LOBYTE(v9) = v11 != 0;
LABEL_11:

    goto LABEL_12;
  }

  if (granularity == 2)
  {
    newlineCharacterSet = +[UIKeyboardImpl activeInstance];
    if ([newlineCharacterSet nextInputWouldStartSentence])
    {
      v9 = [v8 isEqualToString:@" "] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    goto LABEL_11;
  }

  if (granularity != 1)
  {
LABEL_6:
    LOBYTE(v9) = 0;
    goto LABEL_12;
  }

  LOBYTE(v9) = [groupCopy isEqualToString:@" "];
LABEL_12:

  return v9;
}

- (void)registerUndoOperationForType:(int)type actionName:(id)name affectedRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v9 = *&type;
  v16[1] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E696B098];
  textCopy = text;
  nameCopy = name;
  v14 = [v11 valueWithRange:{location, length}];
  v16[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [(UITextInputController *)self registerUndoOperationForType:v9 actionName:nameCopy affectedRanges:v15 replacementText:textCopy];
}

- (void)registerUndoOperationForType:(int)type actionName:(id)name affectedRanges:(id)ranges replacementText:(id)text
{
  nameCopy = name;
  rangesCopy = ranges;
  textCopy = text;
  firstObject = [rangesCopy firstObject];
  rangeValue = [firstObject rangeValue];
  v16 = v15;

  if (+[UIDictationController isRunning](UIDictationController, "isRunning") && !+[UIDictationController canUndoOrRedo]|| [(UITextInputController *)self _undoRedoInProgress])
  {
    goto LABEL_19;
  }

  switch(type)
  {
    case 3:
      v18 = [textCopy length];
      [(UITextInputController *)self stopCoalescing];
      if (_os_feature_enabled_impl() && [rangesCopy count] >= 2)
      {
        v17 = -[_UITextUndoOperationReplace initWithAffectedRanges:inputController:replacementTextLength:]([_UITextUndoOperationReplace alloc], "initWithAffectedRanges:inputController:replacementTextLength:", rangesCopy, self, [textCopy length]);
      }

      else
      {
        v17 = [[_UITextUndoOperationReplace alloc] initWithAffectedRange:rangeValue inputController:v16 replacementRange:self, rangeValue, v18];
      }

      goto LABEL_17;
    case 2:
      -[UITextInputController coalesceInTextView:actionName:affectedRanges:replacementRange:replacementText:](self, "coalesceInTextView:actionName:affectedRanges:replacementRange:replacementText:", self, nameCopy, rangesCopy, rangeValue, [textCopy length], textCopy);
      goto LABEL_19;
    case 1:
      [(UITextInputController *)self stopCoalescing];
      if (_os_feature_enabled_impl() && [rangesCopy count] >= 2)
      {
        v17 = [[_UITextUndoOperationSetAttributes alloc] initWithAffectedRanges:rangesCopy inputController:self];
      }

      else
      {
        v20 = [_UITextUndoOperationSetAttributes alloc];
        selectedRange = [(UITextInputController *)self selectedRange];
        v17 = [(_UITextUndoOperationSetAttributes *)v20 initWithAffectedRange:selectedRange inputController:v22, self];
      }

LABEL_17:
      currentHandler = v17;
      undoManager = [(UITextInputController *)self undoManager];
      _textStorage = [(UITextInputController *)self _textStorage];
      [undoManager registerUndoWithTarget:_textStorage selector:sel__UIUndoRedoTextOperation_ object:currentHandler];

      undoManager2 = [(UITextInputController *)self undoManager];
      [undoManager2 setActionName:nameCopy];

      goto LABEL_18;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputController.m" lineNumber:3340 description:@"Unknown text undo operation type encountered"];
LABEL_18:

LABEL_19:
}

- (void)undoManagerDidFinishUndoRedo
{
  if ((*(&self->_tiFlags + 1) & 0x10) != 0)
  {
    delegate = [(UITextInputController *)self delegate];
    [delegate textInputDidFinishUndoRedoChanges:self];
  }

  if (self->_accumulatedSelectedRangeForCoalescedUndoRedo.location != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(UITextInputController *)self setSelectedRange:?];
  }
}

- (void)undoDidReplaceRange:(_NSRange)range withAttributedText:(id)text
{
  if ((*(&self->_tiFlags + 1) & 8) != 0)
  {
    length = range.length;
    location = range.location;
    textCopy = text;
    delegate = [(UITextInputController *)self delegate];
    [delegate textInput:self undoRedoDidApplyAttributedText:textCopy toCharacterRange:{location, length}];
  }

  [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:1, text];
}

- (void)_setUndoRedoInProgress:(BOOL)progress
{
  if (progress)
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

- (void)changeWillBeUndone:(id)undone
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
  selectedRange = [(UITextInputController *)self selectedRange];
  [(UITextInputController *)self registerUndoOperationForType:3 actionName:v4 affectedRange:selectedRange replacementText:v6, &stru_1EFB14550];

  [(UITextInputController *)self _insertText:&stru_1EFB14550 fromKeyboard:0];
}

- (void)insertEmojiImageTextAttachment:(id)attachment replacementRange:(id)range
{
  rangeCopy = range;
  attachmentCopy = attachment;
  if ([off_1E70ECAF8 prefersEmojiImageTextAttachment])
  {
    adaptiveImageGlyph = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:attachmentCopy];

    [(UITextInputController *)self replaceRange:rangeCopy withAttributedText:adaptiveImageGlyph];
  }

  else
  {
    adaptiveImageGlyph = [attachmentCopy adaptiveImageGlyph];

    [(UITextInputController *)self insertAdaptiveImageGlyph:adaptiveImageGlyph replacementRange:rangeCopy];
  }
}

- (void)setSupportsAdaptiveImageGlyph:(BOOL)glyph
{
  if (glyph)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x2000000;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xFDFFFFFF | v3);
}

- (void)insertAdaptiveImageGlyph:(id)glyph replacementRange:(id)range
{
  glyphCopy = glyph;
  rangeCopy = range;
  if ([(UITextInputController *)self supportsAdaptiveImageGlyph])
  {
    if ([off_1E70ECAF8 prefersTextAttachment])
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([glyphCopy nominalTextAttachment], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v11 = 0;
LABEL_10:

        goto LABEL_11;
      }

      typingAttributes2 = v7;
      v9 = MEMORY[0x1E696AAB0];
      typingAttributes = [(UITextInputController *)self typingAttributes];
      v11 = [v9 attributedStringWithAttachment:typingAttributes2 attributes:typingAttributes];
    }

    else
    {
      v12 = MEMORY[0x1E696AAB0];
      typingAttributes2 = [(UITextInputController *)self typingAttributes];
      v11 = [v12 attributedStringWithAdaptiveImageGlyph:glyphCopy attributes:typingAttributes2];
    }

    if (v11)
    {
      [(UITextInputController *)self replaceRange:rangeCopy withAttributedText:v11];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)setWritingToolsStreamingReplacements:(BOOL)replacements
{
  replacementsCopy = replacements;
  tiFlags = self->_tiFlags;
  if ((((*&tiFlags & 0x4000000) == 0) ^ replacements))
  {
    goto LABEL_9;
  }

  if (replacements)
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
    undoManager = [(UITextInputController *)self undoManager];
    [undoManager beginUndoGrouping];
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

    undoManager = [(UITextInputController *)self undoManager];
    [undoManager endUndoGrouping];
  }

  tiFlags = self->_tiFlags;
LABEL_9:
  if (replacementsCopy)
  {
    v7 = 0x4000000;
  }

  else
  {
    v7 = 0;
  }

  self->_tiFlags = (*&tiFlags & 0xFBFFFFFF | v7);
}

- (BOOL)_isSystemAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_insertDictationResult:(id)result withCorrectionIdentifier:(id)identifier replacingRange:(_NSRange)range resultLength:(unint64_t *)length
{
  length = range.length;
  location = range.location;
  identifierCopy = identifier;
  resultCopy = result;
  [(UITextInputController *)self setSelectedRange:location, length];
  *&self->_tiFlags |= 0x800000u;
  v13 = [UIDictationUtilities attributedStringForDictationResult:resultCopy andCorrectionIdentifier:identifierCopy capturePrefixAndPostfixWordCount:5];

  v18 = [v13 mutableCopy];
  typingAttributes = [(UITextInputController *)self typingAttributes];

  if (typingAttributes)
  {
    typingAttributes2 = [(UITextInputController *)self typingAttributes];
    v16 = [typingAttributes2 mutableCopy];

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
  if (length)
  {
    *length = [v18 length];
  }
}

- (void)insertDictationResult:(id)result withCorrectionIdentifier:(id)identifier
{
  resultCopy = result;
  identifierCopy = identifier;
  if ((*(&self->_tiFlags + 2) & 4) == 0)
  {
    bestText = [resultCopy bestText];
    _firstTextView = [(UITextInputController *)self _firstTextView];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_firstTextView), +[UIKeyboardImpl sharedInstance](UIKeyboardImpl, "sharedInstance"), v12 = objc_claimAutoreleasedReturnValue(), [v12 delegate], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(WeakRetained, "keyboardInput:shouldInsertText:isMarkedText:", v13, bestText, 0), v13, v12, WeakRetained, v14))
    {
      selectedRange = [(UITextInputController *)self selectedRange];
      v17 = v16;
      v22 = 0;
      *&self->_tiFlags |= 0x40000u;
      [(UITextInputController *)self _insertDictationResult:resultCopy withCorrectionIdentifier:identifierCopy replacingRange:selectedRange resultLength:v16, &v22];
      *&self->_tiFlags &= ~0x40000u;
      [(UITextInputController *)self stopCoalescing];
      v18 = _UIKitBundle();
      v19 = [v18 localizedStringForKey:@"Dictation" value:@"Dictation" table:@"Localizable"];
      v20 = [bestText length];
      if (v20 <= v22)
      {
        [(UITextInputController *)self registerUndoOperationForType:2 actionName:v19 affectedRange:selectedRange replacementText:v17, bestText];
      }

      else
      {
        v21 = [bestText substringToIndex:?];
        [(UITextInputController *)self registerUndoOperationForType:2 actionName:v19 affectedRange:selectedRange replacementText:v17, v21];
      }

      [(UITextInputController *)self stopCoalescing];
      [(UITextInputController *)self setSelectedRange:v22 + selectedRange, 0];
      [(UITextInputController *)self _setSelectedRangeToEndIfNecessary];
    }
  }
}

- (id)insertTextPlaceholderWithSize:(CGSize)size embeddingType:(int64_t)type
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
    height = size.height;
    width = size.width;
    *buf = 0;
    v50 = buf;
    v51 = 0x2020000000;
    v52 = 0;
    selectedTextRange = [(UITextInputController *)self selectedTextRange];
    start = [selectedTextRange start];
    v13 = start;
    if (start)
    {
      endOfDocument = start;
    }

    else
    {
      endOfDocument = [(UITextInputController *)self endOfDocument];
    }

    v15 = endOfDocument;

    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    typingAttributes = [(UITextInputController *)self typingAttributes];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __69__UITextInputController_insertTextPlaceholderWithSize_embeddingType___block_invoke;
    v48[3] = &unk_1E7126618;
    v48[4] = buf;
    [WeakRetained requestTextGeometryAtPosition:v15 typingAttributes:typingAttributes resultBlock:v48];

    v18 = objc_alloc_init(UITextPlaceholder);
    v19 = *(v50 + 3);
    attachment = [(UITextPlaceholder *)v18 attachment];
    [attachment setBounds:{0.0, -(height - v19), width, height}];

    typingAttributes2 = [(UITextInputController *)self typingAttributes];
    attachment2 = [(UITextPlaceholder *)v18 attachment];
    [attachment2 setTypingAttributesBeforeInsertion:typingAttributes2];

    _selectedRange = [(UITextInputController *)self _selectedRange];
    attachment3 = [(UITextPlaceholder *)v18 attachment];
    [attachment3 setAttachmentRange:{_selectedRange, 1}];

    attachment4 = [(UITextPlaceholder *)v18 attachment];
    [attachment4 setImage:0];

    attachment5 = [(UITextPlaceholder *)v18 attachment];
    [attachment5 setEmbeddingType:type];

    selectedTextRange2 = [(UITextInputController *)self selectedTextRange];
    start2 = [selectedTextRange2 start];
    [(UITextInputController *)self caretRectForPosition:start2];
    [(UITextPlaceholder *)v18 setCaretRectBeforeInsertion:?];

    objc_storeStrong(p_textPlaceholder, v18);
    tiFlags = self->_tiFlags;
    self->_tiFlags = (*&tiFlags | 0x40000);
    [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
    _selectedRange2 = [(UITextInputController *)self _selectedRange];
    v32 = v31;
    _textStorage = [(UITextInputController *)self _textStorage];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __69__UITextInputController_insertTextPlaceholderWithSize_embeddingType___block_invoke_2;
    v43[3] = &unk_1E7126858;
    v34 = v18;
    v44 = v34;
    selfCopy = self;
    v46 = _selectedRange2;
    v47 = v32;
    [_textStorage coordinateEditing:v43];

    [(UITextInputController *)self setSelectedRange:_selectedRange2 + 1, 0];
    [(UITextInputController *)self _setSelectedRangeToEndIfNecessary];
    interactionAssistant = [(UITextInputController *)self interactionAssistant];
    [interactionAssistant selectionChanged];

    [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0];
    v36 = objc_loadWeakRetained(&self->_layoutManager);
    LOBYTE(_selectedRange2) = objc_opt_respondsToSelector();

    if (_selectedRange2)
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
  _textStorage = [(UITextInputController *)self _textStorage];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__UITextInputController__layoutManagerDidCompleteLayout__block_invoke;
  v4[3] = &unk_1E71264B8;
  v4[4] = self;
  [_textStorage coordinateReading:v4];

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
    attachment = [(UITextPlaceholder *)textPlaceholder attachment];
    attachmentRange = [attachment attachmentRange];
    v7 = [(UITextInputController *)self _rectsForRange:attachmentRange, v6];

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
    attachment2 = [(UITextPlaceholder *)self->_textPlaceholder attachment];
    [attachment2 bounds];
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
      attachment3 = [(UITextPlaceholder *)self->_textPlaceholder attachment];
      attachmentRange2 = [attachment3 attachmentRange];
      v27 = v26;

      WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
      v29 = [WeakRetained textRangeForCharacterRange:{attachmentRange2, v27}];

      start = [v29 start];
      v31 = [(UITextInputController *)self _resolveNaturalDirection:[(UITextInputController *)self baseWritingDirectionForPosition:start inDirection:0]];

      interactionAssistant = [(UITextInputController *)self interactionAssistant];
      view = [interactionAssistant view];
      textInputView = [view textInputView];

      [(UITextPlaceholder *)self->_textPlaceholder caretRectBeforeInsertion];
      v35 = [_UIMutableTextSelectionRect selectionRectWithRect:textInputView fromView:v40];
      [v35 setWritingDirection:v31];
      v46 = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      [(UITextPlaceholder *)self->_textPlaceholder setRects:v36];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v38 = self->_textPlaceholder;
    v44 = @"UITextInputPlaceholderChangedPlaceholderKey";
    v45 = v38;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    [defaultCenter postNotificationName:@"UITextInputPlaceholderChangedNotification" object:0 userInfo:v39];
  }
}

- (id)insertTextPlaceholderWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = size.height > 0.0;
  if (size.height <= 0.0)
  {
    selectedTextRange = [(UITextInputController *)self selectedTextRange];
    start = [selectedTextRange start];
    [(UITextInputController *)self caretRectForPosition:start];
    v10 = v9 + -2.0;

    height = fmax(v10, 1.0);
  }

  height = [(UITextInputController *)self insertTextPlaceholderWithSize:v6 embeddingType:width, height];
  v12 = height;
  if (width <= 0.0)
  {
    attachment = [height attachment];
    [attachment setImage:0];
  }

  else
  {
    _UIGraphicsBeginImageContextWithOptions(0, 0, width, height, 0.0);
    v13 = +[UIColor clearColor];
    [v13 setFill];

    attachment2 = [v12 attachment];
    [attachment2 bounds];
    UIRectFillUsingOperation(1, v15, v16, v17, v18);

    v19 = _UIGraphicsGetImageFromCurrentImageContext(0);
    attachment3 = [v12 attachment];
    [attachment3 setImage:v19];

    UIGraphicsEndImageContext();
  }

  return v12;
}

- (id)insertDictationResultPlaceholder
{
  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  start = [selectedTextRange start];
  [(UITextInputController *)self caretRectForPosition:start];
  v6 = v5 + -1.0;

  [UIDictationLandingView widthForLineHeight:v6];
  ++self->_dontRemoveAllActionsCount;
  result = [(UITextInputController *)self insertTextPlaceholderWithSize:0 embeddingType:?];
  --self->_dontRemoveAllActionsCount;
  return result;
}

- (CGRect)frameForTextPlaceholder:(id)placeholder
{
  v35 = *MEMORY[0x1E69E9840];
  attachment = [placeholder attachment];
  attachmentRange = [attachment attachmentRange];
  v7 = [(UITextInputController *)self _rectsForRange:attachmentRange, v6];

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
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
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

- (void)removeTextPlaceholder:(id)placeholder notifyInputDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  placeholderCopy = placeholder;
  if (self->_textPlaceholder == placeholderCopy)
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
    _selectedRange = [(UITextInputController *)self _selectedRange];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3010000000;
    attachmentRange = 0;
    v34 = 0;
    v32 = "";
    attachment = [(UITextPlaceholder *)placeholderCopy attachment];
    attachmentRange = [attachment attachmentRange];
    v34 = v15;

    _textStorage = [(UITextInputController *)self _textStorage];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __67__UITextInputController_removeTextPlaceholder_notifyInputDelegate___block_invoke;
    v26[3] = &unk_1E71267E8;
    v28 = &v29;
    v17 = placeholderCopy;
    v27 = v17;
    [_textStorage coordinateReading:v26];

    if (v30[4] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (delegateCopy)
      {
        [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:1];
      }

      _textStorage2 = [(UITextInputController *)self _textStorage];
      v19 = [_textStorage2 length];

      v20 = v30[4];
      if (v20 < v19 && v30[5] + v20 <= v19)
      {
        _textStorage3 = [(UITextInputController *)self _textStorage];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __67__UITextInputController_removeTextPlaceholder_notifyInputDelegate___block_invoke_3;
        v25[3] = &unk_1E71268D0;
        v25[4] = &v29;
        [_textStorage3 coordinateEditing:v25];

        v21 = v30[4];
        if (_selectedRange > v21)
        {
          v21 = _selectedRange - v30[5];
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

      attachment2 = [(UITextPlaceholder *)v17 attachment];
      typingAttributesBeforeInsertion = [attachment2 typingAttributesBeforeInsertion];
      [(UITextInputController *)self setTypingAttributes:typingAttributesBeforeInsertion];

      if (delegateCopy)
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

- (void)removeDictationResultPlaceholder:(id)placeholder willInsertResult:(BOOL)result
{
  ++self->_dontRemoveAllActionsCount;
  tiFlags = self->_tiFlags;
  self->_tiFlags = (*&tiFlags | 0x40000);
  [(UITextInputController *)self removeTextPlaceholder:placeholder notifyInputDelegate:!result];
  self->_tiFlags = (*&self->_tiFlags & 0xFFFBFFFF | (((*&tiFlags >> 18) & 1) << 18));
  --self->_dontRemoveAllActionsCount;
}

- (id)rangeWithTextAlternatives:(id *)alternatives atPosition:(id)position
{
  positionCopy = position;
  v7 = positionCopy;
  v8 = 0;
  if (alternatives && positionCopy)
  {
    _textStorage = [(UITextInputController *)self _textStorage];
    v10 = [_textStorage length];

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
        _textStorage2 = [(UITextInputController *)self _textStorage];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __62__UITextInputController_rangeWithTextAlternatives_atPosition___block_invoke;
        v15[3] = &unk_1E71268F8;
        v15[6] = &v16;
        v15[7] = &v22;
        v15[4] = self;
        v15[5] = v28;
        [_textStorage2 coordinateReading:v15];

        *alternatives = v17[5];
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

- (void)addTextAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  _selectedRange = [(UITextInputController *)self _selectedRange];
  primaryString = [alternativesCopy primaryString];
  v7 = [primaryString length];

  if (_selectedRange >= v7)
  {
    _selectedRange2 = [(UITextInputController *)self _selectedRange];
    primaryString2 = [alternativesCopy primaryString];
    v10 = _selectedRange2 - [primaryString2 length];
    primaryString3 = [alternativesCopy primaryString];
    v12 = [primaryString3 length];

    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v14 = [WeakRetained textRangeForCharacterRange:{v10, v12}];

    v15 = [(UITextInputController *)self textInRange:v14];
    primaryString4 = [alternativesCopy primaryString];
    v17 = [v15 isEqualToString:primaryString4];

    if (v17)
    {
      _textStorage = [(UITextInputController *)self _textStorage];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __45__UITextInputController_addTextAlternatives___block_invoke;
      v19[3] = &unk_1E71265A0;
      v23 = v10;
      v24 = v12;
      v20 = alternativesCopy;
      selfCopy = self;
      v22 = v14;
      [_textStorage coordinateEditing:v19];
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
    _textStorage = [(UITextInputController *)self _textStorage];
    v4 = [_textStorage length];

    if (v4)
    {
      _textStorage2 = [(UITextInputController *)self _textStorage];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __48__UITextInputController_removeEmojiAlternatives__block_invoke;
      v6[3] = &unk_1E7126368;
      v6[4] = self;
      [_textStorage2 coordinateEditing:v6];
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

- (id)_prefixTokensForDictationAttributedText:(id)text lastDictationAttributedTextRange:(_NSRange)range currentDictationAttributedTextRange:(_NSRange)textRange
{
  location = textRange.location;
  length = range.length;
  v7 = range.location;
  textCopy = text;
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
  [textCopy enumerateSubstringsInRange:v9 options:v10 usingBlock:{259, v15}];
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

- (id)_postfixTokensForDictationAttributedText:(id)text currentDictationAttributedTextRange:(_NSRange)range nextDictationAttributedTextRange:(_NSRange)textRange
{
  location = textRange.location;
  length = range.length;
  v7 = range.location;
  textCopy = text;
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
  [textCopy enumerateSubstringsInRange:v9 options:v10 usingBlock:{3, v15}];
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
  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  start = [selectedTextRange start];
  v5 = [(UITextInputController *)self _rangeOfEnclosingWord:start];

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
  alternativeStrings = [v12[5] alternativeStrings];
  _Block_object_dispose(&v11, 8);

  return alternativeStrings;
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

- (void)signalDictationInputEvent:(id)event insertedText:(id)text
{
  textCopy = text;
  if (+[UIDictationController isRunning])
  {
    _selectedText = [(UITextInputController *)self _selectedText];
    v6 = [_selectedText length];

    v7 = +[UIDictationController sharedInstance];
    dictationTipController = [v7 dictationTipController];
    v9 = dictationTipController;
    if (v6)
    {
      _selectedText2 = [(UITextInputController *)self _selectedText];
      [v9 signalDictationReplacementTip:_selectedText2];
    }

    else
    {
      [dictationTipController signalDictationInsertionTip:textCopy];
    }

    v11 = +[UIDictationController sharedInstance];
    dictationTipController2 = [v11 dictationTipController];
    [dictationTipController2 recordDictationTipReplacementText:textCopy];
  }
}

- (void)signalDictationDeletionTip
{
  v25 = [MEMORY[0x1E69D9590] documentStateOfDocumentWithParagraph:self];
  selectedText = [v25 selectedText];

  if (selectedText)
  {
    selectedText2 = [v25 selectedText];
  }

  else
  {
    contextBeforeInput = [v25 contextBeforeInput];
    _lastGrapheme = [contextBeforeInput _lastGrapheme];

    contextBeforeInput2 = [v25 contextBeforeInput];
    contextBeforeInput3 = [v25 contextBeforeInput];
    selectedText2 = [contextBeforeInput2 substringFromIndex:{objc_msgSend(contextBeforeInput3, "length") - objc_msgSend(_lastGrapheme, "length")}];
  }

  v9 = +[UIDictationController activeInstance];
  _selectedRange = [(UITextInputController *)self _selectedRange];
  [v9 markDictationTipDeletionEvent:selectedText2 deletedTextRange:{_selectedRange, v11}];

  v12 = +[UIDictationController sharedInstance];
  if ([v12 consecutiveKeyboardDeleteEventCount] > 4)
  {
    v14 = 0;
  }

  else
  {
    _selectedText = [(UITextInputController *)self _selectedText];
    v14 = [_selectedText length] == 0;
  }

  if (+[UIDictationController isRunning]&& !v14)
  {
    _selectedText2 = [(UITextInputController *)self _selectedText];
    v16 = [_selectedText2 length];

    if (v16)
    {
      _selectedText3 = [(UITextInputController *)self _selectedText];
      v18 = [_selectedText3 length];
      string = [v25 string];
      v20 = [string length];

      v21 = +[UIDictationController sharedInstance];
      dictationTipController = [v21 dictationTipController];
      dictationTipController2 = dictationTipController;
      if (v18 == v20)
      {
        [dictationTipController signalDictationClearAllTip];
      }

      else
      {
        _selectedText4 = [(UITextInputController *)self _selectedText];
        [dictationTipController2 signalDictationDeletionTip:_selectedText4];
      }
    }

    else
    {
      v21 = +[UIDictationController sharedInstance];
      dictationTipController2 = [v21 dictationTipController];
      [dictationTipController2 signalDictationDeletionTip:selectedText2];
    }
  }
}

- (void)signalDictationSelectionTip:(id)tip
{
  tipCopy = tip;
  if (+[UIDictationController isRunning])
  {
    start = [tipCopy start];
    v5 = [tipCopy end];
    v6 = [(UITextInputController *)self offsetFromPosition:start toPosition:v5];

    if (v6 >= 1)
    {
      v7 = +[UIDictationController sharedInstance];
      dictationTipController = [v7 dictationTipController];
      v9 = [(UITextInputController *)self textInRange:tipCopy];
      [dictationTipController signalDictationSelectionTip:v9];
    }
  }
}

- (BOOL)_canHandleResponderAction:(SEL)action
{
  v4 = 1;
  if (sel_cut_ != action && sel_copy_ != action && sel_paste_ != action && sel_pasteAndMatchStyle_ != action && sel_alignLeft_ != action && sel_alignCenter_ != action && sel_alignJustified_ != action && sel_alignRight_ != action && sel_promptForReplace_ != action && sel__promptForReplace_ != action && sel__transliterateChinese_ != action && sel_select_ != action && sel_selectAll_ != action && sel_makeTextWritingDirectionNatural_ != action && sel_makeTextWritingDirectionRightToLeft_ != action && sel_makeTextWritingDirectionLeftToRight_ != action && sel_replace_ != action && sel__insertDrawing_ != action && sel_captureTextFromCamera_ != action && sel_toggleBoldface_ != action && sel_toggleItalics_ != action && sel_toggleUnderline_ != action && sel_increaseSize_ != action && sel_decreaseSize_ != action)
  {
    v4 = sel_showWritingTools_ == action;
  }

  _firstTextView = [(UITextInputController *)self _firstTextView];
  traitCollection = [_firstTextView traitCollection];

  v7 = [traitCollection userInterfaceIdiom] != 6 || objc_msgSend(traitCollection, "_presentationSemanticContext") != 3;
  v11 = sel__define_ == action || sel__translate_ == action || sel__addShortcut_ == action || sel__share_ == action;
  v12 = v11 && v7;

  return v4 || v12;
}

- (BOOL)_shouldHandleResponderAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  hasText = [(UITextInputController *)self hasText];
  if (sel_paste_ == action || sel_pasteAndMatchStyle_ == action)
  {
    isEditing = [(UITextInputController *)self isEditing];
    *(v55 + 24) = isEditing;
    if ([(UITextInputController *)self allowsEditingTextAttributes])
    {
LABEL_54:
      LOBYTE(_containsCJScripts) = *(v55 + 24);
      goto LABEL_55;
    }

    v10 = v55;
    if (*(v55 + 24) != 1)
    {
LABEL_51:
      *(v10 + 24) = 0;
      goto LABEL_54;
    }

    _selectedText2 = +[UIPasteboard generalPasteboard];
    hasStrings = [_selectedText2 hasStrings];
    *(v55 + 24) = hasStrings;
LABEL_9:

    goto LABEL_54;
  }

  if (sel_copy_ == action)
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

  if (sel_cut_ == action)
  {
    if (![(UITextInputController *)self isEditing]|| ([(UITextInputController *)self isSecureTextEntry]& 1) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_52;
  }

  if (sel_promptForReplace_ == action || sel__promptForReplace_ == action || sel__transliterateChinese_ == action)
  {
    if ([(UITextInputController *)self isEditing])
    {
      if (([(UITextInputController *)self isSecureTextEntry]& 1) == 0)
      {
        [(UITextInputController *)self selectedRange];
        if (v17)
        {
          _selectedAttributedText = [(UITextInputController *)self _selectedAttributedText];
          v19 = [UIDictationMultilingualUtilities hasMultilingualAttributesForAttributedString:_selectedAttributedText];

          if (v19)
          {
            LOBYTE(_containsCJScripts) = 1;
          }

          else
          {
            _selectedText = [(UITextInputController *)self _selectedText];
            v27 = [(UITextInputController *)self _shouldPerformUICalloutBarButtonReplaceAction:action forText:_selectedText checkAutocorrection:1];
            LOBYTE(_containsCJScripts) = v27;
            if (v27 && sel__transliterateChinese_ != action)
            {
              interactionAssistant = [(UITextInputController *)self interactionAssistant];
              LOBYTE(_containsCJScripts) = [interactionAssistant hasReplacements];
            }
          }

          goto LABEL_55;
        }
      }
    }

    goto LABEL_93;
  }

  v13 = hasText;
  if (sel_select_ == action)
  {
    if (![(UITextInputController *)self isEditing]|| [(UITextInputController *)self isSecureTextEntry]& 1 | !v13)
    {
LABEL_50:
      v10 = v55;
      goto LABEL_51;
    }

LABEL_62:
    _selectedText2 = [(UITextInputController *)self _selectedText];
    v25 = [_selectedText2 length];
    *(v55 + 24) = v25 == 0;
    goto LABEL_9;
  }

  if (sel_selectAll_ == action)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sender = [senderCopy sender];
      v23 = sender == 0;
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

  if (sel_makeTextWritingDirectionRightToLeft_ == action || sel_makeTextWritingDirectionLeftToRight_ == action || sel_makeTextWritingDirectionNatural_ == action)
  {
    if ([(UITextInputController *)self allowsEditingTextAttributes])
    {
      _textStorage = [(UITextInputController *)self _textStorage];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __65__UITextInputController__shouldHandleResponderAction_withSender___block_invoke;
      v53[3] = &unk_1E71269E8;
      v53[4] = self;
      v53[5] = &v54;
      v53[6] = action;
      [_textStorage coordinateReading:v53];
    }

    goto LABEL_54;
  }

  if (sel_replace_ == action)
  {
    if ([(UITextInputController *)self isEditing])
    {
      LOBYTE(v16) = ([(UITextInputController *)self isSecureTextEntry]^ 1) & v13;
      goto LABEL_53;
    }

    goto LABEL_42;
  }

  if (sel__share_ == action)
  {
    if (([(UITextInputController *)self isSecureTextEntry]& 1) == 0)
    {
      if (qword_1ED4A2340 != -1)
      {
        dispatch_once(&qword_1ED4A2340, &__block_literal_global_712);
      }

      _selectedText3 = [(UITextInputController *)self _selectedText];
      v30 = [_selectedText3 stringByTrimmingCharactersInSet:qword_1ED4A2338];

      if ([v30 length])
      {
        _firstTextView = [(UITextInputController *)self _firstTextView];
        v32 = [_firstTextView _canShowTextServiceForType:8];
        *(v55 + 24) = v32;

        goto LABEL_54;
      }
    }

    goto LABEL_93;
  }

  if (sel__define_ == action)
  {
    if (([(UITextInputController *)self isSecureTextEntry]& 1) != 0)
    {
      goto LABEL_93;
    }

    _firstTextView2 = [(UITextInputController *)self _firstTextView];
    _containsCJScripts = [_firstTextView2 _canShowTextServiceForType:2];

    if (!_containsCJScripts)
    {
      goto LABEL_55;
    }

LABEL_79:
    _selectedText4 = [(UITextInputController *)self _selectedText];
    LOBYTE(_containsCJScripts) = [_selectedText4 length] != 0;
    goto LABEL_80;
  }

  if (sel__translate_ == action)
  {
    if (([(UITextInputController *)self isSecureTextEntry]& 1) != 0)
    {
      goto LABEL_93;
    }

    _firstTextView3 = [(UITextInputController *)self _firstTextView];
    _containsCJScripts = [_firstTextView3 _canShowTextServiceForType:32];

    if (!_containsCJScripts)
    {
      goto LABEL_55;
    }

    goto LABEL_79;
  }

  if (sel__addShortcut_ == action)
  {
    v35 = [_UITextServiceSession textServiceSessionForType:4];
    isDisplaying = [v35 isDisplaying];

    if ((isDisplaying & 1) == 0 && ([(UITextInputController *)self isSecureTextEntry]& 1) == 0)
    {
      [(UITextInputController *)self selectedRange];
      if (v37)
      {
        _firstTextView4 = [(UITextInputController *)self _firstTextView];
        _containsCJScripts = [_firstTextView4 _canShowTextServiceForType:4];

        if (!_containsCJScripts)
        {
          goto LABEL_55;
        }

        if (TIEnabledInputModesAllowOneToManyShortcuts())
        {
          _selectedText5 = [(UITextInputController *)self _selectedText];
          _containsCJScripts = [_selectedText5 _containsCJScripts];

          if (!_containsCJScripts)
          {
            goto LABEL_55;
          }

          _firstTextView5 = [(UITextInputController *)self _firstTextView];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            _firstTextView6 = [(UITextInputController *)self _firstTextView];
            _inPopover = [_firstTextView6 _inPopover];

            if (_inPopover)
            {
              goto LABEL_93;
            }
          }

          else
          {
          }

          v46 = +[UIDevice currentDevice];
          userInterfaceIdiom = [v46 userInterfaceIdiom];

          if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 || (-[UITextInputController _firstTextView](self, "_firstTextView"), v48 = objc_claimAutoreleasedReturnValue(), [v48 window], v49 = objc_claimAutoreleasedReturnValue(), -[UITextInputController _firstTextView](self, "_firstTextView"), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v50, "keyboardSceneDelegate"), v51 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v51, "containerWindow"), v52 = objc_claimAutoreleasedReturnValue(), v52, v51, v50, v49, v48, v49 != v52))
          {
            *(v55 + 24) = 1;
            goto LABEL_54;
          }
        }
      }
    }

LABEL_93:
    LOBYTE(_containsCJScripts) = 0;
    goto LABEL_55;
  }

  if (sel_toggleBoldface_ == action || sel_toggleItalics_ == action || sel_toggleUnderline_ == action || sel_alignLeft_ == action || sel_alignRight_ == action || sel_alignCenter_ == action || sel_alignJustified_ == action || sel_increaseSize_ == action || sel_decreaseSize_ == action)
  {
    if ([(UITextInputController *)self isEditing])
    {
      LOBYTE(_containsCJScripts) = [(UITextInputController *)self allowsEditingTextAttributes];
      goto LABEL_55;
    }

    goto LABEL_93;
  }

  if (sel__insertDrawing_ == action)
  {
    if ([(UITextInputController *)self isEditing])
    {
      _firstTextView7 = [(UITextInputController *)self _firstTextView];
      if (objc_opt_respondsToSelector())
      {
        _firstTextView8 = [(UITextInputController *)self _firstTextView];
        LOBYTE(_containsCJScripts) = [_firstTextView8 _canInsertDrawing];
      }

      else
      {
        LOBYTE(_containsCJScripts) = 0;
      }

      goto LABEL_55;
    }

    goto LABEL_93;
  }

  if (sel_captureTextFromCamera_ != action)
  {
    if (sel_showWritingTools_ == action)
    {
      _selectedText4 = [(UITextInputController *)self _firstTextView];
      LOBYTE(_containsCJScripts) = [_selectedText4 _shouldDisplayWritingToolsCalloutBarItem];
LABEL_80:

      goto LABEL_55;
    }

    goto LABEL_50;
  }

  if (+[UIKeyboardCameraSession isEnabled]&& [(UITextInputController *)self isEditable])
  {
    [(UITextInputController *)self selectedRange];
    LOBYTE(_containsCJScripts) = v45 == 0;
  }

  else
  {
    LOBYTE(_containsCJScripts) = 0;
  }

  if (+[UIKeyboard isModelessActive])
  {
    _selectedText4 = +[UIDictationController activeInstance];
    LOBYTE(_containsCJScripts) = _containsCJScripts & ([_selectedText4 shouldSuppressSoftwareKeyboard] ^ 1);
    goto LABEL_80;
  }

LABEL_55:
  _Block_object_dispose(&v54, 8);

  return _containsCJScripts & 1;
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
  _textStorage = [(UITextInputController *)self _textStorage];
  selectedRange = [(UITextInputController *)self selectedRange];
  v6 = [_textStorage attributedSubstringFromRange:{selectedRange, v5}];

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

- (void)replace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputController.m" lineNumber:4493 description:0];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x3010000000;
  _selectedRange = 0;
  v39 = 0;
  v37 = "";
  _selectedRange = [(UITextInputController *)self _selectedRange];
  v39 = v6;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__214;
  v32 = __Block_byref_object_dispose__214;
  v33 = 0;
  _textStorage = [(UITextInputController *)self _textStorage];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __33__UITextInputController_replace___block_invoke;
  v24[3] = &unk_1E7126A10;
  v26 = &v34;
  v8 = replaceCopy;
  v25 = v8;
  v27 = &v28;
  [_textStorage coordinateReading:v24];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    replacementText = [v9 replacementText];
  }

  else
  {
    replacementText = 0;
  }

  textCheckingController = self->_textCheckingController;
  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  [(UITextCheckingController *)textCheckingController willReplaceTextInRange:selectedTextRange withText:replacementText];

  v13 = +[UIKeyboardImpl sharedInstance];
  [v13 replaceText:v8];

  if (v29[5])
  {
    if (replacementText)
    {
      v14 = v35[4];
      v15 = [replacementText length];
      _textStorage2 = [(UITextInputController *)self _textStorage];
      v17 = [_textStorage2 length];

      if (v15 + v14 <= v17)
      {
        _textStorage3 = [(UITextInputController *)self _textStorage];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __33__UITextInputController_replace___block_invoke_3;
        v20[3] = &unk_1E7126A38;
        v22 = &v28;
        v23 = &v34;
        v21 = replacementText;
        [_textStorage3 coordinateEditing:v20];
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

- (int64_t)writingDirectionAtPosition:(id)position
{
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v6 = [WeakRetained baseWritingDirectionAtPosition:positionCopy];

  return v6;
}

- (void)makeTextWritingDirectionNatural:(id)natural
{
  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  [(UITextInputController *)self setBaseWritingDirection:-1 forRange:selectedTextRange];
}

- (void)makeTextWritingDirectionRightToLeft:(id)left
{
  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  [(UITextInputController *)self setBaseWritingDirection:1 forRange:selectedTextRange];
}

- (void)makeTextWritingDirectionLeftToRight:(id)right
{
  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  [(UITextInputController *)self setBaseWritingDirection:0 forRange:selectedTextRange];
}

- (void)removeTextStylingFromString:(id)string
{
  stringCopy = string;
  if (![(UITextInputController *)self allowsEditingTextAttributes])
  {
    v4 = [stringCopy length];
    [stringCopy removeAttribute:*off_1E70EC918 range:{0, v4}];
    [stringCopy removeAttribute:*off_1E70EC988 range:{0, v4}];
    [stringCopy removeAttribute:*off_1E70EC920 range:{0, v4}];
    [stringCopy removeAttribute:*off_1E70EC8D0 range:{0, v4}];
    [stringCopy removeAttribute:*off_1E70EC8D8 range:{0, v4}];
    [stringCopy removeAttribute:*off_1E70EC9B0 range:{0, v4}];
  }
}

+ (BOOL)_shouldUseStandardTextScaling:(id)scaling
{
  scalingCopy = scaling;
  if (objc_opt_respondsToSelector())
  {
    usesStandardTextScaling = [scalingCopy usesStandardTextScaling];
  }

  else
  {
    usesStandardTextScaling = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    traitCollection = [scalingCopy traitCollection];
    v6 = [traitCollection userInterfaceIdiom] == 5;
  }

  else
  {
    v6 = 0;
  }

  return (usesStandardTextScaling | v6) & 1;
}

- (void)_copySelectionToClipboard
{
  v3 = +[UIPasteboard generalPasteboard];
  [(UITextInputController *)self _copySelectionToClipboard:v3];
}

- (void)_copySelectionToClipboard:(id)clipboard
{
  clipboardCopy = clipboard;
  _firstTextView = [(UITextInputController *)self _firstTextView];
  _dataOwnerForCopy = [_firstTextView _dataOwnerForCopy];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__UITextInputController__copySelectionToClipboard___block_invoke;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = clipboardCopy;
  v7 = clipboardCopy;
  [UIPasteboard _performAsDataOwner:_dataOwnerForCopy block:v8];
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

- (id)_itemProviderForCopyingRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v7 = dyld_program_sdk_at_least();
  if (([(UITextInputController *)self isSecureTextEntry]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7 ^ 1;
    _firstTextView = [(UITextInputController *)self _firstTextView];
    v11 = [UITextInputController _shouldUseStandardTextScaling:_firstTextView];

    v12 = !v11;
    _textStorage = [(UITextInputController *)self _textStorage];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __54__UITextInputController__itemProviderForCopyingRange___block_invoke;
    v21 = &unk_1E7126A60;
    v24 = location;
    v25 = length;
    v27 = v9;
    selfCopy = self;
    v14 = v6;
    v23 = v14;
    v26 = v12;
    [_textStorage coordinateReading:&v18];

    registeredTypeIdentifiers = [v14 registeredTypeIdentifiers];
    if ([registeredTypeIdentifiers count])
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

- (void)cut:(id)cut
{
  [(UITextInputController *)self _copySelectionToClipboard];
  [(UITextInputController *)self changingContextWithTrigger:@"cut"];
  [(UITextInputController *)self _updateRangeForSmartDelete];
  v4 = _UIKitBundle();
  v5 = [v4 localizedStringForKey:@"CUT_FOR_UNDO" value:@"Cut" table:@"Localizable"];
  selectedRanges = [(UITextInputController *)self selectedRanges];
  [(UITextInputController *)self registerUndoOperationForType:3 actionName:v5 affectedRanges:selectedRanges replacementText:&stru_1EFB14550];

  [(UITextInputController *)self _insertText:&stru_1EFB14550 fromKeyboard:0];
}

- (void)_pasteAndMatchStyle:(BOOL)style
{
  [(UITextInputController *)self changingContextWithTrigger:@"paste"];
  _firstTextView = [(UITextInputController *)self _firstTextView];
  _dataOwnerForPaste = [_firstTextView _dataOwnerForPaste];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__UITextInputController__pasteAndMatchStyle___block_invoke;
  v7[3] = &unk_1E70F35E0;
  v7[4] = self;
  styleCopy = style;
  [UIPasteboard _performAsDataOwner:_dataOwnerForPaste block:v7];
}

void __45__UITextInputController__pasteAndMatchStyle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[UIPasteboard generalPasteboard];
  [v2 _pasteFromPasteboard:v3 andMatchStyle:*(a1 + 40)];
}

- (BOOL)_pasteFromPasteboard:(id)pasteboard andMatchStyle:(BOOL)style
{
  styleCopy = style;
  v38[3] = *MEMORY[0x1E69E9840];
  pasteboardCopy = pasteboard;
  itemProviders = [pasteboardCopy itemProviders];

  if (!itemProviders)
  {
    if (![(UITextInputController *)self allowsEditingTextAttributes])
    {
      v18 = 0;
      v13 = 0;
      goto LABEL_17;
    }

    _firstTextView = [(UITextInputController *)self _firstTextView];
    v11 = [UITextInputController _shouldUseStandardTextScaling:_firstTextView];

    identifier = [*MEMORY[0x1E6982DC0] identifier];
    v13 = [pasteboardCopy dataForPasteboardType:identifier];

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
        if (styleCopy)
        {
          v23 = objc_alloc(MEMORY[0x1E696AAB0]);
          string = [v22 string];
          v25 = [v23 initWithString:string];

          v22 = v25;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v13 = [pasteboardCopy valueForPasteboardType:@"Apple Web Archive pasteboard type"];
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

      identifier2 = [*MEMORY[0x1E6982F90] identifier];
      v13 = [pasteboardCopy valueForPasteboardType:identifier2];

      v15 = *off_1E70EC9A0;
      if (!v13)
      {
        v13 = [pasteboardCopy valueForPasteboardType:*off_1E70EC900];
        if (v13 && (v31 = [[off_1E70ECB60 alloc] initWithData:v13]) != 0)
        {
          image = v31;
          v22 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v31];
        }

        else
        {
          image = [pasteboardCopy image];
          if (image)
          {
            v33 = objc_alloc_init(off_1E70ECBA8);
            [v33 setImage:image];
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
        string2 = [pasteboardCopy string];

        if (!string2)
        {
          v9 = 0;
          goto LABEL_21;
        }

        v28 = objc_alloc(MEMORY[0x1E696AAB0]);
        string3 = [pasteboardCopy string];
        v22 = [v28 initWithString:string3];

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

  itemProviders2 = [pasteboardCopy itemProviders];
  [(UITextInputController *)self pasteItemProviders:itemProviders2 matchesStyle:styleCopy];

  v9 = 1;
LABEL_22:

  return v9;
}

- (void)pasteItemProviders:(id)providers matchesStyle:(BOOL)style
{
  styleCopy = style;
  providersCopy = providers;
  _pasteController = [(UITextInputController *)self _pasteController];
  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  start = [selectedTextRange start];

  if (!start)
  {
    start = [(UITextInputController *)self beginningOfDocument];
  }

  v9 = [(UITextInputController *)self textRangeFromPosition:start toPosition:start];
  v10 = [_pasteController beginPastingItems:providersCopy toRange:v9 delegate:0 matchesTextStyles:styleCopy];
}

- (id)_attributedStringForInsertionOfAttributedString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (*(&self->_tiFlags + 1))
  {
    v6 = [stringCopy mutableCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained textInput:self prepareAttributedTextForInsertion:v6];

    v5 = v6;
  }

  v8 = +[UIKeyboardImpl activeInstance];
  smartInsertDeleteIsEnabled = [v8 smartInsertDeleteIsEnabled];

  if (smartInsertDeleteIsEnabled)
  {
    v10 = [MEMORY[0x1E69D96E0] traitsForUITextInputTraits:self->_textInputTraits];
    v11 = [objc_alloc(MEMORY[0x1E69D9698]) initWithTextInputTraits:v10];
    v12 = [MEMORY[0x1E69D9590] documentStateOfDocumentWithParagraph:self];
    string = [v5 string];
    v28 = 0;
    v29 = 0;
    [v11 smartInsertForDocumentState:v12 stringToInsert:string outBeforeString:&v29 outAfterString:&v28];
    v14 = v29;
    v15 = v28;

    if ((*(&self->_tiFlags + 1) & 4) != 0)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      isSingleLineDocument = [v16 isSingleLineDocument];

      if (isSingleLineDocument)
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

- (void)_pasteAttributedString:(id)string pasteAsRichText:(BOOL)text
{
  textCopy = text;
  v6 = [(UITextInputController *)self _attributedStringForInsertionOfAttributedString:string];
  v7 = [(UITextInputController *)self _attributedStringWithContentAwareWritingDirectionsFromAttributedString:v6];

  [(UITextInputController *)self _pasteRawAttributedString:v7 asRichText:textCopy];
}

- (void)_pasteAttributedString:(id)string toRange:(id)range completion:(id)completion
{
  rangeCopy = range;
  completionCopy = completion;
  v9 = [(UITextInputController *)self _attributedStringForInsertionOfAttributedString:string];
  v10 = [(UITextInputController *)self _attributedStringWithContentAwareWritingDirectionsFromAttributedString:v9];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  keyboardSceneDelegate = [WeakRetained keyboardSceneDelegate];
  v13 = objc_loadWeakRetained(&self->_firstTextView);
  [keyboardSceneDelegate _beginPinningInputViewsOnBehalfOfResponder:v13];

  [(UITextInputController *)self _pasteRawAttributedString:v10 asRichText:1];
  [keyboardSceneDelegate _stopPinningInputViewsOnBehalfOfResponder:WeakRetained];
  if (completionCopy)
  {
    start = [rangeCopy start];
    start2 = [rangeCopy start];
    v16 = -[UITextInputController positionFromPosition:offset:](self, "positionFromPosition:offset:", start2, [v10 length]);
    if (v16)
    {
      v17 = [(UITextInputController *)self textRangeFromPosition:start toPosition:v16];
    }

    else
    {
      v18 = [rangeCopy end];
      v17 = [(UITextInputController *)self textRangeFromPosition:start toPosition:v18];
    }

    completionCopy[2](completionCopy, v17, v10);
  }
}

- (id)_attributedStringWithContentAwareWritingDirectionsFromAttributedString:(id)string
{
  stringCopy = string;
  if (_os_feature_enabled_impl())
  {
    v4 = [stringCopy mutableCopy];
    v5 = *off_1E70EC988;
    v6 = [stringCopy length];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __96__UITextInputController__attributedStringWithContentAwareWritingDirectionsFromAttributedString___block_invoke;
    v9[3] = &unk_1E7126A88;
    v7 = v4;
    v10 = v7;
    [stringCopy enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, v9}];
  }

  else
  {
    v7 = stringCopy;
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

- (void)_pasteRawAttributedString:(id)string asRichText:(BOOL)text
{
  textCopy = text;
  stringCopy = string;
  v6 = _UIKitBundle();
  v7 = [v6 localizedStringForKey:@"PASTE_FOR_UNDO" value:@"Paste" table:@"Localizable"];
  selectedRanges = [(UITextInputController *)self selectedRanges];
  string = [stringCopy string];
  [(UITextInputController *)self registerUndoOperationForType:3 actionName:v7 affectedRanges:selectedRanges replacementText:string];

  _selectedRange = [(UITextInputController *)self _selectedRange];
  v12 = v11;
  string2 = [stringCopy string];
  LODWORD(_selectedRange) = [(UITextInputController *)self _delegateShouldChangeTextInRange:_selectedRange replacementText:v12, string2];

  if (_selectedRange)
  {
    _selectedRange2 = [(UITextInputController *)self _selectedRange];
    [(UITextInputController *)self _rangeAfterCancelDictationIfNecessaryForChangeInRange:_selectedRange2, v15];
    if (textCopy)
    {
      [(UITextInputController *)self _insertAttributedText:stringCopy fromKeyboard:0];
    }

    else
    {
      string3 = [stringCopy string];
      [(UITextInputController *)self _insertText:string3 fromKeyboard:0];
    }
  }
}

- (void)_pasteDelegateWillPasteText:(id)text toTextRange:(id)range
{
  if ((*(&self->_tiFlags + 1) & 0x40) != 0)
  {
    rangeCopy = range;
    textCopy = text;
    delegate = [(UITextInputController *)self delegate];
    [delegate _textInput:self pasteDelegateWillPasteText:textCopy toTextRange:rangeCopy];
  }
}

- (void)_pasteDelegateDidPasteText:(id)text toTextRange:(id)range
{
  if ((*(&self->_tiFlags + 1) & 0x80) != 0)
  {
    rangeCopy = range;
    textCopy = text;
    delegate = [(UITextInputController *)self delegate];
    [delegate _textInput:self pasteDelegateDidPasteText:textCopy toTextRange:rangeCopy];
  }
}

- (void)_adjustSizeByIncreasing:(BOOL)increasing
{
  increasingCopy = increasing;
  if ([(UITextInputController *)self allowsEditingTextAttributes])
  {
    v5 = _UIKitBundle();
    v6 = v5;
    if (increasingCopy)
    {
      v7 = @"Bigger";
    }

    else
    {
      v7 = @"Smaller";
    }

    v8 = [v5 localizedStringForKey:v7 value:v7 table:@"Localizable"];

    selectedRanges = [(UITextInputController *)self selectedRanges];
    [(UITextInputController *)self registerUndoOperationForType:1 actionName:v8 affectedRanges:selectedRanges replacementText:0];

    [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__214;
    v30 = __Block_byref_object_dispose__214;
    v31 = 0;
    _textStorage = [(UITextInputController *)self _textStorage];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __49__UITextInputController__adjustSizeByIncreasing___block_invoke;
    v25[3] = &unk_1E71267E8;
    v25[4] = self;
    v25[5] = &v26;
    [_textStorage coordinateReading:v25];

    fontDescriptor = [v27[5] fontDescriptor];
    [fontDescriptor pointSize];
    v13 = 0.862068966;
    if (increasingCopy)
    {
      v13 = 1.16;
    }

    v14 = [off_1E70ECC18 fontWithDescriptor:fontDescriptor size:{fmax(v13 * v12, 7.0)}];
    _selectedRange = [(UITextInputController *)self _selectedRange];
    v17 = v16;
    _textStorage2 = [(UITextInputController *)self _textStorage];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__UITextInputController__adjustSizeByIncreasing___block_invoke_2;
    v20[3] = &unk_1E7126AD8;
    v20[4] = self;
    v19 = v14;
    v21 = v19;
    v22 = _selectedRange;
    v23 = v17;
    v24 = increasingCopy;
    [_textStorage2 coordinateEditing:v20];

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

- (void)updateTextAttributesWithConversionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(UITextInputController *)self allowsEditingTextAttributes])
  {
    [(UITextInputController *)self _selectedRange];
    if (v5)
    {
      v6 = _UIKitBundle();
      v7 = [v6 localizedStringForKey:@"Set Font" value:@"Set Font" table:@"Localizable"];
      selectedRanges = [(UITextInputController *)self selectedRanges];
      [(UITextInputController *)self registerUndoOperationForType:1 actionName:v7 affectedRanges:selectedRanges replacementText:0];

      [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
      _selectedRange = [(UITextInputController *)self _selectedRange];
      v11 = v10;
      _fallbackFont = [(UITextInputController *)self _fallbackFont];
      _textStorage = [(UITextInputController *)self _textStorage];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __67__UITextInputController_updateTextAttributesWithConversionHandler___block_invoke;
      v15[3] = &unk_1E7126B28;
      v19 = _selectedRange;
      v20 = v11;
      v16 = _fallbackFont;
      selfCopy = self;
      v18 = handlerCopy;
      v14 = _fallbackFont;
      [_textStorage coordinateEditing:v15];

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

- (void)select:(id)select
{
  interactionAssistant = [(UITextInputController *)self interactionAssistant];
  [interactionAssistant selectWord];
}

- (void)selectAll:(id)all
{
  allCopy = all;
  interactionAssistant = [(UITextInputController *)self interactionAssistant];
  [interactionAssistant selectAll:allCopy];
}

- (void)_promptForReplace:(id)replace
{
  interactionAssistant = [(UITextInputController *)self interactionAssistant];
  [interactionAssistant scheduleReplacements];
}

- (void)_transliterateChinese:(id)chinese
{
  interactionAssistant = [(UITextInputController *)self interactionAssistant];
  [interactionAssistant scheduleChineseTransliteration];
}

- (void)_share:(id)_share
{
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(UITextInputController *)self _removeShareController];
  }

  _firstTextView = [(UITextInputController *)self _firstTextView];
  v7 = [_UITextServiceSessionContext sessionContextForType:8 withTextInput:_firstTextView];
  v8 = [_firstTextView _showServiceForType:8 withContext:v7];
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

- (void)_define:(id)_define
{
  _defineCopy = _define;
  if (self->_lookupSession)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputController.m" lineNumber:5193 description:@"Shouldn't have a lookup session"];
  }

  _firstTextView = [(UITextInputController *)self _firstTextView];
  v7 = [_UITextServiceSessionContext sessionContextForType:16 withTextInput:_firstTextView];
  v8 = [_firstTextView _showServiceForType:16 withContext:v7];
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

- (void)_translate:(id)_translate
{
  _translateCopy = _translate;
  if (self->_translateSession)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputController.m" lineNumber:5209 description:@"Shouldn't have translate session"];
  }

  _firstTextView = [(UITextInputController *)self _firstTextView];
  v7 = [_UITextServiceSessionContext sessionContextForType:32 withTextInput:_firstTextView];
  v8 = [_firstTextView _showServiceForType:32 withContext:v7];
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
  interactionAssistant = [(UITextInputController *)self interactionAssistant];
  activeSelection = [interactionAssistant activeSelection];
  [activeSelection clearSelection];

  interactionAssistant2 = [(UITextInputController *)self interactionAssistant];
  [interactionAssistant2 updateDisplayedSelection];
}

- (void)_addShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(UITextInputController *)self _removeShortcutController];
  }

  _firstTextView = [(UITextInputController *)self _firstTextView];
  v8 = [_UITextServiceSessionContext sessionContextForType:4 withTextInput:_firstTextView];
  v9 = [_firstTextView _showServiceForType:4 withContext:v8];
  learnSession = self->_learnSession;
  self->_learnSession = v9;

  [_firstTextView resignFirstResponder];
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
  typingAttributes = [(UITextInputController *)self typingAttributes];
  v3 = [typingAttributes objectForKey:*off_1E70EC918];

  if (!v3)
  {
    [off_1E70ECC18 defaultFontSize];
    v3 = [off_1E70ECC18 systemFontOfSize:?];
  }

  return v3;
}

- (id)_defaultAttributesForApplyingFormattingModification:(id *)modification withAttributes:(id)attributes paragraphStyle:(id)style
{
  styleCopy = style;
  v8 = *off_1E70EC918;
  attributesCopy = attributes;
  v10 = [attributesCopy objectForKeyedSubscript:v8];
  v11 = [attributesCopy mutableCopy];

  var0 = modification->var0;
  if (modification->var0 <= 1)
  {
    if (var0)
    {
      if (var0 != 1)
      {
        goto LABEL_24;
      }

      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:modification->var1.var1];
      v15 = off_1E70ECAD8;
      goto LABEL_11;
    }

    v23 = modification->var1.var0;
    fontDescriptor = [v10 fontDescriptor];
    symbolicTraits = [fontDescriptor symbolicTraits];

    if ((symbolicTraits & v23) != 0)
    {
      v26 = 0;
    }

    else
    {
      v26 = v23;
    }

    fontDescriptor2 = [v10 fontDescriptor];
    v14 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:v26 mask:v23];

    if (!v14)
    {
      goto LABEL_23;
    }

    [v10 pointSize];
    fontDescriptor3 = [off_1E70ECC18 fontWithDescriptor:v14 size:?];
    [v11 setObject:fontDescriptor3 forKeyedSubscript:v8];
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

      var4 = modification->var1.var4;
      v14 = [styleCopy mutableCopy];
      [v14 setMinimumLineHeight:var4];
      [v14 setMaximumLineHeight:var4];
      goto LABEL_10;
    }

    var3 = modification->var1.var3;
    [off_1E70ECC18 defaultFontSize];
    v18 = [off_1E70ECC18 systemFontOfSize:?];
    v14 = v18;
    if (!v10)
    {
      v10 = v18;
    }

    fontDescriptor3 = [v10 fontDescriptor];
    [fontDescriptor3 pointSize];
    v21 = 0.862068966;
    if (var3)
    {
      v21 = 1.16;
    }

    v22 = [off_1E70ECC18 fontWithDescriptor:fontDescriptor3 size:{fmax(v21 * v20, 7.0)}];
    [v11 setObject:v22 forKeyedSubscript:v8];

LABEL_22:
    goto LABEL_23;
  }

  var1 = modification->var1.var1;
  v14 = [styleCopy mutableCopy];
  [v14 setAlignment:var1];
LABEL_10:
  v15 = off_1E70EC988;
LABEL_11:
  [v11 setObject:v14 forKeyedSubscript:*v15];
LABEL_23:

LABEL_24:

  return v11;
}

- (id)_attributesForApplyingFormattingModification:(id *)modification withAttributes:(id)attributes paragraphStyle:(id)style forTypingAttributes:(BOOL)typingAttributes
{
  if ((*(&self->_tiFlags + 2) & 2) != 0)
  {
    typingAttributesCopy = typingAttributes;
    styleCopy = style;
    styleCopy2 = attributes;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [WeakRetained textInput:self attributesForApplyingFormattingModification:modification withAttributes:styleCopy2 paragraphStyle:styleCopy forTypingAttributes:typingAttributesCopy];
  }

  else
  {
    styleCopy2 = style;
    WeakRetained = attributes;
    v11 = [(UITextInputController *)self _defaultAttributesForApplyingFormattingModification:modification withAttributes:WeakRetained paragraphStyle:styleCopy2];
  }

  return v11;
}

- (void)_applyFormattingModification:(id)modification
{
  var1 = modification.var1.var1;
  var0 = modification.var0;
  _textStorage = [(UITextInputController *)self _textStorage];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__UITextInputController__applyFormattingModification___block_invoke;
  v7[3] = &unk_1E7126120;
  v7[4] = self;
  v7[5] = var0;
  v7[6] = var1;
  [_textStorage coordinateEditing:v7];
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

- (void)toggleBoldface:(id)boldface
{
  v4 = _UIKitBundle();
  v5 = [v4 localizedStringForKey:@"BOLD_FOR_UNDO" value:@"Bold" table:@"Localizable"];
  selectedRanges = [(UITextInputController *)self selectedRanges];
  [(UITextInputController *)self registerUndoOperationForType:1 actionName:v5 affectedRanges:selectedRanges replacementText:0];

  [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
  [(UITextInputController *)self _toggleFontTrait:2];

  [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0];
}

- (void)toggleItalics:(id)italics
{
  v4 = _UIKitBundle();
  v5 = [v4 localizedStringForKey:@"ITALIC_FOR_UNDO" value:@"Italic" table:@"Localizable"];
  selectedRanges = [(UITextInputController *)self selectedRanges];
  [(UITextInputController *)self registerUndoOperationForType:1 actionName:v5 affectedRanges:selectedRanges replacementText:0];

  [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
  [(UITextInputController *)self _toggleFontTrait:1];

  [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0];
}

- (void)toggleUnderline:(id)underline
{
  v4 = _UIKitBundle();
  v5 = [v4 localizedStringForKey:@"UNDERLINE_FOR_UNDO" value:@"Underline" table:@"Localizable"];
  selectedRanges = [(UITextInputController *)self selectedRanges];
  [(UITextInputController *)self registerUndoOperationForType:1 actionName:v5 affectedRanges:selectedRanges replacementText:0];

  [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
  typingAttributes = [(UITextInputController *)self typingAttributes];
  v8 = [typingAttributes objectForKey:*off_1E70ECAD8];

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

- (void)_changeLineHeightAction:(id)action newLineHeight:(id)height
{
  if (height)
  {
    [height doubleValue];
    v6 = v5;
    _textStorage = [(UITextInputController *)self _textStorage];
    string = [_textStorage string];
    _selectedRange = [(UITextInputController *)self _selectedRange];
    v11 = [string paragraphRangeForRange:{_selectedRange, v10}];
    v13 = v12;

    v14 = _UIKitBundle();
    v15 = [v14 localizedStringForKey:@"Set Line Height" value:@"Set Line Height" table:@"Localizable"];
    [(UITextInputController *)self registerUndoOperationForType:1 actionName:v15 affectedRange:v11 replacementText:v13, 0];

    [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
    _textStorage2 = [(UITextInputController *)self _textStorage];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__UITextInputController__changeLineHeightAction_newLineHeight___block_invoke;
    v19[3] = &unk_1E7126BC8;
    v19[5] = v6;
    v19[4] = self;
    v19[6] = v11;
    v19[7] = v13;
    [_textStorage2 coordinateEditing:v19];

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

- (void)_changeTextAlignment:(int64_t)alignment undoString:(id)string
{
  stringCopy = string;
  _textStorage = [(UITextInputController *)self _textStorage];
  string = [_textStorage string];
  _selectedRange = [(UITextInputController *)self _selectedRange];
  v11 = [string paragraphRangeForRange:{_selectedRange, v10}];
  v13 = v12;

  [(UITextInputController *)self registerUndoOperationForType:1 actionName:stringCopy affectedRange:v11 replacementText:v13, 0];
  [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
  _textStorage2 = [(UITextInputController *)self _textStorage];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__UITextInputController__changeTextAlignment_undoString___block_invoke;
  v15[3] = &unk_1E7126BC8;
  v15[4] = self;
  v15[5] = alignment;
  v15[6] = v11;
  v15[7] = v13;
  [_textStorage2 coordinateEditing:v15];

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

- (void)alignLeft:(id)left
{
  v5 = _UIKitBundle();
  v4 = [v5 localizedStringForKey:@"Align Left" value:@"Align Left" table:@"Localizable"];
  [(UITextInputController *)self _changeTextAlignment:0 undoString:v4];
}

- (void)alignCenter:(id)center
{
  v5 = _UIKitBundle();
  v4 = [v5 localizedStringForKey:@"Center" value:@"Center" table:@"Localizable"];
  [(UITextInputController *)self _changeTextAlignment:1 undoString:v4];
}

- (void)alignJustified:(id)justified
{
  v5 = _UIKitBundle();
  v4 = [v5 localizedStringForKey:@"Justify" value:@"Justify" table:@"Localizable"];
  [(UITextInputController *)self _changeTextAlignment:3 undoString:v4];
}

- (void)alignRight:(id)right
{
  v5 = _UIKitBundle();
  v4 = [v5 localizedStringForKey:@"Align Right" value:@"Align Right" table:@"Localizable"];
  [(UITextInputController *)self _changeTextAlignment:2 undoString:v4];
}

- (void)_validateCommand:(id)command forFont:(id)font traits:(int)traits
{
  v5 = *&traits;
  commandCopy = command;
  fontCopy = font;
  traits = [fontCopy traits];
  LODWORD(font) = traits & v5;
  [commandCopy setState:(traits & v5) == v5];
  if (font != v5)
  {
    fontDescriptor = [fontCopy fontDescriptor];
    v10 = [fontDescriptor fontDescriptorWithSymbolicTraits:v5 mask:v5];

    if (v10)
    {
      [fontCopy pointSize];
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

    [commandCopy setAttributes:{objc_msgSend(commandCopy, "attributes") | 1}];
LABEL_8:

    fontCopy = v11;
  }
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  action = [commandCopy action];
  v5 = [(UITextInputController *)self _canHandleResponderAction:action];
  v6 = commandCopy;
  if (!v5)
  {
    goto LABEL_62;
  }

  v8 = action == sel_makeTextWritingDirectionNatural_ || action == sel_makeTextWritingDirectionLeftToRight_ || action == sel_makeTextWritingDirectionRightToLeft_;
  if ([(UITextInputController *)self _shouldHandleResponderAction:action withSender:commandCopy])
  {
    typingAttributes = [(UITextInputController *)self typingAttributes];
    selectedRange = [(UITextInputController *)self selectedRange];
    _textStorage = [(UITextInputController *)self _textStorage];
    v12 = [_textStorage length];

    v13 = *off_1E70EC988;
    v14 = [typingAttributes objectForKeyedSubscript:*off_1E70EC988];
    defaultParagraphStyle = v14;
    v16 = 1;
    if (action != sel_alignLeft_ && action != sel_alignCenter_ && action != sel_alignJustified_)
    {
      v16 = action == sel_alignRight_;
    }

    v17 = v16 || v8;
    if (typingAttributes || selectedRange >= v12)
    {
      if (v17)
      {
        if (!v14)
        {
LABEL_20:
          defaultParagraphStyle = [off_1E70ECB88 defaultParagraphStyle];
        }

LABEL_21:
        alignment = [defaultParagraphStyle alignment];
        baseWritingDirection = [defaultParagraphStyle baseWritingDirection];
        if (v16)
        {
          if (alignment == 4)
          {
            if (baseWritingDirection == -1)
            {
              baseWritingDirection = [off_1E70ECB88 defaultWritingDirectionForLanguage:0];
            }

            alignment = 2 * (baseWritingDirection == 1);
          }

          v26 = 3;
          if (action != sel_alignJustified_)
          {
            v26 = 0;
          }

          v27 = 2;
          if (action != sel_alignRight_)
          {
            v27 = v26;
          }

          if (action == sel_alignCenter_)
          {
            v27 = 1;
          }

          v28 = v27 == alignment;
        }

        else
        {
          v29 = 1;
          if (action != sel_makeTextWritingDirectionRightToLeft_)
          {
            v29 = -1;
          }

          if (action == sel_makeTextWritingDirectionLeftToRight_)
          {
            v29 = 0;
          }

          v28 = v29 == baseWritingDirection;
        }

        v30 = v28;
        [commandCopy setState:v30];
        goto LABEL_59;
      }
    }

    else
    {
      _textStorage2 = [(UITextInputController *)self _textStorage];
      v19 = _textStorage2;
      if (v17)
      {
        string = [_textStorage2 string];
        v21 = [string paragraphRangeForRange:{selectedRange, 1}];

        _textStorage3 = [(UITextInputController *)self _textStorage];
        v23 = [_textStorage3 attribute:v13 atIndex:v21 effectiveRange:0];

        typingAttributes = 0;
        defaultParagraphStyle = v23;
        if (!v23)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      typingAttributes = [_textStorage2 attributesAtIndex:selectedRange effectiveRange:0];
    }

    if (action == sel_toggleBoldface_ || action == sel_toggleItalics_)
    {
      _textInputTraits = [typingAttributes objectForKeyedSubscript:*off_1E70EC918];
      if (_textInputTraits)
      {
        if (action == sel_toggleBoldface_)
        {
          v33 = 2;
        }

        else
        {
          v33 = 1;
        }

        [(UITextInputController *)self _validateCommand:commandCopy forFont:_textInputTraits traits:v33];
      }
    }

    else
    {
      if (action == sel_toggleUnderline_)
      {
        _textInputTraits = [typingAttributes objectForKeyedSubscript:*off_1E70ECAD8];
        v32 = [_textInputTraits integerValue] == 0;
      }

      else
      {
        if (action != sel_toggleSmartInsertDelete_)
        {
LABEL_59:

          goto LABEL_60;
        }

        _textInputTraits = [(UITextInputController *)self _textInputTraits];
        v32 = [_textInputTraits smartInsertDeleteType] == 1;
      }

      v34 = !v32;
      [commandCopy setState:v34];
    }

    goto LABEL_59;
  }

LABEL_60:
  v6 = commandCopy;
  if (action == sel_captureTextFromCamera_)
  {
    WeakRetained = objc_loadWeakRetained(&self->_firstTextView);
    v36 = [UIAction _textFromCameraTitleForResponder:WeakRetained];
    [commandCopy setTitle:v36];

    v6 = commandCopy;
  }

LABEL_62:
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if ([objc_opt_class() instancesRespondToSelector:{objc_msgSend(invocationCopy, "selector")}])
  {
    [invocationCopy invokeWithTarget:self->_textInputTraits];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITextInputController;
    [(UITextInputController *)&v5 forwardInvocation:invocationCopy];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = UITextInputController;
  if ([(UITextInputController *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [objc_opt_class() instancesRespondToSelector:selector];
  }
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

- (id)annotatedSubstringForRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v6 = [WeakRetained annotatedSubstringForRange:rangeCopy];

  return v6;
}

- (void)replaceRange:(id)range withAnnotatedString:(id)string relativeReplacementRange:(_NSRange)replacementRange
{
  length = replacementRange.length;
  location = replacementRange.location;
  v62 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  stringCopy = string;
  _textStorage = [(UITextInputController *)self _textStorage];
  v11 = [stringCopy length];
  v12 = [_textStorage length];
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
  v14 = [WeakRetained characterRangeForTextRange:rangeCopy];
  v16 = v15;

  v48 = v14;
  v17 = v14 + v16;
  v18 = _textStorage;
  if (v17 <= v12)
  {
    if (location != 0x7FFFFFFFFFFFFFFFLL && location + length <= v16)
    {
      v19 = v11 + length - v16;
      if (v11 + length >= v16)
      {
        v42 = v11;
        v44 = rangeCopy;
        v41 = v16;
        v20 = v48 + location;
        selectedRange = [(UITextInputController *)self selectedRange];
        v38 = v22;
        v39 = v19;
        v40 = [stringCopy attributedSubstringFromRange:{location, v19}];
        v23 = [UITextInputController _newAttributedStringForReplacementOfAnnotatedText:"_newAttributedStringForReplacementOfAnnotatedText:inRange:" inRange:?];
        v24 = _UIKitBundle();
        v25 = [v24 localizedStringForKey:@"Replace" value:@"Replace" table:@"Localizable"];
        string = [v23 string];
        [(UITextInputController *)self registerUndoOperationForType:3 actionName:v25 affectedRange:v20 replacementText:length, string];

        [(UITextInputController *)self _sendDelegateWillChangeNotificationsForText:1 selection:0];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __83__UITextInputController_replaceRange_withAnnotatedString_relativeReplacementRange___block_invoke;
        v57[3] = &unk_1E7126120;
        v59 = v20;
        v60 = length;
        v58 = v23;
        v27 = v23;
        [_textStorage coordinateEditing:v57];
        if (selectedRange >= v20 + length && v39 != length)
        {
          [(UITextInputController *)self setSelectedRange:v39 - length + selectedRange, v38];
        }

        [(UITextInputController *)self _sendDelegateChangeNotificationsForText:1 selection:0 replacement:v27 characterRange:v20, length];

        v16 = v41;
        v11 = v42;
        rangeCopy = v44;
      }
    }

    v28 = [_textStorage length];
    if (v11 && v48 + v11 <= v28)
    {
      v45 = rangeCopy;
      v47 = stringCopy;
      v29 = objc_loadWeakRetained(&self->_textLayoutController);
      v43 = v11;
      v30 = [v29 textRangeForCharacterRange:{v48, v11}];

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      validAnnotations = [(UITextInputController *)self validAnnotations];
      v32 = [validAnnotations countByEnumeratingWithState:&v53 objects:v61 count:16];
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
              objc_enumerationMutation(validAnnotations);
            }

            v36 = *(*(&v53 + 1) + 8 * i);
            v37 = objc_loadWeakRetained(&self->_textLayoutController);
            [v37 removeAnnotationAttribute:v36 forRange:v30];
          }

          v33 = [validAnnotations countByEnumeratingWithState:&v53 objects:v61 count:16];
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
      stringCopy = v47;
      [v47 enumerateAttributesInRange:0 options:v43 usingBlock:{0, v49}];

      rangeCopy = v45;
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

- (void)removeAnnotation:(id)annotation forRange:(id)range
{
  annotationCopy = annotation;
  rangeCopy = range;
  if ([annotationCopy isEqualToString:*off_1E70ECA00])
  {
    [(UITextInputController *)self removeSpellingMarkersFromWordInRange:rangeCopy];
  }

  else
  {
    _textStorage = [(UITextInputController *)self _textStorage];
    v8 = [_textStorage length];

    WeakRetained = objc_loadWeakRetained(&self->_textLayoutController);
    v10 = [WeakRetained characterRangeForTextRange:rangeCopy];
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
      [v16 removeAnnotationAttribute:annotationCopy forRange:v15];
    }
  }
}

- (void)captureTextFromCamera:(id)camera
{
  cameraCopy = camera;
  _firstTextView = [(UITextInputController *)self _firstTextView];
  v5 = +[UIKeyboardCameraSession sharedSession];
  [v5 showForResponder:_firstTextView sender:cameraCopy rtiConfiguration:0];
}

- (void)setAutomaticallyAdjustsWritingDirection:(BOOL)direction
{
  if (direction)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_tiFlags = (*&self->_tiFlags & 0xEFFFFFFF | v3);
  if (direction)
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
      canAccessLayoutManager = [WeakRetained canAccessLayoutManager];

      if ((canAccessLayoutManager & 1) == 0)
      {
        selectedTextRange = [(UITextInputController *)self selectedTextRange];
        start = [selectedTextRange start];
        v7 = [(UITextInputController *)self baseWritingDirectionForPosition:start inDirection:0];

        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v10 = 0;
        v11 = &v10;
        v12 = 0x2020000000;
        v13 = 0;
        _textStorage = [(UITextInputController *)self _textStorage];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __55__UITextInputController_adjustWritingDirectionIfNeeded__block_invoke;
        v9[3] = &unk_1E7126C18;
        v9[4] = self;
        v9[5] = &v14;
        v9[6] = &v10;
        v9[7] = v7;
        [_textStorage coordinateReading:v9];

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
  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  [(UITextInputController *)self setBaseWritingDirection:-1 forRange:selectedTextRange];
}

- (void)setEffectiveWritingDirection
{
  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  start = [selectedTextRange start];
  v5 = [(UITextInputController *)self baseWritingDirectionForPosition:start inDirection:0];

  [(UITextInputController *)self setEffectiveWritingDirectionFromCurrentDirection:v5];
}

- (void)setEffectiveWritingDirectionFromCurrentDirection:(int64_t)direction
{
  v5 = _os_feature_enabled_impl();
  v6 = _os_feature_enabled_impl();
  if (v5)
  {

    [(UITextInputController *)self setKeyboardWritingDirectionFromCurrentDirection:direction];
  }

  else if (v6)
  {

    [(UITextInputController *)self setLayoutWritingDirectionFromCurrentDirection:direction];
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

- (void)setKeyboardWritingDirectionFromCurrentDirection:(int64_t)direction
{
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v5 currentInputMode];

  isDefaultRightToLeft = [currentInputMode isDefaultRightToLeft];
  if (direction != 1 && (isDefaultRightToLeft & 1) != 0)
  {
    v7 = 1;
LABEL_7:
    selectedTextRange = [(UITextInputController *)self selectedTextRange];
    [(UITextInputController *)self setBaseWritingDirection:v7 forRange:selectedTextRange];

    goto LABEL_8;
  }

  isDefaultRightToLeft2 = [currentInputMode isDefaultRightToLeft];
  if (direction && (isDefaultRightToLeft2 & 1) == 0)
  {
    v7 = 0;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)setLayoutWritingDirectionFromCurrentDirection:(int64_t)direction
{
  _firstTextView = [(UITextInputController *)self _firstTextView];
  traitCollection = [_firstTextView traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (direction == 1 || layoutDirection != 1)
  {
    if (!direction || layoutDirection)
    {
      return;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  selectedTextRange = [(UITextInputController *)self selectedTextRange];
  [(UITextInputController *)self setBaseWritingDirection:v8 forRange:selectedTextRange];
}

- (UITextInputControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end