@interface NSTextLayoutManager
+ (BOOL)_throwsOnAssertionError;
+ (BOOL)_usesOutlinedHighlightByDefault;
+ (BOOL)_validatesInternalCaches;
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (BOOL)shouldBeUsedForNSTextView;
+ (BOOL)usesHyphenation;
+ (NSDictionary)linkRenderingAttributes;
+ (NSDictionary)linkRenderingAttributesForLabels;
+ (double)_textHighlightBackgroundColorPercentage;
+ (id)textHighlightAttributes_iOS;
+ (id)textHighlightBackgroundColorForForegroundColor_iOS:(id)a3;
+ (id)validRenderingAttributes;
+ (int64_t)_fallbackBaseWritingDirectionForApplicationFrameworkContext:(int64_t)a3;
+ (int64_t)maximumNumberOfCachedTextLayoutFragments;
- (BOOL)_addTextAnimationContext:(id)a3;
- (BOOL)_adjustedTextLayoutFragmentBoundaryTextRangeForTextRange:(id)a3 location:(id *)a4 endLocation:(id *)a5;
- (BOOL)_appendTextContainer;
- (BOOL)_setSoftInvalidationLocation:(id)a3 onlyIfUpstream:(BOOL)a4;
- (BOOL)_shouldDrawTextCorrectionMarkerWithType:(int64_t)a3 inRange:(id)a4;
- (BOOL)_validateTextContainerEntries;
- (BOOL)allowsAddingTextContainer;
- (BOOL)allowsFontSubstitutionAffectingVerticalMetrics;
- (BOOL)canSendViewProviderInvalidationNotification;
- (BOOL)flushTextLayoutFragmentsFromLocation:(id)a3 direction:(BOOL)a4;
- (BOOL)hasNonSimpleRectangularTextContainer;
- (BOOL)isCountableDataSource;
- (BOOL)lastContainerFilled;
- (BOOL)limitsLayoutForSuspiciousContents;
- (BOOL)usesContiguousLayout;
- (BOOL)usesFontLeading;
- (BOOL)usesHyphenation;
- (CGRect)usageBoundsForLastTextContainer;
- (CGRect)usageBoundsInTextContainerAtIndex:(int64_t)a3;
- (CGSize)estimatedSizeForLastTextContainer;
- (NSArray)textContainers;
- (NSArray)textSelections;
- (NSDictionary)renderingAttributesForLink:(id)link atLocation:(id)location;
- (NSTextContainer)textContainer;
- (NSTextHighlightShapeProvider)_textHighlightShapeProvider;
- (NSTextLayoutFragment)textLayoutFragmentForLocation:(id)location;
- (NSTextLayoutManager)init;
- (NSTextLayoutManager)initWithCoder:(NSCoder *)coder;
- (NSTextLineFragment)_extraTextLineFragment;
- (NSTextRange)documentRange;
- (NSTextSelectionNavigation)textSelectionNavigation;
- (NSTextViewportLayoutController)textViewportLayoutController;
- (double)_estimatedVerticalSizeForTextRange:(id)a3 adjustedTextRange:(id *)a4;
- (id)_copyTextLineFragmentRangeForPoint:(CGPoint)a3 inContainerAtLocation:(id)a4 pointPlacement:(unint64_t *)a5;
- (id)_currentTextLayoutFragmentEnumerated;
- (id)_estimatedTextLocationForVerticalOffset:(double)a3 originLocation:(id)a4 originOffset:(double)a5 deltaFromOffset:(double *)a6;
- (id)_rangeForAllLinesContainingTextInRange:(id)a3;
- (id)_selectionAndMarkedTextAttributesForLocation:(id)a3 inTextRange:(id)a4 effectiveTextRange:(id *)a5;
- (id)_textAnimationContextForLocation:(id)a3;
- (id)_textContainerForCurrentEnumeratedElement;
- (id)_textLayoutFragmentAtLocation:(id)a3;
- (id)_textLineFragmentAtLocation:(id)a3 textLayoutFragment:(id *)a4 rangeDelta:(int64_t *)a5;
- (id)_textParagraphForEmptyDocument;
- (id)_textRangeForDoubleClickAtLocation:(id)a3;
- (id)_textSelectionsFromTextView;
- (id)_textViewRespondingToSelector:(SEL)a3;
- (id)_textViewportLayoutControllerForTextContainer:(id)a3;
- (id)_viewProviderForTextAttachment:(id)a3 parentView:(id)a4 location:(id)a5 textContainer:(id)a6;
- (id)adjustedTextSelectionsForEditingContextFromTextSelections:(id)a3;
- (id)attributedStringForTruncatedRange:(id)a3 defaultAttributedString:(id)a4;
- (id)baseLocation;
- (id)companionLayoutManager;
- (id)delegate;
- (id)enumerateTextLayoutFragmentsFromLocation:(id)location options:(NSTextLayoutFragmentEnumerationOptions)options usingBlock:(void *)block;
- (id)enumerateTextLayoutFragmentsInTextRange:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (id)locationFromLocation:(id)a3 withOffset:(int64_t)a4;
- (id)platformDelegate;
- (id)rangeForTextContainerAtIndex:(int64_t)a3;
- (id)renderingColorForDocumentColor:(id)a3 atLocation:(id)a4;
- (id)temporaryAttributesTable;
- (id)textContainerForLocation:(id)a3;
- (id)textHighlightRenderingAttributesForTextRange:(id)a3 attributes:(id)a4;
- (id)textLayoutFragmentForPosition:(CGPoint)a3 inTextContainerAtIndex:(int64_t)a4 avoidsAdditionalLayout:(BOOL)a5;
- (id)textRangeForSelectionGranularity:(int64_t)a3 enclosingLocation:(id)a4;
- (id)viewProviderForTextAttachment:(id)a3 location:(id)a4;
- (int64_t)_fallbackWritingDirection;
- (int64_t)_numberOfLinesToCurrentlyEnumeratedTextLayoutFragment;
- (int64_t)applicationFrameworkContext;
- (int64_t)baseWritingDirectionAtLocation:(id)a3;
- (int64_t)maximumNumberOfCachedTextLayoutFragments;
- (int64_t)maximumNumberOfLinesForLastContainer;
- (int64_t)offsetFromLocation:(id)a3 toLocation:(id)a4;
- (int64_t)textLayoutOrientationAtLocation:(id)a3;
- (uint64_t)_validateTextContainerEntries;
- (unint64_t)placementOfPoint:(CGPoint)a3 inContainerAtLocation:(id)a4;
- (void)_addTextContainer:(id)a3;
- (void)_addTextContainerForLocation:(id)a3;
- (void)_commonInit;
- (void)_configureCoreTypesetter:(id)a3 forTextParagraph:(id)a4 textContainer:(id)a5;
- (void)_enumerateTextSegmentAndCategoryInRange:(id)a3 type:(int64_t)a4 options:(unint64_t)a5 allowsZeroWidthExtensions:(BOOL)a6 usingBlock:(id)a7;
- (void)_fillLayoutToLocation:(id)a3 enumerationCache:(id *)a4;
- (void)_fixSelectionAfterChangeInCharacterRange:(_NSRange)a3 changeInLength:(int64_t)a4;
- (void)_invalidateLayoutForTextRange:(id)a3 hard:(BOOL)a4;
- (void)_invalidateTextAnimationContextForTextRange:(id)a3 reason:(int64_t)a4;
- (void)_invalidateTextParagraphForEmptyDocument;
- (void)_removeTextAnimationContext:(id)a3;
- (void)_removeTextContainer;
- (void)_removeTextContainersToCondition:(id)a3;
- (void)addTemporaryAttribute:(id)a3 value:(id)a4 forTextRange:(id)a5;
- (void)dealloc;
- (void)drawTextHighlightBackgroundForRunTextRanges:(id)a3 attributes:(id)a4 documentRange:(id)a5 origin:(CGPoint)a6 context:(CGContext *)a7;
- (void)drawTextHighlightBackgroundForTextRange:(id)a3 attributes:(id)a4 options:(unint64_t)a5 origin:(CGPoint)a6 context:(CGContext *)a7;
- (void)drawTextHighlightBackgroundForTextRange:(id)a3 highlightStyle:(id)a4 options:(unint64_t)a5 origin:(CGPoint)a6 context:(CGContext *)a7;
- (void)encodeWithCoder:(id)a3;
- (void)ensureLayoutForBounds:(CGRect)bounds;
- (void)ensureLayoutForRange:(NSTextRange *)range;
- (void)enumerateCaretOffsetsInLineFragmentAtLocation:(id)a3 usingBlock:(id)a4;
- (void)enumerateContainerBoundariesFromLocation:(id)a3 reverse:(BOOL)a4 usingBlock:(id)a5;
- (void)enumerateRenderingAttributesFromLocation:(id)location reverse:(BOOL)reverse usingBlock:(void *)block;
- (void)enumerateSubstringsFromLocation:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateTemporaryAttributesFromLocation:(id)a3 reverse:(BOOL)a4 usingBlock:(id)a5;
- (void)enumerateTextSegmentsInRange:(NSTextRange *)textRange type:(NSTextLayoutManagerSegmentType)type options:(NSTextLayoutManagerSegmentOptions)options usingBlock:(void *)block;
- (void)enumerateViewportElementsFromLocation:(id)a3 options:(int64_t)a4 usingBlock:(id)a5;
- (void)invalidateLayoutForRange:(NSTextRange *)range;
- (void)invalidateTemporaryAttributesForTextRange:(id)a3;
- (void)markedTextAttributesForRange:(id)a3 usingBlock:(id)a4;
- (void)processLayoutInvalidationForTextRange:(id)a3 synchronizing:(BOOL)a4;
- (void)removeTemporaryAttribute:(id)a3 forTextRange:(id)a4;
- (void)replaceContentsInRange:(NSTextRange *)range withAttributedString:(NSAttributedString *)attributedString;
- (void)replaceContentsInRange:(NSTextRange *)range withTextElements:(NSArray *)textElements;
- (void)replaceTextContentManager:(NSTextContentManager *)textContentManager;
- (void)setAllowsFontSubstitutionAffectingVerticalMetrics:(BOOL)a3;
- (void)setApplicationFrameworkContext:(int64_t)a3;
- (void)setDelegate:(id)delegate;
- (void)setLimitsLayoutForSuspiciousContents:(BOOL)limitsLayoutForSuspiciousContents;
- (void)setPlatformDelegate:(id)a3;
- (void)setTemporaryAttributes:(id)a3 forTextRange:(id)a4;
- (void)setTextContainer:(NSTextContainer *)textContainer;
- (void)setTextContentManager:(id)a3;
- (void)setTextSelectionNavigation:(NSTextSelectionNavigation *)textSelectionNavigation;
- (void)setTextSelections:(NSArray *)textSelections;
- (void)setUsesFontLeading:(BOOL)usesFontLeading;
- (void)setUsesHyphenation:(BOOL)usesHyphenation;
- (void)setViewProvider:(id)a3 forTextAttachment:(id)a4 location:(id)a5;
- (void)synchronize;
- (void)textContainerChangedGeometry:(id)a3;
- (void)updateLayoutWithTextLayoutFragment:(id)a3 addition:(BOOL)a4;
- (void)willInvalidateTextAttachmentViewProvider:(id)a3 forTextAttachment:(id)a4;
@end

@implementation NSTextLayoutManager

- (id)_textContainerForCurrentEnumeratedElement
{
  activeEnumerationCache = self->_activeEnumerationCache;
  if (activeEnumerationCache && activeEnumerationCache->var6)
  {
    return activeEnumerationCache->var5;
  }

  else
  {
    return 0;
  }
}

- (NSTextRange)documentRange
{
  v3 = [(NSTextLayoutManager *)self textContentManager];
  if (v3)
  {

    return [(NSTextContentManager *)v3 documentRange];
  }

  else
  {
    NSLog(@"%@: .documentRange called while .textContentManager is nil.", self);
    if (NSTextLayoutManagerBreakOnNilContentManager_onceToken != -1)
    {
      NSTextLayoutManagerBreakOnNilContentManager_cold_1();
    }

    v5 = [[NSTextRange alloc] initWithLocation:+[NSNotATextLocation notATextLocation]];

    return v5;
  }
}

- (id)delegate
{
  objc_sync_enter(self);
  Weak = objc_loadWeak(&self->_delegate);
  objc_sync_exit(self);
  return Weak;
}

- (BOOL)usesContiguousLayout
{
  objc_sync_enter(self);
  TextContainerEntryAtIndex = __NSTextLayoutManagerGetTextContainerEntryAtIndex(self, 0x7FFFFFFFFFFFFFFFuLL, 1);
  if (TextContainerEntryAtIndex)
  {
    v4 = *TextContainerEntryAtIndex;
    [*TextContainerEntryAtIndex size];
    v6 = v5 > 0.0 && v5 < 10000000.0 || -[NSTextLayoutManager hasNonSimpleRectangularTextContainer](self, "hasNonSimpleRectangularTextContainer") || [v4 maximumNumberOfLines] != 0;
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(self);
  return v6;
}

- (id)_textParagraphForEmptyDocument
{
  objc_sync_enter(self);
  textParagraphForEmptyDocument = self->_textParagraphForEmptyDocument;
  if (!textParagraphForEmptyDocument)
  {
    v4 = [(NSArray *)[(NSTextLayoutManager *)self textSelections] firstObject];
    if (v4)
    {
      v5 = [v4 typingAttributes];
    }

    else
    {
      v5 = [(NSTextContainer *)[(NSTextLayoutManager *)self textContainer] attributesForExtraLineFragment];
    }

    v6 = v5;
    v7 = [NSTextParagraph alloc];
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F8];
    }

    textParagraphForEmptyDocument = [(NSTextParagraph *)v7 initWithString:&stru_1F01AD578 attributes:v8];
    v9 = [(NSTextLayoutManager *)self textContentManager];
    [(NSTextElement *)textParagraphForEmptyDocument setTextContentManager:v9];
    [(NSTextParagraph *)textParagraphForEmptyDocument setElementRange:[(NSTextContentManager *)v9 documentRange]];
    [(NSTextParagraph *)textParagraphForEmptyDocument setParagraphContentRange:[(NSTextContentManager *)v9 documentRange]];
    [(NSTextParagraph *)textParagraphForEmptyDocument setParagraphSeparatorRange:[(NSTextContentManager *)v9 documentRange]];
    self->_textParagraphForEmptyDocument = textParagraphForEmptyDocument;
  }

  objc_sync_exit(self);
  return textParagraphForEmptyDocument;
}

- (CGRect)usageBoundsForLastTextContainer
{
  [(NSTextLayoutManager *)self usageBoundsInTextContainerAtIndex:0x7FFFFFFFFFFFFFFFLL];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (int64_t)_fallbackWritingDirection
{
  result = self->_fallbackBaseWritingDirection;
  if (result == -1)
  {
    v4 = objc_opt_class();
    v5 = [(NSTextLayoutManager *)self applicationFrameworkContext];

    return [v4 _fallbackBaseWritingDirectionForApplicationFrameworkContext:v5];
  }

  return result;
}

- (NSTextLayoutManager)init
{
  v5.receiver = self;
  v5.super_class = NSTextLayoutManager;
  v2 = [(NSTextLayoutManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NSTextLayoutManager *)v2 _commonInit];
    v3->_usesHyphenation = [objc_opt_class() usesHyphenation];
    v3->_rendersBackgroundColorAttribute = 1;
  }

  return v3;
}

- (void)_commonInit
{
  self->_applicationFrameworkContext = _NSTextScalingTypeForCurrentEnvironment();
  self->_usesFontLeading = 1;
  self->_fallbackBaseWritingDirection = -1;
  self->_resolvesNaturalAlignmentWithBaseWritingDirection = 1;
}

+ (BOOL)usesHyphenation
{
  if (usesHyphenation_onceToken != -1)
  {
    +[NSTextLayoutManager usesHyphenation];
  }

  return usesHyphenation_hyphenationEnabled;
}

uint64_t __38__NSTextLayoutManager_usesHyphenation__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  usesHyphenation_hyphenationEnabled = result;
  return result;
}

