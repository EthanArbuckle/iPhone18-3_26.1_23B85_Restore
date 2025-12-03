@interface NSCoreTypesetter
+ (BOOL)_allowsFontOverridingTextAttachmentVerticalMetricsForStringDrawing;
+ (BOOL)resolvesIndentationWritingDirectionWithBaseWritingDirection;
+ (void)_lineMetricsForAttributes:(id)attributes typesetterBehavior:(int64_t)behavior usesFontLeading:(BOOL)leading applySpacings:(BOOL)spacings usesSystemFontLeading:(BOOL)fontLeading usesNegativeFontLeading:(BOOL)negativeFontLeading layoutOrientation:(int64_t)orientation lineHeight:(double *)self0 baselineOffset:(double *)self1 spacing:(double *)self2;
+ (void)_maximumAscentAndDescentForRuns:(__CFArray *)runs ascender:(double *)ascender descender:(double *)descender;
+ (void)_minMaxPositionsForLineFragmentWithParagraphStyle:(id)style baseWidth:(double)width writingDirection:(int64_t)direction isBeginningOfParagraph:(BOOL)paragraph minPosition:(double *)position maxPosition:(double *)maxPosition;
- ($1AB5FA073B851C12C2339EC22442E995)_getLineMetricsForRange:(_NSRange)range attributes:(id)attributes attributedString:(id)string applySpacing:(BOOL)spacing usesSystemFontLeading:(BOOL)leading usesNegativeFontLeading:(BOOL)fontLeading;
- ($F08F7EC4C389A89376F473094BC6C9F8)_forcedLineBreakAfterIndex:(SEL)index;
- (BOOL)_shouldShowLineBadges;
- (BOOL)isSimpleRectangularTextContainerForStartingCharacterAtIndex:(int64_t)index;
- (CGRect)_stringDrawingCoreTextEngineWithOriginalString:(id)string rect:(CGRect)rect padding:(double)padding graphicsContext:(id)context forceClipping:(BOOL)clipping attributes:(id)attributes stringDrawingOptions:(int64_t)options drawingContext:(id)self0 stringDrawingInterface:(id *)self1;
- (CGRect)lineFragmentRectForProposedRect:(CGRect)rect atIndex:(int64_t)index writingDirection:(int64_t)direction remainingRect:(CGRect *)remainingRect;
- (CGSize)textContainerSize;
- (NSCoreTypesetter)init;
- (NSCoreTypesetterDelegate)delegate;
- (_NSRange)characterRange;
- (__CTLine)_createLayoutLineFragmentStartingWithCharacterIndex:(int64_t *)index proposedLineFragmentRect:(CGRect *)rect baseLineRef:(const __CTLine *)ref range:(_NSRange)range paragraphStyle:(id)style paragraphArbitrator:(id)arbitrator lineBreakMode:(int64_t)mode hasAttachments:(BOOL)self0 lineFragmentRect:(CGRect *)self1 glyphOrigin:(CGPoint *)self2 hyphenated:(BOOL *)self3 forcedClusterBreak:(BOOL *)self4;
- (__CTLine)_createLineRefForParentLineRef:(const __CTLine *)ref range:(_NSRange)range availableWidth:(double)width offset:(double)offset paragraphArbitrator:(id)arbitrator lineBreakMode:(int64_t)mode hyphenated:(BOOL *)hyphenated forcedClusterBreak:(BOOL *)self0;
- (__CTRun)_truncationTokenRunRefWithContext:(id *)context token:(id)token attributes:(id)attributes;
- (id)_paragraphStyleFromAttributes:(id)attributes;
- (id)_truncationTokenForRange:(_NSRange *)range attributes:(id)attributes originalLineRef:(__CTLine *)ref;
- (int)_NSFastDrawString:(id)string length:(unint64_t)length attributes:(id)attributes paragraphStyle:(id)style typesetterBehavior:(int64_t)behavior lineBreakMode:(int64_t)mode rect:(CGRect)rect padding:(double)self0 graphicsContext:(id)self1 baselineRendering:(BOOL)self2 usesFontLeading:(BOOL)self3 usesScreenFont:(BOOL)self4 scrollable:(BOOL)self5 syncAlignment:(BOOL)self6 mirrored:(BOOL)self7 boundingRectPointer:(CGRect *)self8 baselineOffsetPointer:(double *)self9 drawingContext:(id)drawingContext;
- (int64_t)_fallbackWritingDirection;
- (int64_t)_getFirstOverflowTabStopIndexInLineRef:(__CTLine *)ref range:(_NSRange)range string:(id)string paragraphStyle:(id)style availableWidth:(double)width offset:(double)offset;
- (void)_updateBidiLevelsAndBaseWritingDirectionForAttributedString:(id)string paragraphRange:(_NSRange)range;
- (void)dealloc;
- (void)layoutWithYOrigin:(double)origin;
- (void)setDelegate:(id)delegate;
@end

@implementation NSCoreTypesetter

+ (BOOL)_allowsFontOverridingTextAttachmentVerticalMetricsForStringDrawing
{
  if (_allowsFontOverridingTextAttachmentVerticalMetricsForStringDrawing_onceToken != -1)
  {
    +[NSCoreTypesetter _allowsFontOverridingTextAttachmentVerticalMetricsForStringDrawing];
  }

  return _allowsFontOverridingTextAttachmentVerticalMetricsForStringDrawing__allowsFontOverridingTextAttachmentVerticalMetricsForStringDrawing;
}

- (NSCoreTypesetter)init
{
  v3.receiver = self;
  v3.super_class = NSCoreTypesetter;
  result = [(NSCoreTypesetter *)&v3 init];
  if (result)
  {
    result->characterRange.location = 0;
    result->characterRange.length = 0;
    result->textContainerSize = *MEMORY[0x1E696AA88];
    result->_laidOutLineFragment = 0;
    result->_wantsExtraLineFragment = 1;
    result->_limitsLayoutForSuspiciousContents = 1;
    result->_allowsFontSubstitutionAffectingVerticalMetrics = 1;
    result->_allowsFontOverridingTextAttachmentVerticalMetrics = 1;
    result->_beginningOfDocument = 1;
    result->_keyframe = 0;
    result->_forcedLineBreaks = 0;
    result->_resolvedBaseWritingDirection = -1;
    result->_fallbackBaseWritingDirection = -1;
  }

  return result;
}

- (void)dealloc
{
  self->_delegate = 0;
  v3.receiver = self;
  v3.super_class = NSCoreTypesetter;
  [(NSTypesetter *)&v3 dealloc];
}

- (NSCoreTypesetterDelegate)delegate
{
  objc_sync_enter(self);
  delegate = self->_delegate;
  objc_sync_exit(self);
  return delegate;
}

uint64_t __86__NSCoreTypesetter__allowsFontOverridingTextAttachmentVerticalMetricsForStringDrawing__block_invoke()
{
  result = dyld_program_sdk_at_least();
  _allowsFontOverridingTextAttachmentVerticalMetricsForStringDrawing__allowsFontOverridingTextAttachmentVerticalMetricsForStringDrawing = result;
  return result;
}

- (int64_t)_fallbackWritingDirection
{
  if (self->_fallbackBaseWritingDirection != -1)
  {
    return self->_fallbackBaseWritingDirection;
  }

  applicationFrameworkContext = [(NSTypesetter *)self applicationFrameworkContext];

  return [NSTextLayoutManager _fallbackBaseWritingDirectionForApplicationFrameworkContext:applicationFrameworkContext];
}

- (BOOL)_shouldShowLineBadges
{
  if (_shouldShowLineBadges_once != -1)
  {
    [NSCoreTypesetter _shouldShowLineBadges];
  }

  return _shouldShowLineBadges_result;
}

uint64_t __41__NSCoreTypesetter__shouldShowLineBadges__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  _shouldShowLineBadges_result = result;
  return result;
}

- (CGSize)textContainerSize
{
  objc_copyStruct(v4, &self->textContainerSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_NSRange)characterRange
{
  objc_copyStruct(v4, &self->characterRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

+ (void)_minMaxPositionsForLineFragmentWithParagraphStyle:(id)style baseWidth:(double)width writingDirection:(int64_t)direction isBeginningOfParagraph:(BOOL)paragraph minPosition:(double *)position maxPosition:(double *)maxPosition
{
  directionCopy = direction;
  if (style)
  {
    if (paragraph)
    {
      [style firstLineHeadIndent];
    }

    else
    {
      [style headIndent];
    }

    v15 = v13;
    [style tailIndent];
    v14 = v16;
  }

  else
  {
    v14 = 0.0;
    v15 = 0.0;
  }

  if (directionCopy == NSWritingDirectionNatural)
  {
    directionCopy = [NSParagraphStyle defaultWritingDirectionForLanguage:0, direction, paragraph];
  }

  v17 = 0.0;
  if (width >= 0.0)
  {
    widthCopy = width;
  }

  else
  {
    widthCopy = 0.0;
  }

  v19 = widthCopy + v14;
  if (v14 > 0.0)
  {
    v19 = v14;
  }

  if (v19 <= v15)
  {
    v19 = widthCopy;
  }

  v20 = widthCopy - v19;
  if (directionCopy == NSWritingDirectionRightToLeft)
  {
    v19 = widthCopy - v15;
  }

  else
  {
    v20 = v15;
  }

  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  if (v19 < widthCopy)
  {
    widthCopy = v19;
  }

  if (v20 >= 0.0)
  {
    v17 = v20;
  }

  if (v17 >= widthCopy)
  {
    v17 = widthCopy;
  }

  *position = v17;
  *maxPosition = widthCopy;
}

- (id)_truncationTokenForRange:(_NSRange *)range attributes:(id)attributes originalLineRef:(__CTLine *)ref
{
  if (self->_delegateSupportsTextContainer)
  {
    return [(NSCoreTypesetterDelegateInternal *)self->_delegate coreTypesetter:self attributedStringForTruncatedCharacterRange:range attributes:attributes originalLineRef:ref];
  }

  else
  {
    return 0;
  }
}

- (__CTRun)_truncationTokenRunRefWithContext:(id *)context token:(id)token attributes:(id)attributes
{
  var2 = context->var2;
  if (var2)
  {
    if (context->var0 == token)
    {
      return var2;
    }

    if ([context->var0 isEqualToAttributedString:token])
    {
      return context->var2;
    }
  }

  if (token)
  {
    BaseLineFromAttributedString = __NSCoreTypesetterCreateBaseLineFromAttributedString(token, 0, [token length], -[NSCoreTypesetter layoutOrientation](self, "layoutOrientation"), -[NSCoreTypesetter limitsLayoutForSuspiciousContents](self, "limitsLayoutForSuspiciousContents"), 0, 0, -1);
  }

  else
  {
    if ([attributes objectForKeyedSubscript:@"NSFont"])
    {
      CTFontIsVertical();
    }

    BaseLineFromAttributedString = CTLineCreateWithString();
  }

  v11 = BaseLineFromAttributedString;
  if (BaseLineFromAttributedString)
  {
    GlyphRuns = CTLineGetGlyphRuns(BaseLineFromAttributedString);
    Count = CFArrayGetCount(GlyphRuns);
    if (Count)
    {
      v14 = Count;
      v15 = [token attributesAtIndex:0 effectiveRange:0];
      ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, 0);
      var2 = CFRetain(ValueAtIndex);
      if (token && (v14 != 1 || [v15 objectForKeyedSubscript:@"NSAttachment"]))
      {
        v17 = [v15 mutableCopy];
        v18 = [[_NSTruncationTokenAttachment alloc] initWithAttributedString:token lineRef:0];
        v19 = *MEMORY[0x1E6965A50];
        runDelegate = [(_NSTruncationTokenAttachment *)v18 runDelegate];
        CFDictionarySetValue(v17, v19, runDelegate);
        v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttachment:v18 attributes:v17];
        CFRelease(v11);
        v11 = __NSCoreTypesetterCreateBaseLineFromAttributedString(v21, 0, [token length], -[NSCoreTypesetter layoutOrientation](self, "layoutOrientation"), -[NSCoreTypesetter limitsLayoutForSuspiciousContents](self, "limitsLayoutForSuspiciousContents"), 0, 0, -1);
        v22 = CTLineGetGlyphRuns(v11);
        CFRelease(var2);
        v23 = CFArrayGetValueAtIndex(v22, 0);
        var2 = CFRetain(v23);

LABEL_19:
        CFRelease(v11);
        goto LABEL_20;
      }
    }

    else
    {
      var2 = 0;
    }

    v18 = 0;
    goto LABEL_19;
  }

  var2 = 0;
  v18 = 0;
LABEL_20:
  if (context->var0 != token)
  {

    context->var0 = token;
  }

  context->var1 = v18;
  v24 = context->var2;
  if (v24)
  {
    CFRelease(v24);
  }

  context->var2 = var2;
  return var2;
}

+ (BOOL)resolvesIndentationWritingDirectionWithBaseWritingDirection
{
  if (resolvesIndentationWritingDirectionWithBaseWritingDirection_onceToken != -1)
  {
    +[NSCoreTypesetter resolvesIndentationWritingDirectionWithBaseWritingDirection];
  }

  return resolvesIndentationWritingDirectionWithBaseWritingDirection__resolvesIndentationWritingDirectionWithBaseWritingDirection;
}

uint64_t __79__NSCoreTypesetter_resolvesIndentationWritingDirectionWithBaseWritingDirection__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v0)
  {
    result = [v0 BOOLValue];
  }

  else
  {
    result = dyld_program_sdk_at_least();
  }

  resolvesIndentationWritingDirectionWithBaseWritingDirection__resolvesIndentationWritingDirectionWithBaseWritingDirection = result;
  return result;
}

- (void)setDelegate:(id)delegate
{
  objc_sync_enter(self);
  if (self->_delegate != delegate)
  {
    self->_delegate = delegate;
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_opt_respondsToSelector();
    }

    else
    {
      v5 = 0;
    }

    self->_delegateSupportsTextContainer = v5 & 1;
    self->_delegateSupportsTruncationToken = objc_opt_respondsToSelector() & 1;
    self->_delegateSupportsBidi = objc_opt_respondsToSelector() & 1;
  }

  objc_sync_exit(self);
}

- (void)layoutWithYOrigin:(double)origin
{
  [(NSTypesetter *)self lineFragmentPadding];
  v7 = v6;
  [(NSCoreTypesetter *)self textContainerSize];
  v9 = v8;
  [(NSCoreTypesetter *)self textContainerSize];
  v11 = v10;
  [(NSMutableArray *)self->_truncatedRanges removeAllObjects];
  v12 = 0.0;
  if (origin <= 0.0 || v11 <= 0.0 || (v11 = v11 - origin, v12 = origin, v11 > 0.0))
  {
    characterRange = [(NSCoreTypesetter *)self characterRange];
    v15 = v14;
    attributedString = [(NSTypesetter *)self attributedString];
    v17 = [(NSAttributedString *)attributedString attributedSubstringFromRange:characterRange, v15];
    if ([(NSTypesetter *)self usesFontLeading])
    {
      v18 = 3;
    }

    else
    {
      v18 = 1;
    }

    v19 = objc_alloc_init(NSStringDrawingContext);
    [(NSStringDrawingContext *)v19 setActiveRenderers:3];
    [(NSStringDrawingContext *)v19 setMaximumNumberOfLines:[(NSCoreTypesetter *)self maximumNumberOfLines]];
    v55[0] = 0;
    string = [(NSAttributedString *)v17 string];
    v21 = string;
    if (string)
    {
      Length = CFStringGetLength(string);
    }

    else
    {
      Length = 0;
    }

    v23 = v9 + v7 * -2.0;
    v24 = __NSUltraFastLineBreakFinder(v21, Length, v55 + 1, v55);
    CTSwapLineBreakEpsilon();
    lineFragmentOriginYOffset = self->_lineFragmentOriginYOffset;
    self->_lineFragmentOriginYOffset = origin;
    if (Length > 1 || v24 >= 1)
    {
      [(NSCoreTypesetter *)self _stringDrawingCoreTextEngineWithOriginalString:v17 rect:0 padding:0 graphicsContext:0 forceClipping:v18 attributes:v19 stringDrawingOptions:0.0 drawingContext:v12 stringDrawingInterface:v23, v11, 0.0, 0];
    }

    else if ([(NSCoreTypesetter *)self laidOutLineFragment])
    {
      v26 = [(NSAttributedString *)v17 length]? [(NSAttributedString *)v17 attributesAtIndex:0 effectiveRange:0]: self->__extraLineFragmentAttributes;
      v53 = 0.0;
      v54 = 0.0;
      v51 = 0u;
      v52 = 0u;
      v50 = 0.0;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v40 = __38__NSCoreTypesetter_layoutWithYOrigin___block_invoke;
      v41 = &unk_1E7267A80;
      selfCopy = self;
      v43 = v17;
      v44 = 0;
      v45 = v12;
      v46 = v9 + v7 * -2.0;
      v47 = v11;
      v48 = v7;
      v49 = a2;
      v27 = v26;
      if (__38__NSCoreTypesetter_layoutWithYOrigin___block_invoke(v39, self, v26, &v51, &v53, &v50))
      {
        applicationFrameworkContext = [(NSTypesetter *)self applicationFrameworkContext];
        v29 = v50;
        v56.origin.x = 0.0;
        v56.origin.y = v12;
        v56.size.width = v9 + v7 * -2.0;
        v56.size.height = v11;
        MaxX = CGRectGetMaxX(v56);
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __38__NSCoreTypesetter_layoutWithYOrigin___block_invoke_2;
        v38[3] = &unk_1E7267AA8;
        v38[4] = self;
        v31 = *(&v51 + 1);
        v32 = *(&v52 + 1);
        __NSCoreTypesetterProcessTextLineFragment(attributedString, &stru_1F01AD578, v27, characterRange, Length, applicationFrameworkContext, v38, v53, v54, *&v51, *(&v51 + 1), *&v52, *(&v52 + 1), v29, MaxX);
        if (self->_wantsExtraLineFragment && v24 < Length)
        {
          extraLineFragmentAttributes = self->__extraLineFragmentAttributes;
          if (v27 != extraLineFragmentAttributes && ![(NSDictionary *)v27 isEqualToDictionary:self->__extraLineFragmentAttributes])
          {
            v40(v39, self, extraLineFragmentAttributes, &v51, &v53, &v50);
            v31 = *(&v51 + 1);
            v32 = *(&v52 + 1);
          }

          *(&v51 + 1) = v31 + v32;
          applicationFrameworkContext2 = [(NSTypesetter *)self applicationFrameworkContext];
          v35 = v50;
          v57.origin.x = 0.0;
          v57.origin.y = v12;
          v57.size.width = v23;
          v57.size.height = v11;
          v36 = CGRectGetMaxX(v57);
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __38__NSCoreTypesetter_layoutWithYOrigin___block_invoke_3;
          v37[3] = &unk_1E7267AA8;
          v37[4] = self;
          __NSCoreTypesetterProcessTextLineFragment(attributedString, &stru_1F01AD578, v27, Length + characterRange, 0, applicationFrameworkContext2, v37, v53, v54, *&v51, *(&v51 + 1), *&v52, *(&v52 + 1), v35, v36);
        }
      }
    }

    CTSwapLineBreakEpsilon();
    self->_lineFragmentOriginYOffset = lineFragmentOriginYOffset;
  }
}

