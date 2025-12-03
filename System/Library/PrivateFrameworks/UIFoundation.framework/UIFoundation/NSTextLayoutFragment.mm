@interface NSTextLayoutFragment
+ (BOOL)coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled;
+ (NSSet)_validCoreTextRenderingAttributes;
+ (id)layoutFragmentQueue;
- (BOOL)_updateRangeInElement;
- (BOOL)coreTypesetter:(id)typesetter isSimpleRectangularTextContainerForStartingCharacterAtIndex:(int64_t)index;
- (BOOL)isCountableDataSource;
- (CGRect)_boundingRectForAnchoredAttachments;
- (CGRect)boundsForTextParagraphAnchoredAttachment:(id)attachment;
- (CGRect)coreTypesetter:(id)typesetter lineFragmentRectForProposedRect:(CGRect)rect atIndex:(int64_t)index writingDirection:(int64_t)direction remainingRect:(CGRect *)remainingRect;
- (CGRect)destinationBoundingRect;
- (CGRect)frameForTextAttachmentAtLocation:(id)location;
- (CGRect)layoutFragmentFrame;
- (CGRect)renderingSurfaceBounds;
- (CGRect)sourceBoundingRect;
- (CGSize)layoutSize;
- (NSArray)textAttachmentViewProviders;
- (NSString)description;
- (NSTextLayoutFragment)initWithCoder:(NSCoder *)coder;
- (NSTextLayoutFragment)initWithLayoutManager:(id)manager characterRange:(_NSRange)range animationType:(unint64_t)type boundingRect:(CGRect)rect;
- (NSTextLayoutFragment)initWithTextElement:(NSTextElement *)textElement range:(NSTextRange *)rangeInElement;
- (NSTextLayoutFragment)layoutFragmentWithKeyframe:(id)keyframe;
- (NSTextLineFragment)textLineFragmentForTextLocation:(id)textLocation isUpstreamAffinity:(BOOL)isUpstreamAffinity;
- (NSTextLineFragment)textLineFragmentForVerticalOffset:(CGFloat)verticalOffset requiresExactMatch:(BOOL)requiresExactMatch;
- (NSTextLocation)baseLocation;
- (NSTextParagraph)textParagraph;
- (NSTextRange)rangeInElement;
- (NSTextStorage)destinationTextStorage;
- (_NSRange)characterRange;
- (_NSRange)destinationGlyphRange;
- (const)_bidiLevelsAndResolvedBaseWritingDirectionPointer:(int64_t *)pointer;
- (double)verticalOffsetOfTextLocation:(id)location withAffinity:(int64_t)affinity;
- (id)_coreTextAttributes;
- (id)_createTruncatedTextRangesFromRanges:(id)ranges characterIndexDelta:(int64_t)delta;
- (id)_layoutInfoForTextAttachmentAtLocation:(id)location;
- (id)_renderingAttributesForTextAnimationContextComponent:(unint64_t)component range:(_NSRange)range attributes:(id)attributes effectiveRange:(_NSRange *)effectiveRange;
- (id)_resolvedRenderingAttributesForCharacterIndex:(int64_t)index effectiveRange:(_NSRange *)range;
- (id)_textAttributesAffectingLayout;
- (id)_textContainerAtStringIndex:(int64_t)index;
- (id)anchoredTextAttachments;
- (id)attributedStringForTruncatedRange:(id)range attributes:(id)attributes;
- (id)coreTypesetter:(id)typesetter attributedStringForTruncatedCharacterRange:(_NSRange *)range attributes:(id)attributes originalLineRef:(__CTLine *)ref;
- (id)lineBreaks;
- (id)locationFromLocation:(id)location withOffset:(int64_t)offset;
- (id)textAttachmentViewProviderForLocation:(id)location;
- (id)textAttachmentViewProviderForTextParagraphAnchoredAttachment:(id)attachment;
- (int64_t)_baseWritingDirection;
- (int64_t)coreTypesetter:(id)typesetter baseWritingDirectionForRange:(_NSRange)range bidiLevelsPointer:(const char *)pointer;
- (int64_t)offsetFromLocation:(id)location toLocation:(id)toLocation;
- (void)_initializeTextAttachmentLayoutContext;
- (void)_layout;
- (void)_notifyTextLayoutManagerAboutTextAttachmentInvalidation;
- (void)_resetLayoutFragmentFrame;
- (void)_setRangeInElement:(id)element;
- (void)_setup;
- (void)_setupResolvedTextAttachmentFrames;
- (void)dealloc;
- (void)drawAtPoint:(CGPoint)point contentType:(unint64_t)type;
- (void)drawAtPoint:(CGPoint)point inContext:(CGContextRef)context;
- (void)drawTextParagraphAnchoredAttachment:(id)attachment bounds:(CGRect)bounds context:(CGContext *)context;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateRenderingAttributesFromLocation:(id)location reverse:(BOOL)reverse usingBlock:(id)block;
- (void)enumerateViewportElementsFromLocation:(id)location options:(int64_t)options usingBlock:(id)block;
- (void)estimateSize;
- (void)invalidateExtraLineFragment;
- (void)invalidateLayout;
- (void)invalidateRenderingAttributesForTextRange:(id)range;
- (void)layout;
- (void)layoutManagerDidSetTemporaryAttributes:(id)attributes forTextRange:(id)range;
- (void)setDestinationTextStorage:(id)storage;
- (void)setLayoutFragmentFrame:(CGRect)frame;
- (void)setLayoutFragmentFrameOrigin:(CGPoint)origin;
- (void)setRenderingAttribute:(id)attribute value:(id)value forTextRange:(id)range;
- (void)setRenderingAttributes:(id)attributes forTextRange:(id)range;
- (void)setTextAttachmentProvider:(id)provider forLocation:(id)location;
- (void)setTextElement:(id)element;
- (void)setTextLayoutManager:(id)manager;
@end

@implementation NSTextLayoutFragment