- (NSArray)textContainers
{
  objc_sync_enter(self);
  if ([(NSTextLayoutManager *)self textContentManager])
  {
    v3 = self->_lastTextContainerEntry.textContainer ? -1 : 0;
    if (self->_textContainerEntriesCount == v3)
    {
      [(NSTextLayoutManager *)self _addTextContainerForLocation:[(NSTextRange *)[(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange] location]];
    }
  }

  textContainers = self->_textContainers;
  if (!textContainers)
  {
    textContainers = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (self->_lastTextContainerEntry.textContainer)
    {
      textContainerEntriesCount = self->_textContainerEntriesCount + 1;
    }

    else
    {
      textContainerEntriesCount = self->_textContainerEntriesCount;
    }

    if (textContainerEntriesCount)
    {
      v6 = 0;
      for (i = 0; i != textContainerEntriesCount; ++i)
      {
        if (self->_textContainerEntriesCount <= i)
        {
          if (self->_lastTextContainerEntry.textContainer)
          {
            p_lastTextContainerEntry = &self->_lastTextContainerEntry;
          }

          else
          {
            p_lastTextContainerEntry = 0;
          }
        }

        else
        {
          p_lastTextContainerEntry = &self->_textContainerEntries[v6];
        }

        [(NSArray *)textContainers addObject:p_lastTextContainerEntry->textContainer];
        ++v6;
      }
    }

    self->_textContainers = textContainers;
  }

  v9 = textContainers;
  objc_sync_exit(self);
  return v9;
}

- (NSTextContainer)textContainer
{
  v2 = [(NSTextLayoutManager *)self textContainers];

  return [(NSArray *)v2 lastObject];
}

- (NSTextViewportLayoutController)textViewportLayoutController
{
  v2 = [(NSTextLayoutManager *)self textContainer];

  return [(NSTextContainer *)v2 textViewportLayoutController];
}

- (BOOL)hasNonSimpleRectangularTextContainer
{
  objc_sync_enter(self);
  if (([objc_loadWeak(&self->_textContentManager) _hasAnchoredTextAttachments] & 1) != 0 || (templateTextContainer = self->_templateTextContainer) != 0 && !-[NSTextContainer isSimpleRectangularTextContainer](templateTextContainer, "isSimpleRectangularTextContainer") || self->_delegateWithSimpleTextContainerQuery && !objc_msgSend(-[NSTextLayoutManager delegate](self, "delegate"), "textLayoutManagerAllowsSimpleRectangularTextContainerOnly:", self))
  {
LABEL_20:
    v8 = 1;
    goto LABEL_21;
  }

  if (self->_lastTextContainerEntry.textContainer)
  {
    textContainerEntriesCount = self->_textContainerEntriesCount + 1;
  }

  else
  {
    textContainerEntriesCount = self->_textContainerEntriesCount;
  }

  if (textContainerEntriesCount)
  {
    v5 = 0;
    for (i = 0; i != textContainerEntriesCount; ++i)
    {
      if (self->_textContainerEntriesCount <= i)
      {
        v7 = self->_lastTextContainerEntry.textContainer ? &self->_lastTextContainerEntry : 0;
      }

      else
      {
        v7 = &self->_textContainerEntries[v5];
      }

      if (v7->textContainer && ![(NSTextContainer *)v7->textContainer isSimpleRectangularTextContainer])
      {
        goto LABEL_20;
      }

      ++v5;
    }
  }

  v8 = 0;
LABEL_21:
  objc_sync_exit(self);
  return v8;
}

- (void)_invalidateTextParagraphForEmptyDocument
{
  objc_sync_enter(self);
  if (self->_textParagraphForEmptyDocument)
  {
    if ([-[NSMapTable objectForKey:](self->_textLayoutFragmentTable "objectForKey:"count"")])
    {
      if (self->_textContainerEntriesCount)
      {
        textContainerEntries = self->_textContainerEntries;
      }

      else
      {
        textContainerEntries = self->_lastTextContainerEntry.textContainer ? &self->_lastTextContainerEntry : 0;
      }

      [(NSMapTable *)self->_textLayoutFragmentTable removeObjectForKey:self->_textParagraphForEmptyDocument];
      if (textContainerEntries)
      {
        textContainerEntries->var5 = 0;
        if (![(NSMapTable *)self->_textLayoutFragmentTable count])
        {
          v4 = *(MEMORY[0x1E695F058] + 16);
          textContainerEntries->var3.origin = *MEMORY[0x1E695F058];
          textContainerEntries->var3.size = v4;
        }
      }
    }

    self->_textParagraphForEmptyDocument = 0;
  }

  objc_sync_exit(self);
}

- (BOOL)isCountableDataSource
{
  v2 = [(NSTextLayoutManager *)self textContentManager];

  return [(NSTextContentManager *)v2 isCountableDataSource];
}

- (id)baseLocation
{
  v2 = [(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange];

  return [(NSTextRange *)v2 location];
}

- (int64_t)applicationFrameworkContext
{
  objc_sync_enter(self);
  applicationFrameworkContext = self->_applicationFrameworkContext;
  objc_sync_exit(self);
  return applicationFrameworkContext;
}

- (BOOL)lastContainerFilled
{
  objc_sync_enter(self);
  if ((self->_textContainerEntriesCount & 0x8000000000000000) != 0)
  {
    textContainerEntries = self->_textContainerEntries;
    var0 = textContainerEntries[-1].var0;
    p_lastTextContainerEntry = &textContainerEntries[-1];
    textContainer = var0;
  }

  else
  {
    p_lastTextContainerEntry = &self->_lastTextContainerEntry;
    textContainer = self->_lastTextContainerEntry.textContainer;
    if (!textContainer)
    {
LABEL_9:
      containerFilled = 0;
      goto LABEL_10;
    }
  }

  [(NSTextContainer *)textContainer size];
  if ((v7 <= 0.0 || v7 >= 10000000.0) && ![(NSTextContainer *)p_lastTextContainerEntry->textContainer maximumNumberOfLines])
  {
    goto LABEL_9;
  }

  containerFilled = p_lastTextContainerEntry->containerFilled;
LABEL_10:
  objc_sync_exit(self);
  return containerFilled;
}

- (int64_t)maximumNumberOfLinesForLastContainer
{
  objc_sync_enter(self);
  TextContainerEntryAtIndex = __NSTextLayoutManagerGetTextContainerEntryAtIndex(self, 0x7FFFFFFFFFFFFFFFuLL, 1);
  if (TextContainerEntryAtIndex)
  {
    v4 = [*TextContainerEntryAtIndex maximumNumberOfLines];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(self);
  return v4;
}

- (BOOL)usesFontLeading
{
  objc_sync_enter(self);
  usesFontLeading = self->_usesFontLeading;
  objc_sync_exit(self);
  return usesFontLeading;
}

- (BOOL)allowsFontSubstitutionAffectingVerticalMetrics
{
  objc_sync_enter(self);
  allowsFontSubstitutionAffectingVerticalMetrics = self->_allowsFontSubstitutionAffectingVerticalMetrics;
  objc_sync_exit(self);
  return allowsFontSubstitutionAffectingVerticalMetrics;
}

- (BOOL)limitsLayoutForSuspiciousContents
{
  objc_sync_enter(self);
  limitsLayoutForSuspiciousContents = self->_limitsLayoutForSuspiciousContents;
  objc_sync_exit(self);
  return limitsLayoutForSuspiciousContents;
}

- (BOOL)usesHyphenation
{
  objc_sync_enter(self);
  usesHyphenation = self->_usesHyphenation;
  objc_sync_exit(self);
  return usesHyphenation;
}

- (NSArray)textSelections
{
  objc_sync_enter(self);
  v3 = self->_textSelections;
  objc_sync_exit(self);
  return v3;
}

- (BOOL)canSendViewProviderInvalidationNotification
{
  if ([(NSTextLayoutManager *)self _delegateCanSendViewProviderInvalidationNotification])
  {
    return 1;
  }

  return [(NSTextLayoutManager *)self _platformDelegateCanSendViewProviderInvalidationNotification];
}

- (NSTextSelectionNavigation)textSelectionNavigation
{
  objc_sync_enter(self);
  textSelectionNavigation = self->_textSelectionNavigation;
  if (!textSelectionNavigation)
  {
    textSelectionNavigation = [[NSTextSelectionNavigation alloc] initWithDataSource:self];
    self->_textSelectionNavigation = textSelectionNavigation;
  }

  objc_sync_exit(self);
  return textSelectionNavigation;
}

- (id)_currentTextLayoutFragmentEnumerated
{
  activeEnumerationCache = self->_activeEnumerationCache;
  if (activeEnumerationCache)
  {
    return activeEnumerationCache->var0;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_numberOfLinesToCurrentlyEnumeratedTextLayoutFragment
{
  activeEnumerationCache = self->_activeEnumerationCache;
  if (activeEnumerationCache && activeEnumerationCache->var0)
  {
    return activeEnumerationCache->var3;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  objc_storeWeak(&self->_textContentManager, 0);

  __NSTextLayoutManagerClearTextContainerEntry(&self->_lastTextContainerEntry);
  for (i = self->_textContainerEntriesCount; i; i = self->_textContainerEntriesCount)
  {
    v4 = i - 1;
    self->_textContainerEntriesCount = v4;
    __NSTextLayoutManagerClearTextContainerEntry(&self->_textContainerEntries[v4]);
  }

  textContainerEntries = self->_textContainerEntries;
  if (textContainerEntries)
  {
    NSZoneFree(0, textContainerEntries);
  }

  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_platformDelegate, 0);

  v6.receiver = self;
  v6.super_class = NSTextLayoutManager;
  [(NSTextLayoutManager *)&v6 dealloc];
}

- (BOOL)_appendTextContainer
{
  textContainer = self->_lastTextContainerEntry.textContainer;
  textContainerEntriesCount = self->_textContainerEntriesCount;
  if ((textContainerEntriesCount & 0x8000000000000000) != 0)
  {
    p_lastTextContainerEntry = &self->_textContainerEntries[-1];
  }

  else if (textContainer)
  {
    p_lastTextContainerEntry = &self->_lastTextContainerEntry;
  }

  else
  {
    p_lastTextContainerEntry = 0;
  }

  if (-[NSTextLayoutManager applicationFrameworkContext](self, "applicationFrameworkContext") == 2 && (-[NSTextLayoutManager templateTextContainer](self, "templateTextContainer") || self->_delegateWithTextContainerQuery) && p_lastTextContainerEntry && -[NSTextContainer lineBreakMode](p_lastTextContainerEntry->textContainer, "lineBreakMode") <= NSLineBreakByCharWrapping && p_lastTextContainerEntry->containerFilled && -[NSTextRange isNotEmpty](p_lastTextContainerEntry->textRange, "isNotEmpty") && [-[NSTextRange endLocation](p_lastTextContainerEntry->textRange "endLocation")] == -1)
  {
    [(NSTextLayoutManager *)self _addTextContainerForLocation:[(NSTextRange *)p_lastTextContainerEntry->textRange endLocation]];
  }

  if (textContainer)
  {
    v6 = textContainerEntriesCount + 1;
  }

  else
  {
    v6 = textContainerEntriesCount;
  }

  v7 = self->_textContainerEntriesCount;
  if (self->_lastTextContainerEntry.textContainer)
  {
    ++v7;
  }

  return v7 > v6;
}

- (NSTextLineFragment)_extraTextLineFragment
{
  v3 = [(NSTextRange *)[(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange] endLocation];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__NSTextLayoutManager__extraTextLineFragment__block_invoke;
  v6[3] = &unk_1E72661E8;
  v6[4] = v3;
  v6[5] = &v7;
  [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage enumerateTextLayoutFragmentFromLocation:v3 options:1 usingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __45__NSTextLayoutManager__extraTextLineFragment__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  result = [objc_msgSend(a3 "endLocation")];
  if (result)
  {
    result = [a2 state];
    if (result == 3)
    {
      v8 = [a2 textLineFragments];
      result = [v8 count];
      if (result >= 2)
      {
        result = [objc_msgSend(v8 "lastObject")];
        if (!v9)
        {
          result = [v8 lastObject];
          *(*(*(a1 + 40) + 8) + 40) = result;
        }
      }
    }
  }

  *a4 = 1;
  return result;
}

+ (BOOL)_throwsOnAssertionError
{
  v2 = __NSTextLayoutManagerThrowsExceptionOnAssertionError;
  if (__NSTextLayoutManagerThrowsExceptionOnAssertionError < 0)
  {
    v2 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    __NSTextLayoutManagerThrowsExceptionOnAssertionError = v2;
  }

  return v2 != 0;
}

+ (BOOL)_validatesInternalCaches
{
  v2 = __NSTextLayoutManagerValidatesInternalCaches;
  if (__NSTextLayoutManagerValidatesInternalCaches < 0)
  {
    v2 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    __NSTextLayoutManagerValidatesInternalCaches = v2;
  }

  return v2 != 0;
}

- (BOOL)_validateTextContainerEntries
{
  v3 = [objc_opt_class() _throwsOnAssertionError];
  p_textContainerEntries = &self->_textContainerEntries;
  textContainerEntriesSize = self->_textContainerEntriesSize;
  v6 = (textContainerEntriesSize != 0) ^ (self->_textContainerEntries == 0);
  v7 = v3 ^ 1;
  if ((textContainerEntriesSize != 0) == (self->_textContainerEntries == 0) && ((v3 ^ 1) & 1) == 0)
  {
    [(NSTextLayoutManager *)&self->_textContainerEntries _validateTextContainerEntries];
    v6 = 0;
    textContainerEntriesSize = v15;
  }

  v8 = self->_textContainerEntriesCount >= textContainerEntriesSize;
  result = v8 && v6;
  if (!(v8 | v7 & 1))
  {
    [(NSTextLayoutManager *)&self->_textContainerEntriesSize _validateTextContainerEntries];
    result = 0;
  }

  textContainerEntriesAccessHint = self->_textContainerEntriesAccessHint;
  if (textContainerEntriesAccessHint)
  {
    if (textContainerEntriesAccessHint < *p_textContainerEntries)
    {
      if (!v3)
      {
        return 0;
      }

LABEL_23:
      [(NSTextLayoutManager *)&self->_textContainerEntriesAccessHint _validateTextContainerEntries];
      return 0;
    }

    textContainerEntriesCount = self->_textContainerEntriesCount;
    if (textContainerEntriesCount)
    {
      v12 = &(*p_textContainerEntries)[textContainerEntriesCount] > textContainerEntriesAccessHint;
    }

    else
    {
      v12 = 1;
    }

    v13 = v12;
    v14 = v13 | v7;
    if (!v12)
    {
      result = 0;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  return result;
}

- (void)_configureCoreTypesetter:(id)a3 forTextParagraph:(id)a4 textContainer:(id)a5
{
  [a3 setApplicationFrameworkContext:{-[NSTextLayoutManager applicationFrameworkContext](self, "applicationFrameworkContext")}];
  [a3 setUsesFontLeading:{-[NSTextLayoutManager usesFontLeading](self, "usesFontLeading")}];
  [a3 setUsesDefaultHyphenation:{-[NSTextLayoutManager usesHyphenation](self, "usesHyphenation")}];
  [a3 setAllowsFontSubstitutionAffectingVerticalMetrics:{-[NSTextLayoutManager allowsFontSubstitutionAffectingVerticalMetrics](self, "allowsFontSubstitutionAffectingVerticalMetrics")}];
  [a3 setLimitsLayoutForSuspiciousContents:{-[NSTextLayoutManager limitsLayoutForSuspiciousContents](self, "limitsLayoutForSuspiciousContents")}];
  [a3 set_extraLineFragmentAttributes:{objc_msgSend(a4, "attributes")}];
  [a3 setDefaultParagraphStyle:{objc_msgSend(a5, "defaultParagraphStyle")}];
  if (a4)
  {
    v9 = [objc_msgSend(objc_msgSend(a4 "elementRange")];
  }

  else
  {
    v9 = 1;
  }

  [a3 setBeginningOfDocument:v9];
  [a3 setBreaksLinesForInteractiveText:{-[NSTextLayoutManager breaksLinesForInteractiveText](self, "breaksLinesForInteractiveText")}];
  resolvesNaturalAlignmentWithBaseWritingDirection = self->_resolvesNaturalAlignmentWithBaseWritingDirection;

  [a3 setResolvesNaturalAlignmentWithBaseWritingDirection:resolvesNaturalAlignmentWithBaseWritingDirection];
}

- (double)_estimatedVerticalSizeForTextRange:(id)a3 adjustedTextRange:(id *)a4
{
  v7 = [(NSTextLayoutManager *)self textContentManager];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  v8 = [objc_opt_class() maximumNumberOfSeedElements];
  v9 = [a3 location];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__NSTextLayoutManager__estimatedVerticalSizeForTextRange_adjustedTextRange___block_invoke;
  v20[3] = &unk_1E7265F78;
  v20[6] = v33;
  v20[7] = &v27;
  v20[4] = a3;
  v20[5] = self;
  v20[8] = &v34;
  v20[9] = &v21;
  v20[10] = v8;
  [(NSTextContentManager *)v7 enumerateTextElementsFromLocation:v9 options:0 usingBlock:v20];
  v10 = v22[5];
  if (v10 && [v10 compare:{objc_msgSend(a3, "endLocation")}] == -1)
  {
    v11 = v28[5];
    if (!v11)
    {
      v11 = [a3 location];
    }

    v12 = [(NSTextContentManager *)v7 offsetFromLocation:v11 toLocation:v22[5]];
    if (v12)
    {
      v13 = -[NSTextContentManager offsetFromLocation:toLocation:](v7, "offsetFromLocation:toLocation:", [a3 location], objc_msgSend(a3, "endLocation"));
      v35[3] = v13 / v12 * v35[3];
    }
  }

  if (v22[5] || v28[5])
  {
    if (a4)
    {
      v14 = [NSTextRange alloc];
      v15 = v28[5];
      if (!v15)
      {
        v15 = [a3 location];
      }

      v16 = v22[5];
      if (!v16)
      {
        v16 = [a3 endLocation];
      }

      v17 = [(NSTextRange *)v14 initWithLocation:v15 endLocation:v16];
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      *a4 = v17;
    }
  }

  v18 = v35[3];
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v34, 8);
  return v18;
}

BOOL __76__NSTextLayoutManager__estimatedVerticalSizeForTextRange_adjustedTextRange___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 elementRange];
  v5 = v4;
  if (!*(*(*(a1 + 48) + 8) + 24) && ([objc_msgSend(v4 "location")] & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 40) = [v5 location];
  }

  v6 = [objc_msgSend(v5 "endLocation")];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 24) + 1;
  *(v7 + 24) = v8;
  if (v8 >= *(a1 + 80))
  {
    v10 = 0;
LABEL_10:
    if (v6)
    {
      *(*(*(a1 + 72) + 8) + 40) = [v5 location];
    }

    return v10;
  }

  if ([objc_msgSend(v5 "location")] == -1)
  {
    [a2 estimatedIntrinsicContentSizeForTextLayoutManager:*(a1 + 40)];
    *(*(*(a1 + 64) + 8) + 24) = v9 + *(*(*(a1 + 64) + 8) + 24);
  }

  v10 = v6 == -1;
  if (v6 != -1)
  {
    goto LABEL_10;
  }

  return v10;
}

- (BOOL)_setSoftInvalidationLocation:(id)a3 onlyIfUpstream:(BOOL)a4
{
  if (a3 && a4 && self->_softInvalidationLocation && [a3 compare:?] != -1)
  {
    v6 = 0;
    softInvalidationLocation = self->_softInvalidationLocation;
  }

  else
  {

    softInvalidationLocation = a3;
    self->_softInvalidationLocation = softInvalidationLocation;
    v6 = 1;
  }

  if ([(NSTextLocation *)softInvalidationLocation isEqual:[(NSTextRange *)[(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange] endLocation]])
  {

    self->_softInvalidationLocation = 0;
  }

  return v6;
}

- (id)_textViewportLayoutControllerForTextContainer:(id)a3
{
  v5 = [(NSTextLayoutManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [v5 textLayoutManager:self textViewportLayoutControllerForTextContainer:a3]) == 0)
  {
    v7 = [objc_alloc(objc_msgSend(objc_opt_class() "viewportLayoutControllerClass"))];

    return v7;
  }

  return result;
}

- (id)companionLayoutManager
{
  objc_sync_enter(self);
  if (!self->_companion)
  {
    self->_companion = objc_alloc_init([objc_opt_class() companionLayoutManagerClass]);
  }

  objc_sync_exit(self);
  return self->_companion;
}

+ (id)validRenderingAttributes
{
  if (validRenderingAttributes_onceToken != -1)
  {
    +[NSTextLayoutManager validRenderingAttributes];
  }

  return validRenderingAttributes_renderingAttributes;
}

uint64_t __47__NSTextLayoutManager_validRenderingAttributes__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  result = [v0 initWithObjects:{@"NSColor", @"NSBackgroundColor", @"NSShadow", @"NSTextEffect", @"NSLink", @"NSTextAlternatives", @"NSSpellingState", @"NSTextAlternativesDisplayStyle", NSTemporaryTextCorrectionAttributeName, 0}];
  validRenderingAttributes_renderingAttributes = result;
  return result;
}

- (NSTextLayoutManager)initWithCoder:(NSCoder *)coder
{
  [(NSTextLayoutManager *)self _commonInit];
  if ([(NSCoder *)coder allowsKeyedCoding])
  {
    v5 = [(NSCoder *)coder decodeInt32ForKey:@"NS.flags"];
    [(NSTextLayoutManager *)self setDelegate:[(NSCoder *)coder decodeObjectForKey:@"NS.delegate"]];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    -[NSTextLayoutManager setTextContentManager:](self, "setTextContentManager:", -[NSCoder decodeObjectOfClasses:forKey:](coder, "decodeObjectOfClasses:forKey:", [v6 setWithObjects:{v7, objc_opt_class(), 0}], @"NS.textContentManager"));
    [(NSTextLayoutManager *)self setTemplateTextContainer:[(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.templateTextContainer"]];
    [(NSTextLayoutManager *)self setLayoutQueue:[(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.layoutQueue"]];
    self->_usesFontLeading = v5 & 1;
    v8 = *&vshl_u16((*&vdup_n_s16(v5) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
    *&self->_limitsLayoutForSuspiciousContents = vuzp1_s8(v8, v8).u32[0];
    v9 = [(NSCoder *)coder decodeObjectForKey:@"NS.firstTextContainer"];
    if (v9)
    {
      __NSTextLayoutManagerAddTextContainerEntry(self, v9);
    }

    if ([(NSCoder *)coder containsValueForKey:@"NS.resolvesNaturalAlignmentWithBaseWritingDirection"])
    {
      self->_resolvesNaturalAlignmentWithBaseWritingDirection = [(NSCoder *)coder decodeBoolForKey:@"NS.resolvesNaturalAlignmentWithBaseWritingDirection"];
    }
  }

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v5 = [(NSTextLayoutManager *)self textContentManager];
    v6 = [(NSTextLayoutManager *)self delegate];
    if (v6)
    {
      [a3 encodeObject:v6 forKey:@"NS.delegate"];
    }

    if (v5)
    {
      [a3 encodeObject:v5 forKey:@"NS.textContentManager"];
    }

    templateTextContainer = self->_templateTextContainer;
    if (templateTextContainer)
    {
      [a3 encodeObject:templateTextContainer forKey:@"NS.templateTextContainer"];
    }

    layoutQueue = self->_layoutQueue;
    if (layoutQueue)
    {
      [a3 encodeObject:layoutQueue forKey:@"NS.layoutQueue"];
    }

    usesFontLeading = self->_usesFontLeading;
    if (self->_limitsLayoutForSuspiciousContents)
    {
      usesFontLeading |= 2u;
    }

    if (self->_usesHyphenation)
    {
      usesFontLeading |= 4u;
    }

    if (self->_allowsFontSubstitutionAffectingVerticalMetrics)
    {
      usesFontLeading |= 8u;
    }

    if (self->_breaksLinesForInteractiveText)
    {
      v10 = usesFontLeading | 0x10;
    }

    else
    {
      v10 = usesFontLeading;
    }

    if (v10)
    {
      [a3 encodeInt32:v10 forKey:@"NS.flags"];
    }

    p_textContainer = &self->_lastTextContainerEntry.textContainer;
    textContainer = self->_lastTextContainerEntry.textContainer;
    textContainerEntriesCount = self->_textContainerEntriesCount;
    if (textContainer)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    if (textContainerEntriesCount != v14)
    {
      if (textContainerEntriesCount)
      {
        p_textContainer = &self->_textContainerEntries->var0;
      }

      else if (!textContainer)
      {
        p_textContainer = 0;
      }

      if (*p_textContainer)
      {
        [a3 encodeObject:*p_textContainer forKey:@"NS.firstTextContainer"];
      }
    }

    resolvesNaturalAlignmentWithBaseWritingDirection = self->_resolvesNaturalAlignmentWithBaseWritingDirection;

    [a3 encodeBool:resolvesNaturalAlignmentWithBaseWritingDirection forKey:@"NS.resolvesNaturalAlignmentWithBaseWritingDirection"];
  }
}

- (void)setUsesFontLeading:(BOOL)usesFontLeading
{
  v3 = usesFontLeading;
  objc_sync_enter(self);
  if (self->_usesFontLeading != v3)
  {
    self->_usesFontLeading = v3;
    [(NSTextLayoutManager *)self invalidateLayoutForRange:[(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange]];
  }

  objc_sync_exit(self);
}

- (void)setLimitsLayoutForSuspiciousContents:(BOOL)limitsLayoutForSuspiciousContents
{
  v3 = limitsLayoutForSuspiciousContents;
  objc_sync_enter(self);
  if (self->_limitsLayoutForSuspiciousContents != v3)
  {
    self->_limitsLayoutForSuspiciousContents = v3;
    [(NSTextLayoutManager *)self invalidateLayoutForRange:[(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange]];
  }

  objc_sync_exit(self);
}

- (void)setUsesHyphenation:(BOOL)usesHyphenation
{
  v3 = usesHyphenation;
  objc_sync_enter(self);
  if (self->_usesHyphenation != v3)
  {
    self->_usesHyphenation = v3;
    [(NSTextLayoutManager *)self invalidateLayoutForRange:[(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange]];
  }

  objc_sync_exit(self);
}

- (void)setAllowsFontSubstitutionAffectingVerticalMetrics:(BOOL)a3
{
  v3 = a3;
  objc_sync_enter(self);
  if (self->_allowsFontSubstitutionAffectingVerticalMetrics != v3)
  {
    self->_allowsFontSubstitutionAffectingVerticalMetrics = v3;
    [(NSTextLayoutManager *)self invalidateLayoutForRange:[(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange]];
  }

  objc_sync_exit(self);
}

- (void)setTextSelections:(NSArray *)textSelections
{
  objc_sync_enter(self);
  v5 = self->_textSelections;
  if (v5 != textSelections && ![(NSArray *)v5 isEqualToArray:textSelections])
  {
    if (!self->_delegateWithTextSelectionNotification || (v6 = [objc_loadWeak(&self->_delegate) textLayoutManager:self willChangeFromTextSelections:self->_textSelections toTextSelections:textSelections], !-[NSArray count](v6, "count")) || (v7 = self->_textSelections, v7 != v6) && (textSelections = v6, !-[NSArray isEqualToArray:](v7, "isEqualToArray:", v6)))
    {
      [(NSTextLayoutManager *)self willChangeValueForKey:@"textSelections"];

      self->_textSelections = [(NSArray *)textSelections copy];
      textParagraphForEmptyDocument = self->_textParagraphForEmptyDocument;
      if (textParagraphForEmptyDocument && !-[NSDictionary isEqualToDictionary:](-[NSTextParagraph attributes](textParagraphForEmptyDocument, "attributes"), "isEqualToDictionary:", [-[NSArray firstObject](self->_textSelections "firstObject")]))
      {
        [(NSTextLayoutManager *)self _invalidateTextParagraphForEmptyDocument];
      }

      v9 = [(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange];
      v10 = v9;
      if (v9)
      {
        if (![(NSTextRange *)v9 isEmpty])
        {
          v11 = [objc_msgSend(-[NSArray firstObject](self->_textSelections "firstObject")];
          v12 = v11;
          if (v11)
          {
            if ([v11 isEmpty])
            {
              if ([-[NSTextRange endLocation](v10 "endLocation")])
              {
                v13 = [(NSTextLayoutManager *)self _extraTextLineFragment];
                if (v13)
                {
                  v14 = [-[NSArray firstObject](self->_textSelections "firstObject")];
                  if ([v14 count])
                  {
                    if (([v14 isEqualToDictionary:{-[NSTextLayoutFragment extraLineFragmentAttributes](-[NSTextLineFragment textLayoutFragment](v13, "textLayoutFragment"), "extraLineFragmentAttributes")}] & 1) == 0)
                    {
                      [(NSTextLayoutFragment *)[(NSTextLineFragment *)[(NSTextLayoutManager *)self _extraTextLineFragment] textLayoutFragment] invalidateExtraLineFragment];
                    }
                  }
                }
              }
            }
          }
        }
      }

      [(NSTextLayoutManager *)self didChangeValueForKey:@"textSelections"];
    }
  }

  objc_sync_exit(self);
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  if ([a3 isEqualToString:@"textSelections"])
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___NSTextLayoutManager;
  return objc_msgSendSuper2(&v6, sel_automaticallyNotifiesObserversForKey_, a3);
}

- (void)setDelegate:(id)delegate
{
  objc_sync_enter(self);
  if (objc_loadWeak(&self->_delegate) != delegate)
  {
    objc_storeWeak(&self->_delegate, delegate);
    self->_delegateWithTextSelectionNotification = objc_opt_respondsToSelector() & 1;
    v5 = objc_opt_respondsToSelector();
    self->_delegateWithTextContainerQuery = v5 & 1;
    if (v5)
    {
      v6 = objc_opt_respondsToSelector();
    }

    else
    {
      v6 = 0;
    }

    self->_delegateWithSimpleTextContainerQuery = v6 & 1;
    self->_delegateWithTruncationToken = objc_opt_respondsToSelector() & 1;
    self->_delegateWithViewProviderInvalidationNotification = objc_opt_respondsToSelector() & 1;
    self->_delegateWithCachedViewProviderForTextAttachment = objc_opt_respondsToSelector() & 1;
  }

  objc_sync_exit(self);
}

- (id)platformDelegate
{
  objc_sync_enter(self);
  Weak = objc_loadWeak(&self->_platformDelegate);
  objc_sync_exit(self);
  return Weak;
}

- (void)setPlatformDelegate:(id)a3
{
  objc_sync_enter(self);
  if (objc_loadWeak(&self->_platformDelegate) != a3)
  {
    objc_storeWeak(&self->_platformDelegate, a3);
    self->_platformDelegateWithViewProviderInvalidationNotification = objc_opt_respondsToSelector() & 1;
    self->_platformDelegateWithCachedViewProviderForTextAttachment = objc_opt_respondsToSelector() & 1;
  }

  objc_sync_exit(self);
}

- (void)setTextContentManager:(id)a3
{
  if (objc_loadWeak(&self->_textContentManager) != a3)
  {
    v5 = [objc_loadWeak(&self->_textContentManager) documentRange];
    if ([v5 isNotEmpty])
    {
      [(NSTextLayoutManager *)self _invalidateLayoutForTextRange:v5 hard:1];
      [(NSTextLayoutManager *)self invalidateTemporaryAttributesForTextRange:v5];
    }

    objc_storeWeak(&self->_textContentManager, a3);
    v6 = [(NSTextLayoutManager *)self textContainers];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__NSTextLayoutManager_setTextContentManager___block_invoke;
    v7[3] = &unk_1E7265FA0;
    v7[4] = self;
    [(NSArray *)v6 enumerateObjectsUsingBlock:v7];
  }
}

uint64_t __45__NSTextLayoutManager_setTextContentManager___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 textLayoutManager];
  if (result == *(a1 + 32))
  {

    return [a2 setTextLayoutManager:?];
  }

  return result;
}

- (void)replaceTextContentManager:(NSTextContentManager *)textContentManager
{
  objc_sync_enter(self);
  v5 = self;
  [(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] removeTextLayoutManager:self];
  [(NSTextContentManager *)textContentManager addTextLayoutManager:self];

  objc_sync_exit(self);
}

- (void)setApplicationFrameworkContext:(int64_t)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    a3 = _NSTextScalingTypeForCurrentEnvironment();
  }

  self->_applicationFrameworkContext = a3;

  objc_sync_exit(self);
}

- (void)_addTextContainer:(id)a3
{
  [(NSTextLayoutManager *)self willChangeValueForKey:@"textContainers"];
  objc_sync_enter(self);
  __NSTextLayoutManagerAddTextContainerEntry(self, a3);

  self->_textContainers = 0;
  objc_sync_exit(self);

  [(NSTextLayoutManager *)self didChangeValueForKey:@"textContainers"];
}

- (void)_addTextContainerForLocation:(id)a3
{
  if (self->_delegateWithTextContainerQuery)
  {
    v4 = [-[NSTextLayoutManager delegate](self "delegate")];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5 || (v5 = [(NSTextContainer *)[(NSTextLayoutManager *)self templateTextContainer] copy]) != 0)
  {
    v6 = v5;
    [(NSTextLayoutManager *)self _addTextContainer:v5];
  }
}

- (void)_removeTextContainer
{
  objc_sync_enter(self);
  if (self->_lastTextContainerEntry.textContainer)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (self->_textContainerEntriesCount != v3)
  {
    __NSTextLayoutManagerClearTextContainerEntry(&self->_lastTextContainerEntry);
    textContainerEntriesCount = self->_textContainerEntriesCount;
    if (textContainerEntriesCount)
    {
      v5 = textContainerEntriesCount - 1;
      self->_textContainerEntriesCount = v5;
      v6 = &self->_textContainerEntries[v5];
      *&self->_lastTextContainerEntry.textContainer = *&v6->var0;
      v7 = *&v6->var2;
      v8 = *&v6->var3.origin.y;
      v9 = *&v6->var3.size.height;
      *&self->_lastTextContainerEntry.containerFilled = *&v6->var5;
      *&self->_lastTextContainerEntry.usageBounds.origin.y = v8;
      *&self->_lastTextContainerEntry.usageBounds.size.height = v9;
      *&self->_lastTextContainerEntry.textRange = v7;
      self->_textContainerEntriesAccessHint = 0;
    }

    self->_textContainers = 0;
  }

  objc_sync_exit(self);
}

- (void)_removeTextContainersToCondition:(id)a3
{
  [(NSTextLayoutManager *)self willChangeValueForKey:@"textContainers"];
  objc_sync_enter(self);
  p_lastTextContainerEntry = &self->_lastTextContainerEntry;
  if (self->_lastTextContainerEntry.textContainer)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  if (self->_textContainerEntriesCount != v6)
  {
    do
    {
      if ((*(a3 + 2))(a3))
      {
        break;
      }

      __NSTextLayoutManagerClearTextContainerEntry(&self->_lastTextContainerEntry);
      textContainerEntriesCount = self->_textContainerEntriesCount;
      if (textContainerEntriesCount)
      {
        self->_textContainerEntriesCount = --textContainerEntriesCount;
        v8 = &self->_textContainerEntries[textContainerEntriesCount];
        *&p_lastTextContainerEntry->textContainer = *&v8->var0;
        v9 = *&v8->var2;
        v10 = *&v8->var3.origin.y;
        v11 = *&v8->var3.size.height;
        *&self->_lastTextContainerEntry.containerFilled = *&v8->var5;
        *&self->_lastTextContainerEntry.usageBounds.origin.y = v10;
        *&self->_lastTextContainerEntry.usageBounds.size.height = v11;
        *&self->_lastTextContainerEntry.textRange = v9;
        self->_textContainerEntriesAccessHint = 0;
      }

      v12 = p_lastTextContainerEntry->textContainer ? -1 : 0;
    }

    while (textContainerEntriesCount != v12);
  }

  self->_textContainers = 0;
  objc_sync_exit(self);

  [(NSTextLayoutManager *)self didChangeValueForKey:@"textContainers"];
}

- (void)_fillLayoutToLocation:(id)a3 enumerationCache:(id *)a4
{
  TextContainerEntryAndIndexForLocation = __NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation(self, a3);
  v8 = TextContainerEntryAndIndexForLocation;
  if (TextContainerEntryAndIndexForLocation && (softInvalidationLocation = *(TextContainerEntryAndIndexForLocation + 1)) != 0 || (softInvalidationLocation = [(NSTextRange *)[(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange] location], v8))
  {
    v10 = *(v8 + 2);
  }

  else
  {
    v10 = 0;
  }

  if (self->_softInvalidationLocation && [objc_msgSend(v10 "location")] == -1)
  {
    softInvalidationLocation = self->_softInvalidationLocation;
  }

  if ([(NSTextLocation *)softInvalidationLocation compare:a3]== -1)
  {
    v11 = [[NSTextRange alloc] initWithLocation:softInvalidationLocation endLocation:a3];
    a4->var8 = 1;
    [(NSTextLayoutManager *)self ensureLayoutForRange:v11];
    a4->var8 = 0;
  }
}

- (BOOL)allowsAddingTextContainer
{
  TextContainerEntryAtIndex = __NSTextLayoutManagerGetTextContainerEntryAtIndex(self, 0x7FFFFFFFFFFFFFFFuLL, 1);
  v4 = [(NSTextLayoutManager *)self usesContiguousLayout];
  result = 0;
  if (v4)
  {
    if (TextContainerEntryAtIndex)
    {
      return [*TextContainerEntryAtIndex lineBreakMode] < 2;
    }
  }

  return result;
}

- (id)textContainerForLocation:(id)a3
{
  objc_sync_enter(self);
  TextContainerEntryAndIndexForLocation = __NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation(self, a3);
  if (TextContainerEntryAndIndexForLocation)
  {
    v6 = *TextContainerEntryAndIndexForLocation;
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(self);
  return v6;
}

- (id)rangeForTextContainerAtIndex:(int64_t)a3
{
  objc_sync_enter(self);
  if (self->_textContainerEntriesCount <= a3)
  {
    p_lastTextContainerEntry = &self->_lastTextContainerEntry;
    if (self->_lastTextContainerEntry.textContainer)
    {
      goto LABEL_5;
    }

LABEL_6:
    textRange = 0;
    goto LABEL_7;
  }

  textContainerEntries = self->_textContainerEntries;
  if (!textContainerEntries)
  {
    goto LABEL_6;
  }

  p_lastTextContainerEntry = &textContainerEntries[a3];
LABEL_5:
  textRange = p_lastTextContainerEntry->textRange;
LABEL_7:
  objc_sync_exit(self);
  return textRange;
}

- (void)setTextContainer:(NSTextContainer *)textContainer
{
  objc_sync_enter(self);
  [(NSTextLayoutManager *)self _removeTextContainersToCondition:&__block_literal_global_143];
  [(NSTextLayoutManager *)self _addTextContainer:textContainer];

  objc_sync_exit(self);
}

- (CGRect)usageBoundsInTextContainerAtIndex:(int64_t)a3
{
  objc_sync_enter(self);
  v23 = 0;
  v24 = &v23;
  v25 = 0x4010000000;
  v26 = "";
  v5 = *(MEMORY[0x1E695F058] + 16);
  origin = *MEMORY[0x1E695F058];
  v28 = v5;
  if (self->_textContainerEntriesCount > a3)
  {
    textContainerEntries = self->_textContainerEntries;
    if (textContainerEntries)
    {
      p_lastTextContainerEntry = &textContainerEntries[a3];
      goto LABEL_5;
    }

LABEL_12:
    v12 = &v23;
    goto LABEL_14;
  }

  p_lastTextContainerEntry = &self->_lastTextContainerEntry;
  if (!self->_lastTextContainerEntry.textContainer)
  {
    goto LABEL_12;
  }

LABEL_5:
  size = p_lastTextContainerEntry->usageBounds.size;
  origin = p_lastTextContainerEntry->usageBounds.origin;
  v28 = size;
  v30.origin = origin;
  v30.size = size;
  v9 = CGRectEqualToRect(v30, *MEMORY[0x1E695F058]);
  if (p_lastTextContainerEntry == &self->_lastTextContainerEntry && v9)
  {
    startLocation = p_lastTextContainerEntry->startLocation;
    if (!startLocation)
    {
      startLocation = [objc_msgSend(objc_loadWeak(&self->_textContentManager) "documentRange")];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __57__NSTextLayoutManager_usageBoundsInTextContainerAtIndex___block_invoke;
    v22[3] = &unk_1E7265FE8;
    v22[4] = &v23;
    [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage enumerateTextLayoutFragmentFromLocation:startLocation options:2 usingBlock:v22];
    v12 = v24;
    v13 = *(v24 + 3);
    p_lastTextContainerEntry->usageBounds.origin = *(v24 + 2);
    p_lastTextContainerEntry->usageBounds.size = v13;
  }

  else
  {
    v12 = v24;
  }

LABEL_14:
  v14 = v12[4];
  v15 = v12[5];
  v16 = v12[6];
  v17 = v12[7];
  _Block_object_dispose(&v23, 8);
  objc_sync_exit(self);
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

void __57__NSTextLayoutManager_usageBoundsInTextContainerAtIndex___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 state] >= 2)
  {
    [a2 layoutFragmentFrame];
    v5 = v4;
    y = v6;
    width = v8;
    height = v10;
    v12 = CGRectEqualToRect(*(*(*(a1 + 32) + 8) + 32), *MEMORY[0x1E695F058]);
    v13 = *(*(a1 + 32) + 8);
    if (v12)
    {
      v13[1].origin.x = v5;
    }

    else
    {
      v15.origin.x = v5;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      v14 = CGRectUnion(v13[1], v15);
      y = v14.origin.y;
      width = v14.size.width;
      height = v14.size.height;
      v13 = *(*(a1 + 32) + 8);
      v13[1].origin.x = v14.origin.x;
    }

    v13[1].origin.y = y;
    v13[1].size.width = width;
    v13[1].size.height = height;
  }
}

- (id)_estimatedTextLocationForVerticalOffset:(double)a3 originLocation:(id)a4 originOffset:(double)a5 deltaFromOffset:(double *)a6
{
  v60 = 0;
  v61 = &v60;
  v62 = 0x3052000000;
  v63 = __Block_byref_object_copy__2;
  v64 = __Block_byref_object_dispose__2;
  v65 = 0;
  v10 = a4;
  if (!a4)
  {
    v10 = [(NSTextRange *)[(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange] location];
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x3052000000;
  v57 = __Block_byref_object_copy__2;
  v58 = __Block_byref_object_dispose__2;
  v59 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  TextContainerEntryAndIndexForLocation = __NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation(self, v10);
  v12 = TextContainerEntryAndIndexForLocation;
  if (TextContainerEntryAndIndexForLocation)
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x3052000000;
    v47 = __Block_byref_object_copy__2;
    v48 = __Block_byref_object_dispose__2;
    v49 = 0;
    if (a4)
    {
      if ([TextContainerEntryAndIndexForLocation[2] containsLocation:v10])
      {
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __107__NSTextLayoutManager__estimatedTextLocationForVerticalOffset_originLocation_originOffset_deltaFromOffset___block_invoke;
        v43[3] = &unk_1E7266010;
        v43[4] = &v44;
        v43[5] = v12;
        [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage enumerateTextLayoutFragmentFromLocation:v10 options:0 usingBlock:v43];
      }
    }

    else
    {
      LayoutFragmentForPosition = __NSTextLayoutManagerGetLayoutFragmentForPosition(self, TextContainerEntryAndIndexForLocation, 1, 0.0, a3);
      v45[5] = LayoutFragmentForPosition;
    }

    v14 = v45[5];
    if (v14)
    {
      [v14 layoutFragmentFrame];
      v16 = v15;
      v18 = v17;
      v19 = [objc_msgSend(v45[5] "rangeInElement")];
      v10 = v19;
      a5 = v16 + v18;
      v20 = v55;
      if (a5 > a3)
      {
        v55[5] = v19;
        v51[3] = v16 - a3;
      }
    }

    else
    {
      v20 = v55;
    }

    if (!v20[5] && [v12[2] isNotEmpty])
    {
      v21 = v12[2];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __107__NSTextLayoutManager__estimatedTextLocationForVerticalOffset_originLocation_originOffset_deltaFromOffset___block_invoke_2;
      v42[3] = &unk_1E7265FE8;
      v42[4] = &v60;
      if ([objc_msgSend(v21 "endLocation")])
      {
        -[_NSTextLayoutFragmentStorage enumerateTextLayoutFragmentFromLocation:options:usingBlock:](self->_textLayoutFragmentStorage, "enumerateTextLayoutFragmentFromLocation:options:usingBlock:", [v21 location], 2, v42);
      }

      else
      {
        [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage enumerateTextLayoutFragmentInTextRange:v21 options:2 usingBlock:v42];
      }
    }

    _Block_object_dispose(&v44, 8);
  }

  v22 = [(NSTextLayoutManager *)self textContentManager];
  v23 = [(NSTextRange *)[(NSTextContentManager *)v22 documentRange] endLocation];
  v35 = [objc_opt_class() maximumNumberOfSeedElements];
  v24 = [objc_msgSend(v61[5] "rangeInElement")];
  if (!v55[5])
  {
    v27 = v24;
    v33 = v37;
    do
    {
      if ([v10 compare:{v23, v33}] != -1)
      {
        break;
      }

      v44 = 0;
      v45 = &v44;
      v46 = 0x3052000000;
      v47 = __Block_byref_object_copy__2;
      v48 = __Block_byref_object_dispose__2;
      v49 = 0;
      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x2020000000;
      v41[3] = 0;
      v40[0] = 0;
      v40[1] = v40;
      v40[2] = 0x2020000000;
      v40[3] = 0;
      v39[0] = 0;
      v39[1] = v39;
      v39[2] = 0x2020000000;
      v39[3] = 0;
      if (!v27 || ([v10 isEqual:v27] & 1) == 0)
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __107__NSTextLayoutManager__estimatedTextLocationForVerticalOffset_originLocation_originOffset_deltaFromOffset___block_invoke_3;
        v38[3] = &unk_1E7266060;
        v38[4] = v27;
        v38[5] = self;
        v38[8] = v39;
        v38[9] = v41;
        *&v38[14] = a5;
        *&v38[15] = a3;
        v38[10] = v40;
        v38[11] = &v54;
        v38[12] = &v50;
        v38[13] = v35;
        v38[6] = v22;
        v38[7] = &v44;
        v10 = [(NSTextContentManager *)v22 enumerateTextElementsFromLocation:v10 options:0 usingBlock:v38];
      }

      if (!v55[5])
      {
        v28 = v61[5];
        if (v28)
        {
          [v28 layoutFragmentFrame];
          v30 = v29;
          v32 = v31;
          if (!self->_softInvalidationLocation || [v27 compare:?] == -1)
          {
            a5 = v30 + v32;
          }

          if (a5 <= a3)
          {
            v10 = [objc_msgSend(v61[5] "rangeInElement")];
            v61[5] = 0;
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v37[0] = __107__NSTextLayoutManager__estimatedTextLocationForVerticalOffset_originLocation_originOffset_deltaFromOffset___block_invoke_5;
            v37[1] = &unk_1E7265FE8;
            v37[2] = &v60;
            [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage enumerateTextLayoutFragmentFromLocation:v10 options:2 usingBlock:v36];
            v27 = [objc_msgSend(v61[5] "rangeInElement")];
          }

          else
          {
            v55[5] = v27;
            v51[3] = v30 - a3;
          }
        }
      }

      _Block_object_dispose(v39, 8);
      _Block_object_dispose(v40, 8);
      _Block_object_dispose(v41, 8);
      _Block_object_dispose(&v44, 8);
    }

    while (!v55[5]);
  }

  if (a6)
  {
    *a6 = v51[3];
  }

  v25 = v55[5];
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);
  return v25;
}

uint64_t __107__NSTextLayoutManager__estimatedTextLocationForVerticalOffset_originLocation_originOffset_deltaFromOffset___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [*(*(a1 + 40) + 16) containsLocation:{objc_msgSend(a3, "location")}];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 40) = a2;
  }

  *a4 = 1;
  return result;
}

uint64_t __107__NSTextLayoutManager__estimatedTextLocationForVerticalOffset_originLocation_originOffset_deltaFromOffset___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 state];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

BOOL __107__NSTextLayoutManager__estimatedTextLocationForVerticalOffset_originLocation_originOffset_deltaFromOffset___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = [a2 elementRange];
  v5 = v4;
  if (*(a1 + 32) && ([objc_msgSend(v4 "location")] & 1) != 0)
  {
    return 0;
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    *(*(*(a1 + 56) + 8) + 40) = [v5 location];
  }

  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 24) + 1;
  *(v6 + 24) = v7;
  if (v7 < *(a1 + 104))
  {
    [a2 estimatedIntrinsicContentSizeForTextLayoutManager:*(a1 + 40)];
    v9 = v8;
    v10 = *(*(a1 + 80) + 8);
    v11 = *(v10 + 24);
    v12 = *(a1 + 120);
    v13 = v8 + *(a1 + 112) + v11;
    v14 = v13 <= v12;
    if (v13 > v12)
    {
      *(*(*(a1 + 88) + 8) + 40) = [objc_msgSend(a2 "elementRange")];
      *(*(*(a1 + 96) + 8) + 24) = *(a1 + 112) + *(*(*(a1 + 80) + 8) + 24) - *(a1 + 120);
      v10 = *(*(a1 + 80) + 8);
      v11 = *(v10 + 24);
    }

    v15 = v9 + v11;
    goto LABEL_13;
  }

  v16 = [*(a1 + 40) offsetFromLocation:*(*(*(a1 + 56) + 8) + 40) toLocation:{objc_msgSend(v5, "endLocation")}];
  v17 = *(*(*(a1 + 72) + 8) + 24);
  if (!v17)
  {
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 40) offsetFromLocation:*(*(*(a1 + 56) + 8) + 40) toLocation:{objc_msgSend(v5, "location")}];
    v17 = *(*(*(a1 + 72) + 8) + 24);
  }

  v18 = *(*(*(a1 + 80) + 8) + 24);
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  if (v19 + v18 * (v16 / v17) <= v20)
  {
    v22 = [*(a1 + 48) locationFromLocation:*(*(*(a1 + 56) + 8) + 40) withOffset:((v20 - v19) * v17 / v18)];
    v23 = *(a1 + 48);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __107__NSTextLayoutManager__estimatedTextLocationForVerticalOffset_originLocation_originOffset_deltaFromOffset___block_invoke_4;
    v28[3] = &unk_1E7266038;
    v24 = *(a1 + 88);
    v25 = *(a1 + 96);
    v28[4] = v23;
    v28[5] = v24;
    v28[6] = *(a1 + 56);
    v28[7] = v25;
    v26 = *(a1 + 112);
    v29 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    v30 = v26;
    [v23 enumerateTextElementsFromLocation:v22 options:1 usingBlock:v28];
    return 0;
  }

  v21 = [*(a1 + 40) offsetFromLocation:*(*(*(a1 + 56) + 8) + 40) toLocation:{objc_msgSend(v5, "location")}];
  v14 = 0;
  *(*(*(a1 + 88) + 8) + 40) = [objc_msgSend(a2 "elementRange")];
  v15 = *(a1 + 112) + *(*(*(a1 + 80) + 8) + 24) * (v21 / *(*(*(a1 + 72) + 8) + 24)) - *(a1 + 120);
  v10 = *(*(a1 + 96) + 8);
LABEL_13:
  *(v10 + 24) = v15;
  return v14;
}

uint64_t __107__NSTextLayoutManager__estimatedTextLocationForVerticalOffset_originLocation_originOffset_deltaFromOffset___block_invoke_4(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [objc_msgSend(a2 "elementRange")];
  *(*(*(a1 + 56) + 8) + 24) = *(a1 + 80) + *(*(*(a1 + 64) + 8) + 24) * ([*(a1 + 32) offsetFromLocation:*(*(*(a1 + 48) + 8) + 40) toLocation:*(*(*(a1 + 40) + 8) + 40)] / *(*(*(a1 + 72) + 8) + 24)) - *(a1 + 88);
  return 0;
}

uint64_t __107__NSTextLayoutManager__estimatedTextLocationForVerticalOffset_originLocation_originOffset_deltaFromOffset___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 state];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

- (id)renderingColorForDocumentColor:(id)a3 atLocation:(id)a4
{
  v5 = [(NSTextLayoutManager *)self textContainerForLocation:a4];
  if (!v5)
  {
    return a3;
  }

  return [v5 renderingColorForDocumentColor:a3];
}

- (void)updateLayoutWithTextLayoutFragment:(id)a3 addition:(BOOL)a4
{
  v4 = a4;
  objc_sync_enter(self);
  v7 = objc_autoreleasePoolPush();
  v8 = [a3 rangeInElement];
  TextContainerEntryAndIndexForLocation = __NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation(self, [(NSTextRange *)v8 location]);
  v10 = TextContainerEntryAndIndexForLocation;
  if (!TextContainerEntryAndIndexForLocation)
  {
    goto LABEL_83;
  }

  v11 = *(TextContainerEntryAndIndexForLocation + 3);
  v12 = *(TextContainerEntryAndIndexForLocation + 4);
  p_lastTextContainerEntry = &self->_lastTextContainerEntry;
  v14 = *(TextContainerEntryAndIndexForLocation + 5);
  v15 = *(TextContainerEntryAndIndexForLocation + 6);
  if (v4)
  {
    if ([a3 state] <= 2)
    {
      v10->containerFilled = 1;
      goto LABEL_83;
    }

    [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage revalidateLayoutFragmentRangeForLocation:[(NSTextRange *)v8 location]];
  }

  else
  {
    if (TextContainerEntryAndIndexForLocation == p_lastTextContainerEntry && ([*(TextContainerEntryAndIndexForLocation + 2) containsRange:v8] & 1) == 0)
    {
      goto LABEL_83;
    }

    v10->containerFilled = 0;
  }

  textRange = v10->textRange;
  if (textRange && ![(NSTextRange *)textRange isEmpty])
  {
    if (v4)
    {
      v18 = [(NSTextRange *)v10->textRange textRangeByFormingUnionWithTextRange:v8];
      v17 = 0;
    }

    else if ([-[NSTextRange location](v8 "location")] == 1 && objc_msgSend(-[NSTextRange endLocation](v8, "endLocation"), "compare:", -[NSTextRange endLocation](v10->textRange, "endLocation")) == -1)
    {
      v17 = 0;
      v18 = v10->textRange;
    }

    else
    {
      if ([(NSTextRange *)v8 containsRange:v10->textRange])
      {
        v18 = 0;
      }

      else
      {
        if ([-[NSTextRange location](v10->textRange "location")] == -1)
        {
          v36 = [NSTextRange alloc];
          v37 = [(NSTextRange *)v10->textRange location];
          v38 = [(NSTextRange *)v8 location];
        }

        else
        {
          v36 = [NSTextRange alloc];
          v37 = [(NSTextRange *)v8 endLocation];
          v38 = [(NSTextRange *)v10->textRange endLocation];
        }

        v18 = [(NSTextRange *)v36 initWithLocation:v37 endLocation:v38];
      }

      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
    if (v4)
    {
      v18 = v8;
    }

    else
    {
      v18 = 0;
    }
  }

  v19 = v10->textRange;
  if (v18 != v19)
  {

    v10->textRange = v18;
  }

  if (!v4)
  {
    if (v17)
    {
      v50.origin.x = v11;
      v50.origin.y = v12;
      v50.size.width = v14;
      v50.size.height = v15;
      if (!NSIsEmptyRect(v50))
      {
        [a3 layoutFragmentFrame];
        v24 = v23;
        v26 = v25;
        if (self->_softInvalidationLocation && [-[NSTextRange location](v8 "location")] == -1)
        {
          __NSTextLayoutManagerFillSoftInvalidationToLocation(self, [(NSTextRange *)v8 endLocation], 1.79769313e308);
        }

        v27 = v12 + v15;
        v28 = v12 + v15 - (v24 + v26);
        if (v12 >= v24)
        {
          v12 = v24 + v26;
        }

        else
        {
          v28 = v15;
        }

        if (v27 > v24 + v26 || v28 <= 0.0)
        {
          v15 = v28;
        }

        else
        {
          v15 = v24 - v12;
        }

        if (v15 <= 0.0)
        {
          v11 = *MEMORY[0x1E696AA80];
          v12 = *(MEMORY[0x1E696AA80] + 8);
          v14 = *(MEMORY[0x1E696AA80] + 16);
          v15 = *(MEMORY[0x1E696AA80] + 24);
        }
      }
    }

    goto LABEL_76;
  }

  activeEnumerationCache = self->_activeEnumerationCache;
  if (!activeEnumerationCache || !activeEnumerationCache->var6)
  {
    if (self->_softInvalidationLocation)
    {
      if ([-[NSTextRange location](v8 "location")] == -1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v44 = 0;
      v45 = &v44;
      v46 = 0x3052000000;
      v47 = __Block_byref_object_copy__2;
      v48 = __Block_byref_object_dispose__2;
      v49 = 0;
      v30 = [(NSTextRange *)v10->textRange endLocation];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __67__NSTextLayoutManager_updateLayoutWithTextLayoutFragment_addition___block_invoke;
      v43[3] = &unk_1E7265FE8;
      v43[4] = &v44;
      [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage enumerateTextLayoutFragmentFromLocation:v30 options:3 usingBlock:v43];
      if (v45[5])
      {
        v31 = [(NSTextRange *)v8 location];
        v32 = [v31 compare:{objc_msgSend(objc_msgSend(v45[5], "rangeInElement"), "location")}];
        _Block_object_dispose(&v44, 8);
        if (v32 != 1)
        {
LABEL_48:
          [(NSTextLayoutManager *)self _setSoftInvalidationLocation:[(NSTextRange *)v8 location] onlyIfUpstream:0];
          goto LABEL_65;
        }
      }

      else
      {
        _Block_object_dispose(&v44, 8);
      }
    }

    if ([(NSTextLocation *)self->_softInvalidationLocation compare:[(NSTextRange *)v8 location]]!= 1)
    {
      __NSTextLayoutManagerFillSoftInvalidationToLocation(self, [(NSTextRange *)v8 endLocation], 1.79769313e308);
    }

    goto LABEL_65;
  }

  var7 = activeEnumerationCache->var7;
  if (var7)
  {
    v22 = [(NSTextRange *)v8 endLocation];
  }

  else
  {
    v22 = [(NSTextRange *)v8 location];
  }

  v33 = v22;
  var1 = self->_activeEnumerationCache->var1;
  if (var1 && [var1 isEqual:v33])
  {
    [a3 layoutFragmentFrame];
    [a3 setLayoutFragmentFrameOrigin:?];
    if (var7)
    {
      v35 = [(NSTextRange *)v8 location];
    }

    else
    {
      v35 = [(NSTextRange *)v8 endLocation];
    }

    [(NSTextLayoutManager *)self _setSoftInvalidationLocation:v35 onlyIfUpstream:[(NSTextLocation *)self->_softInvalidationLocation compare:v33]== -1];
  }

  else if ([-[NSTextRange location](v8 "location")])
  {
    [(NSTextLayoutManager *)self _setSoftInvalidationLocation:[(NSTextRange *)v8 endLocation] onlyIfUpstream:1];
  }

  else
  {
    [(NSTextLayoutManager *)self _setSoftInvalidationLocation:[(NSTextRange *)v8 location] onlyIfUpstream:1];
    __NSTextLayoutManagerFillSoftInvalidationToLocation(self, [(NSTextRange *)v8 endLocation], 1.79769313e308);
  }

LABEL_65:
  v51.origin.x = v11;
  v51.origin.y = v12;
  v51.size.width = v14;
  v51.size.height = v15;
  if (CGRectIsEmpty(v51))
  {
    [a3 layoutFragmentFrame];
  }

  else
  {
    [a3 layoutFragmentFrame];
    v53.origin.x = v11;
    v53.origin.y = v12;
    v53.size.width = v14;
    v53.size.height = v15;
    *&v39 = CGRectUnion(v52, v53);
  }

  v11 = v39;
  v14 = v41;
  if (v40 == 0.0)
  {
    v15 = v42;
  }

  else
  {
    v15 = v40 + v42;
  }

  if (v40 == 0.0)
  {
    v12 = v40;
  }

  else
  {
    v12 = 0.0;
  }

  if ([a3 hasPartialLayout])
  {
    v10->containerFilled = 1;
  }

LABEL_76:
  if (v12 < 0.0)
  {
    v15 = v15 + v12;
    v12 = 0.0;
  }

  v54.origin.x = v11;
  v54.origin.y = v12;
  v54.size.width = v14;
  v54.size.height = v15;
  if (!NSEqualRects(v10->usageBounds, v54))
  {
    if (v10 == p_lastTextContainerEntry)
    {
      [(NSTextLayoutManager *)self willChangeValueForKey:@"usageBoundsForTextContainer"];
      [(NSTextLayoutManager *)self willChangeValueForKey:@"usageBoundsForLastTextContainer"];
      v10->usageBounds.origin.x = v11;
      v10->usageBounds.origin.y = v12;
      v10->usageBounds.size.width = v14;
      v10->usageBounds.size.height = v15;
      [(NSTextLayoutManager *)self didChangeValueForKey:@"usageBoundsForTextContainer"];
      [(NSTextLayoutManager *)self didChangeValueForKey:@"usageBoundsForLastTextContainer"];
    }

    else
    {
      v10->usageBounds.origin.x = v11;
      v10->usageBounds.origin.y = v12;
      v10->usageBounds.size.width = v14;
      v10->usageBounds.size.height = v15;
    }

    [(NSTextContainer *)v10->textContainer invalidateTextContainerOrigin];
  }

LABEL_83:
  objc_autoreleasePoolPop(v7);
  objc_sync_exit(self);
}

uint64_t __67__NSTextLayoutManager_updateLayoutWithTextLayoutFragment_addition___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 40) = a2;
  *a4 = 1;
  return result;
}

- (void)textContainerChangedGeometry:(id)a3
{
  objc_sync_enter(self);
  textContainerEntriesCount = self->_textContainerEntriesCount;
  if ((textContainerEntriesCount & 0x8000000000000000) != 0)
  {
    textContainerEntries = self->_textContainerEntries;
    var0 = textContainerEntries[-1].var0;
    p_lastTextContainerEntry = &textContainerEntries[-1];
    textContainer = var0;
  }

  else
  {
    p_lastTextContainerEntry = &self->_lastTextContainerEntry;
    textContainer = self->_lastTextContainerEntry.textContainer;
    if (!textContainer)
    {
      p_lastTextContainerEntry = 0;
      goto LABEL_7;
    }
  }

  if (textContainer == a3)
  {
LABEL_20:
    v14 = [(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange];
    if (p_lastTextContainerEntry == &self->_lastTextContainerEntry && (v18 = p_lastTextContainerEntry->textRange) != 0 && ([-[NSTextRange endLocation](v18 "endLocation")] & 1) == 0 && objc_msgSend(-[NSTextRange location](p_lastTextContainerEntry->textRange, "location"), "compare:", -[NSTextRange endLocation](v14, "endLocation")) == -1)
    {
      v16 = [[NSTextRange alloc] initWithLocation:[(NSTextRange *)p_lastTextContainerEntry->textRange location] endLocation:[(NSTextRange *)v14 endLocation]];
    }

    else
    {
      textRange = p_lastTextContainerEntry->textRange;
      if (!textRange)
      {
        textRange = v14;
      }

      v16 = textRange;
    }

    v17 = v16;
    if ([(NSTextLayoutManager *)self usesContiguousLayout])
    {
      __NSTextLayoutManagerRemoveTextLayoutFragmentsInTextRange(&self->super.isa, v17, 0);
    }

    else
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x3052000000;
      v26 = __Block_byref_object_copy__2;
      v27 = __Block_byref_object_dispose__2;
      v28 = 0;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __52__NSTextLayoutManager_textContainerChangedGeometry___block_invoke;
      v22[3] = &unk_1E7265FE8;
      v22[4] = &v23;
      if ([-[NSTextRange endLocation](v17 "endLocation")])
      {
        [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage enumerateTextLayoutFragmentFromLocation:[(NSTextRange *)v17 location] options:2 usingBlock:v22];
      }

      else
      {
        [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage enumerateTextLayoutFragmentInTextRange:v17 options:2 usingBlock:v22];
      }

      v19 = v24[5];
      if (v19)
      {
        __NSTextLayoutManagerRemoveTextLayoutFragmentsInTextRange(&self->super.isa, v19, 0);
      }

      _Block_object_dispose(&v23, 8);
    }

    [(NSTextLayoutManager *)self _invalidateTextParagraphForEmptyDocument];

    v20 = *(MEMORY[0x1E695F058] + 16);
    p_lastTextContainerEntry->usageBounds.origin = *MEMORY[0x1E695F058];
    p_lastTextContainerEntry->usageBounds.size = v20;

    p_lastTextContainerEntry->textRange = 0;
    p_lastTextContainerEntry->containerFilled = 0;

    self->_softInvalidationLocation = 0;
    goto LABEL_37;
  }

  textContainer = self->_lastTextContainerEntry.textContainer;
LABEL_7:
  if (textContainer)
  {
    v10 = textContainerEntriesCount + 1;
  }

  else
  {
    v10 = self->_textContainerEntriesCount;
  }

  if (v10)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      if (textContainerEntriesCount <= v12)
      {
        p_lastTextContainerEntry = &self->_lastTextContainerEntry;
        if (textContainer)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13 = self->_textContainerEntries;
        if (v13)
        {
          p_lastTextContainerEntry = &v13[v11];
LABEL_16:
          if (p_lastTextContainerEntry->textContainer == a3)
          {
            goto LABEL_20;
          }
        }
      }

      ++v12;
      ++v11;
      if (v10 == v12)
      {
        goto LABEL_37;
      }
    }
  }

  if (p_lastTextContainerEntry)
  {
    goto LABEL_20;
  }

LABEL_37:
  textSelectionNavigation = self->_textSelectionNavigation;
  if (textSelectionNavigation)
  {
    [(NSTextSelectionNavigation *)textSelectionNavigation flushLayoutCache];
  }

  objc_sync_exit(self);
}

uint64_t __52__NSTextLayoutManager_textContainerChangedGeometry___block_invoke(uint64_t a1, void *a2)
{
  [a2 _resetLayoutFragmentFrame];
  result = [a2 hasPartialLayout];
  if (result)
  {
    result = [objc_msgSend(a2 "textElement")];
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

- (void)ensureLayoutForRange:(NSTextRange *)range
{
  objc_sync_enter(self);
  v5 = [(NSTextRange *)range location];
  v6 = [(NSTextRange *)range endLocation];
  if ([(NSTextRange *)range location]&& v6)
  {
    if ([v5 isEqual:{-[NSTextRange endLocation](-[NSTextContentManager documentRange](-[NSTextLayoutManager textContentManager](self, "textContentManager"), "documentRange"), "endLocation")}])
    {
      v7 = &__block_literal_global_154;
      v8 = 13;
    }

    else
    {
      v7 = v9;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__NSTextLayoutManager_ensureLayoutForRange___block_invoke_2;
      v9[3] = &unk_1E72660A8;
      v9[4] = v6;
      v8 = 12;
    }

    [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:v5 options:v8 usingBlock:v7];
    __NSTextLayoutManagerFillSoftInvalidationToLocation(self, [(NSTextRange *)range endLocation], 1.79769313e308);
  }

  objc_sync_exit(self);
}

- (void)_invalidateLayoutForTextRange:(id)a3 hard:(BOOL)a4
{
  v70 = a4;
  objc_sync_enter(self);
  v6 = [(NSTextLayoutManager *)self textContentManager];
  v7 = [(NSTextContentManager *)v6 documentRange];
  v8 = [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage adjustedTextRangeWithTextRange:a3 adjustment:6];
  v9 = [(NSTextLayoutManager *)self hasNonSimpleRectangularTextContainer];
  if (v7)
  {
    v10 = v70;
  }

  else
  {
    v10 = 0;
  }

  v71 = v10;
  v67 = a3;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = a3;
  }

  TextContainerEntryAndIndexForLocation = __NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation(self, [v11 location]);
  v73 = v6;
  if (TextContainerEntryAndIndexForLocation)
  {
    v13 = *(TextContainerEntryAndIndexForLocation + 7);
    if (v9)
    {
      v14 = [*(TextContainerEntryAndIndexForLocation + 2) location];
      v94[0] = MEMORY[0x1E69E9820];
      v94[1] = 3221225472;
      v94[2] = __58__NSTextLayoutManager__invalidateLayoutForTextRange_hard___block_invoke;
      v94[3] = &unk_1E72660D0;
      v94[4] = v14;
      [(NSTextLayoutManager *)self _removeTextContainersToCondition:v94];
    }
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v92[0] = 0;
  v92[1] = v92;
  v92[2] = 0x2020000000;
  v93 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3052000000;
  v89 = __Block_byref_object_copy__2;
  v90 = __Block_byref_object_dispose__2;
  v91 = 0;
  v15 = [v11 location];
  v83[0] = MEMORY[0x1E69E9820];
  if (v70)
  {
    v16 = 0;
  }

  else
  {
    v16 = 2;
  }

  v83[1] = 3221225472;
  v83[2] = __58__NSTextLayoutManager__invalidateLayoutForTextRange_hard___block_invoke_2;
  v83[3] = &unk_1E72660F8;
  v84 = v9;
  v85 = v70;
  v83[6] = v92;
  v83[7] = &v86;
  v83[4] = v11;
  v83[5] = self;
  [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage enumerateTextLayoutFragmentFromLocation:v15 options:v16 usingBlock:v83];
  v17 = v87;
  if (v87[5])
  {
    v18 = [v11 location];
    v19 = [v18 compare:v87[5]];
    v17 = v87;
    if (v19 != -1)
    {
      v87[5] = 0;
    }
  }

  v20 = v17[5];
  if (v70)
  {
    if (!v20)
    {
      v74 = v11;
      goto LABEL_22;
    }
  }

  else if (!v20)
  {
    goto LABEL_93;
  }

  v21 = [NSTextRange alloc];
  v22 = [v11 location];
  v74 = [(NSTextRange *)v21 initWithLocation:v22 endLocation:v87[5]];
LABEL_22:
  v72 = [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage offsetDeltaForLastTextLayoutFragment];
  if (v87[5])
  {
    v23 = 0;
  }

  else
  {
    v23 = &__block_literal_global_156;
  }

  __NSTextLayoutManagerRemoveTextLayoutFragmentsInTextRange(&self->super.isa, v74, v23);
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    p_lastTextContainerEntry = __NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation(self, [v11 location]);
    goto LABEL_29;
  }

  if (self->_textContainerEntriesCount > v13)
  {
    p_lastTextContainerEntry = &self->_textContainerEntries[v13];
LABEL_29:
    if (!p_lastTextContainerEntry)
    {
      goto LABEL_88;
    }

    goto LABEL_32;
  }

  p_lastTextContainerEntry = &self->_lastTextContainerEntry;
  if (!self->_lastTextContainerEntry.textContainer)
  {
    goto LABEL_88;
  }

LABEL_32:
  var2 = p_lastTextContainerEntry->var2;
  if (!var2)
  {
    goto LABEL_88;
  }

  v26 = [objc_msgSend(var2 "location")];
  v27 = v26 != -1;
  if ([p_lastTextContainerEntry->var2 containsLocation:{-[NSTextRange endLocation](v74, "endLocation")}])
  {
    LOBYTE(v28) = 1;
  }

  else
  {
    LOBYTE(v28) = [objc_msgSend(p_lastTextContainerEntry->var2 "endLocation")];
  }

  v29 = v26 == 0;
  var4 = p_lastTextContainerEntry->var4;
  v31 = var4;
  v69 = 0x7FFFFFFFFFFFFFFFLL;
  v68 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    textContainerEntriesCount = self->_textContainerEntriesCount;
    textContainer = self->_lastTextContainerEntry.textContainer;
    v34 = textContainer ? textContainerEntriesCount + 1 : self->_textContainerEntriesCount;
    if (var4 >= v34)
    {
      break;
    }

    if (textContainerEntriesCount <= var4)
    {
      if (textContainer)
      {
        v35 = &self->_lastTextContainerEntry;
      }

      else
      {
        v35 = 0;
      }

      if (v28)
      {
LABEL_49:
        v28 = 1;
        goto LABEL_50;
      }
    }

    else
    {
      v35 = &self->_textContainerEntries[v31];
      if (v28)
      {
        goto LABEL_49;
      }
    }

    if ([(NSTextRange *)v35->textRange containsLocation:[(NSTextRange *)v74 endLocation]])
    {
      goto LABEL_49;
    }

    v28 = [-[NSTextRange endLocation](v35->textRange "endLocation")];
    if (v29)
    {
      __NSTextLayoutManagerClearTextContainerEntry(v35);
      v39 = v69;
      if (v69 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v39 = var4;
      }

      v69 = v39;
      v68 = var4;
    }

LABEL_50:
    textRange = v35->textRange;
    if (!v7)
    {

      v35->textRange = 0;
      v35->startLocation = 0;
      goto LABEL_78;
    }

    if (textRange)
    {
      if (v27)
      {
        v37 = [(NSTextContentManager *)v73 locationFromLocation:[(NSTextRange *)v35->textRange location] withOffset:v72];
        if ((v28 & 1) == 0)
        {
          v38 = [(NSTextRange *)textRange endLocation];
          goto LABEL_63;
        }

LABEL_61:
        v38 = [(NSTextContentManager *)v73 locationFromLocation:[(NSTextRange *)textRange endLocation] withOffset:v72];
      }

      else
      {
        v37 = [(NSTextRange *)v35->textRange location];
        if (v28)
        {
          goto LABEL_61;
        }

        v38 = [(NSTextRange *)v74 location];
      }

LABEL_63:
      v40 = v38;
      if (v37)
      {
        if (!v38)
        {
LABEL_67:
          v40 = [(NSTextRange *)v7 endLocation];
        }
      }

      else
      {
        v37 = [(NSTextRange *)v7 location];
        if (!v40)
        {
          goto LABEL_67;
        }
      }

      if ([v37 compare:v40] == -1)
      {
        v41 = [[NSTextRange alloc] initWithLocation:v37 endLocation:v40];
      }

      else
      {
        v41 = 0;
      }

      v35->textRange = v41;
      if (v27)
      {
        startLocation = v35->startLocation;
        if (startLocation)
        {
          v43 = [(NSTextContentManager *)v73 locationFromLocation:startLocation withOffset:v72];

          v35->startLocation = v43;
        }
      }

      if (v71)
      {
        v44 = [(NSTextContainer *)v35->textContainer textViewportLayoutController];
        v45 = [v11 location];
        v46 = [v44 viewportRange];
        if (v46)
        {
          if ([v45 compare:{objc_msgSend(v46, "location")}] == -1)
          {
            [v44 _resetLayout];
          }
        }
      }
    }

LABEL_78:
    v35->containerFilled = 0;
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    if (v35->textRange && ![(NSTextRange *)v7 containsRange:?])
    {
      v49 = 0;
    }

    else if (v35->startLocation)
    {
      v49 = [(NSTextRange *)v7 containsLocation:?];
    }

    else
    {
      v49 = 1;
    }

    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __58__NSTextLayoutManager__invalidateLayoutForTextRange_hard___block_invoke_4;
    v82[3] = &unk_1E7266120;
    v82[4] = v7;
    v82[5] = v35;
    ++v31;
    ++var4;
    v27 = 1;
    _UIFoundationAssert(self, v48, v49, v82);
    v29 = 1;
  }

  if (v69 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v50 = 72 * (textContainerEntriesCount - (v68 + 1));
    self->_textContainerEntriesCount = v69 + ~v68 + textContainerEntriesCount;
    if (v50)
    {
      memmove(&self->_textContainerEntries[v69], &self->_textContainerEntries[v68 + 1], v50);
    }
  }

LABEL_88:
  if (v70)
  {
    v76 = 0;
    v77 = &v76;
    v78 = 0x3052000000;
    v79 = __Block_byref_object_copy__2;
    v80 = __Block_byref_object_dispose__2;
    v81 = 0;
    v51 = [v11 endLocation];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __58__NSTextLayoutManager__invalidateLayoutForTextRange_hard___block_invoke_5;
    v75[3] = &unk_1E7265FE8;
    v75[4] = &v76;
    [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage enumerateTextLayoutFragmentFromLocation:v51 options:2 usingBlock:v75];
    if (v77[5] || (softInvalidationLocation = self->_softInvalidationLocation) != 0 && -[NSTextLocation compare:](softInvalidationLocation, "compare:", [v11 location]) != -1)
    {
      [NSTextLayoutManager _setSoftInvalidationLocation:"_setSoftInvalidationLocation:onlyIfUpstream:" onlyIfUpstream:?];
    }

    _Block_object_dispose(&v76, 8);
  }

LABEL_93:
  [(NSTextLayoutManager *)self _invalidateTextParagraphForEmptyDocument];
  v52 = &self->_lastTextContainerEntry;
  v53 = self->_lastTextContainerEntry.textContainer;
  if ([(_NSTextRunStorage *)self->_textLayoutFragmentStorage isEmpty])
  {
    while (1)
    {
      v54 = self->_textContainerEntriesCount;
      if (!v54)
      {
        break;
      }

      textContainerEntries = self->_textContainerEntries;
      v56 = v54 - 1;
      self->_textContainerEntriesCount = v56;
      __NSTextLayoutManagerClearTextContainerEntry(&textContainerEntries[v56]);
    }

    v52->textContainer = 0;
    __NSTextLayoutManagerClearTextContainerEntry(&self->_lastTextContainerEntry);
    v52->textContainer = v53;
  }

  else if (v67)
  {
    if (v70)
    {
      if (v7)
      {
        v57 = [v67 location];
        v58 = [v57 compare:{-[NSTextRange endLocation](v7, "endLocation")}];
        if (v58 != 1)
        {
          v59 = [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage textLayoutFragmentForTextLocation:v57 allowsTrailingEdge:1];
          v60 = v59;
          if (v58 == -1 && ![objc_msgSend(objc_msgSend(v59 "textLineFragments")])
          {
            v60 = 0;
          }

          [v60 invalidateExtraLineFragment];
        }
      }
    }
  }

  if (v53)
  {
    v61 = v71;
  }

  else
  {
    v61 = 0;
  }

  if (v61)
  {
    if ([objc_msgSend(v11 "location")] == -1)
    {
      v62 = [v11 location];
    }

    else
    {
      v62 = [(NSTextRange *)v7 endLocation];
    }

    v63 = v62;
    v64 = [(NSTextContainer *)v53 textViewportLayoutController];
    v65 = [v64 viewportRange];
    if (v65 && [v63 compare:{objc_msgSend(v65, "location")}] == -1)
    {
      [v64 _resetLayout];
    }
  }

  [(NSTextSelectionNavigation *)self->_textSelectionNavigation flushLayoutCache];

  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(v92, 8);
  objc_sync_exit(self);
}

uint64_t __58__NSTextLayoutManager__invalidateLayoutForTextRange_hard___block_invoke_2(uint64_t result, void *a2, void *a3, _BYTE *a4)
{
  v6 = result;
  if (*(*(*(result + 48) + 8) + 24))
  {
    goto LABEL_5;
  }

  v7 = a3;
  if (!a3)
  {
    v7 = [a2 rangeInElement];
  }

  result = [objc_msgSend(*(v6 + 32) "endLocation")];
  *(*(*(v6 + 48) + 8) + 24) = result != 1;
  if (*(*(*(v6 + 48) + 8) + 24))
  {
LABEL_5:
    if ((*(v6 + 64) & 1) == 0)
    {
      *a4 = 1;
      return result;
    }

    goto LABEL_15;
  }

  if (*(v6 + 65) != 1)
  {
LABEL_15:

    return [a2 invalidateLayout];
  }

  *(*(*(v6 + 56) + 8) + 40) = 0;
  result = [a2 textElement];
  if (result)
  {
    if (!v7)
    {
      v7 = [a2 rangeInElement];
    }

    *(*(*(v6 + 56) + 8) + 40) = [v7 endLocation];
    v8 = *(v6 + 40);

    return [v8 updateLayoutWithTextLayoutFragment:a2 addition:0];
  }

  return result;
}

uint64_t __58__NSTextLayoutManager__invalidateLayoutForTextRange_hard___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (NSTextLayoutManagerBreakOnNilContentManager_onceToken != -1)
  {
    NSTextLayoutManagerBreakOnNilContentManager_cold_1();
  }

  v4 = MEMORY[0x1E696AEC0];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v5[7];
  v9 = v5[1];
  v8 = v5[2];
  v10 = *v5;
  v11 = NSStringFromRect(*(v5 + 3));
  v12 = @"N";
  if (*(v5 + 64))
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  if (*(v5 + 65))
  {
    v12 = @"Y";
  }

  return [v4 stringWithFormat:@"%@: NSTextContainer range out of document range %@: %@", a2, v6, objc_msgSend(v4, "stringWithFormat:", @"NSTextContainer entry %p: %@ %lu, textRange=%@, startLocation=%@, usageBounds=%@, filled=%@, anchored=%@", v5, v10, v7, v8, v9, v11, v13, v12)];
}

uint64_t __58__NSTextLayoutManager__invalidateLayoutForTextRange_hard___block_invoke_5(uint64_t a1, void *a2)
{
  result = [a2 state];
  if (result)
  {
    result = [objc_msgSend(a2 "rangeInElement")];
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

- (void)invalidateLayoutForRange:(NSTextRange *)range
{
  if ([(NSTextRange *)range isNotEmpty])
  {

    [(NSTextLayoutManager *)self _invalidateLayoutForTextRange:range hard:0];
  }
}

- (void)processLayoutInvalidationForTextRange:(id)a3 synchronizing:(BOOL)a4
{
  [(NSTextLayoutManager *)self _invalidateLayoutForTextRange:a3 hard:1];
  v5 = [(NSTextLayoutManager *)self textViewportLayoutController];

  [(NSTextViewportLayoutController *)v5 setNeedsLayout];
}

- (void)ensureLayoutForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = [(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange];
  objc_sync_enter(self);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v9 = [(NSTextRange *)v8 endLocation];
  v13 = 0;
  __NSTextLayoutManagerFillSoftInvalidationToLocation(self, 0, y + height);
  v10 = [(NSTextLayoutManager *)self _estimatedTextLocationForVerticalOffset:0 originLocation:&v13 originOffset:y deltaFromOffset:0.0];
  v15[5] = v10;
  if (!v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__NSTextLayoutManager_ensureLayoutForBounds___block_invoke;
    v12[3] = &unk_1E7266148;
    *&v12[5] = x;
    *&v12[6] = y;
    *&v12[7] = width;
    *&v12[8] = height;
    v12[4] = &v14;
    [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:v9 options:13 usingBlock:v12];
    v10 = v15[5];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__NSTextLayoutManager_ensureLayoutForBounds___block_invoke_2;
  v11[3] = &unk_1E7266170;
  *&v11[5] = x;
  *&v11[6] = y;
  *&v11[7] = width;
  *&v11[8] = height;
  v11[4] = v9;
  [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:v10 options:12 usingBlock:v11];
  __NSTextLayoutManagerFillSoftInvalidationToLocation(self, 0, y + height);
  _Block_object_dispose(&v14, 8);
  objc_sync_exit(self);
}

uint64_t __45__NSTextLayoutManager_ensureLayoutForBounds___block_invoke(uint64_t a1, void *a2)
{
  [a2 layoutFragmentFrame];
  if (v4 + v5 < *(a1 + 48) + *(a1 + 64))
  {
    *(*(*(a1 + 32) + 8) + 40) = [objc_msgSend(a2 "rangeInElement")];
  }

  return 0;
}

- (id)textLayoutFragmentForPosition:(CGPoint)a3 inTextContainerAtIndex:(int64_t)a4 avoidsAdditionalLayout:(BOOL)a5
{
  y = a3.y;
  x = a3.x;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  objc_sync_enter(self);
  if (v20[5])
  {
    goto LABEL_21;
  }

  if (self->_textContainerEntriesCount <= a4)
  {
    p_lastTextContainerEntry = &self->_lastTextContainerEntry;
    if (self->_lastTextContainerEntry.textContainer)
    {
      goto LABEL_6;
    }

LABEL_21:
    objc_sync_exit(self);
    v15 = v20[5];
    goto LABEL_22;
  }

  textContainerEntries = self->_textContainerEntries;
  if (!textContainerEntries)
  {
    goto LABEL_21;
  }

  p_lastTextContainerEntry = &textContainerEntries[a4];
LABEL_6:
  if (p_lastTextContainerEntry == &self->_lastTextContainerEntry && !a5)
  {
    [(NSTextLayoutManager *)self ensureLayoutForBounds:x, y, 1.0, 1.0];
  }

  if (y > 0.0 || (!self->_textContainerEntriesCount ? (self->_lastTextContainerEntry.textContainer ? (v12 = &self->_lastTextContainerEntry) : (v12 = 0)) : (v12 = self->_textContainerEntries), v12 == p_lastTextContainerEntry ? (textContainers = [(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange]) : (textContainers = p_lastTextContainerEntry->_textContainers), (v14 = [(NSTextRange *)textContainers location]) == 0))
  {
    LayoutFragmentForPosition = __NSTextLayoutManagerGetLayoutFragmentForPosition(self, &p_lastTextContainerEntry->super.isa, 0, x, y);
    v20[5] = LayoutFragmentForPosition;
    goto LABEL_21;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99__NSTextLayoutManager_textLayoutFragmentForPosition_inTextContainerAtIndex_avoidsAdditionalLayout___block_invoke;
  v18[3] = &unk_1E7266198;
  v18[4] = &v19;
  [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:v14 options:0 usingBlock:v18];
  v15 = v20[5];
  objc_sync_exit(self);
LABEL_22:
  _Block_object_dispose(&v19, 8);
  return v15;
}

- (NSTextLayoutFragment)textLayoutFragmentForLocation:(id)location
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__NSTextLayoutManager_textLayoutFragmentForLocation___block_invoke;
  v5[3] = &unk_1E72661C0;
  v5[4] = location;
  v5[5] = &v6;
  [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:location options:0 usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __53__NSTextLayoutManager_textLayoutFragmentForLocation___block_invoke(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(a2 "rangeInElement")];
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  return v4 ^ 1u;
}

- (id)enumerateTextLayoutFragmentsFromLocation:(id)location options:(NSTextLayoutFragmentEnumerationOptions)options usingBlock:(void *)block
{
  v36 = [(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange];
  v8 = [(NSTextLayoutManager *)self delegate];
  if (v8)
  {
    v9 = v8;
    if (objc_opt_respondsToSelector())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_sync_enter(self);
  v35 = [(NSTextRange *)v36 isNotEmpty];
  v11 = [(NSTextLayoutManager *)self usesContiguousLayout];
  activeEnumerationCache = self->_activeEnumerationCache;
  v77 = 0;
  v78 = &v77;
  v79 = 0x5810000000;
  v82 = 0u;
  v83 = 0u;
  v81 = 0u;
  *&v83 = 0x7FFFFFFFFFFFFFFFLL;
  v84 = (options & 4) != 0;
  *(&v84 + 1) = options & 1;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3052000000;
  v70 = __Block_byref_object_copy__2;
  v71 = __Block_byref_object_dispose__2;
  v72 = location;
  objc_initWeak(&locationa, self);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v54 = __83__NSTextLayoutManager_enumerateTextLayoutFragmentsFromLocation_options_usingBlock___block_invoke;
  v55 = &unk_1E7266260;
  objc_copyWeak(v62, &locationa);
  v63 = (options & 4) != 0;
  v64 = v11;
  v65 = options & 1;
  v56 = self;
  v57 = v10;
  v62[1] = options;
  v58 = block;
  v59 = &v77;
  v60 = &v67;
  v61 = &v73;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v50 = __83__NSTextLayoutManager_enumerateTextLayoutFragmentsFromLocation_options_usingBlock___block_invoke_4;
  v51 = &unk_1E7266288;
  v52 = self;
  self->_activeEnumerationCache = (v78 + 4);
  if (v35)
  {
    [(NSTextLayoutManager *)self _invalidateTextParagraphForEmptyDocument];
  }

  [(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] synchronizeTextLayoutManagers:0];
  if ((options & 4) != 0 && v11)
  {
    if (v68[5])
    {
      v12 = [(NSTextRange *)v36 location];
      if ([v12 compare:v68[5]] == -1)
      {
        if (!activeEnumerationCache || !activeEnumerationCache->var8)
        {
          if ([(NSTextLayoutManager *)self hasNonSimpleRectangularTextContainer])
          {
            softInvalidationLocation = self->_softInvalidationLocation;
            if (softInvalidationLocation)
            {
              if ([(NSTextLocation *)softInvalidationLocation compare:v68[5]]== -1)
              {
                v14 = [NSTextRange alloc];
                v15 = [(NSTextRange *)v14 initWithLocation:self->_softInvalidationLocation endLocation:v68[5]];
                [(NSTextLayoutManager *)self invalidateLayoutForRange:v15];
              }
            }
          }

          [(NSTextLayoutManager *)self _fillLayoutToLocation:v68[5] enumerationCache:v78 + 4];
        }

        if (![(NSTextLayoutManager *)self lastContainerFilled])
        {
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __83__NSTextLayoutManager_enumerateTextLayoutFragmentsFromLocation_options_usingBlock___block_invoke_6;
          v47[3] = &unk_1E72662B0;
          v47[4] = &v67;
          v47[5] = &v77;
          v48 = options & 1;
          [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v47];
        }
      }
    }
  }

  if (!v68[5])
  {
    if (options)
    {
      v16 = [(NSTextRange *)v36 endLocation];
    }

    else
    {
      v16 = [(NSTextRange *)v36 location];
    }

    v68[5] = v16;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x3052000000;
  v44 = __Block_byref_object_copy__2;
  v45 = __Block_byref_object_dispose__2;
  v46 = 0;
  while (1)
  {
    v17 = [(NSTextLayoutManager *)self textContentManager];
    v18 = v68[5];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __83__NSTextLayoutManager_enumerateTextLayoutFragmentsFromLocation_options_usingBlock___block_invoke_7;
    v38[3] = &unk_1E72662D8;
    v39 = (options & 4) >> 2;
    v40 = options & 1;
    v38[7] = &v41;
    v38[8] = &v67;
    v38[4] = v36;
    v38[5] = v49;
    v38[6] = v53;
    v19 = [(NSTextContentManager *)v17 enumerateTextElementsFromLocation:v18 options:options usingBlock:v38];
    v20 = v78[5];
    if (v20 && [v20 compare:v19] == -1)
    {
      v19 = v78[5];
    }

    v21 = v74;
    if (*(v74 + 24) != 1)
    {
      break;
    }

    if (![(NSTextLayoutManager *)self lastContainerFilled])
    {
      v21 = v74;
      break;
    }

    v22 = [(NSTextLayoutManager *)self _appendTextContainer];
    v21 = v74;
    if (!v22)
    {
      break;
    }

    v23 = v78;
    v78[6] = 0;
    v23[7] = 0;
    v23[8] = 0x7FFFFFFFFFFFFFFFLL;
    v42[5] = 0;
    v68[5] = v19;
    *(v21 + 24) = 0;
  }

  if ((options & 8) != 0 && (v21[3] & 1) == 0 && (!v19 || [v19 isEqual:v68[5]]) && -[NSTextRange isEmpty](-[NSTextContentManager documentRange](-[NSTextLayoutManager textContentManager](self, "textContentManager"), "documentRange"), "isEmpty"))
  {
    v24 = [(NSTextLayoutManager *)self _textParagraphForEmptyDocument];
    v25 = v54(v53, v24);
    *(v74 + 24) = !v25;
  }

  if ((options & 4) != 0 && (v74[3] & 1) == 0 && (v42[5] || v68[5]))
  {
    if (options)
    {
      v26 = [(NSTextRange *)v36 location];
      v29 = v42[5];
      if (v29)
      {
        v28 = [v29 location];
        goto LABEL_50;
      }
    }

    else
    {
      v26 = [(NSTextRange *)v36 endLocation];
      v27 = v42[5];
      if (v27)
      {
        v28 = [v27 endLocation];
LABEL_50:
        v30 = v28;
LABEL_52:
        if (([v26 isEqual:v30] & 1) == 0 && -[NSTextRange containsLocation:](v36, "containsLocation:", v30))
        {
          if (options)
          {
            v31 = v26;
          }

          else
          {
            v31 = v30;
          }

          if (options)
          {
            v26 = v30;
          }

          if (v31 && v26)
          {
            v32 = [[NSTextRange alloc] initWithLocation:v31 endLocation:v26];
            v50(v49, v32);
          }
        }

        goto LABEL_62;
      }
    }

    v30 = v68[5];
    goto LABEL_52;
  }

LABEL_62:
  _Block_object_dispose(&v41, 8);
  self->_activeEnumerationCache = activeEnumerationCache;
  objc_destroyWeak(v62);
  objc_destroyWeak(&locationa);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);
  objc_sync_exit(self);
  return v19;
}

BOOL __83__NSTextLayoutManager_enumerateTextLayoutFragmentsFromLocation_options_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  Weak = objc_loadWeak((a1 + 80));
  TextContainerEntryAndIndexForLocation = __NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation(Weak, [objc_msgSend(a2 "elementRange")]);
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  if (!v67[3])
  {
    v15 = 1;
    v65 = 1;
    v16 = &v62;
    goto LABEL_55;
  }

  v5 = [*(*(a1 + 32) + 96) objectForKey:a2];
  v6 = [v5 lastObject];
  if (v6)
  {
    if (*(a1 + 96) != 1 || *(a1 + 97) != 1 || (*(a1 + 98) & 1) != 0)
    {
      goto LABEL_51;
    }

    v7 = *(v67[3] + 56);
    v8 = objc_loadWeak((a1 + 80));
    v9 = v8[33];
    if (v8[21])
    {
      ++v9;
    }

    if (v7 + 1 >= v9)
    {
      goto LABEL_51;
    }

    v10 = *(*(*(a1 + 56) + 8) + 40);
    if (!v10)
    {
      v10 = *(*(*(a1 + 64) + 8) + 40);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v11 = [v5 countByEnumeratingWithState:&v58 objects:v71 count:16];
    if (v11)
    {
      v12 = *v59;
LABEL_13:
      v13 = 0;
      while (1)
      {
        if (*v59 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v58 + 1) + 8 * v13);
        if ([objc_msgSend(objc_msgSend(v14 "rangeInElement")] != -1)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v5 countByEnumeratingWithState:&v58 objects:v71 count:16];
          if (v11)
          {
            goto LABEL_13;
          }

          goto LABEL_35;
        }
      }

      if (v14)
      {
        if ([v14 state] >= 3)
        {
          [v14 layoutFragmentFrame];
          v21 = *(*(a1 + 56) + 8);
          if (*(v21 + 40))
          {
            v22 = v17;
            v23 = v18;
            v24 = v19;
            v25 = v20;
            v26 = *(v21 + 48);
            if (v26 != CGRectGetMinY(*&v17))
            {
              if (([v14 hasPartialLayout] & 1) != 0 || (v27 = *v67[3]) != 0 && (objc_msgSend(v5, "count") > 1 || objc_msgSend(objc_msgSend(v14, "textLineFragments"), "count") >= 2) && (((objc_msgSend(v27, "size"), v29 = v28, v30 = objc_msgSend(v27, "maximumNumberOfLines"), v29 <= 0.0) || v29 >= 10000000.0) && (v31 = *(*(*(a1 + 56) + 8) + 48), v73.origin.x = v22, v73.origin.y = v23, v73.size.width = v24, v73.size.height = v25, v31 + CGRectGetHeight(v73) > v29) || v30 && (v54 = 0, v55 = &v54, v56 = 0x2020000000, v57 = *(*(*(a1 + 56) + 8) + 56), v53[0] = MEMORY[0x1E69E9820], v53[1] = 3221225472, v53[2] = __83__NSTextLayoutManager_enumerateTextLayoutFragmentsFromLocation_options_usingBlock___block_invoke_2, v53[3] = &unk_1E7266210, v53[4] = &v54, v53[5] = v30, objc_msgSend(v5, "enumerateObjectsUsingBlock:", v53), v32 = v55[3], _Block_object_dispose(&v54, 8), v32 > v30)))
              {
                [*(a1 + 32) invalidateLayoutForRange:{objc_msgSend(a2, "elementRange")}];
                v5 = 0;
                v6 = 0;
                goto LABEL_38;
              }
            }
          }
        }
      }
    }

LABEL_35:
    if (*(v67[3] + 64) != 1 || ![(NSTextRange *)v6 hasPartialLayout])
    {
      goto LABEL_51;
    }

    v6 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [-[NSTextRange rangeInElement](v6 "rangeInElement")], objc_msgSend(objc_msgSend(a2, "elementRange"), "endLocation"));
  }

LABEL_38:
  v33 = *(a1 + 40);
  if (!v33)
  {
    goto LABEL_42;
  }

  v34 = objc_loadWeak((a1 + 80));
  v35 = [(NSTextRange *)v6 location];
  if (!v35)
  {
    v35 = [objc_msgSend(a2 "elementRange")];
  }

  v36 = [v33 textLayoutManager:v34 textLayoutFragmentForLocation:v35 inTextElement:a2];
  if (!v36)
  {
LABEL_42:
    v36 = [[NSTextLayoutFragment alloc] initWithTextElement:a2 range:v6];
  }

  [(NSTextLayoutFragment *)v36 setTextLayoutManager:objc_loadWeak((a1 + 80))];
  if (v5)
  {
    v37 = [v5 arrayByAddingObject:v36];
  }

  else
  {
    v70 = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  }

  v5 = v37;
  v38 = objc_loadWeak((a1 + 80));
  v39 = *(v38 + 12);
  if (!v39)
  {
    v39 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    *(v38 + 12) = v39;
  }

  if (!*(v38 + 11))
  {
    *(v38 + 11) = [(_NSTextRunStorage *)[_NSTextLayoutFragmentStorage alloc] initWithDataSource:v38];
    v39 = *(v38 + 12);
  }

  [v39 setObject:v5 forKey:a2];
  [*(v38 + 11) setTextLayoutFragments:v5];

LABEL_51:
  v40 = *(a1 + 98);
  if (v40)
  {
    v41 = 2;
  }

  else
  {
    v41 = 0;
  }

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __83__NSTextLayoutManager_enumerateTextLayoutFragmentsFromLocation_options_usingBlock___block_invoke_3;
  v46[3] = &unk_1E7266238;
  v51 = v40;
  v47 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
  v52 = *(a1 + 96);
  objc_copyWeak(v50, (a1 + 80));
  v50[1] = *(a1 + 88);
  v42 = *(a1 + 32);
  v48 = &v62;
  v49 = &v66;
  v43 = *(a1 + 48);
  v46[4] = v42;
  v46[5] = v43;
  [v5 enumerateObjectsWithOptions:v41 usingBlock:v46];
  objc_destroyWeak(v50);
  v16 = v63;
  v15 = *(v63 + 24);
LABEL_55:
  *(*(*(a1 + 72) + 8) + 24) = v15;
  v44 = *(v16 + 24);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);
  return (v44 & 1) == 0;
}

uint64_t __83__NSTextLayoutManager_enumerateTextLayoutFragmentsFromLocation_options_usingBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(a2 "textLineFragments")];
  *(*(*(a1 + 32) + 8) + 24) += result;
  if (*(*(*(a1 + 32) + 8) + 24) > *(a1 + 40))
  {
    *a4 = 1;
  }

  return result;
}

void __83__NSTextLayoutManager_enumerateTextLayoutFragmentsFromLocation_options_usingBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 rangeInElement];
  if (!*(*(*(a1 + 48) + 8) + 40) || (v8 = v7, ![v7 isNotEmpty]) || (*(a1 + 96) != 1 ? (v11 = *(*(*(a1 + 48) + 8) + 40), v10 = objc_msgSend(v8, "endLocation"), v9 = v11) : (v9 = objc_msgSend(v8, "location"), v10 = *(*(*(a1 + 48) + 8) + 40)), objc_msgSend(v9, "compare:", v10) == -1))
  {
    *(*(*(a1 + 56) + 8) + 32) = a2;
    if (*(a1 + 97) == 1)
    {
      if (*(a1 + 98) == 1 && (*(a1 + 96) & 1) == 0 && [a2 state] != 3)
      {
        [a2 layoutFragmentFrameOrigin];
        [a2 setLayoutFragmentFrameOrigin:?];
      }

      if (([objc_loadWeak((a1 + 80)) lastContainerFilled] & 1) == 0)
      {
        v12 = [objc_loadWeak((a1 + 80)) maximumNumberOfLinesForLastContainer];
        if (v12 < 1 || *(*(*(a1 + 56) + 8) + 56) < v12)
        {
          [a2 layout];
        }
      }

      v13 = [a2 state];
      if (v13 == 3)
      {
        [a2 layoutFragmentFrame];
        v15 = v14;
        v17 = v16;
        v18 = [a2 rangeInElement];
        *(*(*(a1 + 56) + 8) + 56) += [objc_msgSend(a2 "textLineFragments")];
        v19 = *(*(a1 + 56) + 8);
        v20 = v15 + v17;
        if (*(v19 + 81))
        {
          v20 = v15;
        }

        *(v19 + 48) = v20;
        if (*(*(*(a1 + 56) + 8) + 81) == 1)
        {
          v21 = [v18 location];
        }

        else
        {
          v21 = [v18 endLocation];
        }

        *(*(*(a1 + 56) + 8) + 40) = v21;
      }

      v22 = 1;
      if (([objc_loadWeak((a1 + 80)) lastContainerFilled] & 1) != 0 || v13 != 3)
      {
        *(*(*(a1 + 64) + 8) + 24) = 1;
        v22 = v13 == 3;
      }
    }

    else
    {
      if ((*(a1 + 88) & 2) != 0)
      {
        if (![a2 state])
        {
          [objc_loadWeak((a1 + 80)) _setSoftInvalidationLocation:objc_msgSend(objc_msgSend(a2 onlyIfUpstream:{"rangeInElement"), "location"), 1}];
        }

        [a2 estimateSize];
      }

      v22 = 1;
    }

    v23 = *(a1 + 32);
    if ((*(v23 + 136) & 1) == 0 && *(v23 + 304) && ([a2 _isRenderingAttributesValidated] & 1) == 0)
    {
      (*(*(*(a1 + 32) + 304) + 16))(*(*(a1 + 32) + 304), [a2 textLayoutManager], a2);
      [a2 set_renderingAttributesValidated:1];
    }

    *(*(*(a1 + 56) + 8) + 32) = 0;
    if (!v22)
    {
      goto LABEL_52;
    }

    v24 = objc_autoreleasePoolPush();
    if (*(*(a1 + 32) + 281) == 1)
    {
      v25 = [a2 rangeInElement];
      v26 = [*(a1 + 32) _textAnimationContextForLocation:{objc_msgSend(v25, "location")}];
      v27 = v26;
      if (v26 && ![v26 _hasRenderableComponentsForRange:v25])
      {
LABEL_51:
        objc_autoreleasePoolPop(v24);
        *(*(*(a1 + 56) + 8) + 72) = 0;
LABEL_52:
        *a4 = *(*(*(a1 + 64) + 8) + 24);
        return;
      }
    }

    else
    {
      v27 = 0;
    }

    if (*(a1 + 97) == 1)
    {
      v28 = [objc_msgSend(a2 "rangeInElement")];
      v29 = *(*(*(a1 + 72) + 8) + 24);
      if (!v29 || ([*(v29 + 16) containsLocation:v28] & 1) == 0)
      {
        Weak = objc_loadWeak((a1 + 80));
        *(*(*(a1 + 72) + 8) + 24) = __NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation(Weak, v28);
      }

      v31 = *(*(*(a1 + 72) + 8) + 24);
      if (v31)
      {
        *(*(*(a1 + 56) + 8) + 72) = *v31;
      }
    }

    if (v27)
    {
      [a2 _configureForTextAnimationContext:v27];
    }

    *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 40) + 16))() ^ 1;
    if (v27)
    {
      [a2 _configureForTextAnimationContext:0];
    }

    goto LABEL_51;
  }
}