uint64_t __38__NSCoreTypesetter_layoutWithYOrigin___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v12 = [*(a1 + 32) isBeginningOfDocument];
  LOBYTE(v37) = v12 ^ 1;
  [a2 _getLineMetricsForRange:0 attributes:0 attributedString:a3 applySpacing:*(a1 + 40) usesSystemFontLeading:v12 ^ 1u usesNegativeFontLeading:{v12 ^ 1u, v37}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *(a1 + 72);
  v20 = [a2 characterRange];
  if ([a2 isSimpleRectangularTextContainerForStartingCharacterAtIndex:v20])
  {
    v21 = *(a1 + 64);
    if (v19 <= 0.0)
    {
      v19 = v14;
    }

    v22 = 0.0;
    v23 = 0.0;
  }

  else
  {
    [a2 lineFragmentRectForProposedRect:v20 atIndex:0 writingDirection:0 remainingRect:{0.0, 0.0, 10000000.0, v14}];
    v22 = v24;
    v23 = v25;
    v21 = v26;
    v19 = v27;
  }

  v28 = 0;
  if (*(*(a1 + 32) + 79) == 1)
  {
    v28 = *(a1 + 80);
  }

  *a6 = v28;
  v40.origin.x = v22;
  v40.origin.y = v23;
  v40.size.width = v21;
  v40.size.height = v19;
  if (CGRectGetHeight(v40) + 0.001 >= v14 || (result = [a2 enforcesMinimumTextLineFragment], result))
  {
    v41.origin.x = v22;
    v41.origin.y = v23;
    v41.size.width = v21;
    v41.size.height = v19;
    if (CGRectGetWidth(v41) == 10000000.0)
    {
      v34 = 0.0;
LABEL_24:
      *a5 = 0;
      a5[1] = v16;
      *a4 = v34;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = v14 + v18;
      return 1;
    }

    v30 = [a2 _paragraphStyleFromAttributes:a3];
    v31 = [v30 baseWritingDirection];
    if (v31 == -1)
    {
      v31 = [*(a1 + 32) _fallbackWritingDirection];
    }

    v32 = [v30 horizontalAlignment];
    if (v32 > 1)
    {
      v35 = v32;
      v38 = 0.0;
      v39 = 0.0;
      v43.origin.x = v22;
      v43.origin.y = v23;
      v43.size.width = v21;
      v43.size.height = v19;
      [NSCoreTypesetter _minMaxPositionsForLineFragmentWithParagraphStyle:v30 baseWidth:v31 writingDirection:1 isBeginningOfParagraph:&v39 minPosition:&v38 maxPosition:CGRectGetWidth(v43)];
      if (v35 == 4)
      {
        v36 = (v39 + v38) * 0.5;
        goto LABEL_23;
      }

      if (v35 == 3)
      {
        goto LABEL_21;
      }

      v36 = 0.0;
      if (v35 != 2)
      {
LABEL_23:
        v44.origin.x = v22;
        v44.origin.y = v23;
        v44.size.width = v21;
        v44.size.height = v19;
        v34 = v36 + CGRectGetMinX(v44);
        goto LABEL_24;
      }
    }

    else
    {
      v33 = (v32 == 1) ^ (v31 == 1);
      v38 = 0.0;
      v39 = 0.0;
      v42.origin.x = v22;
      v42.origin.y = v23;
      v42.size.width = v21;
      v42.size.height = v19;
      [NSCoreTypesetter _minMaxPositionsForLineFragmentWithParagraphStyle:v30 baseWidth:v31 writingDirection:1 isBeginningOfParagraph:&v39 minPosition:&v38 maxPosition:CGRectGetWidth(v42)];
      if (v33)
      {
LABEL_21:
        v36 = v38;
        goto LABEL_23;
      }
    }

    v36 = v39;
    goto LABEL_23;
  }

  return result;
}

uint64_t __38__NSCoreTypesetter_layoutWithYOrigin___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 setIsExtra:1];
  v3 = *(*(*(a1 + 32) + 88) + 16);

  return v3();
}

+ (void)_lineMetricsForAttributes:(id)attributes typesetterBehavior:(int64_t)behavior usesFontLeading:(BOOL)leading applySpacings:(BOOL)spacings usesSystemFontLeading:(BOOL)fontLeading usesNegativeFontLeading:(BOOL)negativeFontLeading layoutOrientation:(int64_t)orientation lineHeight:(double *)self0 baselineOffset:(double *)self1 spacing:(double *)self2
{
  fontLeadingCopy = fontLeading;
  spacingsCopy = spacings;
  leadingCopy = leading;
  v22 = objc_alloc_init(NSCoreTypesetter);
  [(NSTypesetter *)v22 setTypesetterBehavior:behavior];
  [(NSTypesetter *)v22 setUsesFontLeading:leadingCopy];
  [(NSCoreTypesetter *)v22 setLayoutOrientation:orientation];
  [(NSCoreTypesetter *)v22 setAllowsFontSubstitutionAffectingVerticalMetrics:0];
  LOBYTE(v21) = negativeFontLeading;
  [(NSCoreTypesetter *)v22 _getLineMetricsForRange:0 attributes:0 attributedString:attributes applySpacing:0 usesSystemFontLeading:spacingsCopy usesNegativeFontLeading:fontLeadingCopy, v21];
  if (height)
  {
    *height = v18;
  }

  if (offset)
  {
    *offset = v19;
  }

  if (spacing)
  {
    *spacing = v20;
  }
}

+ (void)_maximumAscentAndDescentForRuns:(__CFArray *)runs ascender:(double *)ascender descender:(double *)descender
{
  Count = CFArrayGetCount(runs);
  if (Count)
  {
    v9 = Count;
    v10 = 0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      if (!CFArrayGetValueAtIndex(runs, v10) || (Font = CTRunGetFont()) == 0)
      {
        Font = NSDefaultFont();
      }

      [Font boundingRectForFont];
      if (v14 < v11)
      {
        v11 = v14;
      }

      if (v14 + v15 > v12)
      {
        v12 = v14 + v15;
      }

      ++v10;
    }

    while (v9 != v10);
  }

  else
  {
    v12 = 0.0;
    v11 = 0.0;
  }

  *ascender = ceil(v12);
  *descender = floor(v11);
}

- ($1AB5FA073B851C12C2339EC22442E995)_getLineMetricsForRange:(_NSRange)range attributes:(id)attributes attributedString:(id)string applySpacing:(BOOL)spacing usesSystemFontLeading:(BOOL)leading usesNegativeFontLeading:(BOOL)fontLeading
{
  spacingCopy = spacing;
  length = range.length;
  v43 = range.location;
  usesFontLeading = [(NSTypesetter *)self usesFontLeading];
  layoutOrientation = [(NSCoreTypesetter *)self layoutOrientation];
  allowsFontSubstitutionAffectingVerticalMetrics = [(NSCoreTypesetter *)self allowsFontSubstitutionAffectingVerticalMetrics];
  allowsFontOverridingTextAttachmentVerticalMetrics = [(NSCoreTypesetter *)self allowsFontOverridingTextAttachmentVerticalMetrics];
  typesetterBehavior = [(NSTypesetter *)self typesetterBehavior];
  v13 = layoutOrientation == 1;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3052000000;
  v77 = __Block_byref_object_copy__11;
  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v78 = __Block_byref_object_dispose__11;
  v79 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  objc_initWeak(&location, self);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v47 = __131__NSCoreTypesetter__getLineMetricsForRange_attributes_attributedString_applySpacing_usesSystemFontLeading_usesNegativeFontLeading___block_invoke;
  v48 = &unk_1E7267AD0;
  v54 = allowsFontOverridingTextAttachmentVerticalMetrics;
  v55 = allowsFontSubstitutionAffectingVerticalMetrics;
  v53[1] = v14;
  v49 = &v74;
  objc_copyWeak(v53, &location);
  v56 = !usesFontLeading;
  leadingCopy = leading;
  v58 = v13;
  fontLeadingCopy = fontLeading;
  v60 = usesFontLeading;
  v50 = &v66;
  v51 = &v70;
  v53[2] = typesetterBehavior;
  v52 = &v62;
  if (!attributes && length && v43 + length <= [string length])
  {
    [string enumerateAttributesInRange:v43 options:length usingBlock:{0x100000, v46}];
  }

  else
  {
    v45 = 0;
    (v47)(v46, attributes, v43, length, &v45);
  }

  v15 = v71[3];
  v16 = v67[3];
  v17 = v75;
  v18 = v75[5];
  v19 = 0.0;
  if (v18)
  {
    [v18 lineHeightMultiple];
    v21 = v20;
    [v75[5] minimumLineHeight];
    v23 = v22;
    [v75[5] maximumLineHeight];
    v25 = v24;
    v17 = v75;
    if (spacingCopy)
    {
      [v75[5] lineSpacing];
      v19 = v26;
      v17 = v75;
    }
  }

  else
  {
    v25 = 0.0;
    v23 = 0.0;
    v21 = 0.0;
  }

  v27 = v15 - v16;
  if ([v17[5] baselineIntervalType])
  {
    [v75[5] baselineInterval];
    v29 = v28;
    baselineIntervalType = [v75[5] baselineIntervalType];
    switch(baselineIntervalType)
    {
      case 1:
        v27 = v27 * v29;
        break;
      case 2:
        v27 = v27 + v29;
        break;
      case 3:
        v27 = v29;
        break;
    }

    v32 = 0.0;
    if (usesFontLeading)
    {
      v32 = v63[3];
    }

    v25 = v27;
  }

  else
  {
    if (v21 > 0.0)
    {
      v71[3] = v27 * v21 - v27 + v71[3];
      v27 = v27 * v21;
    }

    if (v27 >= v23)
    {
      v23 = v27;
    }

    else
    {
      v71[3] = v23 - v27 + v71[3];
    }

    if (v25 <= 0.0 || v23 <= v25)
    {
      v25 = v23;
    }

    else
    {
      v71[3] = v71[3] - (v23 - v25);
    }

    v31 = v63;
    v32 = v67[3] + v63[3];
    v63[3] = v32;
    if (v19 < 0.0)
    {
      v32 = v19 + v32;
      v31[3] = v32;
      if (v32 < 0.0)
      {
        v31[3] = 0.0;
        v32 = 0.0;
      }
    }

    if (!usesFontLeading)
    {
      if (v32 >= v19)
      {
        v19 = v32;
      }

      v32 = 0.0;
    }
  }

  v33 = v25 + v32;
  v34 = v71[3];
  objc_destroyWeak(v53);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);
  v35 = v33;
  v36 = v34;
  v37 = v19;
  result.var2 = v37;
  result.var1 = v36;
  result.var0 = v35;
  return result;
}

uint64_t __131__NSCoreTypesetter__getLineMetricsForRange_attributes_attributedString_applySpacing_usesSystemFontLeading_usesNegativeFontLeading___block_invoke(uint64_t a1, void *a2)
{
  if ((*(a1 + 88) & 1) != 0 || (result = [a2 objectForKeyedSubscript:@"NSAttachment"]) == 0)
  {
    if (!a2)
    {
      goto LABEL_10;
    }

    if ((*(a1 + 89) & 1) != 0 || (v5 = [a2 objectForKey:_NSOriginalFontAttributeName]) == 0)
    {
      v5 = [a2 objectForKey:@"NSFont"];
    }

    if ([objc_msgSend(a2 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
    {
      v5 = [v5 verticalFont];
    }

    if (!v5)
    {
LABEL_10:
      v5 = NSDefaultFont();
    }

    v6 = v5;
    if (*(a1 + 72))
    {
      v6 = [v5 verticalFont];
    }

    if (v6)
    {
      v5 = v6;
    }

    if (!v5)
    {
      v5 = NSDefaultFont();
    }

    v7 = *(*(*(a1 + 32) + 8) + 40);
    if (!v7)
    {
      *(*(*(a1 + 32) + 8) + 40) = [objc_loadWeak((a1 + 64)) _paragraphStyleFromAttributes:a2];
      v7 = *(*(*(a1 + 32) + 8) + 40);
    }

    if ([v7 baselineIntervalType])
    {
      [v5 pointSize];
      v9 = v8;
    }

    else
    {
      [v5 _defaultLineHeightForUILayout];
      v9 = v10 + 0.0;
      [v5 ascender];
    }

    v11 = v8;
    if (*(a1 + 92) == 1 && ([v5 isVertical] & 1) == 0)
    {
      v11 = floor(v9 * 0.5);
    }

    v12 = [a2 objectForKeyedSubscript:@"NSBaselineOffset"];
    v13 = 0.0;
    v14 = 0.0;
    if (v12)
    {
      [v12 doubleValue];
      v14 = v15 + 0.0;
    }

    result = [*(*(*(a1 + 32) + 8) + 40) baselineIntervalType];
    if (!result && ((*(a1 + 91) & 1) != 0 || (*(a1 + 93) & 1) != 0 || *(a1 + 94) == 1))
    {
      if ((*(a1 + 94) & 1) != 0 || (result = CTFontIsSystemUIFont(), result))
      {
        result = [v5 _leading];
        v13 = v26;
        if (*(a1 + 93) == 1)
        {
          if ((*(a1 + 91) & 1) == 0 && !(*(a1 + 94) & 1 | (v26 <= 0.0)))
          {
            v13 = 0.0;
          }
        }

        else if (v26 < 0.0)
        {
          v13 = 0.0;
        }
      }
    }

    v16 = v11 + fmin(v13, 0.0);
    v17 = v11 - v9;
    v18 = *(*(a1 + 40) + 8);
    if (v11 - v9 < *(v18 + 24))
    {
      *(v18 + 24) = v17;
    }

    v19 = *(*(a1 + 48) + 8);
    if (v16 > *(v19 + 24))
    {
      *(v19 + 24) = v16;
    }

    if (v14 != 0.0)
    {
      v20 = v14 + v16;
      v17 = v17 + v14;
      v21 = *(*(a1 + 40) + 8);
      if (v17 < *(v21 + 24))
      {
        *(v21 + 24) = v17;
      }

      v22 = *(*(a1 + 48) + 8);
      if (v20 > *(v22 + 24))
      {
        *(v22 + 24) = v20;
      }
    }

    v23 = 0.0;
    if (v13 >= 0.0)
    {
      v23 = v13;
    }

    v24 = v23 - v17;
    v25 = *(*(a1 + 56) + 8);
    if (v24 > *(v25 + 24))
    {
      *(v25 + 24) = v24;
    }
  }

  return result;
}

- (id)_paragraphStyleFromAttributes:(id)attributes
{
  result = [attributes objectForKeyedSubscript:@"NSParagraphStyle"];
  if (!result)
  {

    return [(NSTypesetter *)self defaultParagraphStyle];
  }

  return result;
}

- (CGRect)lineFragmentRectForProposedRect:(CGRect)rect atIndex:(int64_t)index writingDirection:(int64_t)direction remainingRect:(CGRect *)remainingRect
{
  height = rect.size.height;
  width = rect.size.width;
  x = rect.origin.x;
  v11 = rect.origin.y + self->_lineFragmentOriginYOffset;
  if (self->_delegateSupportsTextContainer)
  {
    v12 = *(MEMORY[0x1E695F058] + 16);
    v29 = *MEMORY[0x1E695F058];
    v30 = v12;
    [(NSCoreTypesetterDelegateInternal *)self->_delegate coreTypesetter:self lineFragmentRectForProposedRect:index atIndex:direction writingDirection:&v29 remainingRect:rect.origin.x, v11, rect.size.width, rect.size.height];
    x = v13;
    v11 = v14;
    width = v15;
    height = v16;
    if (!remainingRect)
    {
      goto LABEL_16;
    }

    lineFragmentOriginYOffset = self->_lineFragmentOriginYOffset;
    if (v29.y >= lineFragmentOriginYOffset)
    {
      v29.y = v29.y - lineFragmentOriginYOffset;
    }

    v18 = v29;
    v19 = v30;
    goto LABEL_15;
  }

  [(NSCoreTypesetter *)self textContainerSize:index];
  v22 = v21;
  if (v20 > 0.0)
  {
    v23 = v20;
    v31.origin.x = x;
    v31.origin.y = v11;
    v31.size.width = width;
    v31.size.height = height;
    if (v23 < CGRectGetMaxX(v31))
    {
      v32.origin.x = x;
      v32.origin.y = v11;
      v32.size.width = width;
      v32.size.height = height;
      width = v23 - CGRectGetMinX(v32);
    }
  }

  if (v22 > 0.0)
  {
    v33.origin.x = x;
    v33.origin.y = v11;
    v33.size.width = width;
    v33.size.height = height;
    if (v22 < CGRectGetMaxY(v33) && ![(NSCoreTypesetter *)self enforcesMinimumTextLineFragment])
    {
      v34.origin.x = x;
      v34.origin.y = v11;
      v34.size.width = width;
      v34.size.height = height;
      height = v22 - CGRectGetMinY(v34);
    }
  }

  if (remainingRect)
  {
    v18 = *MEMORY[0x1E695F058];
    v19 = *(MEMORY[0x1E695F058] + 16);
LABEL_15:
    remainingRect->origin = v18;
    remainingRect->size = v19;
  }

LABEL_16:
  v24 = self->_lineFragmentOriginYOffset;
  v25 = v11 - v24;
  if (v11 < v24)
  {
    v25 = v11;
  }

  v26 = x;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v25;
  result.origin.x = v26;
  return result;
}

- (BOOL)isSimpleRectangularTextContainerForStartingCharacterAtIndex:(int64_t)index
{
  if (isSimpleRectangularTextContainerForStartingCharacterAtIndex__onceToken != -1)
  {
    [NSCoreTypesetter isSimpleRectangularTextContainerForStartingCharacterAtIndex:];
  }

  if (!self->_delegateSupportsTextContainer || (isSimpleRectangularTextContainerForStartingCharacterAtIndex__forcesNonSimple & 1) != 0)
  {
    return (isSimpleRectangularTextContainerForStartingCharacterAtIndex__forcesNonSimple ^ 1) & 1;
  }

  delegate = self->_delegate;

  return [(NSCoreTypesetterDelegateInternal *)delegate coreTypesetter:self isSimpleRectangularTextContainerForStartingCharacterAtIndex:index];
}

uint64_t __80__NSCoreTypesetter_isSimpleRectangularTextContainerForStartingCharacterAtIndex___block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  isSimpleRectangularTextContainerForStartingCharacterAtIndex__forcesNonSimple = result;
  return result;
}

CFTypeRef __273__NSCoreTypesetter__NSFastDrawString_length_attributes_paragraphStyle_typesetterBehavior_lineBreakMode_rect_padding_graphicsContext_baselineRendering_usesFontLeading_usesScreenFont_scrollable_syncAlignment_mirrored_boundingRectPointer_baselineOffsetPointer_drawingContext___block_invoke()
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  result = CFRetain(Predefined);
  qword_1ED4DF318 = result;
  return result;
}

uint64_t __273__NSCoreTypesetter__NSFastDrawString_length_attributes_paragraphStyle_typesetterBehavior_lineBreakMode_rect_padding_graphicsContext_baselineRendering_usesFontLeading_usesScreenFont_scrollable_syncAlignment_mirrored_boundingRectPointer_baselineOffsetPointer_drawingContext___block_invoke_2(void *a1, void *a2)
{
  [a2 setGlyphs:a1[5] advances:a1[6] count:a1[7] elasticCount:a1[8] font:a1[9]];
  v3 = *(*(a1[4] + 88) + 16);

  return v3();
}

uint64_t __273__NSCoreTypesetter__NSFastDrawString_length_attributes_paragraphStyle_typesetterBehavior_lineBreakMode_rect_padding_graphicsContext_baselineRendering_usesFontLeading_usesScreenFont_scrollable_syncAlignment_mirrored_boundingRectPointer_baselineOffsetPointer_drawingContext___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 setIsExtra:1];
  v3 = *(*(*(a1 + 32) + 88) + 16);

  return v3();
}