- (CGRect)renderingSurfaceBounds
{
  v44 = *MEMORY[0x1E69E9840];
  [(NSTextLayoutFragment *)self layoutFragmentFrame];
  v4 = v3;
  width = v5;
  height = v7;
  if ([objc_opt_class() coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    textLineFragments = [(NSTextLayoutFragment *)self textLineFragments];
    v10 = [(NSArray *)textLineFragments countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      y = 0.0;
      x = v4;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(textLineFragments);
          }

          [*(*(&v38 + 1) + 8 * i) boundsWithType:2 options:0];
          v50.origin.x = v16;
          v50.origin.y = v17;
          v50.size.width = v18;
          v50.size.height = v19;
          v45.origin.x = x;
          v45.origin.y = y;
          v45.size.width = width;
          v45.size.height = height;
          v46 = CGRectUnion(v45, v50);
          x = v46.origin.x;
          y = v46.origin.y;
          width = v46.size.width;
          height = v46.size.height;
        }

        v11 = [(NSArray *)textLineFragments countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v11);
    }

    else
    {
      y = 0.0;
      x = v4;
    }

    v20 = x - v4;
  }

  else
  {
    v20 = *MEMORY[0x1E696AA80];
    y = *(MEMORY[0x1E696AA80] + 8);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    textLineFragments2 = [(NSTextLayoutFragment *)self textLineFragments];
    v22 = [(NSArray *)textLineFragments2 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v35;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(textLineFragments2);
          }

          [*(*(&v34 + 1) + 8 * j) boundsWithType:2 options:0];
          v51.origin.x = v26;
          v51.origin.y = v27;
          v51.size.width = v28;
          v51.size.height = v29;
          v47.origin.x = v20;
          v47.origin.y = y;
          v47.size.width = width;
          v47.size.height = height;
          v48 = CGRectUnion(v47, v51);
          v20 = v48.origin.x;
          y = v48.origin.y;
          width = v48.size.width;
          height = v48.size.height;
        }

        v23 = [(NSArray *)textLineFragments2 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v23);
    }
  }

  v30 = v20;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (NSArray)textAttachmentViewProviders
{
  result = [(_NSTextAttachmentLayoutContext *)self->_textAttachmentLayoutContext textAttachmentViewProviders];
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

- (CGSize)layoutSize
{
  [(NSTextLayoutFragment *)self layoutFragmentFrame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)estimateSize
{
  textLayoutManager = [(NSTextLayoutFragment *)self textLayoutManager];
  v4 = [(NSTextLayoutManager *)textLayoutManager textContainerForLocation:[(NSTextRange *)[(NSTextElement *)[(NSTextLayoutFragment *)self textElement] elementRange] location]];
  if (v4)
  {
    [v4 size];
    v6 = v5;
  }

  else
  {
    v6 = *MEMORY[0x1E696AA88];
  }

  state = [(NSTextLayoutFragment *)self state];
  if (textLayoutManager)
  {
    v8 = state;
    if (state <= NSTextLayoutFragmentStateEstimatedUsageBounds)
    {
      [(NSTextLayoutFragment *)self layoutFragmentFrame];
      x = v23.origin.x;
      y = v23.origin.y;
      width = v23.size.width;
      height = v23.size.height;
      if (CGRectEqualToRect(v23, *MEMORY[0x1E695F058]) || v8 == NSTextLayoutFragmentStateEstimatedUsageBounds && (v24.origin.x = x, v24.origin.y = y, v24.size.width = width, v24.size.height = height, CGRectGetWidth(v24) != v6) && ![(NSArray *)[(NSTextLayoutFragment *)self textLineFragmentsExcludingExtra] count])
      {
        [(NSTextLayoutFragment *)self layoutFragmentFrame];
        v14 = v13;
        [(NSTextElement *)[(NSTextLayoutFragment *)self textElement] estimatedIntrinsicContentSizeForTextLayoutManager:textLayoutManager];
        v16 = v15;
        v18 = v17;
        [(NSTextLayoutFragment *)self topMargin];
        v20 = v19;
        [(NSTextLayoutFragment *)self bottomMargin];
        [(NSTextLayoutFragment *)self setLayoutFragmentFrame:0.0, v14, v16, v18 + v20 + v21];
      }

      [(NSTextLayoutFragment *)self setState:1];
    }
  }
}

- (NSTextRange)rangeInElement
{
  rangeInElement = self->_rangeInElement;
  if (!rangeInElement)
  {
    Weak = objc_loadWeak(&self->_textElement);
    v5 = [objc_msgSend(objc_msgSend(objc_msgSend(Weak "childElements")];
    elementRange = [Weak elementRange];
    rangeInElement = elementRange;
    if (v5 && ([v5 isEqual:{-[NSTextRange location](elementRange, "location")}] & 1) == 0)
    {
      if ([-[NSTextRange location](self->_contentRange "location")] && objc_msgSend(-[NSTextRange endLocation](self->_contentRange, "endLocation"), "isEqual:", v5))
      {
        rangeInElement = self->_contentRange;
      }

      else
      {

        rangeInElement = [[NSTextRange alloc] initWithLocation:[(NSTextRange *)rangeInElement location] endLocation:v5];
        self->_contentRange = rangeInElement;
      }
    }

    if (!rangeInElement)
    {
      if (rangeInElement_onceToken != -1)
      {
        [NSTextLayoutFragment rangeInElement];
      }

      return rangeInElement_emptyRange;
    }
  }

  return rangeInElement;
}

- (CGRect)layoutFragmentFrame
{
  objc_sync_enter(self);
  x = self->_layoutFragmentFrame.origin.x;
  y = self->_layoutFragmentFrame.origin.y;
  width = self->_layoutFragmentFrame.size.width;
  height = self->_layoutFragmentFrame.size.height;
  objc_sync_exit(self);
  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (NSTextParagraph)textParagraph
{
  if (self->_isTextParagraph)
  {
    return objc_loadWeak(&self->_textElement);
  }

  else
  {
    return 0;
  }
}

- (void)layout
{
  if ([(NSTextLayoutFragment *)self state]!= NSTextLayoutFragmentStateLayoutAvailable && [(NSTextLayoutFragment *)self textElement])
  {
    layoutQueue = [(NSTextLayoutFragment *)self layoutQueue];
    if (layoutQueue)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __30__NSTextLayoutFragment_layout__block_invoke;
      v4[3] = &unk_1E72657B8;
      v4[4] = self;
      [(NSOperationQueue *)layoutQueue addOperationWithBlock:v4];
    }

    else
    {

      [(NSTextLayoutFragment *)self _layout];
    }
  }
}

+ (BOOL)coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled
{
  if (coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled_onceToken != -1)
  {
    +[NSTextLayoutFragment coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled];
  }

  return coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled_coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled;
}

uint64_t __80__NSTextLayoutFragment_coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v0)
  {
    result = [v0 BOOLValue];
  }

  else
  {
    result = dyld_program_sdk_at_least() ^ 1;
  }

  coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled_coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled = result;
  return result;
}

uint64_t __31__NSTextLayoutFragment__layout__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (!v6)
  {
    return 1;
  }

  if (*(a1 + 40))
  {
    v8 = [*(a1 + 40) locationForCharacterIndex:a4 dataSourceLocationsOnly:0 actualRange:0];
  }

  else
  {
    v8 = [v6 locationFromLocation:*(a1 + 48) withOffset:?];
  }

  v10 = v8;
  v11 = [*(a1 + 32) delegate];
  v12 = *(a1 + 32);

  return [v11 textLayoutManager:v12 shouldBreakLineBeforeLocation:v10 hyphenating:a5];
}

- (void)_layout
{
  v240 = *MEMORY[0x1E69E9840];
  if (self->_isTextParagraph && [(NSTextLayoutFragment *)self state]!= NSTextLayoutFragmentStateLayoutAvailable && [(NSTextLayoutFragment *)self textElement])
  {
    textParagraph = [(NSTextLayoutFragment *)self textParagraph];
    v139 = [(NSArray *)self->_textLineFragmentsExcludingExtra count];
    if ([(NSTextParagraph *)textParagraph isEndOfParagraph])
    {
      isEndOfDocument = [(NSTextElement *)textParagraph isEndOfDocument];
    }

    else
    {
      isEndOfDocument = 0;
    }

    coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled = [objc_opt_class() coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled];
    v230 = 0;
    v231 = &v230;
    v232 = 0x3052000000;
    v233 = __Block_byref_object_copy__0;
    v234 = __Block_byref_object_dispose__0;
    if (v139)
    {
      v5 = [(NSArray *)self->_textLineFragmentsExcludingExtra mutableCopy];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v235 = v5;
    v6 = [(NSTextLayoutManager *)[(NSTextLayoutFragment *)self textLayoutManager] textContainerForLocation:[(NSTextRange *)[(NSTextElement *)[(NSTextLayoutFragment *)self textElement] elementRange] location]];
    v7 = v6;
    if (v6)
    {
      [v6 size];
      v9 = v8;
      v11 = v10;
      layoutOrientation = [v7 layoutOrientation];
      [v7 lineFragmentPadding];
      v149 = v13;
    }

    else
    {
      layoutOrientation = 0;
      v9 = *MEMORY[0x1E696AA88];
      v11 = *(MEMORY[0x1E696AA88] + 8);
      v149 = 0.0;
    }

    [(NSTextLayoutFragment *)self leadingPadding];
    v15 = v14;
    [(NSTextLayoutFragment *)self trailingPadding];
    v17 = v16;
    [(NSTextLayoutFragment *)self layoutFragmentFrame];
    v150 = v18;
    textLayoutManager = [(NSTextLayoutFragment *)self textLayoutManager];
    location = [(NSTextRange *)[(NSTextElement *)textParagraph elementRange] location];
    rendersTextCorrectionMarkers = [(NSTextLayoutFragment *)self rendersTextCorrectionMarkers];
    usesFontLeading = [(NSTextLayoutManager *)textLayoutManager usesFontLeading];
    v133 = layoutOrientation;
    v148 = v7;
    v22 = [-[NSTextRange location](-[NSTextElement elementRange](textParagraph "elementRange")];
    v226 = 0;
    v227 = &v226;
    v228 = 0x2020000000;
    v229 = 0;
    attributedString = [(NSTextParagraph *)textParagraph attributedString];
    v220 = 0;
    v221 = &v220;
    v222 = 0x4010000000;
    v223 = "";
    v24 = *(MEMORY[0x1E695F058] + 16);
    v224 = *MEMORY[0x1E695F058];
    v225 = v24;
    v25 = v9 <= 0.0;
    if (v9 >= 10000000.0)
    {
      v25 = 1;
    }

    v147 = v25;
    v26 = v11 <= 0.0;
    if (v11 >= 10000000.0)
    {
      v26 = 1;
    }

    obj = v26;
    applicationFrameworkContext = [(NSTextLayoutManager *)textLayoutManager applicationFrameworkContext];
    v28 = &selRef__appendTemporaryExclusionPathsForRects_iOS_;
    if (applicationFrameworkContext != 1)
    {
      v28 = &selRef__appendTemporaryExclusionPathsForRects_macOS_;
    }

    v130 = *v28;
    v216 = 0;
    v217 = &v216;
    v218 = 0x2020000000;
    [(NSTextLayoutFragment *)self topMargin];
    v132 = rendersTextCorrectionMarkers;
    v219 = v29;
    v212 = 0;
    v213 = &v212;
    v214 = 0x2020000000;
    [(NSTextLayoutFragment *)self bottomMargin];
    v215 = v30;
    v211[0] = 0;
    v211[1] = v211;
    v211[2] = 0x2020000000;
    v211[3] = 0;
    v210[0] = 0;
    v210[1] = v210;
    v210[2] = 0x2020000000;
    v210[3] = 0;
    v201[0] = MEMORY[0x1E69E9820];
    v201[1] = 3221225472;
    v202 = __31__NSTextLayoutFragment__layout__block_invoke;
    v203 = &unk_1E72656A0;
    v204 = textParagraph;
    v205 = location;
    v206 = v211;
    v207 = &v216;
    v208 = v210;
    v209 = &v212;
    if (v139)
    {
      if (isEndOfDocument)
      {
        v140 = [objc_allocWithZone(_NSCachedAttributedString) initWithAttributedString:attributedString];
        v31 = [v140 length];
        [objc_msgSend(v231[5] "lastObject")];
        v32 = 0;
        v150 = v150 + CGRectGetMaxY(v241);
      }

      else
      {
        v31 = 0;
        v32 = 0;
        v140 = 0;
      }

      [(NSTextLayoutFragment *)self layoutFragmentFrame];
      MinX = CGRectGetMinX(v242);
      v202(v201, self, [(NSAttributedString *)attributedString attribute:@"NSParagraphStyle" atIndex:0 effectiveRange:0]);
      v136 = 0;
      v134 = MinX - v149;
    }

    else
    {
      if (v22)
      {
        v140 = [objc_allocWithZone(_NSCachedAttributedString) initWithAttributedString:attributedString];
        v136 = 0;
      }

      else
      {
        v136 = [(NSTextParagraph *)textParagraph rangeForLocation:[(NSTextRange *)[(NSTextLayoutFragment *)self rangeInElement] location] allowsTrailingEdge:1];
        v140 = [objc_allocWithZone(_NSCachedAttributedString) initWithAttributedString:{-[NSAttributedString attributedSubstringFromRange:](attributedString, "attributedSubstringFromRange:", v136, -[NSAttributedString length](attributedString, "length") - v136)}];
      }

      v32 = [v140 length];
      [v140 beginEditing];
      v34 = [v140 length];
      v199[0] = MEMORY[0x1E69E9820];
      v199[1] = 3221225472;
      v199[2] = __31__NSTextLayoutFragment__layout__block_invoke_2;
      v199[3] = &unk_1E72656C8;
      v199[4] = textParagraph;
      v199[5] = self;
      v199[6] = v140;
      v199[7] = textLayoutManager;
      v200 = usesFontLeading;
      [v140 enumerateAttributesInRange:0 options:v34 usingBlock:{0x100000, v199}];
      [(NSTextLayoutManager *)textLayoutManager _prepareAttributedString:v140 forTextLayoutFragment:self];
      [v140 endEditing];
      v31 = 0;
      v134 = 0.0;
      if ([v140 length])
      {
        v35 = [v140 attribute:@"NSParagraphStyle" atIndex:0 effectiveRange:0];
        v202(v201, self, v35);
      }
    }

    if (isEndOfDocument)
    {
      firstObject = [(NSArray *)[(NSTextLayoutManager *)textLayoutManager textSelections] firstObject];
      v37 = [objc_msgSend(firstObject "textRanges")];
      endLocation = [(NSTextRange *)[(NSTextContentManager *)[(NSTextLayoutManager *)textLayoutManager textContentManager] documentRange] endLocation];
      if (v37)
      {
        v39 = endLocation;
        if ([v37 isEmpty])
        {
          if ([objc_msgSend(v37 "location")])
          {
            typingAttributes = [firstObject typingAttributes];
            if ([typingAttributes count])
            {
              [(NSTextLayoutFragment *)self setExtraLineFragmentAttributes:typingAttributes];
            }
          }
        }
      }
    }

    if (v15 == 0.0 && v17 == 0.0 || [(NSTextLayoutFragment *)self _baseWritingDirection])
    {
      v135 = v15;
      v131 = v17;
    }

    else
    {
      v135 = v17;
      v131 = v15;
    }

    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v41 = v231[5];
    v42 = [v41 countByEnumeratingWithState:&v195 objects:v239 count:16];
    if (v42)
    {
      v43 = *v196;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v196 != v43)
          {
            objc_enumerationMutation(v41);
          }

          [*(*(&v195 + 1) + 8 * i) typographicBounds];
          updated = __NSTextLayoutFragmentUpdateTotalBoundsWithTypographicBounds(v45, v46, v47, v48, v221[1].origin.x, v221[1].origin.y, v221[1].size.width, v221[1].size.height);
          p_x = &v221->origin.x;
          v221[1].origin.x = updated;
          p_x[5] = v51;
          p_x[6] = v52;
          p_x[7] = v53;
        }

        v42 = [v41 countByEnumeratingWithState:&v195 objects:v239 count:16];
      }

      while (v42);
    }

    if (v140)
    {
      v54 = v148;
      v55 = objc_alloc_init(NSCoreTypesetter);
      [(NSTextLayoutManager *)textLayoutManager _configureCoreTypesetter:v55 forTextParagraph:textParagraph textContainer:v148];
      [(NSTypesetter *)v55 setAttributedString:v140];
      [(NSCoreTypesetter *)v55 setCharacterRange:v31, v32];
      v56 = v9 - (v15 + v17);
      if (v147)
      {
        v56 = v9;
      }

      [(NSCoreTypesetter *)v55 setTextContainerSize:v56, v11];
      [(NSCoreTypesetter *)v55 setRequiresCTLineRef:[(NSTextLayoutManager *)textLayoutManager requiresCTLineRef]];
      [(NSCoreTypesetter *)v55 setWantsExtraLineFragment:isEndOfDocument];
      if ([(NSTextLayoutFragment *)self extraLineFragmentAttributes])
      {
        [(NSCoreTypesetter *)v55 set_extraLineFragmentAttributes:[(NSTextLayoutFragment *)self extraLineFragmentAttributes]];
      }

      [(NSCoreTypesetter *)v55 setKeyframe:[(NSTextLayoutFragment *)self keyframe]];
      [(NSCoreTypesetter *)v55 setForcedLineBreaks:[(NSTextLayoutFragment *)self forcedLineBreaks]];
      v189 = 0;
      v190 = &v189;
      v191 = 0x3052000000;
      v192 = __Block_byref_object_copy__0;
      v193 = __Block_byref_object_dispose__0;
      v194 = 0;
      if ([objc_msgSend(objc_loadWeak(&self->_textLayoutManager) "textContentManager")])
      {
        anchoredTextAttachments = [(NSTextLayoutFragment *)self anchoredTextAttachments];
        v58 = [anchoredTextAttachments count];
        location = 0;
        p_location = &location;
        v185 = 0x3052000000;
        v186 = __Block_byref_object_copy__0;
        v187 = __Block_byref_object_dispose__0;
        v188 = 0;
        v179 = 0;
        v180 = &v179;
        v181 = 0x2020000000;
        v182 = 0;
        location2 = [(NSTextRange *)[(NSTextLayoutManager *)textLayoutManager documentRange] location];
        v177[0] = MEMORY[0x1E69E9820];
        v177[1] = 3221225472;
        v177[2] = __31__NSTextLayoutFragment__layout__block_invoke_3;
        v177[3] = &unk_1E72656F0;
        v177[4] = self;
        v177[5] = &v189;
        v178 = v58 != 0;
        *&v177[8] = v150;
        v177[6] = &location;
        v177[7] = &v179;
        [(NSTextLayoutManager *)textLayoutManager enumerateTextLayoutFragmentsFromLocation:location2 options:0 usingBlock:v177];
        if (v58)
        {
          textParagraph2 = [(NSTextLayoutFragment *)self textParagraph];
          if ([(NSTextRange *)[(NSTextElement *)textParagraph2 elementRange] isNotEmpty])
          {
            v61 = [(NSAttributedString *)[(NSTextParagraph *)textParagraph2 attributedString] attributesAtIndex:0 effectiveRange:0];
          }

          else
          {
            v61 = 0;
          }

          _baseWritingDirection = [(NSTextLayoutFragment *)self _baseWritingDirection];
          v64 = v217[3];
          if (v147)
          {
            v65 = 10000000.0;
          }

          else
          {
            v65 = v9;
          }

          v146 = v65;
          if (obj)
          {
            v66 = 10000000.0;
          }

          else
          {
            v66 = v11 - v150;
          }

          v67 = v180[3];
          v129 = v55;
          if (v67 <= 0.0 && (v68 = v190[5]) != 0)
          {
            v143 = v68;
          }

          else
          {
            v143 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v128 = textLayoutManager;
          v175 = 0u;
          v176 = 0u;
          v173 = 0u;
          v174 = 0u;
          v69 = [anchoredTextAttachments countByEnumeratingWithState:&v173 objects:v238 count:16];
          if (!v69)
          {
            goto LABEL_104;
          }

          obja = anchoredTextAttachments;
          v141 = v9;
          v126 = v11;
          v127 = textParagraph;
          v70 = 0;
          v71 = v150 + v64;
          v72 = *v174;
          v73 = v61 ? v61 : MEMORY[0x1E695E0F8];
          v142 = 2 * (_baseWritingDirection != 0);
          do
          {
            for (j = 0; j != v69; ++j)
            {
              if (*v174 != v72)
              {
                objc_enumerationMutation(obja);
              }

              v75 = *(*(&v173 + 1) + 8 * j);
              [objc_msgSend(v75 "textAttachment")];
              v77 = v76;
              v79 = v78;
              v81 = v80;
              v82 = v149;
              if (!v147)
              {
                v82 = v149;
                if ([v75 position] != v142)
                {
                  position = [v75 position];
                  v84 = v141 - v79 - v149;
                  if (position == 1)
                  {
                    v84 = v84 * 0.5;
                  }

                  v82 = v149 + v84;
                }
              }

              if (CGRectIsEmpty(self->_boundingRectForAnchoredAttachments))
              {
                v85 = v82;
                v86 = v79;
                v87 = v81;
              }

              else
              {
                v245.origin.x = v82;
                v245.origin.y = v77;
                v245.size.width = v79;
                v245.size.height = v81;
                *(&v86 - 2) = CGRectUnion(self->_boundingRectForAnchoredAttachments, v245);
                v77 = v88;
                v85 = v82;
                v82 = v89;
              }

              self->_boundingRectForAnchoredAttachments.origin.x = v82;
              self->_boundingRectForAnchoredAttachments.origin.y = v77;
              self->_boundingRectForAnchoredAttachments.size.width = v86;
              self->_boundingRectForAnchoredAttachments.size.height = v87;
              v90 = v150 + v217[3];
              [v75 _updateLayoutFrame:{v85, v90, v79, v81}];
              if ([v75 excludesText])
              {
                [v143 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRect:", v85, v90, v79, v81)}];
              }

              if (!((v67 <= 0.0) | v70 & 1))
              {
                v171 = 0u;
                v172 = 0u;
                v169 = 0u;
                v170 = 0u;
                v91 = p_location[5];
                v92 = [v91 countByEnumeratingWithState:&v169 objects:v237 count:16];
                if (v92)
                {
                  v93 = *v170;
                  while (2)
                  {
                    for (k = 0; k != v92; ++k)
                    {
                      if (*v170 != v93)
                      {
                        objc_enumerationMutation(v91);
                      }

                      [*(*(&v169 + 1) + 8 * k) rectValue];
                      v246.origin.x = v85;
                      v246.origin.y = v90;
                      v246.size.width = v79;
                      v246.size.height = v81;
                      if (CGRectIntersectsRect(v243, v246))
                      {
                        v70 = 1;
                        goto LABEL_98;
                      }
                    }

                    v92 = [v91 countByEnumeratingWithState:&v169 objects:v237 count:16];
                    v70 = 0;
                    if (v92)
                    {
                      continue;
                    }

                    break;
                  }
                }

                else
                {
                  v70 = 0;
                }
              }

LABEL_98:
              ;
            }

            v69 = [obja countByEnumeratingWithState:&v173 objects:v238 count:16];
          }

          while (v69);
          textParagraph = v127;
          v11 = v126;
          v9 = v141;
          v54 = v148;
          if (v70)
          {
            textLayoutManager = v128;
            v55 = v129;
            if (!v190[5])
            {
              v95 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v190[5] = v95;
            }

            v217[3] = v180[3] + v217[3];
            v168[0] = MEMORY[0x1E69E9820];
            v168[1] = 3221225472;
            v168[2] = __31__NSTextLayoutFragment__layout__block_invoke_4;
            v168[3] = &unk_1E7265718;
            v168[6] = &v189;
            v168[5] = &v179;
            v168[4] = obja;
            [v143 enumerateObjectsUsingBlock:v168];

            v150 = v150 + v180[3];
          }

          else
          {
LABEL_104:
            v96 = v190[5];
            if (v96)
            {
              textLayoutManager = v128;
              v55 = v129;
              if (v96 != v143)
              {
                [v96 addObjectsFromArray:?];
              }
            }

            else
            {
              v190[5] = v143;
              textLayoutManager = v128;
              v55 = v129;
            }
          }
        }

        _Block_object_dispose(&v179, 8);
        _Block_object_dispose(&location, 8);
      }

      maximumNumberOfLines = [v54 maximumNumberOfLines];
      if (maximumNumberOfLines >= 1)
      {
        if ([(NSTextLayoutManager *)textLayoutManager _currentTextLayoutFragmentEnumerated]== self)
        {
          _numberOfLinesToCurrentlyEnumeratedTextLayoutFragment = [(NSTextLayoutManager *)textLayoutManager _numberOfLinesToCurrentlyEnumeratedTextLayoutFragment];
          maximumNumberOfLines = maximumNumberOfLines - _numberOfLinesToCurrentlyEnumeratedTextLayoutFragment - [v231[5] count];
        }

        [(NSCoreTypesetter *)v55 setMaximumNumberOfLines:maximumNumberOfLines];
      }

      -[NSCoreTypesetter setContainerBreakMode:](v55, "setContainerBreakMode:", [v54 lineBreakMode]);
      -[NSCoreTypesetter setEnforcesMinimumTextLineFragment:](v55, "setEnforcesMinimumTextLineFragment:", [-[NSTextRange location](-[NSTextLayoutFragment rangeInElement](self "rangeInElement")]);
      [(NSCoreTypesetter *)v55 setTypographicBoundsIncludesLineFragmentPadding:coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled];
      [(NSCoreTypesetter *)v55 setLayoutOrientation:v133];
      [(NSTypesetter *)v55 setLineFragmentPadding:v149];
      [(NSTextLayoutManager *)textLayoutManager delegate];
      if (objc_opt_respondsToSelector())
      {
        v161 = MEMORY[0x1E69E9820];
        v162 = 3221225472;
        v163 = __31__NSTextLayoutFragment__layout__block_invoke_5;
        v164 = &unk_1E7265740;
        v165 = textLayoutManager;
        v166 = textParagraph;
        v167 = location;
      }

      [(NSCoreTypesetter *)v55 setValidateLineBreakIndex:?];
      [(NSCoreTypesetter *)v55 setDelegate:self];
      objc_initWeak(&location, self);
      v156[0] = MEMORY[0x1E69E9820];
      v156[1] = 3221225472;
      v156[2] = __31__NSTextLayoutFragment__layout__block_invoke_6;
      v156[3] = &unk_1E7265768;
      v158 = v139 != 0;
      v156[4] = &v216;
      v156[5] = &v230;
      v159 = coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled;
      v157[1] = *&v131;
      v157[2] = *&v134;
      v156[6] = v211;
      v156[7] = v210;
      v156[8] = &v226;
      objc_copyWeak(v157, &location);
      v160 = v132;
      v156[9] = &v220;
      [(NSCoreTypesetter *)v55 setLaidOutLineFragment:v156];
      [(_NSTextAttachmentLayoutContext *)self->_textAttachmentLayoutContext setTextContainer:v54];
      v99 = v55;
      if (v190[5])
      {
        v100 = [objc_msgSend(v54 "exclusionPaths")];
        [v54 performSelector:v130 withObject:v190[5]];
      }

      else
      {
        v100 = 0;
      }

      [(NSCoreTypesetter *)v99 layoutWithYOrigin:v150];
      if (v190[5])
      {
        if ([(NSTextElement *)[(NSTextLayoutFragment *)self textParagraph] isEndOfDocument])
        {
          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v101 = v190[5];
          v102 = [v101 countByEnumeratingWithState:&v152 objects:v236 count:16];
          v103 = textLayoutManager;
          if (v102)
          {
            v104 = *v153;
            v105 = 0.0;
            do
            {
              for (m = 0; m != v102; ++m)
              {
                if (*v153 != v104)
                {
                  objc_enumerationMutation(v101);
                }

                [*(*(&v152 + 1) + 8 * m) rectValue];
                MaxY = CGRectGetMaxY(v244);
                v108 = MaxY - v150 - CGRectGetMaxY(v221[1]);
                if (v108 > v105)
                {
                  v105 = v108;
                }
              }

              v102 = [v101 countByEnumeratingWithState:&v152 objects:v236 count:16];
            }

            while (v102);
          }

          else
          {
            v105 = 0.0;
          }

          textLayoutManager = v103;
          v54 = v148;
          if (v105 > v213[3])
          {
            v213[3] = v105;
          }
        }

        [v54 setExclusionPaths:v100 temporarily:1];
      }

      v62 = [(NSTextLayoutFragment *)self _createTruncatedTextRangesFromRanges:[(NSCoreTypesetter *)v99 truncatedRanges] characterIndexDelta:v136];

      objc_destroyWeak(v157);
      objc_destroyWeak(&location);
      _Block_object_dispose(&v189, 8);
    }

    else
    {
      v62 = 0;
    }

    [(NSTextLayoutFragment *)self setTextLineFragments:v231[5]];
    v109 = v221;
    height = v221[1].size.height;
    v111 = v135 + v221[1].size.width;
    v221[1].size.width = v111;
    v112 = v213[3] + height;
    v109[1].size.height = v112;
    if (v9 > 0.0)
    {
      if (v111 >= v9)
      {
        v111 = v9;
      }

      v109[1].size.width = v111;
    }

    if (v11 > 0.0)
    {
      if (v112 >= v11)
      {
        v112 = v11;
      }

      v109[1].size.height = v112;
    }

    if ([v231[5] count])
    {
      if (coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled)
      {
        v113 = &v221->origin.x;
        x = v221[1].origin.x;
      }

      else
      {
        v115 = v231[5];
        v151[0] = MEMORY[0x1E69E9820];
        v151[1] = 3221225472;
        v151[2] = __31__NSTextLayoutFragment__layout__block_invoke_7;
        v151[3] = &unk_1E7265790;
        v151[4] = &v220;
        [v115 enumerateObjectsUsingBlock:v151];
        v113 = &v221->origin.x;
        x = v149 + v134 + v221[1].origin.x;
        v221[1].origin.x = x;
      }

      [(NSTextLayoutFragment *)self setLayoutFragmentFrame:x, v113[5], v113[6], v113[7]];
      [(NSTextLayoutFragment *)self setState:3];
      if ((coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled & 1) == 0)
      {
        [(_NSTextAttachmentLayoutContext *)self->_textAttachmentLayoutContext invalidateAttachmentFrames];
      }

      if (!v139)
      {
        lastObject = [v231[5] lastObject];
        v117 = [(NSTextContentManager *)[(NSTextLayoutManager *)textLayoutManager textContentManager] offsetFromLocation:[(NSTextRange *)[(NSTextParagraph *)textParagraph paragraphContentRange] location] toLocation:[(NSTextRange *)[(NSTextParagraph *)textParagraph paragraphContentRange] endLocation]];
        if (v227[3])
        {
          v118 = 1;
        }

        else
        {
          v119 = v117;
          characterRange = [lastObject characterRange];
          v118 = v121 + v136 + characterRange < v119;
        }

        [(NSTextLayoutFragment *)self setHasPartialLayout:v118];
        if ([(NSTextLayoutFragment *)self hasPartialLayout])
        {
          characterRange2 = [lastObject characterRange];
          v124 = [(NSTextParagraph *)textParagraph locationForCharacterIndex:v123 + v136 + characterRange2 actualRange:0];
          if (v124)
          {
            v125 = [[NSTextRange alloc] initWithLocation:[(NSTextRange *)[(NSTextLayoutFragment *)self rangeInElement] location] endLocation:v124];
            [(NSTextLayoutFragment *)self _setRangeInElement:v125];
          }
        }
      }
    }

    if (![(NSTextLayoutFragment *)self keyframe])
    {
      [(NSTextLayoutManager *)textLayoutManager updateLayoutWithTextLayoutFragment:self addition:1];
    }

    self->_truncatedRanges = v62;
    _Block_object_dispose(v210, 8);
    _Block_object_dispose(v211, 8);
    _Block_object_dispose(&v212, 8);
    _Block_object_dispose(&v216, 8);
    _Block_object_dispose(&v220, 8);
    _Block_object_dispose(&v226, 8);
    _Block_object_dispose(&v230, 8);
  }
}

uint64_t __31__NSTextLayoutFragment__layout__block_invoke_6(uint64_t a1, void *a2, char a3)
{
  [a2 typographicBounds];
  v7 = v6;
  v9 = v8;
  v11 = *(a1 + 88) + v10;
  v13 = v12 + *(*(*(a1 + 32) + 8) + 24);
  if ((a3 & 1) != 0 && *(a1 + 104) == 1)
  {
    v14 = [*(*(*(a1 + 40) + 8) + 40) lastObject];
    [a2 setIsExtra:1];
    if ((*(a1 + 105) & 1) == 0)
    {
      v11 = v11 - *(a1 + 96);
    }

    if (v14)
    {
      [v14 typographicBounds];
      v13 = v13 + CGRectGetMaxY(v23) + *(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 56) + 8) + 24);
    }
  }

  if ((a3 & 2) != 0)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  [a2 setTypographicBounds:{v11, v13, v7, v9}];
  [a2 setTextLayoutFragment:objc_loadWeak((a1 + 80))];
  [a2 setRendersTextCorrectionMarkers:*(a1 + 106)];
  updated = __NSTextLayoutFragmentUpdateTotalBoundsWithTypographicBounds(v11, v13, v7, v9, *(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 72) + 8) + 48), *(*(*(a1 + 72) + 8) + 56));
  v16 = *(*(a1 + 72) + 8);
  *(v16 + 32) = updated;
  *(v16 + 40) = v17;
  *(v16 + 48) = v18;
  *(v16 + 56) = v19;
  v20 = *(*(*(a1 + 40) + 8) + 40);

  return [v20 addObject:a2];
}