__n128 __83__NSTextLayoutManager_enumerateTextLayoutFragmentsFromLocation_options_usingBlock___block_invoke_4(uint64_t a1, void *a2)
{
  __NSTextLayoutManagerRemoveTextLayoutFragmentsInTextRange(*(a1 + 32), a2, 0);
  v4 = *(a1 + 32);
  v5 = v4[33];
  if (v5 && (TextContainerEntryAndIndexForLocation = __NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation(v4, [a2 location])) != 0 && (v7 = *(TextContainerEntryAndIndexForLocation + 7), v7 < v5))
  {
    v8 = MEMORY[0x1E695F058];
    while (1)
    {
      TextContainerEntryAtIndex = __NSTextLayoutManagerGetTextContainerEntryAtIndex(v4, v7, 1);
      if (![TextContainerEntryAtIndex[2] intersectsWithTextRange:a2])
      {
        break;
      }

      *(TextContainerEntryAtIndex + 64) = 0;
      v11 = v8[1];
      *(TextContainerEntryAtIndex + 3) = *v8;
      *(TextContainerEntryAtIndex + 5) = v11;
      if (v5 == ++v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v12 = __NSTextLayoutManagerGetTextContainerEntryAtIndex(v4, 0x7FFFFFFFFFFFFFFFuLL, 1);
    if ([v12[2] intersectsWithTextRange:a2])
    {
      *(v12 + 64) = 0;
      result = *MEMORY[0x1E695F058];
      v13 = *(MEMORY[0x1E695F058] + 16);
      *(v12 + 3) = *MEMORY[0x1E695F058];
      *(v12 + 5) = v13;
    }
  }

  return result;
}

BOOL __83__NSTextLayoutManager_enumerateTextLayoutFragmentsFromLocation_options_usingBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v4 = [a2 rangeInElement];
  v5 = [v4 endLocation];
  v6 = [*(*(*(a1 + 32) + 8) + 40) compare:v5];
  if (v6 != -1)
  {
    *(*(*(a1 + 40) + 8) + 56) += [objc_msgSend(a2 "textLineFragments")];
    v7 = *(a1 + 48);
    [a2 layoutFragmentFrame];
    if (v7 == 1)
    {
      MinY = CGRectGetMinY(*&v8);
    }

    else
    {
      MinY = CGRectGetMaxY(*&v8);
    }

    *(*(*(a1 + 40) + 8) + 48) = MinY;
    if (*(a1 + 48) == 1)
    {
      v5 = [v4 location];
    }

    *(*(*(a1 + 40) + 8) + 40) = v5;
  }

  return v6 != -1;
}

uint64_t __83__NSTextLayoutManager_enumerateTextLayoutFragmentsFromLocation_options_usingBlock___block_invoke_7(uint64_t a1, void *a2)
{
  if (*(a1 + 72) != 1)
  {
    goto LABEL_26;
  }

  v3 = [a2 elementRange];
  v4 = v3;
  if (*(a1 + 73) == 1)
  {
    v5 = [v3 endLocation];
  }

  else
  {
    v5 = [v3 location];
  }

  v6 = v5;
  v7 = *(*(*(a1 + 56) + 8) + 40);
  if (v7)
  {
    v8 = *(a1 + 73);
LABEL_7:
    if (v8 == 1)
    {
      v9 = [v7 location];
    }

    else
    {
      v9 = [v7 endLocation];
    }

    v10 = v9;
    goto LABEL_12;
  }

  v10 = *(*(*(a1 + 64) + 8) + 40);
  if (!v10)
  {
    v8 = *(a1 + 73);
    v7 = *(a1 + 32);
    goto LABEL_7;
  }

LABEL_12:
  if (([v6 isEqual:v10] & 1) == 0 && (objc_msgSend(v4, "containsLocation:", v10) & 1) == 0 && (objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "containsRange:", v4) & 1) == 0)
  {
    if (*(a1 + 73))
    {
      v11 = v6;
    }

    else
    {
      v11 = v10;
    }

    if (*(a1 + 73))
    {
      v6 = v10;
    }

    if (v11)
    {
      v12 = v6 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = [[NSTextRange alloc] initWithLocation:v11 endLocation:v6];
      (*(*(a1 + 40) + 16))();
    }
  }

  *(*(*(a1 + 56) + 8) + 40) = v4;
LABEL_26:
  v14 = *(*(a1 + 48) + 16);

  return v14();
}