- (int64_t)_getFirstOverflowTabStopIndexInLineRef:(__CTLine *)ref range:(_NSRange)range string:(id)string paragraphStyle:(id)style availableWidth:(double)width offset:(double)offset
{
  if (ref)
  {
    length = CTLineGetStringRange(ref).length;
  }

  else
  {
    length = 0;
  }

  if (width <= 0.0 || length < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!style)
  {
    style = [(NSTypesetter *)self defaultParagraphStyle];
  }

  [style defaultTabInterval];
  v15 = v14 == 0.0 ? 0 : [style tabStops];
  TypographicBounds = CTLineGetTypographicBounds(ref, 0, 0, 0);
  [objc_msgSend(v15 "lastObject")];
  if (TypographicBounds < v17)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = CTLineGetStringIndexOfTabOverflow();
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- ($F08F7EC4C389A89376F473094BC6C9F8)_forcedLineBreakAfterIndex:(SEL)index
{
  v18 = *MEMORY[0x1E69E9840];
  if (![(NSCoreTypesetter *)self forcedLineBreaks])
  {
    [NSCoreTypesetter _forcedLineBreakAfterIndex:];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  forcedLineBreaks = [(NSCoreTypesetter *)self forcedLineBreaks];
  result = [(NSArray *)forcedLineBreaks countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v14;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(forcedLineBreaks);
      }

      v12 = *(*(&v13 + 1) + 8 * v11);
      retstr->var1 = 0;
      *&retstr->var2 = 0;
      retstr->var0 = 0;
      if (v12)
      {
        result = [v12 UIF_lineBreakContextValue];
        if (retstr->var0 > a4)
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        result = [(NSArray *)forcedLineBreaks countByEnumeratingWithState:&v13 objects:v17 count:16];
        v9 = result;
        if (result)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    *&retstr->var0 = NSLineBreakContextNull;
    *&retstr->var2 = 0;
  }

  return result;
}

- (__CTLine)_createLineRefForParentLineRef:(const __CTLine *)ref range:(_NSRange)range availableWidth:(double)width offset:(double)offset paragraphArbitrator:(id)arbitrator lineBreakMode:(int64_t)mode hyphenated:(BOOL *)hyphenated forcedClusterBreak:(BOOL *)self0
{
  length = range.length;
  location = range.location;
  v27 = range.length;
  if ([(NSCoreTypesetter *)self forcedLineBreaks])
  {
    if (self)
    {
      [(NSCoreTypesetter *)self _forcedLineBreakAfterIndex:location];
    }

    if (location + length)
    {
      v17 = 0;
    }

    else
    {
      v17 = location + length;
    }

    v18 = v17 - location;
    v20 = 0;
  }

  else if (arbitrator)
  {
    v16 = CTLineSuggestClusterBreakWithTabOverflow();
    v17 = v16;
    if (mode == 1 || !v16 || (v18 = v27, v16 + location >= location + v27))
    {
      v20 = v16;
      v18 = v16;
    }

    else
    {
      v19 = [arbitrator adjustedLineBreakIndexForProposedIndex:?];
      if (v19 <= location + v27)
      {
        v20 = v19;
        [arbitrator lineBreakContextBeforeIndex:v19 lineFragmentWidth:location range:{v27, width}];
        v18 = -location;
        v17 = 0;
      }

      else
      {
        v20 = v17;
      }
    }
  }

  else
  {
    v18 = CTLineSuggestLineBreakWithTabOverflow();
    v20 = 0;
    v17 = 0;
  }

  delegate = [(NSCoreTypesetter *)self delegate];
  if (delegate)
  {
    v22 = delegate;
    if (objc_opt_respondsToSelector())
    {
      v23 = [(NSCoreTypesetterDelegate *)v22 coreTypesetter:self indexToBreakLineByWordBeforeCharacterAtIndex:v20 proposedIndex:v17];
      if (v23 < v20 && v23 > location)
      {
        v18 = v23 - location;
      }
    }
  }

  if (v18)
  {
    return CTLineCreateFromLineWithOffset();
  }

  else
  {
    return 0;
  }
}

- (__CTLine)_createLayoutLineFragmentStartingWithCharacterIndex:(int64_t *)index proposedLineFragmentRect:(CGRect *)rect baseLineRef:(const __CTLine *)ref range:(_NSRange)range paragraphStyle:(id)style paragraphArbitrator:(id)arbitrator lineBreakMode:(int64_t)mode hasAttachments:(BOOL)self0 lineFragmentRect:(CGRect *)self1 glyphOrigin:(CGPoint *)self2 hyphenated:(BOOL *)self3 forcedClusterBreak:(BOOL *)self4
{
  length = range.length;
  location = range.location;
  attributedString = [(NSTypesetter *)self attributedString];
  string = [(NSAttributedString *)attributedString string];
  v97 = length;
  if (length)
  {
    extraLineFragmentAttributes = [(NSAttributedString *)attributedString attributesAtIndex:*index effectiveRange:0];
  }

  else
  {
    extraLineFragmentAttributes = self->__extraLineFragmentAttributes;
  }

  v100 = attributedString;
  if (style)
  {
    v21 = *ref;
    _fallbackWritingDirection = [(NSCoreTypesetter *)self _fallbackWritingDirection];
  }

  else
  {
    style = [(NSTypesetter *)self defaultParagraphStyle];
    v21 = *ref;
    _fallbackWritingDirection = [(NSCoreTypesetter *)self _fallbackWritingDirection];
    if (!style)
    {
      goto LABEL_8;
    }
  }

  IsRightToLeft = [style baseWritingDirection];
  if (IsRightToLeft == -1)
  {
LABEL_8:
    if (v21)
    {
      IsRightToLeft = CTLineIsRightToLeft();
    }

    else
    {
      IsRightToLeft = _fallbackWritingDirection;
    }
  }

  v24 = MEMORY[0x1E696AA80];
  v25 = *(MEMORY[0x1E696AA80] + 16);
  v112.origin = *MEMORY[0x1E696AA80];
  v112.size = v25;
  v26 = *index;
  typesetterBehavior = [(NSTypesetter *)self typesetterBehavior];
  v110 = 0.0;
  v111 = 0.0;
  [(NSTypesetter *)self lineFragmentPadding];
  v29 = v28;
  v107 = 0.0;
  v108 = 0.0;
  v109 = 0.0;
  x = rect->origin.x;
  y = rect->origin.y;
  width = rect->size.width;
  height = rect->size.height;
  v115.origin.x = rect->origin.x;
  v115.origin.y = y;
  v115.size.width = width;
  v115.size.height = height;
  rectCopy = rect;
  indexCopy = index;
  if (CGRectGetWidth(v115) == 0.0 || (v116.origin.x = x, v116.origin.y = y, v116.size.width = width, v116.size.height = height, CGRectGetHeight(v116) == 0.0))
  {
    x = 0.0;
    v117.origin.x = 0.0;
    v117.origin.y = y;
    v117.size.width = width;
    v117.size.height = height;
    v34 = CGRectGetHeight(v117);
    if (v26)
    {
      LOBYTE(v35) = 1;
    }

    else
    {
      v35 = ![(NSCoreTypesetter *)self isBeginningOfDocument];
    }

    y = y + v34;
    LOBYTE(v91) = v35;
    [(NSCoreTypesetter *)self _getLineMetricsForRange:v26 attributes:0 attributedString:extraLineFragmentAttributes applySpacing:attributedString usesSystemFontLeading:1 usesNegativeFontLeading:0, v91];
    height = v36;
    v107 = v36;
    v108 = v37;
    v109 = v38;
    width = 10000000.0;
  }

  v101 = y;
  v105 = x;
  v106 = width;
  if (v26 < 1)
  {
    goto LABEL_28;
  }

  if (v26 == 1)
  {
    v39 = 0;
  }

  else
  {
    v40 = [(NSString *)string characterAtIndex:v26 - 1];
    v39 = v26 - 1;
    if (v40 == 10)
    {
      if ([(NSString *)string characterAtIndex:v26 - 2]== 13)
      {
        v39 = v26 - 2;
      }

      else
      {
        v39 = v26 - 1;
      }
    }
  }

  v41 = [(NSTypesetter *)self actionForControlCharacterAtIndex:v39];
  if ((v41 & 0x10) != 0 || typesetterBehavior <= NSTypesetterBehavior_10_3 && (v41 & 0x20) != 0)
  {
LABEL_28:
    v42 = 1;
  }

  else
  {
    attributedString2 = [(NSTypesetter *)self attributedString];
    v113 = 0;
    v114 = 0;
    v90 = [(NSAttributedString *)attributedString2 attribute:@"NSAttachment" atIndex:v26 - 1 effectiveRange:&v113];
    if (v114 + v113 > v26 || !v90)
    {
      if ([(NSString *)string length]<= v26)
      {
        v90 = 0;
      }

      else
      {
        v90 = [(NSAttributedString *)attributedString2 attribute:@"NSAttachment" atIndex:v26 effectiveRange:&v113];
        if (v114 + v113 > v26)
        {
          v90 = 0;
        }
      }
    }

    v42 = [v90 embeddingType] == 1;
  }

  v43 = 0;
  v98 = -v29;
  v94 = location + v97;
  v102 = v24[1];
  v104 = *v24;
  v93 = 1;
  v45 = v24[2];
  v44 = v24[3];
  do
  {
    [(NSCoreTypesetter *)self beginLine];
    [(NSCoreTypesetter *)self lineFragmentRectForProposedRect:v26 atIndex:IsRightToLeft writingDirection:&v112 remainingRect:v105, v101, v106, height];
    if (v48 == 0.0 || v49 == 0.0)
    {
      if (!v43)
      {
        return v43;
      }

LABEL_77:
      CFRelease(v43);
      return 0;
    }

    v50 = v46;
    v51 = v47;
    v52 = v48;
    v53 = v48 + v98 * 2.0;
    [NSCoreTypesetter _minMaxPositionsForLineFragmentWithParagraphStyle:style baseWidth:IsRightToLeft writingDirection:v42 isBeginningOfParagraph:&v111 minPosition:&v110 maxPosition:v53];
    v54 = v110;
    if (v110 <= v53)
    {
      if (v110 < 0.0)
      {
        v110 = 0.0;
        v54 = 0.0;
      }
    }

    else
    {
      v110 = v53;
      v54 = v53;
    }

    v55 = v111;
    if (v111 >= 0.0)
    {
      if (v111 > v54)
      {
        v111 = v54;
        v55 = v54;
      }
    }

    else
    {
      v111 = 0.0;
      v55 = 0.0;
    }

    if (v54 > v55)
    {
      v53 = v54 - v55;
    }

    if (v43)
    {
      CFRelease(v43);
    }

    if (*ref)
    {
      break = [(NSCoreTypesetter *)self _createLineRefForParentLineRef:ref range:*indexCopy availableWidth:v94 - *indexCopy offset:arbitrator paragraphArbitrator:mode lineBreakMode:hyphenated hyphenated:v53 forcedClusterBreak:v111, break];
      v43 = break;
      if (break)
      {
        StringRange = CTLineGetStringRange(break);
        v26 = StringRange.location;
        v58 = StringRange.length;
        v59 = 1;
        if (!StringRange.location)
        {
          goto LABEL_47;
        }

        goto LABEL_51;
      }

      v59 = 0;
    }

    else
    {
      v59 = 0;
      v43 = 0;
    }

    v26 = location;
    v58 = v97;
    if (!location)
    {
LABEL_47:
      v60 = ![(NSCoreTypesetter *)self isBeginningOfDocument];
      goto LABEL_52;
    }

LABEL_51:
    LOBYTE(v60) = 1;
LABEL_52:
    LOBYTE(v91) = v60;
    [(NSCoreTypesetter *)self _getLineMetricsForRange:v26 attributes:v58 attributedString:extraLineFragmentAttributes applySpacing:v100 usesSystemFontLeading:1 usesNegativeFontLeading:0, v91];
    v62 = v61;
    v107 = v61;
    v108 = v63;
    v109 = v64;
    if ((v59 & attachments) == 1)
    {
      __NSCoreTypesetterAdjustLineHeightAndBaselineForTextAttachments(v43, &v107, &v108);
      v62 = v107;
    }

    if (v62 == height)
    {
      goto LABEL_59;
    }

    [(NSCoreTypesetter *)self lineFragmentRectForProposedRect:v26 atIndex:IsRightToLeft writingDirection:&v112 remainingRect:v105, v51, v106, v62];
    v69 = v68;
    if (v52 == v67 && v67 != 0.0 && v68 != 0.0)
    {
      v62 = v68;
      v52 = v67;
      v51 = v66;
      v50 = v65;
LABEL_59:
      v71 = v102;
      v70 = v104;
      goto LABEL_71;
    }

    v73 = v102;
    v72 = v104;
    if (v62 <= height)
    {
      if (v68 <= height)
      {
        if (v66 == v51 || v52 == v67)
        {
          v74 = v62;
          v75 = v62;
        }

        else
        {
          v105 = v65;
          v106 = 10000000.0;
          v50 = v104;
          v51 = v102;
          v52 = v45;
          v74 = v44;
          v75 = v44;
          height = v69;
          v101 = v66;
        }
      }

      else
      {
        v76 = v106;
        if (!(v93 & 1 | (v67 >= v52)))
        {
          v76 = v67;
        }

        v106 = v76;
        v50 = v104;
        v51 = v102;
        v52 = v45;
        v74 = v44;
        v75 = v44;
        height = v62;
        v93 = 0;
      }
    }

    else
    {
      v50 = v104;
      v51 = v102;
      v52 = v45;
      v74 = v44;
      v75 = v44;
      height = v62;
    }

    v77 = v50;
    v78 = v51;
    v79 = v52;
    v80 = v45;
    v81 = v44;
    v82 = NSEqualRects(*(&v74 - 3), *&v72);
    v71 = v102;
    v70 = v104;
    v62 = v75;
    if (!v82)
    {
      if (!v59)
      {
        return 0;
      }

      goto LABEL_77;
    }

LABEL_71:
    v118.origin.x = v50;
    v118.origin.y = v51;
    v118.size.width = v52;
    v118.size.height = v62;
    v83 = v45;
    v84 = v44;
  }

  while (NSEqualRects(v118, *&v70));
  [(NSCoreTypesetter *)self endLine];
  *indexCopy = v26 + v58;
  [(NSTypesetter *)self lineFragmentPadding];
  v86 = v52 + v85 * -2.0;
  v119.origin.y = v102;
  v119.origin.x = v104;
  v119.size.width = v45;
  v119.size.height = v44;
  if (NSEqualRects(v112, v119) || v94 <= *indexCopy)
  {
    v112.origin.x = 0.0;
    v112.origin.y = v62 + v51 + v109;
    v112.size = 0uLL;
  }

  size = v112.size;
  rectCopy->origin = v112.origin;
  rectCopy->size = size;
  fragmentRect->origin.x = v50;
  fragmentRect->origin.y = v51;
  fragmentRect->size.width = v86;
  fragmentRect->size.height = v62;
  size.width = v108;
  origin->x = v111;
  origin->y = size.width;
  return v43;
}

- (void)_updateBidiLevelsAndBaseWritingDirectionForAttributedString:(id)string paragraphRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (self->_delegateSupportsBidi)
  {
    self->_resolvedBaseWritingDirection = [(NSCoreTypesetterDelegateInternal *)self->_delegate coreTypesetter:self baseWritingDirectionForRange:range.location bidiLevelsPointer:range.length, &self->_bidiLevels];
  }

  else if (self->_fallbackBaseWritingDirection != 1 || range.length == 0)
  {
    self->_resolvedBaseWritingDirection = -1;
    self->_bidiLevels = 0;
  }

  else
  {
    v9 = [string attribute:@"NSParagraphStyle" atIndex:range.location effectiveRange:0];
    if (!v9)
    {
      v9 = +[NSParagraphStyle defaultParagraphStyle];
    }

    if ([(NSParagraphStyle *)v9 baseWritingDirection]== NSWritingDirectionNatural)
    {
      v10 = malloc_type_calloc(length, 1uLL, 0x100004077774924uLL);
      self->_resolvedBaseWritingDirection = [_NSParagraphBidiLevelsProducer resolvedBaseWritingDirectionForTextContentManager:string AttributedString:location paragraphRange:length baseWritingDirection:-1 fallbackBaseWritingDirection:self->_fallbackBaseWritingDirection bidiLevels:?];
    }

    else
    {
      v10 = 0;
    }

    free(self->_bidiLevels);
    self->_bidiLevels = v10;
  }
}

- (CGRect)_stringDrawingCoreTextEngineWithOriginalString:(id)string rect:(CGRect)rect padding:(double)padding graphicsContext:(id)context forceClipping:(BOOL)clipping attributes:(id)attributes stringDrawingOptions:(int64_t)options drawingContext:(id)self0 stringDrawingInterface:(id *)self1
{
  height = rect.size.height;
  width = rect.size.width;
  rect_8 = rect.origin.y;
  rect = rect.origin.x;
  v522 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringCopy = string;
  }

  else
  {
    stringCopy = 0;
  }

  stringCopy2 = string;
  stringCopy3 = string;
  if (stringCopy)
  {
    stringCopy3 = [stringCopy string];
  }

  theString = stringCopy3;
  if (stringCopy3)
  {
    Length = CFStringGetLength(stringCopy3);
  }

  else
  {
    Length = 0;
  }

  v512 = 0.0;
  v411 = *(MEMORY[0x1E696AA80] + 16);
  v412 = *MEMORY[0x1E696AA80];
  v513 = *MEMORY[0x1E696AA80];
  v514 = v411;
  v506 = 0;
  v507 = &v506;
  v508 = 0x4010000000;
  v509 = "";
  v20 = *(MEMORY[0x1E695F050] + 16);
  v510 = *MEMORY[0x1E695F050];
  v511 = v20;
  v502 = 0;
  v503 = &v502;
  v504 = 0x2020000000;
  v505 = 0x7FEFFFFFFFFFFFFFLL;
  containerBreakMode = [(NSCoreTypesetter *)self containerBreakMode];
  wantsMultilineDeviceMetrics = [drawingContext wantsMultilineDeviceMetrics];
  v21 = (options & 1) == 0;
  laidOutLineFragment = [(NSCoreTypesetter *)self laidOutLineFragment];
  v22 = (options & 0x200) != 0 || self->_resolvesNaturalAlignmentWithBaseWritingDirection;
  v396 = v22;
  if (laidOutLineFragment)
  {
    typesetterBehavior = +[NSTypesetter defaultTypesetterBehavior];
  }

  else
  {
    typesetterBehavior = [MEMORY[0x1E696AEC0] typesetterBehavior];
  }

  resolvesIndentationWritingDirectionWithBaseWritingDirection = [objc_opt_class() resolvesIndentationWritingDirectionWithBaseWritingDirection];
  if (laidOutLineFragment)
  {
    v24 = 0;
  }

  else
  {
    v24 = resolvesIndentationWritingDirectionWithBaseWritingDirection;
  }

  v394 = v24;
  truncatedRanges = self->_truncatedRanges;
  if (truncatedRanges)
  {
    [(NSMutableArray *)truncatedRanges removeAllObjects];
    if (drawingContext)
    {
      goto LABEL_20;
    }

LABEL_31:
    __assert_rtn("[NSCoreTypesetter _stringDrawingCoreTextEngineWithOriginalString:rect:padding:graphicsContext:forceClipping:attributes:stringDrawingOptions:drawingContext:stringDrawingInterface:]", "NSCoreTypesetter.m", 2452, "drawingContext != nil");
  }

  self->_truncatedRanges = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!drawingContext)
  {
    goto LABEL_31;
  }

LABEL_20:
  activeRenderers = [drawingContext activeRenderers];
  if (activeRenderers)
  {
    v27 = activeRenderers;
  }

  else
  {
    v27 = 3;
  }

  applicationFrameworkContext = [(NSTypesetter *)self applicationFrameworkContext];
  drawingContextCopy = drawingContext;
  v392 = 0;
  v501 = 0;
  v500 = 0;
  v499 = 0;
  v498 = 0.0;
  v381 = containerBreakMode - 3;
  TrailingWhitespaceWidth = 0.0;
  if (options)
  {
    v28 = (options >> 5) & 1;
    if (v381 < 3)
    {
      LODWORD(v28) = 1;
    }

    v392 = v28;
  }

  [(NSTypesetter *)self setAttributedString:stringCopy];
  [(NSTypesetter *)self setTypesetterBehavior:typesetterBehavior];
  [(NSTypesetter *)self setUsesFontLeading:(options >> 1) & 1];
  -[NSCoreTypesetter setAllowsFontOverridingTextAttachmentVerticalMetrics:](self, "setAllowsFontOverridingTextAttachmentVerticalMetrics:", [objc_opt_class() _allowsFontOverridingTextAttachmentVerticalMetricsForStringDrawing]);
  if (Length < 1)
  {
    goto LABEL_660;
  }

  if (stringCopy)
  {
    attributes = [stringCopy attributesAtIndex:0 effectiveRange:&v499];
  }

  else
  {
    v499 = 0;
    v500 = Length;
  }

  v433 = [(NSCoreTypesetter *)self _paragraphStyleFromAttributes:attributes];
  if (clipping)
  {
    lineBreakMode = 2;
  }

  else
  {
    lineBreakMode = [(NSParagraphStyle *)v433 lineBreakMode];
  }

  v29 = __NSUltraFastLineBreakFinder(theString, Length, &v501, 0);
  if (applicationFrameworkContext != 2 && !laidOutLineFragment)
  {
    v30 = [drawingContext maximumNumberOfLines] == 1 && lineBreakMode <= 1;
    v31 = !v30;
    v21 = v31 & options ^ 1;
    if ((options & 0x100000) != 0 && !v31)
    {
      v32 = lineBreakMode;
      if (!lineBreakMode)
      {
        v32 = 2;
      }

      lineBreakMode = v32;
      if (options)
      {
        goto LABEL_49;
      }

LABEL_57:
      v426 = 1;
      goto LABEL_59;
    }
  }

  if (v21)
  {
    goto LABEL_57;
  }