- (void)dealloc
{
  objc_storeWeak(&self->_textLayoutManager, 0);
  objc_storeWeak(&self->_textElement, 0);

  objc_storeWeak(&self->_layoutManager, 0);
  v3.receiver = self;
  v3.super_class = NSTextLayoutFragment;
  [(NSTextLayoutFragment *)&v3 dealloc];
}

double __31__NSTextLayoutFragment__layout__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    [a3 paragraphSpacingBefore];
    *(*(*(a1 + 48) + 8) + 24) = v6;
    if (*(*(*(a1 + 48) + 8) + 24) != 0.0 && [*(a1 + 32) isBeginningOfParagraph] && objc_msgSend(*(a1 + 40), "isEqual:", objc_msgSend(objc_msgSend(a2, "rangeInElement"), "location")) && (objc_msgSend(*(a1 + 32), "isBeginningOfDocument") & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 56) + 8) + 24);
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    [a3 paragraphSpacing];
    *(*(*(a1 + 64) + 8) + 24) = v7;
    result = *(*(*(a1 + 64) + 8) + 24);
    if (result != 0.0 && [*(a1 + 32) isEndOfParagraph] && objc_msgSend(objc_msgSend(objc_msgSend(a2, "rangeInElement"), "endLocation"), "isEqual:", objc_msgSend(objc_msgSend(*(a1 + 32), "elementRange"), "endLocation")) && (objc_msgSend(*(a1 + 32), "isEndOfDocument") & 1) == 0)
    {
      v9 = *(*(a1 + 72) + 8);
      result = *(*(*(a1 + 64) + 8) + 24) + *(v9 + 24);
      *(v9 + 24) = result;
    }
  }

  return result;
}