- (id)enumerateTextLayoutFragmentsInTextRange:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v9 = a4 & 1;
  v10 = [a3 isEmpty];
  if (a4)
  {
    v11 = [a3 endLocation];
  }

  else
  {
    v11 = [a3 location];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__NSTextLayoutManager_enumerateTextLayoutFragmentsInTextRange_options_usingBlock___block_invoke;
  v13[3] = &unk_1E7266300;
  v14 = v9;
  v15 = v10;
  v13[4] = a3;
  v13[5] = a5;
  return [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:v11 options:a4 usingBlock:v13];
}

uint64_t __82__NSTextLayoutManager_enumerateTextLayoutFragmentsInTextRange_options_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v4 = [objc_msgSend(objc_msgSend(a2 "representedRange")];
    v8 = v4 != 1;
    if (v4 != 1)
    {
LABEL_9:
      v5 = 0;
      return v5 & 1;
    }
  }

  else if ([objc_msgSend(*(a1 + 32) "endLocation")] == 1)
  {
    v8 = 0;
  }

  else
  {
    if ((*(a1 + 49) & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = [objc_msgSend(a2 "representedRange")];
    v8 = v6 ^ 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  (*(*(a1 + 40) + 16))();
  v5 = v8 ^ 1;
  return v5 & 1;
}

- (CGSize)estimatedSizeForLastTextContainer
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3010000000;
  v32 = "";
  v33 = *MEMORY[0x1E695F060];
  v3 = [(NSTextRange *)[(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange] endLocation];
  v4 = v3;
  if (v3)
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v28[3] = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy__2;
    v26 = __Block_byref_object_dispose__2;
    v27 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56__NSTextLayoutManager_estimatedSizeForLastTextContainer__block_invoke;
    v21[3] = &unk_1E7266328;
    v21[4] = v3;
    v21[5] = v28;
    v21[6] = &v22;
    v21[7] = &v29;
    [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:v3 options:11 usingBlock:v21];
    if (![(NSTextLayoutManager *)self usesContiguousLayout])
    {
      v5 = [NSTextRange alloc];
      if (v23[5])
      {
        v6 = v23[5];
      }

      else
      {
        v6 = v4;
      }

      v7 = [(NSTextRange *)v5 initWithLocation:v6];
      [(NSTextLayoutManager *)self ensureLayoutForRange:v7];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __56__NSTextLayoutManager_estimatedSizeForLastTextContainer__block_invoke_2;
      v20[3] = &unk_1E7266350;
      v20[4] = &v29;
      [(NSTextLayoutManager *)self enumerateTextSegmentsInRange:v7 type:1 options:1 usingBlock:v20];
    }

    v8 = v30;
    if (v30[4] > 0.0 && v30[5] <= 0.0)
    {
      if ([(NSTextLayoutManager *)self usesContiguousLayout]|| v23[5])
      {
        v9 = [(NSTextLayoutManager *)self textContainers];
        v10 = [(NSArray *)v9 indexOfObject:[(NSTextLayoutManager *)self textContainer]];
        if (v10 >= [(NSArray *)v9 count])
        {
          [(NSTextLayoutManager *)self usageBoundsForTextContainer];
        }

        else
        {
          [(NSTextLayoutManager *)self usageBoundsInTextContainerAtIndex:v10];
        }

        Height = CGRectGetHeight(*&v11);
        v8 = v30;
        v30[5] = Height;
      }

      else
      {
        v8 = v30;
      }
    }

    v15 = v8[4];
    v16 = v8[5];
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(v28, 8);
  }

  else
  {
    v15 = v30[4];
    v16 = v30[5];
  }

  _Block_object_dispose(&v29, 8);
  v18 = v15;
  v19 = v16;
  result.height = v19;
  result.width = v18;
  return result;
}

BOOL __56__NSTextLayoutManager_estimatedSizeForLastTextContainer__block_invoke(void *a1, void *a2)
{
  [a2 layoutFragmentFrame];
  v5 = v4;
  if (!*(*(a1[5] + 8) + 24) && ([objc_msgSend(objc_msgSend(a2 "rangeInElement")] & 1) == 0)
  {
    *(*(a1[6] + 8) + 40) = [objc_msgSend(a2 "rangeInElement")];
  }

  v6 = *(a1[7] + 8);
  if (v5 > *(v6 + 32))
  {
    *(v6 + 32) = v5;
  }

  return ++*(*(a1[5] + 8) + 24) < 0x64uLL;
}

- (id)_rangeForAllLinesContainingTextInRange:(id)a3
{
  v5 = [(NSTextLayoutManager *)self textContentManager];
  v6 = [a3 location];
  v7 = [(NSTextLayoutManager *)self textLayoutFragmentForLocation:v6];
  v8 = [(NSTextLayoutFragment *)v7 textParagraph];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (![(NSTextRange *)[(NSTextParagraph *)v8 paragraphContentRange] containsLocation:v6])
  {
    v6 = [(NSTextRange *)[(NSTextParagraph *)v9 paragraphSeparatorRange] endLocation];
    if ([v6 compare:{objc_msgSend(a3, "endLocation")}] != -1)
    {
      return 0;
    }
  }

  v11 = [-[NSTextLineFragment textLineFragmentRange](-[NSTextLayoutFragment textLineFragmentForTextLocation:isUpstreamAffinity:](v7 textLineFragmentForTextLocation:v6 isUpstreamAffinity:{0), "textLineFragmentRange"), "location"}];
  if (!v11)
  {
    v11 = [(NSTextRange *)[(NSTextLayoutFragment *)v7 rangeInElement] location];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v12 = [(NSTextRange *)[(NSTextContentManager *)v5 documentRange] endLocation];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__NSTextLayoutManager__rangeForAllLinesContainingTextInRange___block_invoke;
  v18[3] = &unk_1E7266378;
  v18[4] = v7;
  v18[5] = a3;
  v18[6] = &v19;
  [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:v12 options:1 usingBlock:v18];
  v13 = [v20[5] textLineFragmentForTextLocation:objc_msgSend(a3 isUpstreamAffinity:{"endLocation"), 1}];
  if (v13)
  {
    v14 = [v13 textLineFragmentRange];
  }

  else
  {
    v14 = [v20[5] rangeInElement];
  }

  v15 = [v14 endLocation];
  v16 = [v20[5] textParagraph];
  v10 = v16;
  if (v16)
  {
    if (([-[NSTextRange paragraphContentRange](v16 "paragraphContentRange")] & 1) == 0)
    {
      v15 = [-[NSTextRange paragraphContentRange](v10 "paragraphContentRange")];
    }

    v10 = 0;
    if (v11 && v15)
    {
      v10 = [[NSTextRange alloc] initWithLocation:v11 endLocation:v15];
    }
  }

  _Block_object_dispose(&v19, 8);
  return v10;
}

uint64_t __62__NSTextLayoutManager__rangeForAllLinesContainingTextInRange___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) != a2 && ([objc_msgSend(objc_msgSend(a2 "rangeInElement")] & 1) == 0 && objc_msgSend(objc_msgSend(objc_msgSend(a2, "rangeInElement"), "location"), "compare:", objc_msgSend(*(a1 + 40), "endLocation")) != -1)
  {
    return 1;
  }

  result = 0;
  *(*(*(a1 + 48) + 8) + 40) = a2;
  return result;
}

+ (int64_t)maximumNumberOfCachedTextLayoutFragments
{
  if (maximumNumberOfCachedTextLayoutFragments_onceToken != -1)
  {
    +[NSTextLayoutManager maximumNumberOfCachedTextLayoutFragments];
  }

  return maximumNumberOfCachedTextLayoutFragments_maxTextLayoutFragments;
}

uint64_t __63__NSTextLayoutManager_maximumNumberOfCachedTextLayoutFragments__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  v1 = 2000;
  if (result >= 1)
  {
    v1 = result;
  }

  maximumNumberOfCachedTextLayoutFragments_maxTextLayoutFragments = v1;
  return result;
}