LABEL_49:
  wrapsForTruncationMode = [drawingContext wrapsForTruncationMode];
  if (lineBreakMode > 1)
  {
    v34 = wrapsForTruncationMode;
  }

  else
  {
    v34 = 0;
  }

  if (v34 == 1)
  {
    maximumNumberOfLines = [drawingContext maximumNumberOfLines];
    v426 = 0;
    v36 = lineBreakMode;
    if (maximumNumberOfLines != 1)
    {
      v36 = 0;
    }

    lineBreakMode = v36;
    v392 = 1;
  }

  else
  {
    v426 = 0;
  }

LABEL_59:
  if (self->_layoutOrientation)
  {
    v501 = 0;
  }

  v37 = v426;
  if (Length <= v29)
  {
    v37 = 1;
  }

  if ((v37 & 1) == 0 && (!laidOutLineFragment || (Length - v29) > 1 || [(NSDictionary *)self->__extraLineFragmentAttributes count]))
  {
    v501 = 0;
  }

  if ([(NSCoreTypesetter *)self requiresCTLineRef]|| (v27 & 1) == 0 || v29 > 512 || v29 > v500 || [(NSCoreTypesetter *)self forcedLineBreaks])
  {
    v501 = 0;
  }

  if (wantsMultilineDeviceMetrics)
  {
    v501 = 0;
  }

  if (self->_fallbackBaseWritingDirection == 1)
  {
    v501 = 0;
  }

  v38 = [(NSCoreTypesetter *)self isSimpleRectangularTextContainerForStartingCharacterAtIndex:0];
  if (v501 & v38)
  {
    BYTE5(v365) = (options & 0x400) != 0;
    BYTE4(v365) = v396;
    BYTE3(v365) = clipping;
    BYTE2(v365) = 0;
    BYTE1(v365) = (options & 2) != 0;
    LOBYTE(v365) = v426;
    if ([NSCoreTypesetter _NSFastDrawString:"_NSFastDrawString:length:attributes:paragraphStyle:typesetterBehavior:lineBreakMode:rect:padding:graphicsContext:baselineRendering:usesFontLeading:usesScreenFont:scrollable:syncAlignment:mirrored:boundingRectPointer:baselineOffsetPointer:drawingContext:" length:theString attributes:v29 paragraphStyle:attributes typesetterBehavior:v433 lineBreakMode:typesetterBehavior rect:lineBreakMode padding:rect graphicsContext:rect_8 baselineRendering:width usesFontLeading:height usesScreenFont:padding scrollable:context syncAlignment:v365 mirrored:&v513 boundingRectPointer:&v512 baselineOffsetPointer:drawingContext drawingContext:?]== 2)
    {
      [drawingContext setNumberOfLineFragments:1];
      [drawingContext setTotalBounds:{v513, v514}];
      if ([drawingContext wantsBaselineOffset])
      {
        [drawingContext setBaselineOffset:v512];
        [drawingContext setFirstBaselineOffset:v512];
      }

      if (interface)
      {
        interface->var0 = 1;
      }

      goto LABEL_662;
    }
  }

  if ((v27 & 2) == 0)
  {
    goto LABEL_660;
  }

  layout = [drawingContext layout];
  v493 = 0;
  v494 = &v493;
  v495 = 0x2020000000;
  v496 = 0;
  if (!layout)
  {
    if ([drawingContext cachesLayout])
    {
      layout = objc_alloc_init(_NSCoreTypesetterLayoutCache);
      [drawingContext setLayout:layout];
    }

    else
    {
      layout = 0;
    }
  }

  v376 = layout;
  cf = 0;
  delegate = [(NSCoreTypesetter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    textAttachmentLayoutContext = [(NSCoreTypesetterDelegate *)delegate textAttachmentLayoutContext];
  }

  else
  {
    textAttachmentLayoutContext = 0;
  }

  v491 = textAttachmentLayoutContext;
  v490 = 0;
  [(_NSCoreTypesetterLayoutCache *)layout getCTLine:&v491 attachmentLayoutContext:&v490 lineValidForDrawing:?];
  if (v491)
  {
    v42 = v491;
  }

  if (!self->_laidOutLineFragment && (!cf || (v490 & 1) == 0))
  {
    if (stringCopy)
    {
      v490 = 1;
      attributesCopy = attributes;
      do
      {
        LOBYTE(buffer[0]) = 1;
        if ((__NSValidateCoreTextAttributes(attributesCopy, context == 0, buffer) & 1) == 0)
        {
          break;
        }

        v499 += v500;
        v490 &= LOBYTE(buffer[0]);
        if (!v491 && ([(__CFDictionary *)attributesCopy objectForKeyedSubscript:@"NSAttachment"]|| [(__CFDictionary *)attributesCopy objectForKeyedSubscript:@"CTAdaptiveImageProvider"]))
        {
          v491 = objc_alloc_init(_NSTextAttachmentLayoutContext);
        }

        if (v499 >= Length)
        {
          break;
        }

        attributesCopy = [stringCopy attributesAtIndex:? effectiveRange:?];
      }

      while (attributesCopy);
      if (v499 >= v29)
      {
        v45 = v426;
      }

      else
      {
        v45 = 0;
      }

      if (v499 >= Length || (v45 & 1) != 0)
      {
        goto LABEL_95;
      }

LABEL_198:
      v373 = 0;
      interfaceCopy3 = interface;
      goto LABEL_657;
    }

    v104 = __NSValidateCoreTextAttributes(attributes, context == 0, &v490);
    v105 = v104;
    if (v491)
    {
      v106 = 0;
    }

    else
    {
      v106 = v104;
    }

    if (v106 == 1 && ([attributes objectForKeyedSubscript:@"NSAttachment"] || objc_msgSend(attributes, "objectForKeyedSubscript:", @"CTAdaptiveImageProvider")) && Length == 1 && CFStringGetCharacterAtIndex(theString, 0) == 65532)
    {
      v491 = objc_alloc_init(_NSTextAttachmentLayoutContext);
    }

    if (!v105)
    {
      goto LABEL_198;
    }
  }

LABEL_95:
  line = 0;
  if (v491)
  {
    [(_NSTextAttachmentLayoutContext *)v491 setApplicationFrameworkContext:applicationFrameworkContext];
    [(_NSTextAttachmentLayoutContext *)v491 setUsesFontLeading:(options >> 1) & 1];
    allowsFontOverridingTextAttachmentVerticalMetrics = [(NSCoreTypesetter *)self allowsFontOverridingTextAttachmentVerticalMetrics];
    [(_NSTextAttachmentLayoutContext *)v491 setAllowsFontOverridingTextAttachmentVerticalMetrics:allowsFontOverridingTextAttachmentVerticalMetrics];
    v373 = 0;
    if (!delegate && width > 0.0)
    {
      v373 = [[NSTextContainer alloc] initWithSize:width, 40000.0];
      [(NSTextContainer *)v373 setLineFragmentPadding:0.0];
      [(_NSTextAttachmentLayoutContext *)v491 setTextContainer:v373];
    }
  }

  else
  {
    v373 = 0;
  }

  v46 = stringCopy2;
  if (!stringCopy)
  {
    v46 = [objc_allocWithZone(_NSCachedAttributedString) initWithString:stringCopy2 attributes:attributes];
  }

  keyframe = [(NSCoreTypesetter *)self keyframe];
  v516.x = 0.0;
  *&v516.y = &v516;
  *&v517.width = 0x2020000000;
  LOBYTE(v517.height) = 0;
  v48 = [(__CFString *)v46 length];
  v455 = MEMORY[0x1E69E9820];
  v456 = 3221225472;
  v457 = __attributedStringAtKeyframe_block_invoke;
  v458 = &unk_1E7266970;
  *&v459 = &v516;
  [(__CFString *)v46 enumerateAttribute:@"NSTextAnimation" inRange:0 options:v48 usingBlock:0, &v455];
  v49 = v46;
  if (*(*&v516.y + 24))
  {
    v50 = objc_alloc_init(MEMORY[0x1E696AD40]);
    rect1.origin.x = 0.0;
    *&rect1.origin.y = &rect1;
    *&rect1.size.width = 0x2020000000;
    rect1.size.height = 0.0;
    v51 = [(__CFString *)v46 length];
    *buffer = MEMORY[0x1E69E9820];
    *&buffer[4] = 3221225472;
    *&v468 = __attributedStringAtKeyframe_block_invoke_2;
    *(&v468 + 1) = &unk_1E7267C80;
    *&v469 = v50;
    *(&v469 + 1) = v46;
    *(&v470 + 1) = &rect1;
    *&v470 = keyframe;
    [(__CFString *)v46 enumerateAttribute:@"NSTextAnimation" inRange:0 options:v51 usingBlock:0, buffer];
    v52 = *(*&rect1.origin.y + 24);
    if (v52 < [(__CFString *)v46 length])
    {
      v53 = *(*&rect1.origin.y + 24);
      v54 = [(__CFString *)v46 length];
      [v50 appendAttributedString:{-[__CFString attributedSubstringFromRange:](v46, "attributedSubstringFromRange:", v53, v54 - *(*&rect1.origin.y + 24))}];
    }

    v49 = v50;
    _Block_object_dispose(&rect1, 8);
  }

  _Block_object_dispose(&v516, 8);
  if (v49 == v46)
  {
    attributesCopy2 = attributes;
  }

  else
  {
    stringCopy = v49;
    attributesCopy2 = 0;
  }

  v405 = attributesCopy2;
  v56 = MEMORY[0x1E696AA80];
  if (cf)
  {
    BaseLineFromAttributedString = CFRetain(cf);
  }

  else
  {
    if (v29 < 1)
    {
      v60 = 0;
      goto LABEL_131;
    }

    [(NSCoreTypesetter *)self _updateBidiLevelsAndBaseWritingDirectionForAttributedString:v49 paragraphRange:0, v29];
    layoutOrientation = [(NSCoreTypesetter *)self layoutOrientation];
    limitsLayoutForSuspiciousContents = [(NSCoreTypesetter *)self limitsLayoutForSuspiciousContents];
    BaseLineFromAttributedString = __NSCoreTypesetterCreateBaseLineFromAttributedString(v49, 0, v29, layoutOrientation, limitsLayoutForSuspiciousContents, v491, self->_bidiLevels, self->_resolvedBaseWritingDirection);
  }

  v60 = BaseLineFromAttributedString;
  cf = BaseLineFromAttributedString;
LABEL_131:
  _fallbackWritingDirection = [(NSCoreTypesetter *)self _fallbackWritingDirection];
  if (!v433 || (v62 = [(NSParagraphStyle *)v433 baseWritingDirection], IsRightToLeft = v62, v62 == -1))
  {
    if (v60)
    {
      IsRightToLeft = CTLineIsRightToLeft();
    }

    else
    {
      IsRightToLeft = _fallbackWritingDirection;
    }

    if (v394)
    {
      baseWritingDirection = IsRightToLeft;
      goto LABEL_143;
    }

    if (!v433)
    {
LABEL_142:
      baseWritingDirection = [NSParagraphStyle defaultWritingDirectionForLanguage:0];
      goto LABEL_143;
    }
  }

  else
  {
    baseWritingDirection = v62;
    if (v394)
    {
      goto LABEL_143;
    }
  }

  baseWritingDirection = [(NSParagraphStyle *)v433 baseWritingDirection];
  if (baseWritingDirection == NSWritingDirectionNatural)
  {
    goto LABEL_142;
  }

LABEL_143:
  v410 = stringCopy;
  v488 = 0.0;
  v487 = 0.0;
  v65 = [(NSCoreTypesetter *)self isSimpleRectangularTextContainerForStartingCharacterAtIndex:0];
  v385 = 0.0;
  if (v65)
  {
    v66 = height;
    rect_16 = width;
    v67 = rect_8;
    rectCopy = rect;
    v68 = 0.0;
  }

  else
  {
    if (Length == v500 || stringCopy == 0)
    {
      v70 = v405;
    }

    else
    {
      v70 = 0;
    }

    LOBYTE(v364) = 0;
    [NSCoreTypesetter _getLineMetricsForRange:"_getLineMetricsForRange:attributes:attributedString:applySpacing:usesSystemFontLeading:usesNegativeFontLeading:" attributes:0 attributedString:v29 applySpacing:v70 usesSystemFontLeading:v364 usesNegativeFontLeading:?];
    v68 = v71;
    v488 = v72;
    v487 = v73;
    [(NSCoreTypesetter *)self lineFragmentRectForProposedRect:0 atIndex:IsRightToLeft writingDirection:0 remainingRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), 10000000.0, v72];
    rectCopy = v74;
    v67 = v75;
    v77 = v76;
    v66 = v78;
    [(NSTypesetter *)self lineFragmentPadding];
    rect_16 = v77 + v79 * -2.0;
  }

  if (self->_typographicBoundsIncludesLineFragmentPadding)
  {
    [(NSTypesetter *)self lineFragmentPadding];
    v385 = v80;
  }

  cGContext = [context CGContext];
  v486 = 0.0;
  v485 = 0.0;
  [NSCoreTypesetter _minMaxPositionsForLineFragmentWithParagraphStyle:v433 baseWidth:baseWritingDirection writingDirection:1 isBeginningOfParagraph:&v486 minPosition:&v485 maxPosition:rect_16];
  if (v485 <= v486)
  {
    v82 = rect_16;
  }

  else
  {
    v82 = v485 - v486;
  }

  interfaceCopy3 = interface;
  if (cf)
  {
    line = CFRetain(cf);
    TypographicBounds = CTLineGetTypographicBounds(line, 0, 0, 0);
    v374 = 0;
    TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(line);
    v498 = TypographicBounds - TrailingWhitespaceWidth;
    if ((v426 & 1) == 0 && lineBreakMode <= 1 && v82 > 0.0)
    {
      v374 = [(NSCoreTypesetter *)self _getFirstOverflowTabStopIndexInLineRef:cf range:0 string:v29 paragraphStyle:theString availableWidth:v433 offset:v82, v486]!= 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v374 = 0;
    line = 0;
    TrailingWhitespaceWidth = 0.0;
    v498 = 0.0;
  }

  if (context)
  {
    *buffer = 0;
    *&buffer[4] = buffer;
    *&v468 = 0x2020000000;
    BYTE8(v468) = 0;
    v85 = [(__CFString *)v49 length];
    v484[0] = MEMORY[0x1E69E9820];
    v484[1] = 3221225472;
    v484[2] = __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke;
    v484[3] = &unk_1E7266970;
    v484[4] = buffer;
    [(__CFString *)v49 enumerateAttribute:@"NSLink" inRange:0 options:v85 usingBlock:0x100000, v484];
    if (*(*&buffer[4] + 24) == 1)
    {
      linkTextAttributesProvider = [drawingContextCopy linkTextAttributesProvider];
      v87 = +[NSTextLayoutManager linkRenderingAttributesForLabels];
      v483[0] = MEMORY[0x1E69E9820];
      v483[1] = 3221225472;
      v372 = v483;
      v483[2] = __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_2;
      v483[3] = &unk_1E7267B20;
      v483[6] = linkTextAttributesProvider;
      v483[4] = v49;
      v483[5] = v87;
    }

    else
    {
      v372 = 0;
    }

    _Block_object_dispose(buffer, 8);
  }

  else
  {
    v372 = 0;
  }

  v382 = (options >> 10) & 1;
  v406 = width;
  if (v426)
  {
    v422 = v68;
    v88 = v486;
    v89 = rectCopy;
    v90 = rectCopy + v486;
    v91 = drawingContextCopy;
    if ((options & 8) != 0)
    {
LABEL_209:
      if (line)
      {
        if (v88 > 0.0)
        {
          CTLineGetStringRange(line);
          v113 = CTLineCreateFromLineWithOffset();
          if (v113)
          {
            CFRelease(line);
            line = v113;
          }
        }
      }

      if (v82 <= 0.0 || v82 >= 10000000.0)
      {
        LOBYTE(v114) = 0;
        v115 = v498;
      }

      else
      {
        v114 = __NSCoreTypesetterTruncateLine(self, &line, v433, lineBreakMode, 0, &v498, &TrailingWhitespaceWidth, v82);
        v115 = v498;
        v116 = 0.0;
        if (v498 <= v82)
        {
          if ([(NSParagraphStyle *)v433 isFullyJustified])
          {
            if (((v114 | ![(NSParagraphStyle *)v433 spansAllLines]) & 1) == 0)
            {
              JustifiedLine = CTLineCreateJustifiedLine(line, 1.0, v82);
              if (JustifiedLine)
              {
                CFRelease(line);
                line = JustifiedLine;
                v498 = v82;
                v115 = v82;
              }
            }
          }

          horizontalAlignment = [(NSParagraphStyle *)v433 horizontalAlignment];
          v119 = line;
          v120 = v396 || [(NSParagraphStyle *)v433 _alignmentFollowsWritingDirection];
          v116 = _flushFactorFromAlignment(horizontalAlignment, IsRightToLeft, v119, v120, v382);
        }

        v90 = v90 + CTLineGetPenOffsetForFlush(line, v116, v82);
      }

      v121 = v115 > v82 && v82 > 0.0;
      if (context)
      {
        v122 = [context isFlipped] ^ 1;
      }

      else
      {
        v122 = 0;
      }

      if (line && v491)
      {
        __NSCoreTypesetterAdjustLineHeightAndBaselineForTextAttachments(line, &v488, &v487);
      }

      v419 = v66;
      if (v426)
      {
        v123 = v90;
        paddingCopy4 = padding;
        v125 = v67;
        v126 = v67;
      }

      else
      {
        v524.origin.x = v89;
        v524.origin.y = v67;
        v524.size.width = rect_16;
        v524.size.height = v66;
        if (CGRectGetHeight(v524) > 0.0)
        {
          v127 = v488;
          v525.origin.x = v89;
          v525.origin.y = v67;
          v525.size.width = rect_16;
          v525.size.height = v66;
          if (v127 > CGRectGetHeight(v525))
          {
            v121 = 1;
          }
        }

        if (v122)
        {
          v526.origin.x = v89;
          v526.origin.y = v67;
          v526.size.width = rect_16;
          v526.size.height = v66;
          if (CGRectGetHeight(v526) <= 0.0)
          {
            paddingCopy4 = padding;
            v128 = v488;
          }

          else
          {
            v527.origin.x = v89;
            v527.origin.y = v67;
            v527.size.width = rect_16;
            v527.size.height = v66;
            v128 = CGRectGetHeight(v527);
            paddingCopy4 = padding;
          }

          v126 = v128 - v487;
        }

        else
        {
          paddingCopy4 = padding;
          v126 = v487;
        }

        v123 = v90;
        v125 = v67 + v126;
      }

      v129 = TrailingWhitespaceWidth;
      v130 = 0.0;
      if (TrailingWhitespaceWidth > 0.0 && IsRightToLeft == NSWritingDirectionRightToLeft)
      {
        if (TrailingWhitespaceWidth >= v123)
        {
          v129 = v123;
        }

        TrailingWhitespaceWidth = v129;
        v130 = v129;
      }

      v131 = v115 + v129;
      v498 = v131;
      if (laidOutLineFragment)
      {
        v132 = v131 <= v82 || v82 <= 0.0;
        v133 = v488;
        if (v132)
        {
          v134 = v131;
        }

        else
        {
          v134 = v82;
        }

        applicationFrameworkContext2 = [(NSTypesetter *)self applicationFrameworkContext];
        v136 = v487;
        v528.origin.x = rect;
        v528.origin.y = rect_8;
        v528.size.width = v406;
        v528.size.height = height;
        MaxX = CGRectGetMaxX(v528);
        v481[0] = MEMORY[0x1E69E9820];
        v481[1] = 3221225472;
        v481[2] = __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_3;
        v481[3] = &unk_1E7267B48;
        v482 = v114;
        v481[5] = line;
        v481[4] = self;
        __NSCoreTypesetterProcessTextLineFragment(v410, theString, v405, 0, Length, applicationFrameworkContext2, v481, v123 - (v123 - v130), v136, v123 - v130, v422, v134, v133, v385, MaxX);
      }

      else
      {
        if (v121)
        {
          if ((v426 & 1) != 0 || (v529.origin.x = rectCopy, v529.origin.y = v67, v529.size.width = rect_16, v529.size.height = v419, CGRectGetHeight(v529) <= 0.0))
          {
            *buffer = 0;
            v455 = 0.0;
            [NSCoreTypesetter _maximumAscentAndDescentForRuns:CTLineGetGlyphRuns(line) ascender:buffer descender:&v455];
            v138 = -*buffer;
            if (v122)
            {
              v138 = v455;
            }

            v67 = v67 + v138;
            v419 = *buffer - v455;
          }

          v139 = rectCopy - paddingCopy4;
          v140 = rect_16 + paddingCopy4 * 2.0;
        }

        else
        {
          v139 = *v56;
          v67 = v56[1];
          v140 = v56[2];
          v419 = v56[3];
        }

        v141 = line;
        applicationFrameworkContext3 = [(NSTypesetter *)self applicationFrameworkContext];
        v479[0] = MEMORY[0x1E69E9820];
        v479[1] = 3221225472;
        v479[2] = __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_4;
        v479[3] = &unk_1E7267B70;
        v480 = wantsMultilineDeviceMetrics;
        *&v479[6] = v126;
        *&v479[7] = v123;
        *&v479[8] = v125;
        v479[4] = &v502;
        v479[5] = &v506;
        __NSCoreTypesetterRenderLineAndAttachments(v141, context, applicationFrameworkContext3, v491, 0, v372, wantsMultilineDeviceMetrics, v479, v123, v125, v139, v67, v140, v419);
        if (((options & 8) == 0) | wantsMultilineDeviceMetrics & 1)
        {
          v513 = *MEMORY[0x1E696AA78];
          v143 = v498;
          v514.width = v498;
          v514.height = v422 + v488;
          v512 = v487;
          if (v426)
          {
            *(&v513 + 1) = v487 - (v422 + v488);
          }
        }

        else
        {
          *(&v143 - 2) = CTLineGetImageBounds(line, cGContext);
          *&v513 = v144;
          *(&v513 + 1) = v145;
          v514.width = v143;
          v514.height = v146;
          v512 = v145;
          if ((v426 & 1) == 0)
          {
            *(&v513 + 1) = 0;
          }
        }

        if (v82 > 0.0 && v143 > v82)
        {
          v514.width = v82;
        }

        [v91 setNumberOfLineFragments:1];
        [v91 setTotalBounds:{v513, v514}];
        if ([v91 wantsBaselineOffset])
        {
          [v91 setBaselineOffset:v512];
          [v91 setFirstBaselineOffset:v512];
        }
      }

      if (interface)
      {
        interface->var0 = 2;
      }

      goto LABEL_653;
    }

LABEL_202:
    isBeginningOfDocument = [(NSCoreTypesetter *)self isBeginningOfDocument];
    if (Length == v500 || v410 == 0)
    {
      v109 = v405;
    }

    else
    {
      v109 = 0;
    }

    LOBYTE(v364) = !isBeginningOfDocument;
    [NSCoreTypesetter _getLineMetricsForRange:"_getLineMetricsForRange:attributes:attributedString:applySpacing:usesSystemFontLeading:usesNegativeFontLeading:" attributes:0 attributedString:v29 applySpacing:v109 usesSystemFontLeading:v364 usesNegativeFontLeading:?];
    v422 = v110;
    v488 = v111;
    v487 = v112;
    v88 = v486;
    goto LABEL_209;
  }

  v92 = Length == v29 && v65;
  v91 = drawingContextCopy;
  if (v92 && (lineBreakMode > 1 || v82 <= 0.0 || !v374 && ![(NSCoreTypesetter *)self forcedLineBreaks]&& v498 <= v82))
  {
    v89 = rectCopy;
    v90 = rectCopy + v486;
    goto LABEL_202;
  }

  if (context && ![context isFlipped])
  {
    goto LABEL_653;
  }

  v478 = 0;
  v476 = 0u;
  v477 = 0u;
  v474 = 0u;
  v475 = 0u;
  v472 = 0u;
  v473 = 0u;
  v470 = 0u;
  v471 = 0u;
  v468 = 0u;
  v469 = 0u;
  *buffer = 0u;
  maximumNumberOfLines2 = [drawingContextCopy maximumNumberOfLines];
  enforcesMinimumTextLineFragment = [(NSCoreTypesetter *)self enforcesMinimumTextLineFragment];
  v380 = v49;
  v94 = [NSParagraphArbitrator paragraphArbitratorWithAttributedString:v49 range:0, v29];
  v455 = 0.0;
  v456 = &v455;
  v457 = 0x9810000000;
  v462 = 0u;
  v463 = 0u;
  v464 = 0u;
  v465 = 0u;
  v466 = 0u;
  v459 = 0u;
  v460 = 0u;
  v461 = 0;
  v95 = +[NSParagraphStyle defaultParagraphStyle];
  v97 = *MEMORY[0x1E696AA80];
  v96 = *(MEMORY[0x1E696AA80] + 8);
  v99 = *(MEMORY[0x1E696AA80] + 16);
  v98 = *(MEMORY[0x1E696AA80] + 24);
  v100 = *MEMORY[0x1E696AA78];
  v101 = *(MEMORY[0x1E696AA78] + 8);
  *&v463 = 0;
  v462 = v95;
  v368 = v99;
  rectCopy3 = v97;
  *(&v463 + 1) = v97;
  v370 = v98;
  v371 = v96;
  *&v464 = v96;
  *(&v464 + 1) = v99;
  *&v465 = v98;
  *(&v465 + 1) = v100;
  *&v466 = v101;
  WORD4(v466) = 0;
  v516 = v412;
  v517 = v411;
  if (maximumNumberOfLines2)
  {
    v102 = maximumNumberOfLines2;
  }

  else
  {
    v102 = -1;
  }

  v399 = v102;
  if (Length >= v29)
  {
    *&v475 = theString;
    *(&v476 + 1) = 0;
    *&v477 = Length;
    *(&v475 + 1) = CFStringGetCharactersPtr(theString);
    if (*(&v475 + 1))
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
    }

    v478 = 0;
    *&v476 = CStringPtr;
    *(&v477 + 1) = 0;
  }

  if (![(NSCoreTypesetter *)self isBeginningOfDocument])
  {
    LOBYTE(v364) = 1;
    [(NSCoreTypesetter *)self _getLineMetricsForRange:0 attributes:0 attributedString:v405 applySpacing:v410 usesSystemFontLeading:1 usesNegativeFontLeading:1, v364];
    v516.y = v147 + v516.y;
  }

  v431 = 0;
  *&v148 = 0.0;
  v149 = 0;
  v150 = 0;
  p_var3 = &interface->var3;
  if (!interface)
  {
    p_var3 = 0;
  }

  v391 = p_var3;
  v402 = *(MEMORY[0x1E695F058] + 8);
  v403 = *MEMORY[0x1E695F058];
  v400 = *(MEMORY[0x1E695F058] + 24);
  v401 = *(MEMORY[0x1E695F058] + 16);
  v378 = ((options & 8) == 0) | wantsMultilineDeviceMetrics;
  v367 = v443;
  v377 = INFINITY;
  v379 = 0.0;
  v375 = 0.0;
  v152 = 1;
  v397 = v94;
  do
  {
    v420 = v150;
    if ((v150 & 1) != 0 && [(NSDictionary *)[(NSCoreTypesetter *)self _extraLineFragmentAttributes] count])
    {
      _extraLineFragmentAttributes = [(NSCoreTypesetter *)self _extraLineFragmentAttributes];
      v433 = [(NSCoreTypesetter *)self _paragraphStyleFromAttributes:?];
      v405 = _extraLineFragmentAttributes;
    }

    else
    {
      if (v410)
      {
        v433 = -[NSCoreTypesetter _paragraphStyleFromAttributes:](self, "_paragraphStyleFromAttributes:", [v410 attributesAtIndex:v148 - ((v148 != 0) & v420) effectiveRange:0]);
      }

      _extraLineFragmentAttributes = 0;
    }

    v427 = v29;
    if (!v433 || v392 && ([v91 wrapsForTruncationMode] & 1) != 0)
    {
      lineBreakMode2 = 0;
    }

    else
    {
      lineBreakMode2 = [(NSParagraphStyle *)v433 lineBreakMode];
    }

    v153 = line;
    _fallbackWritingDirection2 = [(NSCoreTypesetter *)self _fallbackWritingDirection];
    if (!v433 || (v155 = [(NSParagraphStyle *)v433 baseWritingDirection], v156 = v155, v155 == -1))
    {
      if (v153)
      {
        v156 = CTLineIsRightToLeft();
      }

      else
      {
        v156 = _fallbackWritingDirection2;
      }

      if (v394)
      {
        baseWritingDirection2 = v156;
        goto LABEL_310;
      }

      if (v433)
      {
LABEL_308:
        baseWritingDirection2 = [(NSParagraphStyle *)v433 baseWritingDirection];
        if (baseWritingDirection2 != NSWritingDirectionNatural)
        {
          goto LABEL_310;
        }
      }

      baseWritingDirection2 = [NSParagraphStyle defaultWritingDirectionForLanguage:0];
      goto LABEL_310;
    }

    baseWritingDirection2 = v155;
    if ((v394 & 1) == 0)
    {
      goto LABEL_308;
    }

LABEL_310:
    v158 = 0.0;
    if ((v152 & (v148 != 0)) == 1)
    {
      [(NSParagraphStyle *)v433 paragraphSpacingBefore];
    }

    v159 = v158 + v516.y;
    v516.y = v159;
    if (!v94 || !line)
    {
      goto LABEL_334;
    }

    if (v433)
    {
      lineBreakStrategy = [(NSParagraphStyle *)v433 lineBreakStrategy];
    }

    else
    {
      lineBreakStrategy = +[NSTypesetter defaultLineBreakStrategy];
    }

    if (lineBreakStrategy == 0xFFFF)
    {
      lineBreakStrategy = __NSLineBreakStrategyStandardActualOptions([(NSParagraphStyle *)v433 isFullyJustified]);
    }

    if (lineBreakMode2)
    {
      v161 = lineBreakStrategy & 0xFFFFFFFFFFFFFFF3 | 4;
    }

    else
    {
      v161 = lineBreakStrategy;
    }

    if (v433)
    {
      [(NSParagraphStyle *)v433 hyphenationFactor];
      v163 = v162;
      if (v162 != 0.0)
      {
        goto LABEL_328;
      }
    }

    else
    {
      v163 = 0.0;
    }

    if (![(NSCoreTypesetter *)self usesDefaultHyphenation])
    {
LABEL_328:
      v166 = 0.0;
      if (v163 >= 0.0)
      {
        v166 = v163;
      }

      v165 = fmin(v166, 1.0);
      goto LABEL_331;
    }

    +[NSParagraphStyle _defaultHyphenationFactor];
    v165 = v164;
LABEL_331:
    [(NSParagraphArbitrator *)v94 setAttributedString:v380];
    [(NSParagraphArbitrator *)v94 setParagraphRange:v148, v427];
    [(NSParagraphArbitrator *)v94 setParagraphLine:line];
    [(NSParagraphArbitrator *)v94 setLineBreakStrategy:v161];
    [(NSParagraphArbitrator *)v94 setHyphenationFactor:v165];
    [(NSParagraphArbitrator *)v94 setTypesetterBehavior:typesetterBehavior];
    if (self->_validateLineBreakIndex)
    {
      v454[6] = MEMORY[0x1E69E9820];
      v454[7] = 3221225472;
      v454[8] = __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_5;
      v454[9] = &unk_1E7265B28;
      v454[10] = self;
    }

    [(NSParagraphArbitrator *)v94 setValidateLineBreakContext:?];
    v454[0] = MEMORY[0x1E69E9820];
    v454[1] = 3221225472;
    v454[2] = __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_6;
    v454[3] = &unk_1E7267B98;
    v454[5] = line;
    v454[4] = self;
    [(NSParagraphArbitrator *)v94 setLineWidth:v454];
    [(NSParagraphArbitrator *)v94 setPreviousLineRange:0x7FFFFFFFFFFFFFFFLL, 0];
    [(NSParagraphArbitrator *)v94 setTextContainerIsSimple:[(NSCoreTypesetter *)self isSimpleRectangularTextContainerForStartingCharacterAtIndex:v148]];
    [(NSParagraphArbitrator *)v94 setTextContainerWidth:rect_16];
    [(NSParagraphArbitrator *)v94 setDefaultParagraphStyle:[(NSTypesetter *)self defaultParagraphStyle]];
    [(NSParagraphArbitrator *)v94 setBreaksLinesForInteractiveText:[(NSCoreTypesetter *)self breaksLinesForInteractiveText]];
    [(NSParagraphArbitrator *)v94 setMaximumNumberOfLines:[(NSCoreTypesetter *)self maximumNumberOfLines]];
LABEL_334:
    v404 = v149;
    rect_24 = v156;
    if (v431 >= v399)
    {
      v167 = 0;
      location = v148;
      goto LABEL_339;
    }

    v29 = v427;
    if (!v427 && line)
    {
      v167 = 0;
      location = v148;
      goto LABEL_340;
    }

    v386 = baseWritingDirection2;
    v170 = v148;
    v425 = v427;
    while (1)
    {
      rect1.origin = v412;
      rect1.size = v411;
      v453 = *MEMORY[0x1E696AA78];
      v452 = 0;
      if (![(NSCoreTypesetter *)self isSimpleRectangularTextContainerForStartingCharacterAtIndex:v170])
      {
        v519 = *&v170;
        LOBYTE(v366) = v491 != 0;
        v367 = [(NSCoreTypesetter *)self _createLayoutLineFragmentStartingWithCharacterIndex:&v519 proposedLineFragmentRect:&v516 baseLineRef:&line range:v170 paragraphStyle:v425 paragraphArbitrator:v433 lineBreakMode:v94 hasAttachments:lineBreakMode2 lineFragmentRect:v366 glyphOrigin:&rect1 hyphenated:&v453 forcedClusterBreak:&v452, v391, v367];
        v174 = v367;
        v167 = v427;
        location = v148;
        if (line)
        {
          StringRange = CTLineGetStringRange(v367);
          location = StringRange.location;
          v167 = StringRange.length;
        }

        goto LABEL_395;
      }

      [NSCoreTypesetter _minMaxPositionsForLineFragmentWithParagraphStyle:v433 baseWidth:v386 writingDirection:v152 & 1 isBeginningOfParagraph:&v486 minPosition:&v485 maxPosition:rect_16];
      v171 = rect_16;
      if (v485 <= v486)
      {
        v172 = rect_16;
      }

      else
      {
        v172 = v485 - v486;
      }

      if (!line)
      {
        v174 = 0;
LABEL_358:
        v167 = v427;
        location = v148;
        goto LABEL_359;
      }

      if (v170 == v148)
      {
        if (lineBreakMode2 > 1 || v172 <= 0.0 || (v171 = v498, !v374 && v498 <= v172))
        {
          if (![(NSCoreTypesetter *)self forcedLineBreaks])
          {
            if (v427 == CTLineGetStringRange(line).length && v486 == 0.0)
            {
              v202 = CFRetain(line);
            }

            else
            {
              v202 = CTLineCreateFromLineWithOffset();
            }

            v174 = v202;
            goto LABEL_358;
          }
        }
      }

      v173 = [(NSCoreTypesetter *)self _createLineRefForParentLineRef:&line range:v170 availableWidth:v425 offset:v94 paragraphArbitrator:lineBreakMode2 lineBreakMode:&v452 hyphenated:v172 forcedClusterBreak:v391];
      v174 = v173;
      if (!v173)
      {
        v167 = 0;
LABEL_375:
        location = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_395;
      }

      v175 = CTLineGetStringRange(v173);
      location = v175.location;
      v167 = v175.length;
LABEL_359:
      if (location == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_375;
      }

      v178 = v405;
      if (theString != stringCopy2)
      {
        v178 = v405;
        if (Length != v500)
        {
          v178 = line ? 0 : _extraLineFragmentAttributes;
          if (!(line | _extraLineFragmentAttributes))
          {
            v178 = [v410 attributesAtIndex:v148 - ((v148 != 0) & v420) effectiveRange:0];
          }
        }
      }

      v179 = rangeOfParagraphSeparatorAtIndex(Length, buffer, location + v167);
      v181 = v179;
      v182 = v180;
      if (laidOutLineFragment)
      {
        isBeginningOfDocument2 = [(NSCoreTypesetter *)self isBeginningOfDocument];
        if (v181 + v182 == Length && isBeginningOfDocument2)
        {
LABEL_372:
          if (v182)
          {
            LOBYTE(v182) = self->_wantsExtraLineFragment;
          }

          goto LABEL_378;
        }
      }

      else if (v179 + v180 == Length)
      {
        goto LABEL_372;
      }

      LOBYTE(v182) = 1;
LABEL_378:
      v519 = 0.0;
      v520 = 0;
      v521 = 0.0;
      if (location)
      {
        LOBYTE(v185) = 1;
      }

      else
      {
        v185 = ![(NSCoreTypesetter *)self isBeginningOfDocument];
      }

      LOBYTE(v364) = v185;
      [(NSCoreTypesetter *)self _getLineMetricsForRange:location attributes:v167 attributedString:v178 applySpacing:v410 usesSystemFontLeading:v433 != 0 usesNegativeFontLeading:v182 & 1, v364];
      v519 = v186;
      v520 = v187;
      v521 = v188;
      if (v174 && v491)
      {
        __NSCoreTypesetterAdjustLineHeightAndBaselineForTextAttachments(v174, &v519, &v520);
      }

      v530.origin.x = rect;
      v530.origin.y = rect_8;
      v530.size.width = width;
      v530.size.height = height;
      if (CGRectGetHeight(v530) <= 0.0 || enforcesMinimumTextLineFragment)
      {
        v189 = v519;
      }

      else
      {
        forcedLineBreaks = [(NSCoreTypesetter *)self forcedLineBreaks];
        v189 = v519;
        if (!forcedLineBreaks)
        {
          y = v516.y;
          v531.origin.x = rect;
          v531.origin.y = rect_8;
          v531.size.width = width;
          v531.size.height = height;
          if (y + v189 > CGRectGetHeight(v531) + 0.001)
          {
            goto LABEL_395;
          }
        }
      }

      rect1.origin = v516;
      v192 = 0.0;
      if (v172 < 10000000.0 && v172 > 0.0)
      {
        v192 = v172;
      }

      rect1.size.width = v192;
      rect1.size.height = v189;
      *&v453 = v486;
      *(&v453 + 1) = v520;
      v516.x = 0.0;
      v516.y = v189 + rect1.origin.y + v521;
      v517 = 0;
LABEL_395:
      v538.origin.y = v402;
      v538.origin.x = v403;
      v538.size.height = v400;
      v538.size.width = v401;
      if (CGRectEqualToRect(rect1, v538))
      {
        break;
      }

      v194 = v456;
      if ((!laidOutLineFragment || !v431) && *(v456 + 145) != 1)
      {
        goto LABEL_458;
      }

      v195 = *(v456 + 32);
      if (v195)
      {
        v196 = CTLineGetTypographicBounds(v195, 0, 0, 0);
        v194 = v456;
        v197 = *(v456 + 32);
        v451 = v196;
        if (v197)
        {
          v198 = CTLineGetTrailingWhitespaceWidth(v197);
          v194 = v456;
          goto LABEL_404;
        }
      }

      else
      {
        v451 = 0.0;
      }

      v198 = 0.0;
LABEL_404:
      v450 = v198;
      if (*(v194 + 145) != 1)
      {
        v200 = 0;
        v451 = v451 - v198;
        goto LABEL_422;
      }

      if (*(v194 + 32) && *(v194 + 144) == 1)
      {
        if (v433)
        {
          if ([(NSParagraphStyle *)v433 isFullyJustified])
          {
            goto LABEL_409;
          }

LABEL_419:
          v199 = 0;
        }

        else
        {
          if (![-[NSTypesetter defaultParagraphStyle](self "defaultParagraphStyle")])
          {
            goto LABEL_419;
          }

LABEL_409:
          v199 = *(v456 + 48) + *(v456 + 40) < *(v456 + 64) + *(v456 + 56);
        }

        __NSCoreTypesetterHyphenateLine(v456 + 32, [(NSCoreTypesetter *)self softHyphen], v199, &v451, &v450);
        v198 = v450;
        v194 = v456;
        v203 = *(v456 + 145);
        v451 = v451 - v450;
        if ((v203 & 1) == 0)
        {
          goto LABEL_421;
        }

        goto LABEL_412;
      }

      v451 = v451 - v198;
LABEL_412:
      if (*(v194 + 32) && *(v194 + 112) > 0.0)
      {
        v200 = __NSCoreTypesetterTruncateLine(self, (v194 + 32), *(v194 + 72), *(v194 + 80), 0, &v451, &v450, *(v194 + 112));
        PenOffsetForFlush = CTLineGetPenOffsetForFlush(*(v456 + 32), *(v456 + 88), *(v456 + 112));
        v194 = v456;
        *(v456 + 128) = PenOffsetForFlush + *(v456 + 128);
        v198 = v450;
        goto LABEL_422;
      }

LABEL_421:
      v200 = 0;
LABEL_422:
      v204 = 0.0;
      if (v198 > 0.0 && rect_24 == NSWritingDirectionRightToLeft)
      {
        if (v198 >= *(v194 + 128))
        {
          v198 = *(v194 + 128);
        }

        v450 = v198;
        v204 = v198;
      }

      v451 = v198 + v451;
      if (v431 == 1 && [(NSCoreTypesetter *)self _shouldShowLineBadges])
      {
        debugString = [(NSParagraphArbitrator *)v397 debugString];
        if (debugString)
        {
          *&v206 = COERCE_DOUBLE([UIFont systemFontOfSize:9.0]);
          if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
          {
            v384 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", applicationFrameworkContext];
          }

          else
          {
            v384 = +[NSTextGraphicsContextProvider __defaultColorClass];
          }

          v230 = v384;
          blackColor = [(objc_class *)v384 blackColor];
          *&v232 = COERCE_DOUBLE([(objc_class *)v230 systemYellowColor]);
          *&v518[0] = @"NSFont";
          *&v518[1] = @"NSColor";
          v519 = *&v206;
          v520 = blackColor;
          *&v518[2] = @"NSBackgroundColor";
          v521 = *&v232;
          v233 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v519 forKeys:v518 count:3];
          debugString = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:debugString attributes:v233];
        }
      }

      else
      {
        debugString = 0;
      }

      v208 = v456;
      if (laidOutLineFragment)
      {
        v209 = *(v456 + 40);
        v210 = *(v456 + 120);
        v211 = *(v456 + 128);
        v212 = v211 - v204;
        v214 = *(v456 + 104);
        v213 = *(v456 + 112);
        if (v451 <= v213 || v213 <= 0.0)
        {
          v216 = v451;
        }

        else
        {
          v216 = *(v456 + 112);
        }

        v217 = *(v456 + 136);
        v532.origin.x = v212;
        v532.origin.y = *(v456 + 104);
        v532.size.width = v216;
        v532.size.height = *(v456 + 120);
        MinX = CGRectGetMinX(v532);
        v219 = *(v456 + 96);
        applicationFrameworkContext4 = [(NSTypesetter *)self applicationFrameworkContext];
        v533.origin.x = rect;
        v533.origin.y = rect_8;
        v533.size.width = v406;
        v533.size.height = height;
        v221 = CGRectGetMaxX(v533);
        v448[0] = MEMORY[0x1E69E9820];
        v448[1] = 3221225472;
        v448[2] = __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_7;
        v448[3] = &unk_1E7267BC0;
        v448[6] = &v455;
        v449 = v200;
        v448[4] = debugString;
        v448[5] = self;
        __NSCoreTypesetterProcessTextLineFragment(v410, theString, v405, v209, location - v209, applicationFrameworkContext4, v448, v211 - MinX, v217, v212 + v219, v214, v216, v210, v385, v221);
        v208 = v456;
        width = v406;
      }

      else
      {
        if (*(v456 + 145) == 1)
        {
          v222 = *(v456 + 32);
          if (v222)
          {
            v223 = *(v456 + 128);
            v224 = *(v456 + 136);
            v225 = *(v456 + 112);
            if (v225 <= 0.0 || v451 <= v225)
            {
              v229 = v368;
              rectCopy2 = rectCopy3;
              v227 = v370;
              v226 = v371;
            }

            else
            {
              v519 = 0.0;
              v518[0] = 0.0;
              [NSCoreTypesetter _maximumAscentAndDescentForRuns:CTLineGetGlyphRuns(v222) ascender:&v519 descender:v518];
              v226 = rect_8 - v519;
              v227 = height + v519 - v518[0];
              v208 = v456;
              v222 = *(v456 + 32);
              rectCopy2 = rect;
              v229 = v406;
            }

            v234 = *(v208 + 96);
            v235 = *(v208 + 104);
            applicationFrameworkContext5 = [(NSTypesetter *)self applicationFrameworkContext];
            v444[0] = MEMORY[0x1E69E9820];
            v444[1] = 3221225472;
            v444[2] = __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_8;
            v444[3] = &unk_1E7267BE8;
            v447 = wantsMultilineDeviceMetrics;
            *&v444[8] = rect_8 + v235;
            v445 = v223 + rect + v234;
            v446 = v224 + rect_8 + v235;
            v444[4] = &v502;
            v444[5] = &v506;
            v444[6] = &v493;
            v444[7] = &v455;
            __NSCoreTypesetterRenderLineAndAttachments(v222, context, applicationFrameworkContext5, v491, debugString, v372, wantsMultilineDeviceMetrics, v444, v445, v446, rectCopy2, v226, v229, v227);
            v208 = v456;
            width = v406;
          }
        }

        if (v378)
        {
          v237 = *(v208 + 128);
          v238 = v377;
          if (v377 > v237)
          {
            v238 = *(v208 + 128);
          }

          v377 = v238;
          v239 = v237 + v451;
          if (v375 < v239)
          {
            v375 = v239;
          }
        }
      }

      v240 = *(v208 + 32);
      if (v240)
      {
        CFRelease(v240);
      }

      *(v208 + 32) = 0;
      *(v208 + 145) = 0;
      v94 = v397;