- (int64_t)_baseWritingDirection
{
  _fallbackWritingDirection = [(NSTextLayoutManager *)[(NSTextLayoutFragment *)self textLayoutManager] _fallbackWritingDirection];
  if (!self->_isTextParagraph || (result = [(NSTextParagraph *)[(NSTextLayoutFragment *)self textParagraph] _resolvedBaseWritingDirectionWithFallbackDirection:_fallbackWritingDirection], result == -1))
  {

    return [NSParagraphStyle defaultWritingDirectionForLanguage:0];
  }

  return result;
}

- (void)_initializeTextAttachmentLayoutContext
{
  if (!self->_textAttachmentLayoutContext)
  {
    v4 = objc_alloc_init(_NSTextAttachmentLayoutContext);
    self->_textAttachmentLayoutContext = v4;

    [(_NSTextAttachmentLayoutContext *)v4 setTextLayoutFragment:self];
  }
}

- (void)invalidateLayout
{
  if ([(NSTextLayoutFragment *)self state]>= NSTextLayoutFragmentStateCalculatedUsageBounds)
  {
    [(NSTextLayoutFragment *)self setTextLineFragments:MEMORY[0x1E695E0F0]];
    [(NSTextLayoutFragment *)self setState:0];
    [(_NSTextAttachmentLayoutContext *)self->_textAttachmentLayoutContext reset];
    [(NSTextLayoutManager *)[(NSTextLayoutFragment *)self textLayoutManager] updateLayoutWithTextLayoutFragment:self addition:0];
    [(NSTextViewportLayoutController *)[(NSTextLayoutManager *)[(NSTextLayoutFragment *)self textLayoutManager] textViewportLayoutController] setNeedsLayout];

    v3 = MEMORY[0x1E695F058];
    self->_extraLineFragmentAttributes = 0;
    v4 = *(v3 + 16);
    self->_boundingRectForAnchoredAttachments.origin = *v3;
    self->_boundingRectForAnchoredAttachments.size = v4;

    self->_truncatedRanges = 0;
  }

  [(NSTextLayoutFragment *)self setTextLineFragmentsExcludingExtra:0];
}

- (id)anchoredTextAttachments
{
  objc_loadWeak(&self->_textElement);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return MEMORY[0x1E695E0F0];
  }

  Weak = objc_loadWeak(&self->_textElement);

  return [Weak anchoredTextAttachments];
}

- (void)_resetLayoutFragmentFrame
{
  [(NSTextLayoutFragment *)self invalidateLayout];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);

  [(NSTextLayoutFragment *)self setLayoutFragmentFrame:v3, v4, v5, v6];
}

- (void)_notifyTextLayoutManagerAboutTextAttachmentInvalidation
{
  textAttachmentLayoutContext = [(NSTextLayoutFragment *)self textAttachmentLayoutContext];

  [(_NSTextAttachmentLayoutContext *)textAttachmentLayoutContext notifyTextLayoutManagerAboutTextAttachmentInvalidation];
}

- (BOOL)_updateRangeInElement
{
  objc_sync_enter(self);
  if (self->_rangeInElement && (v3 = [(NSTextLayoutFragment *)self textElement], v4 = [(NSTextElement *)v3 textContentManager], v5 = [(NSTextElement *)v3 elementRange], offsetFromElementLocation = self->_offsetFromElementLocation, (v7 = offsetFromElementLocation - [(NSTextContentManager *)v4 offsetFromLocation:[(NSTextRange *)v5 location] toLocation:[(NSTextRange *)self->_rangeInElement location]]) != 0))
  {
    v9 = [(NSTextContentManager *)v4 locationFromLocation:[(NSTextRange *)self->_rangeInElement location] withOffset:v7];
    v10 = [(NSTextContentManager *)v4 locationFromLocation:[(NSTextRange *)self->_rangeInElement endLocation] withOffset:v7];
    v11 = 0;
    if (v9 && v10)
    {
      v11 = [[NSTextRange alloc] initWithLocation:v9 endLocation:v10];
    }

    self->_rangeInElement = v11;
    self->_contentRange = 0;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(self);
  return v8;
}

- (void)_setupResolvedTextAttachmentFrames
{
  v25 = *MEMORY[0x1E69E9840];
  textParagraph = [(NSTextLayoutFragment *)self textParagraph];
  objc_initWeak(&location, self);
  textAttachmentLayoutContext = self->_textAttachmentLayoutContext;
  if (textAttachmentLayoutContext)
  {
    if (![(_NSTextAttachmentLayoutContext *)textAttachmentLayoutContext hasResolvedAttachmentFrame])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      textLineFragments = [(NSTextLayoutFragment *)self textLineFragments];
      v6 = [(NSArray *)textLineFragments countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v6)
      {
        v7 = *v20;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v20 != v7)
            {
              objc_enumerationMutation(textLineFragments);
            }

            v9 = *(*(&v19 + 1) + 8 * i);
            [v9 typographicBounds];
            v11 = v10;
            [v9 typographicBounds];
            v13 = v12;
            characterRange = [v9 characterRange];
            v16 = v15;
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __58__NSTextLayoutFragment__setupResolvedTextAttachmentFrames__block_invoke;
            v17[3] = &unk_1E72658A8;
            v17[4] = textParagraph;
            objc_copyWeak(v18, &location);
            v18[1] = v11;
            v18[2] = v13;
            [v9 _enumerateTextAttachmentFramesInCharacterRange:characterRange usingBlock:{v16, v17}];
            objc_destroyWeak(v18);
          }

          v6 = [(NSArray *)textLineFragments countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v6);
      }
    }
  }

  objc_destroyWeak(&location);
}

void __58__NSTextLayoutFragment__setupResolvedTextAttachmentFrames__block_invoke(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = [v12 locationForCharacterIndex:a7 dataSourceLocationsOnly:0 actualRange:0];
  }

  else
  {
    v13 = [[NSCountableTextLocation alloc] initWithIndex:a7];
  }

  v15 = v13;
  v14 = [objc_loadWeak((a1 + 40)) _layoutInfoForTextAttachmentAtLocation:v13];
  if (v14)
  {
    v17.origin.x = a2 + *(a1 + 48);
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    [v14 setAttachmentFrameOrigin:{v17.origin.x, a3 + *(a1 + 56) - CGRectGetHeight(v17)}];
  }
}

- (NSTextLayoutFragment)initWithTextElement:(NSTextElement *)textElement range:(NSTextRange *)rangeInElement
{
  v9.receiver = self;
  v9.super_class = NSTextLayoutFragment;
  v6 = [(NSTextLayoutFragment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(NSTextLayoutFragment *)v6 setTextElement:textElement];
    if (rangeInElement && ![(NSTextRange *)rangeInElement isEqual:[(NSTextElement *)textElement elementRange]])
    {
      [(NSTextLayoutFragment *)v7 _setRangeInElement:rangeInElement];
    }

    v7->_rendersTextCorrectionMarkers = 1;
  }

  return v7;
}

- (void)setTextLayoutManager:(id)manager
{
  if (objc_loadWeak(&self->_textLayoutManager) != manager)
  {
    objc_storeWeak(&self->_textLayoutManager, manager);

    self->_textContainerForAnchoredAttachmentViewProviderCache = 0;
    anchoredAttachmentViewProviders = self->_anchoredAttachmentViewProviders;

    [(NSMapTable *)anchoredAttachmentViewProviders removeAllObjects];
  }
}

- (void)setTextElement:(id)element
{
  if (objc_loadWeak(&self->_textElement) != element)
  {
    objc_storeWeak(&self->_textElement, element);
    Weak = objc_loadWeak(&self->_textElement);
    if (Weak)
    {
      objc_loadWeak(&self->_textElement);
      objc_opt_class();
      LOBYTE(Weak) = objc_opt_isKindOfClass();
    }

    self->_isTextParagraph = Weak & 1;
    if (!element)
    {
      [(NSTextLayoutFragment *)self _setRangeInElement:0];

      self->_contentRange = 0;
    }
  }
}

NSCountableTextRange *__38__NSTextLayoutFragment_rangeInElement__block_invoke()
{
  result = [[NSCountableTextRange alloc] initWithRange:0, 0];
  rangeInElement_emptyRange = result;
  return result;
}

- (void)_setRangeInElement:(id)element
{
  objc_sync_enter(self);
  if (![(NSTextRange *)self->_rangeInElement isEqual:element])
  {
    textElement = [(NSTextLayoutFragment *)self textElement];

    elementCopy = element;
    self->_rangeInElement = elementCopy;
    if (elementCopy)
    {
      self->_offsetFromElementLocation = [(NSTextContentManager *)[(NSTextElement *)textElement textContentManager] offsetFromLocation:[(NSTextRange *)[(NSTextElement *)textElement elementRange] location] toLocation:[(NSTextRange *)self->_rangeInElement location]];
    }
  }

  objc_sync_exit(self);
}