- (int64_t)maximumNumberOfCachedTextLayoutFragments
{
  if (self->_maximumNumberOfCachedTextLayoutFragments > 0)
  {
    return self->_maximumNumberOfCachedTextLayoutFragments;
  }

  v4 = objc_opt_class();

  return [v4 maximumNumberOfCachedTextLayoutFragments];
}

- (BOOL)flushTextLayoutFragmentsFromLocation:(id)a3 direction:(BOOL)a4
{
  v4 = a4;
  objc_sync_enter(self);
  v7 = [(NSMapTable *)self->_textLayoutFragmentTable count];
  if (v7 > [(NSTextLayoutManager *)self maximumNumberOfCachedTextLayoutFragments])
  {
    v8 = [(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange];
    if (v4)
    {
      v9 = [(NSTextRange *)v8 location];
    }

    else
    {
      v9 = a3;
      a3 = [(NSTextRange *)v8 endLocation];
    }

    if ([v9 compare:a3] == -1)
    {
      v12 = [[NSTextRange alloc] initWithLocation:v9 endLocation:a3];
      __NSTextLayoutManagerRemoveTextLayoutFragmentsInTextRange(&self->super.isa, v12, 0);
      if ((self->_textContainerEntriesCount & 0x8000000000000000) != 0)
      {
        p_lastTextContainerEntry = &self->_textContainerEntries[-1];
      }

      else
      {
        p_lastTextContainerEntry = &self->_lastTextContainerEntry;
        if (!self->_lastTextContainerEntry.textContainer)
        {
          goto LABEL_13;
        }
      }

      p_lastTextContainerEntry->containerFilled = 0;
LABEL_13:

      v10 = 1;
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_7:
  objc_sync_exit(self);
  return v10;
}

+ (int64_t)_fallbackBaseWritingDirectionForApplicationFrameworkContext:(int64_t)a3
{
  if (a3 == 2)
  {
    return [NSParagraphStyle defaultWritingDirectionForLanguage:0];
  }

  else
  {
    return 0;
  }
}

- (void)_enumerateTextSegmentAndCategoryInRange:(id)a3 type:(int64_t)a4 options:(unint64_t)a5 allowsZeroWidthExtensions:(BOOL)a6 usingBlock:(id)a7
{
  v65 = (a5 >> 1) & 1;
  v62 = BYTE3(a5) & 1;
  v9 = (a4 - 1) < 2;
  v60 = a4 - 1;
  v10 = (a4 - 1) > 1;
  v11 = (a5 >> 27) & 1;
  v12 = (a5 >> 2) & 1;
  v69 = a5 & 1;
  v70 = a5 & 8;
  v14 = [a3 isEmpty];
  v15 = v14 & (a5 >> 4);
  v68 = +[NSTextLayoutFragment coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled];
  v109 = 0;
  v110 = &v109;
  v111 = 0x2020000000;
  v71 = v14;
  v61 = v10;
  if ((v14 & 1) != 0 || v10)
  {
    v16 = [objc_msgSend(a3 "endLocation")];
    v17 = 0;
  }

  else
  {
    v16 = 0;
    v17 = &v86;
  }

  v112 = v16;
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v96 = __113__NSTextLayoutManager__enumerateTextSegmentAndCategoryInRange_type_options_allowsZeroWidthExtensions_usingBlock___block_invoke;
  v97 = &unk_1E72663E8;
  v100 = v68;
  v101 = (a5 & 0x4000000) == 0;
  v102 = v11;
  v103 = v62;
  v104 = v69;
  v105 = a6;
  v106 = v71;
  v107 = v9;
  v98 = self;
  v99 = a7;
  v108 = v15;
  v93[0] = 0;
  v93[1] = v93;
  v93[2] = 0x2020000000;
  v94 = v12;
  v87 = 0;
  v88 = &v87;
  v89 = 0x3052000000;
  v90 = __Block_byref_object_copy__2;
  v91 = __Block_byref_object_dispose__2;
  v92 = 0;
  v86 = 0;
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __113__NSTextLayoutManager__enumerateTextSegmentAndCategoryInRange_type_options_allowsZeroWidthExtensions_usingBlock___block_invoke_4;
  v79[3] = &unk_1E7266430;
  v80 = v65;
  v81 = v71;
  v79[4] = self;
  v79[5] = a3;
  v82 = v15;
  v83 = v70 >> 3;
  v84 = v9;
  v79[10] = v17;
  v79[11] = a5;
  v79[6] = v95;
  v79[7] = v93;
  v79[8] = &v109;
  v79[9] = &v87;
  v85 = v12;
  [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsInTextRange:a3 options:12 usingBlock:v79];
  if (v88[5] || *(v110 + 24) == 1)
  {
    v73 = 0;
    v74 = &v73;
    v75 = 0x3052000000;
    v76 = __Block_byref_object_copy__2;
    v77 = __Block_byref_object_dispose__2;
    v78 = 0;
    v18 = [a3 endLocation];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __113__NSTextLayoutManager__enumerateTextSegmentAndCategoryInRange_type_options_allowsZeroWidthExtensions_usingBlock___block_invoke_6;
    v72[3] = &unk_1E7266328;
    v72[4] = a3;
    v72[5] = &v87;
    v72[6] = &v109;
    v72[7] = &v73;
    [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:v18 options:13 usingBlock:v72];
    v19 = v74[5];
    if (v19)
    {
      v20 = [v19 textParagraph];
      v66 = [v74[5] rangeInElement];
      v64 = -[NSTextLayoutManager textContainerForLocation:](self, "textContainerForLocation:", [v66 location]);
      if (v20)
      {
        v21 = [v74[5] textLineFragments];
        v22 = [v20 _resolvedBaseWritingDirectionWithFallbackDirection:{-[NSTextLayoutManager _fallbackWritingDirection](self, "_fallbackWritingDirection")}];
        v23 = [v21 count];
        [v74[5] layoutFragmentFrameOrigin];
        if (v23 >= 1)
        {
          v26 = v24;
          v27 = v25;
          if (*(v110 + 24) == 1)
          {
            v28 = [v21 lastObject];
            [v28 characterRange];
            if (v29)
            {
              (v96)(v95, v28, a3, v66, v22, (v60 < 2) & (v71 ^ 1u), 0, v64, v26, v27, 0);
            }

            else
            {
              [v28 glyphOrigin];
              v37 = v36;
              v39 = v38;
              [v64 lineFragmentPadding];
              v41 = v40;
              [v28 typographicBounds];
              v45 = v44;
              v47 = v46;
              v48 = v43 + v41 * -2.0;
              if (v68)
              {
                v49 = v37;
              }

              else
              {
                v48 = v43;
                v49 = v26;
              }

              v50 = v49 + v42;
              v51 = v50 + v48;
              if (v22 == 1)
              {
                v52 = v50;
              }

              else
              {
                v52 = v51;
              }

              if (v69)
              {
                v53 = 0;
              }

              else
              {
                v53 = [v28 textLineFragmentRange];
              }

              (*(a7 + 2))(a7, v53, v64, 1, v52, v27 + v45, 0.0, v47, v39);
            }
          }

          else
          {
            v30 = [v20 rangeForLocation:objc_msgSend(v66 allowsTrailingEdge:{"location"), 0}];
            v31 = [v20 rangeForLocation:objc_msgSend(a3 allowsTrailingEdge:{"endLocation"), 1}];
            v32 = [v20 paragraphSeparatorRange];
            if (v70)
            {
              v33 = 1;
            }

            else
            {
              v33 = v61;
            }

            if (v33)
            {
              v34 = (a5 >> 3) & 1;
            }

            else
            {
              v35 = v32;
              if ([v32 isEmpty])
              {
                LOBYTE(v34) = 0;
              }

              else
              {
                LOBYTE(v34) = [objc_msgSend(v35 "endLocation")];
              }
            }

            while (v23-- >= 1)
            {
              v55 = v34;
              v56 = [v21 objectAtIndexedSubscript:v23];
              v114.location = [v56 characterRange];
              v114.length = v57;
              v113.location = v30;
              v113.length = v31;
              v58 = NSIntersectionRange(v113, v114);
              LOBYTE(v34) = 0;
              if (v58.length)
              {
                v59 = [v66 textRangeByIntersectingWithTextRange:a3];
                (v96)(v95, v56, v59, v66, v22, (v60 < 2) & (v71 ^ 1u), v55 & 1, v64, v26, v27, v17);
                break;
              }
            }
          }
        }
      }
    }

    _Block_object_dispose(&v73, 8);
  }

  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(v93, 8);
  _Block_object_dispose(&v109, 8);
}

uint64_t __113__NSTextLayoutManager__enumerateTextSegmentAndCategoryInRange_type_options_allowsZeroWidthExtensions_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, uint64_t a6, uint64_t a7, int a8, int a9, void *a10, double *a11)
{
  v18 = [objc_msgSend(a10 "textLayoutManager")];
  [a2 glyphOrigin];
  v78 = v19;
  v21 = v20;
  [a10 size];
  v23 = v22;
  v24 = 10000000.0;
  v25 = v22 >= 10000000.0 || v22 <= 0.0;
  if (v18)
  {
    [v18 _viewportBounds];
    v24 = v26;
  }

  v75 = v21;
  [a10 lineFragmentPadding];
  v28 = v27;
  v29 = v23 - v27;
  if (v25)
  {
    v29 = v24;
  }

  v80 = v29;
  [a2 typographicBounds];
  v34 = v33;
  if (a11)
  {
    v35 = *a11;
  }

  else
  {
    v35 = 0.0;
  }

  v36 = *MEMORY[0x1E696AA80];
  v37 = *(MEMORY[0x1E696AA80] + 8);
  v39 = *(MEMORY[0x1E696AA80] + 16);
  v38 = *(MEMORY[0x1E696AA80] + 24);
  v114 = 0;
  v115[0] = &v114;
  v115[1] = 0x3052000000;
  v115[2] = __Block_byref_object_copy__2;
  v115[3] = __Block_byref_object_dispose__2;
  v115[4] = 0;
  v112 = 0;
  v113[0] = &v112;
  v113[1] = 0x3052000000;
  v113[2] = __Block_byref_object_copy__2;
  v113[3] = __Block_byref_object_dispose__2;
  v113[4] = 0;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  v40 = v31 + v28 * -2.0;
  if (!*(a1 + 48))
  {
    v40 = v31;
  }

  v72 = v40;
  if (*(a1 + 48))
  {
    v41 = v78;
  }

  else
  {
    v41 = a4;
  }

  v42 = a5 + v30;
  v43 = v35 < a5 + v30;
  v44 = v32 + a5 + v30 - v35;
  if (v35 > 0.0 && v43)
  {
    v42 = v35;
  }

  else
  {
    v44 = v32;
  }

  v76 = v42;
  v77 = v44;
  v81 = v38;
  v82 = v36;
  if (v28 >= v80)
  {
    v73 = a5;
    v55 = v39;
    v56 = v37;
    v57 = v36;
    goto LABEL_54;
  }

  v45 = [a2 textLineFragmentRange];
  v46 = objc_opt_class();
  v47 = NSStringFromClass(v46);
  _UIFoundationAssert(a2, v47, v45 != 0, &__block_literal_global_179);
  if (!v45)
  {
    v58 = 0;
    goto LABEL_71;
  }

  v73 = a5;
  v71 = v34 + v41;
  if (!a8)
  {
    v57 = v82;
    v55 = v39;
    v56 = v37;
    goto LABEL_40;
  }

  v48 = -[NSTextRange initWithLocation:]([NSTextRange alloc], "initWithLocation:", [v45 location]);
  v49 = v48;
  if (a7 == 1)
  {
    v70 = v72 + v71;
    if (v77 <= 0.0)
    {
      v51 = v37;
      v69 = v77;
      v37 = v76;
      v55 = v39;
      v57 = v82;
      v39 = v80 - (v72 + v71);
      goto LABEL_39;
    }

    v50 = v48;
    v51 = v37;
    if (v80 - (v72 + v71) >= 0.0)
    {
      v52 = v80 - (v72 + v71);
    }

    else
    {
      v52 = 0.0;
    }

    v53 = v113;
    v37 = v76;
    v54 = v77;
  }

  else
  {
    v55 = v71 - v28;
    v38 = v77;
    if (v77 <= 0.0)
    {
      v69 = v81;
      v70 = v82;
      v51 = v76;
      v57 = v28;
      goto LABEL_39;
    }

    v50 = v48;
    v53 = v115;
    v54 = v81;
    v52 = v39;
    v70 = v82;
    if (v55 >= 0.0)
    {
      v39 = v71 - v28;
    }

    else
    {
      v39 = 0.0;
    }

    v51 = v76;
    v81 = v77;
    v82 = v28;
  }

  v69 = v54;
  *(*v53 + 40) = v50;
  v55 = v39;
  v38 = v81;
  v57 = v82;
  v39 = v52;
LABEL_39:
  v56 = v51;

  v81 = v69;
  v82 = v70;
LABEL_40:
  if (!a9)
  {
    goto LABEL_54;
  }

  v59 = v115;
  v60 = -[NSTextRange initWithLocation:]([NSTextRange alloc], "initWithLocation:", [v45 endLocation]);
  v61 = v60;
  if (a7 == 1)
  {
    v55 = v71 - v28;
    v38 = v77;
    if (v77 <= 0.0)
    {
      v56 = v76;
      v57 = v28;
      goto LABEL_53;
    }

    v62 = v60;
    if (v55 < 0.0)
    {
      v55 = 0.0;
    }

    v56 = v76;
    v38 = v77;
    v57 = v28;
  }

  else
  {
    v82 = v72 + v71;
    v39 = v80 - (v72 + v71);
    if (v77 <= 0.0)
    {
      v81 = v77;
      v37 = v76;
      goto LABEL_53;
    }

    v62 = v60;
    if (v39 < 0.0)
    {
      v39 = 0.0;
    }

    v59 = v113;
    v37 = v76;
    v81 = v77;
  }

  *(*v59 + 40) = v62;
LABEL_53:

LABEL_54:
  v63 = *(a1 + 49);
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __113__NSTextLayoutManager__enumerateTextSegmentAndCategoryInRange_type_options_allowsZeroWidthExtensions_usingBlock___block_invoke_3;
  v83[3] = &unk_1E72663C0;
  v104 = *(a1 + 48);
  v88 = a4;
  v89 = v73;
  v83[4] = a10;
  v83[5] = a2;
  v90 = v35;
  v85 = &v114;
  v91 = a7;
  v92 = v57;
  v93 = v56;
  v94 = v55;
  v95 = v38;
  v105 = *(a1 + 50);
  v96 = v78;
  v97 = v75;
  v86 = &v108;
  v87 = &v112;
  v98 = v82;
  v99 = v37;
  v100 = v39;
  v101 = v81;
  v106 = *(a1 + 54);
  v107 = *(a1 + 55);
  v84 = *(a1 + 32);
  v102 = v28;
  v103 = v80;
  [a2 enumerateTextSegmentBoundsInTextRange:a3 dataSourceLocationsOnly:v63 usingBlock:v83];
  if (*(v115[0] + 40))
  {
    if ((*(a1 + 53) & 1) != 0 || (v116.origin.x = v57, v116.origin.y = v56, v116.size.width = v55, v116.size.height = v38, CGRectGetWidth(v116) > 0.0))
    {
      if (*(a1 + 52))
      {
        v64 = 0;
      }

      else
      {
        v64 = *(v115[0] + 40);
      }

      v65 = (*(*(a1 + 40) + 16))(*(a1 + 40), v64, a10, 2, v57, v56, v55, v38, v75);
      *(v109 + 24) = v65 ^ 1;
    }
  }

  if (*(v113[0] + 40))
  {
    if ((*(a1 + 53) & 1) != 0 || (v117.size.height = v81, v117.origin.x = v82, v117.origin.y = v37, v117.size.width = v39, CGRectGetWidth(v117) > 0.0))
    {
      if (*(a1 + 52))
      {
        v66 = 0;
      }

      else
      {
        v66 = *(v113[0] + 40);
      }

      v67 = (*(*(a1 + 40) + 16))(*(a1 + 40), v66, a10, 4, v82, v37, v39, v81, v75);
      *(v109 + 24) = v67 ^ 1;
    }
  }

  if (a11)
  {
    *a11 = v76 + v77;
  }

  v58 = *(v109 + 24);
LABEL_71:
  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v114, 8);
  return v58 & 1;
}

uint64_t __113__NSTextLayoutManager__enumerateTextSegmentAndCategoryInRange_type_options_allowsZeroWidthExtensions_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v5.location = [a2 characterRange];
  return [v3 stringWithFormat:@"nil textRange for textLineFragment %@ %@", a2, NSStringFromRange(v5)];
}