LABEL_458:
      v241 = v452;
      origin = rect1.origin;
      size = rect1.size;
      v244 = v433;
      v245 = v453;
      if (!v433)
      {
        v389 = v453;
        v390 = rect1.size;
        v408 = rect1.origin;
        v244 = +[NSParagraphStyle defaultParagraphStyle];
        origin = v408;
        v245 = v389;
        size = v390;
      }

      v246 = v456;
      *(v456 + 32) = v174;
      *(v246 + 40) = location;
      *(v246 + 48) = v167;
      *(v246 + 56) = *&v148;
      *(v246 + 64) = v427;
      *(v246 + 72) = v244;
      *(v246 + 80) = lineBreakMode2;
      *(v246 + 88) = 0;
      *(v246 + 96) = origin;
      *(v246 + 112) = size;
      *(v246 + 128) = v245;
      *(v246 + 144) = v241;
      *(v246 + 145) = 1;
      if (v174)
      {
        v247 = CTLineGetTypographicBounds(v174, 0, 0, 0);
        v248 = v247 - CTLineGetTrailingWhitespaceWidth(*(v456 + 32));
      }

      else
      {
        v248 = 0.0;
      }

      v159 = rect1.size.width;
      if (rect1.size.width > 0.0)
      {
        spansAllLines = [(NSParagraphStyle *)v433 spansAllLines];
        if (v433)
        {
          if (![(NSParagraphStyle *)v433 isFullyJustified])
          {
            goto LABEL_475;
          }

LABEL_468:
          v250 = *(v456 + 40);
          v251 = *(v456 + 48);
          v252 = *(v456 + 56);
          v253 = *(v456 + 64);
          v254 = rect1.size.width;
          mayCompressLines = [(NSParagraphArbitrator *)v94 mayCompressLines];
          if (v248 <= v254)
          {
            mayCompressLines = v251 + v250 != v253 + v252 || spansAllLines;
          }

          if (*(v456 + 145) == 1 && ((*(v456 + 32) != 0) & mayCompressLines) == 1)
          {
            v256 = CTLineCreateJustifiedLine(*(v456 + 32), 1.0, rect1.size.width);
            if (v256)
            {
              CFRelease(*(v456 + 32));
              *(v456 + 32) = v256;
            }
          }

          if (v433)
          {
LABEL_475:
            _alignmentFollowsWritingDirection = [(NSParagraphStyle *)v433 _alignmentFollowsWritingDirection];
            horizontalAlignment2 = [(NSParagraphStyle *)v433 horizontalAlignment];
LABEL_477:
            v159 = _flushFactorFromAlignment(horizontalAlignment2, rect_24, line, (v396 | _alignmentFollowsWritingDirection) & 1, v382);
            *(v456 + 88) = v159;
            goto LABEL_478;
          }
        }

        else if ([-[NSTypesetter defaultParagraphStyle](self "defaultParagraphStyle")])
        {
          goto LABEL_468;
        }

        _alignmentFollowsWritingDirection = [-[NSTypesetter defaultParagraphStyle](self "defaultParagraphStyle")];
        horizontalAlignment2 = [-[NSTypesetter defaultParagraphStyle](self "defaultParagraphStyle")];
        goto LABEL_477;
      }