- (NSTextLayoutFragment)initWithCoder:(NSCoder *)coder
{
  if ([(NSCoder *)coder allowsKeyedCoding])
  {
    [(NSTextLayoutFragment *)self setTextLayoutManager:[(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.textLayoutManager"]];
    [(NSTextLayoutFragment *)self setTextElement:[(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.textElement"]];
    [(NSTextLayoutFragment *)self _setRangeInElement:[(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.rangeInElement"]];
    [(NSTextLayoutFragment *)self setLayoutQueue:[(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.layoutQueue"]];
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    textElement = [(NSTextLayoutFragment *)self textElement];
    if (textElement)
    {
      v6 = textElement;
      [coder encodeObject:-[NSTextLayoutFragment textLayoutManager](self forKey:{"textLayoutManager"), @"NS.textLayoutManager"}];
      [coder encodeObject:v6 forKey:@"NS.textElement"];
      [coder encodeObject:self->_rangeInElement forKey:@"NS.rangeInElement"];
      layoutQueue = [(NSTextLayoutFragment *)self layoutQueue];

      [coder encodeObject:layoutQueue forKey:@"NS.layoutQueue"];
    }
  }
}

- (void)setLayoutFragmentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  objc_sync_enter(self);
  self->_layoutFragmentFrame.origin.x = x;
  self->_layoutFragmentFrame.origin.y = y;
  self->_layoutFragmentFrame.size.width = width;
  self->_layoutFragmentFrame.size.height = height;

  objc_sync_exit(self);
}

- (void)setLayoutFragmentFrameOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  objc_sync_enter(self);
  [(NSTextLayoutFragment *)self setLayoutFragmentFrame:x, y, self->_layoutFragmentFrame.size.width, self->_layoutFragmentFrame.size.height];

  objc_sync_exit(self);
}

- (void)drawAtPoint:(CGPoint)point inContext:(CGContextRef)context
{
  y = point.y;
  x = point.x;
  v24 = *MEMORY[0x1E69E9840];
  if ([(NSTextLayoutFragment *)self textElement])
  {
    if ([(NSTextLayoutFragment *)self state]<= NSTextLayoutFragmentStateCalculatedUsageBounds)
    {
      [(NSTextLayoutFragment *)self layout];
    }

    rangeInElement = self->_rangeInElement;
    if (!rangeInElement)
    {
      rangeInElement = [(NSTextElement *)[(NSTextLayoutFragment *)self textElement] elementRange];
    }

    v9 = [objc_loadWeak(&self->_textLayoutManager) _textAnimationContextForLocation:{-[NSTextRange location](rangeInElement, "location")}];
    v10 = v9;
    if (!v9 || [v9 _hasRenderableComponentsForRange:rangeInElement])
    {
      __NSTextLayoutFragmentConfigureForTextAnimationContext(self, v10);
      CGContextSaveGState(context);
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      textLineFragments = [(NSTextLayoutFragment *)self textLineFragments];
      v12 = [(NSArray *)textLineFragments countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(textLineFragments);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            if (!v10 || [v10 _hasRenderableComponentsForRange:{objc_msgSend(*(*(&v19 + 1) + 8 * i), "textLineFragmentRange")}])
            {
              [v15 typographicBounds];
              v17 = v16;
              [v15 typographicBounds];
              [v15 drawAtPoint:context inContext:{x + v17, y + v18}];
            }
          }

          v12 = [(NSArray *)textLineFragments countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      self->_textAnimationContextState._effectiveAnimationContext = 0;
      if (!self->_textAnimationContextState._inlineAnimationRanges && !self->_textAnimationContextState._ranges._inline[0].location)
      {
        NSZoneFree(0, 0);
        self->_textAnimationContextState._ranges._inline[0].location = 0;
      }

      CGContextRestoreGState(context);
    }
  }
}

- (NSTextLineFragment)textLineFragmentForTextLocation:(id)textLocation isUpstreamAffinity:(BOOL)isUpstreamAffinity
{
  v4 = isUpstreamAffinity;
  v33 = *MEMORY[0x1E69E9840];
  if ([(NSTextLayoutFragment *)self state]!= NSTextLayoutFragmentStateLayoutAvailable)
  {
    return 0;
  }

  textLineFragments = [(NSTextLayoutFragment *)self textLineFragments];
  v8 = [(NSArray *)textLineFragments count];
  if ([(NSTextRange *)[(NSTextLayoutFragment *)self rangeInElement] containsLocation:textLocation])
  {
    textParagraph = [(NSTextLayoutFragment *)self textParagraph];
    v10 = textParagraph;
    if (textParagraph)
    {
      v11 = [(NSTextParagraph *)textParagraph rangeForLocation:textLocation allowsTrailingEdge:1];
    }

    else
    {
      v11 = -[NSTextLayoutManager offsetFromLocation:toLocation:](-[NSTextLayoutFragment textLayoutManager](self, "textLayoutManager"), "offsetFromLocation:toLocation:", [-[NSTextLayoutFragment representedRange](self "representedRange")], textLocation);
    }

    v14 = v11;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v8 > 0xA)
      {
        if (v10)
        {
          v24 = [[__NSScratchTextLineFragment alloc] initWithString:[(NSAttributedString *)[(NSTextParagraph *)v10 attributedString] string] characterIndex:v11];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __75__NSTextLayoutFragment_textLineFragmentForTextLocation_isUpstreamAffinity___block_invoke;
          v26[3] = &unk_1E7265650;
          v26[4] = v24;
          v26[5] = v14;
          v27 = v4;
          v25 = [(NSArray *)textLineFragments indexOfObject:v24 inSortedRange:0 options:v8 usingComparator:256, v26];

          if (v25 < v8)
          {
            return [(NSArray *)textLineFragments objectAtIndexedSubscript:v25];
          }
        }
      }

      else
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        textLineFragments2 = [(NSTextLayoutFragment *)self textLineFragments];
        v17 = [(NSArray *)textLineFragments2 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v29;
LABEL_20:
          v20 = 0;
          while (1)
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(textLineFragments2);
            }

            v15 = *(*(&v28 + 1) + 8 * v20);
            characterRange = [(NSTextLineFragment *)v15 characterRange];
            v23 = v14 == characterRange + v22 && v4;
            if (v14 < characterRange + v22 || v23)
            {
              return v15;
            }

            if (v18 == ++v20)
            {
              v18 = [(NSArray *)textLineFragments2 countByEnumeratingWithState:&v28 objects:v32 count:16];
              v15 = 0;
              if (v18)
              {
                goto LABEL_20;
              }

              return v15;
            }
          }
        }
      }
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (![-[NSTextRange endLocation](-[NSTextLayoutFragment rangeInElement](self "rangeInElement")])
  {
    return 0;
  }

  if (![-[NSTextRange endLocation](-[NSTextElement elementRange](-[NSTextLayoutFragment textElement](self "textElement")])
  {
    return 0;
  }

  paragraphSeparatorRange = [(NSTextParagraph *)[(NSTextLayoutFragment *)self textParagraph] paragraphSeparatorRange];
  if (paragraphSeparatorRange)
  {
    if (![(NSTextRange *)paragraphSeparatorRange isEmpty])
    {
      return 0;
    }
  }

  return [(NSArray *)textLineFragments lastObject];
}

uint64_t __75__NSTextLayoutFragment_textLineFragmentForTextLocation_isUpstreamAffinity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  if (v6 == a3)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == a2)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    v9 = [v8 characterRange];
    v11 = *(a1 + 40);
    if (v11 >= v9 && v11 - v9 < v10)
    {
      return 0;
    }

    if (*(a1 + 48) == 1 && v11 == v9 + v10)
    {
      return 0;
    }
  }

  v14 = [a3 characterRange];
  v15 = [a2 characterRange];
  v16 = 1;
  if (v14 - v15 >= 1)
  {
    v16 = -1;
  }

  if (v14 == v15)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

- (NSTextLineFragment)textLineFragmentForVerticalOffset:(CGFloat)verticalOffset requiresExactMatch:(BOOL)requiresExactMatch
{
  v4 = requiresExactMatch;
  if ([(NSTextLayoutFragment *)self state]!= NSTextLayoutFragmentStateLayoutAvailable)
  {
    return 0;
  }

  textLineFragments = [(NSTextLayoutFragment *)self textLineFragments];
  v8 = [(NSArray *)textLineFragments count];
  if (v8 - 1 > 1)
  {
    v26 = [[__NSScratchTextLineFragment alloc] initWithVerticalOffset:verticalOffset];
    v27 = v26;
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __77__NSTextLayoutFragment_textLineFragmentForVerticalOffset_requiresExactMatch___block_invoke;
    v34 = &unk_1E7265678;
    if (v4)
    {
      v28 = 256;
    }

    else
    {
      v28 = 1280;
    }

    v35 = v26;
    v36 = verticalOffset;
    v29 = [(NSArray *)textLineFragments indexOfObject:v26 inSortedRange:0 options:v8 usingComparator:v28, &v31];

    if (v29 < v8)
    {
      return [(NSArray *)textLineFragments objectAtIndexedSubscript:v29, v31, v32, v33, v34];
    }

    return 0;
  }

  firstObject = [(NSArray *)textLineFragments firstObject];
  [(NSTextLineFragment *)firstObject typographicBounds];
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  if (v4 || CGRectGetMinY(*&v10) <= verticalOffset)
  {
    v37.origin.x = v14;
    v37.origin.y = v15;
    v37.size.width = v16;
    v37.size.height = v17;
    if (CGRectGetMinY(v37) > verticalOffset || (v38.origin.x = v14, v38.origin.y = v15, v38.size.width = v16, v38.size.height = v17, CGRectGetMaxY(v38) <= verticalOffset))
    {
      if (v8 < 2)
      {
        return 0;
      }

      firstObject = [(NSArray *)textLineFragments lastObject];
      [(NSTextLineFragment *)firstObject typographicBounds];
      v22 = v18;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      if (v4 || CGRectGetMinY(*&v18) <= verticalOffset)
      {
        v39.origin.x = v22;
        v39.origin.y = v23;
        v39.size.width = v24;
        v39.size.height = v25;
        if (CGRectGetMinY(v39) > verticalOffset)
        {
          return 0;
        }

        v40.origin.x = v22;
        v40.origin.y = v23;
        v40.size.width = v24;
        v40.size.height = v25;
        if (CGRectGetMaxY(v40) <= verticalOffset)
        {
          return 0;
        }
      }
    }
  }

  return firstObject;
}

uint64_t __77__NSTextLayoutFragment_textLineFragmentForVerticalOffset_requiresExactMatch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  if (v6 == a3)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == a2)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    [v8 typographicBounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
  }

  v17 = *(a1 + 40);
  v25.origin.x = v10;
  v25.origin.y = v12;
  v25.size.width = v14;
  v25.size.height = v16;
  if (v17 >= CGRectGetMinY(v25))
  {
    v18 = *(a1 + 40);
    v26.origin.x = v10;
    v26.origin.y = v12;
    v26.size.width = v14;
    v26.size.height = v16;
    if (v18 < CGRectGetMaxY(v26))
    {
      return 0;
    }
  }

  [a3 typographicBounds];
  MinY = CGRectGetMinY(v27);
  [a2 typographicBounds];
  v21 = CGRectGetMinY(v28);
  v22 = MinY - v21;
  v23 = vabdd_f64(MinY, v21);
  v24 = -1;
  if (v22 <= 0.0)
  {
    v24 = 1;
  }

  if (v23 <= 0.001)
  {
    return 0;
  }

  else
  {
    return v24;
  }
}

- (double)verticalOffsetOfTextLocation:(id)location withAffinity:(int64_t)affinity
{
  lastObject = [(NSTextLayoutFragment *)self textLineFragmentForTextLocation:location isUpstreamAffinity:affinity == 0];
  if (!lastObject)
  {
    if (-[NSTextLayoutFragment state](self, "state") < NSTextLayoutFragmentStateLayoutAvailable || !-[NSArray count](-[NSTextLayoutFragment textLineFragments](self, "textLineFragments"), "count") || [location compare:{objc_msgSend(-[NSTextLayoutFragment representedRange](self, "representedRange"), "location")}] == -1)
    {
      return 0.0;
    }

    lastObject = [(NSArray *)[(NSTextLayoutFragment *)self textLineFragments] lastObject];
  }

  [(NSTextLineFragment *)lastObject typographicBounds];

  return CGRectGetMinY(*&v7);
}

+ (NSSet)_validCoreTextRenderingAttributes
{
  if (_validCoreTextRenderingAttributes_onceToken != -1)
  {
    +[NSTextLayoutFragment _validCoreTextRenderingAttributes];
  }

  return _validCoreTextRenderingAttributes_coreTextAttributes;
}

uint64_t __57__NSTextLayoutFragment__validCoreTextRenderingAttributes__block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"NSColor", @"NSBackgroundColor", @"NSShadow", @"NSLink", 0}];
  _validCoreTextRenderingAttributes_coreTextAttributes = result;
  return result;
}

+ (id)layoutFragmentQueue
{
  if (layoutFragmentQueue_onceToken != -1)
  {
    +[NSTextLayoutFragment layoutFragmentQueue];
  }

  return layoutFragmentQueue_queue;
}

uint64_t __43__NSTextLayoutFragment_layoutFragmentQueue__block_invoke()
{
  layoutFragmentQueue_queue = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [layoutFragmentQueue_queue setName:@"com.apple.NSTextLayoutFragmentOperationQueue"];
  [layoutFragmentQueue_queue setQualityOfService:17];
  v0 = layoutFragmentQueue_queue;

  return [v0 setMaxConcurrentOperationCount:1];
}

- (const)_bidiLevelsAndResolvedBaseWritingDirectionPointer:(int64_t *)pointer
{
  if (!self->_isTextParagraph)
  {
    return 0;
  }

  textParagraph = [(NSTextLayoutFragment *)self textParagraph];
  _fallbackWritingDirection = [(NSTextLayoutManager *)[(NSTextLayoutFragment *)self textLayoutManager] _fallbackWritingDirection];

  return [(NSTextParagraph *)textParagraph _bidiLevelsForFallbackWritingDirection:_fallbackWritingDirection resolvedBaseWritingDirectionPointer:pointer];
}

- (id)_textContainerAtStringIndex:(int64_t)index
{
  textLayoutManager = [(NSTextLayoutFragment *)self textLayoutManager];
  if (!textLayoutManager)
  {
    return 0;
  }

  v6 = textLayoutManager;
  elementRange = [(NSTextElement *)[(NSTextLayoutFragment *)self textElement] elementRange];
  location = [(NSTextRange *)elementRange location];
  v9 = location;
  if (index >= 1)
  {
    if (self->_isTextParagraph)
    {
      v10 = [(NSTextParagraph *)[(NSTextLayoutFragment *)self textParagraph] locationForCharacterIndex:index dataSourceLocationsOnly:0 actualRange:0];
    }

    else
    {
      v10 = [(NSTextLayoutManager *)v6 locationFromLocation:location withOffset:index];
    }

    v9 = v10;
    if (v10 && (-[NSTextRange containsLocation:](elementRange, "containsLocation:", v10) || ([-[NSTextRange endLocation](elementRange "endLocation")] & 1) != 0))
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!location)
  {
    return 0;
  }

LABEL_11:

  return [(NSTextLayoutManager *)v6 textContainerForLocation:v9];
}

- (CGRect)coreTypesetter:(id)typesetter lineFragmentRectForProposedRect:(CGRect)rect atIndex:(int64_t)index writingDirection:(int64_t)direction remainingRect:(CGRect *)remainingRect
{
  indexCopy = index;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = [(NSTextLayoutFragment *)self _textContainerAtStringIndex:index];
  if (v15)
  {
    v16 = v15;
    textContentManager = [(NSTextLayoutManager *)[(NSTextLayoutFragment *)self textLayoutManager] textContentManager];
    if (textContentManager)
    {
      v18 = textContentManager;
      v19 = [(NSTextParagraph *)[(NSTextLayoutFragment *)self textParagraph] locationForCharacterIndex:indexCopy actualRange:0];
      if (v19)
      {
        indexCopy = [(NSTextContentManager *)v18 offsetFromLocation:[(NSTextRange *)[(NSTextContentManager *)v18 documentRange] location] toLocation:v19];
      }
    }

    [v16 lineFragmentRectForProposedRect:indexCopy atIndex:direction writingDirection:remainingRect remainingRect:{x, y, width, height}];
  }

  else
  {
    v20 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 8);
    v22 = *(MEMORY[0x1E695F058] + 16);
    v23 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (BOOL)coreTypesetter:(id)typesetter isSimpleRectangularTextContainerForStartingCharacterAtIndex:(int64_t)index
{
  v4 = [(NSTextLayoutFragment *)self _textContainerAtStringIndex:index];
  if (!v4)
  {
    return 1;
  }

  return [v4 isSimpleRectangularTextContainer];
}

- (int64_t)coreTypesetter:(id)typesetter baseWritingDirectionForRange:(_NSRange)range bidiLevelsPointer:(const char *)pointer
{
  v9 = [(NSTextLayoutFragment *)self _baseWritingDirection:typesetter];
  v7 = [(NSTextLayoutFragment *)self _bidiLevelsAndResolvedBaseWritingDirectionPointer:&v9];
  if (pointer)
  {
    *pointer = v7;
  }

  return v9;
}

- (id)_createTruncatedTextRangesFromRanges:(id)ranges characterIndexDelta:(int64_t)delta
{
  v30 = *MEMORY[0x1E69E9840];
  textParagraph = [(NSTextLayoutFragment *)self textParagraph];
  textContentManager = [(NSTextElement *)[(NSTextLayoutFragment *)self textElement] textContentManager];
  location = [(NSTextRange *)[(NSTextElement *)[(NSTextLayoutFragment *)self textElement] elementRange] location];
  if (!(textParagraph | location))
  {
    return 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [ranges countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v26;
  obj = ranges;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(obj);
      }

      rangeValue = [*(*(&v25 + 1) + 8 * i) rangeValue];
      v15 = v14;
      v16 = rangeValue + delta;
      if (textParagraph)
      {
        v17 = [textParagraph locationForCharacterIndex:v16 dataSourceLocationsOnly:0 actualRange:0];
        v18 = [textParagraph locationForCharacterIndex:v16 + v15 dataSourceLocationsOnly:0 actualRange:0];
      }

      else
      {
        v17 = [(NSTextContentManager *)textContentManager locationFromLocation:location withOffset:v16];
        v18 = [(NSTextContentManager *)textContentManager locationFromLocation:v17 withOffset:v15];
      }

      if (v17)
      {
        v19 = v18 == 0;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v20 = [[NSTextRange alloc] initWithLocation:v17 endLocation:v18];
        if (!v10)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v10 addObject:v20];
      }
    }

    v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v9);
  return v10;
}

uint64_t __31__NSTextLayoutFragment__layout__block_invoke_2(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = [a1[4] locationForCharacterIndex:a3 dataSourceLocationsOnly:0 actualRange:0];
  if (!*(a1[5] + 11) && [a2 objectForKeyedSubscript:@"CTAdaptiveImageProvider"] && objc_msgSend(objc_msgSend(a1[6], "string"), "characterAtIndex:", a3) == 65532)
  {
    v15 = a1[5];
    objc_sync_enter(v15);
    [a1[5] _initializeTextAttachmentLayoutContext];
    objc_sync_exit(v15);
  }

  else
  {
    v9 = [a2 objectForKeyedSubscript:@"NSAttachment"];
    if (v9)
    {
      v10 = v9;
      if ([objc_msgSend(a1[6] "string")] == 65532)
      {
        v11 = [a1[5] _layoutInfoForTextAttachmentAtLocation:v8];
        if ([v10 _isEmojiImage])
        {
          v12 = a1[6];
          v13 = *MEMORY[0x1E6965628];
          v14 = v10;
        }

        else
        {
          v16 = [v10 adaptiveImageGlyph];
          if (v16)
          {
            v14 = v16;
            v12 = a1[6];
            v17 = MEMORY[0x1E6965628];
          }

          else
          {
            v18 = [v11 runDelegate];
            if (!v18)
            {
              goto LABEL_15;
            }

            v14 = v18;
            v12 = a1[6];
            v17 = MEMORY[0x1E6965A50];
          }

          v13 = *v17;
        }

        [v12 addAttribute:v13 value:v14 range:{a3, a4}];
      }
    }
  }

LABEL_15:
  v19 = [a2 objectForKeyedSubscript:@"NSLink"];
  if (v19)
  {
    v20 = [a1[7] renderingAttributesForLink:v19 atLocation:v8];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 allKeysForObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
      if ([v22 count])
      {
        v23 = [v21 mutableCopy];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v24 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v24)
        {
          v25 = *v38;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v38 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v37 + 1) + 8 * i);
              [v23 removeObjectForKey:v27];
              [a1[6] removeAttribute:v27 range:{a3, a4}];
            }

            v24 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
          }

          while (v24);
        }

        v21 = v23;
      }

      else
      {
        v23 = 0;
      }

      [a1[6] addAttributes:v21 range:{a3, a4}];
    }
  }

  result = [a2 objectForKeyedSubscript:@"NSSuperScript"];
  v29 = result;
  if (result)
  {
    if (!a2)
    {
      goto LABEL_33;
    }

    v30 = [a2 objectForKey:@"NSFont"];
    if ([objc_msgSend(a2 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
    {
      v30 = [v30 verticalFont];
    }

    if (!v30)
    {
LABEL_33:
      v30 = NSDefaultFont();
      if (!v30)
      {
        v30 = NSDefaultFont();
      }
    }

    [v30 _defaultLineHeightForUILayout];
    v32 = v31;
    v33 = [v29 integerValue];
    v34 = [a2 objectForKeyedSubscript:@"NSBaselineOffset"];
    v35 = ceil((v32 + 0.0) * v33 * 0.4);
    if (v34)
    {
      [v34 doubleValue];
      v35 = v35 + v36;
    }

    return [a1[6] addAttribute:@"NSBaselineOffset" value:objc_msgSend(MEMORY[0x1E696AD98] range:{"numberWithDouble:", v35), a3, a4}];
  }

  return result;
}

uint64_t __31__NSTextLayoutFragment__layout__block_invoke_3(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) == a2 || [objc_msgSend(objc_msgSend(a2 "rangeInElement")] != -1)
  {
    return 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [a2 anchoredTextAttachments];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        [v10 frame];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        if ([v10 excludesText])
        {
          v19 = *(*(*(a1 + 40) + 8) + 40);
          if (!v19)
          {
            *(*(*(a1 + 40) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
            v19 = *(*(*(a1 + 40) + 8) + 40);
          }

          *v24 = v12;
          *&v24[1] = v14;
          *&v24[2] = v16;
          *&v24[3] = v18;
          [v19 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", v24, "{CGRect={CGPoint=dd}{CGSize=dd}}")}];
        }

        if (*(a1 + 72) == 1)
        {
          v31.origin.x = v12;
          v31.origin.y = v14;
          v31.size.width = v16;
          v31.size.height = v18;
          if (CGRectGetMaxY(v31) > *(a1 + 64))
          {
            v20 = *(*(*(a1 + 48) + 8) + 40);
            if (!v20)
            {
              *(*(*(a1 + 48) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
              v20 = *(*(*(a1 + 48) + 8) + 40);
            }

            *v23 = v12;
            *&v23[1] = v14;
            *&v23[2] = v16;
            *&v23[3] = v18;
            [v20 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", v23, "{CGRect={CGPoint=dd}{CGSize=dd}}")}];
            v32.origin.x = v12;
            v32.origin.y = v14;
            v32.size.width = v16;
            v32.size.height = v18;
            v21 = CGRectGetMaxY(v32) - *(a1 + 64);
            v22 = *(*(a1 + 56) + 8);
            if (v21 > *(v22 + 24))
            {
              *(v22 + 24) = v21;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  return 1;
}

uint64_t __31__NSTextLayoutFragment__layout__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 rectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11 + *(*(*(a1 + 40) + 8) + 24);
  v13 = *(*(*(a1 + 48) + 8) + 40);
  *v15 = v5;
  *&v15[1] = v12;
  *&v15[2] = v7;
  *&v15[3] = v9;
  [v13 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", v15, "{CGRect={CGPoint=dd}{CGSize=dd}}")}];
  return [objc_msgSend(*(a1 + 32) objectAtIndexedSubscript:{a3), "_updateLayoutFrame:", v6, v12, v8, v10}];
}

uint64_t __31__NSTextLayoutFragment__layout__block_invoke_7(uint64_t a1, void *a2)
{
  [a2 typographicBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10 - CGRectGetMinX(*(*(*(a1 + 32) + 8) + 32));

  return [a2 setTypographicBounds:{v11, v5, v7, v9}];
}

- (void)invalidateExtraLineFragment
{
  if ([(NSTextLayoutFragment *)self state]>= NSTextLayoutFragmentStateCalculatedUsageBounds && ![(NSArray *)self->_truncatedRanges count])
  {
    textLineFragments = [(NSTextLayoutFragment *)self textLineFragments];
    v4 = [(NSArray *)textLineFragments count];
    [(NSTextLayoutFragment *)self setState:1];
    [(NSTextLayoutManager *)[(NSTextLayoutFragment *)self textLayoutManager] updateLayoutWithTextLayoutFragment:self addition:0];
    if (v4 >= 2 && [-[NSArray lastObject](textLineFragments "lastObject")])
    {
      textLineFragments = [(NSArray *)textLineFragments subarrayWithRange:0, v4 - 1];
      [(NSTextLayoutFragment *)self layoutFragmentFrame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      [-[NSArray lastObject](textLineFragments "lastObject")];
      MaxY = CGRectGetMaxY(v13);
      [(NSTextLayoutFragment *)self bottomMargin];
      [(NSTextLayoutFragment *)self setLayoutFragmentFrame:v6, v8, v10, MaxY + v12];
    }

    if (![-[NSTextLayoutFragment anchoredTextAttachments](self "anchoredTextAttachments")])
    {
      [(NSTextLayoutFragment *)self setTextLineFragmentsExcludingExtra:textLineFragments];
    }

    [(NSTextLayoutFragment *)self setTextLineFragments:MEMORY[0x1E695E0F0]];
    [(NSTextViewportLayoutController *)[(NSTextLayoutManager *)[(NSTextLayoutFragment *)self textLayoutManager] textViewportLayoutController] setNeedsLayout];

    self->_extraLineFragmentAttributes = 0;
  }
}

- (NSString)description
{
  if ([(NSTextLayoutFragment *)self textElement])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    rangeInElement = [(NSTextLayoutFragment *)self rangeInElement];
    state = [(NSTextLayoutFragment *)self state];
    if (state >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", state];
    }

    else
    {
      v7 = off_1E7265918[state];
    }

    if ([(NSTextLayoutFragment *)self state])
    {
      [(NSTextLayoutFragment *)self layoutFragmentFrame];
      v37 = NSStringFromRect(v43);
    }

    else
    {
      v37 = @"{}";
    }

    return [v3 stringWithFormat:@"%@: %p range=%@ layoutState=%@ frame=%@", v4, self, rangeInElement, v7, v37, v39];
  }

  else
  {
    [(NSTextLayoutFragment *)self sourceBoundingRect];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(NSTextLayoutFragment *)self destinationBoundingRect];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = MEMORY[0x1E696AEC0];
    v25 = objc_opt_class();
    animationType = [(NSTextLayoutFragment *)self animationType];
    v27 = &stru_1F01AD578;
    if (animationType)
    {
      if (animationType)
      {
        v28 = @"Dissolve";
      }

      else
      {
        v28 = &stru_1F01AD578;
      }

      v29 = (animationType & 6) == 0 || (animationType & 1) == 0;
      v30 = @"|";
      if (v29)
      {
        v31 = &stru_1F01AD578;
      }

      else
      {
        v31 = @"|";
      }

      v32 = @"Translate";
      if ((animationType & 2) == 0)
      {
        v32 = &stru_1F01AD578;
      }

      if ((animationType & 6) != 6)
      {
        v30 = &stru_1F01AD578;
      }

      v33 = @"Resize";
      if ((animationType & 4) == 0)
      {
        v33 = &stru_1F01AD578;
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@%@%@%@%@]", v28, v31, v32, v30, v33];
    }

    v40.location = [(NSTextLayoutFragment *)self characterRange];
    v34 = NSStringFromRange(v40);
    [(NSTextLayoutFragment *)self sourceBoundingRect];
    v35 = NSStringFromRect(v41);
    v42.origin.x = v9;
    v42.origin.y = v11;
    v42.size.width = v13;
    v42.size.height = v15;
    v45.origin.x = v17;
    v45.origin.y = v19;
    v45.size.width = v21;
    v45.size.height = v23;
    if (NSEqualRects(v42, v45))
    {
      v36 = &stru_1F01AD578;
    }

    else
    {
      v44.origin.x = v17;
      v44.origin.y = v19;
      v44.size.width = v21;
      v44.size.height = v23;
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@" destination=%@", NSStringFromRect(v44)];
    }

    return [v24 stringWithFormat:@"%@: %p %@ range=%@ source=%@%@", v25, self, v27, v34, v35, v36];
  }
}

- (BOOL)isCountableDataSource
{
  textLayoutManager = [(NSTextLayoutFragment *)self textLayoutManager];

  return [(NSTextLayoutManager *)textLayoutManager isCountableDataSource];
}

- (id)locationFromLocation:(id)location withOffset:(int64_t)offset
{
  textLayoutManager = [(NSTextLayoutFragment *)self textLayoutManager];

  return [(NSTextLayoutManager *)textLayoutManager locationFromLocation:location withOffset:offset];
}

- (int64_t)offsetFromLocation:(id)location toLocation:(id)toLocation
{
  textLayoutManager = [(NSTextLayoutFragment *)self textLayoutManager];

  return [(NSTextLayoutManager *)textLayoutManager offsetFromLocation:location toLocation:toLocation];
}

- (NSTextLocation)baseLocation
{
  rangeInElement = [(NSTextLayoutFragment *)self rangeInElement];

  return [(NSTextRange *)rangeInElement location];
}

- (void)enumerateRenderingAttributesFromLocation:(id)location reverse:(BOOL)reverse usingBlock:(id)block
{
  reverseCopy = reverse;
  textLayoutManager = [(NSTextLayoutFragment *)self textLayoutManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__NSTextLayoutFragment_enumerateRenderingAttributesFromLocation_reverse_usingBlock___block_invoke;
  v10[3] = &unk_1E72657E0;
  v10[4] = self;
  v10[5] = block;
  [(NSTextLayoutManager *)textLayoutManager enumerateTemporaryAttributesFromLocation:location reverse:reverseCopy usingBlock:v10];
}

uint64_t __84__NSTextLayoutFragment_enumerateRenderingAttributesFromLocation_reverse_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  result = [a4 textRangeByIntersectingWithTextRange:{objc_msgSend(*(a1 + 32), "rangeInElement")}];
  if (result)
  {
    v8 = *(*(a1 + 40) + 16);

    return v8();
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

- (id)_coreTextAttributes
{
  if ([(NSTextLayoutFragment *)self rendersTextCorrectionMarkers])
  {
    [(NSTextLayoutFragment *)self textLayoutManager];
    v3 = objc_opt_class();

    return [v3 validRenderingAttributes];
  }

  else
  {
    v5 = objc_opt_class();

    return [v5 _validCoreTextRenderingAttributes];
  }
}

- (id)_textAttributesAffectingLayout
{
  if (_textAttributesAffectingLayout_onceToken != -1)
  {
    [NSTextLayoutFragment _textAttributesAffectingLayout];
  }

  return _textAttributesAffectingLayout_coreTextAttributes;
}

uint64_t __54__NSTextLayoutFragment__textAttributesAffectingLayout__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  result = [v0 initWithObjects:{@"NSFont", @"NSParagraphStyle", @"NSLigature", @"NSKern", @"CTTracking", @"NSAttachment", @"NSBaselineOffset", @"NSObliqueness", @"NSExpansion", @"NSWritingDirection", @"CTVerticalForms", @"NSSuperScript", NSGlyphInfoAttributeName, 0}];
  _textAttributesAffectingLayout_coreTextAttributes = result;
  return result;
}

- (void)setRenderingAttribute:(id)attribute value:(id)value forTextRange:(id)range
{
  renderingAttributesTable = self->_renderingAttributesTable;
  if (value)
  {
    if (!renderingAttributesTable)
    {
      renderingAttributesTable = [(_NSTextRunStorage *)[_NSTextAttributeStorage alloc] initWithDataSource:self];
      self->_renderingAttributesTable = renderingAttributesTable;
    }
  }

  else if (!renderingAttributesTable)
  {
    return;
  }

  if (-[_NSTextAttributeStorage setAttribute:value:forTextRange:](renderingAttributesTable, "setAttribute:value:forTextRange:", attribute, value, range) && -[NSTextLayoutFragment state](self, "state") == NSTextLayoutFragmentStateLayoutAvailable && [-[NSTextLayoutFragment _textAttributesAffectingLayout](self "_textAttributesAffectingLayout")])
  {

    [(NSTextLayoutFragment *)self invalidateLayout];
  }
}

- (void)setRenderingAttributes:(id)attributes forTextRange:(id)range
{
  if (!self->_renderingAttributesTable)
  {
    self->_renderingAttributesTable = [(_NSTextRunStorage *)[_NSTextAttributeStorage alloc] initWithDataSource:self];
  }

  if ([(NSTextLayoutFragment *)self state]== NSTextLayoutFragmentStateLayoutAvailable)
  {
    _textAttributesAffectingLayout = [(NSTextLayoutFragment *)self _textAttributesAffectingLayout];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__NSTextLayoutFragment_setRenderingAttributes_forTextRange___block_invoke;
    v9[3] = &unk_1E7265808;
    v9[4] = _textAttributesAffectingLayout;
    v9[5] = &v10;
    [attributes enumerateKeysAndObjectsWithOptions:1 usingBlock:v9];
    if (*(v11 + 24) == 1)
    {
      [(NSTextLayoutFragment *)self invalidateLayout];
    }

    _Block_object_dispose(&v10, 8);
  }

  v8 = [NSAttributeDictionary newWithDictionary:attributes];
  [(_NSTextRunStorage *)self->_renderingAttributesTable setObject:v8 forRange:range];
}

uint64_t __60__NSTextLayoutFragment_setRenderingAttributes_forTextRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)invalidateRenderingAttributesForTextRange:(id)range
{
  [(_NSTextRunStorage *)self->_renderingAttributesTable invalidateElementsInRange:range delta:0];

  [(NSTextLayoutFragment *)self set_renderingAttributesValidated:0];
}

- (void)layoutManagerDidSetTemporaryAttributes:(id)attributes forTextRange:(id)range
{
  if ([(NSTextLayoutFragment *)self state:attributes]== NSTextLayoutFragmentStateLayoutAvailable)
  {
    _textAttributesAffectingLayout = [(NSTextLayoutFragment *)self _textAttributesAffectingLayout];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__NSTextLayoutFragment_layoutManagerDidSetTemporaryAttributes_forTextRange___block_invoke;
    v7[3] = &unk_1E7265808;
    v7[4] = _textAttributesAffectingLayout;
    v7[5] = &v8;
    [attributes enumerateKeysAndObjectsWithOptions:1 usingBlock:v7];
    if (*(v9 + 24) == 1)
    {
      [(NSTextLayoutFragment *)self invalidateLayout];
    }

    _Block_object_dispose(&v8, 8);
  }
}

uint64_t __76__NSTextLayoutFragment_layoutManagerDidSetTemporaryAttributes_forTextRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (id)_resolvedRenderingAttributesForCharacterIndex:(int64_t)index effectiveRange:(_NSRange *)range
{
  textParagraph = [(NSTextLayoutFragment *)self textParagraph];
  textLayoutManager = [(NSTextLayoutFragment *)self textLayoutManager];
  rangeInElement = [(NSTextLayoutFragment *)self rangeInElement];
  v10 = rangeInElement;
  if (textParagraph)
  {
    v11 = [(NSTextParagraph *)textParagraph locationForCharacterIndex:index dataSourceLocationsOnly:0 actualRange:0];
  }

  else
  {
    v11 = [(NSTextLayoutManager *)textLayoutManager locationFromLocation:[(NSTextRange *)rangeInElement location] withOffset:index];
  }

  v12 = v11;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3052000000;
  v54 = __Block_byref_object_copy__0;
  v55 = __Block_byref_object_dispose__0;
  v56 = 0;
  v13 = &v45;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3052000000;
  v48 = __Block_byref_object_copy__0;
  v49 = __Block_byref_object_dispose__0;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  if (!v11)
  {
    goto LABEL_26;
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __85__NSTextLayoutFragment__resolvedRenderingAttributesForCharacterIndex_effectiveRange___block_invoke;
  v40[3] = &unk_1E7265830;
  v40[4] = v11;
  v40[5] = &v51;
  v40[6] = &v45;
  v40[7] = &v41;
  [(NSTextLayoutFragment *)self enumerateRenderingAttributesFromLocation:v11 reverse:0 usingBlock:v40];
  if (index >= 1 && (v42[3] & 1) == 0)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __85__NSTextLayoutFragment__resolvedRenderingAttributesForCharacterIndex_effectiveRange___block_invoke_2;
    v39[3] = &unk_1E7265858;
    v39[4] = v10;
    v39[5] = &v45;
    [(NSTextLayoutFragment *)self enumerateRenderingAttributesFromLocation:v12 reverse:1 usingBlock:v39];
  }

  v38 = v10;
  v14 = [(NSTextLayoutManager *)textLayoutManager _selectionAndMarkedTextAttributesForLocation:v12 inTextRange:v10 effectiveTextRange:&v38];
  if (v38 && !-[NSTextRange isEmpty](v38, "isEmpty") && ([v46[5] isEqual:v38] & 1) == 0)
  {
    v15 = [v14 count];
    v16 = v38;
    if (v15)
    {
      goto LABEL_12;
    }

    if (![(NSTextRange *)v10 isEqual:v38])
    {
      v37 = v46[5];
      if (v37 && ([v37 isEmpty] & 1) == 0)
      {
        v16 = [v46[5] textRangeByIntersectingWithTextRange:v38];
      }

      else
      {
        v16 = v38;
      }

LABEL_12:
      if (v16)
      {

        v17 = v16;
        v46[5] = v17;
      }
    }
  }

  if ([v14 count] && !objc_msgSend(v14, "objectForKeyedSubscript:", NSMarkedClauseSegmentAttributeName))
  {
    v18 = [v14 objectForKeyedSubscript:@"NSBackgroundColor"];
    if (v18)
    {
      if ([v18 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
      {
        v18 = 0;
      }

      else
      {
        v18 = [v14 mutableCopy];
        [v18 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKeyedSubscript:{"null"), @"NSBackgroundColor"}];
        v14 = v18;
      }
    }

    v19 = [v52[5] count];
    v20 = v52[5];
    if (v19)
    {
      v21 = [v20 mutableCopy];
      [v21 addEntriesFromDictionary:v14];
    }

    else
    {

      v21 = v14;
    }

    v52[5] = v21;
  }

  v13 = v46;
LABEL_26:
  if (range)
  {
    *range = xmmword_18E856180;
    v22 = v13[5];
    if (v22)
    {
      textContentManager = [(NSTextLayoutManager *)textLayoutManager textContentManager];
      location = [(NSTextRange *)v10 location];
      location2 = [v22 location];
      if (textParagraph)
      {
        v26 = [(NSTextParagraph *)textParagraph rangeForLocation:location2 allowsTrailingEdge:0];
        v27 = 0x7FFFFFFFFFFFFFFFLL;
        if (v26 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v28 = -[NSTextParagraph rangeForLocation:allowsTrailingEdge:](textParagraph, "rangeForLocation:allowsTrailingEdge:", [v22 endLocation], 1);
LABEL_34:
          if (v28 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v29 = 0;
          }

          else
          {
            v29 = v28 - v26;
          }

          if (v28 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v27 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v26;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v26 = [(NSTextContentManager *)textContentManager offsetFromLocation:location toLocation:location2];
        v27 = 0x7FFFFFFFFFFFFFFFLL;
        if (v26 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v28 = -[NSTextContentManager offsetFromLocation:toLocation:](textContentManager, "offsetFromLocation:toLocation:", location, [v22 endLocation]);
          goto LABEL_34;
        }
      }

      v29 = 0;
LABEL_40:
      range->location = v27;
      range->length = v29;
      v13 = v46;
    }
  }

  if (textLayoutManager)
  {
    rendersBackgroundColorAttribute = [(NSTextLayoutManager *)textLayoutManager rendersBackgroundColorAttribute];
    v31 = v52;
    if (!rendersBackgroundColorAttribute)
    {
      v32 = [v52[5] objectForKeyedSubscript:@"NSBackgroundColor"];
      v31 = v52;
      if (!v32)
      {
        v33 = [v52[5] mutableCopy];
        [v33 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKeyedSubscript:{"null"), @"NSBackgroundColor"}];

        v31 = v52;
        v52[5] = v33;
      }
    }
  }

  else
  {
    v31 = v52;
  }

  v34 = v31[5];
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = MEMORY[0x1E695E0F8];
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);
  return v35;
}

NSTextRange *__85__NSTextLayoutFragment__resolvedRenderingAttributesForCharacterIndex_effectiveRange___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  if ([a4 containsLocation:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 40) = a3;
    result = a4;
LABEL_5:
    *(*(*(a1 + 48) + 8) + 40) = result;
    goto LABEL_6;
  }

  result = [*(a1 + 32) compare:{objc_msgSend(a4, "location")}];
  if (result == -1)
  {
    result = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", *(a1 + 32), [a4 location]);
    goto LABEL_5;
  }

LABEL_6:
  *a5 = 1;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  return result;
}

NSTextRange *__85__NSTextLayoutFragment__resolvedRenderingAttributesForCharacterIndex_effectiveRange___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  result = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [a4 endLocation], objc_msgSend(*(a1 + 32), "endLocation"));
  *(*(*(a1 + 40) + 8) + 40) = result;
  *a5 = 1;
  return result;
}

- (id)_layoutInfoForTextAttachmentAtLocation:(id)location
{
  rangeInElement = self->_rangeInElement;
  if (!rangeInElement)
  {
    rangeInElement = [(NSTextElement *)[(NSTextLayoutFragment *)self textElement] elementRange];
  }

  if (![(NSTextRange *)rangeInElement containsLocation:location])
  {
    return 0;
  }

  textParagraph = [(NSTextLayoutFragment *)self textParagraph];
  if (!textParagraph)
  {
    return 0;
  }

  v7 = textParagraph;
  v8 = [(NSTextParagraph *)textParagraph rangeForLocation:location allowsTrailingEdge:0];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = [(NSAttributedString *)[(NSTextParagraph *)v7 attributedString] attributesAtIndex:v8 effectiveRange:0];
  if (![(NSDictionary *)v9 objectForKeyedSubscript:@"NSAttachment"])
  {
    return 0;
  }

  objc_sync_enter(self);
  [(NSTextLayoutFragment *)self _initializeTextAttachmentLayoutContext];
  v10 = [(_NSTextAttachmentLayoutContext *)self->_textAttachmentLayoutContext textAttachmentLayoutInfoForLocation:location attributes:v9];
  objc_sync_exit(self);
  return v10;
}

- (id)textAttachmentViewProviderForLocation:(id)location
{
  v3 = [(NSTextLayoutFragment *)self _layoutInfoForTextAttachmentAtLocation:location];

  return [v3 textAttachmentViewProvider];
}

- (void)setTextAttachmentProvider:(id)provider forLocation:(id)location
{
  v5 = [(NSTextLayoutFragment *)self _layoutInfoForTextAttachmentAtLocation:location];

  [v5 setTextAttachmentViewProvider:provider];
}

- (void)enumerateViewportElementsFromLocation:(id)location options:(int64_t)options usingBlock:(id)block
{
  if ([(NSTextLayoutFragment *)self supportsSubelements])
  {
    textAttachmentLayoutContext = self->_textAttachmentLayoutContext;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__NSTextLayoutFragment_enumerateViewportElementsFromLocation_options_usingBlock___block_invoke;
    v10[3] = &unk_1E7265880;
    v10[4] = block;
    [(_NSTextAttachmentLayoutContext *)textAttachmentLayoutContext enumerateViewportElementsFromLocation:location options:options usingBlock:v10];
  }
}

- (CGRect)frameForTextAttachmentAtLocation:(id)location
{
  v4 = [(NSTextLayoutFragment *)self _layoutInfoForTextAttachmentAtLocation:location];
  if (v4)
  {
    v5 = v4;
    [(NSTextLayoutFragment *)self _setupResolvedTextAttachmentFrames];
    [v5 resolvedAttachmentFrame];
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)attributedStringForTruncatedRange:(id)range attributes:(id)attributes
{
  objc_sync_enter(self);
  v7 = [(NSMutableDictionary *)self->_truncationTokenTable objectForKey:attributes];
  if (!v7)
  {
    if ([attributes objectForKeyedSubscript:@"NSFont"])
    {
      IsVertical = CTFontIsVertical();
    }

    else
    {
      IsVertical = 0;
    }

    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (IsVertical)
    {
      v10 = @"︙";
    }

    else
    {
      v10 = @"…";
    }

    v7 = [v9 initWithString:v10 attributes:attributes];
    truncationTokenTable = self->_truncationTokenTable;
    if (!truncationTokenTable)
    {
      truncationTokenTable = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_truncationTokenTable = truncationTokenTable;
    }

    [(NSMutableDictionary *)truncationTokenTable setObject:v7 forKey:attributes];
  }

  objc_sync_exit(self);
  result = [(NSTextLayoutManager *)[(NSTextLayoutFragment *)self textLayoutManager] attributedStringForTruncatedRange:range defaultAttributedString:v7];
  if (!result)
  {
    return v7;
  }

  return result;
}

- (id)coreTypesetter:(id)typesetter attributedStringForTruncatedCharacterRange:(_NSRange *)range attributes:(id)attributes originalLineRef:(__CTLine *)ref
{
  v9 = [(NSTextLayoutFragment *)self textParagraph:typesetter];
  textContentManager = [(NSTextElement *)[(NSTextLayoutFragment *)self textElement] textContentManager];
  location = [(NSTextRange *)[(NSTextElement *)[(NSTextLayoutFragment *)self textElement] elementRange] location];
  if (!textContentManager)
  {
    return 0;
  }

  location = range->location;
  length = range->length;
  if (v9)
  {
    v14 = [(NSTextParagraph *)v9 locationForCharacterIndex:range->location dataSourceLocationsOnly:0 actualRange:0];
    v15 = [(NSTextParagraph *)v9 locationForCharacterIndex:length + location dataSourceLocationsOnly:0 actualRange:0];
  }

  else
  {
    v14 = [(NSTextContentManager *)textContentManager locationFromLocation:location withOffset:range->location];
    v15 = [(NSTextContentManager *)textContentManager locationFromLocation:v14 withOffset:length];
  }

  if (!v14 || !v15)
  {
    return 0;
  }

  v16 = [[NSTextRange alloc] initWithLocation:v14 endLocation:v15];
  v17 = [(NSTextLayoutFragment *)self attributedStringForTruncatedRange:v16 attributes:attributes];

  return v17;
}

- (id)lineBreaks
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(NSTextLayoutFragment *)self layout];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  textLineFragments = [(NSTextLayoutFragment *)self textLineFragments];
  v5 = [(NSArray *)textLineFragments countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(textLineFragments);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        characterRange = [v9 characterRange];
        v12 = characterRange + v11;
        isHyphenated = [v9 isHyphenated];
        v15[0] = v12;
        v15[1] = 0;
        v16 = isHyphenated;
        memset(v17, 0, sizeof(v17));
        [v3 addObject:{objc_msgSend(MEMORY[0x1E696B098], "UIF_valueWithLineBreakContext:", v15)}];
      }

      v6 = [(NSArray *)textLineFragments countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSTextLayoutFragment)layoutFragmentWithKeyframe:(id)keyframe
{
  v5 = [[NSTextLayoutFragment alloc] initWithTextElement:[(NSTextLayoutFragment *)self textElement] range:[(NSTextLayoutFragment *)self rangeInElement]];
  [(NSTextLayoutFragment *)v5 setKeyframe:keyframe];
  [(NSTextLayoutFragment *)self layoutFragmentFrameOrigin];
  [(NSTextLayoutFragment *)v5 setLayoutFragmentFrameOrigin:?];
  [(NSTextLayoutFragment *)v5 setTextLayoutManager:[(NSTextLayoutFragment *)self textLayoutManager]];
  [(NSTextLayoutFragment *)v5 setLayoutQueue:[(NSTextLayoutFragment *)self layoutQueue]];
  [(NSTextLayoutFragment *)v5 setForcedLineBreaks:[(NSTextLayoutFragment *)self lineBreaks]];
  [(NSTextLayoutFragment *)v5 layout];

  return v5;
}

- (id)_renderingAttributesForTextAnimationContextComponent:(unint64_t)component range:(_NSRange)range attributes:(id)attributes effectiveRange:(_NSRange *)effectiveRange
{
  length = range.length;
  location = range.location;
  if (self->_textAnimationContextState._effectiveAnimationContext)
  {
    p_ranges = &self->_textAnimationContextState._ranges;
    if ((self->_textAnimationContextState._inlineAnimationRanges || (p_ranges = p_ranges->_inline[0].location) != 0) && ((v13 = p_ranges->_inline[0], p_ranges->_inline[0].location == 0x7FFFFFFFFFFFFFFFLL) ? (v14 = v13.length == 0) : (v14 = 0), !v14))
    {
      v15 = location + range.length;
      p_length = &p_ranges->_inline[1].length;
      v17 = 128;
      while (1)
      {
        if (v13.location >= v15)
        {
LABEL_16:
          v20 = 1;
          goto LABEL_19;
        }

        v32.location = location;
        v32.length = length;
        v18 = NSIntersectionRange(v32, v13);
        if (v18.length)
        {
          break;
        }

        v13 = *(p_length - 1);
        p_length += 2;
        if (v13.location == 0x7FFFFFFFFFFFFFFFLL && v13.length == 0)
        {
          goto LABEL_16;
        }
      }

      if (v18.location == location)
      {
        v17 = 120;
      }

      else
      {
        v17 = 128;
      }

      v20 = v18.location != location;
      if (v18.location == location)
      {
        length = v18.length;
      }

      else
      {
        location = v18.location;
        length = v18.length - v15 + v18.location;
      }
    }

    else
    {
      v20 = 1;
      v17 = 128;
    }

LABEL_19:
    v21 = *(&self->super.isa + v17);
  }

  else
  {
    v20 = 1;
    v21 = 0xFFFFLL;
  }

  effectiveRange->location = location;
  effectiveRange->length = length;
  v22 = v21 & component;
  if (!v22)
  {
    return 0;
  }

  effectiveAnimationContext = self->_textAnimationContextState._effectiveAnimationContext;
  if (effectiveAnimationContext)
  {
    snapshotAttributeOverrides = [(NSTextAnimationContext *)self->_textAnimationContextState._effectiveAnimationContext snapshotAttributeOverrides];
    if (snapshotAttributeOverrides)
    {
      v25 = snapshotAttributeOverrides[2](snapshotAttributeOverrides, effectiveAnimationContext, v22, v20);
      if ([v25 count])
      {
        v26 = [attributes mutableCopy];
        [v26 addEntriesFromDictionary:v25];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __109__NSTextLayoutFragment__renderingAttributesForTextAnimationContextComponent_range_attributes_effectiveRange___block_invoke;
        v31[3] = &unk_1E72658D0;
        v31[4] = v26;
        [v26 enumerateKeysAndObjectsUsingBlock:v31];
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      if ((v22 & 2) != 0 || ![attributes objectForKeyedSubscript:@"NSBackgroundColor"])
      {
        v26 = 0;
      }

      else
      {
        v26 = [attributes mutableCopy];
        [v26 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKeyedSubscript:{"null"), @"NSBackgroundColor"}];
      }

      if ((v22 & 3) == 0 && [attributes objectForKeyedSubscript:@"NSShadow"])
      {
        if (!v26)
        {
          v26 = [attributes mutableCopy];
        }

        [v26 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKeyedSubscript:{"null"), @"NSShadow"}];
      }

      if ((v22 & 1) == 0)
      {
        applicationFrameworkContext = [(NSTextLayoutManager *)[(NSTextLayoutFragment *)self textLayoutManager] applicationFrameworkContext];
        if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
        {
          v28 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", applicationFrameworkContext];
        }

        else
        {
          v28 = +[NSTextGraphicsContextProvider __defaultColorClass];
        }

        clearColor = [(objc_class *)v28 clearColor];
        if (!v26)
        {
          v26 = [attributes mutableCopy];
        }

        [v26 setObject:clearColor forKeyedSubscript:@"NSColor"];
      }
    }

    if (v26)
    {
      return v26;
    }
  }

  return attributes;
}

uint64_t __109__NSTextLayoutFragment__renderingAttributesForTextAnimationContextComponent_range_attributes_effectiveRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [MEMORY[0x1E695DFB0] null];
  if (result == a3)
  {
    v7 = *(a1 + 32);

    return [v7 removeObjectForKey:a2];
  }

  return result;
}

- (CGRect)_boundingRectForAnchoredAttachments
{
  objc_copyStruct(v6, &self->_boundingRectForAnchoredAttachments, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSTextLayoutFragment)initWithLayoutManager:(id)manager characterRange:(_NSRange)range animationType:(unint64_t)type boundingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  length = range.length;
  location = range.location;
  v15 = objc_alloc_init(NSTextParagraph);
  v16 = [(NSTextLayoutFragment *)self initWithTextElement:v15 range:0];

  if (v16)
  {
    objc_storeWeak(&v16->_textElement, 0);
    objc_storeWeak(&v16->_layoutManager, manager);
    v16->_characterRange.location = location;
    v16->_characterRange.length = length;
    v16->_sourceBoundingRect.origin.x = x;
    v16->_sourceBoundingRect.origin.y = y;
    v16->_sourceBoundingRect.size.width = width;
    v16->_sourceBoundingRect.size.height = height;
    v16->_destinationBoundingRect.origin.x = x;
    v16->_destinationBoundingRect.origin.y = y;
    v16->_destinationBoundingRect.size.width = width;
    v16->_destinationBoundingRect.size.height = height;
    v16->_animationType = type;
  }

  return v16;
}

- (NSTextStorage)destinationTextStorage
{
  objc_sync_enter(self);
  v3 = self->_destinationTextStorage;
  objc_sync_exit(self);
  return v3;
}

- (void)setDestinationTextStorage:(id)storage
{
  objc_sync_enter(self);
  destinationTextStorage = self->_destinationTextStorage;
  if (destinationTextStorage != storage)
  {

    self->_destinationTextStorage = [storage copy];
  }

  objc_sync_exit(self);
}

- (_NSRange)destinationGlyphRange
{
  length = self->_destinationGlyphRange.length;
  location = self->_destinationGlyphRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)_setup
{
  [(NSTextLayoutFragment *)self animationType];
  [(NSTextLayoutFragment *)self sourceBoundingRect];
  self->_sourceVerticalDelta = -v3;
  self->_sourceRangeDelta = 0;
}

- (id)textAttachmentViewProviderForTextParagraphAnchoredAttachment:(id)attachment
{
  textAttachment = [attachment textAttachment];
  if (![textAttachment usesTextAttachmentView])
  {
    return 0;
  }

  objc_sync_enter(self);
  v6 = [objc_loadWeak(&self->_textLayoutManager) textContainerForLocation:{-[NSTextRange location](-[NSTextLayoutFragment rangeInElement](self, "rangeInElement"), "location")}];
  textContainerForAnchoredAttachmentViewProviderCache = self->_textContainerForAnchoredAttachmentViewProviderCache;
  if (textContainerForAnchoredAttachmentViewProviderCache != v6)
  {

    self->_textContainerForAnchoredAttachmentViewProviderCache = 0;
    [(NSMapTable *)self->_anchoredAttachmentViewProviders removeAllObjects];
    self->_textContainerForAnchoredAttachmentViewProviderCache = v6;
  }

  anchoredAttachmentViewProviders = self->_anchoredAttachmentViewProviders;
  if (!anchoredAttachmentViewProviders)
  {
    anchoredAttachmentViewProviders = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    self->_anchoredAttachmentViewProviders = anchoredAttachmentViewProviders;
  }

  v9 = [(NSMapTable *)anchoredAttachmentViewProviders objectForKey:attachment];
  location = [(NSTextRange *)[(NSTextElement *)[(NSTextLayoutFragment *)self textElement] elementRange] location];
  if (v9)
  {
    [v9 setLocation:location];
  }

  else
  {
    v9 = [textAttachment viewProviderForParentView:0 location:location textContainer:v6];
    if (v9)
    {
      [(NSMapTable *)self->_anchoredAttachmentViewProviders setObject:v9 forKey:attachment];
    }
  }

  objc_sync_exit(self);
  return v9;
}

- (CGRect)boundsForTextParagraphAnchoredAttachment:(id)attachment
{
  if ([-[NSTextLayoutFragment anchoredTextAttachments](self "anchoredTextAttachments")])
  {
    [attachment frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(NSTextLayoutFragment *)self layoutFragmentFrameOrigin];
    v14 = v6 - v13;
    v16 = v8 - v15;
  }

  else
  {
    v14 = *MEMORY[0x1E695F058];
    v16 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  v17 = v10;
  v18 = v12;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v14;
  return result;
}

- (void)drawTextParagraphAnchoredAttachment:(id)attachment bounds:(CGRect)bounds context:(CGContext *)context
{
  if (context)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    if ([-[NSTextLayoutFragment anchoredTextAttachments](self "anchoredTextAttachments")])
    {
      v12 = [objc_loadWeak(&self->_textLayoutManager) textContainerForLocation:{-[NSTextRange location](-[NSTextLayoutFragment rangeInElement](self, "rangeInElement"), "location")}];
      if ([(NSTextLayoutFragment *)self textAttachmentViewProviderForTextParagraphAnchoredAttachment:attachment])
      {
        v13 = [NSTextAttachmentViewProvider acceptsViewProviderForContext:context];
      }

      else
      {
        v13 = 0;
      }

      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v14 = y + CGRectGetHeight(v20);
      textAttachment = [attachment textAttachment];
      location = [(NSTextRange *)[(NSTextElement *)[(NSTextLayoutFragment *)self textElement] elementRange] location];
      applicationFrameworkContext = [objc_loadWeak(&self->_textLayoutManager) applicationFrameworkContext];
      v18 = MEMORY[0x1E695E0F8];

      [textAttachment _showWithBounds:v18 attributes:location location:v12 textContainer:applicationFrameworkContext applicationFrameworkContext:v13 acceptsViewProvider:{x, v14, width, height}];
    }
  }
}

- (void)drawAtPoint:(CGPoint)point contentType:(unint64_t)type
{
  y = point.y;
  x = point.x;
  characterRange = [(NSTextLayoutFragment *)self characterRange];
  v10 = v9;
  [(NSTextLayoutFragment *)self _setup];
  animationType = [(NSTextLayoutFragment *)self animationType];
  if (type && (animationType & 1) != 0)
  {
    destinationLayoutManager = [(NSTextLayoutFragment *)self destinationLayoutManager];
    destinationGlyphRange = [(NSTextLayoutFragment *)self destinationGlyphRange];
    v15 = v14;
    [(NSTextLayoutFragment *)self destinationVerticalDelta];
  }

  else
  {
    destinationLayoutManager = [(NSTextLayoutFragment *)self layoutManager];
    destinationGlyphRange = [(NSLayoutManager *)destinationLayoutManager glyphRangeForCharacterRange:self->_sourceRangeDelta + characterRange actualCharacterRange:v10, 0];
    v15 = v17;
    sourceVerticalDelta = self->_sourceVerticalDelta;
  }

  [(NSLayoutManager *)destinationLayoutManager drawGlyphsForGlyphRange:destinationGlyphRange atPoint:v15, x, y + sourceVerticalDelta];
}

- (_NSRange)characterRange
{
  length = self->_characterRange.length;
  location = self->_characterRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)sourceBoundingRect
{
  x = self->_sourceBoundingRect.origin.x;
  y = self->_sourceBoundingRect.origin.y;
  width = self->_sourceBoundingRect.size.width;
  height = self->_sourceBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)destinationBoundingRect
{
  x = self->_destinationBoundingRect.origin.x;
  y = self->_destinationBoundingRect.origin.y;
  width = self->_destinationBoundingRect.size.width;
  height = self->_destinationBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end