void __113__NSTextLayoutManager__enumerateTextSegmentAndCategoryInRange_type_options_allowsZeroWidthExtensions_usingBlock___block_invoke_3(uint64_t a1, void *a2, __n128 a3, double a4, __n128 a5, double a6)
{
  height = a6;
  width = a5.n128_f64[0];
  x = a3.n128_f64[0];
  if ((*(a1 + 216) & 1) == 0)
  {
    x = a3.n128_f64[0] + *(a1 + 88);
  }

  v11 = *(a1 + 96);
  v12 = a4 + v11;
  if (*(a1 + 217) == 1)
  {
    if ([*(a1 + 32) layoutOrientation] == 1)
    {
      v22.origin.x = x;
      v22.origin.y = v12;
      v22.size.width = width;
      v22.size.height = height;
      a3.n128_f64[0] = floor(CGRectGetHeight(v22) + -3.0);
    }

    else
    {
      [*(a1 + 40) glyphOrigin];
      a3.n128_f64[0] = v15 + 2.0;
    }

    y = v12 + a3.n128_f64[0];
    height = 2.0;
  }

  else
  {
    y = *(a1 + 104);
    if (y > 0.0 && y < v12)
    {
      height = a6 + v12 - y;
    }

    else
    {
      y = a4 + v11;
    }
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if (*(a1 + 112) == 1)
    {
      v16 = [a2 endLocation];
    }

    else
    {
      v16 = [a2 location];
    }

    if ((*(a1 + 218) & 1) != 0 || x - (*(a1 + 120) + *(a1 + 136)) >= 0.001 || ![objc_msgSend(*(*(*(a1 + 64) + 8) + 40) "endLocation")])
    {
      if ((*(a1 + 220) & 1) != 0 || CGRectGetWidth(*(a1 + 120)) > 0.0)
      {
        if (*(a1 + 219))
        {
          v18 = 0;
        }

        else
        {
          v18 = *(*(*(a1 + 64) + 8) + 40);
        }

        *(*(*(a1 + 72) + 8) + 24) = (*(*(a1 + 56) + 16))(*(a1 + 56), v18, *(a1 + 32), 2, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 160)) ^ 1;
      }

      v17 = 1;
    }

    else
    {
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v24 = NSUnionRect(v23, *(a1 + 120));
      x = v24.origin.x;
      y = v24.origin.y;
      width = v24.size.width;
      height = v24.size.height;
      if ((*(a1 + 219) & 1) == 0)
      {
        a2 = [a2 textRangeByFormingUnionWithTextRange:*(*(*(a1 + 64) + 8) + 40)];
      }

      v17 = 3;
    }

    *(*(*(a1 + 64) + 8) + 40) = 0;
  }

  else
  {
    v17 = 1;
  }

  if ((*(a1 + 218) & 1) == 0 && *(*(*(a1 + 80) + 8) + 40) && *(a1 + 168) - (x + width) < 0.001)
  {
    v19 = *(a1 + 112) == 1 ? [a2 location] : objc_msgSend(a2, "endLocation");
    if ([objc_msgSend(*(*(*(a1 + 80) + 8) + 40) "location")])
    {
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v26 = NSUnionRect(v25, *(a1 + 168));
      x = v26.origin.x;
      y = v26.origin.y;
      width = v26.size.width;
      height = v26.size.height;
      if ((*(a1 + 219) & 1) == 0)
      {
        a2 = [a2 textRangeByFormingUnionWithTextRange:*(*(*(a1 + 80) + 8) + 40)];
      }

      v17 |= 4uLL;

      *(*(*(a1 + 80) + 8) + 40) = 0;
    }
  }

  if ((*(a1 + 218) & 1) == 0)
  {
    if (*(a1 + 221) == 1 && *(a1 + 222) == 1)
    {
      [objc_msgSend(*(a1 + 48) "textSelectionNavigation")];
      if (a3.n128_f64[0] >= 0.0)
      {
        x = a3.n128_f64[0];
      }
    }

    if (*(a1 + 222) != 1)
    {
      goto LABEL_54;
    }

    a3.n128_u64[0] = *(a1 + 200);
    v20 = *(a1 + 208);
    if (a3.n128_f64[0] >= v20)
    {
      goto LABEL_54;
    }

    if (width + x > v20)
    {
      width = v20 - x;
    }

    if (x < a3.n128_f64[0])
    {
      width = width - (a3.n128_f64[0] - x);
    }

    else
    {
LABEL_54:
      a3.n128_f64[0] = x;
    }

    if (width >= 0.0)
    {
      a5.n128_f64[0] = width;
    }

    else
    {
      a5.n128_f64[0] = 0.0;
    }

    if (*(a1 + 219))
    {
      v21 = 0;
    }

    else
    {
      v21 = a2;
    }

    *(*(*(a1 + 72) + 8) + 24) = (*(*(a1 + 56) + 16))(*(a1 + 56), v21, *(a1 + 32), v17, a3, y, a5, height, *(a1 + 160)) ^ 1;
  }
}

NSUInteger __113__NSTextLayoutManager__enumerateTextSegmentAndCategoryInRange_type_options_allowsZeroWidthExtensions_usingBlock___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = [a2 textParagraph];
  v49 = [a2 rangeInElement];
  result = [*(a1 + 32) textContainerForLocation:{objc_msgSend(v49, "location")}];
  if (*(a1 + 96))
  {
    v8 = 1;
    if (!v6)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v8 = *(a1 + 97);
    if (!v6)
    {
      goto LABEL_61;
    }
  }

  result = [*(a1 + 40) isEmpty];
  v9 = *(a1 + 40);
  if ((result & 1) == 0)
  {
    result = [*(a1 + 40) textRangeByIntersectingWithTextRange:v49];
    v9 = result;
  }

  if (v9)
  {
    result = [v9 isEmpty];
    if (!result || *(a1 + 97) == 1 && (result = [v49 containsLocation:{objc_msgSend(*(a1 + 40), "location")}], result))
    {
      v10 = v8;
      v11 = [v6 paragraphSeparatorRange];
      v12 = [a2 textLineFragments];
      [v6 _resolvedBaseWritingDirectionWithFallbackDirection:{objc_msgSend(*(a1 + 32), "_fallbackWritingDirection")}];
      v47 = v12;
      v48 = [v12 count];
      [a2 layoutFragmentFrameOrigin];
      v14 = v13;
      v16 = v15;
      v45 = v9;
      if ((*(a1 + 97) & 1) != 0 || [objc_msgSend(v9 "endLocation")])
      {
        if (([v11 isEmpty] & 1) == 0)
        {
          [objc_msgSend(v11 "endLocation")];
        }

        v17 = 0;
      }

      else
      {
        v17 = 1;
      }

      v8 = v10;
      v18 = *(a1 + 97) == 1 ? *(a1 + 40) : v45;
      result = [v6 rangeForLocation:objc_msgSend(v18 allowsTrailingEdge:{"location"), 0}];
      v44 = result;
      if (*(a1 + 97))
      {
        v19 = 0;
      }

      else
      {
        v20 = result;
        result = [v6 rangeForLocation:objc_msgSend(v45 allowsTrailingEdge:{"endLocation"), 1}];
        v19 = result - v20;
      }

      if (v48 >= 1)
      {
        v40 = a2;
        v39 = v6;
        v21 = 0;
        v22 = v44;
        v41 = v19 + v44;
        if (v19)
        {
          v23 = v17;
        }

        else
        {
          v23 = 1;
        }

        v42 = v23;
        v43 = v17 ^ 1;
        v46 = v19;
        do
        {
          v24 = [v47 objectAtIndexedSubscript:v21];
          v51.location = [v24 characterRange];
          location = v51.location;
          length = v51.length;
          v52.location = v22;
          v52.length = v19;
          v27 = NSIntersectionRange(v51, v52);
          result = v27.location;
          if (v27.length)
          {
            v28 = v43;
            if ((v42 & 1) == 0)
            {
              v28 = location + length >= v41;
            }
          }

          else
          {
            if (v19)
            {
              v29 = location + length;
LABEL_34:
              if (v29 <= v22)
              {
                v19 = v46;
                if (*(a1 + 80) && (*(a1 + 91) & 2) != 0)
                {
                  result = [v24 typographicBounds];
                  **(a1 + 80) = v16 + v30 + v31;
                }
              }

              else
              {
                v8 = 1;
                v19 = v46;
              }

              goto LABEL_55;
            }

            if (v22 < location || (v28 = v43, v22 - location >= length))
            {
              v29 = location + length;
              if (*(a1 + 98) != 1)
              {
                goto LABEL_34;
              }

              v28 = v43;
              if (v22 != v29)
              {
                goto LABEL_34;
              }
            }
          }

          v32 = *(a1 + 80);
          if (v32 && *v32 == 0.0 && (*(a1 + 91) & 2) != 0)
          {
            v33 = v8;
            v34 = a3;
            v35 = [v40 textLayoutManager];
            v36 = [v49 location];
            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v50[2] = __113__NSTextLayoutManager__enumerateTextSegmentAndCategoryInRange_type_options_allowsZeroWidthExtensions_usingBlock___block_invoke_5;
            v50[3] = &__block_descriptor_40_e30_B16__0__NSTextLayoutFragment_8l;
            v50[4] = *(a1 + 80);
            v37 = v35;
            a3 = v34;
            v8 = v33;
            [v37 enumerateTextLayoutFragmentsFromLocation:v36 options:5 usingBlock:v50];
          }

          result = (*(*(a1 + 48) + 16))(v14, v16);
          if (result)
          {
            *(*(*(a1 + 64) + 8) + 24) = 0;
            goto LABEL_60;
          }

          if (v8)
          {
            if (!v28)
            {
              result = [v39 locationForCharacterIndex:location + length dataSourceLocationsOnly:0 actualRange:0];
              *(*(*(a1 + 72) + 8) + 40) = result;
            }

LABEL_60:
            v8 = 1;
            break;
          }

          if (*(a1 + 100) == 1 && *(a1 + 97) != 1)
          {
            v38 = 1;
          }

          else
          {
            v38 = *(a1 + 101);
          }

          v22 = v44;
          v19 = v46;
          v8 = 0;
          *(*(*(a1 + 56) + 8) + 24) = v38 & 1;
LABEL_55:
          ++v21;
        }

        while (v48 != v21);
      }
    }
  }

LABEL_61:
  *a3 = v8 & 1;
  return result;
}

uint64_t __113__NSTextLayoutManager__enumerateTextSegmentAndCategoryInRange_type_options_allowsZeroWidthExtensions_usingBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(a2 "textLineFragments")];
  if (v4)
  {
    [v4 typographicBounds];
    v7 = v5 + v6;
    [a2 layoutFragmentFrameOrigin];
    **(a1 + 32) = v8 + v7;
  }

  return 0;
}

uint64_t __113__NSTextLayoutManager__enumerateTextSegmentAndCategoryInRange_type_options_allowsZeroWidthExtensions_usingBlock___block_invoke_6(uint64_t a1, void *a2)
{
  if ([*(*(*(a1 + 40) + 8) + 40) compare:{objc_msgSend(*(a1 + 32), "endLocation")}] == -1 || *(*(*(a1 + 48) + 8) + 24) == 1 && objc_msgSend(objc_msgSend(objc_msgSend(a2, "rangeInElement"), "endLocation"), "isEqual:", objc_msgSend(*(a1 + 32), "endLocation")))
  {
    *(*(*(a1 + 56) + 8) + 40) = a2;
  }

  return 0;
}

- (void)enumerateTextSegmentsInRange:(NSTextRange *)textRange type:(NSTextLayoutManagerSegmentType)type options:(NSTextLayoutManagerSegmentOptions)options usingBlock:(void *)block
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__NSTextLayoutManager_enumerateTextSegmentsInRange_type_options_usingBlock___block_invoke;
  v6[3] = &unk_1E7266458;
  v6[4] = block;
  [(NSTextLayoutManager *)self _enumerateTextSegmentAndCategoryInRange:textRange type:type options:options allowsZeroWidthExtensions:0 usingBlock:v6];
}

- (void)synchronize
{
  v2 = [(NSTextLayoutManager *)self textContentManager];

  [(NSTextContentManager *)v2 synchronizeTextLayoutManagers:0];
}

- (void)replaceContentsInRange:(NSTextRange *)range withTextElements:(NSArray *)textElements
{
  v6 = [(NSTextLayoutManager *)self textContentManager];

  [(NSTextContentManager *)v6 replaceContentsInRange:range withTextElements:textElements];
}

- (void)replaceContentsInRange:(NSTextRange *)range withAttributedString:(NSAttributedString *)attributedString
{
  v6 = [NSTextParagraph textParagraphsForAttributedString:attributedString range:0, [(NSAttributedString *)attributedString length]];

  [(NSTextLayoutManager *)self replaceContentsInRange:range withTextElements:v6];
}

- (void)enumerateRenderingAttributesFromLocation:(id)location reverse:(BOOL)reverse usingBlock:(void *)block
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__NSTextLayoutManager_enumerateRenderingAttributesFromLocation_reverse_usingBlock___block_invoke;
  v5[3] = &unk_1E7266480;
  v5[4] = block;
  [(NSTextLayoutManager *)self enumerateTemporaryAttributesFromLocation:location reverse:reverse usingBlock:v5];
}

uint64_t __83__NSTextLayoutManager_enumerateRenderingAttributesFromLocation_reverse_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  *a5 = result ^ 1;
  return result;
}

- (void)enumerateTemporaryAttributesFromLocation:(id)a3 reverse:(BOOL)a4 usingBlock:(id)a5
{
  v6 = a4;
  objc_sync_enter(self);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  self->_isProcessingRenderingAttributesMethod = 1;
  v9 = [(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange];
  if (a3)
  {
    v10 = v9;
    if ([(NSTextRange *)v9 isNotEmpty])
    {
      if ([a3 compare:{-[NSTextRange endLocation](v10, "endLocation")}] != 1)
      {
        if (v6)
        {
          v11 = [[NSTextRange alloc] initWithLocation:[(NSTextRange *)v10 location] endLocation:a3];
        }

        else
        {
          v11 = [[NSTextRange alloc] initWithLocation:a3 endLocation:[(NSTextRange *)v10 endLocation]];
        }

        v16[5] = v11;
        temporaryAttributesTable = self->_temporaryAttributesTable;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __83__NSTextLayoutManager_enumerateTemporaryAttributesFromLocation_reverse_usingBlock___block_invoke;
        v14[3] = &unk_1E72664A8;
        v14[5] = a5;
        v14[6] = &v15;
        v14[4] = self;
        [(_NSTextAttributeStorage *)temporaryAttributesTable enumerateAttributesFromLocation:a3 reverse:v6 usingBlock:v14];
      }
    }
  }

  v13 = v16[5];
  if (v13)
  {
  }

  self->_isProcessingRenderingAttributesMethod = 0;
  _Block_object_dispose(&v15, 8);
  objc_sync_exit(self);
}

uint64_t __83__NSTextLayoutManager_enumerateTemporaryAttributesFromLocation_reverse_usingBlock___block_invoke(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = [a3 textRangeByIntersectingWithTextRange:*(*(a1[6] + 8) + 40)];
  if (result)
  {
    v10 = a1[4];
    v9 = a1[5];
    v11 = [a3 textRangeByIntersectingWithTextRange:*(*(a1[6] + 8) + 40)];
    v12 = *(v9 + 16);

    return v12(v9, v10, a2, v11, a4);
  }

  return result;
}

- (id)temporaryAttributesTable
{
  result = self->_temporaryAttributesTable;
  if (!result)
  {
    result = [(_NSTextRunStorage *)[_NSTextAttributeStorage alloc] initWithDataSource:self];
    self->_temporaryAttributesTable = result;
  }

  return result;
}

- (void)setTemporaryAttributes:(id)a3 forTextRange:(id)a4
{
  objc_sync_enter(self);
  self->_isProcessingRenderingAttributesMethod = 1;
  if ([-[NSTextLayoutManager temporaryAttributesTable](self "temporaryAttributesTable")])
  {
    if ([objc_msgSend(a4 "endLocation")])
    {
      -[_NSTextLayoutFragmentStorage enumerateTextLayoutFragmentFromLocation:options:usingBlock:](self->_textLayoutFragmentStorage, "enumerateTextLayoutFragmentFromLocation:options:usingBlock:", [a4 location], 0, &v7);
    }

    else
    {
      [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage enumerateTextLayoutFragmentInTextRange:a4 options:0 usingBlock:&v7];
    }
  }

  self->_isProcessingRenderingAttributesMethod = 0;
  objc_sync_exit(self);
}

uint64_t __59__NSTextLayoutManager_setTemporaryAttributes_forTextRange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 textRangeByIntersectingWithTextRange:*(a1 + 40)];

  return [a2 layoutManagerDidSetTemporaryAttributes:v4 forTextRange:v5];
}

- (void)addTemporaryAttribute:(id)a3 value:(id)a4 forTextRange:(id)a5
{
  objc_sync_enter(self);
  self->_isProcessingRenderingAttributesMethod = 1;
  if ([-[NSTextLayoutManager temporaryAttributesTable](self "temporaryAttributesTable")])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__NSTextLayoutManager_addTemporaryAttribute_value_forTextRange___block_invoke;
    v9[3] = &unk_1E72664F8;
    v9[4] = a3;
    v9[5] = a4;
    v9[6] = a5;
    if ([objc_msgSend(a5 "endLocation")])
    {
      -[_NSTextLayoutFragmentStorage enumerateTextLayoutFragmentFromLocation:options:usingBlock:](self->_textLayoutFragmentStorage, "enumerateTextLayoutFragmentFromLocation:options:usingBlock:", [a5 location], 0, v9);
    }

    else
    {
      [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage enumerateTextLayoutFragmentInTextRange:a5 options:0 usingBlock:v9];
    }
  }

  self->_isProcessingRenderingAttributesMethod = 0;
  objc_sync_exit(self);
}

uint64_t __64__NSTextLayoutManager_addTemporaryAttribute_value_forTextRange___block_invoke(void *a1, void *a2, void *a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  v5 = a1[4];
  v6[0] = v3;
  return [a2 layoutManagerDidSetTemporaryAttributes:objc_msgSend(MEMORY[0x1E695DF20] forTextRange:{"dictionaryWithObjects:forKeys:count:", v6, &v5, 1), objc_msgSend(a3, "textRangeByIntersectingWithTextRange:", a1[6])}];
}

- (void)removeTemporaryAttribute:(id)a3 forTextRange:(id)a4
{
  objc_sync_enter(self);
  self->_isProcessingRenderingAttributesMethod = 1;
  if ([-[NSTextLayoutManager temporaryAttributesTable](self "temporaryAttributesTable")])
  {
    if ([objc_msgSend(a4 "endLocation")])
    {
      -[_NSTextLayoutFragmentStorage enumerateTextLayoutFragmentFromLocation:options:usingBlock:](self->_textLayoutFragmentStorage, "enumerateTextLayoutFragmentFromLocation:options:usingBlock:", [a4 location], 0, &v7);
    }

    else
    {
      [(_NSTextLayoutFragmentStorage *)self->_textLayoutFragmentStorage enumerateTextLayoutFragmentInTextRange:a4 options:0 usingBlock:&v7];
    }
  }

  self->_isProcessingRenderingAttributesMethod = 0;
  objc_sync_exit(self);
}

uint64_t __61__NSTextLayoutManager_removeTemporaryAttribute_forTextRange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8[0] = [MEMORY[0x1E695DFB0] null];
  return [a2 layoutManagerDidSetTemporaryAttributes:objc_msgSend(MEMORY[0x1E695DF20] forTextRange:{"dictionaryWithObjects:forKeys:count:", v8, &v7, 1), objc_msgSend(a3, "textRangeByIntersectingWithTextRange:", *(a1 + 40))}];
}

- (void)invalidateTemporaryAttributesForTextRange:(id)a3
{
  objc_sync_enter(self);
  self->_isProcessingRenderingAttributesMethod = 1;
  [-[NSTextLayoutManager temporaryAttributesTable](self "temporaryAttributesTable")];
  self->_isProcessingRenderingAttributesMethod = 0;

  objc_sync_exit(self);
}

+ (NSDictionary)linkRenderingAttributes
{
  if (linkRenderingAttributes_onceToken != -1)
  {
    +[NSTextLayoutManager linkRenderingAttributes];
  }

  return linkRenderingAttributes_defaultLinkAttributes;
}

uint64_t __46__NSTextLayoutManager_linkRenderingAttributes__block_invoke()
{
  if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
  {
    v0 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", 1];
  }

  else
  {
    v0 = +[NSTextGraphicsContextProvider __defaultColorClass];
  }

  v1 = [(objc_class *)v0 linkColor];
  v2 = objc_alloc(MEMORY[0x1E695DF20]);
  result = [v2 initWithObjectsAndKeys:{v1, @"NSColor", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 1), @"NSUnderline", 0}];
  linkRenderingAttributes_defaultLinkAttributes = result;
  return result;
}

+ (NSDictionary)linkRenderingAttributesForLabels
{
  if (linkRenderingAttributesForLabels_onceToken != -1)
  {
    +[NSTextLayoutManager linkRenderingAttributesForLabels];
  }

  return linkRenderingAttributesForLabels_defaultLinkAttributes;
}

uint64_t __55__NSTextLayoutManager_linkRenderingAttributesForLabels__block_invoke()
{
  if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
  {
    v0 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", 1];
  }

  else
  {
    v0 = +[NSTextGraphicsContextProvider __defaultColorClass];
  }

  v1 = [(objc_class *)v0 linkColor];
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v1, @"NSColor", 0}];
  linkRenderingAttributesForLabels_defaultLinkAttributes = result;
  return result;
}