LABEL_478:
      if (!v431)
      {
        v159 = *(v456 + 104) + *(v456 + 136);
        v379 = v159;
      }

      v259 = v431 + 1;
      if (!line)
      {
        enforcesMinimumTextLineFragment = 0;
        v152 = 0;
        goto LABEL_569;
      }

      if (v399 - 1 == v431)
      {
        v152 = 0;
        enforcesMinimumTextLineFragment = 0;
        v29 = v427;
        v148 += v427;
        v431 = v399;
        goto LABEL_496;
      }

      v152 = 0;
      v260 = location + v167;
      v261 = v425 + v170;
      if (location + v167 >= v425 + v170)
      {
        v170 += v425;
      }

      else
      {
        v170 = location + v167;
      }

      enforcesMinimumTextLineFragment = 0;
      ++v431;
      v264 = v261 >= v260;
      v263 = v261 - v260;
      v262 = v263 != 0 && v264;
      if (!v264)
      {
        v263 = 0;
      }

      v425 = v263;
      if (!v262)
      {
        v152 = 0;
LABEL_569:
        v431 = v259;
        goto LABEL_339;
      }
    }

    if (v174)
    {
      CFRelease(v174);
    }

    v404 |= v420 ^ 1;
LABEL_339:
    v29 = v427;
LABEL_340:
    v148 += v29;
    if (v431 >= v399)
    {
LABEL_496:
      v169 = 0;
      v264 = location + v167 >= v148 && v148 >= Length;
      v265 = !v264;
      v149 = v265 | v404;
    }

    else
    {
      v169 = 1;
      v149 = v404;
    }

    v91 = drawingContextCopy;
    if ((v149 & 1) != 0 || v148 >= Length)
    {
      if (self->_wantsExtraLineFragment && (v420 & 1) != 0 && laidOutLineFragment)
      {
        v294 = *(v456 + 40);
        v295 = *(v456 + 104);
        v296 = *(v456 + 112);
        v298 = *(v456 + 88);
        v297 = *(v456 + 96);
        v299 = *(v456 + 120);
        v300 = *(v456 + 128);
        applicationFrameworkContext6 = [(NSTypesetter *)self applicationFrameworkContext];
        v302 = *(v456 + 136);
        v534.origin.x = rect;
        v534.origin.y = rect_8;
        v534.size.width = v406;
        v534.size.height = height;
        v303 = CGRectGetMaxX(v534);
        v442[0] = MEMORY[0x1E69E9820];
        v442[1] = 3221225472;
        v443[0] = __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_9;
        v443[1] = &unk_1E7267AA8;
        v443[2] = self;
        __NSCoreTypesetterProcessTextLineFragment(v410, theString, v405, v294, Length - v294, applicationFrameworkContext6, v442, v297 + v296 * v298 + v300 - (v297 + v296 * v298 + v300), v302, v297 + v296 * v298 + v300, v295, 0.0, v299, v385, v303);
        v421 = 0;
        width = v406;
        v29 = v427;
      }

      else
      {
        v421 = 0;
      }

      goto LABEL_566;
    }

    v266 = rangeOfParagraphSeparatorAtIndex(Length, buffer, v148);
    v268 = v267;
    v148 = v266 + v267;
    v269 = v266 + v267 == Length;
    v270 = v169 ^ 1;
    if (!line)
    {
      v270 = 1;
    }

    if ((v270 & 1) == 0)
    {
      CFRelease(line);
      line = 0;
    }

    if (v148 >= Length)
    {
      v29 = 0;
      goto LABEL_547;
    }

    v428 = v269;
    v271 = v149;
    v272 = 0;
    v273 = 2 * v266;
    v274 = v266 + v268;
    v275 = -v148;
    v276 = v274 + 64;
    v277 = v273 + 2 * v268;
    v278 = v148;
    while (2)
    {
      if (v278 >= 4)
      {
        v279 = 4;
      }

      else
      {
        v279 = v278;
      }

      v280 = v272;
      v281 = v148 + v272;
      v282 = v477;
      if (v477 <= (v148 + v272))
      {
        goto LABEL_529;
      }

      if (*(&v475 + 1))
      {
        v283 = (*(&v475 + 1) + 2 * *(&v476 + 1) + v277);
        goto LABEL_517;
      }

      if (v476)
      {
        v284 = *(v476 + *(&v476 + 1) + v148 + v272);
      }

      else
      {
        v287 = *(&v477 + 1);
        if (v478 <= v281 || *(&v477 + 1) > v281)
        {
          v289 = v274 - v279;
          v290 = v279 + v275;
          v291 = v276 - v279;
          v292 = v272 + v289;
          v293 = v292 + 64;
          if (v292 + 64 >= v477)
          {
            v293 = v477;
          }

          *(&v477 + 1) = v292;
          v478 = v293;
          if (v477 >= v291)
          {
            v282 = v291;
          }

          v523.location = v292 + *(&v476 + 1);
          v523.length = v282 + v290;
          CFStringGetCharacters(v475, v523, buffer);
          v287 = *(&v477 + 1);
        }

        v283 = &buffer[v148 - v287];
LABEL_517:
        v284 = v283[v280];
      }

      v285 = v284 > 0xDu || ((1 << v284) & 0x3400) == 0;
      v286 = v285 && v284 - 8232 >= 2;
      if (v286 && v284 != 133)
      {
LABEL_529:
        v272 = v280 + 1;
        ++v278;
        --v275;
        ++v276;
        if (v148 + v280 + 1 >= Length)
        {
          goto LABEL_552;
        }

        continue;
      }

      break;
    }

    v272 = v280;
LABEL_552:
    if (v272)
    {
      v306 = v272;
      [(NSCoreTypesetter *)self _updateBidiLevelsAndBaseWritingDirectionForAttributedString:v380 paragraphRange:v148];
      v91 = drawingContextCopy;
      v149 = v271;
      v269 = v428;
      layoutOrientation2 = [(NSCoreTypesetter *)self layoutOrientation];
      limitsLayoutForSuspiciousContents2 = [(NSCoreTypesetter *)self limitsLayoutForSuspiciousContents];
      line = __NSCoreTypesetterCreateBaseLineFromAttributedString(v380, v148, v306, layoutOrientation2, limitsLayoutForSuspiciousContents2, v491, self->_bidiLevels, self->_resolvedBaseWritingDirection);
      v309 = CTLineGetTypographicBounds(line, 0, 0, 0);
      TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(line);
      v498 = v309 - TrailingWhitespaceWidth;
      if (width <= 0.0)
      {
        v29 = v306;
        if (*&v148 == 0.0)
        {
          goto LABEL_561;
        }
      }

      else
      {
        v310 = v433;
        v29 = v306;
        if (v410)
        {
          v310 = -[NSCoreTypesetter _paragraphStyleFromAttributes:](self, "_paragraphStyleFromAttributes:", [v410 attributesAtIndex:v148 effectiveRange:0]);
        }

        v374 = [(NSCoreTypesetter *)self _getFirstOverflowTabStopIndexInLineRef:line range:v148 string:v306 paragraphStyle:theString availableWidth:v310 offset:width, 0.0]!= 0x7FFFFFFFFFFFFFFFLL;
        if (*&v148 == 0.0)
        {
LABEL_561:
          if (v433)
          {
            [(NSParagraphStyle *)v433 paragraphSpacing];
          }

          else
          {
            v305 = 0.0;
          }

          v152 = 1;
          goto LABEL_565;
        }
      }
    }

    else
    {
      v29 = 0;
      v91 = drawingContextCopy;
      v149 = v271;
      v269 = v428;
      if (*&v148 == 0.0)
      {
        goto LABEL_561;
      }
    }

LABEL_547:
    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v148 - 1);
    if (CharacterAtIndex == 10 || CharacterAtIndex == 8233 || CharacterAtIndex == 13)
    {
      goto LABEL_561;
    }

    v152 = 0;
    v305 = 0.0;
LABEL_565:
    v421 = v269 | v420;
    v159 = v305 + v516.y;
    v516.y = v159;
LABEL_566:
    v150 = v421;
  }

  while ((v149 & 1) == 0 && (v148 < Length) | v421 & 1);
  v311 = v456;
  interfaceCopy3 = interface;
  if (*(v456 + 145) != 1)
  {
    goto LABEL_645;
  }

  if (!*(v456 + 32))
  {
    if (v378)
    {
      v159 = v375 - v377;
      v314 = *(v456 + 104) + *(v456 + 120);
      v514.width = v375 - v377;
      v514.height = v314;
    }

    goto LABEL_645;
  }

  rect1.origin.x = 0.0;
  v519 = 0.0;
  if (!v392)
  {
LABEL_576:
    lineBreakMode3 = *(v311 + 80);
    v313 = 1;
    goto LABEL_594;
  }

  if (![(NSCoreTypesetter *)self wantsExtraLineFragment])
  {
    if (v149 & 1 | (*(v456 + 120) + *(v456 + 104) + *(v456 + 120) > height))
    {
      goto LABEL_580;
    }

LABEL_575:
    LOBYTE(v149) = 0;
    v311 = v456;
    goto LABEL_576;
  }

  if ((v149 & 1) == 0)
  {
    goto LABEL_575;
  }

LABEL_580:
  if ([v91 wrapsForTruncationMode])
  {
    lineBreakMode3 = [*(v456 + 72) lineBreakMode];
  }

  else if (v381 >= 3)
  {
    lineBreakMode3 = 4;
  }

  else
  {
    lineBreakMode3 = containerBreakMode;
  }

  v311 = v456;
  if (line && (v315 = *(v456 + 40), v316 = *(v456 + 56), *(v456 + 48) + v315 < (*(v456 + 64) + v316)) && (v315 != v316 ? (v317 = CTLineCreateFromLineWithOffset()) : (v317 = CFRetain(line)), v318 = v317, v311 = v456, v317))
  {
    CFRelease(*(v456 + 32));
    v313 = 0;
    v311 = v456;
    *(v456 + 32) = v318;
    *(v311 + 144) = 0;
  }

  else
  {
    v313 = 0;
  }

  LOBYTE(v149) = 1;
LABEL_594:
  rect1.origin.x = CTLineGetTypographicBounds(*(v311 + 32), 0, 0, 0);
  v319 = CTLineGetTrailingWhitespaceWidth(*(v456 + 32));
  v519 = v319;
  v320 = v456;
  if (*(v456 + 145) == 1 && *(v456 + 32) && *(v456 + 144) == 1)
  {
    __NSCoreTypesetterHyphenateLine(v456 + 32, [(NSCoreTypesetter *)self softHyphen], 0, &rect1.origin.x, &v519);
    v319 = v519;
    v320 = v456;
  }

  v321 = rect1.origin.x - v319;
  rect1.origin.x = v321;
  v322 = *(v320 + 112);
  if (v322 <= 0.0 || v322 >= v321)
  {
    v324 = 0.0;
    if ((lineBreakMode3 - 3) >= 3)
    {
      v325 = 0.0;
    }

    else
    {
      v325 = *(v320 + 112);
    }

    if (v313)
    {
      v323 = 0;
    }

    else
    {
      v324 = v325;
      v323 = (lineBreakMode3 - 3) < 3;
    }
  }

  else
  {
    v323 = 0;
    v324 = 0.0;
    if ((lineBreakMode3 - 3) < 3)
    {
      v324 = *(v320 + 112);
    }
  }

  v326 = __NSCoreTypesetterTruncateLine(self, (v320 + 32), *(v320 + 72), lineBreakMode3, v323, &rect1.origin.x, &v519, v324);
  if (v322 > 0.0 && v322 < 10000000.0)
  {
    v327 = CTLineGetPenOffsetForFlush(*(v456 + 32), *(v456 + 88), v322);
    *(v456 + 128) = v327 + *(v456 + 128);
  }

  v328 = v456;
  if (laidOutLineFragment)
  {
    v329 = *(v456 + 32);
    v330 = v149;
    if (v329)
    {
      v331 = CTLineGetStringRange(v329).length;
      v328 = v456;
      v332 = *(v456 + 40);
    }

    else
    {
      v332 = *(v456 + 40);
      v331 = Length - v332;
    }

    if (v332 + v331 == *(v328 + 64) + *(v328 + 56))
    {
      *&v518[0] = v332 + v331;
      string = [v410 string];
      [string getParagraphStart:0 end:v518 contentsEnd:0 forRange:{*&v518[0] - 1, 1}];
      if (*&v518[0] > (v332 + v331))
      {
        v331 = *&v518[0] - v332;
      }

      v328 = v456;
    }

    v345 = v519;
    v346 = *(v328 + 128);
    if (v519 > 0.0 && rect_24 == NSWritingDirectionRightToLeft)
    {
      if (v519 >= v346)
      {
        v345 = *(v328 + 128);
      }

      v519 = v345;
      v347 = v345;
    }

    else
    {
      v347 = 0.0;
    }

    v348 = v345 + rect1.origin.x;
    if (v348 <= v322 || v322 <= 0.0)
    {
      v350 = v348;
    }

    else
    {
      v350 = v322;
    }

    rect1.origin.x = v348;
    v351 = v346 - v347;
    v352 = *(v328 + 104);
    v353 = *(v328 + 120);
    if (v348 > v322)
    {
      rect1.origin.x = v322;
    }

    v354 = *(v328 + 136);
    v535.origin.x = v346 - v347;
    v535.origin.y = v352;
    v535.size.width = v350;
    v535.size.height = v353;
    v355 = CGRectGetMinX(v535);
    v356 = *(v456 + 96);
    applicationFrameworkContext7 = [(NSTypesetter *)self applicationFrameworkContext];
    v536.origin.x = rect;
    v536.origin.y = rect_8;
    v536.size.width = v406;
    v536.size.height = height;
    v358 = CGRectGetMaxX(v536);
    v439[0] = MEMORY[0x1E69E9820];
    v439[1] = 3221225472;
    v439[2] = __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_10;
    v439[3] = &unk_1E7267C10;
    v440 = v326;
    v441 = v330 & 1;
    v439[5] = &v455;
    v439[4] = self;
    __NSCoreTypesetterProcessTextLineFragment(v410, theString, v405, v332, v331, applicationFrameworkContext7, v439, v346 - v355, v354, v351 + v356, v352, v350, v353, v385, v358);
    v339 = v456;
    width = v406;
  }

  else
  {
    v333 = *(v456 + 128);
    v334 = *(v456 + 136);
    if (v322 > 0.0 && rect1.origin.x > *(v456 + 112))
    {
      v518[0] = 0.0;
      *&v453 = 0;
      [NSCoreTypesetter _maximumAscentAndDescentForRuns:CTLineGetGlyphRuns(*(v456 + 32)) ascender:v518 descender:&v453];
      v370 = height + v518[0] - *&v453;
      v371 = rect_8 - v518[0];
      v328 = v456;
      v368 = width;
      rectCopy3 = rect;
    }

    v335 = *(v328 + 96);
    v336 = *(v328 + 104);
    v337 = *(v328 + 32);
    applicationFrameworkContext8 = [(NSTypesetter *)self applicationFrameworkContext];
    v435[0] = MEMORY[0x1E69E9820];
    v435[1] = 3221225472;
    v435[2] = __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_11;
    v435[3] = &unk_1E7267B70;
    v438 = wantsMultilineDeviceMetrics;
    *&v435[6] = rect_8 + v336;
    v436 = v333 + rect + v335;
    v437 = v334 + rect_8 + v336;
    v435[4] = &v502;
    v435[5] = &v506;
    __NSCoreTypesetterRenderLineAndAttachments(v337, context, applicationFrameworkContext8, v491, 0, v372, wantsMultilineDeviceMetrics, v435, v436, v437, rectCopy3, v371, v368, v370);
    v339 = v456;
    if (v378)
    {
      v340 = *(v456 + 128);
      v341 = v377;
      if (v377 > v340)
      {
        v341 = *(v456 + 128);
      }

      v342 = v340 + rect1.origin.x;
      if (v375 >= v342)
      {
        v342 = v375;
      }

      v343 = *(v456 + 104) + *(v456 + 120);
      v514.width = v342 - v341;
      v514.height = v343;
    }
  }

  CFRelease(*(v339 + 32));
LABEL_645:
  if (width > 0.0)
  {
    v159 = v514.width;
    if (v514.width > width)
    {
      v514.width = width;
    }
  }

  if ([v91 wantsBaselineOffset])
  {
    [v91 setBaselineOffset:*(v456 + 104) + *(v456 + 136)];
    [v91 setFirstBaselineOffset:v379];
  }

  [v91 setNumberOfLineFragments:v431];
  [v91 setTotalBounds:{v513, v514}];
  [(NSParagraphArbitrator *)v94 reset];
  if (interface)
  {
    interface->var0 = 3;
  }

  _Block_object_dispose(&v455, 8);
LABEL_653:
  if (line)
  {
    CFRelease(line);
  }

  [(_NSCoreTypesetterLayoutCache *)v376 setCTLine:v491 attachmentLayoutContext:v490 validForDrawing:?];
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_657:
  if (interfaceCopy3)
  {
    interfaceCopy3->var1 = v494[3];
  }

  [(_NSTextAttachmentLayoutContext *)v491 setTextContainer:0];

  _Block_object_dispose(&v493, 8);
LABEL_660:
  if (wantsMultilineDeviceMetrics)
  {
    v359 = v507[4];
    v507[5] = v503[3] + v507[5];
    [drawingContextCopy setMultilineDeviceMetricsRect:v359];
  }

LABEL_662:
  _Block_object_dispose(&v502, 8);
  _Block_object_dispose(&v506, 8);
  v361 = *(&v513 + 1);
  v360 = *&v513;
  v363 = v514.height;
  v362 = v514.width;
  result.size.height = v363;
  result.size.width = v362;
  result.origin.y = v361;
  result.origin.x = v360;
  return result;
}

uint64_t __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_2(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  if ([*(a1 + 32) length] <= a2)
  {
    result = 0;
    if (a3)
    {
      *a3 = a2;
      a3[1] = 0;
    }
  }

  else
  {
    v11 = 0uLL;
    if (a3)
    {
      v6 = &v11;
    }

    else
    {
      v6 = 0;
    }

    v7 = [*(a1 + 32) attributesAtIndex:a2 effectiveRange:{v6, v11}];
    v8 = v7;
    if (a3)
    {
      *a3 = v11;
    }

    result = [v7 objectForKeyedSubscript:@"NSLink"];
    if (result)
    {
      v10 = *(a1 + 48);
      if (v10)
      {
        return (*(v10 + 16))(v10, v8, a2);
      }

      else
      {
        return *(a1 + 40);
      }
    }
  }

  return result;
}

uint64_t __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_3(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    [a2 setLineRef:?];
  }

  [a2 setIsTruncated:*(a1 + 48)];
  v4 = *(*(*(a1 + 32) + 88) + 16);

  return v4();
}

void __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (*(a1 + 72) == 1)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(a1 + 48);
    if (*(v5 + 24) == 1.79769313e308)
    {
      *(v5 + 24) = v6;
    }

    v7 = a3 - v6;
    v8 = a2 + *(a1 + 56);
    *(*(*(a1 + 40) + 8) + 32) = CGRectUnion(*(&a4 - 2), *(*(*(a1 + 40) + 8) + 32));
  }
}

void __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  v26 = 0;
  if ((a4 & 1) != 0 && (v8 = CTLineCreateFromLineWithOffset()) != 0)
  {
    v9 = v8;
    v25 = 0;
    v10 = *MEMORY[0x1E696AA78];
    v11 = *(MEMORY[0x1E696AA78] + 8);
    v16 = 0u;
    v17 = 0u;
    v12 = +[NSParagraphStyle defaultParagraphStyle];
    v19 = 0;
    v20 = 0;
    v13 = *(MEMORY[0x1E696AA80] + 16);
    v21 = *MEMORY[0x1E696AA80];
    v22 = v13;
    v23 = v10;
    v24 = v11;
    v18 = v12;
    cf = v9;
    __NSCoreTypesetterHyphenateLine(&cf, [*(a1 + 32) softHyphen], 0, &v26, 0);
    CFRelease(cf);
  }

  else
  {
    v14 = *(a1 + 40);
    a5.n128_u64[0] = 0;

    MEMORY[0x1EEDBF358](v14, a2, a3, a5);
  }
}

uint64_t __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_7(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 48) + 8);
  if (*(v4 + 145) == 1 && *(v4 + 32))
  {
    [a2 setLineRef:?];
  }

  if (*(a1 + 32))
  {
    [a2 setLineBadge:?];
  }

  [a2 setIsHyphenated:*(*(*(a1 + 48) + 8) + 144)];
  [a2 setIsTruncated:*(a1 + 56)];
  v5 = *(*(*(a1 + 40) + 88) + 16);

  return v5();
}

void __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (*(a1 + 88) == 1)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(a1 + 64);
    if (*(v6 + 24) == 1.79769313e308)
    {
      *(v6 + 24) = v7;
    }

    v8 = a3 - v7;
    v9 = a2 + *(a1 + 72);
    *(*(*(a1 + 40) + 8) + 32) = CGRectUnion(*(&a4 - 2), *(*(*(a1 + 40) + 8) + 32));
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 56) + 8) + 48) + *(*(*(a1 + 56) + 8) + 40);
}

uint64_t __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_9(uint64_t a1, void *a2)
{
  [a2 setIsExtra:1];
  v3 = *(*(*(a1 + 32) + 88) + 16);

  return v3();
}

uint64_t __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_10(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 145) == 1 && *(v4 + 32))
  {
    [a2 setLineRef:?];
    v4 = *(*(a1 + 40) + 8);
  }

  [a2 setIsHyphenated:*(v4 + 144)];
  [a2 setIsTruncated:*(a1 + 48)];
  v5 = *([*(a1 + 32) laidOutLineFragment] + 16);

  return v5();
}

void __180__NSCoreTypesetter__stringDrawingCoreTextEngineWithOriginalString_rect_padding_graphicsContext_forceClipping_attributes_stringDrawingOptions_drawingContext_stringDrawingInterface___block_invoke_11(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (*(a1 + 72) == 1)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(a1 + 48);
    if (*(v5 + 24) == 1.79769313e308)
    {
      *(v5 + 24) = v6;
    }

    v7 = a3 - v6;
    v8 = a2 + *(a1 + 56);
    *(*(*(a1 + 40) + 8) + 32) = CGRectUnion(*(&a4 - 2), *(*(*(a1 + 40) + 8) + 32));
  }
}