- (NSDictionary)renderingAttributesForLink:(id)link atLocation:(id)location
{
  v7 = [objc_opt_class() linkRenderingAttributes];
  v8 = [(NSTextLayoutManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    result = [v8 textLayoutManager:self renderingAttributesForLink:link atLocation:location defaultAttributes:v7];
  }

  else
  {
    result = [-[NSTextLayoutManager textContainerForLocation:](self textContainerForLocation:{location), "linkTextAttributes"}];
  }

  if (!result)
  {
    return v7;
  }

  return result;
}

- (void)_fixSelectionAfterChangeInCharacterRange:(_NSRange)a3 changeInLength:(int64_t)a4
{
  length = a3.length;
  location = a3.location;
  v8 = [(NSTextLayoutManager *)self textSelections];
  if (v8)
  {
    v9 = [(NSTextLayoutManager *)self adjustedTextSelectionsForEditingContextFromTextSelections:v8];
    if (v9)
    {
      [(NSTextLayoutManager *)self setTextSelections:v9];
    }
  }

  if (self->_temporaryAttributesTable)
  {
    v10 = [[NSCountableTextRange alloc] initWithRange:location, length - a4];
    [(_NSTextRunStorage *)self->_temporaryAttributesTable invalidateElementsInRange:v10 delta:a4];
  }
}

- (void)markedTextAttributesForRange:(id)a3 usingBlock:(id)a4
{
  v7 = [a3 location];
  v8 = [a3 endLocation];
  if (v8)
  {
    v9 = v8;
    v10 = objc_autoreleasePoolPush();
    while ([v7 compare:v9] == -1)
    {
      v13 = 0;
      v11 = [(NSTextLayoutManager *)self _selectionAndMarkedTextAttributesForLocation:v7 inTextRange:a3 effectiveTextRange:&v13];
      v12 = v13;
      if (!v13)
      {
        v12 = a3;
      }

      v7 = [v12 endLocation];
      (*(a4 + 2))(a4, v13, v11);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (id)_selectionAndMarkedTextAttributesForLocation:(id)a3 inTextRange:(id)a4 effectiveTextRange:(id *)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = [(NSTextLayoutManager *)self textContainerForLocation:?];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v48 = a5;
  v10 = [(NSTextLayoutManager *)self textSelections];
  v11 = [(NSTextRange *)[(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange] location];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v12 = [(NSArray *)v10 countByEnumeratingWithState:&v51 objects:&v55 count:16];
  v46 = v9;
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
LABEL_4:
    v15 = 0;
    while (1)
    {
      if (*v52 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v51 + 1) + 8 * v15);
      if ([a3 compare:{objc_msgSend(objc_msgSend(objc_msgSend(v16, "textRanges", v46), "firstObject"), "location")}] != -1)
      {
        v50 = 0x7FFFFFFFFFFFFFFFLL;
        v17 = [v16 _containsLocation:a3 rangeIndex:&v50];
        if (v50 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }
      }

      v11 = [objc_msgSend(objc_msgSend(v16 "textRanges")];
      if (v13 == ++v15)
      {
        v13 = [(NSArray *)v10 countByEnumeratingWithState:&v51 objects:&v55 count:16];
        if (v13)
        {
          goto LABEL_4;
        }

        v18 = 0;
        v19 = 0;
        goto LABEL_13;
      }
    }

    v18 = v17;
    v20 = [v16 textRanges];
    v19 = [v20 objectAtIndexedSubscript:v50];
    if (v18)
    {
LABEL_13:
      v9 = v46;
      goto LABEL_18;
    }

    v9 = v46;
    if (v50)
    {
      v21 = [v16 textRanges];
      v11 = [objc_msgSend(v21 objectAtIndexedSubscript:{v50 - 1), "endLocation"}];
    }

    v19 = [[NSTextRange alloc] initWithLocation:v11 endLocation:[(NSTextRange *)v19 location]];
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

LABEL_18:
  v22 = [(NSTextLayoutManager *)self textContentManager];
  v23 = [(NSTextLayoutManager *)self offsetFromLocation:[(NSTextRange *)[(NSTextContentManager *)v22 documentRange] location] toLocation:a3];
  v55 = 0;
  v56 = 0;
  v24 = [v9 markedTextAttributesAtCharacterIndex:v23 effectiveRange:&v55];
  if (v56)
  {
    v25 = v24;
    v26 = [(NSTextLayoutManager *)self textContentManager];
    v27 = [(NSTextRange *)[(NSTextContentManager *)v22 documentRange] location];
    v28 = v55;
    v29 = v56;
    v30 = [(NSTextContentManager *)v26 locationFromLocation:v27 withOffset:v55];
    if (v29)
    {
      v31 = [(NSTextContentManager *)v26 locationFromLocation:v27 withOffset:v29 + v28];
    }

    else
    {
      v31 = 0;
    }

    v33 = [[NSTextRange alloc] initWithLocation:v30 endLocation:v31];
    v32 = [(NSTextRange *)v33 textRangeByIntersectingWithTextRange:a4];

    if (v32)
    {
      v34 = 0;
      if (![(NSTextRange *)v32 isEmpty])
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v32 = 0;
  }

  v34 = 1;
LABEL_27:
  v25 = 0;
LABEL_28:
  v35 = 0;
  if (!v25 && v19)
  {
    v36 = [(NSTextRange *)v19 textRangeByIntersectingWithTextRange:a4];
    v19 = v36;
    if (v18 && [(NSTextRange *)v36 isNotEmpty])
    {
      v35 = [v47 selectedTextAttributes];
      if ([v35 count])
      {
        if (![v35 objectForKeyedSubscript:@"NSBackgroundColor"])
        {
          v37 = 0;
LABEL_66:
          v44 = [v35 objectForKeyedSubscript:@"NSColor"];
          if (v44)
          {
            v45 = v44;
            if (!v37)
            {
              v37 = [v35 mutableCopy];
            }

            [v37 setObject:v45 forKeyedSubscript:0x1F01B1C38];
            [v37 removeObjectForKey:@"NSColor"];
            v35 = v37;
          }

          goto LABEL_37;
        }

        if ([v35 count] >= 2)
        {
          v37 = [v35 mutableCopy];
          [v37 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKeyedSubscript:{"null"), @"NSBackgroundColor"}];
          v35 = v37;
          goto LABEL_66;
        }
      }

      v37 = 0;
      v35 = 0;
      goto LABEL_66;
    }

    v35 = 0;
  }

LABEL_37:
  if (v25 | v19)
  {
    if (v25 && v19)
    {
      if (v35)
      {
        v38 = [v35 mutableCopy];
        [v38 addEntriesFromDictionary:v25];
        v25 = v38;
      }

      v39 = [(NSTextRange *)v19 textRangeByIntersectingWithTextRange:v32];
    }

    else
    {
      if (v19)
      {
        v39 = v19;
      }

      else
      {
        v39 = v32;
      }

      if (v19)
      {
        v25 = v35;
      }
    }

    goto LABEL_62;
  }

  v40 = [a4 endLocation];
  if ((v34 & 1) == 0 && !-[NSTextRange isEmpty](v32, "isEmpty") && [a3 compare:{-[NSTextRange location](v32, "location")}] == -1 && objc_msgSend(-[NSTextRange location](v32, "location"), "compare:", v40) == -1)
  {
    v40 = [(NSTextRange *)v32 location];
  }

  v41 = [objc_msgSend(-[NSArray firstObject](-[NSTextLayoutManager textSelections](self "textSelections")];
  if (v41)
  {
    v42 = v41;
    if (([v41 isEmpty] & 1) == 0 && objc_msgSend(a3, "compare:", objc_msgSend(v42, "location")) == -1 && objc_msgSend(objc_msgSend(v42, "location"), "compare:", v40) == -1)
    {
      v40 = [v42 location];
    }
  }

  if (([v40 isEqual:{objc_msgSend(a4, "endLocation")}] & 1) == 0)
  {
    v39 = [[NSTextRange alloc] initWithLocation:a3 endLocation:v40];
    v25 = 0;
LABEL_62:
    *v48 = v39;
    return v25;
  }

  return 0;
}

- (id)adjustedTextSelectionsForEditingContextFromTextSelections:(id)a3
{
  [(NSTextLayoutManager *)self textContentManager];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSTextLayoutManager *)self textContentManager];
  if (!-[NSTextContentManager adjustedRangeFromRange:forEditingTextSelection:](v5, "adjustedRangeFromRange:forEditingTextSelection:", [objc_msgSend(objc_msgSend(a3 "lastObject")], 1))
  {
    return 0;
  }

  v6 = [a3 mutableCopy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__NSTextLayoutManager_adjustedTextSelectionsForEditingContextFromTextSelections___block_invoke;
  v8[3] = &unk_1E7266520;
  v8[4] = v5;
  v8[5] = v6;
  [a3 enumerateObjectsWithOptions:2 usingBlock:v8];
  return v6;
}

void __81__NSTextLayoutManager_adjustedTextSelectionsForEditingContextFromTextSelections___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = [a2 textRanges];
  v9 = [v8 count];
  v10 = objc_autoreleasePoolPush();
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  v11 = 0;
  v12 = v9 + 1;
  do
  {
    v13 = [*(a1 + 32) adjustedRangeFromRange:objc_msgSend(v8 forEditingTextSelection:{"objectAtIndexedSubscript:", v12 - 2), 1}];
    if (!v13)
    {
      break;
    }

    v14 = v13;
    if (!v11)
    {
      v11 = [v8 mutableCopy];
    }

    [v11 replaceObjectAtIndex:v12 - 2 withObject:v14];
    --v12;
  }

  while (v12 > 1);
  if (v11)
  {
    [*(a1 + 40) replaceObjectAtIndex:a3 withObject:{objc_msgSend(a2, "textSelectionWithTextRanges:", v11)}];
  }

  else
  {
LABEL_9:
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v10);
}

- (void)setTextSelectionNavigation:(NSTextSelectionNavigation *)textSelectionNavigation
{
  objc_sync_enter(self);
  v5 = self->_textSelectionNavigation;
  if (v5 != textSelectionNavigation)
  {

    self->_textSelectionNavigation = textSelectionNavigation;
  }

  objc_sync_exit(self);
}

- (id)_textLayoutFragmentAtLocation:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  if ([-[NSTextRange endLocation](-[NSTextContentManager documentRange](-[NSTextLayoutManager textContentManager](self "textContentManager")])
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__NSTextLayoutManager__textLayoutFragmentAtLocation___block_invoke;
  v8[3] = &unk_1E7266198;
  v8[4] = &v9;
  [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:a3 options:v5 usingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)_textLineFragmentAtLocation:(id)a3 textLayoutFragment:(id *)a4 rangeDelta:(int64_t *)a5
{
  v9 = [(NSTextLayoutManager *)self _textLayoutFragmentAtLocation:?];
  v10 = v9;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (v9)
  {
    v11 = [v9 textParagraph];
    if (v11)
    {
      v12 = [v11 rangeForLocation:a3 allowsTrailingEdge:1];
    }

    else
    {
      v12 = -[NSTextContentManager offsetFromLocation:toLocation:](-[NSTextLayoutManager textContentManager](self, "textContentManager"), "offsetFromLocation:toLocation:", [objc_msgSend(v10 "rangeInElement")], a3);
    }

    v13 = v12;
    v14 = [a3 isEqual:{-[NSTextRange endLocation](-[NSTextContentManager documentRange](-[NSTextLayoutManager textContentManager](self, "textContentManager"), "documentRange"), "endLocation")}];
    v15 = [v10 textLineFragments];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __81__NSTextLayoutManager__textLineFragmentAtLocation_textLayoutFragment_rangeDelta___block_invoke;
    v18[3] = &unk_1E7266548;
    v19 = v14;
    v18[4] = &v20;
    v18[5] = &v24;
    v18[6] = v13;
    [v15 enumerateObjectsUsingBlock:v18];
  }

  if (a4)
  {
    *a4 = v10;
  }

  if (a5)
  {
    *a5 = v21[3];
  }

  v16 = v25[5];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v16;
}

unint64_t __81__NSTextLayoutManager__textLineFragmentAtLocation_textLayoutFragment_rangeDelta___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 characterRange];
  if (!result)
  {
    result = *(*(*(a1 + 32) + 8) + 24);
  }

  v9 = *(a1 + 48);
  v10 = v9 < result || v9 - result >= v8;
  if (v10 && (v9 != result || (*(a1 + 56) & 1) == 0 || v8))
  {
    *(*(*(a1 + 32) + 8) + 24) += v8;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

- (id)locationFromLocation:(id)a3 withOffset:(int64_t)a4
{
  v6 = [(NSTextLayoutManager *)self textContentManager];

  return [(NSTextContentManager *)v6 locationFromLocation:a3 withOffset:a4];
}

- (int64_t)offsetFromLocation:(id)a3 toLocation:(id)a4
{
  v6 = [(NSTextLayoutManager *)self textContentManager];

  return [(NSTextContentManager *)v6 offsetFromLocation:a3 toLocation:a4];
}

- (id)_textRangeForDoubleClickAtLocation:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v4 = [(NSTextLayoutManager *)self textContentManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__NSTextLayoutManager__textRangeForDoubleClickAtLocation___block_invoke;
  v7[3] = &unk_1E7266570;
  v7[4] = a3;
  v7[5] = &v8;
  [(NSTextContentManager *)v4 enumerateTextElementsFromLocation:a3 options:0 usingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __58__NSTextLayoutManager__textRangeForDoubleClickAtLocation___block_invoke(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(a2 "elementRange")];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a2 attributedString];
      v6 = [a2 rangeForLocation:*(a1 + 32) allowsTrailingEdge:0];
      v7 = [v5 attribute:NSLanguageAttributeName atIndex:v6 effectiveRange:0];
      if (v7)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v9 = *MEMORY[0x1E695E480];
        if (isKindOfClass)
        {
          v7 = CFLocaleCreate(*MEMORY[0x1E695E480], v7);
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v9 = *MEMORY[0x1E695E480];
      }

      v10 = [v5 string];
      v16.length = [v5 length];
      v16.location = 0;
      v11 = CFStringTokenizerCreate(v9, v10, v16, 4uLL, v7);
      CFStringTokenizerGoToTokenAtIndex(v11, v6);
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v11);
      CFRelease(v11);
      if (v7)
      {
        CFRelease(v7);
      }

      if (CurrentTokenRange.length >= 1)
      {
        v13 = [a2 locationForCharacterIndex:CurrentTokenRange.location dataSourceLocationsOnly:0 actualRange:0];
        v14 = [a2 locationForCharacterIndex:CurrentTokenRange.location + CurrentTokenRange.length dataSourceLocationsOnly:0 actualRange:0];
        if (v13)
        {
          if (v14)
          {
            *(*(*(a1 + 40) + 8) + 40) = [[NSTextRange alloc] initWithLocation:v13 endLocation:v14];
          }
        }
      }
    }
  }

  return v4 ^ 1u;
}

- (id)textRangeForSelectionGranularity:(int64_t)a3 enclosingLocation:(id)a4
{
  v21 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  if (a3 == 1)
  {
    v7 = [(NSTextLayoutManager *)self _textRangeForDoubleClickAtLocation:a4];
  }

  else
  {
    if ((a3 - 2) > 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = qword_18E856340[a3 - 2];
    }

    v7 = [NSTextSelectionNavigation _substringRangeForEnumerationType:v8 location:a4 dataSource:self string:0 enclosingRange:&v21];
  }

  v9 = v7;
  v10 = v16;
  v16[5] = v9;
  if (a3 && !v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__NSTextLayoutManager_textRangeForSelectionGranularity_enclosingLocation___block_invoke;
    v14[3] = &unk_1E7265D70;
    v14[4] = a4;
    v14[5] = &v15;
    [(NSTextLayoutManager *)self enumerateSubstringsFromLocation:a4 options:514 usingBlock:v14];
    v10 = v16;
  }

  v11 = v10[5];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {

    v11 = v21;
    v16[5] = v11;
  }

  v12 = v11;
  _Block_object_dispose(&v15, 8);
  return v12;
}

id __74__NSTextLayoutManager_textRangeForSelectionGranularity_enclosingLocation___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  result = [a3 containsLocation:*(a1 + 32)];
  if (result)
  {
    result = a3;
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  *a5 = 1;
  return result;
}

- (id)_copyTextLineFragmentRangeForPoint:(CGPoint)a3 inContainerAtLocation:(id)a4 pointPlacement:(unint64_t *)a5
{
  y = a3.y;
  x = a3.x;
  TextContainerEntryAndIndexForLocation = __NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation(self, a4);
  if (TextContainerEntryAndIndexForLocation)
  {
    v10 = *(TextContainerEntryAndIndexForLocation + 7);
  }

  else
  {
    v10 = 0;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3052000000;
  v45 = __Block_byref_object_copy__2;
  v46 = __Block_byref_object_dispose__2;
  v47 = 0;
  v11 = [(NSTextLayoutManager *)self textViewportLayoutController];
  *a5 = 0;
  [(NSTextViewportLayoutController *)v11 viewportBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v48.x = x;
  v48.y = y;
  v49.origin.x = v13;
  v49.origin.y = v15;
  v49.size.width = v17;
  v49.size.height = v19;
  if (NSPointInRect(v48, v49) && (v20 = [(NSTextViewportLayoutController *)v11 textViewportElementAtPoint:x, y], objc_opt_class(), (objc_opt_isKindOfClass() & (v20 != 0)) != 0) || (v20 = [(NSTextLayoutManager *)self textLayoutFragmentForPosition:v10 inTextContainerAtIndex:x, y]) != 0)
  {
    [v20 layoutFragmentFrameOrigin];
    v22 = v21;
    v24 = v23;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0xBFF0000000000000;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v33[3] = 0x7FEFFFFFFFFFFFFFLL;
    v25 = [v20 textLineFragments];
    v26 = y - v24;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __95__NSTextLayoutManager__copyTextLineFragmentRangeForPoint_inContainerAtLocation_pointPlacement___block_invoke;
    v32[3] = &unk_1E7266598;
    v32[4] = &v38;
    v32[5] = &v34;
    *&v32[8] = x - v22;
    *&v32[9] = v26;
    v32[6] = &v42;
    v32[7] = v33;
    [v25 enumerateObjectsUsingBlock:v32];
    v27 = v43;
    if (!v43[5])
    {
      if (v26 < v39[3])
      {
        v28 = [objc_msgSend(objc_msgSend(v20 "textLineFragments")];
        v29 = 2;
LABEL_13:
        v27 = v43;
        v43[5] = v28;
        *a5 = v29;
        goto LABEL_14;
      }

      if (v26 >= v35[3])
      {
        v28 = [objc_msgSend(objc_msgSend(v20 "textLineFragments")];
        v29 = 4;
        goto LABEL_13;
      }
    }

LABEL_14:
    v30 = v27[5];
    _Block_object_dispose(v33, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    goto LABEL_15;
  }

  v30 = 0;
LABEL_15:
  _Block_object_dispose(&v42, 8);
  return v30;
}

id __95__NSTextLayoutManager__copyTextLineFragmentRangeForPoint_inContainerAtLocation_pointPlacement___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 typographicBounds];
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 24);
  if (v13 < 0.0 || v13 < v9)
  {
    *(v12 + 24) = v9;
  }

  v15 = v9 + v11;
  v16 = *(*(a1 + 40) + 8);
  if (v15 > *(v16 + 24))
  {
    *(v16 + 24) = v15;
  }

  v17 = *(a1 + 72);
  if (v17 >= v9)
  {
    if (v17 >= v15)
    {
      return result;
    }

    v18 = *(a1 + 64);
    if (v18 >= v8)
    {
      v20 = v8 + v10;
      if (v20 > v18)
      {
LABEL_16:
        result = [a2 textLineFragmentRange];
        *(*(*(a1 + 48) + 8) + 40) = result;
        goto LABEL_20;
      }

      v19 = v18 - v20;
    }

    else
    {
      v19 = v8 - v18;
    }

    v21 = *(*(a1 + 56) + 8);
    if (v19 < *(v21 + 24))
    {
      *(v21 + 24) = v19;

      result = [a2 textLineFragmentRange];
      *(*(*(a1 + 48) + 8) + 40) = result;
      return result;
    }
  }

  else if (!*(*(*(a1 + 48) + 8) + 40))
  {
    goto LABEL_16;
  }

LABEL_20:
  *a4 = 1;
  return result;
}

- (unint64_t)placementOfPoint:(CGPoint)a3 inContainerAtLocation:(id)a4
{
  v5 = 0;

  return v5;
}

- (void)enumerateContainerBoundariesFromLocation:(id)a3 reverse:(BOOL)a4 usingBlock:(id)a5
{
  v6 = a4;
  p_lastTextContainerEntry = &self->_lastTextContainerEntry;
  if (self->_lastTextContainerEntry.textContainer)
  {
    textContainerEntriesCount = self->_textContainerEntriesCount + 1;
  }

  else
  {
    textContainerEntriesCount = self->_textContainerEntriesCount;
  }

  if (textContainerEntriesCount < 2)
  {
    v17 = [(NSTextContentManager *)[(NSTextLayoutManager *)self textContentManager] documentRange];
    v19 = 0;
    if (v6)
    {
      v18 = [(NSTextRange *)v17 location];
    }

    else
    {
      v18 = [(NSTextRange *)v17 endLocation];
    }

    (*(a5 + 2))(a5, v18, &v19);
  }

  else
  {
    TextContainerEntryAndIndexForLocation = __NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation(self, a3);
    if (TextContainerEntryAndIndexForLocation)
    {
      v11 = *(TextContainerEntryAndIndexForLocation + 7);
      if (v11 < textContainerEntriesCount)
      {
        if (v6)
        {
          textContainerEntriesCount = -1;
          v12 = -1;
        }

        else
        {
          v12 = 1;
        }

        v20 = 0;
        v13 = v12 + v11;
        v14 = v12 + v11;
        do
        {
          v15 = *(TextContainerEntryAndIndexForLocation + 2);
          if (v6)
          {
            v16 = [v15 location];
          }

          else
          {
            v16 = [v15 endLocation];
          }

          (*(a5 + 2))(a5, v16, &v20);
          if (v20)
          {
            break;
          }

          if (self->_textContainerEntriesCount <= v13)
          {
            TextContainerEntryAndIndexForLocation = p_lastTextContainerEntry->textContainer ? p_lastTextContainerEntry : 0;
          }

          else
          {
            TextContainerEntryAndIndexForLocation = &self->_textContainerEntries[v14];
          }

          if (textContainerEntriesCount == v13)
          {
            break;
          }

          v13 += v12;
          v14 += v12;
        }

        while (TextContainerEntryAndIndexForLocation);
      }
    }
  }
}

- (int64_t)textLayoutOrientationAtLocation:(id)a3
{
  result = [(NSTextLayoutManager *)self textContainerForLocation:a3];
  if (result)
  {

    return [result layoutOrientation];
  }

  return result;
}

- (int64_t)baseWritingDirectionAtLocation:(id)a3
{
  v5 = [(NSTextLayoutManager *)self textContentManager];
  v6 = [(NSTextContentManager *)v5 documentRange];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__NSTextLayoutManager_baseWritingDirectionAtLocation___block_invoke;
  v15[3] = &unk_1E72665C0;
  v15[4] = &v16;
  [(NSTextContentManager *)v5 enumerateTextElementsFromLocation:a3 options:0 usingBlock:v15];
  if (v17[5] || ![-[NSTextRange endLocation](v6 "endLocation")])
  {
    goto LABEL_11;
  }

  v7 = [(NSArray *)[(NSTextLayoutManager *)self textSelections] firstObject];
  if (![(NSTextRange *)v6 isEmpty])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__NSTextLayoutManager_baseWritingDirectionAtLocation___block_invoke_2;
    v14[3] = &unk_1E72665C0;
    v14[4] = &v16;
    [(NSTextContentManager *)v5 enumerateTextElementsFromLocation:a3 options:1 usingBlock:v14];
  }

  if (v7 && (v8 = [objc_msgSend(v7 "textRanges")], objc_msgSend(v8, "isEmpty")) && objc_msgSend(objc_msgSend(v8, "location"), "isEqual:", a3) && objc_msgSend(v7, "typingAttributes") && ((v9 = v17[5]) == 0 || (objc_msgSend(objc_msgSend(v9, "paragraphSeparatorRange"), "isEmpty") & 1) == 0))
  {
    v13 = [objc_msgSend(v7 "typingAttributes")];
    if (!v13)
    {
      v13 = +[NSParagraphStyle defaultParagraphStyle];
    }

    v10 = [(NSParagraphStyle *)v13 baseWritingDirection];
    if (v10 == NSWritingDirectionNatural)
    {
      v10 = [NSParagraphStyle defaultWritingDirectionForLanguage:0];
    }

    v17[5] = 0;
  }

  else
  {
LABEL_11:
    v10 = NSWritingDirectionLeftToRight;
  }

  v11 = v17[5];
  if (v11)
  {
    v10 = [v11 _resolvedBaseWritingDirectionWithFallbackDirection:{-[NSTextLayoutManager _fallbackWritingDirection](self, "_fallbackWritingDirection")}];
  }

  _Block_object_dispose(&v16, 8);
  return v10;
}

uint64_t __54__NSTextLayoutManager_baseWritingDirectionAtLocation___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 32) + 8) + 40) = a2;
  }

  return 0;
}

uint64_t __54__NSTextLayoutManager_baseWritingDirectionAtLocation___block_invoke_2(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 32) + 8) + 40) = a2;
  }

  return 0;
}

- (void)enumerateSubstringsFromLocation:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = (a4 >> 8) & 1;
  v9 = a4;
  v17[0] = 0;
  v17[1] = v17;
  if (a4)
  {
    v18 = 0x2020000000;
    LOBYTE(v19) = 1;
    v10 = [(NSTextLayoutManager *)self textContentManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__NSTextLayoutManager_enumerateSubstringsFromLocation_options_usingBlock___block_invoke_4;
    v11[3] = &unk_1E7266660;
    v11[6] = v17;
    v11[7] = v9;
    v12 = v8;
    v11[8] = a4;
    v11[4] = a3;
    v11[5] = a5;
    [(NSTextContentManager *)v10 enumerateTextElementsFromLocation:a3 options:v8 usingBlock:v11];
  }

  else
  {
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__2;
    v20 = __Block_byref_object_dispose__2;
    v21 = a3;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v16 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__NSTextLayoutManager_enumerateSubstringsFromLocation_options_usingBlock___block_invoke;
    v13[3] = &unk_1E7266610;
    v14 = BYTE1(a4) & 1;
    v13[4] = a5;
    v13[5] = v17;
    v13[6] = v15;
    v13[7] = a4;
    [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:a3 options:v8 | 4 usingBlock:v13];
    _Block_object_dispose(v15, 8);
  }

  _Block_object_dispose(v17, 8);
}

BOOL __74__NSTextLayoutManager_enumerateSubstringsFromLocation_options_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 textParagraph];
  if (v4)
  {
    v5 = v4;
    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = 0;
    v48 = a1;
    if (*(a1 + 64) == 1)
    {
      v6 = [a2 textLineFragments];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __74__NSTextLayoutManager_enumerateSubstringsFromLocation_options_usingBlock___block_invoke_2;
      v65[3] = &unk_1E7265790;
      v65[4] = &v66;
      [v6 enumerateObjectsUsingBlock:v65];
    }

    v7 = *(*(*(a1 + 40) + 8) + 40);
    if (v7)
    {
      v8 = [v5 rangeForLocation:v7 allowsTrailingEdge:1];
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9 = [v5 paragraphContentRange];
    v47 = v5;
    v10 = [v5 paragraphSeparatorRange];
    v11 = v10;
    if ((*(a1 + 64) & 1) != 0 || (v12 = *(*(*(a1 + 40) + 8) + 40)) == 0 || [v12 compare:{objc_msgSend(v10, "location")}] || objc_msgSend(v9, "isEmpty"))
    {
      v45 = ([v11 isEmpty] & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : objc_msgSend(v47, "rangeForLocation:allowsTrailingEdge:", objc_msgSend(v11, "location"), 1);
      v13 = [a2 textLineFragments];
      v14 = [v13 count];
      v15 = v14 - 1;
      if (v14 >= 1)
      {
        v16 = 0;
        v44 = v52;
        v46 = v13;
        while (1)
        {
          v17 = objc_autoreleasePoolPush();
          if (*(v48 + 64))
          {
            v18 = v15;
          }

          else
          {
            v18 = v16;
          }

          v19 = [v13 objectAtIndex:{v18, v44}];
          v20 = [v19 characterRange];
          v22 = v20;
          v23 = v21;
          context = v17;
          if (v20)
          {
            v24 = 0;
            if ((*(v48 + 64) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (*(v48 + 64))
            {
              v26 = v21;
            }

            else
            {
              v26 = 0;
            }

            v24 = v67[3] - v26;
            if ((*(v48 + 64) & 1) == 0)
            {
LABEL_26:
              v25 = 0;
              v67[3] += v21;
              goto LABEL_27;
            }
          }

          v67[3] -= v21;
          v25 = 1;
LABEL_27:
          v50 = 0x7FFFFFFFFFFFFFFFLL;
          if (v8 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_41;
          }

          v27 = v8 - v24;
          if (v8 - v24 < v20 || v8 - v24 - v20 >= v21)
          {
            v29 = v20 + v21 == v27 ? v25 : 0;
            v50 = v8;
            if (v29 != 1)
            {
              goto LABEL_41;
            }
          }

          if (v27 != v20)
          {
            LOBYTE(v25) = 0;
          }

          v50 = 0x7FFFFFFFFFFFFFFFLL;
          if ((v25 & 1) == 0)
          {
LABEL_41:
            if (v20 + v21 <= v45 - v24)
            {
              v31 = v21;
            }

            else
            {
              v31 = v45 - v24 - v20;
            }

            if (v45 - v24 >= v20)
            {
              v32 = v31;
            }

            else
            {
              v32 = v21;
            }

            if (v45 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v33 = v21;
            }

            else
            {
              v33 = v32;
            }

            if (v50 == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ((*(v48 + 57) & 2) == 0)
              {
                v34 = [objc_msgSend(v19 "attributedString")];
                v35 = v34;
                if (v22 || v33 != [v34 length])
                {
                  [v35 substringWithRange:{v22, v33}];
                }
              }

              v36 = v24 + v22;
              v37 = [v47 locationForCharacterIndex:v24 + v22 dataSourceLocationsOnly:0 actualRange:0];
              v38 = [v47 locationForCharacterIndex:v33 + v24 + v22 dataSourceLocationsOnly:0 actualRange:0];
              v59 = 0;
              v60 = &v59;
              v61 = 0x3052000000;
              v62 = __Block_byref_object_copy__2;
              v63 = __Block_byref_object_dispose__2;
              v64 = [[NSTextRange alloc] initWithLocation:v37 endLocation:v38];
              v53 = 0;
              v54 = &v53;
              v55 = 0x3052000000;
              v56 = __Block_byref_object_copy__2;
              v57 = __Block_byref_object_dispose__2;
              v58 = 0;
              if (!v24 && v33 == v23 || (v37 = [v47 locationForCharacterIndex:v22 dataSourceLocationsOnly:0 actualRange:0], v39 = objc_msgSend(v47, "locationForCharacterIndex:dataSourceLocationsOnly:actualRange:", v22 + v23, 0, 0), v54[5], v40 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", v37, v39), (v54[5] = v40) == 0))
              {
                v40 = v60[5];
              }

              v41 = v40;
              v42 = *(v48 + 56);
              v51[0] = MEMORY[0x1E69E9820];
              v51[1] = 3221225472;
              v52[0] = __74__NSTextLayoutManager_enumerateSubstringsFromLocation_options_usingBlock___block_invoke_3;
              v52[1] = &unk_1E72665E8;
              v52[2] = v41;
              v52[3] = v19;
              v52[6] = &v53;
              v52[7] = v36;
              v52[8] = v33;
              v52[4] = v47;
              v52[5] = &v59;
              [v47 enumerateSubstringsFromLocation:v37 options:v42 | 0x200 usingBlock:v51];
              (*(*(v48 + 32) + 16))();
              *(*(*(v48 + 48) + 8) + 24) = 0;

              _Block_object_dispose(&v53, 8);
              _Block_object_dispose(&v59, 8);
            }

            v30 = 0;
          }

          else
          {
            v30 = 4;
          }

          objc_autoreleasePoolPop(context);
          v13 = v46;
          if ((v30 | 4) == 4)
          {
            ++v16;
            --v15;
            v8 = v50;
            if (v15 != -1)
            {
              continue;
            }
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v66, 8);
    a1 = v48;
  }

  *(*(*(a1 + 40) + 8) + 40) = 0;
  return (*(*(*(a1 + 48) + 8) + 24) & 1) == 0;
}

uint64_t __74__NSTextLayoutManager_enumerateSubstringsFromLocation_options_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 characterRange];
  *(*(*(a1 + 32) + 8) + 24) += v4;
  return result;
}

NSTextRange *__74__NSTextLayoutManager_enumerateSubstringsFromLocation_options_usingBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a3;
  }

  result = [*(a1 + 32) isEqual:v9];
  if (result)
  {

    *(*(*(a1 + 56) + 8) + 40) = a3;
    v12 = *(a1 + 64);
    v11 = (a1 + 64);

    result = a4;
LABEL_6:
    *(*(*v11 + 8) + 40) = result;
    goto LABEL_9;
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    result = [objc_msgSend(*(a1 + 32) "endLocation")];
    if (result == -1)
    {
      v13 = [objc_msgSend(*(a1 + 40) "attributedString")];
      v14 = *(a1 + 80) + *(a1 + 72);
      result = [v13 characterAtIndex:v14 - 1];
      if (result > 132)
      {
        if ((result - 8232) >= 2 && result != 133)
        {
          goto LABEL_9;
        }
      }

      else if (result != 10 && result != 12)
      {
        if (result != 13)
        {
          goto LABEL_9;
        }

        if (v14 < [0 length])
        {
          result = [0 characterAtIndex:v14];
          if (result == 10)
          {
            goto LABEL_9;
          }
        }
      }

      v15 = [*(a1 + 48) locationForCharacterIndex:*(a1 + 72) + *(a1 + 80) - 1 dataSourceLocationsOnly:0 actualRange:0];
      v16 = *(a1 + 56);
      v17 = *(a1 + 64);
      v11 = (a1 + 56);
      *(*(v17 + 8) + 40) = *(*(v16 + 8) + 40);
      result = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [*(*(v11[1] + 8) + 40) location], v15);
      goto LABEL_6;
    }
  }

LABEL_9:
  *a5 = 1;
  return result;
}

BOOL __74__NSTextLayoutManager_enumerateSubstringsFromLocation_options_usingBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a2 paragraphContentRange];
    v5 = v4;
    if (*(a1 + 56) == 1)
    {
      if (*(*(*(a1 + 48) + 8) + 24) != 1 || (*(a1 + 72) & 1) != 0 || (v6 = [a2 paragraphSeparatorRange], (v7 = v6) == 0) || (objc_msgSend(v6, "isEmpty") & 1) != 0 || objc_msgSend(*(a1 + 32), "compare:", objc_msgSend(v7, "location")))
      {
        if (*(*(*(a1 + 48) + 8) + 24) == 1 && [*(a1 + 32) compare:{objc_msgSend(objc_msgSend(a2, "paragraphSeparatorRange"), "location")}] && (*(a1 + 65) & 2) == 0)
        {
          [objc_msgSend(a2 "attributedString")];
        }

        if ([objc_msgSend(a2 "childElements")])
        {
          v10 = [a2 paragraphSeparatorRange];
          v11 = v5;
          if (v10)
          {
            v12 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [v5 location], objc_msgSend(v10, "endLocation"));
LABEL_20:
            v13 = v12;
            (*(*(a1 + 40) + 16))();

            goto LABEL_21;
          }
        }

        else
        {
          v11 = [a2 elementRange];
        }

        v12 = v11;
        goto LABEL_20;
      }
    }

    else if (![v4 isEmpty] || *(a1 + 56) != 3)
    {
      v8 = *(a1 + 64);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__NSTextLayoutManager_enumerateSubstringsFromLocation_options_usingBlock___block_invoke_5;
      v16[3] = &unk_1E7266638;
      v9 = *(a1 + 32);
      v16[4] = *(a1 + 40);
      v16[5] = &v17;
      [a2 enumerateSubstringsFromLocation:v9 options:v8 usingBlock:v16];
    }
  }