- (int)_NSFastDrawString:(id)string length:(unint64_t)length attributes:(id)attributes paragraphStyle:(id)style typesetterBehavior:(int64_t)behavior lineBreakMode:(int64_t)mode rect:(CGRect)rect padding:(double)self0 graphicsContext:(id)self1 baselineRendering:(BOOL)self2 usesFontLeading:(BOOL)self3 usesScreenFont:(BOOL)self4 scrollable:(BOOL)self5 syncAlignment:(BOOL)self6 mirrored:(BOOL)self7 boundingRectPointer:(CGRect *)self8 baselineOffsetPointer:(double *)self9 drawingContext:(id)drawingContext
{
  v20 = MEMORY[0x1EEE9AC00](self, a2, string, length, attributes, style, behavior, mode);
  v270 = v22;
  theString = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v20;
  v39 = v38;
  v41 = v40;
  v328[128] = *MEMORY[0x1E69E9840];
  laidOutLineFragment = [v40 laidOutLineFragment];
  v43 = [v26 count];
  applicationFrameworkContext = [v41 applicationFrameworkContext];
  v44 = [v26 objectForKey:@"NSColor"];
  v45 = [v26 objectForKey:@"NSShadow"];
  v46 = v45;
  v269 = v44;
  v47 = 1;
  if (v44)
  {
    v47 = 2;
  }

  if (v45)
  {
    v48 = v47;
  }

  else
  {
    v48 = v44 != 0;
  }

  if ([v45 shadowColor])
  {
    v49 = v46;
  }

  else
  {
    v49 = 0;
  }

  v274 = v49;
  drawingContextCopy = drawingContext;
  layout = [drawingContext layout];
  v325 = 0;
  v324 = 0;
  v323 = 0;
  v322 = 0.0;
  v321 = 0;
  v320 = 0;
  if ([(_NSCoreTypesetterLayoutCache *)layout getCount:&v324 glyphs:&v323 advances:&v322 elasticAdvances:&v321 resolvedFont:&v320 textAlignment:?])
  {
    v51 = laidOutLineFragment;
    if (laidOutLineFragment)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    v52 = v274;
    if (!v324 || !v323 || !v321)
    {
      __assert_rtn("[NSCoreTypesetter _NSFastDrawString:length:attributes:paragraphStyle:typesetterBehavior:lineBreakMode:rect:padding:graphicsContext:baselineRendering:usesFontLeading:usesScreenFont:scrollable:syncAlignment:mirrored:boundingRectPointer:baselineOffsetPointer:drawingContext:]", "NSCoreTypesetter.m", 1410, "glyphs != NULL && advances != NULL && resolvedFont != NULL");
    }

    v53 = 0;
    goto LABEL_16;
  }

  v266 = laidOutLineFragment;
  if (![v26 objectForKey:*MEMORY[0x1E69655D0]])
  {
    v67 = [v26 objectForKey:@"NSFont"];
    if (v67)
    {
      v68 = v67;
      ++v48;
    }

    else
    {
      v68 = NSDefaultFont();
    }

    [v68 pointSize];
    if (v86 >= 8.0)
    {
      v87 = [v26 objectForKey:@"NSOriginalFont"];
      if (v87)
      {
        if (v68 != v87)
        {
          return 0;
        }

        ++v48;
      }

      v265 = v28;
      if (applicationFrameworkContext == 2 && font)
      {
        v88 = v24;
        v68 = [v68 screenFontWithRenderingMode:0];
      }

      else
      {
        v88 = v24;
      }

      v96 = [v26 objectForKey:@"NSKern"];
      if (!v96 || (v97 = v96, v96 == [MEMORY[0x1E695DFB0] null]))
      {
        v99 = 0;
      }

      else
      {
        [v97 floatValue];
        v99 = v98 == 0.0;
        if (v98 == 0.0)
        {
          ++v48;
        }
      }

      v100 = [v26 objectForKey:@"NSLigature"];
      if (v100)
      {
        intValue = [v100 intValue];
        HIDWORD(v261) = intValue != 0;
        if (!intValue)
        {
          ++v48;
        }
      }

      else
      {
        HIDWORD(v261) = 1;
      }

      v319 = 0;
      v102 = v88;
      v263 = v88;
      if (!v88)
      {
        v102 = +[NSParagraphStyle defaultParagraphStyle];
      }

      if ([(NSParagraphStyle *)v102 _isSuitableForFastStringDrawingWithAlignment:&v319 mirrorsTextAlignment:mirrored lineBreakMode:0 tighteningFactorForTruncation:0])
      {
        if ([v26 objectForKey:@"NSParagraphStyle"])
        {
          ++v48;
        }

        if (alignment && (v319 - 3) <= 1)
        {
          v319 = 2 * ([(NSParagraphStyle *)v88 baseWritingDirection]== NSWritingDirectionRightToLeft);
        }

        if ([v41 laidOutLineFragment] && objc_msgSend(v26, "objectForKeyedSubscript:", @"NSBackgroundColor"))
        {
          ++v48;
        }

        v103 = [v26 objectForKey:*MEMORY[0x1E696A518]];
        if (v103)
        {
          ++v48;
        }

        recta = v103;
        if (v48 >= v43)
        {
          v28 = v265;
        }

        else
        {
          v104 = 0;
          v327[0] = NSCursorAttributeName;
          v327[1] = NSToolTipAttributeName;
          v327[2] = NSMarkedClauseSegmentAttributeName;
          do
          {
            if ([v26 objectForKey:v327[v104]])
            {
              if (++v48 >= v43)
              {
                break;
              }
            }

            ++v104;
          }

          while (v104 != 3);
          v28 = v265;
        }

        v317 = 0;
        v318 = 0;
        if (v43 == v48)
        {
          if ([v68 _getLatin1Glyphs:&v318 advanceWidths:&v317])
          {
            bzero(buffer, 0xB8uLL);
            *theSet = 0u;
            v293 = 0u;
            v310 = theString;
            v313 = 0;
            v314 = v28;
            CharactersPtr = CFStringGetCharactersPtr(theString);
            CStringPtr = 0;
            v311 = CharactersPtr;
            if (!CharactersPtr)
            {
              CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
            }

            v260 = 0;
            v115 = 0;
            coveredCharacterSet = 0;
            v315 = 0;
            v316 = 0;
            v116 = v327;
            v117 = v328;
            v312 = CStringPtr;
            LODWORD(v254) = v99;
LABEL_115:
            v118 = drawingContextCopy;
LABEL_116:
            v119 = v115 + 64;
            v120 = v115;
            while (1)
            {
              if (v314 <= v120)
              {
                goto LABEL_327;
              }

              if (v311)
              {
                v121 = v28;
                OUTLINED_FUNCTION_2_2();
                v123 = *(v122 + 2 * v120);
              }

              else if (v312)
              {
                v121 = v28;
                v123 = v312[v313 + v120];
              }

              else
              {
                v121 = v28;
                v124 = v315;
                if (v316 <= v120 || v315 > v120)
                {
                  v126 = OUTLINED_FUNCTION_0_3(v118, v106, v107, v108, v109, v110, v111, v112, v246, v247, coveredCharacterSet, v250, recta, v254, glyphs, v260, v261, v263, v265, v266, drawingContextCopy, applicationFrameworkContext, v269, v270, theString, v274, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, theSet[0], theSet[1], v293, *(&v293 + 1), *buffer, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310);
                  v127 = v116;
                  v129 = v128;
                  CFStringGetCharacters(v126, v329, buffer);
                  v117 = v129;
                  v116 = v127;
                  v118 = drawingContextCopy;
                  v124 = v315;
                }

                v123 = buffer[v120 - v124];
              }

              if (!v123)
              {
                v28 = v121;
LABEL_327:
                if ((HIDWORD(v261) | v254 ^ 1) == 1)
                {
                  v237 = v117;
                  CTFontTransformGlyphsWithLanguage();
                  v117 = v237;
                  v118 = drawingContextCopy;
                  if (v238 != 0.0)
                  {
                    return 0;
                  }
                }

                v53 = 0;
                v239 = 0.0;
                if (v260)
                {
                  v52 = v274;
                  if (v260 < v117)
                  {
                    v53 = (v117 - v260) >> 1;
                    v240 = v117;
                    [v68 _totalAdvancementForNativeGlyphs:v260 count:v53];
                    v117 = v240;
                    v118 = drawingContextCopy;
                    v239 = v241;
                  }
                }

                else
                {
                  v52 = v274;
                }

                if (v260)
                {
                  v242 = v260;
                }

                else
                {
                  v242 = v117;
                }

                v243 = (v242 - v328) >> 1;
                v325 = v243;
                v324 = v328;
                v323 = v327;
                v322 = v239;
                v321 = v68;
                v244 = v319;
                v320 = v319;
                if ([v118 cachesLayout])
                {
                  if (layout)
                  {
                    v245 = layout;
                  }

                  else
                  {
                    v245 = objc_alloc_init(_NSCoreTypesetterLayoutCache);
                    [drawingContextCopy setLayout:v245];
                  }

                  [(_NSCoreTypesetterLayoutCache *)&v245->super.isa setCount:v243 glyphs:v328 advances:v327 elasticAdvances:v68 resolvedFont:v244 textAlignment:v239];
                }

                v24 = v263;
                v51 = v266;
LABEL_16:
                [v41 isBeginningOfDocument];
                [OUTLINED_FUNCTION_1_3() _getLineMetricsForRange:? attributes:? attributedString:? applySpacing:? usesSystemFontLeading:? usesNegativeFontLeading:?];
                v55 = v54;
                v57 = v56;
                v59 = v58;
                if (([v41 isSimpleRectangularTextContainerForStartingCharacterAtIndex:0] & 1) == 0)
                {
                  [v41 lineFragmentRectForProposedRect:0 atIndex:0 writingDirection:0 remainingRect:{v37, v36 + v59, 10000000.0, v55}];
                  v37 = v60;
                  v36 = v61;
                  v63 = v62;
                  v32 = v64;
                  [v41 lineFragmentPadding];
                  v34 = v63 + v65 * -2.0;
                  v59 = 0.0;
                }

                if (v51 && v32 > 0.0 && ([v41 enforcesMinimumTextLineFragment] & 1) == 0 && v55 > v32)
                {
                  v66 = *(MEMORY[0x1E696AA80] + 16);
                  pointer->origin = *MEMORY[0x1E696AA80];
                  pointer->size = v66;
                  return 2;
                }

                v255 = v59;
                v262 = v24;
                v264 = v28;
                v69 = v323;
                v70 = v325;
                v71 = &v323[2 * v325];
                v72 = 0.0;
                if (v325 < 1)
                {
                  v73 = v323;
                }

                else
                {
                  v73 = v323;
                  if (v34 >= 0.0)
                  {
                    v73 = v323;
                    do
                    {
                      v74 = *v73;
                      v73 += 2;
                      v72 = v72 + v74;
                    }

                    while (v73 < v71 && v72 <= v34);
                  }
                }

                rect = v32;
                v259 = v55;
                v251 = v53;
                if (!context)
                {
                  if (v320 != 2)
                  {
                    v81 = v262;
                    v80 = v264;
                    v82 = theString;
                    pointerCopy2 = pointer;
                    if (v320 == 1)
                    {
                      v84 = v37 + (v34 - v72) * 0.5;
                    }

                    else
                    {
                      v84 = v37;
                    }

LABEL_275:
                    if (pointerCopy2 | v51)
                    {
                      v206 = 0.0;
                      if (v70)
                      {
                        v207 = v69;
                        v208 = v70;
                        do
                        {
                          v209 = *v207;
                          v207 += 2;
                          v206 = v206 + v209;
                          --v208;
                        }

                        while (v208);
                      }

                      if (v270 != 2 && !context && v34 != 0.0 && v206 > v34 + 0.001)
                      {
                        return 1;
                      }

                      v212 = 0.0;
                      if (v41[79] == 1)
                      {
                        [v41 lineFragmentPadding];
                        v212 = v213;
                      }

                      if (rendering)
                      {
                        v214 = v57 - v259;
                      }

                      else
                      {
                        v214 = v255;
                      }

                      if (v206 + v322 <= v34 || v34 <= 0.0)
                      {
                        v216 = v206 + v322;
                      }

                      else
                      {
                        v216 = v34;
                      }

                      if (v51)
                      {
                        v275 = v212;
                        v217 = v41[72] == 1 && [(__CFString *)v82 length]> v80;
                        v218 = [(__CFString *)v82 length];
                        applicationFrameworkContext2 = [v41 applicationFrameworkContext];
                        v332.origin.x = v37;
                        v332.origin.y = v36;
                        v332.size.width = v34;
                        v332.size.height = rect;
                        MaxX = CGRectGetMaxX(v332);
                        v281 = MEMORY[0x1E69E9820];
                        v282 = 3221225472;
                        v283 = __273__NSCoreTypesetter__NSFastDrawString_length_attributes_paragraphStyle_typesetterBehavior_lineBreakMode_rect_padding_graphicsContext_baselineRendering_usesFontLeading_usesScreenFont_scrollable_syncAlignment_mirrored_boundingRectPointer_baselineOffsetPointer_drawingContext___block_invoke_2;
                        v284 = &unk_1E7267AF8;
                        v287 = v69;
                        v288 = v70;
                        v289 = v251;
                        v290 = v321;
                        v285 = v41;
                        v286 = v324;
                        LOBYTE(v291) = v217;
                        __NSCoreTypesetterProcessTextLineFragment(0, v82, v26, 0, v218, applicationFrameworkContext2, &v281, 0.0, v57, v84 + 0.0, v214, v216, v259, v275, MaxX);
                        if (v217)
                        {
                          v221 = *MEMORY[0x1E696AA78];
                          if (v320 == 2)
                          {
                            v221 = v34 + *MEMORY[0x1E696AA78];
                          }

                          if (v320 == 1)
                          {
                            v221 = v34 * 0.5 + *MEMORY[0x1E696AA78];
                          }

                          theStringa = *&v221;
                          _extraLineFragmentAttributes = [v41 _extraLineFragmentAttributes];
                          v223 = 0.0;
                          if (v81)
                          {
                            [(NSParagraphStyle *)v81 paragraphSpacing];
                            v223 = v224;
                          }

                          if (!_extraLineFragmentAttributes)
                          {
                            _extraLineFragmentAttributes = v26;
                          }

                          *&glyphsb = v57;
                          if ([_extraLineFragmentAttributes count])
                          {
                            [v41 isBeginningOfDocument];
                            [OUTLINED_FUNCTION_1_3() _getLineMetricsForRange:? attributes:? attributedString:? applySpacing:? usesSystemFontLeading:? usesNegativeFontLeading:?];
                            v271 = v225;
                            v227 = v226;
                            v81 = [v41 _paragraphStyleFromAttributes:_extraLineFragmentAttributes];
                            v228 = v259;
                          }

                          else
                          {
                            v227 = 0.0;
                            v228 = v259;
                            v271 = v259;
                          }

                          v229 = v228 + v214;
                          if (v81)
                          {
                            [(NSParagraphStyle *)v81 lineSpacing];
                            v231 = v227 + v230;
                            if (v230 >= 0.0)
                            {
                              v231 = v227;
                            }

                            if (v230 <= v227)
                            {
                              v227 = v231;
                            }

                            else
                            {
                              v227 = v230;
                            }

                            [(NSParagraphStyle *)v81 paragraphSpacingBefore];
                            v229 = v229 + v232;
                          }

                          v233 = v229 + v223 + v227;
                          v234 = [(__CFString *)v82 length];
                          applicationFrameworkContext3 = [v41 applicationFrameworkContext];
                          v333.origin.x = v37;
                          v333.origin.y = v36;
                          v333.size.width = v34;
                          v333.size.height = rect;
                          v236 = CGRectGetMaxX(v333);
                          v276 = MEMORY[0x1E69E9820];
                          v277 = 3221225472;
                          v278 = __273__NSCoreTypesetter__NSFastDrawString_length_attributes_paragraphStyle_typesetterBehavior_lineBreakMode_rect_padding_graphicsContext_baselineRendering_usesFontLeading_usesScreenFont_scrollable_syncAlignment_mirrored_boundingRectPointer_baselineOffsetPointer_drawingContext___block_invoke_3;
                          v279 = &unk_1E7267AA8;
                          v280 = v41;
                          v57 = *&glyphsb;
                          __NSCoreTypesetterProcessTextLineFragment(0, v82, v26, v234, 0, applicationFrameworkContext3, &v276, 0.0, *&glyphsb, *&theStringa, v233, 0.0, v271, v275, v236);
                        }
                      }

                      else if (pointerCopy2)
                      {
                        pointerCopy2->origin.x = 0.0;
                        pointerCopy2->origin.y = v214;
                        pointerCopy2->size.width = v216;
                        pointerCopy2->size.height = v259;
                      }
                    }

                    if (offsetPointer)
                    {
                      *offsetPointer = v57;
                    }

                    return 2;
                  }

                  v84 = v37 + v34 - v72;
                  v81 = v262;
                  v80 = v264;
                  v82 = theString;
LABEL_274:
                  pointerCopy2 = pointer;
                  goto LABEL_275;
                }

                if (v51)
                {
                  __assert_rtn("[NSCoreTypesetter _NSFastDrawString:length:attributes:paragraphStyle:typesetterBehavior:lineBreakMode:rect:padding:graphicsContext:baselineRendering:usesFontLeading:usesScreenFont:scrollable:syncAlignment:mirrored:boundingRectPointer:baselineOffsetPointer:drawingContext:]", "NSCoreTypesetter.m", 1659, "!wantsTextLineFragments");
                }

                cGContext = [context CGContext];
                isFlipped = [context isFlipped];
                v78 = isFlipped;
                if (v34 <= 0.0)
                {
                  v85 = 0;
                  v248 = v37;
                  goto LABEL_106;
                }

                if (scrollable && v320)
                {
                  while (v73 < v71)
                  {
                    v79 = *v73;
                    v73 += 2;
                    v72 = v72 + v79;
                  }

                  v91 = 40000.0 - v72;
                  if (v320 == 1)
                  {
                    v91 = v91 * 0.5;
                    if (v72 + v322 <= v34)
                    {
                      v85 = 0;
                      v92 = (v34 - (v72 + v322)) * 0.5;
LABEL_103:
                      v95 = v92 - v91;
                      goto LABEL_104;
                    }
                  }

                  else if (v72 <= v34)
                  {
                    v85 = 0;
                    v92 = v34 - v72;
                    goto LABEL_103;
                  }

                  if (v270 == 2)
                  {
                    v70 = (v73 - v69) >> 4;
                    v95 = -v91;
                    v85 = 1;
LABEL_104:
                    v105 = v91 + floor(v95);
                    goto LABEL_105;
                  }
                }

                else
                {
                  if (v72 <= v34)
                  {
                    v93 = v34 - v72;
                    if (v320 != 1)
                    {
                      v94 = v37 + v93;
                      if (v320 != 2)
                      {
                        v94 = v37;
                      }

                      v248 = v94;
                      v85 = 0;
LABEL_106:
                      if (rendering)
                      {
                        *&glyphsa = v57;
                        v89 = v30;
                        v90 = v36;
                        if (v85)
                        {
                          goto LABEL_258;
                        }

LABEL_254:
                        if (v52)
                        {
                          CGContextSaveGState(cGContext);
                        }

                        v197 = 0;
                        goto LABEL_262;
                      }

                      goto LABEL_243;
                    }

                    v85 = 0;
                    v105 = v93 * 0.5;
LABEL_105:
                    v248 = v37 + v105;
                    goto LABEL_106;
                  }

                  if (v270 == 2)
                  {
                    v70 = (v73 - v69) >> 4;
                    if (rendering)
                    {
                      *&glyphsa = v57;
                      v89 = v30;
                      v90 = v36;
                      v248 = v37;
                      goto LABEL_258;
                    }

                    v85 = 1;
                    v248 = v37;
LABEL_243:
                    if (v32 > 0.0)
                    {
                      v194 = v32;
                    }

                    else
                    {
                      v194 = v55;
                    }

                    v195 = v194 - v57;
                    *&glyphsa = v57;
                    if (isFlipped)
                    {
                      v195 = v57;
                    }

                    v196 = v55 <= v32 || v32 <= 0.0;
                    v90 = v36 + v195;
                    if (v196 && (v85 & 1) == 0)
                    {
                      goto LABEL_254;
                    }

                    v89 = v30;
                    v198 = v36;
                    v199 = v32;
                    if (v32 > 0.0)
                    {
LABEL_261:
                      CGContextSaveGState(cGContext);
                      v331.origin.x = v37 - v89;
                      v331.origin.y = v198;
                      v331.size.width = v34 + v89 * 2.0;
                      v331.size.height = v199;
                      CGContextClipToRect(cGContext, v331);
                      v197 = 1;
LABEL_262:
                      v57 = *&glyphsa;
                      CGContextGetFontRenderingStyle();
                      [v321 applyToGraphicsContext:context];
                      blackColor = v269;
                      v84 = v248;
                      if (!v269)
                      {
                        if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
                        {
                          v268 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", applicationFrameworkContext];
                        }

                        else
                        {
                          v268 = +[NSTextGraphicsContextProvider __defaultColorClass];
                        }

                        blackColor = [(objc_class *)v268 blackColor];
                        v52 = v274;
                      }

                      [blackColor set];
                      CGContextSetCharacterSpacing(cGContext, 0.0);
                      if (v52)
                      {
                        [v52 applyToGraphicsContext:context];
                      }

                      CGContextSetTextPosition(cGContext, v248, v90);
                      CTFontDrawGlyphsWithAdvances();
                      CGContextSetFontRenderingStyle();
                      v205 = v197 ^ 1;
                      if (v52)
                      {
                        v205 = 0;
                      }

                      if ((v205 & 1) == 0)
                      {
                        CGContextRestoreGState(cGContext);
                      }

                      v82 = theString;
                      v81 = v262;
                      v80 = v264;
                      v51 = 0;
                      goto LABEL_274;
                    }

LABEL_258:
                    [v321 boundingRectForFont];
                    v199 = v201;
                    v202 = -(v200 + v201);
                    if (!v78)
                    {
                      v202 = v200;
                    }

                    v198 = v36 + v202;
                    goto LABEL_261;
                  }
                }

                return 1;
              }

              if (v123 > 0xFFu)
              {
                break;
              }

              if ((v123 & 0x60) != 0 && v123 != 173 && v123 != 127)
              {
                if (v123 == 160)
                {
                  v130 = 32;
                }

                else
                {
                  v130 = v123;
                }

                v131 = -64;
                if ((v130 & 0xFF80) == 0)
                {
                  v131 = -32;
                }

                v132 = v131 + v130;
                v133 = *(v318 + 2 * v132);
                *v117 = v133;
                if (v133)
                {
                  v28 = v121;
                  v134 = *(v317 + 8 * v132);
                  v135 = v260;
                  if (!v260)
                  {
                    v135 = v117;
                  }

                  *v116 = v134;
                  v116[1] = 0;
                  if (v130 == 32)
                  {
                    v136 = v135;
                  }

                  else
                  {
                    v136 = 0;
                  }

                  v260 = v136;
                  v115 = v120 + 1;
                  ++v117;
                  v116 += 2;
                  goto LABEL_116;
                }

                return 0;
              }

              if (v266)
              {
                *v116 = *MEMORY[0x1E696AA88];
                v116 += 2;
                *v117++ = -1;
              }

              v28 = v121;
              ++v120;
              ++v119;
              if (v115 < -1)
              {
                goto LABEL_327;
              }
            }

            if (!coveredCharacterSet)
            {
              v137 = v117;
              coveredCharacterSet = [v68 coveredCharacterSet];
              if (!coveredCharacterSet)
              {
                return 0;
              }

              CFCharacterSetInitInlineBuffer();
              v117 = v137;
            }

            v138 = 0;
            v250 = v116;
            while (1)
            {
              glyphs = v138;
              v139 = v123;
              LOBYTE(v140) = (theSet[1] & 4) == 0;
              if (HIDWORD(theSet[1]) > v123 || v293 <= v123)
              {
                break;
              }

              if ((theSet[1] & 2) != 0)
              {
                v142 = v117;
                if (!CFCharacterSetIsLongCharacterMember(theSet[0], v123))
                {
                  return 0;
                }
              }

              else if (*(&v293 + 1))
              {
                if (theSet[1])
                {
                  v143 = *(*(&v293 + 1) + (v123 >> 8));
                  if (*(*(&v293 + 1) + (v123 >> 8)))
                  {
                    v142 = v117;
                    if (v143 == 255)
                    {
                      goto LABEL_158;
                    }

                    if ((((*(*(&v293 + 1) + 32 * v143 + (v123 >> 3) + 224) >> (v123 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v142 = v117;
                    if ((theSet[1] & 4) == 0)
                    {
                      return 0;
                    }
                  }
                }

                else
                {
                  v142 = v117;
                  if ((((*(*(&v293 + 1) + (v123 >> 3)) >> (v123 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
                  {
                    return 0;
                  }
                }
              }

              else
              {
                v142 = v117;
                if (((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)) & 1) == 0)
                {
                  return 0;
                }
              }

LABEL_174:
              if (_MergedGlobals_3 != -1)
              {
                dispatch_once(&_MergedGlobals_3, &__block_literal_global_74);
              }

              v28 = v121;
              IsCharacterMember = CFCharacterSetIsCharacterMember(qword_1ED4DF318, v139);
              v117 = v142;
              v152 = &v142[glyphs];
              if (v260)
              {
                v152 = v260;
              }

              if (!IsCharacterMember)
              {
                v152 = 0;
              }

              v260 = v152;
              v138 = glyphs + 1;
              v115 = glyphs + 1 + v120;
              v153 = v314;
              if (v314 <= v115)
              {
                v154 = v250;
LABEL_194:
                if (v115 <= v153)
                {
                  if (v311)
                  {
                    OUTLINED_FUNCTION_2_2();
                    v163 = (v167 + 2 * v120);
                  }

                  else
                  {
                    v168 = v315;
                    v169 = v316;
                    if (glyphs > 0x3F)
                    {
                      goto LABEL_201;
                    }

                    if (v115 > v316 || v120 < v315)
                    {
                      glyphs = v138;
                      v177 = v117;
                      v178 = v120 + 64;
                      if (v120 + 64 >= v153)
                      {
                        v178 = v153;
                      }

                      v315 = v120;
                      v316 = v178;
                      v179.length = v178 - v120;
                      if (v312)
                      {
                        if (v179.length)
                        {
                          v180 = &v312[v313 + v120];
                          if (v153 >= v119)
                          {
                            v153 = v119;
                          }

                          v181 = v120 - v153;
                          v182 = buffer;
                          do
                          {
                            v183 = *v180++;
                            *v182++ = v183;
                          }

                          while (!__CFADD__(v181++, 1));
                        }
                      }

                      else
                      {
                        v179.location = v313 + v120;
                        CFStringGetCharacters(v310, v179, buffer);
                        v117 = v177;
                        v138 = glyphs;
                      }
                    }

                    v163 = &buffer[v120 - v315];
                  }
                }

                else
                {
                  if (v311)
                  {
                    OUTLINED_FUNCTION_2_2();
                    v163 = v326;
                    glyphs = v164;
                    v166 = v165;
                    __memmove_chk();
                    v138 = v166;
                    v117 = glyphs;
                    goto LABEL_240;
                  }

                  v168 = v315;
                  v169 = v316;
LABEL_201:
                  if (v120 < v168 || v169 <= v120)
                  {
                    v171 = v326;
                    if (v115 > v168 && v115 < v169)
                    {
                      glyphs = v117;
                      v173 = v168 - v120;
                      v185 = v138;
                      memmove(&v326[v168 - v120], buffer, 2 * (v115 - v168));
                      v171 = v326;
                      v138 = v185;
                      goto LABEL_231;
                    }

                    v173 = v138;
LABEL_232:
                    v186.location = v313 + v120;
                    if (v312)
                    {
                      v187 = &v312[v186.location];
                      do
                      {
                        v188 = *v187++;
                        *v171++ = v188;
                        --v173;
                      }

                      while (v173);
                    }

                    else
                    {
                      v186.length = v173;
                      v189 = v117;
                      v190 = v138;
                      CFStringGetCharacters(v310, v186, v171);
                      v138 = v190;
                      v117 = v189;
                    }
                  }

                  else
                  {
                    glyphs = v117;
                    if (v138 >= v169 - v120)
                    {
                      v174 = v169 - v120;
                    }

                    else
                    {
                      v174 = v138;
                    }

                    v175 = v138;
                    __memmove_chk();
                    v138 = v175;
                    v171 = &v326[v174];
                    v120 += v174;
                    v173 = v175 - v174;
LABEL_231:
                    v117 = glyphs;
                    if (v173 >= 1)
                    {
                      goto LABEL_232;
                    }
                  }

                  v163 = v326;
                  v154 = v250;
                }

LABEL_240:
                v191 = v163;
                v192 = v117;
                v193 = v138;
                CTFontGetGlyphsForCharacters(v68, v191, v117, v138);
                [v68 getAdvancements:v154 forCGGlyphs:v192 count:v193];
                v117 = &v192[v193];
                v116 = (v154 + 16 * v193);
                goto LABEL_115;
              }

              v154 = v250;
              if (v311)
              {
                OUTLINED_FUNCTION_2_2();
                v123 = *(v155 + 2 * v115);
              }

              else if (v312)
              {
                v123 = v312[v313 + v115];
              }

              else
              {
                v156 = v315;
                if (v316 <= v115 || v315 > v115)
                {
                  v158 = OUTLINED_FUNCTION_0_3(IsCharacterMember, v145, v146, v147, v148, v149, v150, v151, v246, v247, coveredCharacterSet, v250, recta, v254, glyphs, v260, v261, v263, v265, v266, drawingContextCopy, applicationFrameworkContext, v269, v270, theString, v274, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, theSet[0], theSet[1], v293, *(&v293 + 1), *buffer, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310);
                  v160 = v159;
                  v162 = v161;
                  CFStringGetCharacters(v158, v330, buffer);
                  v138 = v162;
                  v117 = v160;
                  v154 = v250;
                  v156 = v315;
                }

                v123 = buffer[v115 - v156];
              }

              if (v123 <= 0xFFu)
              {
                v153 = v314;
                v28 = v121;
                goto LABEL_194;
              }
            }

            v142 = v117;
            v140 = (theSet[1] & 4) >> 2;
LABEL_158:
            if ((v140 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_174;
          }
        }
      }
    }
  }

  return 0;
}

@end