LABEL_21:
  *(*(*(a1 + 48) + 8) + 24) = 0;
  v14 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return (v14 & 1) == 0;
}

uint64_t __74__NSTextLayoutManager_enumerateSubstringsFromLocation_options_usingBlock___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a5;
  return result;
}

- (void)enumerateCaretOffsetsInLineFragmentAtLocation:(id)a3 usingBlock:(id)a4
{
  v17 = 0;
  v16 = 0;
  v6 = [(NSTextLayoutManager *)self _textLineFragmentAtLocation:a3 textLayoutFragment:&v17 rangeDelta:&v16];
  if (v6)
  {
    v7 = v6;
    v8 = [v17 textParagraph];
    if (v8)
    {
      v9 = [v8 locationForCharacterIndex:v16 dataSourceLocationsOnly:0 actualRange:0];
    }

    else
    {
      v10 = [(NSTextLayoutManager *)self textContentManager];
      v11 = [objc_msgSend(v17 "rangeInElement")];
      v9 = [(NSTextContentManager *)v10 locationFromLocation:v11 withOffset:v16];
    }

    v12 = v9;
    v13 = +[NSTextLayoutFragment coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled];
    MinX = 0.0;
    if (!v13)
    {
      [v17 layoutFragmentFrame];
      MinX = CGRectGetMinX(v18);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__NSTextLayoutManager_enumerateCaretOffsetsInLineFragmentAtLocation_usingBlock___block_invoke;
    v15[3] = &unk_1E7266688;
    v15[4] = a4;
    *&v15[5] = MinX;
    [v7 enumerateCaretOffsetsWithTextSelectionDataSource:self baseLocation:v12 usingBlock:v15];
  }
}

- (void)enumerateViewportElementsFromLocation:(id)a3 options:(int64_t)a4 usingBlock:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__NSTextLayoutManager_enumerateViewportElementsFromLocation_options_usingBlock___block_invoke;
  v5[3] = &unk_1E72666B0;
  v5[4] = a5;
  [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:a3 options:a4 | 8 usingBlock:v5];
}

uint64_t __80__NSTextLayoutManager_enumerateViewportElementsFromLocation_options_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  return 1;
}

- (id)_textViewRespondingToSelector:(SEL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSTextLayoutManager *)self textContainers];
  result = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) textView];
        if (objc_opt_respondsToSelector())
        {
          return v8;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)_textSelectionsFromTextView
{
  v3[1] = *MEMORY[0x1E69E9840];
  result = [(NSTextLayoutManager *)self _textViewRespondingToSelector:sel__textSelection];
  if (result)
  {
    result = [result _textSelection];
    if (result)
    {
      v3[0] = result;
      return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
    }
  }

  return result;
}

- (BOOL)_shouldDrawTextCorrectionMarkerWithType:(int64_t)a3 inRange:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3 == 3)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v26 = __71__NSTextLayoutManager__shouldDrawTextCorrectionMarkerWithType_inRange___block_invoke;
    v27 = &unk_1E72666D8;
    v28 = a4;
    v29 = self;
    v5 = [(NSTextLayoutManager *)self textSelections];
    if (v5 || (v5 = [(NSTextLayoutManager *)self _textSelectionsFromTextView]) != 0)
    {
      v6 = v5;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v5 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v5)
      {
        v7 = v5;
        v8 = *v22;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v22 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v21 + 1) + 8 * i);
            v17 = 0u;
            v18 = 0u;
            v19 = 0u;
            v20 = 0u;
            v11 = [v10 textRanges];
            v12 = [v11 countByEnumeratingWithState:&v17 objects:v30 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v18;
LABEL_11:
              v15 = 0;
              while (1)
              {
                if (*v18 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                if (v26(v25, *(*(&v17 + 1) + 8 * v15)))
                {
                  goto LABEL_20;
                }

                if (v13 == ++v15)
                {
                  v13 = [v11 countByEnumeratingWithState:&v17 objects:v30 count:16];
                  if (v13)
                  {
                    goto LABEL_11;
                  }

                  break;
                }
              }
            }
          }

          v7 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
          LOBYTE(v5) = 0;
          if (v7)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else
  {
LABEL_20:
    LOBYTE(v5) = 1;
  }

  return v5;
}

uint64_t __71__NSTextLayoutManager__shouldDrawTextCorrectionMarkerWithType_inRange___block_invoke(uint64_t a1, void *a2)
{
  if (textRangesAreConnected(a2, *(a1 + 32)))
  {
    return 1;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v5 = *(a1 + 40);
  v6 = [a2 location];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__NSTextLayoutManager__shouldDrawTextCorrectionMarkerWithType_inRange___block_invoke_2;
  v11[3] = &unk_1E7265D48;
  v11[4] = &v12;
  [v5 enumerateSubstringsFromLocation:v6 options:771 usingBlock:v11];
  v4 = 0;
  if (v13[5])
  {
    v7 = [NSTextRange alloc];
    v8 = -[NSTextRange initWithLocation:endLocation:](v7, "initWithLocation:endLocation:", v13[5], [a2 endLocation]);
    v9 = textRangesAreConnected(v8, *(a1 + 32));

    if (v9)
    {
      v4 = 1;
    }
  }

  _Block_object_dispose(&v12, 8);
  return v4;
}

id __71__NSTextLayoutManager__shouldDrawTextCorrectionMarkerWithType_inRange___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  result = [a3 location];
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a5 = 1;
  return result;
}

- (id)viewProviderForTextAttachment:(id)a3 location:(id)a4
{
  result = [(NSTextLayoutFragment *)[(NSTextLayoutManager *)self textLayoutFragmentForLocation:a4] textAttachmentViewProviderForLocation:a4];
  self->_viewProviderCreated |= result != 0;
  return result;
}

- (void)setViewProvider:(id)a3 forTextAttachment:(id)a4 location:(id)a5
{
  v7 = [(NSTextLayoutManager *)self textLayoutFragmentForLocation:a5, a4];

  [(NSTextLayoutFragment *)v7 setTextAttachmentProvider:a3 forLocation:a5];
}

- (id)_viewProviderForTextAttachment:(id)a3 parentView:(id)a4 location:(id)a5 textContainer:(id)a6
{
  if (-[NSTextLayoutManager _platformDelegateCanSendViewProviderInvalidationNotification](self, "_platformDelegateCanSendViewProviderInvalidationNotification") && (v11 = [-[NSTextLayoutManager platformDelegate](self "platformDelegate")]) != 0 || -[NSTextLayoutManager _delegateCanSendViewProviderInvalidationNotification](self, "_delegateCanSendViewProviderInvalidationNotification") && (v11 = objc_msgSend(-[NSTextLayoutManager delegate](self, "delegate"), "textLayoutManager:cachedTextAttachmentViewProviderForTextAttachment:", self, a3)) != 0)
  {
    v12 = v11;
    [v11 setLocation:a5];
    [(NSTextLayoutManager *)self setViewProvider:v12 forTextAttachment:a3 location:a5];
    v13 = 1;
  }

  else
  {
    v12 = [(NSTextLayoutManager *)self viewProviderForTextAttachment:a3 location:a5];
    if (!v12)
    {
      v12 = [a3 viewProviderForParentView:a4 location:a5 textContainer:a6];
      if (v12)
      {
        [(NSTextLayoutManager *)self setViewProvider:v12 forTextAttachment:a3 location:a5];
      }
    }

    v13 = self->_viewProviderCreated || v12 != 0;
  }

  self->_viewProviderCreated = v13;
  return v12;
}

- (void)willInvalidateTextAttachmentViewProvider:(id)a3 forTextAttachment:(id)a4
{
  if ([(NSTextLayoutManager *)self _platformDelegateCanSendViewProviderInvalidationNotification])
  {
    [-[NSTextLayoutManager platformDelegate](self "platformDelegate")];
  }

  if ([(NSTextLayoutManager *)self _delegateCanSendViewProviderInvalidationNotification])
  {
    v7 = [(NSTextLayoutManager *)self delegate];

    [v7 textLayoutManager:self willInvalidateTextAttachmentViewProvider:a3 forTextAttachment:a4];
  }
}

- (id)attributedStringForTruncatedRange:(id)a3 defaultAttributedString:(id)a4
{
  v7 = [(NSTextLayoutManager *)self delegate];
  if (self->_delegateWithTruncationToken)
  {
    result = [v7 textLayoutManager:self attributedStringForTruncatedRange:a3 defaultAttributedString:a4];
  }

  else
  {
    result = 0;
  }

  if (!result)
  {
    return a4;
  }

  return result;
}

+ (BOOL)shouldBeUsedForNSTextView
{
  if (shouldBeUsedForNSTextView_once != -1)
  {
    +[NSTextLayoutManager shouldBeUsedForNSTextView];
  }

  return shouldBeUsedForNSTextView_result;
}

uint64_t __48__NSTextLayoutManager_shouldBeUsedForNSTextView__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v0)
  {
    result = [v0 BOOLValue];
  }

  else
  {
    result = 1;
  }

  shouldBeUsedForNSTextView_result = result;
  return result;
}

+ (double)_textHighlightBackgroundColorPercentage
{
  if (_textHighlightBackgroundColorPercentage_onceToken != -1)
  {
    +[NSTextLayoutManager _textHighlightBackgroundColorPercentage];
  }

  return *&_textHighlightBackgroundColorPercentage_percentage;
}

uint64_t __62__NSTextLayoutManager__textHighlightBackgroundColorPercentage__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [v0 doubleValue];
    _textHighlightBackgroundColorPercentage_percentage = v2;
  }

  return result;
}

- (id)textHighlightRenderingAttributesForTextRange:(id)a3 attributes:(id)a4
{
  v7 = [a4 objectForKeyedSubscript:@"NSTextHighlightStyle"];
  if (!v7)
  {
    return MEMORY[0x1E695E0F8];
  }

  v8 = v7;
  v9 = [(NSTextLayoutManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 textLayoutManager:self textHighlightRenderingAttributesForTextRange:a3 attributes:a4];
LABEL_7:
    v11 = v10;
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 textLayoutManager:self textHighlightAttributesForTextRange:a3 highlightStyle:v8];
    goto LABEL_7;
  }

  v11 = 0;
LABEL_9:
  if (![v11 count])
  {
    v11 = [-[NSTextLayoutManager textContainerForLocation:](self textContainerForLocation:{objc_msgSend(a3, "location")), "textHighlightRenderingAttributesForAttributes:", a4}];
    if (![v11 count])
    {
      v12 = [(NSTextLayoutManager *)self applicationFrameworkContext];
      v13 = objc_opt_class();
      if (v12 == 1)
      {
        v14 = [v13 textHighlightAttributes_iOS];
      }

      else
      {
        v14 = [v13 textHighlightAttributes_macOS];
      }

      v11 = v14;
    }

    if (([objc_opt_class() _usesOutlinedHighlightByDefault] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"NSTextHighlightStyleOutlined") & 1) == 0 && objc_msgSend(v11, "objectForKeyedSubscript:", @"NSTextHighlightOutlineColor"))
    {
      objc_sync_enter(self);
      if ([textHighlightRenderingAttributesForTextRange_attributes__baseAttributes isEqualToDictionary:v11])
      {
        v15 = textHighlightRenderingAttributesForTextRange_attributes__attributesWithoutOutline;
      }

      else
      {
        v15 = [v11 mutableCopy];
        [v15 removeObjectForKey:@"NSTextHighlightOutlineColor"];

        textHighlightRenderingAttributesForTextRange_attributes__baseAttributes = v11;
        textHighlightRenderingAttributesForTextRange_attributes__attributesWithoutOutline = v15;
      }

      v11 = v15;
      objc_sync_exit(self);
    }
  }

  return v11;
}

- (NSTextHighlightShapeProvider)_textHighlightShapeProvider
{
  objc_sync_enter(self);
  textHighlightShapeProvider = self->_textHighlightShapeProvider;
  if (!textHighlightShapeProvider)
  {
    textHighlightShapeProvider = [[NSTextHighlightShapeProvider alloc] initWithTextLayoutManager:self];
    self->_textHighlightShapeProvider = textHighlightShapeProvider;
  }

  objc_sync_exit(self);
  return textHighlightShapeProvider;
}

- (void)drawTextHighlightBackgroundForRunTextRanges:(id)a3 attributes:(id)a4 documentRange:(id)a5 origin:(CGPoint)a6 context:(CGContext *)a7
{
  if (a7)
  {
    y = a6.y;
    x = a6.x;
    v13 = [a3 count];
    if (v13 == [a4 count])
    {
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x3052000000;
      v16[3] = __Block_byref_object_copy__2;
      v16[4] = __Block_byref_object_dispose__2;
      v16[5] = [a4 copy];
      v14 = [(NSTextLayoutManager *)self _textHighlightShapeProvider];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __107__NSTextLayoutManager_drawTextHighlightBackgroundForRunTextRanges_attributes_documentRange_origin_context___block_invoke;
      v15[3] = &unk_1E7266728;
      v15[4] = self;
      v15[5] = a3;
      v15[6] = v16;
      v15[7] = a7;
      *&v15[8] = x;
      *&v15[9] = y;
      [(NSTextHighlightShapeProvider *)v14 enumerateHighlightShapesForRunClusterWithRanges:a3 usingBlock:v15];
      _Block_object_dispose(v16, 8);
    }
  }
}

void __107__NSTextLayoutManager_drawTextHighlightBackgroundForRunTextRanges_attributes_documentRange_origin_context___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) textHighlightRenderingAttributesForTextRange:objc_msgSend(*(a1 + 40) attributes:{"objectAtIndexedSubscript:", a4), objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "objectAtIndexedSubscript:", a4)}];
  v8 = [v7 objectForKeyedSubscript:@"NSBackgroundColor"];
  v9 = [v7 objectForKeyedSubscript:@"NSTextHighlightOutlineColor"];
  if (v8 || ((v10 = [v7 objectForKeyedSubscript:@"NSColor"], v11 = objc_msgSend(*(a1 + 32), "applicationFrameworkContext"), v12 = objc_opt_class(), v11 != 1) ? (v13 = objc_msgSend(v12, "textHighlightBackgroundColorForForegroundColor_macOS:", v10)) : (v13 = objc_msgSend(v12, "textHighlightBackgroundColorForForegroundColor_iOS:", v10)), v8 = v13, v13 | v9))
  {
    v14 = [[_NSCGTextGraphicsContext alloc] initWithCGContext:*(a1 + 56)];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __107__NSTextLayoutManager_drawTextHighlightBackgroundForRunTextRanges_attributes_documentRange_origin_context___block_invoke_2;
    v16[3] = &unk_1E7266700;
    v15 = *(a1 + 56);
    v16[5] = v9;
    v16[6] = v15;
    v17 = *(a1 + 64);
    v16[4] = v8;
    v18 = a2;
    v19 = a3;
    [NSTextGraphicsContextProvider setCurrentTextGraphicsContext:v14 duringBlock:v16];
  }
}

void __107__NSTextLayoutManager_drawTextHighlightBackgroundForRunTextRanges_attributes_documentRange_origin_context___block_invoke_2(uint64_t a1)
{
  CGContextSaveGState(*(a1 + 48));
  CGContextTranslateCTM(*(a1 + 48), *(a1 + 56), *(a1 + 64));
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 set];
    CGContextAddPath(*(a1 + 48), *(a1 + 72));
    CGContextFillPath(*(a1 + 48));
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    [v3 set];
    CGContextAddPath(*(a1 + 48), *(a1 + 80));
    CGContextStrokePath(*(a1 + 48));
  }

  v4 = *(a1 + 48);

  CGContextRestoreGState(v4);
}

- (void)drawTextHighlightBackgroundForTextRange:(id)a3 attributes:(id)a4 options:(unint64_t)a5 origin:(CGPoint)a6 context:(CGContext *)a7
{
  y = a6.y;
  x = a6.x;
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = a3;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:{1, a5}];
  v14 = a4;
  -[NSTextLayoutManager drawTextHighlightBackgroundForRunTextRanges:attributes:documentRange:origin:context:](self, "drawTextHighlightBackgroundForRunTextRanges:attributes:documentRange:origin:context:", v13, [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1], a3, a7, x, y);
}

- (void)drawTextHighlightBackgroundForTextRange:(id)a3 highlightStyle:(id)a4 options:(unint64_t)a5 origin:(CGPoint)a6 context:(CGContext *)a7
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"NSTextHighlightStyle";
  v8[0] = a4;
  -[NSTextLayoutManager drawTextHighlightBackgroundForTextRange:attributes:options:origin:context:](self, "drawTextHighlightBackgroundForTextRange:attributes:options:origin:context:", a3, [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1], a5, a7, a6.x, a6.y);
}

+ (BOOL)_usesOutlinedHighlightByDefault
{
  if (_usesOutlinedHighlightByDefault_onceToken != -1)
  {
    +[NSTextLayoutManager _usesOutlinedHighlightByDefault];
  }

  return _usesOutlinedHighlightByDefault_usesOutlinedHighlightByDefault;
}

uint64_t __54__NSTextLayoutManager__usesOutlinedHighlightByDefault__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  _usesOutlinedHighlightByDefault_usesOutlinedHighlightByDefault = result;
  return result;
}

- (BOOL)_adjustedTextLayoutFragmentBoundaryTextRangeForTextRange:(id)a3 location:(id *)a4 endLocation:(id *)a5
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v9 = [a3 location];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__NSTextLayoutManager__adjustedTextLayoutFragmentBoundaryTextRangeForTextRange_location_endLocation___block_invoke;
  v18[3] = &unk_1E7266198;
  v18[4] = &v19;
  [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:v9 options:0 usingBlock:v18];
  v10 = v20[5];
  if (v10)
  {
    v11 = [v20[5] rangeInElement];
    if ([objc_msgSend(v11 "location")])
    {
      v12 = 0;
    }

    else
    {
      v12 = [v11 location];
    }

    v13 = [objc_msgSend(v11 "endLocation")];
    if (v13 == -1)
    {
      v20[5] = 0;
    }

    else if (v13 == 1)
    {
      v14 = [v11 endLocation];
      if (v14)
      {
LABEL_14:
        *a4 = v12;
        *a5 = v14;
        goto LABEL_15;
      }
    }

    if (v20[5])
    {
      v14 = 0;
    }

    else
    {
      v15 = [a3 endLocation];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __101__NSTextLayoutManager__adjustedTextLayoutFragmentBoundaryTextRangeForTextRange_location_endLocation___block_invoke_2;
      v17[3] = &unk_1E72661C0;
      v17[4] = a3;
      v17[5] = &v19;
      [(NSTextLayoutManager *)self enumerateTextLayoutFragmentsFromLocation:v15 options:1 usingBlock:v17];
      v14 = v20[5];
      if (v14)
      {
        v14 = [objc_msgSend(v14 "rangeInElement")];
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  _Block_object_dispose(&v19, 8);
  return v10 != 0;
}

uint64_t __101__NSTextLayoutManager__adjustedTextLayoutFragmentBoundaryTextRangeForTextRange_location_endLocation___block_invoke_2(uint64_t a1, void *a2)
{
  if (([objc_msgSend(objc_msgSend(a2 "rangeInElement")] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  return 0;
}

- (void)_invalidateTextAnimationContextForTextRange:(id)a3 reason:(int64_t)a4
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  textAnimationContextStorage = self->_textAnimationContextStorage;
  v8 = [a3 location];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__NSTextLayoutManager__invalidateTextAnimationContextForTextRange_reason___block_invoke;
  v10[3] = &unk_1E7266750;
  v10[4] = a3;
  v10[5] = v6;
  [(_NSTextRunStorage *)textAnimationContextStorage enumerateObjectsFromLocation:v8 options:2 usingBlock:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__NSTextLayoutManager__invalidateTextAnimationContextForTextRange_reason___block_invoke_2;
  v9[3] = &unk_1E7266778;
  v9[4] = self;
  [v6 enumerateObjectsUsingBlock:v9];
}

uint64_t __74__NSTextLayoutManager__invalidateTextAnimationContextForTextRange_reason___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(objc_msgSend(a2 "enclosingTextRange")];
  if (result == -1)
  {
    v8 = *(a1 + 40);

    return [v8 addObject:a2];
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

uint64_t __74__NSTextLayoutManager__invalidateTextAnimationContextForTextRange_reason___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 _overridden];
  v4 = *(*(a1 + 32) + 144);
  v5 = [a2 enclosingTextRange];

  return [v4 setObject:0 forRange:v5];
}

- (BOOL)_addTextAnimationContext:(id)a3
{
  objc_sync_enter(self);
  v5 = [a3 enclosingTextRange];
  if (v5)
  {
    v12 = 0uLL;
    if ([(NSTextLayoutManager *)self _adjustedTextLayoutFragmentBoundaryTextRangeForTextRange:v5 location:&v12 + 8 endLocation:&v12])
    {
      if (v12 == 0)
      {
        v8 = v5;
      }

      else
      {
        v6 = [NSTextRange alloc];
        v7 = *(&v12 + 1);
        if (!*(&v12 + 1))
        {
          v7 = [v5 location];
        }

        if (!v12)
        {
          [v5 endLocation];
        }

        v8 = [(NSTextRange *)v6 initWithLocation:v7 endLocation:?];
      }

      v9 = v8;
      if ([(NSTextRange *)v8 isNotEmpty])
      {
        if (self->_textAnimationContextStorage)
        {
          [(NSTextLayoutManager *)self _invalidateTextAnimationContextForTextRange:v9 reason:1];
          textAnimationContextStorage = self->_textAnimationContextStorage;
        }

        else
        {
          textAnimationContextStorage = [[_NSTextRunStorage alloc] initWithDataSource:self];
          self->_textAnimationContextStorage = textAnimationContextStorage;
        }

        [(_NSTextRunStorage *)textAnimationContextStorage setObject:a3 forRange:v9];
        [a3 _updateEnclosingLocation:-[NSTextRange location](v9 endLocation:{"location"), -[NSTextRange endLocation](v9, "endLocation")}];
      }
    }
  }

  objc_sync_exit(self);
  return 1;
}

- (void)_removeTextAnimationContext:(id)a3
{
  objc_sync_enter(self);
  -[_NSTextRunStorage setObject:forRange:](self->_textAnimationContextStorage, "setObject:forRange:", 0, [a3 enclosingTextRange]);

  objc_sync_exit(self);
}

- (id)_textAnimationContextForLocation:(id)a3
{
  objc_sync_enter(self);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  textAnimationContextStorage = self->_textAnimationContextStorage;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__NSTextLayoutManager__textAnimationContextForLocation___block_invoke;
  v8[3] = &unk_1E72667A0;
  v8[4] = a3;
  v8[5] = &v9;
  [(_NSTextRunStorage *)textAnimationContextStorage enumerateObjectsFromLocation:a3 options:2 usingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  objc_sync_exit(self);
  return v6;
}

uint64_t __56__NSTextLayoutManager__textAnimationContextForLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(a2 "enclosingTextRange")];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  *a4 = 1;
  return result;
}

+ (id)textHighlightAttributes_iOS
{
  if (textHighlightAttributes_iOS_onceToken != -1)
  {
    +[NSTextLayoutManager(UIFoundation_UIKitAdditions) textHighlightAttributes_iOS];
  }

  v2 = textHighlightAttributes_iOS_attributes;

  return v2;
}

id __79__NSTextLayoutManager_UIFoundation_UIKitAdditions__textHighlightAttributes_iOS__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
  {
    v0 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", 1];
  }

  else
  {
    v0 = +[NSTextGraphicsContextProvider __defaultColorClass];
  }

  v1 = v0;
  v3[0] = @"NSColor";
  v3[1] = @"NSTextHighlightOutlineColor";
  v4[0] = [(objc_class *)v0 selectionHighlightColor];
  v4[1] = [(objc_class *)v1 secondaryLabelColor];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  textHighlightAttributes_iOS_attributes = result;
  return result;
}

+ (id)textHighlightBackgroundColorForForegroundColor_iOS:(id)a3
{
  [a3 alphaComponent];
  v6 = v5;
  [a1 _textHighlightBackgroundColorPercentage];
  v8 = v6 * v7;

  return [a3 colorWithAlphaComponent:v8];
}

- (uint64_t)_validateTextContainerEntries
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v6 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"-[NSTextLayoutManager _validateTextContainerEntries]") description:{@"NSTextLayoutManager.m", 751, @"_textContainerEntries inconsistency, _textContainerEntries:%p, _textContainerEntriesSize:%lu", *a1, *a2}];
  *a3 = *a2;
  return result;
}

@end