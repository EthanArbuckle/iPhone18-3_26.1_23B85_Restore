@interface NSLayoutManager
+ (id)_defaultLinkAttributes;
+ (id)_defaultLinkAttributesForLabel;
+ (void)_doSomeBackgroundLayout;
+ (void)initialize;
- (BOOL)_canDoLayout;
- (BOOL)drawsOutsideLineFragmentForGlyphAtIndex:(NSUInteger)glyphIndex;
- (BOOL)isValidGlyphIndex:(NSUInteger)glyphIndex;
- (BOOL)notShownAttributeForGlyphAtIndex:(NSUInteger)glyphIndex;
- (CGFloat)defaultBaselineOffsetForFont:(NSFont *)theFont;
- (CGFloat)defaultLineHeightForFont:(NSFont *)theFont;
- (CGFloat)fractionOfDistanceThroughGlyphForPoint:(CGPoint)point inTextContainer:(NSTextContainer *)container;
- (CGGlyph)CGGlyphAtIndex:(NSUInteger)glyphIndex;
- (CGGlyph)CGGlyphAtIndex:(NSUInteger)glyphIndex isValidIndex:(BOOL *)isValidIndex;
- (CGPoint)locationForGlyphAtIndex:(NSUInteger)glyphIndex;
- (CGRect)_boundingRectForGlyphRange:(_NSRange)a3 inTextContainer:(id)a4 fast:(BOOL)a5 fullLineRectsOnly:(BOOL)a6;
- (CGRect)_currentAttachmentRect;
- (CGRect)_rectArrayForRange:(_NSRange)a3 withinSelectionRange:(_NSRange)a4 rangeIsCharRange:(BOOL)a5 singleRectOnly:(BOOL)a6 fullLineRectsOnly:(BOOL)a7 inTextContainer:(id)a8 rectCount:(unint64_t *)a9 rangeWithinContainer:(_NSRange *)a10 glyphsDrawOutsideLines:(BOOL *)a11 rectArray:(CGRect *)a12 rectArrayCapacity:(unint64_t)a13;
- (CGRect)boundingRectForGlyphRange:(NSRange)glyphRange inTextContainer:(NSTextContainer *)container;
- (CGRect)extraLineFragmentRect;
- (CGRect)extraLineFragmentUsedRect;
- (CGRect)lineFragmentRectForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange;
- (CGRect)lineFragmentRectForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange withoutAdditionalLayout:(BOOL)flag;
- (CGRect)lineFragmentUsedRectForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange;
- (CGRect)lineFragmentUsedRectForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange withoutAdditionalLayout:(BOOL)flag;
- (CGRect)lineFragmentUsedRectForGlyphAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4 allowLayout:(BOOL)a5;
- (CGRect)prepareLayoutForBoundingRect:(CGRect)a3 textContainer:(id)a4;
- (CGRect)usedRectForTextContainer:(NSTextContainer *)container;
- (CGSize)attachmentSizeForGlyphAtIndex:(NSUInteger)glyphIndex;
- (NSDictionary)temporaryAttributesAtCharacterIndex:(NSUInteger)charIndex effectiveRange:(NSRangePointer)effectiveCharRange;
- (NSDictionary)temporaryAttributesAtCharacterIndex:(NSUInteger)location longestEffectiveRange:(NSRangePointer)range inRange:(NSRange)rangeLimit;
- (NSFont)substituteFontForFont:(NSFont *)originalFont;
- (NSGlyphGenerator)glyphGenerator;
- (NSGlyphProperty)propertyForGlyphAtIndex:(NSUInteger)glyphIndex;
- (NSInteger)intAttribute:(NSInteger)attributeTag forGlyphAtIndex:(NSUInteger)glyphIndex;
- (NSLayoutManager)init;
- (NSLayoutManager)initWithCoder:(NSCoder *)coder;
- (NSRange)characterRangeForGlyphRange:(NSRange)glyphRange actualGlyphRange:(NSRangePointer)actualGlyphRange;
- (NSRange)glyphRangeForBoundingRect:(CGRect)bounds inTextContainer:(NSTextContainer *)container;
- (NSRange)glyphRangeForBoundingRectWithoutAdditionalLayout:(CGRect)bounds inTextContainer:(NSTextContainer *)container;
- (NSRange)glyphRangeForCharacterRange:(NSRange)charRange actualCharacterRange:(NSRangePointer)actualCharRange;
- (NSRange)glyphRangeForTextContainer:(NSTextContainer *)container;
- (NSRange)rangeOfNominallySpacedGlyphsContainingIndex:(NSUInteger)glyphIndex;
- (NSRange)truncatedGlyphRangeInLineFragmentForGlyphAtIndex:(NSUInteger)glyphIndex;
- (NSRect)boundsRectForTextBlock:(NSTextBlock *)block atIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange;
- (NSRect)boundsRectForTextBlock:(NSTextBlock *)block glyphRange:(NSRange)glyphRange;
- (NSRect)layoutRectForTextBlock:(NSTextBlock *)block atIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange;
- (NSRect)layoutRectForTextBlock:(NSTextBlock *)block glyphRange:(NSRange)glyphRange;
- (NSTextContainer)textContainerForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange;
- (NSTextContainer)textContainerForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange withoutAdditionalLayout:(BOOL)flag;
- (NSTypesetter)typesetter;
- (NSUInteger)characterIndexForGlyphAtIndex:(NSUInteger)glyphIndex;
- (NSUInteger)characterIndexForPoint:(CGPoint)point inTextContainer:(NSTextContainer *)container fractionOfDistanceBetweenInsertionPoints:(CGFloat *)partialFraction;
- (NSUInteger)firstUnlaidCharacterIndex;
- (NSUInteger)firstUnlaidGlyphIndex;
- (NSUInteger)getGlyphs:(NSGlyph *)glyphArray range:(NSRange)glyphRange;
- (NSUInteger)getGlyphsInRange:(NSRange)glyphRange glyphs:(CGGlyph *)glyphBuffer properties:(NSGlyphProperty *)props characterIndexes:(NSUInteger *)charIndexBuffer bidiLevels:(unsigned __int8 *)bidiLevelBuffer;
- (NSUInteger)getGlyphsInRange:(NSRange)glyphRange glyphs:(NSGlyph *)glyphBuffer characterIndexes:(NSUInteger *)charIndexBuffer glyphInscriptions:(NSGlyphInscription *)inscribeBuffer elasticBits:(BOOL *)elasticBuffer bidiLevels:(unsigned __int8 *)bidiLevelBuffer;
- (NSUInteger)getLineFragmentInsertionPointsForCharacterAtIndex:(NSUInteger)charIndex alternatePositions:(BOOL)aFlag inDisplayOrder:(BOOL)dFlag positions:(CGFloat *)positions characterIndexes:(NSUInteger *)charIndexes;
- (NSUInteger)glyphIndexForCharacterAtIndex:(NSUInteger)charIndex;
- (NSUInteger)glyphIndexForPoint:(CGPoint)point inTextContainer:(NSTextContainer *)container fractionOfDistanceThroughGlyph:(CGFloat *)partialFraction;
- (NSUInteger)numberOfGlyphs;
- (_NSRange)_characterRangeCurrentlyInAndAfterContainer:(id)a3;
- (_NSRange)_exactGlyphRangeForCharacterRange:(_NSRange)a3;
- (_NSRange)_extendedCharRangeForInvalidation:(_NSRange)a3 editedCharRange:(_NSRange)a4;
- (_NSRange)_firstPassGlyphRangeForBoundingRect:(CGRect)a3 inTextContainer:(id)a4 hintGlyphRange:(_NSRange)a5 okToFillHoles:(BOOL)a6;
- (_NSRange)_firstPassGlyphRangeForBoundingRect:(CGRect)a3 inTextContainer:(id)a4 okToFillHoles:(BOOL)a5;
- (_NSRange)_glyphRangeForBoundingRect:(CGRect)a3 inTextContainer:(id)a4 fast:(BOOL)a5 okToFillHoles:(BOOL)a6;
- (_NSRange)_glyphRangeForCharacterRange:(_NSRange)a3 actualCharacterRange:(_NSRange *)a4 okToFillHoles:(BOOL)a5;
- (_NSRange)_primitiveCharacterRangeForGlyphRange:(_NSRange)a3;
- (_NSRange)_primitiveGlyphRangeForCharacterRange:(_NSRange)a3;
- (_NSRange)rangeOfCharacterClusterAtIndex:(unint64_t)a3 type:(int64_t)a4;
- (_NSStoredContainerUsage)_validatedStoredUsageForTextContainerAtIndex:(unint64_t)a3;
- (char)_packedGlyphs:(unint64_t)a3 range:(_NSRange)a4 length:(unint64_t *)a5;
- (double)baselineOffsetForGlyphAtIndex:(unint64_t)a3;
- (id)_containerDescription;
- (id)_glyphDescriptionForGlyphRange:(_NSRange)a3;
- (id)_glyphHoleDescription;
- (id)_insertionPointHelperForGlyphAtIndex:(unint64_t)a3;
- (id)_layoutHoleDescription;
- (id)_lineFragmentDescriptionForGlyphRange:(_NSRange)a3 includeGlyphLocations:(BOOL)a4;
- (id)_stringForLoggingLineFragmentForGlyphAtIndex:(int64_t)a3;
- (id)delegate;
- (id)description;
- (id)destinationTextContainerForRange:(_NSRange)a3 inTextContainer:(id)a4;
- (id)layoutFragmentsForReplacingCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4 rect:(CGRect)a5 textContainer:(id)a6;
- (id)linkAttributesForAttributes:(id)a3 forCharacterAtIndex:(unint64_t)a4;
- (id)linkAttributesForLink:(id)a3 forCharacterAtIndex:(unint64_t)a4;
- (id)renderingColorForDocumentColor:(id)a3;
- (id)selectedTextAttributesForCharacterAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)temporaryAttribute:(NSAttributedStringKey)attrName atCharacterIndex:(NSUInteger)location effectiveRange:(NSRangePointer)range;
- (id)temporaryAttribute:(NSAttributedStringKey)attrName atCharacterIndex:(NSUInteger)location longestEffectiveRange:(NSRangePointer)range inRange:(NSRange)rangeLimit;
- (id)underlineColorForSpelling;
- (id)underlineColorForTextAlternatives;
- (int64_t)getLineFragmentInsertionPointArraysForCharacterAtIndex:(unint64_t)a3 inDisplayOrder:(BOOL)a4 positions:(double *)a5 characterIndexes:(unint64_t *)a6 count:(unint64_t *)a7 alternatePositions:(double *)a8 characterIndexes:(unint64_t *)a9 count:(unint64_t *)a10;
- (unint64_t)_glyphIndexForCharacterIndex:(unint64_t)a3 startOfRange:(BOOL)a4 okToFillHoles:(BOOL)a5 considerNulls:(BOOL)a6;
- (unint64_t)_indexOfFirstGlyphInTextContainer:(id)a3 okToFillHoles:(BOOL)a4;
- (unint64_t)_smallEncodingGlyphIndexForCharacterIndex:(unint64_t)a3 startOfRange:(BOOL)a4 okToFillHoles:(BOOL)a5 considerNulls:(BOOL)a6;
- (unsigned)_glyphAtIndex:(unint64_t)a3 characterIndex:(unint64_t *)a4 glyphInscription:(unint64_t *)a5 isValidIndex:(BOOL *)a6;
- (void)_clearTemporaryAttributes;
- (void)_clearTemporaryAttributesForCharacterRange:(_NSRange)a3 changeInLength:(int64_t)a4;
- (void)_commonInit;
- (void)_doLayoutWithFullContainerStartingAtGlyphIndex:(unint64_t)a3 nextGlyphIndex:(unint64_t *)a4;
- (void)_drawBackgroundForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4;
- (void)_drawGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4;
- (void)_drawLineForGlyphRange:(_NSRange)a3 inContext:(CGContext *)a4 from:(double)a5 to:(double)a6 at:(double)a7 thickness:(double)a8 lineOrigin:(CGPoint)a9 breakForDescenders:(BOOL)a10 flipped:(BOOL)a11;
- (void)_drawLineForGlyphRange:(_NSRange)a3 type:(int64_t)a4 baselineOffset:(double)a5 lineFragmentRect:(CGRect)a6 lineFragmentGlyphRange:(_NSRange)a7 containerOrigin:(CGPoint)a8 isStrikethrough:(BOOL)a9;
- (void)_fillGlyphHoleAtIndex:(unint64_t)a3 desiredNumberOfCharacters:(unint64_t)a4;
- (void)_fillGlyphHoleForCharacterRange:(_NSRange)a3 startGlyphIndex:(unint64_t)a4 desiredNumberOfCharacters:(unint64_t)a5;
- (void)_fillLayoutHoleAtIndex:(unint64_t)a3 desiredNumberOfLines:(unint64_t)a4;
- (void)_fillLayoutHoleForCharacterRange:(_NSRange)a3 desiredNumberOfLines:(unint64_t)a4 isSoft:(BOOL)a5;
- (void)_firstTextViewChanged;
- (void)_forceDisplayToBeCorrectForViewsWithUnlaidGlyphs;
- (void)_growCachedRectArrayToSize:(unint64_t)a3;
- (void)_insertGlyphs:(unsigned int *)a3 elasticAttributes:(BOOL *)a4 count:(unint64_t)a5 atGlyphIndex:(unint64_t)a6 characterIndex:(unint64_t)a7;
- (void)_invalidateDisplayIfNeeded;
- (void)_invalidateGlyphsForCharacterRange:(_NSRange)a3 editedCharacterRange:(_NSRange)a4 changeInLength:(int64_t)a5 actualCharacterRange:(_NSRange *)a6;
- (void)_invalidateGlyphsForExtendedCharacterRange:(_NSRange)a3 changeInLength:(int64_t)a4 includeBlocks:(BOOL)a5;
- (void)_invalidateInsertionPoint;
- (void)_invalidateLayoutForExtendedCharacterRange:(_NSRange)a3 isSoft:(BOOL)a4 invalidateUsage:(BOOL)a5;
- (void)_invalidateUsageForTextContainersInRange:(_NSRange)a3;
- (void)_lineGlyphRange:(_NSRange)a3 type:(int64_t)a4 lineFragmentRect:(CGRect)a5 lineFragmentGlyphRange:(_NSRange)a6 containerOrigin:(CGPoint)a7 isStrikethrough:(BOOL)a8;
- (void)_markSelfAsDirtyForBackgroundLayout:(id)a3;
- (void)_noteFirstTextViewVisibleCharacterRangeIfAfterIndex:(unint64_t)a3;
- (void)_primitiveInvalidateDisplayForGlyphRange:(_NSRange)a3;
- (void)_recalculateUsageForTextContainerAtIndex:(unint64_t)a3;
- (void)_resizeTextViewForTextContainer:(id)a3;
- (void)_setAlwaysDrawsActive:(BOOL)a3;
- (void)_setCurrentAttachmentRect:(CGRect)a3 index:(unint64_t)a4;
- (void)_setDrawsDebugBaselines:(BOOL)a3;
- (void)_setDrawsUnderlinesLikeWebKit:(BOOL)a3;
- (void)_setExtraLineFragmentRect:(CGRect)a3 usedRect:(CGRect)a4 textContainer:(id)a5;
- (void)_setForcesTrackingFloor:(BOOL)a3;
- (void)_setGlyphsPerLineEstimate:(unint64_t)a3 offsetPerLineEstimate:(double)a4;
- (void)_setHasSeenRightToLeft:(BOOL)a3;
- (void)_setHyphenationFactor:(double)a3;
- (void)_setMirrorsTextAlignment:(BOOL)a3;
- (void)_setNeedToFlushGlyph:(BOOL)a3;
- (void)_setRowArrayCache:(id)a3;
- (void)_setTextContainer:(id)a3 forGlyphRange:(_NSRange)a4;
- (void)_showAttachmentCell:(id)a3 inRect:(CGRect)a4 characterIndex:(unint64_t)a5;
- (void)_showCGGlyphs:(const unsigned __int16 *)a3 positions:(const CGPoint *)a4 count:(int64_t)a5 font:(id)a6 textMatrix:(CGAffineTransform *)a7 attributes:(id)a8 inContext:(CGContext *)a9;
- (void)_simpleDeleteGlyphsInRange:(_NSRange)a3;
- (void)_simpleInsertGlyph:(unsigned int)a3 atGlyphIndex:(unint64_t)a4 characterIndex:(unint64_t)a5 elastic:(BOOL)a6;
- (void)_updateUsageForTextContainer:(id)a3 addingUsedRect:(CGRect)a4;
- (void)addTemporaryAttribute:(NSAttributedStringKey)attrName value:(id)value forCharacterRange:(NSRange)charRange;
- (void)addTemporaryAttributes:(NSDictionary *)attrs forCharacterRange:(NSRange)charRange;
- (void)addTextContainer:(NSTextContainer *)container;
- (void)beginScrollingForView:(id)a3 textContainer:(id)a4;
- (void)coordinateAccess:(id)a3;
- (void)dealloc;
- (void)deleteGlyphsInRange:(NSRange)glyphRange;
- (void)drawSpellingUnderlineForGlyphRange:(_NSRange)a3 spellingState:(int64_t)a4 inGlyphRange:(_NSRange)a5 lineFragmentRect:(CGRect)a6 lineFragmentGlyphRange:(_NSRange)a7 containerOrigin:(CGPoint)a8;
- (void)encodeWithCoder:(id)a3;
- (void)endScrollingForView:(id)a3 textContainer:(id)a4;
- (void)ensureLayoutForBoundingRect:(CGRect)bounds inTextContainer:(NSTextContainer *)container;
- (void)ensureLayoutForCharacterRange:(NSRange)charRange;
- (void)ensureLayoutForTextContainer:(NSTextContainer *)container;
- (void)enumerateEnclosingRectsForCharacterRange:(_NSRange)a3 withinSelectedCharacterRange:(_NSRange)a4 inTextContainer:(id)a5 usingBlock:(id)a6;
- (void)enumerateEnclosingRectsForGlyphRange:(NSRange)glyphRange withinSelectedGlyphRange:(NSRange)selectedRange inTextContainer:(NSTextContainer *)textContainer usingBlock:(void *)block;
- (void)enumerateLineFragmentsForGlyphRange:(NSRange)glyphRange usingBlock:(void *)block;
- (void)fillBackgroundRectArray:(const CGRect *)rectArray count:(NSUInteger)rectCount forCharacterRange:(NSRange)charRange color:(UIColor *)color;
- (void)fillMarkedBackgroundRectArray:(const CGRect *)a3 count:(unint64_t)a4 forCharacterRange:(_NSRange)a5 color:(id)a6;
- (void)finalize;
- (void)getFirstUnlaidCharacterIndex:(NSUInteger *)charIndex glyphIndex:(NSUInteger *)glyphIndex;
- (void)insertGlyphs:(const NSGlyph *)glyphs length:(NSUInteger)length forStartingGlyphAtIndex:(NSUInteger)glyphIndex characterIndex:(NSUInteger)charIndex;
- (void)insertTextContainer:(NSTextContainer *)container atIndex:(NSUInteger)index;
- (void)invalidateDisplayForCharacterRange:(NSRange)charRange;
- (void)invalidateDisplayForGlyphRange:(NSRange)glyphRange;
- (void)invalidateLayoutForCharacterRange:(NSRange)charRange actualCharacterRange:(NSRangePointer)actualCharRange;
- (void)invalidateLayoutForCharacterRange:(NSRange)charRange isSoft:(BOOL)flag actualCharacterRange:(NSRangePointer)actualCharRange;
- (void)removeTemporaryAttribute:(NSAttributedStringKey)attrName forCharacterRange:(NSRange)charRange;
- (void)removeTextContainerAtIndex:(NSUInteger)index;
- (void)replaceGlyphAtIndex:(NSUInteger)glyphIndex withGlyph:(NSGlyph)newGlyph;
- (void)replaceTextStorage:(NSTextStorage *)newTextStorage;
- (void)setAllowsNonContiguousLayout:(BOOL)allowsNonContiguousLayout;
- (void)setAllowsOriginalFontMetricsOverride:(BOOL)a3;
- (void)setApplicationFrameworkContext:(int64_t)a3;
- (void)setBackgroundLayoutEnabled:(BOOL)backgroundLayoutEnabled;
- (void)setBoundsRect:(NSRect)rect forTextBlock:(NSTextBlock *)block glyphRange:(NSRange)glyphRange;
- (void)setCharacterIndex:(NSUInteger)charIndex forGlyphAtIndex:(NSUInteger)glyphIndex;
- (void)setDelegate:(id)delegate;
- (void)setDrawsOutsideLineFragment:(BOOL)flag forGlyphAtIndex:(NSUInteger)glyphIndex;
- (void)setFlipsIfNeeded:(BOOL)a3;
- (void)setGlyphGenerator:(NSGlyphGenerator *)glyphGenerator;
- (void)setGlyphs:(const CGGlyph *)glyphs properties:(const NSGlyphProperty *)props characterIndexes:(const NSUInteger *)charIndexes font:(UIFont *)aFont forGlyphRange:(NSRange)glyphRange;
- (void)setIgnoresViewTransformations:(BOOL)a3;
- (void)setIntAttribute:(NSInteger)attributeTag value:(NSInteger)val forGlyphAtIndex:(NSUInteger)glyphIndex;
- (void)setLayoutRect:(NSRect)rect forTextBlock:(NSTextBlock *)block glyphRange:(NSRange)glyphRange;
- (void)setLimitsLayoutForSuspiciousContents:(BOOL)limitsLayoutForSuspiciousContents;
- (void)setLineFragmentRect:(CGRect)a3 forGlyphRange:(_NSRange)a4 usedRect:(CGRect)a5 baselineOffset:(double)a6;
- (void)setLineFragmentRect:(CGRect)fragmentRect forGlyphRange:(NSRange)glyphRange usedRect:(CGRect)usedRect;
- (void)setLocation:(CGPoint)a3 forStartOfGlyphRange:(_NSRange)a4 coalesceRuns:(BOOL)a5;
- (void)setLocation:(CGPoint)location forStartOfGlyphRange:(NSRange)glyphRange;
- (void)setLocations:(NSPointArray)locations startingGlyphIndexes:(NSUInteger *)glyphIndexes count:(NSUInteger)count forGlyphRange:(NSRange)glyphRange;
- (void)setParagraphArbitrator:(id)a3;
- (void)setShowsControlCharacters:(BOOL)showsControlCharacters;
- (void)setShowsInvisibleCharacters:(BOOL)showsInvisibleCharacters;
- (void)setStyleEffectConfiguration:(id)a3;
- (void)setSynchronizesAlignmentToDirection:(BOOL)a3;
- (void)setTemporaryAttributes:(NSDictionary *)attrs forCharacterRange:(NSRange)charRange;
- (void)setTextStorage:(NSTextStorage *)textStorage;
- (void)setTypesetter:(NSTypesetter *)typesetter;
- (void)setTypesetterBehavior:(NSTypesetterBehavior)typesetterBehavior;
- (void)setUnderlineColorForSpelling:(id)a3;
- (void)setUnderlineColorForTextAlternatives:(id)a3;
- (void)setUsesDefaultHyphenation:(BOOL)usesDefaultHyphenation;
- (void)setUsesFontLeading:(BOOL)usesFontLeading;
- (void)setUsesScreenFonts:(BOOL)usesScreenFonts;
- (void)setViewProvider:(id)a3 forTextAttachment:(id)a4 characterIndex:(unint64_t)a5;
- (void)showAttachment:(id)a3 inRect:(CGRect)a4 textContainer:(id)a5 characterIndex:(unint64_t)a6;
- (void)showAttachmentCell:(NSCell *)cell inRect:(NSRect)rect characterIndex:(NSUInteger)attachmentIndex;
- (void)showCGGlyphs:(const CGGlyph *)glyphs positions:(const CGPoint *)positions count:(NSInteger)glyphCount font:(UIFont *)font textMatrix:(CGAffineTransform *)textMatrix attributes:(NSDictionary *)attributes inContext:(CGContextRef)CGContext;
- (void)showCGGlyphs:(const CGGlyph *)glyphs positions:(const CGPoint *)positions count:(NSUInteger)glyphCount font:(UIFont *)font matrix:(CGAffineTransform *)textMatrix attributes:(NSDictionary *)attributes inContext:(CGContextRef)graphicsContext;
- (void)textContainerChangedGeometry:(NSTextContainer *)container;
- (void)textContainerChangedTextView:(NSTextContainer *)container;
- (void)textContainerChangedTextView:(id)a3 fromTextView:(id)a4;
- (void)textStorage:(NSTextStorage *)str edited:(NSTextStorageEditedOptions)editedMask range:(NSRange)newCharRange changeInLength:(NSInteger)delta invalidatedRange:(NSRange)invalidatedCharRange;
@end

@implementation NSLayoutManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [a1 setVersion:1];
    if ([v3 objectForKey:@"NSUsesScreenFonts"])
    {
      __NSUsesScreenFonts = [v3 BOOLForKey:@"NSUsesScreenFonts"];
    }

    if ([v3 objectForKey:@"NSIgnoresViewTransformations"])
    {
      v4 = [v3 BOOLForKey:@"NSIgnoresViewTransformations"];
    }

    else
    {
      v4 = 1;
    }

    __NSIgnoresViewTransformations = v4;
    if ([v3 objectForKey:@"NSTextShowsInvisibleCharacters"])
    {
      __NSShowsInvisibleCharacters = [v3 BOOLForKey:@"NSTextShowsInvisibleCharacters"];
    }

    if ([v3 objectForKey:@"NSTextShowsControlCharacters"])
    {
      __NSShowsControlCharacters = [v3 BOOLForKey:@"NSTextShowsControlCharacters"];
    }

    if ([v3 objectForKey:@"NSTextAllowsNonContiguousLayout"])
    {
      __NSAllowsNonContiguousLayout = [v3 BOOLForKey:@"NSTextAllowsNonContiguousLayout"];
    }

    if ([v3 objectForKey:@"NSTextBackgroundLayoutEnabled"])
    {
      __NSBackgroundLayoutEnabled = [v3 BOOLForKey:@"NSTextBackgroundLayoutEnabled"];
    }

    __NSFillBackgroundRectArray = [a1 instanceMethodForSelector:sel_fillBackgroundRectArray_count_forCharacterRange_color_];
    __NSShowCGGlyphsIMP = [a1 instanceMethodForSelector:sel_showCGGlyphs_positions_count_font_matrix_attributes_inContext_];
    __NSForcesOldShowGlyphs = [v3 BOOLForKey:@"NSLayoutManagerForcesShowPackedGlyphs"];
  }
}

- (void)_showCGGlyphs:(const unsigned __int16 *)a3 positions:(const CGPoint *)a4 count:(int64_t)a5 font:(id)a6 textMatrix:(CGAffineTransform *)a7 attributes:(id)a8 inContext:(CGContext *)a9
{
  v9 = MEMORY[0x1EEE9AC00](self, a2, a3, a4, a5, a6, a7, a8);
  v43 = *MEMORY[0x1E69E9840];
  if (!a9)
  {
    return;
  }

  v16 = v15;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v9;
  v40 = v10;
  v21 = *MEMORY[0x1E695EFF8];
  v22 = *(MEMORY[0x1E695EFF8] + 8);
  memset(&v41, 0, sizeof(v41));
  v23 = v14[1];
  *&v42.a = *v14;
  *&v42.c = v23;
  *&v42.tx = v14[2];
  CGAffineTransformInvert(&v41, &v42);
  v24 = [v20 textStorage];
  v25 = [v24 cuiCatalog];
  v39 = [v20 styleEffectConfiguration];
  if (v18 >= 257)
  {
    v26 = NSZoneMalloc(0, 16 * v18);
    v26->a = v21;
    v26->b = v22;
    goto LABEL_5;
  }

  v42.a = v21;
  v42.b = v22;
  v26 = &v42;
  if (v18 >= 2)
  {
LABEL_5:
    p_d = &v26->d;
    v28 = v18 - 1;
    v29 = v19 + 2;
    do
    {
      v30 = *v29 - *(v29 - 2);
      v31 = v29[1] - *(v29 - 1);
      v21 = v21 + v31 * v41.c + v41.a * v30;
      v22 = v22 + v31 * v41.d + v41.b * v30;
      *(p_d - 1) = v21;
      *p_d = v22;
      p_d += 2;
      v29 += 2;
      --v28;
    }

    while (v28);
  }

  CGContextSetTextPosition(a9, *v19, v19[1]);
  v32 = [v16 objectForKey:@"NSTextEffect"];
  if (!v25 && ((objc_opt_respondsToSelector() & 1) == 0 || (v25 = [v20[13] layoutManager:v20 effectiveCUICatalogForTextEffect:v32]) == 0))
  {
    [v20 delegate];
    if (objc_opt_respondsToSelector())
    {
      v25 = [objc_msgSend(v20 "delegate")];
    }

    else
    {
      v25 = 0;
    }
  }

  v33 = [__NSTextAppearanceEffectContext alloc];
  v34 = [v16 objectForKeyedSubscript:@"NSColor"];
  v35 = [v20 applicationFrameworkContext];
  LOBYTE(v38) = [v24 _usesSimpleTextEffects];
  v36 = [(__NSTextAppearanceEffectContext *)v33 initWithTextEffectName:v32 catalog:v25 styleEffectConfiguration:v39 font:v17 color:v34 applicationFrameworkContext:v35 useSimplifiedEffect:v38];
  v37 = v36;
  if (v36)
  {
    [(__NSTextAppearanceEffectContext *)v36 drawGlyphs:v40 positions:v26 count:v18 context:a9];
  }

  else
  {
    CTFontDrawGlyphsAtPositions();
  }

  if (v26 != &v42)
  {
    NSZoneFree(0, v26);
  }
}

- (void)_showAttachmentCell:(id)a3 inRect:(CGRect)a4 characterIndex:(unint64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  x = a4.origin.x;
  v9 = a4.origin.y - a4.size.height;
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_2:

    [a3 drawWithFrame:0 inView:{x, v9, width, height}];
    return;
  }

  if (objc_opt_respondsToSelector())
  {

    [a3 drawWithFrame:0 inView:a5 characterIndex:self layoutManager:{x, v9, width, height}];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_2;
    }

    [a3 drawWithFrame:0 inView:a5 characterIndex:{x, v9, width, height}];
  }
}

- (void)drawSpellingUnderlineForGlyphRange:(_NSRange)a3 spellingState:(int64_t)a4 inGlyphRange:(_NSRange)a5 lineFragmentRect:(CGRect)a6 lineFragmentGlyphRange:(_NSRange)a7 containerOrigin:(CGPoint)a8
{
  length = a5.length;
  location = a5.location;
  v11 = a3.length;
  y = a8.y;
  x = a8.x;
  height = a6.size.height;
  v15 = a6.origin.y;
  v16 = a6.origin.x;
  v17 = a3.location;
  v122 = *MEMORY[0x1E69E9840];
  v19 = [(objc_class *)+[NSTextGraphicsContextProvider graphicsContextForApplicationFrameworkContext:a6.origin.x], "graphicsContextForApplicationFrameworkContext:", [(NSLayoutManager *)self applicationFrameworkContext]];
  v20 = [v19 CGContext];
  [(NSTypesetter *)[(NSLayoutManager *)self typesetter] baselineOffsetInLayoutManager:self glyphIndex:v17];
  v22 = v21;
  v115 = [(NSLayoutManager *)self textContainerForGlyphAtIndex:v17 effectiveRange:0];
  if (v19)
  {
    v23 = (*&self->_lmFlags & 0x10000000) == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    phase = 0;
  }

  else
  {
    phase = [v19 isFlipped] ^ 1;
  }

  v24 = [(NSLayoutManager *)self applicationFrameworkContext]== 2;
  v25 = [(NSLayoutManager *)self applicationFrameworkContext];
  v26 = 1;
  if (a4 == 3)
  {
    v26 = 2;
  }

  if (a4 == 1)
  {
    v26 = 0x80;
  }

  if (v25 == 1)
  {
    LOBYTE(a4) = v26;
  }

  if (v20)
  {
    if ((a4 & 0x83) != 0)
    {
      v27 = location + length;
      if (v17 + v11 >= location + length)
      {
        CGContextGetCTM(&v121, v20);
        a = v121.a;
        b = v121.b;
        c = v121.c;
        d = v121.d;
        tx = v121.tx;
        ty = v121.ty;
        v34 = fabs(v121.a);
        v35 = floor(v34);
        v110 = v121.d;
        v111 = v121.a;
        v108 = v121.tx;
        v109 = v121.ty;
        memset(&v121, 0, sizeof(v121));
        if (v35 <= 1.0)
        {
          v121.a = a;
          v121.b = b;
          v36 = d;
          v121.c = c;
        }

        else
        {
          v120.a = a;
          v120.b = b;
          v120.c = c;
          v120.d = d;
          v120.tx = tx;
          v120.ty = ty;
          CGAffineTransformScale(&v121, &v120, 1.0 / v35, -1.0 / v35);
          v36 = v121.d;
          v34 = fabs(v121.a);
        }

        v37 = v34 - fabs(v36) > 0.001 || fabs(v121.b) - fabs(v121.c) > 0.001 || ceil(v121.c) - v121.c > 0.001;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __151__NSLayoutManager_OtherSupport__drawSpellingUnderlineForGlyphRange_spellingState_inGlyphRange_lineFragmentRect_lineFragmentGlyphRange_containerOrigin___block_invoke;
        block[3] = &__block_descriptor_33_e5_v8__0l;
        v119 = v24;
        if (drawSpellingUnderlineForGlyphRange_spellingState_inGlyphRange_lineFragmentRect_lineFragmentGlyphRange_containerOrigin__colorOncePredicate == -1)
        {
          if ((a4 & 1) == 0)
          {
LABEL_25:
            v38 = &drawSpellingUnderlineForGlyphRange_spellingState_inGlyphRange_lineFragmentRect_lineFragmentGlyphRange_containerOrigin__correctionPatternColor;
            if ((a4 & 0x80) == 0)
            {
              v38 = &drawSpellingUnderlineForGlyphRange_spellingState_inGlyphRange_lineFragmentRect_lineFragmentGlyphRange_containerOrigin__grammarPatternColor;
            }

            v39 = *v38;
            goto LABEL_30;
          }
        }

        else
        {
          dispatch_once(&drawSpellingUnderlineForGlyphRange_spellingState_inGlyphRange_lineFragmentRect_lineFragmentGlyphRange_containerOrigin__colorOncePredicate, block);
          if ((a4 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        v39 = drawSpellingUnderlineForGlyphRange_spellingState_inGlyphRange_lineFragmentRect_lineFragmentGlyphRange_containerOrigin__spellingPatternColor;
LABEL_30:
        [(NSLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:v17 effectiveRange:0];
        v42 = v40 + v41;
        v113 = v41;
        v114 = c;
        if (v40 + v41 > v15 && v42 < v15 + height)
        {
          v22 = v22 - (v15 + height - v42);
          height = v42 - v15;
        }

        [(NSLayoutManager *)self locationForGlyphAtIndex:location, v42];
        v44 = v43;
        v112 = b;
        if ((*(&self->_lmFlags + 3) & 2) != 0 && ([(NSLayoutManager *)self intAttribute:2 forGlyphAtIndex:v17]& 1) != 0)
        {
          v121.a = 0.0;
          v55 = [(NSLayoutManager *)self rectArrayForGlyphRange:v17 withinSelectedGlyphRange:v11 inTextContainer:0x7FFFFFFFFFFFFFFFLL rectCount:0, v115, &v121];
          v56 = v121.a;
          v50 = 0.0;
          v45 = v39;
          if (*&v121.a)
          {
            p_width = &v55->size.width;
            v47 = 0.0;
            v58 = phase;
            v59 = v113;
            do
            {
              v60 = *(p_width - 2);
              v61 = *p_width;
              p_width += 4;
              v62 = v61;
              v63 = v60 - v16;
              v64 = v47 + v44 - v63;
              if (v63 < v44)
              {
                v44 = v63;
              }

              else
              {
                v64 = v47;
              }

              v65 = v63 + v62;
              if (v65 <= v44 + v64)
              {
                v47 = v64;
              }

              else
              {
                v47 = v65 - v44;
              }

              --*&v56;
            }

            while (v56 != 0.0);
          }

          else
          {
            v47 = 0.0;
            v58 = phase;
            v59 = v113;
          }

          v48 = 0;
        }

        else
        {
          v45 = v39;
          if (v27 >= a7.location + a7.length)
          {
            [(NSLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:a7.location effectiveRange:0];
            v53 = v51 + v52;
            [(NSTextContainer *)v115 lineFragmentPadding];
            v48 = 0;
            v47 = v53 - v54 - (v16 + v44);
            v50 = 0.0;
          }

          else
          {
            if ((*(&self->_lmFlags + 3) & 2) != 0 && ([(NSLayoutManager *)self intAttribute:2 forGlyphAtIndex:v27]& 1) != 0)
            {
              v105 = [(NSLayoutManager *)self characterIndexForGlyphAtIndex:v27 - 1];
              [(NSLayoutManager *)self locationForGlyphAtIndex:v27 - 1];
              v107 = v75;
              v76 = [(NSTextStorage *)self->_textStorage attribute:@"NSFont" atIndex:v105 effectiveRange:0];
              v77 = [(NSTextStorage *)self->_textStorage attribute:@"CTVerticalForms" atIndex:v105 effectiveRange:0];
              if (!v76)
              {
                v76 = NSDefaultFont();
              }

              if (([v77 BOOLValue] & 1) != 0 || !v77 && -[NSTextContainer layoutOrientation](v115, "layoutOrientation"))
              {
                v76 = [v76 verticalFont];
              }

              v47 = v107 - v44;
              if (v76)
              {
                [v76 advancementForGlyph:{-[NSLayoutManager glyphAtIndex:](self, "glyphAtIndex:", v27 - 1)}];
                v48 = 0;
                v47 = v47 + v104;
              }

              else
              {
                v48 = 0;
              }
            }

            else
            {
              [(NSLayoutManager *)self locationForGlyphAtIndex:v27];
              v47 = v46 - v44;
              v48 = 1;
            }

            if (v27 + 1 >= a7.location + a7.length)
            {
              [(NSLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:a7.location effectiveRange:0];
              v106 = v22;
              v66 = height;
              v67 = v15;
              v68 = y;
              v69 = x;
              v72 = v70 + v71;
              [(NSTextContainer *)v115 lineFragmentPadding];
              v74 = v72 - v73;
              x = v69;
              y = v68;
              v15 = v67;
              height = v66;
              v22 = v106;
              v50 = v74 - (v16 + v44);
            }

            else
            {
              [(NSLayoutManager *)self locationForGlyphAtIndex:?];
              v50 = v49 - v44;
            }
          }

          v58 = phase;
          v59 = v113;
        }

        v78 = v16 + x + v44;
        v79 = y - (v15 + height - v22);
        if (!v58)
        {
          v79 = y + v15 + height - v22;
        }

        if (v48)
        {
          v80 = v78 + v50;
          v81 = v47 + v78;
          v82 = v114;
          v83 = v80 - (v47 + v78) < 5.0;
        }

        else
        {
          v83 = 0;
          v81 = v47 + v78;
          v82 = v114;
        }

        v84 = v82 == 0.0 || v37;
        if (v84)
        {
          v85 = 4.0;
        }

        else
        {
          v79 = v79 + -1.0;
          v85 = 3.0;
        }

        if (v84)
        {
          v86 = 3.0;
        }

        else
        {
          v86 = 4.0;
        }

        v87 = ceil(v78);
        v88 = floor(v81) - v87;
        v89 = v88 % vcvtmd_s64_f64(v85);
        v90 = v85 + v88 - v89;
        v91 = v90 - v85;
        if (v83 && v89 == 0)
        {
          v92 = v91;
        }

        else
        {
          v92 = v90;
        }

        if (v92 - v88 <= 2.0)
        {
          v93 = v87;
        }

        else
        {
          v93 = v87 + -1.0;
        }

        v94 = ceil(v79);
        v95 = floor(v22 + v79) - v94;
        if (v59 <= 19.0)
        {
          v96 = 3.0;
        }

        else
        {
          v96 = 4.0;
        }

        v97 = floor(v59 / 100.0) + 5.0;
        if (v59 > 25.0)
        {
          v98 = v97;
        }

        else
        {
          v98 = v96;
        }

        if (v95 <= v98)
        {
          v99 = v94;
        }

        else
        {
          v99 = v94 + v95 - v98;
        }

        CGContextSaveGState(v20);
        if (v45)
        {
          v100 = v37;
        }

        else
        {
          v100 = 1;
        }

        if (v100 == 1)
        {
          v101 = __NSGetColorForSpellingState(a4);
          if (v101)
          {
            v102 = v101;
            *&v121.a = xmmword_18E8561E0;
            CGContextSetLineDash(v20, 0.0, &v121.a, 2uLL);
            v103 = v86 + v99;
            CGContextMoveToPoint(v20, v93, v103);
            CGContextAddLineToPoint(v20, v92 + v93, v103);
            CGContextSetLineWidth(v20, 2.0);
            [-[NSLayoutManager renderingColorForDocumentColor:](self renderingColorForDocumentColor:{v102), "set"}];
            CGContextStrokePath(v20);
          }
        }

        else
        {
          CGContextGetBaseCTM();
          CGAffineTransformInvert(&v121, &v120);
          phasea = vaddq_f64(*&v121.tx, vmlaq_n_f64(vmulq_n_f64(*&v121.c, v109 + v110 * v99 + v112 * v93), *&v121.a, v108 + v82 * v99 + v111 * v93));
          [-[NSLayoutManager renderingColorForDocumentColor:](self renderingColorForDocumentColor:{v45), "set"}];
          CGContextSetPatternPhase(v20, phasea);
          if (CGContextGetCompositeOperation() == 2)
          {
            v123.origin.x = v93;
            v123.origin.y = v99;
            v123.size.width = v92;
            v123.size.height = v86;
            CGContextFillRect(v20, v123);
          }

          else
          {
            CGContextSetCompositeOperation();
            v124.origin.x = v93;
            v124.origin.y = v99;
            v124.size.width = v92;
            v124.size.height = v86;
            CGContextFillRect(v20, v124);
            CGContextSetCompositeOperation();
          }
        }

        CGContextRestoreGState(v20);
      }
    }
  }
}

id __151__NSLayoutManager_OtherSupport__drawSpellingUnderlineForGlyphRange_spellingState_inGlyphRange_lineFragmentRect_lineFragmentGlyphRange_containerOrigin___block_invoke()
{
  v0 = __NSGetColorForSpellingState(1);
  v1 = __NSGetCircledImage(v0, 3.0, 3.0);
  v2 = __NSGetColorForSpellingState(2);
  v3 = __NSGetCircledImage(v2, 3.0, 3.0);
  v4 = __NSGetColorForSpellingState(128);
  v5 = __NSGetCircledImage(v4, 3.0, 3.0);
  if (v1)
  {
    v6 = [getNSColorClass[0]() colorWithPatternImage:v1];
  }

  else
  {
    v6 = 0;
  }

  drawSpellingUnderlineForGlyphRange_spellingState_inGlyphRange_lineFragmentRect_lineFragmentGlyphRange_containerOrigin__spellingPatternColor = v6;
  if (v3)
  {
    v7 = [getNSColorClass[0]() colorWithPatternImage:v3];
  }

  else
  {
    v7 = 0;
  }

  drawSpellingUnderlineForGlyphRange_spellingState_inGlyphRange_lineFragmentRect_lineFragmentGlyphRange_containerOrigin__grammarPatternColor = v7;
  if (v5)
  {
    v8 = [getNSColorClass[0]() colorWithPatternImage:v5];
  }

  else
  {
    v8 = 0;
  }

  result = v8;
  drawSpellingUnderlineForGlyphRange_spellingState_inGlyphRange_lineFragmentRect_lineFragmentGlyphRange_containerOrigin__correctionPatternColor = result;
  return result;
}

- (void)_drawLineForGlyphRange:(_NSRange)a3 inContext:(CGContext *)a4 from:(double)a5 to:(double)a6 at:(double)a7 thickness:(double)a8 lineOrigin:(CGPoint)a9 breakForDescenders:(BOOL)a10 flipped:(BOOL)a11
{
  v11 = a8;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  if (a10)
  {
    v17 = a11;
    y = a9.y;
    x = a9.x;
    length = a3.length;
    location = a3.location;
    CGContextMoveToPoint(a4, a5, a7);
    v22 = [(NSTextStorage *)self->_textStorage string];
    v63 = xmmword_18E856180;
    v23 = a7 - y;
    v62 = v11;
    if (!v17)
    {
      v23 = y - a7;
    }

    if (location < location + length)
    {
      v24 = v22;
      v57 = x;
      v25 = 0;
      v60 = v23 + v11 * -0.5;
      v59 = v60 + v11;
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      do
      {
        v29 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, location);
        if (v29 < v63 || v29 - v63 >= *(&v63 + 1))
        {
          v31 = [(NSTextStorage *)self->_textStorage attributesAtIndex:v29 effectiveRange:&v63];
          v32 = [v31 objectForKey:@"NSFont"];
          v25 = [v32 _backingCGSFont];
          [v32 pointSize];
          v28 = v33;
          v34 = [v31 objectForKey:@"NSExpansion"];
          v26 = 0.0;
          v27 = 0.0;
          if (v34)
          {
            [v34 doubleValue];
            v27 = v35;
          }

          v36 = [v31 objectForKey:{@"NSObliqueness", *&v57}];
          if (v36)
          {
            [v36 doubleValue];
            v26 = v37;
          }
        }

        v38 = [(NSLayoutManager *)self glyphAtIndex:location, *&v57];
        [(NSLayoutManager *)self locationForGlyphAtIndex:location];
        v40 = v39;
        v42 = v41;
        v43 = [v24 characterAtIndex:v29];
        if (v25)
        {
          if (v28 > 0.0 && v27 == 0.0 && v26 == 0.0 && ((v43 + 1280) >> 7) <= 0x66u)
          {
            if (v38)
            {
              if (![(NSLayoutManager *)self notShownAttributeForGlyphAtIndex:location])
              {
                UnitsPerEm = CGFontGetUnitsPerEm(v25);
                info[0] = *MEMORY[0x1E695EFF8];
                info[1] = info[0];
                v45 = UnitsPerEm;
                v65 = (v42 - v60) * UnitsPerEm / v28;
                v66 = (v42 - v59) * UnitsPerEm / v28;
                v67 = xmmword_18E8561D0;
                GlyphPath = CGFontCreateGlyphPath();
                if (GlyphPath)
                {
                  v47 = GlyphPath;
                  CGPathApply(GlyphPath, info, lmProcessPathElement);
                  v48 = v67;
                  if (*&v67 >= *(&v67 + 1) || UnitsPerEm <= 0)
                  {
                    CGPathRelease(v47);
                  }

                  else
                  {
                    v49 = v28 * *&v67 / v45;
                    CGPathRelease(v47);
                    v50 = v57 + v40;
                    v51 = v50 + v49 - v62;
                    if (v51 > v14 + v62 * 0.75)
                    {
                      CGContextAddLineToPoint(a4, v51, a7);
                      CGContextStrokePath(a4);
                      v14 = v51;
                    }

                    if (v50 + v28 * *(&v48 + 1) / v45 + v62 > v14)
                    {
                      v14 = v50 + v28 * *(&v48 + 1) / v45 + v62;
                    }

                    CGContextMoveToPoint(a4, v14, a7);
                  }
                }
              }
            }
          }
        }

        ++location;
        --length;
      }

      while (length);
    }

    v11 = v62;
    v15 = a4;
    v13 = a6;
    goto LABEL_38;
  }

  if (![(NSLayoutManager *)self _drawsUnderlinesLikeWebKit:a3.location])
  {
    CGContextMoveToPoint(v15, v14, a7);
LABEL_38:
    if (vabdd_f64(v13, v14) > v11 * 0.75)
    {
      CGContextAddLineToPoint(v15, v13, a7);
      CGContextStrokePath(v15);
    }

    return;
  }

  StrokeColorAsColor = CGContextGetStrokeColorAsColor();
  CGContextSetFillColorWithColor(v15, StrokeColorAsColor);
  v54 = v14;
  v55 = a7;
  v56 = v11;

  v53 = v13 - v14;
  CGContextFillRect(v15, *&v54);
}

- (void)_drawLineForGlyphRange:(_NSRange)a3 type:(int64_t)a4 baselineOffset:(double)a5 lineFragmentRect:(CGRect)a6 lineFragmentGlyphRange:(_NSRange)a7 containerOrigin:(CGPoint)a8 isStrikethrough:(BOOL)a9
{
  v9 = a9;
  length = a7.length;
  location = a7.location;
  v12 = a3.length;
  y = a8.y;
  x = a8.x;
  height = a6.size.height;
  v15 = a6.origin.y;
  v215 = a6.origin.x;
  v17 = a3.location;
  v240 = *MEMORY[0x1E69E9840];
  v19 = [(NSLayoutManager *)self textContainerForGlyphAtIndex:a3.location effectiveRange:0, a5, a6.origin.x, a6.origin.y, a6.size.width];
  __asm { FMOV            V0.2D, #3.0 }

  *lengths = _Q0;
  v238 = _Q0;
  v239 = _Q0;
  range2 = v12;
  v23 = [(NSLayoutManager *)self characterRangeForGlyphRange:v17 actualGlyphRange:v12, 0];
  v216 = v24;
  v217 = length;
  v226 = location;
  v219 = [(NSLayoutManager *)self characterRangeForGlyphRange:location actualGlyphRange:length, 0];
  v220 = v25;
  v26 = @"NSStrikethrough";
  if (!v9)
  {
    v26 = @"NSUnderline";
  }

  v211 = v26;
  if (v9)
  {
    v27 = &NSStrikethroughColorAttributeName;
  }

  else
  {
    v27 = &NSUnderlineColorAttributeName;
  }

  v28 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider graphicsContextForApplicationFrameworkContext:"graphicsContextForApplicationFrameworkContext:", [(NSLayoutManager *)self applicationFrameworkContext]];
  v29 = [v28 CGContext];
  v236 = 0;
  v223 = [(NSLayoutManager *)self _drawsUnderlinesLikeWebKit];
  v218 = v19;
  v222 = [(NSTextContainer *)v19 layoutOrientation];
  CGContextGetCTM(&v235, v29);
  a = v235.a;
  b = v235.b;
  c = v235.c;
  d = v235.d;
  v34 = [v28 isDrawingToScreen];
  v35 = 1;
  if (v28 && (*&self->_lmFlags & 0x10000000) != 0)
  {
    v35 = [v28 isFlipped];
  }

  v221 = a4 & 7;
  if (_drawLineForGlyphRange_type_baselineOffset_lineFragmentRect_lineFragmentGlyphRange_containerOrigin_isStrikethrough__onceToken != -1)
  {
    [NSLayoutManager(OtherSupport) _drawLineForGlyphRange:type:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:isStrikethrough:];
  }

  v36 = _drawLineForGlyphRange_type_baselineOffset_lineFragmentRect_lineFragmentGlyphRange_containerOrigin_isStrikethrough__breakForDescendersDefault;
  if (!_NSUnderlineWhiteSet)
  {
    _NSUnderlineWhiteSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    _NSUnderlineNonWhiteSet = [_NSUnderlineWhiteSet invertedSet];
  }

  if ((a4 & 7) != 0)
  {
    v213 = v36;
    v37 = *v27;
    if (!v34 || (v38 = [(NSLayoutManager *)self temporaryAttribute:v37 atCharacterIndex:v23 effectiveRange:0]) == 0)
    {
      v38 = [(NSTextStorage *)self->_textStorage attribute:v37 atIndex:v23 effectiveRange:0];
    }

    v212 = v221;
    v39 = -v15;
    if (v35)
    {
      v39 = v15;
    }

    v40 = y + v39;
    [(NSLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:v17 effectiveRange:0];
    v43 = v41 + v42;
    _NF = v41 + v42 < v15 + height;
    v45 = a5 - (v15 + height - (v41 + v42));
    v46 = v43 - v15;
    if (v43 >= v15 + height)
    {
      v45 = a5;
    }

    if (!_NF)
    {
      v46 = height;
    }

    if (v43 > v15)
    {
      v47 = v46;
    }

    else
    {
      v45 = a5;
      v47 = height;
    }

    v48 = -(b * c);
    v49 = v45;
    v50 = fabs(v48 + a * d);
    v51 = sqrt(v50);
    if (v50 <= 0.001)
    {
      v52 = 1.0;
    }

    else
    {
      v52 = v51;
    }

    if (v49 * 5.3636991 <= v47)
    {
      v53 = v49 * 5.3636991;
    }

    else
    {
      v53 = v47;
    }

    v54 = v47 - v49;
    v224 = v47;
    v55 = v49 - v47;
    if (v35)
    {
      v55 = v47 - v49;
    }

    v228 = v40;
    i = v40 + v55;
    v214 = v9;
    if (v9)
    {
      v234 = 0uLL;
      v232 = 0;
      v233 = 0;
      v57 = v23;
      if (!v220)
      {
LABEL_92:
        v82 = [(NSTextStorage *)self->_textStorage attribute:@"NSFont" atIndex:v57 effectiveRange:0];
        v83 = 0.0;
        if (v82)
        {
          v84 = [(NSTextStorage *)self->_textStorage attribute:@"CTVerticalForms" atIndex:v57 effectiveRange:0];
          v85 = [v84 BOOLValue];
          if (v84)
          {
            v86 = 1;
          }

          else
          {
            v86 = v222 == 0;
          }

          v87 = v86;
          if (v85 || (v87 & 1) == 0)
          {
            v82 = [v82 verticalFont];
          }

          [(NSLayoutManager *)self defaultLineHeightForFont:v82];
          if (v88 <= v224)
          {
            v89 = v88;
          }

          else
          {
            v89 = v224;
          }

          v90 = 0.0;
          if (([v82 isVertical] & 1) == 0)
          {
            [v82 xHeight];
            v90 = v91 * 0.5;
          }

          v92 = v89 * 0.0440277313;
        }

        else
        {
          v92 = -1.0;
          v90 = 0.0;
        }

        [(NSTextStorage *)self->_textStorage attributesAtIndex:v23 effectiveRange:&v234];
        v241.location = [(NSLayoutManager *)self glyphRangeForCharacterRange:v234 actualCharacterRange:0];
        v242.location = v17;
        v242.length = range2;
        v93 = NSIntersectionRange(v241, v242);
        v232 = v93.location;
        if (v93.location < v93.location + v93.length)
        {
          v94 = v93.location;
          do
          {
            _NSLayoutTreeRunLocationForGlyphAtIndex(self, v94, &v232);
            if (v95 > v83)
            {
              v83 = v95;
            }

            v94 = v232 + v233;
            v232 = v94;
          }

          while (v94 < v93.location + v93.length);
        }

        if (v223)
        {
          [(NSLayoutManager *)self defaultBaselineOffsetForFont:v82];
          v97 = v228 + (2 * v96 / 3);
          memset(&v235, 0, sizeof(v235));
          CGContextGetUserSpaceToDeviceSpaceTransform(&v235, v29);
          v98 = 1.0;
          if (v52 < 0.400000006)
          {
            v98 = 0.0;
          }

          v99 = v235.ty + v97 * v235.d + v235.b * 0.0;
          v100 = v235.tx + v97 * v235.c + v235.a * 0.0;
          v101 = roundf(v100);
          *&v99 = v99;
          v102 = v98 + ceilf(*&v99);
          context = v235;
          CGAffineTransformInvert(&v231, &context);
          i = v231.ty + v102 * v231.d + v231.b * v101;
          v103 = v52;
          v104 = fmaxf(roundf(v103), 1.0);
          v105 = v221;
          v65 = a4 & 0x3000;
          v54 = v90;
        }

        else
        {
          v106 = v224 - v83 - v49;
          if (!v35)
          {
            v106 = -v106;
          }

          i = i - v106;
          v107 = v52 * v90;
          v105 = v221;
          v104 = v52 * v212 * v92;
          if (v52 * v90 <= 1.0)
          {
            v65 = a4 & 0x3000;
          }

          else
          {
            v65 = a4 & 0x3000;
            if (v104 > 0.35)
            {
              v108 = vcvtpd_s64_f64(v104);
              v104 = ceil(v104);
              v109 = -v52;
              if (!v35)
              {
                v109 = v52;
              }

              v110 = v109 * i - floor(v109 * i);
              v111 = floor(v107 + 0.5);
              v112 = floor(v107) + 0.5;
              if ((v108 & 1) == 0)
              {
                v112 = v111;
              }

              v107 = v112 - v110;
            }
          }

          v54 = v107 / v52;
        }

LABEL_230:
        v68 = v104 / v52;
LABEL_231:
        v170 = (a4 >> 8) & 7;
        if (!v223)
        {
          if (v68 <= 0.0)
          {
            v68 = v53 * v105 * 0.0440277313;
          }

          v171 = v65 == 0x2000 && v68 < 1.0;
          v172 = v54 + -1.0;
          if (!v171)
          {
            v172 = v54;
          }

          if (!v35)
          {
            v172 = -v172;
          }

          i = i - v172;
        }

        if (v170 - 1 > 3)
        {
          v174 = 1;
        }

        else
        {
          v173 = 2;
          if (v170 == 3)
          {
            v173 = 4;
          }

          if (v170 == 4)
          {
            v174 = 6;
          }

          else
          {
            v174 = v173;
          }

          if (v170 >= 2)
          {
            lengths[0] = 10.0;
            if (v170 == 2)
            {
              lengths[1] = 5.0;
            }
          }

          v175 = ceil(v68 / v105);
          v176 = lengths;
          v177 = v174;
          do
          {
            *v176 = vmulq_n_f64(*v176, v175);
            ++v176;
            v177 -= 2;
          }

          while (v177);
        }

        v178 = v17 + range2;
        if ((*(&self->_lmFlags + 3) & 2) != 0 && range2 && ([(NSLayoutManager *)self intAttribute:2 forGlyphAtIndex:v178 - 1]& 1) != 0)
        {
          v185 = 0;
          v186 = v213;
LABEL_274:
          v187 = [(NSLayoutManager *)self rectArrayForGlyphRange:v17 withinSelectedGlyphRange:range2 inTextContainer:0x7FFFFFFFFFFFFFFFLL rectCount:0, v218, &v236];
          if (v223)
          {
            if (v52 < 1.0 && v38)
            {
              v188 = fmax(v52, 0.400000006);
              v235.a = 0.0;
              v231.a = 0.0;
              context.a = 0.0;
              *&v234 = 0;
              [v38 getRed:&v235 green:&v231 blue:&context alpha:&v234];
              [-[NSLayoutManager renderingColorForDocumentColor:](self renderingColorForDocumentColor:{objc_msgSend(getNSColorClass[0](), "colorWithRed:green:blue:alpha:", v235.a, v231.a, context.a, v188)), "set"}];
            }

            CGContextSetShouldAntialias(v29, 0);
          }

          else if (v38)
          {
            [-[NSLayoutManager renderingColorForDocumentColor:](self renderingColorForDocumentColor:{v38), "set"}];
          }

          CGContextSetLineWidth(v29, v68);
          v189 = v236;
          if (v236)
          {
            v190 = 0;
            v191 = v187;
            v192 = v186 & !v223;
            v193 = v215 + x;
            v194 = !v9;
            p_width = &v191->size.width;
            do
            {
              v196 = *(p_width - 2);
              v197 = x + v196;
              v198 = x + v196 + *p_width;
              ++v190;
              v199 = v198 + -1.0;
              if (v190 < v189)
              {
                v199 = v198;
              }

              if (v185)
              {
                v200 = v199;
              }

              else
              {
                v200 = v198;
              }

              [(NSLayoutManager *)self locationForGlyphAtIndex:v226];
              if (v174 >= 2)
              {
                CGContextSetLineDash(v29, v197 - v201, lengths, v174);
              }

              v202 = i;
              if ((a4 & 8) != 0)
              {
                [(NSLayoutManager *)self _drawLineForGlyphRange:v17 inContext:range2 from:v29 to:v192 & v194 at:v35 thickness:v197 lineOrigin:v200 breakForDescenders:i - v68 flipped:v68, v193, v228];
                v202 = v68 + i;
              }

              [(NSLayoutManager *)self _drawLineForGlyphRange:v17 inContext:range2 from:v29 to:v192 & v194 at:v35 thickness:v197 lineOrigin:v200 breakForDescenders:v202 flipped:v68, v193, v228];
              v189 = v236;
              p_width += 4;
            }

            while (v190 < v236);
          }

          return;
        }

        if (v178 >= v226 + v217)
        {
          v186 = v213;
          v185 = (*(&self->_lmFlags + 3) & 2) == 0 || ([(NSLayoutManager *)self intAttribute:2 forGlyphAtIndex:v226]& 1) == 0;
          goto LABEL_274;
        }

        v179 = v38;
        v180 = [(NSLayoutManager *)self characterRangeForGlyphRange:v178 actualGlyphRange:1, 0];
        v182 = v181;
        firstTextView = self->_firstTextView;
        if (firstTextView && [objc_msgSend(firstTextView "linkTextAttributes")])
        {
          v184 = 1;
          if (!v182)
          {
LABEL_262:
            v185 = 1;
LABEL_272:
            v38 = v179;
            v186 = v213;
            v9 = v214;
            goto LABEL_274;
          }
        }

        else
        {
          v184 = [objc_msgSend(objc_opt_class() "_defaultLinkAttributes")] != 0;
          if (!v182)
          {
            goto LABEL_262;
          }
        }

        if ([-[NSTextStorage attribute:atIndex:effectiveRange:](self->_textStorage attribute:v211 atIndex:v180 effectiveRange:{0), "integerValue"}] || v184 && -[NSTextStorage attribute:atIndex:effectiveRange:](self->_textStorage, "attribute:atIndex:effectiveRange:", @"NSLink", v180, 0) || objc_msgSend(-[NSLayoutManager temporaryAttribute:atCharacterIndex:effectiveRange:](self, "temporaryAttribute:atCharacterIndex:effectiveRange:", v211, v180, 0), "integerValue"))
        {
          v185 = 0;
        }

        else
        {
          v203 = [(NSTextStorage *)self->_textStorage string];
          [v203 rangeOfCharacterFromSet:_NSUnderlineNonWhiteSet options:0 range:{v180, v219 + v220 - v180}];
          v185 = v204 != 0;
        }

        goto LABEL_272;
      }

      v210 = v38;
      v58 = [(NSTextStorage *)self->_textStorage string];
      v59 = [objc_msgSend(MEMORY[0x1E696AB08] "whitespaceAndNewlineCharacterSet")];
      if (v216)
      {
        v60 = v58;
        v61 = [v58 rangeOfCharacterFromSet:v59 options:0 range:v23];
        v63 = v62 != 0;
        if (v62)
        {
          v57 = v61;
        }

        else
        {
          v57 = v23;
        }

        if (v62)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v60 = v58;
        v63 = 0;
        v57 = v23;
      }

      if (v23 > v219)
      {
        v78 = [v60 rangeOfCharacterFromSet:v59 options:4 range:{v219, v23 - v219}];
        if (v79)
        {
          v57 = v79 + v78 - 1;
LABEL_91:
          v38 = v210;
          v9 = v214;
          goto LABEL_92;
        }
      }

LABEL_87:
      if (!v63 && v219 + v220 > v23 + v216)
      {
        v80 = [v60 rangeOfCharacterFromSet:v59 options:0 range:{v23 + v216, v219 + v220 - (v23 + v216)}];
        if (v81)
        {
          v57 = v80;
        }
      }

      goto LABEL_91;
    }

    v234 = 0uLL;
    extraData = self->_extraData;
    if ((a4 & 0x3000) != 0)
    {
      v65 = a4 & 0x3000;
    }

    else
    {
      v65 = 4096;
    }

    if ((a4 & 0x3000) == 0 && v222)
    {
      if (_drawLineForGlyphRange_type_baselineOffset_lineFragmentRect_lineFragmentGlyphRange_containerOrigin_isStrikethrough__minimumEdgeUnderline < 0)
      {
        v113 = v47 - v49;
        v114 = [MEMORY[0x1E695DF58] preferredLanguages];
        _drawLineForGlyphRange_type_baselineOffset_lineFragmentRect_lineFragmentGlyphRange_containerOrigin_isStrikethrough__minimumEdgeUnderline = 1;
        v115 = [v114 count];
        v54 = v113;
        if (v115)
        {
          v116 = [objc_msgSend(v114 objectAtIndex:{0), "hasPrefix:", @"zh"}];
          v54 = v113;
          if (v116)
          {
            _drawLineForGlyphRange_type_baselineOffset_lineFragmentRect_lineFragmentGlyphRange_containerOrigin_isStrikethrough__minimumEdgeUnderline = 0;
          }
        }
      }

      if (_drawLineForGlyphRange_type_baselineOffset_lineFragmentRect_lineFragmentGlyphRange_containerOrigin_isStrikethrough__minimumEdgeUnderline)
      {
        v65 = 0x2000;
      }

      else
      {
        v65 = 12288;
      }
    }

    v66 = *(extraData + 21);
    _CF = v23 >= v66;
    v67 = v23 - v66;
    if (_CF && v67 < *(extraData + 22))
    {
      v68 = *(extraData + 18);
      v69 = *(extraData + 19);
      v70 = *(extraData + 20);
      goto LABEL_174;
    }

    v206 = v54;
    v235.a = 0.0;
    v235.b = 0.0;
    v231.a = 0.0;
    v231.b = 0.0;
    v207 = [(NSTextStorage *)self->_textStorage string];
    context.a = 0.0;
    context.b = 0.0;
    v71 = self->_firstTextView;
    v72 = (!v71 || ![objc_msgSend(v71 "linkTextAttributes")]) && objc_msgSend(objc_msgSend(objc_opt_class(), "_defaultLinkAttributes"), "objectForKey:", @"NSUnderline") == 0;
    if ([(NSTextStorage *)self->_textStorage attribute:@"NSUnderline" atIndex:v23 longestEffectiveRange:&v234 inRange:v219, v220])
    {
      _ZF = *(&v234 + 1) == 0;
    }

    else
    {
      _ZF = 1;
    }

    v74 = !_ZF;
    if (!_ZF || v72)
    {
      if (v74)
      {
        goto LABEL_75;
      }
    }

    else if ([(NSTextStorage *)self->_textStorage attribute:@"NSLink" atIndex:v23 longestEffectiveRange:&v234 inRange:v219, v220]&& *(&v234 + 1))
    {
      goto LABEL_75;
    }

    if (![(NSLayoutManager *)self temporaryAttribute:@"NSUnderline" atCharacterIndex:v23 longestEffectiveRange:&v234 inRange:v219, v220]|| !*(&v234 + 1))
    {
      *&v234 = v23;
      *(&v234 + 1) = v216;
    }

LABEL_75:
    v209 = extraData;
    *(extraData + 168) = v234;
    v75 = *(&v234 + 1) + v234;
    *&v234 = v75;
    if (v23 + v216 >= v75)
    {
      goto LABEL_137;
    }

    v76 = [v207 characterAtIndex:v75 - 1];
    v75 = v234;
    if (v76 > 132)
    {
      if ((v76 - 8232) >= 2 && v76 != 133)
      {
        goto LABEL_137;
      }
    }

    else if (v76 != 10 && v76 != 12)
    {
      if (v76 == 13)
      {
        if (v75 >= [v207 length])
        {
          v75 = v234;
        }

        else
        {
          v77 = [v207 characterAtIndex:v75];
          v75 = v234;
          if (v77 == 10)
          {
            goto LABEL_137;
          }
        }

        goto LABEL_136;
      }

LABEL_137:
      v208 = v52;
      v205 = i;
      v235.a = v209[21];
      v235.b = 0.0;
      if (*&v235.a >= v75)
      {
        v68 = -1.0;
        v69 = 0.0;
      }

      else
      {
        v69 = 0.0;
        v68 = -1.0;
        do
        {
          v117 = [NSTextStorage attribute:"attribute:atIndex:effectiveRange:" atIndex:@"NSFont" effectiveRange:?];
          if (v117)
          {
            v118 = v117;
            v119 = [(NSTextStorage *)self->_textStorage attribute:@"CTVerticalForms" atIndex:*&v235.a effectiveRange:0];
            v120 = [v119 BOOLValue];
            if (v119)
            {
              v121 = 1;
            }

            else
            {
              v121 = v222 == 0;
            }

            v122 = v121;
            if (v120 || (v122 & 1) == 0)
            {
              v118 = [v118 verticalFont];
            }

            [v118 descender];
            v124 = v123;
            [v118 _leading];
            v126 = ceil(v124 - v125) * 5.3636991;
            [v118 underlineThickness];
            if (v127 <= 0.0)
            {
              v127 = v126 * -0.0440277313;
            }

            if (v68 < v127)
            {
              v68 = v127;
            }

            v128 = v126 * 0.0880554625;
            if ([v118 isVertical])
            {
              [v118 ascender];
              v130 = v129;
              [v118 descender];
              if (v130 == -v131)
              {
                v128 = v126 - v68;
              }
            }

            if (v69 > v128)
            {
              v69 = v128;
            }
          }

          *&v235.a += *&v235.b;
        }

        while (*&v235.a < v234);
      }

      v209[18] = v68;
      v209[19] = v69;
      Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
      v235.a = v209[21];
      v235.b = 0.0;
      for (i = v205; *&v235.a < v234; *&v235.a += *&v235.b)
      {
        [NSTextStorage attributesAtIndex:"attributesAtIndex:effectiveRange:" effectiveRange:?];
        v133.location = *&v235.a;
        v133.length = *&v235.b;
        if (*&v235.b + *&v235.a > v234)
        {
          v133.length = v234 - *&v235.a;
          *&v235.b = v234 - *&v235.a;
        }

        v134 = NSIntersectionRange(v133, *(v209 + 21));
        *&v235.a = v134.location;
        *&v235.b = v134.length;
        v135 = COERCE_DOUBLE([(NSLayoutManager *)self glyphRangeForCharacterRange:v134.location actualCharacterRange:v134.length, 0]);
        v137 = *&v135 + v136;
        v231.a = v135;
        v138 = 0.0;
        if (*&v135 < (*&v135 + v136))
        {
          v139 = v135;
          do
          {
            _NSLayoutTreeRunLocationForGlyphAtIndex(self, *&v139, &v231);
            if (v140 > v138)
            {
              v138 = v140;
            }

            *&v139 = *&v231.a + *&v231.b;
            v231.a = v139;
          }

          while (*&v139 < v137);
        }

        *&context.a = vcvtmd_s64_f64(v224 - v138 - v49 + 0.5);
        Value = CFDictionaryGetValue(Mutable, *&context.a);
        *&context.b = &Value[*&v235.b];
        CFDictionarySetValue(Mutable, *&context.a, &Value[*&v235.b]);
      }

      context.a = 0.0;
      context.b = 0.0;
      CFDictionaryApplyFunction(Mutable, _maxApplierFunction, &context);
      if (*&context.b)
      {
        v70 = *&context.a;
      }

      else
      {
        v70 = 0.0;
      }

      CFRelease(Mutable);
      v209[20] = v70;
      v52 = v208;
      v54 = v206;
LABEL_174:
      v9 = 0;
      if (v65 != 0x2000)
      {
        if (v65 == 4096)
        {
          if (v69 >= 0.0)
          {
            v142 = v53 * -0.0880554625;
          }

          else
          {
            v142 = v69;
          }

          v143 = -v70;
          if (v35)
          {
            v143 = v70;
          }

          i = i - v143;
          if (!v223)
          {
            v151 = -(v52 * v142);
            v152 = v52 * v49;
            v153 = 0.0;
            if (v221 != 1)
            {
              v153 = v52 * v68;
            }

            v105 = v221;
            v104 = v52 * v68 * v212;
            if ((a4 & 8) != 0)
            {
              if (v152 < 4.0 || (v160 = v104 * 0.75, v160 <= 0.35))
              {
                v104 = v152 * 0.25;
                v151 = v152 * 0.25 * 2.5;
              }

              else
              {
                v161 = v151 + v160 * 0.5;
                v162 = v160 + -0.5;
                v104 = ceil(v160 + -0.5);
                v163 = vcvtpd_s64_f64(v162);
                if (v35)
                {
                  v164 = -v52;
                }

                else
                {
                  v164 = v52;
                }

                v165 = v164 * i - floor(v164 * i);
                v166 = floor(v161 + 0.5);
                v167 = floor(v161) + 0.5;
                if ((v163 & 1) == 0)
                {
                  v167 = v166;
                }

                v151 = v165 + v167;
                if (v151 <= 1.5 || v104 >= 2.0 && (v151 < 3.0 || (v151 <= 3.0 ? (v168 = v152 < 7.0) : (v168 = 1), !v168)))
                {
                  v151 = v151 + 1.0;
                }
              }

              v159 = 1.5;
            }

            else
            {
              if (v152 >= 2.0 && v104 > 0.35)
              {
                v104 = ceil(v104);
                if (v104 >= v152 || v152 <= 4.0 && v104 >= 3.0 || v152 <= 2.5 && v104 >= 2.0)
                {
                  v104 = v104 + -1.0;
                }

                if (v35)
                {
                  v154 = -v52;
                }

                else
                {
                  v154 = v52;
                }

                v155 = v154 * i - floor(v154 * i);
                v156 = floor(v151 + 0.5);
                v157 = floor(v151) + 0.5;
                if ((v104 & 1) == 0)
                {
                  v157 = v156;
                }

                v151 = v155 + v157;
                if (v151 < 1.5 || (v151 <= 1.5 ? (v158 = v152 <= 4.0) : (v158 = 1), !v158))
                {
                  v151 = v151 + 1.0;
                }
              }

              v159 = 0.5;
            }

            v169 = floor(v153 + v104 * v159);
            if (v151 >= v169)
            {
              v169 = v151;
            }

            v54 = v169 / -v52;
            goto LABEL_230;
          }

          memset(&v235, 0, sizeof(v235));
          v144 = v142;
          CGContextGetUserSpaceToDeviceSpaceTransform(&v235, v29);
          v145 = 1.0;
          if (v52 < 0.400000006)
          {
            v145 = 0.0;
          }

          v146 = v235.tx + i * v235.c + v235.a * 0.0;
          v147 = roundf(v146);
          v148 = v235.ty + i * v235.d + v235.b * 0.0;
          v149 = v145 + ceilf(v148);
          context = v235;
          CGAffineTransformInvert(&v231, &context);
          v54 = v144;
          i = v231.ty + v149 * v231.d + v231.b * v147;
          v150 = v52;
          v68 = fmaxf(roundf(v150), 1.0) / v52;
        }

        else
        {
          v54 = -v49;
        }
      }

      v105 = v221;
      goto LABEL_231;
    }

LABEL_136:
    *&v234 = --v75;
    goto LABEL_137;
  }
}

uint64_t __148__NSLayoutManager_OtherSupport___drawLineForGlyphRange_type_baselineOffset_lineFragmentRect_lineFragmentGlyphRange_containerOrigin_isStrikethrough___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  result = [v0 objectForKey:@"NSUnderlinesBreakForDescenders"];
  if (result)
  {
    result = [v0 BOOLForKey:@"NSUnderlinesBreakForDescenders"];
    _drawLineForGlyphRange_type_baselineOffset_lineFragmentRect_lineFragmentGlyphRange_containerOrigin_isStrikethrough__breakForDescendersDefault = result;
  }

  return result;
}

- (void)_lineGlyphRange:(_NSRange)a3 type:(int64_t)a4 lineFragmentRect:(CGRect)a5 lineFragmentGlyphRange:(_NSRange)a6 containerOrigin:(CGPoint)a7 isStrikethrough:(BOOL)a8
{
  length = a6.length;
  location = a6.location;
  v10 = a3.length;
  y = a7.y;
  x = a7.x;
  height = a5.size.height;
  width = a5.size.width;
  v15 = a5.origin.y;
  v16 = a5.origin.x;
  v17 = a3.location;
  v65 = [(NSTextStorage *)self->_textStorage string];
  if (!_NSUnderlineWhiteSet)
  {
    _NSUnderlineWhiteSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    _NSUnderlineNonWhiteSet = [_NSUnderlineWhiteSet invertedSet];
  }

  [(NSTypesetter *)[(NSLayoutManager *)self typesetter] baselineOffsetInLayoutManager:self glyphIndex:v17];
  v20 = v19;
  v21 = [(NSLayoutManager *)self characterRangeForGlyphRange:v17 actualGlyphRange:v10, 0];
  v23 = v22;
  v58 = [(NSLayoutManager *)self characterRangeForGlyphRange:location actualGlyphRange:length, 0];
  if (v23)
  {
    v25 = location;
    v26 = v21;
    v57 = v58 + v24;
    v27 = v21;
    v28 = v23;
    v62 = v25;
    v59 = length;
    while (1)
    {
      v29 = [v65 rangeOfCharacterFromSet:_NSUnderlineWhiteSet options:0 range:{v27, v28}];
      v30 = v29;
      v64 = v23;
      if (v31)
      {
        v32 = v26;
        v33 = v26 + v23;
        v34 = 0;
        v35 = v33 - v29;
        if (v33 > v29)
        {
          v36 = v29 - v33;
          while (1)
          {
            v37 = [v65 characterAtIndex:v30 + v34];
            if (v37 == 160 || ![_NSUnderlineWhiteSet characterIsMember:v37])
            {
              break;
            }

            ++v34;
            if (!(v36 + v34))
            {
              v34 = v35;
              break;
            }
          }

          v25 = v62;
        }

        v26 = v32;
      }

      else
      {
        v34 = 0;
      }

      if ((*(&self->_lmFlags + 3) & 2) != 0)
      {
        v39 = [(NSLayoutManager *)self glyphRangeForCharacterRange:v27 actualCharacterRange:v28, 0];
        if (v40)
        {
          v41 = v39;
          v42 = v40;
          v60 = v26;
          v43 = [(NSLayoutManager *)self intAttribute:2 forGlyphAtIndex:v39];
          v44 = v41 + v42;
          v45 = v41 + 1;
          if (v45 >= v44)
          {
            v38 = 0x7FFFFFFFFFFFFFFFLL;
            length = v59;
          }

          else
          {
            v46 = v43;
            v47 = v42 - 1;
            while (1)
            {
              if ((v46 - [(NSLayoutManager *)self intAttribute:2 forGlyphAtIndex:v45]))
              {
                v48 = [(NSLayoutManager *)self characterIndexForGlyphAtIndex:v45];
                if (v48 > v27)
                {
                  break;
                }
              }

              ++v45;
              if (!--v47)
              {
                v38 = 0x7FFFFFFFFFFFFFFFLL;
                goto LABEL_29;
              }
            }

            v38 = v48;
LABEL_29:
            length = v59;
            v25 = v62;
          }

          v26 = v60;
          if (!v34)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v38 = 0x7FFFFFFFFFFFFFFFLL;
          length = v59;
          if (!v34)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v38 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v34)
        {
          goto LABEL_33;
        }
      }

      if (v38 == 0x7FFFFFFFFFFFFFFFLL || v30 < v38)
      {
        v51 = v26;
        v38 = v34 + v30;
        [v65 rangeOfCharacterFromSet:_NSUnderlineNonWhiteSet options:0 range:{v58, v34 + v30 - v58}];
        v53 = v52;
        [v65 rangeOfCharacterFromSet:_NSUnderlineNonWhiteSet options:0 range:{v30, v57 - v30}];
        if (v53)
        {
          v23 = v64;
          if ((a4 & 0x8000) == 0 && v54)
          {
            v26 = v51;
            goto LABEL_46;
          }

          if (v30 > v51)
          {
            v50 = [(NSLayoutManager *)self glyphRangeForCharacterRange:v51 actualCharacterRange:v30 - v51, 0];
            v23 = v51 + v64 - v38;
            v28 = v27 + v28 - v38;
            v25 = v62;
            if (!a8)
            {
LABEL_50:
              [(NSLayoutManager *)self drawUnderlineForGlyphRange:v50 underlineType:v49 baselineOffset:a4 lineFragmentRect:v25 lineFragmentGlyphRange:length containerOrigin:v20, v16, v15, width, height, x, y];
              goto LABEL_51;
            }

LABEL_39:
            [(NSLayoutManager *)self drawStrikethroughForGlyphRange:v50 strikethroughType:v49 baselineOffset:a4 lineFragmentRect:v25 lineFragmentGlyphRange:length containerOrigin:v20, v16, v15, width, height, x, y];
LABEL_51:
            v26 = v38;
            goto LABEL_52;
          }

          v23 = v51 + v64 - v38;
          v28 = v27 + v28 - v38;
          v26 = v38;
        }

        else
        {
          v23 = v51 + v64 - v38;
          v26 = v38;
LABEL_46:
          v28 = v27 + v28 - v38;
        }

        v25 = v62;
        goto LABEL_52;
      }

LABEL_33:
      if (v38 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (!v64)
        {
          return;
        }

        v50 = [(NSLayoutManager *)self glyphRangeForCharacterRange:v26 actualCharacterRange:v64, 0];
        v28 = 0;
        v38 = v26 + v64;
        v23 = 0;
LABEL_38:
        if (!a8)
        {
          goto LABEL_50;
        }

        goto LABEL_39;
      }

      if (v38 > v26)
      {
        v50 = [(NSLayoutManager *)self glyphRangeForCharacterRange:v26 actualCharacterRange:v38 - v26, 0];
        v23 = v26 + v64 - v38;
        v28 = v23;
        goto LABEL_38;
      }

      v23 = v26 + v64 - v38;
      v26 = v38;
      v28 = v23;
LABEL_52:
      v27 = v38;
      if (!v28)
      {
        if (v23)
        {
          v56 = [(NSLayoutManager *)self glyphRangeForCharacterRange:v26 actualCharacterRange:v23, 0];
          if (a8)
          {

            [(NSLayoutManager *)self drawStrikethroughForGlyphRange:v56 strikethroughType:v55 baselineOffset:a4 lineFragmentRect:v25 lineFragmentGlyphRange:length containerOrigin:v20, v16, v15, width, height, x, y];
          }

          else
          {

            [(NSLayoutManager *)self drawUnderlineForGlyphRange:v56 underlineType:v55 baselineOffset:a4 lineFragmentRect:v25 lineFragmentGlyphRange:length containerOrigin:v20, v16, v15, width, height, x, y];
          }
        }

        return;
      }
    }
  }
}

+ (id)_defaultLinkAttributesForLabel
{
  if (_defaultLinkAttributesForLabel_onceToken != -1)
  {
    +[NSLayoutManager(NSPrivate) _defaultLinkAttributesForLabel];
  }

  return _defaultLinkAttributesForLabel_defaultLinkAttributes;
}

uint64_t __60__NSLayoutManager_NSPrivate___defaultLinkAttributesForLabel__block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{objc_msgSend(getNSColorClass_0[0](), "linkColor"), @"NSColor", 0}];
  _defaultLinkAttributesForLabel_defaultLinkAttributes = result;
  return result;
}

+ (id)_defaultLinkAttributes
{
  if (_defaultLinkAttributes_onceToken != -1)
  {
    +[NSLayoutManager(NSPrivate) _defaultLinkAttributes];
  }

  return _defaultLinkAttributes_defaultLinkAttributes;
}

uint64_t __52__NSLayoutManager_NSPrivate___defaultLinkAttributes__block_invoke()
{
  v0 = [getNSColorClass_0[0]() linkColor];
  v1 = objc_alloc(MEMORY[0x1E695DF20]);
  result = [v1 initWithObjectsAndKeys:{v0, @"NSColor", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 1), @"NSUnderline", 0}];
  _defaultLinkAttributes_defaultLinkAttributes = result;
  return result;
}

- (id)linkAttributesForLink:(id)a3 forCharacterAtIndex:(unint64_t)a4
{
  v7 = [(NSLayoutManager *)self delegate];
  if (((objc_opt_respondsToSelector() & 1) == 0 || (result = [v7 layoutManager:self linkAttributesForLink:a3 forCharacterAtIndex:a4]) == 0) && ((objc_opt_respondsToSelector() & 1) == 0 || (result = objc_msgSend(self->_firstTextView, "linkAttributesForLink:forCharacterAtIndex:", a3, a4)) == 0))
  {
    result = [self->_firstTextView linkTextAttributes];
    if (!result)
    {
      v9 = [(NSAttributedString *)[(NSLayoutManager *)self textStorage] _isStringDrawingTextStorage];
      v10 = objc_opt_class();
      if (v9)
      {

        return [v10 _defaultLinkAttributesForLabel];
      }

      else
      {

        return [v10 _defaultLinkAttributes];
      }
    }
  }

  return result;
}

- (id)linkAttributesForAttributes:(id)a3 forCharacterAtIndex:(unint64_t)a4
{
  v7 = [(NSLayoutManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [v7 layoutManager:self linkAttributesForAttributes:a3 forCharacterAtIndex:a4]) == 0)
  {
    v9 = [a3 objectForKeyedSubscript:@"NSLink"];

    return [(NSLayoutManager *)self linkAttributesForLink:v9 forCharacterAtIndex:a4];
  }

  return result;
}

- (void)_setRowArrayCache:(id)a3
{
  v3 = *(self->_extraData + 52);
  if (v3 != a3)
  {

    *(self->_extraData + 52) = a3;
  }
}

- (_NSRange)_extendedCharRangeForInvalidation:(_NSRange)a3 editedCharRange:(_NSRange)a4
{
  length = a3.length;
  location = a3.location;
  v6 = self;
  v7 = [(NSLayoutManager *)self _blockRowRangeForCharRange:a4.location, a4.length];
  v109.length = v8;
  v106.location = location;
  v106.length = length;
  v109.location = v7;
  v93 = v109.length;
  v9 = NSUnionRange(v106, v109);
  v10 = v9.location;
  v11 = v9.length;
  v12 = [(NSTextStorage *)v6->_textStorage string];
  v13 = [v12 length];
  v14 = 64;
  lmFlags = v6->_lmFlags;
  v16 = 16;
  if ((*&lmFlags & 0x2000000) == 0)
  {
    v16 = 56;
  }

  v97 = v16;
  if (!v13)
  {
    goto LABEL_140;
  }

  v17 = v13;
  typesetter = v6->_typesetter;
  v105[0] = 0;
  v105[1] = 0;
  v104 = 0;
  v100 = 0u;
  v101 = 0u;
  memset(v102, 0, sizeof(v102));
  v103 = 0u;
  firstUnlaidGlyphIndex = 0;
  v99 = 0;
  if ((*&lmFlags & 0x40000000) != 0)
  {
    extraData = v6->_extraData;
    v99 = v13;
    firstUnlaidGlyphIndex = *(extraData[26] + 8);
  }

  else
  {
    firstUnlaidCharIndex = v6->_firstUnlaidCharIndex;
    if (firstUnlaidCharIndex == 0x7FFFFFFFFFFFFFFFLL || v6->_firstUnlaidGlyphIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSLayoutManager *)v6 getFirstUnlaidCharacterIndex:&v99 glyphIndex:&firstUnlaidGlyphIndex];
    }

    else
    {
      firstUnlaidGlyphIndex = v6->_firstUnlaidGlyphIndex;
      v99 = firstUnlaidCharIndex;
    }
  }

  v21 = [(NSTypesetter *)typesetter attributedString];
  textStorage = v6->_textStorage;
  *(&v101 + 1) = v17;
  *&v102[0] = v9.location;
  if (v21 != textStorage)
  {
    typesetter = 0;
  }

  *&v101 = v12;
  v95 = v12;
  v91 = v7;
  if (v17 <= v9.location)
  {
    v100 = xmmword_18E856290;
    WORD4(v103) = -1;
    goto LABEL_18;
  }

  if (v17 - v9.location >= 0x20)
  {
    v23 = 32;
  }

  else
  {
    v23 = v17 - v9.location;
  }

  *&v100 = v23;
  [v12 getUid("getCharacters:v102 + 8 range:{v9.location, v23}")];
  WORD4(v103) = WORD4(v102[0]);
  *(&v100 + 1) = 1;
  if (v9.location)
  {
LABEL_18:
    if (v9.location == [v12 length])
    {
      v24 = *(&v100 + 1);
      if (*(&v100 + 1) < 2uLL)
      {
        if (*&v102[0])
        {
          if (*&v102[0] >= 0x20uLL)
          {
            v25 = 32;
          }

          else
          {
            v25 = *&v102[0];
          }

          *&v100 = v25;
          *(&v100 + 1) = v25;
          *&v102[0] -= v25;
          v26 = *&v102[0];
          v27 = v101;
          Uid = sel_getUid("getCharacters:range:");
          v29 = v27;
          v14 = 64;
          [v29 Uid];
          v30 = v102 + 2 * *(&v100 + 1) + 8;
LABEL_44:
          v32 = *(v30 - 1);
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      goto LABEL_38;
    }

    if (WORD4(v103) > 0x84u)
    {
      if (WORD4(v103) - 8232 >= 2 && WORD4(v103) != 133)
      {
        goto LABEL_48;
      }
    }

    else if (WORD4(v103) != 10 && WORD4(v103) != 12)
    {
      if (WORD4(v103) != 13)
      {
        goto LABEL_48;
      }

      v31 = *(&v100 + 1) + *&v102[0];
      if (v31 < [v12 length] && objc_msgSend(v12, "characterAtIndex:", v31) == 10)
      {
        goto LABEL_48;
      }
    }

    v24 = *(&v100 + 1);
    if (typesetter)
    {
      if (([(NSTypesetter *)typesetter actionForControlCharacterAtIndex:*&v102[0] + *(&v100 + 1) - 1]& v97) == 0)
      {
LABEL_48:
        v92 = 0;
        v40 = *MEMORY[0x1E696AA80];
        v41 = *(MEMORY[0x1E696AA80] + 8);
        v43 = *(MEMORY[0x1E696AA80] + 16);
        v42 = *(MEMORY[0x1E696AA80] + 24);
        v44 = 1;
        v94 = 1;
        while (1)
        {
          if (WORD4(v103) > 0x84u)
          {
            if (WORD4(v103) - 8232 >= 2 && WORD4(v103) != 133)
            {
              goto LABEL_62;
            }
          }

          else if (WORD4(v103) != 10 && WORD4(v103) != 12)
          {
            if (WORD4(v103) != 13)
            {
              goto LABEL_62;
            }

            v46 = *(&v100 + 1) + *&v102[0];
            if (v46 < [v95 length] && objc_msgSend(v95, "characterAtIndex:", v46) == 10)
            {
              goto LABEL_62;
            }
          }

          if (!typesetter || ([(NSTypesetter *)typesetter actionForControlCharacterAtIndex:*&v102[0] + *(&v100 + 1) - 1]& v97) != 0)
          {
LABEL_86:
            ++v10;
            --v11;
            goto LABEL_87;
          }

LABEL_62:
          if ((*(&v6->super.isa + v14 + 3) & 2) != 0)
          {
            goto LABEL_76;
          }

          if (v10 >= v99)
          {
            goto LABEL_76;
          }

          v47 = [(NSLayoutManager *)v6 _glyphIndexForCharacterIndex:v10 startOfRange:1 okToFillHoles:0 considerNulls:1];
          if (v47 >= firstUnlaidGlyphIndex)
          {
            goto LABEL_76;
          }

          v48 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(v6, v47, v105);
          v52 = v48;
          v53 = v49;
          v54 = v50;
          v55 = v51;
          if (v94)
          {
            v40 = v48;
            v41 = v49;
            v43 = v50;
            v42 = v51;
          }

          v112.origin.x = v40;
          v112.origin.y = v41;
          v112.size.width = v43;
          v112.size.height = v42;
          if (NSEqualRects(*&v48, v112))
          {
            v94 = 0;
          }

          else
          {
            if (v53 == v41 && v55 == v42)
            {
              v94 = 0;
LABEL_75:
              v40 = v52;
              v41 = v53;
              v43 = v54;
              v42 = v55;
              goto LABEL_76;
            }

            v94 = 0;
            v56 = ++v92;
            if (v44 < 0xB)
            {
              goto LABEL_75;
            }

            v40 = v52;
            v41 = v53;
            v43 = v54;
            v42 = v55;
            if (v56 >= 2)
            {
              goto LABEL_86;
            }
          }

LABEL_76:
          v57 = *(&v100 + 1);
          if (*(&v100 + 1) < 2uLL)
          {
            if (*&v102[0])
            {
              v59 = typesetter;
              v60 = v6;
              v61 = v14;
              if (*&v102[0] >= 0x20uLL)
              {
                v62 = 32;
              }

              else
              {
                v62 = *&v102[0];
              }

              *&v100 = v62;
              *(&v100 + 1) = v62;
              v63 = v17;
              *&v102[0] -= v62;
              v64 = *&v102[0];
              v65 = v101;
              v66 = sel_getUid("getCharacters:range:");
              v67 = v64;
              v17 = v63;
              v68 = v62;
              v14 = v61;
              v6 = v60;
              typesetter = v59;
              [v65 v66];
              v58 = *(v102 + *(&v100 + 1) + 3);
            }

            else
            {
              *(&v100 + 1) = 0;
              v58 = -1;
            }
          }

          else
          {
            --*(&v100 + 1);
            v58 = *(v102 + v57 + 2);
          }

          WORD4(v103) = v58;
          ++v11;
          ++v44;
          if (!--v10)
          {
            goto LABEL_87;
          }
        }
      }

      v24 = *(&v100 + 1);
    }

    if (v24 < 2)
    {
      if (*&v102[0])
      {
        if (*&v102[0] >= 0x20uLL)
        {
          v33 = 32;
        }

        else
        {
          v33 = *&v102[0];
        }

        *&v100 = v33;
        *(&v100 + 1) = v33;
        v34 = v17;
        *&v102[0] -= v33;
        v35 = *&v102[0];
        v36 = v101;
        v37 = sel_getUid("getCharacters:range:");
        v38 = v35;
        v17 = v34;
        v39 = v33;
        v14 = 64;
        [v36 v37];
        v30 = v102 + 2 * *(&v100 + 1) + 8;
        goto LABEL_44;
      }

LABEL_46:
      *(&v100 + 1) = 0;
      v32 = -1;
LABEL_47:
      WORD4(v103) = v32;
      v11 = v9.length + 1;
      v10 = v9.location - 1;
      if (v9.location == 1)
      {
        goto LABEL_87;
      }

      goto LABEL_48;
    }

LABEL_38:
    *(&v100 + 1) = v24 - 1;
    v32 = *(v102 + v24 + 2);
    goto LABEL_47;
  }

LABEL_87:
  v69 = v10 + v11;
  if (v10 + v11 < v17)
  {
    if (v11)
    {
      v70 = v69 - 1;
      if (v69 - 1 > v91 + v93)
      {
        goto LABEL_102;
      }

      v71 = [v95 characterAtIndex:v69 - 1];
      if (v71 > 132)
      {
        if ((v71 - 8232) >= 2 && v71 != 133)
        {
          goto LABEL_102;
        }
      }

      else if (v71 != 10 && v71 != 12 && (v71 != 13 || v69 < [v95 length] && objc_msgSend(v95, "characterAtIndex:", v10 + v11) == 10))
      {
        goto LABEL_102;
      }

      if (typesetter && ([(NSTypesetter *)typesetter actionForControlCharacterAtIndex:v69 - 1]& v97) == 0)
      {
        goto LABEL_102;
      }
    }

    ++v11;
    v70 = v69;
    v69 = v10 + v11;
    if (v10 + v11 < v17)
    {
LABEL_102:
      v72 = *(&v6->super.isa + v14);
      v73 = v69 + 30000;
      if (v69 + 30000 >= v17)
      {
        v73 = v17;
      }

      *(&v101 + 1) = v17;
      *&v102[0] = v70;
      if ((v72 & 0x2000000) != 0)
      {
        v74 = v17;
      }

      else
      {
        v74 = v73;
      }

      *&v101 = v95;
      if (v17 <= v70)
      {
        *&v100 = 0;
        v76 = -1;
      }

      else
      {
        if (v17 - v70 >= 0x20)
        {
          v75 = 32;
        }

        else
        {
          v75 = v17 - v70;
        }

        *&v100 = v75;
        [v95 getUid("getCharacters:v102 + 8 range:{v70, v75}")];
        v76 = WORD4(v102[0]);
      }

      WORD4(v103) = v76;
      *(&v100 + 1) = 1;
      v96 = v17 - v10;
      while (1)
      {
        if (WORD4(v103) > 0x84u)
        {
          if (WORD4(v103) - 8232 >= 2 && WORD4(v103) != 133)
          {
            goto LABEL_127;
          }
        }

        else if (WORD4(v103) != 10 && WORD4(v103) != 12)
        {
          if (WORD4(v103) != 13)
          {
            goto LABEL_127;
          }

          v78 = *(&v100 + 1) + *&v102[0];
          if (v78 < [v95 length] && objc_msgSend(v95, "characterAtIndex:", v78) == 10)
          {
            goto LABEL_127;
          }
        }

        if (!typesetter || ([(NSTypesetter *)typesetter actionForControlCharacterAtIndex:*&v102[0] + *(&v100 + 1) - 1]& v97) != 0)
        {
          break;
        }

LABEL_127:
        v79 = v100;
        if (*(&v100 + 1) >= v100)
        {
          v81 = *&v102[0] + v100;
          if (*(&v101 + 1) > *&v102[0] + v100)
          {
            if (*(&v101 + 1) - (*&v102[0] + v100) >= 0x20uLL)
            {
              v82 = 32;
            }

            else
            {
              v82 = *(&v101 + 1) - (*&v102[0] + v100);
            }

            *&v102[0] += v100;
            *&v100 = v82;
            [v101 getUid("getCharacters:v102 + 8 range:{v81, v82}")];
            WORD4(v103) = WORD4(v102[0]);
            *(&v100 + 1) = 1;
            goto LABEL_136;
          }

          *(&v100 + 1) = v100 + 1;
          v80 = -1;
        }

        else
        {
          ++*(&v100 + 1);
          v80 = *(v102 + *(&v79 + 1) + 4);
        }

        WORD4(v103) = v80;
LABEL_136:
        ++v11;
        if (v10 + v11 >= v74)
        {
          v11 = v96;
          break;
        }
      }
    }
  }

  v83 = [(NSLayoutManager *)v6 _blockRowRangeForCharRange:v10 completeRows:v11, &v104];
  v85 = v84;
  v107.location = v10;
  v107.length = v11;
  v110.location = v83;
  v110.length = v85;
  v86 = NSUnionRange(v107, v110);
  location = v86.location;
  length = v86.length;
  if ((v104 & 1) == 0)
  {
    v111.location = [(NSLayoutManager *)v6 _blockRangeForCharRange:v83, v85];
    v111.length = v87;
    v88 = NSUnionRange(v86, v111);
    location = v88.location;
    length = v88.length;
  }

LABEL_140:
  v89 = location;
  v90 = length;
  result.length = v90;
  result.location = v89;
  return result;
}

- (BOOL)_canDoLayout
{
  if ((*&self->_lmFlags & 0x30000) == 0x10000)
  {
    return ![(NSTextStorage *)self->_textStorage _isEditing:v2];
  }

  else
  {
    return 1;
  }
}

- (void)_fillGlyphHoleAtIndex:(unint64_t)a3 desiredNumberOfCharacters:(unint64_t)a4
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v5 = 2048;
  if ((*(&self->_lmFlags + 3) & 8) == 0)
  {
    v5 = 0x2000;
  }

  if (!a4)
  {
    a4 = **(self->_extraData + 26);
  }

  if (a4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a4;
  }

  _NSGlyphTreeGetFirstHoleAfterGlyphIndex(self, 0, v6, &v9, &v8, &v10);
  v7 = v8;
  if (v8 > v6)
  {
    v8 = v6;
    v7 = v6;
  }

  [(NSLayoutManager *)self _fillGlyphHoleForCharacterRange:v9 startGlyphIndex:v7 desiredNumberOfCharacters:v10, v7];
}

- (void)_fillGlyphHoleForCharacterRange:(_NSRange)a3 startGlyphIndex:(unint64_t)a4 desiredNumberOfCharacters:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if ((*&self->_lmFlags & 0x8000000) != 0)
  {
    v9 = 2048;
  }

  else
  {
    v9 = 0x2000;
  }

  extraData = self->_extraData;
  v11 = [(NSAttributedString *)[(NSLayoutManager *)self textStorage] _isStringDrawingTextStorage];
  if (!v11 && !extraData[7])
  {
    v12 = [objc_msgSend(MEMORY[0x1E696AE68] allocWithZone:{-[NSLayoutManager zone](self, "zone")), "init"}];
    v13 = 0;
    atomic_compare_exchange_strong(extraData + 7, &v13, v12);
    if (v13)
    {
    }
  }

  [extraData[7] lock];
  v14 = [(NSTextStorage *)self->_textStorage _lockForReading];
  if ((*&self->_lmFlags & 0x30000) == 0x10000 && [(NSTextStorage *)self->_textStorage _isEditing])
  {
    if (v14)
    {
      [(NSTextStorage *)self->_textStorage _unlock];
    }

    if (!v11)
    {
      [*(self->_extraData + 7) unlock];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@ *** attempted glyph generation while textStorage is editing.  It is not valid to cause the layoutManager to do glyph generation while the textStorage is editing (ie the textStorage has been sent a beginEditing message without a matching endEditing.)", _NSFullMethodName()}];
  }

  if ((*(&self->_lmFlags + 2) & 8) != 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"*** layout manager %p reentrant glyph generation problem.", self}];
  }

  if (a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = length;
  }

  if (v15 <= v9)
  {
    v15 = v9;
  }

  self->_cachedLocationNominalGlyphRange = xmmword_18E856180;
  self->_newlyFilledGlyphRange.location = a4;
  self->_newlyFilledGlyphRange.length = 0;
  if (length >= v15)
  {
    length = v15;
  }

  *&self->_lmFlags |= 0x80000u;
  [(NSTextStorage *)self->_textStorage _setForceFixAttributes:1];
  v17 = a4;
  v18 = location;
  [(NSGlyphGenerator *)[(NSLayoutManager *)self glyphGenerator] generateGlyphsForGlyphStorage:self desiredNumberOfCharacters:length glyphIndex:&v17 characterIndex:&v18];
  v19 = v18 - location;
  [(NSTextStorage *)self->_textStorage _setForceFixAttributes:0];
  *&self->_lmFlags &= ~0x80000u;
  self->_newlyFilledGlyphRange = xmmword_18E856180;
  if (v14)
  {
    [(NSTextStorage *)self->_textStorage _unlock];
  }

  if (!v11)
  {
    [*(self->_extraData + 7) unlock];
  }
}

- (void)_doLayoutWithFullContainerStartingAtGlyphIndex:(unint64_t)a3 nextGlyphIndex:(unint64_t *)a4
{
  v7 = *(self->_extraData + 26);
  v8 = *(v7 + 8);
  v9 = MEMORY[0x1E696AA80];
  if ((*(v7 + 56) & 1) == 0)
  {
    [(NSLayoutManager *)self _setExtraLineFragmentRect:0 usedRect:*MEMORY[0x1E696AA80] textContainer:*(MEMORY[0x1E696AA80] + 8), *(MEMORY[0x1E696AA80] + 16), *(MEMORY[0x1E696AA80] + 24), *MEMORY[0x1E696AA80], *(MEMORY[0x1E696AA80] + 8), *(MEMORY[0x1E696AA80] + 16), *(MEMORY[0x1E696AA80] + 24)];
  }

  if (v8 <= a3)
  {
    v8 = a3;
  }

  else
  {
    [(NSLayoutManager *)self _setTextContainer:0 forGlyphRange:a3, v8 - a3];
    [(NSLayoutManager *)self setLineFragmentRect:a3 forGlyphRange:v8 - a3 usedRect:*v9, v9[1], v9[2], v9[3], *v9, v9[1], v9[2], v9[3]];
    [(NSLayoutManager *)self setLocation:a3 forStartOfGlyphRange:v8 - a3, *MEMORY[0x1E696AA78], *(MEMORY[0x1E696AA78] + 8)];
    v10 = *(self->_extraData + 23);
    if (v10)
    {
      _NSRemoveTextBlocksStartingAtGlyphIndex(v10, a3);
    }
  }

  *a4 = v8;
}

- (void)_noteFirstTextViewVisibleCharacterRangeIfAfterIndex:(unint64_t)a3
{
  [self->_firstTextView visibleRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [self->_firstTextView textContainerOrigin];
  v14 = v13;
  v16 = v15;
  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  if (!NSIsEmptyRect(v31))
  {
    v17 = v6 - v14;
    v18 = v8 - v16;
    v19 = -[NSLayoutManager glyphRangeForBoundingRect:inTextContainer:](self, "glyphRangeForBoundingRect:inTextContainer:", [self->_firstTextView textContainer], v17, v18, v10, v12);
    if (v20)
    {
      v21 = v19;
      v22 = [(NSLayoutManager *)self _primitiveCharacterRangeForGlyphRange:v19, v20];
      if (v23)
      {
        v24 = v22 >= a3;
      }

      else
      {
        v24 = 0;
      }

      if (v24)
      {
        v25 = v22;
        v26 = v23;
        v27 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v21, 0);
        v28 = (self->_extraData + 352);
        *v28 = v25;
        v28[1] = v26;
        v29 = (self->_extraData + 368);
        *v29 = v17 - v27;
        v29[1] = v18 - v30;
      }
    }
  }
}

- (void)_fillLayoutHoleForCharacterRange:(_NSRange)a3 desiredNumberOfLines:(unint64_t)a4 isSoft:(BOOL)a5
{
  length = a3.length;
  location = a3.location;
  range2 = [(NSTextStorage *)self->_textStorage length];
  v150 = 0;
  v151[0] = 0;
  extraData = self->_extraData;
  v147 = [(NSAttributedString *)[(NSLayoutManager *)self textStorage] _isStringDrawingTextStorage];
  if (!v147 && !extraData[7])
  {
    v11 = [objc_msgSend(MEMORY[0x1E696AE68] allocWithZone:{-[NSLayoutManager zone](self, "zone")), "init"}];
    v12 = 0;
    atomic_compare_exchange_strong(extraData + 7, &v12, v11);
    if (v12)
    {
    }
  }

  [extraData[7] lock];
  v146 = [(NSTextStorage *)self->_textStorage _lockForReading];
  if (!a5 && (*(&self->_lmFlags + 3) & 0x40) != 0 && self->_firstTextView && !*(self->_extraData + 45))
  {
    [(NSLayoutManager *)self _noteFirstTextViewVisibleCharacterRangeIfAfterIndex:location];
  }

  if ((*&self->_lmFlags & 0x30000) == 0x10000 && [(NSTextStorage *)self->_textStorage _isEditing])
  {
    if (v146)
    {
      [(NSTextStorage *)self->_textStorage _unlock];
    }

    if (!v147)
    {
      [*(self->_extraData + 7) unlock];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@ *** attempted layout while textStorage is editing.  It is not valid to cause the layoutManager to do layout while the textStorage is editing (ie the textStorage has been sent a beginEditing message without a matching endEditing.)", _NSFullMethodName()}];
  }

  lmFlags = self->_lmFlags;
  if ((*&lmFlags & 8) == 0)
  {
    ++self->_textViewResizeDisableStack;
    lmFlags = self->_lmFlags;
  }

  if ((*&lmFlags & 0x2000) == 0)
  {
    goto LABEL_20;
  }

  extraLineFragmentContainer = self->_extraLineFragmentContainer;
  if (extraLineFragmentContainer)
  {
    goto LABEL_22;
  }

  if (self->_firstUnlaidCharIndex == 0x7FFFFFFFFFFFFFFFLL || (firstUnlaidGlyphIndex = self->_firstUnlaidGlyphIndex, firstUnlaidGlyphIndex == 0x7FFFFFFFFFFFFFFFLL))
  {
    [(NSLayoutManager *)self getFirstUnlaidCharacterIndex:0 glyphIndex:v151];
    firstUnlaidGlyphIndex = v151[0];
    if (v151[0])
    {
      goto LABEL_32;
    }

LABEL_50:
    extraLineFragmentContainer = *(self->_extraData + 10);
    goto LABEL_22;
  }

  v151[0] = self->_firstUnlaidGlyphIndex;
  if (!firstUnlaidGlyphIndex)
  {
    goto LABEL_50;
  }

LABEL_32:
  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    extraLineFragmentContainer = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
  }

  else
  {
    v22 = firstUnlaidGlyphIndex - 1;
    if ([(NSRunStorage *)self->_containerRuns count]<= firstUnlaidGlyphIndex - 1)
    {
LABEL_20:
      extraLineFragmentContainer = 0;
      goto LABEL_22;
    }

    containerRuns = self->_containerRuns;
    _NSBlockNumberForIndex(containerRuns, v22, 0);
    v25 = 0;
    if (containerRuns->_gapBlockIndex <= v24)
    {
      v25 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
    }

    extraLineFragmentContainer = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v25 + v24)];
  }

LABEL_22:
  v15 = [(NSLayoutManager *)self glyphRangeForCharacterRange:location actualCharacterRange:1, 0];
  v16 = self->_lmFlags;
  if ((*&v16 & 1) == 0)
  {
    if ((*&v16 & 0x8000000) != 0)
    {
      if ([*(self->_extraData + 23) count])
      {
        v17 = range2 - location;
        v18 = location;
      }

      else
      {
        v152.location = location;
        v152.length = length;
        v153.location = 0;
        v153.length = range2;
        v26 = NSIntersectionRange(v152, v153);
        v18 = v26.location;
        v17 = v26.length;
      }

      [(NSLayoutManager *)self _invalidateGlyphsForExtendedCharacterRange:v18 changeInLength:v17 includeBlocks:0, 0];
    }

    v27 = [(NSTypesetter *)[(NSLayoutManager *)self typesetter] layoutCharactersInRange:location forLayoutManager:length maximumNumberOfLineFragments:self, a4];
    v29 = v28;
    v137 = v27;
    v30 = [(NSLayoutManager *)self _primitiveGlyphRangeForCharacterRange:?];
    v32 = v31;
    v141 = v30;
    v150 = (v30 + v31);
    v136 = v29;
    if (v15 != (v30 + v31) || (v33 = self->_extraData, v15 >= *(v33[26] + 8)))
    {
      v39 = 0;
      v140 = 0x7FFFFFFFFFFFFFFFLL;
      v19 = v31;
LABEL_81:
      v143 = v39;
      if ([(NSLayoutManager *)self hasNonContiguousLayout])
      {
        v68 = ![(NSLayoutManager *)self isScrolling];
      }

      else
      {
        v68 = 1;
      }

      v142 = v68;
      goto LABEL_85;
    }

    *value = xmmword_18E856180;
    if (v33[23] && (v34 = [-[NSTextStorage attribute:atIndex:effectiveRange:](self->_textStorage attribute:@"NSParagraphStyle" atIndex:location effectiveRange:{0), "textBlocks"}]) != 0)
    {
      v35 = v34;
      if ([v34 count])
      {
        v36 = [v35 objectAtIndex:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = -[NSAttributedString _rangeOfTextTableRow:atIndex:](self->_textStorage, "_rangeOfTextTableRow:atIndex:", [v36 table], location);
          v39 = v38;
          value[0] = [(NSLayoutManager *)self _primitiveGlyphRangeForCharacterRange:v37, v38];
          value[1] = v40;
          v41 = v37;
        }

        else
        {
          v39 = 0;
          v41 = 0x7FFFFFFFFFFFFFFFLL;
          v40 = value[1];
        }

        if (!v40)
        {
          [(NSLayoutManager *)self layoutRectForTextBlock:v36 atIndex:location effectiveRange:value];
          if (value[1])
          {
            v41 = [(NSLayoutManager *)self _primitiveCharacterRangeForGlyphRange:value[0]];
            v39 = v42;
          }

          else
          {
            v43 = [(NSAttributedString *)self->_textStorage rangeOfTextBlock:v36 atIndex:location];
            v39 = v44;
            value[0] = [(NSLayoutManager *)self _primitiveGlyphRangeForCharacterRange:v43, v44];
            v41 = v43;
            value[1] = v45;
          }
        }
      }

      else
      {
        v39 = 0;
        v41 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v39 = 0;
      v41 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v41 && v39 && value[1] && v15 > value[0])
    {
      v46 = v41;
      v148 = 0uLL;
      if ((*(&self->_lmFlags + 3) & 0x40) != 0)
      {
        v144 = (v15 - 1);
        v148.n128_u64[1] = *(*(self->_extraData + 26) + 8);
        v50 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
        if (v50)
        {
          goto LABEL_70;
        }
      }

      else if ([(NSRunStorage *)self->_containerRuns count]> (v15 - 1))
      {
        v47 = self->_containerRuns;
        v144 = (v15 - 1);
        _NSBlockNumberForIndex(v47, (v15 - 1), &v148);
        v49 = v47->_gapBlockIndex <= v48 ? v47->_maxBlocks - v47->_numBlocks : 0;
        v50 = *&v47->_runs->var1[(v47->_elementSize + 8) * (v49 + v48)];
        if (v50)
        {
LABEL_70:
          v51 = v148.n128_u64[0];
          if (v148.n128_u64[0] == value[0])
          {
            v52 = value[1];
            v53 = v148.n128_u64[0] - v15;
            v54 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v144, 0);
            v56 = v55;
            v58 = v57;
            v60 = v59;
            [v50 size];
            v62 = 10000000.0;
            if (v61 > 0.0)
            {
              v62 = v61;
            }

            v63 = v56 + v60;
            v64 = v62 - v63;
            if (v64 >= 0.0)
            {
              v65 = v64;
            }

            else
            {
              v65 = 0.0;
            }

            [(NSLayoutManager *)self setTextContainer:v50 forGlyphRange:v15, &v52[v53]];
            [(NSLayoutManager *)self setLineFragmentRect:v15 forGlyphRange:&v52[v53] usedRect:v54, v63, v58, v65, v54, v63, v58, v65];
            [(NSLayoutManager *)self setLocation:v15 forStartOfGlyphRange:&v52[v53], *MEMORY[0x1E696AA78], *(MEMORY[0x1E696AA78] + 8)];
            v66 = &v52[v51];
            if (v15 < v66)
            {
              v67 = v15;
              do
              {
                [(NSLayoutManager *)self setNotShownAttribute:1 forGlyphAtIndex:v67++];
              }

              while (v66 != v67);
            }

            v39 = 0;
            v150 = v66;
            v46 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }
      }
    }

    else
    {
      v39 = 0;
      *&self->_lmFlags |= 1u;
      v46 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v19 = v32;
    v140 = v46;
    goto LABEL_81;
  }

  if (*(*(self->_extraData + 26) + 56))
  {
    _NSFastFillAllGlyphHolesForGlyphRange(self, v15, 0x9C4uLL);
  }

  [(NSLayoutManager *)self _doLayoutWithFullContainerStartingAtGlyphIndex:v15 nextGlyphIndex:&v150];
  v19 = v150 - v15;
  v137 = [(NSLayoutManager *)self _primitiveCharacterRangeForGlyphRange:v15, v150 - v15];
  v136 = v20;
  v142 = 0;
  v143 = 0;
  v140 = 0x7FFFFFFFFFFFFFFFLL;
  v141 = v15;
LABEL_85:
  _NSFastFillAllGlyphHolesForGlyphRange(self, v150, 1uLL);
  self->_firstUnlaidGlyphIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->_firstUnlaidCharIndex = 0x7FFFFFFFFFFFFFFFLL;
  _NSClearGlyphIndexForPointCache(self);
  v69 = xmmword_18E856180;
  self->_cachedLocationNominalGlyphRange = xmmword_18E856180;
  v70 = self->_extraData;
  v139 = v19;
  if (!v19)
  {
    LODWORD(v71) = 0;
    goto LABEL_98;
  }

  v71 = *(v70 + 49);
  if (!v71)
  {
    goto LABEL_98;
  }

  v72 = &v141[v19 - 1];
  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    v76 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
  }

  else if ([(NSRunStorage *)self->_containerRuns count]<= v72)
  {
    v76 = 0;
  }

  else
  {
    v73 = self->_containerRuns;
    _NSBlockNumberForIndex(v73, v72, 0);
    v75 = 0;
    if (v73->_gapBlockIndex <= v74)
    {
      v75 = v73->_maxBlocks - v73->_numBlocks;
    }

    v76 = *&v73->_runs->var1[(v73->_elementSize + 8) * (v75 + v74)];
  }

  v69 = xmmword_18E856180;
  v70 = self->_extraData;
  if (v76 != *(v70 + 51) || v137 < *(v70 + 48))
  {
    LODWORD(v71) = 0;
    goto LABEL_98;
  }

  v108 = *(v70 + 49) + *(v70 + 48);
  if (v137 + v136 == v108)
  {
    _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v72, 0);
    v70 = self->_extraData;
    if (vabdd_f64(v109 + v110, *(v70 + 50)) < 0.01)
    {
      LODWORD(v71) = 1;
      goto LABEL_255;
    }

    v108 = *(v70 + 49) + *(v70 + 48);
    v69 = xmmword_18E856180;
  }

  if (v137 + v136 >= v108)
  {
    LODWORD(v71) = 0;
    goto LABEL_98;
  }

  value[0] = 0;
  _NSLayoutTreeGetFirstHoleAfterGlyphIndex(self, v150, value);
  v77 = value[0];
  if (value[0] == v150)
  {
    v138 = 1;
LABEL_106:
    if (*(*(self->_extraData + 26) + 8) > v77)
    {
      if ((*(&self->_lmFlags + 3) & 0x40) != 0)
      {
        v87 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
      }

      else
      {
        v83 = (v77 - 1);
        if ([(NSRunStorage *)self->_containerRuns count]<= (v77 - 1))
        {
          v87 = 0;
        }

        else
        {
          v84 = self->_containerRuns;
          _NSBlockNumberForIndex(v84, v83, 0);
          v86 = 0;
          if (v84->_gapBlockIndex <= v85)
          {
            v86 = v84->_maxBlocks - v84->_numBlocks;
          }

          v87 = *&v84->_runs->var1[(v84->_elementSize + 8) * (v86 + v85)];
        }
      }

      value[0] = 0;
      v88 = self->_extraData;
      if (v88[10] == v87)
      {
        v89 = 0;
      }

      else if (CFDictionaryGetValueIfPresent(v88[11], v87, value))
      {
        v89 = value[0];
      }

      else
      {
        v89 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v90 = [(NSMutableArray *)self->_textContainers count];
      if (v89 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v91 = v90;
        [(NSLayoutManager *)self _invalidateUsageForTextContainersInRange:v89, v90 - v89];
        v92 = v89 + 1;
        if (v92 < v91)
        {
          do
          {
            CFDictionaryRemoveValue(*(self->_extraData + 12), [(NSMutableArray *)self->_textContainers objectAtIndex:v92++]);
          }

          while (v91 != v92);
        }
      }
    }

    goto LABEL_123;
  }

  LODWORD(v71) = 0;
  v70 = self->_extraData;
LABEL_255:
  v69 = xmmword_18E856180;
LABEL_98:
  *(v70 + 24) = v69;
  *(self->_extraData + 50) = 0;
  *(self->_extraData + 51) = 0;
  if (v71)
  {
    v138 = 1;
    v77 = v150;
    goto LABEL_106;
  }

  v77 = v150;
  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    v138 = 0;
    goto LABEL_106;
  }

  v78 = *(*(self->_extraData + 26) + 8);
  if (v78 <= v150)
  {
    v138 = 0;
  }

  else
  {
    v79 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, v150);
    v80 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, v78) - v79;
    v81 = self->_lmFlags;
    v82 = *&v81 & 1;
    if ((*&v81 & 0x8100000) != 0)
    {
      [(NSLayoutManager *)self _invalidateGlyphsForExtendedCharacterRange:v79 changeInLength:v80 includeBlocks:0, 0];
      v81 = self->_lmFlags;
    }

    [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:v79 isSoft:v80 invalidateUsage:0, (*&v81 >> 30) & 1];
    v138 = 0;
    self->_lmFlags = (*&self->_lmFlags & 0xFFFFFFFE | v82);
  }

LABEL_123:
  v93 = self->_extraData;
  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    v99 = *(v93[26] + 8);
    if (v150 < v99)
    {
      goto LABEL_166;
    }

    v100 = [(NSTextStorage *)self->_textStorage string];
    if (range2)
    {
      v101 = v100;
      v102 = [v100 characterAtIndex:range2 - 1];
      if (v102 > 132)
      {
        if ((v102 - 8232) >= 2 && v102 != 133)
        {
          goto LABEL_166;
        }
      }

      else if (v102 != 10 && v102 != 12 && (v102 != 13 || range2 < [v101 length] && objc_msgSend(v101, "characterAtIndex:", range2) == 10))
      {
        goto LABEL_166;
      }
    }

    [(NSTypesetter *)[(NSLayoutManager *)self typesetter] layoutGlyphsInLayoutManager:self startingAtGlyphIndex:v99 maxNumberOfLineFragments:1 nextGlyphIndex:&v150];
    goto LABEL_166;
  }

  if (*(v93[30] + 56))
  {
    goto LABEL_166;
  }

  v94 = *(v93[26] + 8);
  v95 = [(NSMutableArray *)self->_textContainers count];
  v96 = [(NSTextStorage *)self->_textStorage string];
  if (range2)
  {
    v97 = v96;
    v98 = [v96 characterAtIndex:range2 - 1];
    if (v98 > 132)
    {
      if ((v98 - 8232) >= 2 && v98 != 133)
      {
        goto LABEL_145;
      }
    }

    else if (v98 != 10 && v98 != 12 && (v98 != 13 || range2 < [v97 length] && objc_msgSend(v97, "characterAtIndex:", range2) == 10))
    {
      goto LABEL_145;
    }
  }

  [(NSTypesetter *)[(NSLayoutManager *)self typesetter] layoutGlyphsInLayoutManager:self startingAtGlyphIndex:v94 maxNumberOfLineFragments:1 nextGlyphIndex:&v150];
LABEL_145:
  if (v94)
  {
    if ((*(&self->_lmFlags + 3) & 0x40) != 0)
    {
      v107 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
    }

    else
    {
      v103 = v94 - 1;
      if ([(NSRunStorage *)self->_containerRuns count]<= v103)
      {
        v107 = 0;
      }

      else
      {
        v104 = self->_containerRuns;
        _NSBlockNumberForIndex(v104, v103, 0);
        v106 = 0;
        if (v104->_gapBlockIndex <= v105)
        {
          v106 = v104->_maxBlocks - v104->_numBlocks;
        }

        v107 = *&v104->_runs->var1[(v104->_elementSize + 8) * (v106 + v105)];
      }
    }

    value[0] = 0;
    v111 = self->_extraData;
    if (v111[10] == v107)
    {
      v94 = 1;
    }

    else if (CFDictionaryGetValueIfPresent(v111[11], v107, value))
    {
      v94 = value[0] + 1;
    }

    else
    {
      v94 = 0x8000000000000000;
    }
  }

  if (v94 < v95)
  {
    do
    {
      [(NSLayoutManager *)self _resizeTextViewForTextContainer:[(NSMutableArray *)self->_textContainers objectAtIndex:v94++]];
    }

    while (v95 != v94);
  }

LABEL_166:
  [(NSLayoutManager *)self _invalidateInsertionPoint];
  if (v142)
  {
    if (v138)
    {
      v112 = v139;
    }

    else
    {
      v112 = v139;
      if ((*(&self->_lmFlags + 3) & 0x40) != 0)
      {
        v112 = *(*(self->_extraData + 26) + 8) - v15;
      }
    }

    [(NSLayoutManager *)self invalidateDisplayForGlyphRange:v141, v112];
  }

  else if (self->_deferredDisplayCharRange.location != 0x7FFFFFFFFFFFFFFFLL && !self->_displayInvalidationDisableStack)
  {
    [(NSLayoutManager *)self _invalidateDisplayIfNeeded];
  }

  v113 = self->_lmFlags;
  if ((*&v113 & 8) == 0)
  {
    if (!self->_textViewResizeDisableStack || (--self->_textViewResizeDisableStack, v113 = self->_lmFlags, !self->_textViewResizeDisableStack))
    {
      self->_lmFlags = (*&v113 | 8);
      v114 = [(NSMutableArray *)self->_textContainers count];
      v115 = [(NSMutableArray *)self->_textContainers count];
      if (v115)
      {
        v116 = v115;
        for (i = 0; i != v116; ++i)
        {
          if (*(CFStorageGetValueAtIndex() + 64))
          {
            [(NSLayoutManager *)self _recalculateUsageForTextContainerAtIndex:i];
          }
        }
      }

      if (v114)
      {
        for (j = 0; j != v114; ++j)
        {
          if ((*(CFStorageGetValueAtIndex() + 64) & 2) != 0)
          {
            [(NSLayoutManager *)self _resizeTextViewForTextContainer:[(NSMutableArray *)self->_textContainers objectAtIndex:j]];
          }
        }
      }

      v113 = (*&self->_lmFlags & 0xFFFFFFF7);
      self->_lmFlags = v113;
    }
  }

  v119 = *(*(self->_extraData + 30) + 56);
  if ((*&v113 & 0x2000) == 0)
  {
    if (*(*(self->_extraData + 30) + 56))
    {
      goto LABEL_228;
    }

    goto LABEL_223;
  }

  v120 = self->_extraLineFragmentContainer;
  if (v120)
  {
    goto LABEL_193;
  }

  v125 = [(NSTextStorage *)self->_textStorage length];
  v126 = *(*(self->_extraData + 26) + 8);
  v127 = [(NSTextStorage *)self->_textStorage string];
  if ((v119 & 1) == 0)
  {
    v120 = 0;
    if (!v125 || !v126)
    {
      goto LABEL_198;
    }

    v128 = v127;
    v129 = [v127 characterAtIndex:v125 - 1];
    v120 = 0;
    if (v129 > 132)
    {
      if ((v129 - 8232) < 2 || v129 == 133)
      {
        goto LABEL_198;
      }
    }

    else
    {
      if (v129 == 10 || v129 == 12)
      {
        goto LABEL_198;
      }

      if (v129 == 13 && (v125 >= [v128 length] || objc_msgSend(v128, "characterAtIndex:", v125) != 10))
      {
        v120 = 0;
        goto LABEL_198;
      }
    }
  }

  if (self->_firstUnlaidCharIndex == 0x7FFFFFFFFFFFFFFFLL || (v131 = self->_firstUnlaidGlyphIndex, v131 == 0x7FFFFFFFFFFFFFFFLL))
  {
    [(NSLayoutManager *)self getFirstUnlaidCharacterIndex:0 glyphIndex:v151];
    v131 = v151[0];
    if (v151[0])
    {
      goto LABEL_240;
    }

LABEL_247:
    v120 = *(self->_extraData + 10);
    goto LABEL_193;
  }

  v151[0] = self->_firstUnlaidGlyphIndex;
  if (!v131)
  {
    goto LABEL_247;
  }

LABEL_240:
  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    v120 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
  }

  else
  {
    v132 = v131 - 1;
    if ([(NSRunStorage *)self->_containerRuns count]<= v131 - 1)
    {
      v120 = 0;
    }

    else
    {
      v133 = self->_containerRuns;
      _NSBlockNumberForIndex(v133, v132, 0);
      v135 = 0;
      if (v133->_gapBlockIndex <= v134)
      {
        v135 = v133->_maxBlocks - v133->_numBlocks;
      }

      v120 = *&v133->_runs->var1[(v133->_elementSize + 8) * (v135 + v134)];
    }
  }

LABEL_193:
  if (extraLineFragmentContainer == v120 && (v119 & 1) != 0)
  {
    goto LABEL_228;
  }

LABEL_198:
  value[0] = 0;
  v122 = self->_extraData;
  if (v122[10] == extraLineFragmentContainer)
  {
    v124 = 0;
  }

  else
  {
    ValueIfPresent = CFDictionaryGetValueIfPresent(v122[11], extraLineFragmentContainer, value);
    v124 = value[0];
    if (!ValueIfPresent)
    {
      v124 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  *&self->_lmFlags &= ~0x40000u;
  if (extraLineFragmentContainer != v120)
  {
    v130 = v124 + 1;
    do
    {
      if ((*(&self->_lmFlags + 2) & 4) != 0)
      {
        break;
      }

      [-[NSLayoutManager delegate](self "delegate")];
      extraLineFragmentContainer = v130 >= [(NSMutableArray *)self->_textContainers count]? 0 : [(NSMutableArray *)self->_textContainers objectAtIndex:v130];
      ++v130;
    }

    while (extraLineFragmentContainer != v120);
  }

  if ((*(*(self->_extraData + 30) + 56) & 1) == 0)
  {
    if ((*(&self->_lmFlags + 2) & 4) == 0)
    {
      [-[NSLayoutManager delegate](self "delegate")];
    }

LABEL_223:
    if ([(NSLayoutManager *)self didCompleteLayoutObserverBlock])
    {
      (*([(NSLayoutManager *)self didCompleteLayoutObserverBlock]+ 16))();
    }

    if (-[NSLayoutManager applicationFrameworkContext](self, "applicationFrameworkContext") == 2 && [MEMORY[0x1E696AF00] isMainThread])
    {
      _NSRemoveDirtyLayoutManager(self);
    }
  }

LABEL_228:
  if (v146)
  {
    [(NSTextStorage *)self->_textStorage _unlock];
  }

  if (!v147)
  {
    [*(self->_extraData + 7) unlock];
  }

  if (v143)
  {
    [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:v140 isSoft:v143, 0];
  }
}

- (void)_fillLayoutHoleAtIndex:(unint64_t)a3 desiredNumberOfLines:(unint64_t)a4
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  if (100 * a4 <= 0x400)
  {
    v6 = 1024;
  }

  else
  {
    v6 = 100 * a4;
  }

  _NSLayoutTreeGetFirstHoleAfterGlyphIndexWithLength(self, 0, v6, &v10, &v9);
  v7 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, v10);
  [-[NSTextStorage string](self->_textStorage "string")];
  [(NSLayoutManager *)self _fillLayoutHoleForCharacterRange:v7 desiredNumberOfLines:v8 - v7 isSoft:a4, 0];
}

- (unint64_t)_smallEncodingGlyphIndexForCharacterIndex:(unint64_t)a3 startOfRange:(BOOL)a4 okToFillHoles:(BOOL)a5 considerNulls:(BOOL)a6
{
  if (a5)
  {
    _NSFastFillAllGlyphHolesForCharacterRange(self, a3, 1uLL);
  }

  return _NSGlyphTreeGlyphIndexForCharacterAtIndex(self, a3);
}

- (unint64_t)_glyphIndexForCharacterIndex:(unint64_t)a3 startOfRange:(BOOL)a4 okToFillHoles:(BOOL)a5 considerNulls:(BOOL)a6
{
  if (a5)
  {
    _NSFastFillAllGlyphHolesForCharacterRange(self, a3, 1uLL);
  }

  return _NSGlyphTreeGlyphIndexForCharacterAtIndex(self, a3);
}

- (_NSRange)_glyphRangeForCharacterRange:(_NSRange)a3 actualCharacterRange:(_NSRange *)a4 okToFillHoles:(BOOL)a5
{
  v5 = a5;
  length = a3.length;
  location = a3.location;
  if (a5)
  {
    _NSFastFillAllGlyphHolesForCharacterRange(self, a3.location, a3.length + 1);
  }

  v10 = _NSGlyphTreeGlyphRangeForCharacterRange(self, location, length, v5, 1, 1, a4);
  result.length = v11;
  result.location = v10;
  return result;
}

- (_NSRange)_exactGlyphRangeForCharacterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  _NSFastFillAllGlyphHolesForCharacterRange(self, a3.location, 1uLL);
  if (length >= 2)
  {
    _NSFastFillAllGlyphHolesForCharacterRange(self, length + location - 1, 2uLL);
  }

  v6 = _NSGlyphTreeGlyphRangeForCharacterRange(self, location, length, 1, 1, 0, 0);
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)_primitiveCharacterRangeForGlyphRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, a3.location);
  v7 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, location + length);
  v8 = [(NSTextStorage *)self->_textStorage length];
  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v7 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 >= v9;
  v12 = v10 - v9;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v9;
  result.length = v13;
  result.location = v14;
  return result;
}

- (_NSRange)_primitiveGlyphRangeForCharacterRange:(_NSRange)a3
{
  location = a3.location;
  v5 = a3.location + a3.length;
  v6 = [(NSTextStorage *)self->_textStorage length];
  if (location >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = location;
  }

  if (v5 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = [(NSLayoutManager *)self glyphIndexForCharacterAtIndex:?];
  v11 = [(NSLayoutManager *)self glyphIndexForCharacterAtIndex:v9]- v10;
  v12 = v10;
  result.length = v11;
  result.location = v12;
  return result;
}

+ (void)_doSomeBackgroundLayout
{
  v2 = [_dirtyLMs count];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  while (1)
  {
    v4 = [_dirtyLMs pointerAtIndex:0];
    if (!v4)
    {
      [_dirtyLMs removePointerAtIndex:0];
      goto LABEL_15;
    }

    v5 = v4;
    if ((*(v4 + 64) & 4) != 0)
    {
      break;
    }

    [_dirtyLMs removePointerAtIndex:0];
    *(v5 + 64) &= ~0x100u;
LABEL_15:
    if (!--v3)
    {
      return;
    }
  }

  v6 = *(v4 + 240);
  v7 = [objc_msgSend(v4 "textStorage")];
  if ((v7 & 1) == 0 && !*(v6 + 56))
  {
    v8 = [objc_msgSend(MEMORY[0x1E696AE68] allocWithZone:{objc_msgSend(v5, "zone")), "init"}];
    v9 = 0;
    atomic_compare_exchange_strong((v6 + 56), &v9, v8);
    if (v9)
    {
    }
  }

  [*(v6 + 56) lock];
  [v5 _mergeLayoutHoles];
  if ((*(*(*(v5 + 240) + 240) + 56) & 1) == 0 || (*(v5 + 67) & 0x40) != 0)
  {
    [_dirtyLMs removePointerAtIndex:0];
    *(v5 + 64) &= ~0x100u;
    if ((v7 & 1) == 0)
    {
      [*(*(v5 + 240) + 56) unlock];
    }

    goto LABEL_15;
  }

  if ([_dirtyLMs count] >= 2)
  {
    v10 = v5;
    [_dirtyLMs removePointerAtIndex:0];
    [_dirtyLMs addPointer:v5];
  }

  _inBackgroundLayout = 1;
  [v5 _fillLayoutHoleAtIndex:0 desiredNumberOfLines:100];
  if ((v7 & 1) == 0)
  {
    [*(*(v5 + 240) + 56) unlock];
  }

  _inBackgroundLayout = 0;
}

- (void)_markSelfAsDirtyForBackgroundLayout:(id)a3
{
  if ([(NSMutableArray *)self->_textContainers count])
  {
    v4 = [(NSLayoutManager *)self applicationFrameworkContext];
    lmFlags = self->_lmFlags;
    if (v4 == 2)
    {
      if ((*&lmFlags & 0x40000104) == 4 && [MEMORY[0x1E696AF00] isMainThread])
      {

        _NSAddDirtyLayoutManager(self);
      }
    }

    else if ((*&lmFlags & 0xC0000004) == 4)
    {
      self->_lmFlags = (*&lmFlags | 0x80000000);
      extraData = self->_extraData;
      v7 = [(NSAttributedString *)[(NSLayoutManager *)self textStorage] _isStringDrawingTextStorage];
      if (!v7 && !extraData[7])
      {
        v8 = [objc_msgSend(MEMORY[0x1E696AE68] allocWithZone:{-[NSLayoutManager zone](self, "zone")), "init"}];
        v9 = 0;
        atomic_compare_exchange_strong(extraData + 7, &v9, v8);
        if (v9)
        {
        }
      }

      [extraData[7] lock];
      [(NSLayoutManager *)self _mergeLayoutHoles];
      if (*(*(self->_extraData + 30) + 56))
      {
        [(NSLayoutManager *)self _fillLayoutHoleAtIndex:0 desiredNumberOfLines:0x7FFFFFFFFFFFFFFFLL];
      }

      if (!v7)
      {
        [*(self->_extraData + 7) unlock];
      }

      *&self->_lmFlags &= ~0x80000000;
    }
  }
}

- (id)_containerDescription
{
  v23.receiver = self;
  v23.super_class = NSLayoutManager;
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@\n", -[NSLayoutManager description](&v23, sel_description)];
  v22 = 0;
  v21 = 0uLL;
  if (self->_firstUnlaidCharIndex == 0x7FFFFFFFFFFFFFFFLL || (firstUnlaidGlyphIndex = self->_firstUnlaidGlyphIndex, firstUnlaidGlyphIndex == 0x7FFFFFFFFFFFFFFFLL))
  {
    [(NSLayoutManager *)self getFirstUnlaidCharacterIndex:0 glyphIndex:&v22];
    if (!v22)
    {
      return v3;
    }

    goto LABEL_6;
  }

  v22 = self->_firstUnlaidGlyphIndex;
  if (firstUnlaidGlyphIndex)
  {
LABEL_6:
    v5 = 0;
    v6 = 0;
    do
    {
      if ((*(&self->_lmFlags + 3) & 0x40) != 0)
      {
        v10 = *(*(self->_extraData + 26) + 8);
        v21.n128_u64[0] = 0;
        v21.n128_u64[1] = v10;
        v11 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
      }

      else if ([(NSRunStorage *)self->_containerRuns count]<= v5)
      {
        v11 = 0;
      }

      else
      {
        containerRuns = self->_containerRuns;
        _NSBlockNumberForIndex(containerRuns, v5, &v21);
        if (containerRuns->_gapBlockIndex <= v8)
        {
          v9 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
        }

        else
        {
          v9 = 0;
        }

        v11 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v9 + v8)];
      }

      if ((*(&self->_lmFlags + 3) & 0x40) == 0 && v21.n128_u64[1] + v21.n128_u64[0] > v22)
      {
        v21.n128_u64[1] = v22 - v21.n128_u64[0];
      }

      if (v11)
      {
        ValueAtIndex = CFStorageGetValueAtIndex();
      }

      else
      {
        ValueAtIndex = 0;
      }

      v13 = &stru_1F01AD578;
      if (v11 == self->_extraLineFragmentContainer)
      {
        v14 = MEMORY[0x1E696AEC0];
        memset(&v24, 0, sizeof(v24));
        _NSLayoutTreeGetExtraLineFragmentRect(self, &v24, 0);
        v15 = NSStringFromRect(v24);
        memset(&v24, 0, sizeof(v24));
        _NSLayoutTreeGetExtraLineFragmentRect(self, 0, &v24);
        v13 = [v14 stringWithFormat:@"elf rect %@ used rect %@", v15, NSStringFromRect(v24)];
      }

      v16 = v21;
      if (v11)
      {
        v17 = [(NSTextContainer *)v11 description];
        [(NSTextContainer *)v11 size];
        v18 = NSStringFromSize(v25);
        if (ValueAtIndex)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v17 = @"nil";
        v18 = @"N/A";
        if (ValueAtIndex)
        {
LABEL_25:
          v19 = @"<invalid>";
          if ((*(ValueAtIndex + 64) & 1) == 0)
          {
            v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *ValueAtIndex, *(ValueAtIndex + 8), *(ValueAtIndex + 16), *(ValueAtIndex + 24)];
          }

          goto LABEL_29;
        }
      }

      v19 = @"<none>";
LABEL_29:
      [v3 appendFormat:@"Container %lu: glyph range {%lu, %lu}, %@, size %@, used rect %@ %@\n", v6, *&v16, v17, v18, v19, v13];
      v5 = v21.n128_u64[1] + v21.n128_u64[0];
      ++v6;
    }

    while (v21.n128_u64[1] + v21.n128_u64[0] < v22);
  }

  return v3;
}

- (id)_lineFragmentDescriptionForGlyphRange:(_NSRange)a3 includeGlyphLocations:(BOOL)a4
{
  v4 = a4;
  length = a3.length;
  location = a3.location;
  v41.receiver = self;
  v41.super_class = NSLayoutManager;
  v8 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@\n", -[NSLayoutManager description](&v41, sel_description)];
  v40.location = 0;
  v40.length = 0;
  v9 = [(NSTextStorage *)self->_textStorage string];
  if (location < location + length)
  {
    v10 = v9;
    v11 = 0;
    v36 = v4;
    v37 = location + length;
    do
    {
      v12 = v4;
      v13 = v11;
      v14 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, location, &v40);
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = _NSLayoutTreeLineFragmentUsedRectForGlyphAtIndex(self, location, 0);
      v38 = v13;
      v35 = v13;
      v4 = v12;
      [v8 appendFormat:@"Line %lu: glyph range {%lu, %lu}, bounds {{%.2f, %.2f}, {%.2f, %.2f}}, usedRect {{%.2f, %.2f}, {%.2f, %.2f}}\n", v35, v40.location, v40.length, *&v14, v16, v18, v20, *&v21, v22, v23, v24];
      v25 = v37;
      if (v12)
      {
        v39.location = 0;
        v39.length = 0;
        v26 = v40.location;
        for (i = v40.length + v40.location; v26 < i; i = v40.length + v40.location)
        {
          v28 = _NSLayoutTreeRunLocationForGlyphAtIndex(self, v26, &v39);
          v30 = v29;
          v39 = NSIntersectionRange(v39, v40);
          [v8 appendFormat:@"    {%lu, %lu} {%.2f, %.2f}, glyphs: ", v39.location, v39.length, *&v28, v30];
          while (v26 < v39.length + v39.location)
          {
            v31 = _NSGlyphTreeGlyphAtIndex(self, v26, 0);
            v32 = [v10 characterAtIndex:{_NSGlyphTreeCharacterIndexForGlyphAtIndex(self, v26)}];
            if (v31 == 0xFFFFFF)
            {
              [v8 appendString:@"NSControlGlyph "];
            }

            else
            {
              [v8 appendFormat:@"0x%x ", v31];
            }

            if ((v32 - 32) >= 0x5F)
            {
              v33 = @"(ch=0x%04x) ";
            }

            else
            {
              v33 = @"(ch='%c') ";
            }

            [v8 appendFormat:v33, v32];
            ++v26;
          }

          [v8 appendString:@"\n"];
        }

        [v8 replaceCharactersInRange:objc_msgSend(v8 withString:{"length") - 2, 2, @"\n"}];
        v4 = v36;
        v25 = v37;
      }

      location = v40.length + v40.location;
      v11 = v38 + 1;
    }

    while (v40.length + v40.location < v25);
  }

  return v8;
}

- (id)_glyphDescriptionForGlyphRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v21.receiver = self;
  v21.super_class = NSLayoutManager;
  v18 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@\n", -[NSLayoutManager description](&v21, sel_description)];
  v17 = [(NSTextStorage *)self->_textStorage string];
  if (location < location + length)
  {
    do
    {
      v6 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, location);
      v7 = [v17 characterAtIndex:v6];
      v20 = _NSGlyphTreeGlyphAtIndex(self, location, 0);
      if ((v7 - 32) > 0x5E)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%04x", v7];
      }

      else
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%c'", v7];
      }

      v19 = v8;
      v9 = _NSGlyphTreeIntAttributeForGlyphAtIndex(self, location, 5);
      v10 = _NSGlyphTreeBidiLevelForGlyphAtIndex(self, location);
      if (_NSGlyphTreeIntAttributeForGlyphAtIndex(self, location, 0))
      {
        v11 = @"sft ";
      }

      else
      {
        v11 = @"    ";
      }

      if (_NSGlyphTreeIntAttributeForGlyphAtIndex(self, location, 1))
      {
        v12 = @"ela ";
      }

      else
      {
        v12 = @"    ";
      }

      if (_NSGlyphTreeDrawsOutsideLineFragmentForGlyphAtIndex(self, location))
      {
        v13 = @"out ";
      }

      else
      {
        v13 = @"    ";
      }

      v14 = _NSGlyphTreeNotShownAttributeForGlyphAtIndex(self, location);
      v15 = @"inv ";
      if (!v14)
      {
        v15 = @"    ";
      }

      [v18 appendFormat:@"%4d: %u (ch=%@) cix=%4d insc=%d bidi=%d %@%@%@%@\n", location++, v20, v19, v6, v9, v10, v11, v12, v13, v15];
      --length;
    }

    while (length);
  }

  return v18;
}

- (id)_glyphHoleDescription
{
  v3 = [(NSTextStorage *)self->_textStorage length];
  v4 = *(*(self->_extraData + 26) + 8);
  v25.receiver = self;
  v25.super_class = NSLayoutManager;
  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@\n    Currently holding %lu characters and %lu glyphs\n", -[NSLayoutManager description](&v25, sel_description), v3, v4];
  v24.location = 0;
  v24.length = 0;
  HasGlyphsForCharacterAtIndex = _NSGlyphTreeHasGlyphsForCharacterAtIndex(self, 0, 0);
  if (v3)
  {
    v7 = HasGlyphsForCharacterAtIndex;
    v8 = 0;
    location = 0;
    length = 0;
    do
    {
      v11 = _NSGlyphTreeHasGlyphsForCharacterAtIndex(self, v8, &v24);
      if ((v7 & 1) == v11)
      {
        v30.location = location;
        v30.length = length;
        v18 = NSUnionRange(v24, v30);
        location = v18.location;
        length = v18.length;
        v16 = v24.location;
        v17 = v24.length;
      }

      else
      {
        v12 = _NSGlyphTreeGlyphIndexForCharacterAtIndex(self, location);
        v13 = _NSGlyphTreeGlyphIndexForCharacterAtIndex(self, location + length) - v12;
        if (v7)
        {
          v14 = @"has glyphs";
        }

        else
        {
          v14 = @"no glyphs ";
        }

        v26.location = location;
        v26.length = length;
        v15 = NSStringFromRange(v26);
        v27.location = v12;
        v27.length = v13;
        [v5 appendFormat:@"    %@ char range %@ glyph range %@\n", v14, v15, NSStringFromRange(v27)];
        v16 = v24.location;
        v17 = v24.length;
        v7 = v11;
        length = v24.length;
        location = v24.location;
      }

      v8 = v17 + v16;
      if (v17 + v16 == v3)
      {
        v19 = _NSGlyphTreeGlyphIndexForCharacterAtIndex(self, location);
        v20 = _NSGlyphTreeGlyphIndexForCharacterAtIndex(self, location + length) - v19;
        if (v11)
        {
          v21 = @"has glyphs";
        }

        else
        {
          v21 = @"no glyphs ";
        }

        v28.location = location;
        v28.length = length;
        v22 = NSStringFromRange(v28);
        v29.location = v19;
        v29.length = v20;
        [v5 appendFormat:@"    %@ char range %@ glyph range %@\n", v21, v22, NSStringFromRange(v29)];
        v8 = v24.length + v24.location;
      }
    }

    while (v8 < v3);
  }

  return v5;
}

- (id)_layoutHoleDescription
{
  v3 = [(NSTextStorage *)self->_textStorage length];
  v4 = *(*(self->_extraData + 26) + 8);
  v25.receiver = self;
  v25.super_class = NSLayoutManager;
  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@\n    Currently holding %lu characters and %lu glyphs\n", -[NSLayoutManager description](&v25, sel_description), v3, v4];
  v24.location = 0;
  v24.length = 0;
  HasFragmentsForGlyphAtIndex = _NSLayoutTreeHasFragmentsForGlyphAtIndex(self, 0, 0);
  if (v4)
  {
    v7 = HasFragmentsForGlyphAtIndex;
    v8 = 0;
    length = 0;
    location = 0;
    do
    {
      v11 = _NSLayoutTreeHasFragmentsForGlyphAtIndex(self, v8, &v24);
      if ((v7 & 1) == v11)
      {
        v28.location = location;
        v28.length = length;
        v18 = NSUnionRange(v24, v28);
        location = v18.location;
        length = v18.length;
        v16 = v24.location;
        v17 = v24.length;
      }

      else
      {
        v12 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, location);
        v13.length = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, length + location) - v12;
        if (v7)
        {
          v14 = @"laid out";
        }

        else
        {
          v14 = @"not laid";
        }

        v13.location = v12;
        v15 = NSStringFromRange(v13);
        v26.location = location;
        v26.length = length;
        [v5 appendFormat:@"    %@ char range %@ glyph range %@\n", v14, v15, NSStringFromRange(v26)];
        v16 = v24.location;
        v17 = v24.length;
        location = v24.location;
        length = v24.length;
        v7 = v11;
      }

      v8 = v17 + v16;
      if (v17 + v16 == v4)
      {
        v19 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, location);
        v20.length = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, length + location) - v19;
        if (v11)
        {
          v21 = @"laid out";
        }

        else
        {
          v21 = @"not laid";
        }

        v20.location = v19;
        v22 = NSStringFromRange(v20);
        v27.location = location;
        v27.length = length;
        [v5 appendFormat:@"    %@ char range %@ glyph range %@\n", v21, v22, NSStringFromRange(v27)];
        v8 = v24.length + v24.location;
      }
    }

    while (v8 < v4);
  }

  return v5;
}

- (void)_updateUsageForTextContainer:(id)a3 addingUsedRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  value = 0;
  extraData = self->_extraData;
  if (extraData[10] != a3)
  {
    CFDictionaryGetValueIfPresent(extraData[11], a3, &value);
  }

  ValueAtIndex = CFStorageGetValueAtIndex();
  if ((*(ValueAtIndex + 64) & 1) == 0)
  {
    v12 = ValueAtIndex;
    v13 = [a3 textView];
    v14 = *v12;
    v15 = *(v12 + 8);
    v16 = *(v12 + 16);
    v17 = *(v12 + 24);
    v18 = *(v12 + 64);
    v23.origin.x = *v12;
    v23.origin.y = v15;
    v23.size.width = v16;
    v23.size.height = v17;
    if (!NSEqualRects(v23, *MEMORY[0x1E696AA80]))
    {
      x = NSLMUnionRect(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), x, y, width, height);
      y = v19;
      width = v20;
      height = v21;
    }

    *v12 = x;
    *(v12 + 8) = y;
    *(v12 + 16) = width;
    *(v12 + 24) = height;
    *(v12 + 64) = *(v12 + 64) & 0xFFFFFFFB | (4 * (*(*(self->_extraData + 30) + 56) & 1));
    if (v13)
    {
      v24.origin.x = v14;
      v24.origin.y = v15;
      v24.size.width = v16;
      v24.size.height = v17;
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      if (!NSEqualRects(v24, v25) || (*(&self->_lmFlags + 3) & 0x40) == 0 && (v18 & 4) != 0 && (*(v12 + 64) & 4) == 0)
      {
        [(NSLayoutManager *)self _resizeTextViewForTextContainer:a3];
      }

      [v13 invalidateTextContainerOrigin];
    }
  }
}

- (void)_invalidateUsageForTextContainersInRange:(_NSRange)a3
{
  if (a3.length)
  {
    v3 = -a3.length;
    v4 = a3.length + a3.location - 1;
    do
    {
      ValueAtIndex = CFStorageGetValueAtIndex();
      *(ValueAtIndex + 64) |= 1u;
      --v4;
    }

    while (!__CFADD__(v3++, 1));
  }
}

- (void)_recalculateUsageForTextContainerAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_textContainers objectAtIndex:?];
  ValueAtIndex = CFStorageGetValueAtIndex();
  v48 = [(NSTextContainer *)v5 textView];
  v7 = [(NSTextStorage *)self->_textStorage string];
  v8 = [(NSLayoutManager *)self _indexOfFirstGlyphInTextContainer:v5 okToFillHoles:0];
  v9 = [(NSTextStorage *)self->_textStorage length];
  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    ++self->_textViewResizeDisableStack;
  }

  firstUnlaidGlyphIndex = 0;
  v50 = 0;
  if (self->_firstUnlaidCharIndex == 0x7FFFFFFFFFFFFFFFLL || self->_firstUnlaidGlyphIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSLayoutManager *)self getFirstUnlaidCharacterIndex:0 glyphIndex:&firstUnlaidGlyphIndex];
  }

  else
  {
    firstUnlaidGlyphIndex = self->_firstUnlaidGlyphIndex;
  }

  if (((*(&self->_lmFlags + 3) & 0x40) != 0 || (*(*(self->_extraData + 30) + 56) & 1) == 0) && !self->_extraLineFragmentContainer)
  {
    if (v9)
    {
      v10 = [v7 characterAtIndex:v9 - 1];
      if (v10 > 132)
      {
        if ((v10 - 8232) >= 2 && v10 != 133)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v11 = v10 == 10 || v10 == 12;
        if (!v11 && (v10 != 13 || v9 < [v7 length] && objc_msgSend(v7, "characterAtIndex:", v9) == 10))
        {
          goto LABEL_37;
        }
      }
    }

    if (!firstUnlaidGlyphIndex)
    {
      goto LABEL_63;
    }

    if ((*(&self->_lmFlags + 3) & 0x40) != 0)
    {
      v16 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
    }

    else
    {
      v12 = firstUnlaidGlyphIndex - 1;
      if ([(NSRunStorage *)self->_containerRuns count]<= v12)
      {
        v16 = 0;
      }

      else
      {
        containerRuns = self->_containerRuns;
        _NSBlockNumberForIndex(containerRuns, v12, 0);
        v15 = 0;
        if (containerRuns->_gapBlockIndex <= v14)
        {
          v15 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
        }

        v16 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v15 + v14)];
      }
    }

    value[0] = 0;
    extraData = self->_extraData;
    if (*(extraData + 10) == v16)
    {
      goto LABEL_63;
    }

    ValueIfPresent = CFDictionaryGetValueIfPresent(*(extraData + 11), v16, value);
    v19 = value[0];
    if (!ValueIfPresent)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v19 <= a3)
    {
LABEL_63:
      if (self->_textStorage)
      {
        [(NSTypesetter *)[(NSLayoutManager *)self typesetter] layoutGlyphsInLayoutManager:self startingAtGlyphIndex:*(*(self->_extraData + 26) + 8) maxNumberOfLineFragments:1 nextGlyphIndex:&v50];
      }

      [(NSLayoutManager *)self _invalidateInsertionPoint];
    }
  }

LABEL_37:
  *(ValueAtIndex + 64) &= ~1u;
  v20 = *(MEMORY[0x1E696AA80] + 16);
  *ValueAtIndex = *MEMORY[0x1E696AA80];
  *(ValueAtIndex + 16) = v20;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_55;
  }

  value[0] = 0;
  value[1] = 0;
  v49 = 0uLL;
  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    v22 = *(*(self->_extraData + 26) + 8);
    v49.n128_u64[1] = v22;
    [(NSMutableArray *)self->_textContainers objectAtIndex:0];
  }

  else
  {
    if ([(NSRunStorage *)self->_containerRuns count]> v8)
    {
      _NSBlockNumberForIndex(&self->_containerRuns->super.isa, v8, &v49);
      v22 = v49.n128_u64[1];
      v21 = v49.n128_u64[0];
      goto LABEL_44;
    }

    v22 = 0;
  }

  v21 = 0;
LABEL_44:
  if ((*(&self->_lmFlags + 3) & 0x40) == 0 && v22 + v21 > firstUnlaidGlyphIndex)
  {
    v22 = firstUnlaidGlyphIndex - v21;
    v49.n128_u64[1] = firstUnlaidGlyphIndex - v21;
  }

  v23 = v22 + v21;
  while (v8 < v23)
  {
    v24 = _NSLayoutTreeLineFragmentUsedRectForGlyphAtIndex(self, v8, value);
    *ValueAtIndex = NSLMUnionRect(*ValueAtIndex, *(ValueAtIndex + 8), *(ValueAtIndex + 16), *(ValueAtIndex + 24), v24, v25, v26, v27);
    *(ValueAtIndex + 8) = v28;
    *(ValueAtIndex + 16) = v29;
    *(ValueAtIndex + 24) = v30;
    v8 = value[1] + value[0];
  }

  if (*(self->_extraData + 23))
  {
    v54.origin.x = _NSTextBlockBoundingRectAtIndex(self, v49.n128_u64[0]);
    x = v54.origin.x;
    y = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;
    if (!NSIsEmptyRect(v54))
    {
      *ValueAtIndex = NSLMUnionRect(*ValueAtIndex, *(ValueAtIndex + 8), *(ValueAtIndex + 16), *(ValueAtIndex + 24), x, y, width, height);
      *(ValueAtIndex + 8) = v35;
      *(ValueAtIndex + 16) = v36;
      *(ValueAtIndex + 24) = v37;
    }

    v55.origin.x = _NSTextBlockBoundingRectAtIndex(self, v49.n128_u64[0] + v49.n128_u64[1] - 1);
    v38 = v55.origin.x;
    v39 = v55.origin.y;
    v40 = v55.size.width;
    v41 = v55.size.height;
    if (!NSIsEmptyRect(v55))
    {
      *ValueAtIndex = NSLMUnionRect(*ValueAtIndex, *(ValueAtIndex + 8), *(ValueAtIndex + 16), *(ValueAtIndex + 24), v38, v39, v40, v41);
      *(ValueAtIndex + 8) = v42;
      *(ValueAtIndex + 16) = v43;
      *(ValueAtIndex + 24) = v44;
    }
  }

LABEL_55:
  if (self->_extraLineFragmentContainer == v5)
  {
    *value = 0u;
    v53 = 0u;
    _NSLayoutTreeGetExtraLineFragmentRect(self, 0, value);
    *ValueAtIndex = NSLMUnionRect(*ValueAtIndex, *(ValueAtIndex + 8), *(ValueAtIndex + 16), *(ValueAtIndex + 24), *value, *&value[1], *&v53, *(&v53 + 1));
    *(ValueAtIndex + 8) = v45;
    *(ValueAtIndex + 16) = v46;
    *(ValueAtIndex + 24) = v47;
  }

  *(ValueAtIndex + 64) = *(ValueAtIndex + 64) & 0xFFFFFFFB | (4 * (*(*(self->_extraData + 30) + 56) & 1));
  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    --self->_textViewResizeDisableStack;
  }

  if (v48)
  {
    [(NSLayoutManager *)self _resizeTextViewForTextContainer:v5];
    [(NSTextView *)v48 invalidateTextContainerOrigin];
  }
}

- (_NSStoredContainerUsage)_validatedStoredUsageForTextContainerAtIndex:(unint64_t)a3
{
  ValueAtIndex = CFStorageGetValueAtIndex();
  if (*(ValueAtIndex + 64))
  {
    [(NSLayoutManager *)self _recalculateUsageForTextContainerAtIndex:a3];
  }

  return ValueAtIndex;
}

- (void)_invalidateInsertionPoint
{
  if (self->_displayInvalidationDisableStack)
  {
    *&self->_lmFlags |= 0x80u;
  }

  else
  {
    [self->_firstTextView updateInsertionPointStateAndRestartTimer:0];
  }
}

- (void)_invalidateDisplayIfNeeded
{
  location = self->_deferredDisplayCharRange.location;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = self->_deferredDisplayCharRange.length;
    self->_deferredDisplayCharRange = xmmword_18E856180;
    [(NSLayoutManager *)self invalidateDisplayForCharacterRange:location, length];
  }

  lmFlags = self->_lmFlags;
  if ((*&lmFlags & 0x80) != 0)
  {
    self->_lmFlags = (*&lmFlags & 0xFFFFFF7F);

    [(NSLayoutManager *)self _invalidateInsertionPoint];
  }
}

- (void)_resizeTextViewForTextContainer:(id)a3
{
  value[0] = 0;
  extraData = self->_extraData;
  if (extraData[10] == a3)
  {
    v6 = 0;
  }

  else
  {
    if (!CFDictionaryGetValueIfPresent(extraData[11], a3, value))
    {
      return;
    }

    v6 = value[0];
    if (value[0] == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }
  }

  v7 = [a3 textView];
  if (!v7)
  {
    return;
  }

  if (self->_textViewResizeDisableStack || (v9 = v7, [(NSLayoutManager *)self hasNonContiguousLayout]) && [(NSLayoutManager *)self isScrolling])
  {
    ValueAtIndex = CFStorageGetValueAtIndex();
    *(ValueAtIndex + 64) |= 2u;
    return;
  }

  v10 = [v9 superview];
  [v9 frame];
  v12 = v11;
  v14 = v13;
  [v9 layoutOrientation];
  [v9 textContainerOrigin];
  v16 = v15;
  v18 = v17;
  [a3 textContainerInsetsForView:v9];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = CFStorageGetValueAtIndex();
  v28 = v27;
  v29 = *(v27 + 64);
  if (v29)
  {
    *(v27 + 64) = v29 | 2;
    return;
  }

  v110 = v18;
  *(v27 + 64) = v29 & 0xFFFFFFFC;
  *value = *v27;
  v30 = *(v27 + 16);
  v106 = *(v27 + 32);
  v107 = v16;
  v108 = *(v27 + 40);
  v111 = *(v27 + 48);
  aRect = *(v27 + 56);
  v31 = v22 + v26;
  v32 = *(v27 + 24);
  [v9 convertSize:v10 toView:{v31 + v30, v20 + v24 + v32}];
  v34 = v33;
  v36 = v35;
  v109 = v32;
  if ((*(&self->_lmFlags + 3) & 0x40) != 0 || (*(*(self->_extraData + 30) + 56) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v6 >= [(NSMutableArray *)self->_textContainers count]- 1)
  {
    if (*&self->_lmFlags)
    {
      goto LABEL_15;
    }
  }

  else if ([(NSLayoutManager *)self _indexOfFirstGlyphInTextContainer:[(NSMutableArray *)self->_textContainers objectAtIndex:v6 + 1] okToFillHoles:0]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (v34 >= v12)
  {
    v38 = v34;
  }

  else
  {
    v38 = v12;
  }

  if (v36 >= v14)
  {
    v39 = v36;
  }

  else
  {
    v39 = v14;
  }

  if (v36 < v14 || v34 < v12)
  {
    v37 = 1;
    goto LABEL_16;
  }

  v34 = v38;
LABEL_15:
  v37 = 0;
  *(v28 + 32) = *value;
  *(v28 + 48) = v30;
  *(v28 + 56) = v32;
  v38 = v34;
  v39 = v36;
LABEL_16:
  [v9 setConstrainedFrameSize:{v38, v39}];
  [v9 frame];
  width = v115.width;
  height = v115.height;
  v114.width = v12;
  v114.height = v14;
  if (!NSEqualSizes(v114, v115) && v10)
  {
    [v9 visibleRect];
    v46 = v44;
    v47 = v45;
    if ((*(&self->_lmFlags + 3) & 0x40) != 0)
    {
      if (v14 != height)
      {
        v65 = v42;
        v66 = v43;
        if (NSIsEmptyRect(*&v42))
        {
          goto LABEL_49;
        }

        v67 = v9;
        v68 = v65;
        v69 = v66;
        v70 = v46;
        v71 = v47;
        v72 = 1;
LABEL_48:
        [v67 setNeedsDisplayInRect:v72 avoidAdditionalLayout:{v68, v69, v70, v71}];
        goto LABEL_49;
      }

      if (width <= v12)
      {
        goto LABEL_49;
      }

      v74 = v42;
      v75 = v43;
      [v9 frame];
      [v9 convertRect:v10 fromView:v12 + v76];
      v62 = v74;
      v63 = v75;
      v64 = v46;
    }

    else
    {
      v103 = v42;
      v104 = v43;
      bRect = v44;
      [v9 frame];
      v52 = v48;
      if (height > v14)
      {
        v101 = v51;
        v102 = v49;
        v99 = v48;
        v100 = v50;
        [v9 convertRect:v10 fromView:{v48, v14 + v49, v50, v51 - v14}];
        v124.origin.x = v103;
        v124.origin.y = v104;
        v124.size.width = bRect;
        v124.size.height = v47;
        v117 = NSIntersectionRect(v116, v124);
        x = v117.origin.x;
        y = v117.origin.y;
        v55 = v117.size.width;
        v56 = v117.size.height;
        v57 = NSIsEmptyRect(v117);
        v52 = v99;
        v50 = v100;
        v51 = v101;
        v49 = v102;
        if (!v57)
        {
          [v9 setNeedsDisplayInRect:1 avoidAdditionalLayout:{x, y, v55, v56, v99}];
          v52 = v99;
          v50 = v100;
          v51 = v101;
          v49 = v102;
        }
      }

      if (width <= v12)
      {
        goto LABEL_49;
      }

      [v9 convertRect:v10 fromView:{v12 + v52, v49, v50 - v12, v51}];
      v62 = v103;
      v63 = v104;
      v64 = bRect;
    }

    v77 = v47;
    v118 = NSIntersectionRect(*&v58, *&v62);
    v78 = v118.origin.x;
    v79 = v118.origin.y;
    v80 = v118.size.width;
    v81 = v118.size.height;
    if (NSIsEmptyRect(v118))
    {
      goto LABEL_49;
    }

    v67 = v9;
    v68 = v78;
    v69 = v79;
    v70 = v80;
    v71 = v81;
    v72 = 0;
    goto LABEL_48;
  }

LABEL_49:
  if ((v37 & 1) == 0)
  {
    [v9 visibleRect];
    v84 = v83;
    v86 = v85;
    v87 = v82;
    v89 = v88;
    if (v30 >= v111)
    {
      v94 = aRect;
      v93 = aRect;
      v91 = v108;
    }

    else
    {
      v119.origin.x = v107 + v30 + v106;
      v119.origin.y = v110 + v108;
      v119.size.width = v84 + v82 - v119.origin.x;
      v119.size.height = aRect;
      v125.origin.x = v84;
      v125.origin.y = v86;
      v125.size.width = v87;
      v125.size.height = v89;
      v120 = NSIntersectionRect(v119, v125);
      v90 = v120.origin.x;
      v91 = v120.origin.y;
      v92 = v120.size.width;
      v93 = v120.size.height;
      if (!NSIsEmptyRect(v120))
      {
        [v9 setNeedsDisplayInRect:1 avoidAdditionalLayout:{v90, v91, v92, v93}];
      }

      v94 = aRect;
    }

    if (v109 < v94)
    {
      v121.origin.y = v110 + v109 + v91;
      v121.size.height = v93 - v109;
      v121.origin.x = v84;
      v121.size.width = v87;
      v126.origin.x = v84;
      v126.origin.y = v86;
      v126.size.width = v87;
      v126.size.height = v89;
      v122 = NSIntersectionRect(v121, v126);
      v95 = v122.origin.x;
      v96 = v122.origin.y;
      v97 = v122.size.width;
      v98 = v122.size.height;
      if (!NSIsEmptyRect(v122))
      {
        [v9 setNeedsDisplayInRect:1 avoidAdditionalLayout:{v95, v96, v97, v98}];
      }
    }

    if (v111 < 0.0 && aRect < 0.0)
    {
      v123.origin.x = v84;
      v123.origin.y = v86;
      v123.size.width = v87;
      v123.size.height = v89;
      if (!NSIsEmptyRect(v123))
      {
        [v9 setNeedsDisplayInRect:1 avoidAdditionalLayout:{v84, v86, v87, v89}];
      }
    }
  }
}

- (void)_growCachedRectArrayToSize:(unint64_t)a3
{
  cachedRectArrayCapacity = self->_cachedRectArrayCapacity;
  if (cachedRectArrayCapacity < a3)
  {
    cachedRectArray = self->_cachedRectArray;
    if (cachedRectArray)
    {
      self->_cachedRectArrayCapacity = 2 * cachedRectArrayCapacity;
      v6 = NSReallocateCollectable(cachedRectArray, cachedRectArrayCapacity << 6, 0);
    }

    else
    {
      self->_cachedRectArrayCapacity = 3;
      v6 = NSAllocateCollectable(0x60uLL, 0);
    }

    self->_cachedRectArray = v6;
  }
}

- (CGRect)_rectArrayForRange:(_NSRange)a3 withinSelectionRange:(_NSRange)a4 rangeIsCharRange:(BOOL)a5 singleRectOnly:(BOOL)a6 fullLineRectsOnly:(BOOL)a7 inTextContainer:(id)a8 rectCount:(unint64_t *)a9 rangeWithinContainer:(_NSRange *)a10 glyphsDrawOutsideLines:(BOOL *)a11 rectArray:(CGRect *)a12 rectArrayCapacity:(unint64_t)a13
{
  v255 = a6;
  v237 = a5;
  length = a4.length;
  location = a4.location;
  range1 = a3.length;
  v14 = a3.location;
  v15 = self;
  v16 = a9;
  v261 = 0;
  v18 = (*&self->_lmFlags & 0x20) == 0 && a12 == 0;
  v240 = v18;
  v260.location = 0;
  v260.length = 0;
  v19 = [(NSTextStorage *)self->_textStorage string];
  extraData = v15->_extraData;
  if (!extraData[26] || !extraData[30])
  {
    *a9 = 0;
    result = 0;
    if (a11)
    {
      *a11 = 0;
    }

    return result;
  }

  v21 = v19;
  if ((*&v15->_lmFlags & 0x40) == 0)
  {
    ++v15->_displayInvalidationDisableStack;
  }

  if (v240)
  {
    v228 = 0;
    *&v15->_lmFlags |= 0x20u;
  }

  else if (a12)
  {
    v228 = 0;
  }

  else
  {
    v228 = [MEMORY[0x1E695DF88] data];
  }

  v23 = v14;
  if (v237)
  {
    v23 = [(NSLayoutManager *)v15 _primitiveGlyphRangeForCharacterRange:v14, range1];
  }

  if ((*(&v15->_lmFlags + 3) & 0x40) != 0)
  {
    firstUnlaidGlyphIndex = *(*(v15->_extraData + 26) + 8);
  }

  else if (v15->_firstUnlaidCharIndex == 0x7FFFFFFFFFFFFFFFLL || (firstUnlaidGlyphIndex = v15->_firstUnlaidGlyphIndex, firstUnlaidGlyphIndex == 0x7FFFFFFFFFFFFFFFLL))
  {
    [(NSLayoutManager *)v15 getFirstUnlaidCharacterIndex:0 glyphIndex:&v261];
    firstUnlaidGlyphIndex = v261;
    goto LABEL_26;
  }

  v261 = firstUnlaidGlyphIndex;
LABEL_26:
  v25 = [(NSLayoutManager *)v15 _indexOfFirstGlyphInTextContainer:a8 okToFillHoles:0];
  if (v25 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = firstUnlaidGlyphIndex;
  }

  else
  {
    v26 = v25;
  }

  if (v23 > v26)
  {
    v26 = v23;
  }

  if ((*(&v15->_lmFlags + 3) & 0x40) != 0)
  {
    v27 = v261;
  }

  else
  {
    v27 = v261;
    if (*(*(v15->_extraData + 30) + 56))
    {
      goto LABEL_37;
    }
  }

  if (v23 == v27)
  {
    v27 = v23;
    v26 = v23;
  }

LABEL_37:
  if (v26 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  value[0] = 0;
  v29 = v15->_extraData;
  if (v29[10] == a8)
  {
    v223 = 0;
  }

  else
  {
    ValueIfPresent = CFDictionaryGetValueIfPresent(v29[11], a8, value);
    v31 = value[0];
    if (!ValueIfPresent)
    {
      v31 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v223 = v31;
  }

  *a9 = 0;
  _NSFastFillAllLayoutHolesForGlyphRange(v15, v28, 1uLL);
  if (v28 >= *(*(v15->_extraData + 26) + 8))
  {
    v260.location = v28;
    v260.length = 0;
    v32 = v28;
  }

  else
  {
    _NSLayoutTreeLineFragmentRectForGlyphAtIndex(v15, v28, &v260);
    v32 = v260.location;
  }

  v220 = a10;
  if (v32)
  {
    v33 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(v15, v32 - 1);
    if (v33 >= [v21 length])
    {
      goto LABEL_62;
    }

    v34 = [v21 characterAtIndex:v33];
    v35 = 1;
    if (v34 <= 132)
    {
      if (v34 == 10 || v34 == 12)
      {
        goto LABEL_67;
      }

      if (v34 == 13)
      {
        v37 = v33 + 1;
        if (v37 >= [v21 length] || objc_msgSend(v21, "characterAtIndex:", v37) != 10)
        {
          goto LABEL_67;
        }
      }

LABEL_62:
      if (v260.location == v28 && -[NSLayoutManager applicationFrameworkContext](v15, "applicationFrameworkContext") == 2 && [v15->_firstTextView selectionAffinity] == 1)
      {
        _NSFastFillAllLayoutHolesForGlyphRange(v15, v28 - 1, 1uLL);
        _NSLayoutTreeLineFragmentRectForGlyphAtIndex(v15, v28 - 1, &v260);
      }

      v35 = 0;
      goto LABEL_67;
    }

    if ((v34 - 8232) >= 2 && v34 != 133)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v35 = 1;
  }

LABEL_67:
  v244 = v21;
  v38 = v260.location;
  if (v260.location >= *(*(v15->_extraData + 26) + 8))
  {
    LOBYTE(v39) = 0;
    v170 = 0;
    v257 = a12;
    v171 = a11;
    v40 = range1;
    goto LABEL_379;
  }

  v221 = location;
  v226 = 0;
  v39 = 0;
  __n = 32 * a13;
  v257 = a12;
  v40 = range1;
  v231 = v15;
  while (1)
  {
    v41 = v38;
    if (v237)
    {
      v41 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(v15, v38);
    }

    if (v40 || (v35 & 1) == 0 && [v15->_firstTextView selectionAffinity])
    {
      if (v41 >= v40 + v14)
      {
        goto LABEL_370;
      }
    }

    else if (v41 > v14)
    {
      v170 = 0;
      v40 = 0;
      goto LABEL_371;
    }

    if ((*(&v15->_lmFlags + 3) & 0x40) == 0)
    {
      _NSFastFillAllLayoutHolesForGlyphRange(v15, v38, 1uLL);
    }

    v42 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(v15, v38, &v260);
    v254 = v43;
    v242 = v45;
    v243 = v44;
    v46 = v260.location;
    range1a = v40;
    if ((*(&v15->_lmFlags + 3) & 0x40) != 0)
    {
      v50 = [(NSMutableArray *)v15->_textContainers objectAtIndex:0];
    }

    else if ([(NSRunStorage *)v15->_containerRuns count]<= v46)
    {
      v50 = 0;
    }

    else
    {
      containerRuns = v15->_containerRuns;
      _NSBlockNumberForIndex(containerRuns, v46, 0);
      v49 = 0;
      if (containerRuns->_gapBlockIndex <= v48)
      {
        v49 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
      }

      v50 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v49 + v48)];
    }

    v51 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(v15, v46);
    v52 = v51;
    if (!(BYTE4(v226) & 1 | (v50 != a8)))
    {
      if (v237)
      {
        if (v51 > v14)
        {
          range1a = range1a + v14 - v51;
          HIDWORD(v226) = 1;
          v14 = v51;
          goto LABEL_93;
        }
      }

      else if (v46 > v14)
      {
        range1a = range1a + v14 - v46;
        HIDWORD(v226) = 1;
        v14 = v46;
        goto LABEL_93;
      }

      HIDWORD(v226) = 1;
    }

LABEL_93:
    if (v226)
    {
      v53 = 1;
    }

    else
    {
      v54 = v14;
      if (v237)
      {
        v54 = [(NSLayoutManager *)v15 _primitiveGlyphRangeForCharacterRange:v14, range1a];
      }

      v53 = v35 & 1 | (range1a != 0) || [v15->_firstTextView selectionAffinity] != 1 ? v54 < v260.length + v260.location : v54 <= v260.length + v260.location;
    }

    value[0] = 0;
    v55 = v15->_extraData;
    if (v55[10] != v50)
    {
      v56 = CFDictionaryGetValueIfPresent(v55[11], v50, value);
      v57 = value[0];
      if (!v56)
      {
        v57 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v57 > v223)
      {
        break;
      }
    }

    LOBYTE(v226) = v53;
    v40 = range1a;
    if (HIDWORD(v226) & v53)
    {
      v224 = v39;
      v58 = v260.location;
      v59 = v260.length;
      [a8 lineFragmentPadding];
      v61 = v60;
      v62 = _NSLayoutTreeLineFragmentUsedRectForGlyphAtIndex(v15, v260.location, 0);
      v233 = v63;
      v65 = v64;
      if (v237)
      {
        v66 = [(NSLayoutManager *)v15 _primitiveGlyphRangeForCharacterRange:v14, range1a, v62];
        v68 = v66;
        v40 = v67;
        if (v221 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v69 = v67;
          v232 = v66;
        }

        else
        {
          v232 = [(NSLayoutManager *)v15 _primitiveGlyphRangeForCharacterRange:v221, length];
          v69 = v71;
        }
      }

      else
      {
        if (v221 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v69 = range1a;
        }

        else
        {
          v69 = length;
        }

        if (v221 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v70 = v14;
        }

        else
        {
          v70 = v221;
        }

        v232 = v70;
        v68 = v14;
      }

      v72 = v260;
      if (v68 == v260.length + v260.location)
      {
        v73 = 0;
      }

      else
      {
        v264.location = v68;
        v264.length = v40;
        v74 = NSIntersectionRange(v264, v72);
        v68 = v74.location;
        v73 = v74.length;
        v72.location = v260.location;
      }

      v75 = v59 + v58;
      if ((*(&v15->_lmFlags + 3) & 2) != 0)
      {
        cachedRectArray = v257;
        if (v73 && v75 > v72.location)
        {
          do
          {
            v77 = v75 - 1;
            if (([(NSLayoutManager *)v15 propertyForGlyphAtIndex:v75 - 1, v220]& 4) == 0)
            {
              break;
            }

            --v75;
          }

          while (v77 > v260.location);
        }
      }

      else
      {
        cachedRectArray = v257;
      }

      if (v68 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_129:
        v257 = cachedRectArray;
        v39 = _NSLayoutTreeLineFragmentDrawsOutsideLineForGlyphAtIndex(v15, v260.location) | v224;
        v40 = range1a;
        goto LABEL_130;
      }

      v230 = v232 + v69;
      v229 = v233 + v65;
      v245 = v42 + v61;
      v241 = v42 + v61 + v243 + v61 * -2.0;
      v82 = v237;
      if (!range1a)
      {
        v82 = 0;
      }

      v227 = v82;
      v234 = v14;
      v238 = v42;
      v239 = v75;
      while (1)
      {
        v258 = cachedRectArray;
        if ((*(&v15->_lmFlags + 3) & 2) == 0)
        {
          v83 = 0;
LABEL_151:
          v84 = v73;
          goto LABEL_152;
        }

        v83 = 0;
        if (a7)
        {
          goto LABEL_151;
        }

        v84 = v73;
        if (v260.length)
        {
          v91 = [(NSLayoutManager *)v15 intAttribute:2 forGlyphAtIndex:v68 - (v68 >= v260.location + v260.length)];
          v83 = v91 & 1;
          if (!v73)
          {
            v84 = 0;
            v14 = v234;
            goto LABEL_152;
          }

          v84 = v73;
          if (v68 + 1 < v68 + v73)
          {
            v84 = 1;
            do
            {
              if (([(NSLayoutManager *)v15 intAttribute:2 forGlyphAtIndex:v68 + v84, v220]- v91))
              {
                if (v68 + v84 + 1 != v260.length + v260.location)
                {
                  goto LABEL_172;
                }

                v92 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(v15, v68 + v84);
                v93 = [v244 characterAtIndex:v92];
                if (v93 > 132)
                {
                  if ((v93 - 8232) >= 2 && v93 != 133)
                  {
                    goto LABEL_172;
                  }
                }

                else if (v93 != 10 && v93 != 12)
                {
                  if (v93 != 13)
                  {
                    goto LABEL_172;
                  }

                  v94 = v92 + 1;
                  if (v94 < [v244 length] && objc_msgSend(v244, "characterAtIndex:", v94) == 10)
                  {
                    goto LABEL_172;
                  }
                }
              }

              ++v84;
            }

            while (v73 != v84);
            v84 = v73;
          }

LABEL_172:
          if (v68 <= v260.location)
          {
            v95 = v84 + v68;
            v106 = v84 + v68 < v260.length + v260.location && v75 > v68;
            v14 = v234;
            if (!v106)
            {
              goto LABEL_152;
            }
          }

          else
          {
            v14 = v234;
            if (v75 <= v68)
            {
              goto LABEL_152;
            }

            v95 = v84 + v68;
          }

          if (v95 > v75)
          {
            v84 = v75 - v68;
          }
        }

LABEL_152:
        v85 = v84 + v68;
        v256 = v84 + v68;
        if (!a7)
        {
          v96 = v260.length + v260.location;
          if (v260.location <= v232)
          {
            v97 = v233;
          }

          else
          {
            v97 = v254;
          }

          if (v96 >= v230)
          {
            v98 = v229;
          }

          else
          {
            v98 = v254 + v242;
          }

          v100 = v68 > v260.location || v68 == v232;
          if (v85 != v230 && v85 >= v96)
          {
LABEL_189:
            v101 = 0;
            goto LABEL_214;
          }

          v102 = v85 != v96 || v96 == 0;
          if (!v102 && [(NSTextStorage *)v15->_textStorage length])
          {
            v103 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(v15, v260.location + v260.length - 1);
            v104 = [v244 characterAtIndex:v103];
            v101 = 0;
            if (v104 > 132)
            {
              if ((v104 - 8232) < 2 || v104 == 133)
              {
                goto LABEL_214;
              }
            }

            else
            {
              if (v104 == 10 || v104 == 12)
              {
                goto LABEL_214;
              }

              if (v104 == 13)
              {
                v105 = v103 + 1;
                if (v105 < [v244 length])
                {
                  v14 = v234;
                  if ([v244 characterAtIndex:v105] != 10)
                  {
                    goto LABEL_189;
                  }

                  goto LABEL_213;
                }

                v101 = 0;
                v14 = v234;
LABEL_214:
                v107 = v98 - v97;
                if (v83)
                {
                  v108 = v101;
                }

                else
                {
                  v108 = v100;
                }

                if (!v83)
                {
                  v100 = v101;
                }

                v90 = v245;
                v109 = v241;
                cachedRectArray = v258;
                if (!(v108 | v100))
                {
                  goto LABEL_320;
                }

                v249 = v108;
                v110 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(v15, v260.location);
                v111 = _insertionPointHelperForCharacterAtIndex(v15, v110);
                v112.location = [(NSLayoutManager *)v15 characterRangeForGlyphRange:v68 actualGlyphRange:v84, 0];
                v113.location = v112.location;
                if (v237)
                {
                  v114 = v14;
                }

                else
                {
                  v114 = v112.location;
                }

                v112.location = v14;
                if (v237)
                {
                  v115 = 0;
                }

                else
                {
                  v115 = v112.length;
                }

                if (v227)
                {
                  v113.length = v112.length;
                  v112.length = range1a;
                  v116 = NSIntersectionRange(v112, v113);
                  v114 = v116.location;
                  v115 = v116.length;
                }

                if (v111)
                {
                  logicalPositions = v111->_logicalPositions;
                  logicalCharIndexes = v111->_logicalCharIndexes;
                  logicalLeftBoundaries = v111->_logicalLeftBoundaries;
                  logicalRightBoundaries = v111->_logicalRightBoundaries;
                  logicalAltPositions = v111->_logicalAltPositions;
                  logicalAltCharIndexes = v111->_logicalAltCharIndexes;
                  count = v111->_count;
                  altCount = v111->_altCount;
                }

                else
                {
                  logicalPositions = 0;
                  logicalAltPositions = 0;
                  logicalLeftBoundaries = 0;
                  logicalRightBoundaries = 0;
                  logicalCharIndexes = 0;
                  logicalAltCharIndexes = 0;
                  count = 0;
                  altCount = 0;
                }

                if (!v115)
                {
                  v124 = 0x7FFFFFFFFFFFFFFFLL;
                  if (count)
                  {
                    v14 = v234;
                    if (logicalPositions)
                    {
                      v90 = v245;
                      if (logicalCharIndexes)
                      {
                        v125 = 0;
                        do
                        {
                          v124 = logicalCharIndexes[v125++];
                        }

                        while (v124 < v114 && v125 < count);
                        v90 = v42 + logicalPositions[v125 - 1];
                      }
                    }

                    else
                    {
                      v90 = v245;
                    }
                  }

                  else
                  {
                    v90 = v245;
                    v14 = v234;
                  }

                  if (altCount)
                  {
                    v15 = v231;
                    if (logicalAltPositions && logicalAltCharIndexes)
                    {
                      v127 = 0;
                      while (logicalAltCharIndexes[v127] != v124)
                      {
                        if (++v127 >= altCount)
                        {
                          v89 = v107;
                          v87 = v97;
                          v86 = 1;
                          v88 = v90 - v90;
                          goto LABEL_324;
                        }
                      }

                      v86 = 0;
                      v246 = v42 + logicalAltPositions[v127];
                      v248 = v107;
                      v87 = v97;
                      v250 = v97;
                      v252 = v90 - v90;
                      v89 = v107;
                      v88 = v90 - v90;
                      goto LABEL_325;
                    }

                    v109 = v90;
                  }

                  else
                  {
                    v109 = v90;
                    v15 = v231;
                  }

                  goto LABEL_320;
                }

                v247 = v100;
                if (v249)
                {
                  v123 = v241;
                  if (!count)
                  {
                    goto LABEL_289;
                  }

LABEL_254:
                  v123 = v241;
                  if (logicalLeftBoundaries)
                  {
                    v123 = v241;
                    if (logicalCharIndexes)
                    {
                      v129 = logicalCharIndexes + 1;
                      v130 = 1;
                      v131 = count;
                      v132 = logicalLeftBoundaries;
                      v123 = v241;
                      do
                      {
                        v133.location = *(v129 - 1);
                        if (v130 >= count)
                        {
                          v133.length = 1;
                        }

                        else
                        {
                          v133.length = *v129 - v133.location;
                        }

                        v265.location = v114;
                        v265.length = v115;
                        if (NSIntersectionRange(v265, v133).length && v42 + *v132 < v123)
                        {
                          v123 = v42 + *v132;
                        }

                        ++v132;
                        ++v129;
                        ++v130;
                        --v131;
                      }

                      while (v131);
                    }
                  }

                  if (v249)
                  {
                    v16 = a9;
                    cachedRectArray = v258;
                    v100 = v247;
                    goto LABEL_289;
                  }

                  v128 = *&v231->_lmFlags & 0x2000000;
                  v16 = a9;
                  cachedRectArray = v258;
                  v100 = v247;
                }

                else
                {
                  v128 = *&v231->_lmFlags & 0x2000000;
                  if (v128)
                  {
                    v123 = v241;
                    if (count)
                    {
                      goto LABEL_254;
                    }
                  }

                  else
                  {
                    v123 = v241;
                  }
                }

                v90 = v245;
                if (v128 && (v90 = v245, count) && (v90 = v245, logicalLeftBoundaries) && (v90 = v245, logicalCharIndexes))
                {
                  v134 = 0;
                  v135 = logicalCharIndexes + 1;
                  while (1)
                  {
                    v136.location = *(v135 - 1);
                    v137 = v134 + 1;
                    v136.length = v134 + 1 >= count ? 1 : *v135 - v136.location;
                    v266.location = v114;
                    v266.length = v115;
                    if (!NSIntersectionRange(v266, v136).length && v42 + logicalLeftBoundaries[v134] < v123)
                    {
                      break;
                    }

                    ++v135;
                    ++v134;
                    if (v137 >= count)
                    {
                      v90 = v245;
                      cachedRectArray = v258;
                      v100 = v247;
                      goto LABEL_282;
                    }
                  }

                  cachedRectArray = v258;
                  v100 = v247;
LABEL_289:
                  v90 = v123;
                  if (!v100)
                  {
LABEL_290:
                    v138 = *&v231->_lmFlags & 0x2000000;
                    if (v138)
                    {
                      v109 = v245;
                      if (count)
                      {
                        goto LABEL_292;
                      }

LABEL_306:
                      if (v138 && count && logicalRightBoundaries && logicalCharIndexes)
                      {
                        v144 = 0;
                        v145 = logicalCharIndexes + 1;
                        while (1)
                        {
                          v146.location = *(v145 - 1);
                          v147 = v144 + 1;
                          v146.length = v144 + 1 >= count ? 1 : *v145 - v146.location;
                          v268.location = v114;
                          v268.length = v115;
                          if (!NSIntersectionRange(v268, v146).length && v42 + logicalRightBoundaries[v144] > v109)
                          {
                            break;
                          }

                          ++v145;
                          ++v144;
                          if (v147 >= count)
                          {
                            v109 = v241;
                            v15 = v231;
                            v14 = v234;
                            cachedRectArray = v258;
                            goto LABEL_320;
                          }
                        }

                        cachedRectArray = v258;
                        goto LABEL_304;
                      }
                    }

                    v109 = v241;
                    v15 = v231;
LABEL_319:
                    v14 = v234;
LABEL_320:
                    v89 = v107;
                    v87 = v97;
                    if (v109 >= v90)
                    {
                      v148 = v109;
                    }

                    else
                    {
                      v148 = v90;
                    }

                    v86 = 1;
                    v88 = v148 - v90;
LABEL_324:
                    v250 = v254;
                    v252 = v243;
                    v246 = v42;
                    v248 = v242;
                    goto LABEL_325;
                  }
                }

                else
                {
LABEL_282:
                  if (!v100)
                  {
                    goto LABEL_290;
                  }
                }

                if (count)
                {
LABEL_292:
                  v109 = v245;
                  if (logicalRightBoundaries)
                  {
                    v109 = v245;
                    if (logicalCharIndexes)
                    {
                      v139 = logicalCharIndexes + 1;
                      v140 = 1;
                      v141 = count;
                      v142 = logicalRightBoundaries;
                      v109 = v245;
                      do
                      {
                        v143.location = *(v139 - 1);
                        if (v140 >= count)
                        {
                          v143.length = 1;
                        }

                        else
                        {
                          v143.length = *v139 - v143.location;
                        }

                        v267.location = v114;
                        v267.length = v115;
                        if (NSIntersectionRange(v267, v143).length && v42 + *v142 > v109)
                        {
                          v109 = v42 + *v142;
                        }

                        ++v142;
                        ++v139;
                        ++v140;
                        --v141;
                      }

                      while (v141);
                    }
                  }

                  if (!v247)
                  {
                    v138 = *&v231->_lmFlags & 0x2000000;
                    v16 = a9;
                    cachedRectArray = v258;
                    goto LABEL_306;
                  }

                  v16 = a9;
                  cachedRectArray = v258;
                }

                else
                {
                  v109 = v245;
                }

LABEL_304:
                v15 = v231;
                goto LABEL_319;
              }
            }
          }

LABEL_213:
          v101 = 1;
          goto LABEL_214;
        }

        v86 = 1;
        v87 = v254;
        v89 = v242;
        v88 = v243;
        v250 = v254;
        v252 = v243;
        v246 = v42;
        v248 = v242;
        v90 = v42;
        cachedRectArray = v258;
LABEL_325:
        if (*v16 && (v255 || ((v154 = &cachedRectArray[*v16], x = v154[-1].origin.x, y = v154[-1].origin.y, width = v154[-1].size.width, height = v154[-1].size.height, v90 == x) ? (v159 = v88 == width) : (v159 = 0), v159 && (v87 != y + height ? (v163 = y == v87 + v89) : (v163 = 1), v163 || (v269.origin.y = v87, v269.size.height = v89, v269.origin.x = v90, v269.size.width = v88, NSIntersectsRect(v269, v154[-1])))) || (v87 == y ? (v160 = v89 == height) : (v160 = 0), v160 && (v90 != x + width ? (v164 = x == v88 + v90) : (v164 = 1), v164 || (v270.origin.x = v90, v270.origin.y = v87, v270.size.width = v88, v270.size.height = v89, v271.origin.x = x, v271.origin.y = y, v271.size.width = width, v271.size.height = height, NSIntersectsRect(v270, v271))))))
        {
          v149 = *v16;
          v150 = &cachedRectArray[*v16];
          v150[-1].origin.x = NSLMUnionRect(v150[-1].origin.x, v150[-1].origin.y, v150[-1].size.width, v150[-1].size.height, v90, v87, v88, v89);
          v150[-1].origin.y = v151;
          v150[-1].size.width = v152;
          v150[-1].size.height = v153;
        }

        else
        {
          v161 = *v16 + 1;
          *v16 = v161;
          if (v240)
          {
            [(NSLayoutManager *)v15 _growCachedRectArrayToSize:?];
            cachedRectArray = v15->_cachedRectArray;
          }

          else if (a12)
          {
            if (v161 > a13)
            {
              v162 = [MEMORY[0x1E695DF88] data];
              [v162 setLength:32 * *v16];
              v228 = v162;
              cachedRectArray = [v162 mutableBytes];
              memcpy(cachedRectArray, a12, __n);
            }
          }

          else
          {
            [v228 setLength:32 * v161];
            cachedRectArray = [v228 mutableBytes];
          }

          v149 = *v16;
          v165 = &cachedRectArray[*v16];
          v165[-1].origin.x = v90;
          v165[-1].origin.y = v87;
          v165[-1].size.width = v88;
          v165[-1].size.height = v89;
        }

        if ((v86 | v255))
        {
          v42 = v238;
          v166 = v256;
        }

        else
        {
          v167 = v149 + 1;
          *v16 = v149 + 1;
          v42 = v238;
          v166 = v256;
          if (v240)
          {
            [(NSLayoutManager *)v15 _growCachedRectArrayToSize:?];
            cachedRectArray = v15->_cachedRectArray;
          }

          else if (a12)
          {
            if (v167 > a13)
            {
              v168 = [MEMORY[0x1E695DF88] data];
              [v168 setLength:32 * *v16];
              v228 = v168;
              cachedRectArray = [v168 mutableBytes];
              memcpy(cachedRectArray, a12, __n);
            }
          }

          else
          {
            [v228 setLength:32 * v167];
            cachedRectArray = [v228 mutableBytes];
          }

          v169 = &cachedRectArray[*v16];
          v169[-1].origin.x = v246;
          v169[-1].origin.y = v250;
          v169[-1].size.width = v252;
          v169[-1].size.height = v248;
        }

        v73 = v68 + v73 - v166;
        v75 = v239;
        if (v73)
        {
          v68 = v166;
          if (v166 != 0x7FFFFFFFFFFFFFFFLL)
          {
            continue;
          }
        }

        goto LABEL_129;
      }
    }

LABEL_130:
    v38 = v260.length + v260.location;
    v78 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(v15, v260.length + v260.location - 1);
    v79 = [v244 characterAtIndex:v78];
    v35 = 1;
    if (v79 > 132)
    {
      if ((v79 - 8232) < 2 || v79 == 133)
      {
        goto LABEL_142;
      }
    }

    else
    {
      if (v79 == 10 || v79 == 12)
      {
        goto LABEL_142;
      }

      if (v79 == 13)
      {
        v81 = v78 + 1;
        if (v81 >= [v244 length] || objc_msgSend(v244, "characterAtIndex:", v81) != 10)
        {
          goto LABEL_142;
        }
      }
    }

    v35 = 0;
LABEL_142:
    if ((*(&v15->_lmFlags + 3) & 0x40) == 0)
    {
      _NSFastFillAllGlyphHolesForGlyphRange(v15, v38, 1uLL);
    }

    if (v38 >= *(*(v15->_extraData + 26) + 8))
    {
LABEL_370:
      v170 = 0;
LABEL_371:
      v171 = a11;
      goto LABEL_379;
    }
  }

  v40 = range1a;
  v172 = range1a + v14;
  if (v237)
  {
    if (v52 <= v172)
    {
      v173 = v52 + range1a;
      goto LABEL_377;
    }
  }

  else if (v46 <= v172)
  {
    v173 = v46 + range1a;
LABEL_377:
    v40 = v173 - v172 + 1;
  }

  v170 = 1;
  v171 = a11;
LABEL_379:
  if (v220)
  {
    v174 = 0x7FFFFFFFFFFFFFFFLL;
    if (*v16)
    {
      v174 = v14;
      v175 = v40;
    }

    else
    {
      v175 = 0;
    }

    v220->location = v174;
    v220->length = v175;
  }

  if (*v16 | v40)
  {
    v170 = 1;
  }

  if (v170)
  {
    goto LABEL_431;
  }

  v176 = [(NSTextStorage *)v15->_textStorage length];
  v177 = *(*(v15->_extraData + 26) + 8);
  v259 = 0;
  [a8 lineFragmentPadding];
  v179 = v237 ? v176 : v177;
  if (v14 != v179)
  {
    goto LABEL_431;
  }

  v180 = v178;
  if (!v176 || !v177)
  {
    goto LABEL_403;
  }

  v181 = [v244 characterAtIndex:v176 - 1];
  if (v181 > 132)
  {
    if ((v181 - 8232) < 2 || v181 == 133)
    {
      goto LABEL_403;
    }

LABEL_416:
    v193 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(v15, v177 - 1, &v260);
    v194 = _NSLayoutTreeLineFragmentUsedRectForGlyphAtIndex(v15, v177 - 1, 0);
    v185 = v195;
    v187 = v196;
    v191 = v194 + v197 - v180;
    if (!v260.length)
    {
      v200 = 0;
      v202 = 1;
      v207 = v191;
      goto LABEL_447;
    }

    v198 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(v15, v260.location);
    v199 = _insertionPointHelperForCharacterAtIndex(v15, v198);
    v200 = 0;
    if (v199)
    {
      v201 = v199->_count;
      v202 = 1;
      if (v201)
      {
        v203 = v199->_logicalPositions;
        if (v203)
        {
          v204 = v199->_logicalCharIndexes;
          if (v204)
          {
            v200 = 0;
            v205 = v199->_altCount;
            v206 = 8 * v201 - 8;
            v207 = v193 + *(v203 + v206);
            v202 = 1;
            if (v205)
            {
              v208 = v199->_logicalAltPositions;
              if (v208)
              {
                v209 = v199->_logicalAltCharIndexes;
                if (v209)
                {
                  v210 = 0;
                  v211 = *(v204 + v206);
                  v202 = 1;
                  while (1)
                  {
                    v212 = v209[v210];
                    v200 = v212 == v211;
                    if (v212 == v211)
                    {
                      break;
                    }

                    if (++v210 >= v205)
                    {
                      goto LABEL_447;
                    }
                  }

                  v191 = v193 + v208[v210];
                  v202 = 2;
                }
              }
            }

LABEL_447:
            v216 = *v16 + v202;
            *v16 = v216;
            if (v240)
            {
              [(NSLayoutManager *)v15 _growCachedRectArrayToSize:?];
              v217 = v15->_cachedRectArray;
            }

            else if (a12)
            {
              v217 = v257;
              if (v216 > a13)
              {
                v218 = [MEMORY[0x1E695DF88] data];
                [v218 setLength:32 * *v16];
                v217 = [v218 mutableBytes];
                memcpy(v217, a12, 32 * a13);
              }
            }

            else
            {
              [v228 setLength:32 * v216];
              v217 = [v228 mutableBytes];
            }

            v213 = *v16;
            v257 = v217;
            v219 = &v217[*v16 - v202];
            v219->origin.x = v207;
            *&v219->origin.y = v185;
            v219->size.width = 0.0;
            v219->size.height = v187;
            if (v200)
            {
              goto LABEL_430;
            }

            goto LABEL_431;
          }
        }
      }
    }

    else
    {
      v202 = 1;
    }

    v207 = v191;
    goto LABEL_447;
  }

  if (v181 != 10 && v181 != 12 && (v181 != 13 || v176 < [v244 length] && objc_msgSend(v244, "characterAtIndex:", v176) == 10))
  {
    goto LABEL_416;
  }

LABEL_403:
  if (v15->_textStorage && !v15->_extraLineFragmentContainer)
  {
    [(NSTypesetter *)[(NSLayoutManager *)v15 typesetter] layoutGlyphsInLayoutManager:v15 startingAtGlyphIndex:v177 maxNumberOfLineFragments:1 nextGlyphIndex:&v259];
  }

  if (v15->_extraLineFragmentContainer == a8)
  {
    *value = 0u;
    v263 = 0u;
    _NSLayoutTreeGetExtraLineFragmentRect(v15, value, 0);
    v182 = value[0];
    v183 = *&v263;
    *value = 0u;
    v263 = 0u;
    _NSLayoutTreeGetExtraLineFragmentRect(v15, 0, value);
    v184 = value[0];
    v185 = value[1];
    v187 = *(&v263 + 1);
    v186 = *&v263;
    v188 = *v16 + 1;
    *v16 = v188;
    v189 = *&v184 + v186;
    v190 = v180 + *&v184;
    if (v189 == *&v182 + v183)
    {
      v191 = v190;
    }

    else
    {
      v191 = v189 - v180;
    }

    if (v240)
    {
      [(NSLayoutManager *)v15 _growCachedRectArrayToSize:?];
      v257 = v15->_cachedRectArray;
    }

    else if (a12)
    {
      if (v188 > a13)
      {
        v192 = [MEMORY[0x1E695DF88] data];
        [v192 setLength:32 * *v16];
        v257 = [v192 mutableBytes];
        memcpy(v257, a12, 32 * a13);
      }
    }

    else
    {
      [v228 setLength:32 * v188];
      v257 = [v228 mutableBytes];
    }

    v213 = *v16;
LABEL_430:
    v214 = &v257[v213];
    v214[-1].origin.x = v191;
    *&v214[-1].origin.y = v185;
    v214[-1].size.width = 0.0;
    v214[-1].size.height = v187;
  }

LABEL_431:
  lmFlags = v15->_lmFlags;
  if ((*&lmFlags & 0x40) == 0)
  {
    if (!v15->_displayInvalidationDisableStack)
    {
      goto LABEL_435;
    }

    if (!--v15->_displayInvalidationDisableStack)
    {
      lmFlags = v15->_lmFlags;
LABEL_435:
      v15->_lmFlags = (*&lmFlags | 0x40);
      [(NSLayoutManager *)v15 _invalidateDisplayIfNeeded];
      *&v15->_lmFlags &= ~0x40u;
    }
  }

  if (v240)
  {
    *&v15->_lmFlags &= ~0x20u;
  }

  if (v171)
  {
    *v171 = v39 & 1;
  }

  if (*v16)
  {
    return v257;
  }

  else
  {
    return 0;
  }
}

- (CGRect)_boundingRectForGlyphRange:(_NSRange)a3 inTextContainer:(id)a4 fast:(BOOL)a5 fullLineRectsOnly:(BOOL)a6
{
  v6 = a4;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  LOBYTE(v94) = a6;
  v8 = [(NSLayoutManager *)self _rectArrayForRange:a3.location withinSelectionRange:a3.length rangeIsCharRange:0x7FFFFFFFFFFFFFFFLL singleRectOnly:0 fullLineRectsOnly:0 inTextContainer:1 rectCount:v94 rangeWithinContainer:a4 glyphsDrawOutsideLines:&v110, &v109, &v108];
  if (v110 != 1)
  {
    x = *MEMORY[0x1E696AA80];
    y = *(MEMORY[0x1E696AA80] + 8);
    width = *(MEMORY[0x1E696AA80] + 16);
    height = *(MEMORY[0x1E696AA80] + 24);
    goto LABEL_75;
  }

  x = v8->origin.x;
  y = v8->origin.y;
  width = v8->size.width;
  height = v8->size.height;
  memset(&value, 0, sizeof(value));
  _NSLayoutTreeGetExtraLineFragmentRect(self, 0, &value);
  v13 = value.origin.x;
  v14 = value.origin.y;
  size = value.size;
  extraData = self->_extraData;
  if (((*(&self->_lmFlags + 3) & 0x40) != 0 || (*(extraData[30] + 56) & 1) == 0) && v109.length + v109.location == *(extraData[26] + 8) && self->_extraLineFragmentContainer == v6 && !NSIsEmptyRect(value))
  {
    x = NSLMUnionRect(x, y, width, height, v13, v14, size.width, size.height);
    y = v17;
    width = v18;
    height = v19;
  }

  if (v108 == 1 && v109.length)
  {
    value.origin.x = 0.0;
    value.origin.y = 0.0;
    v107 = 0uLL;
    if ((*(&self->_lmFlags + 3) & 0x40) != 0)
    {
      v107.n128_u64[1] = *(*(self->_extraData + 26) + 8);
      v25 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
    }

    else
    {
      v20 = v6;
      location = v109.location;
      if ([(NSRunStorage *)self->_containerRuns count]<= location)
      {
        v25 = 0;
        v6 = v20;
      }

      else
      {
        containerRuns = self->_containerRuns;
        _NSBlockNumberForIndex(containerRuns, location, &v107);
        if (containerRuns->_gapBlockIndex <= v23)
        {
          v24 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
        }

        else
        {
          v24 = 0;
        }

        v6 = v20;
        v25 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v24 + v23)];
      }
    }

    v98 = [v25 layoutOrientation];
    v95 = v6;
    [(NSLayoutManager *)self _setCachedTextContainer:v6 isVertical:v98 != 0];
    if (v109.length)
    {
      v26 = v109.location;
      v27 = 240;
      v28 = &OBJC_IVAR___NSLayoutManager__textStorage;
      do
      {
        v29 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v26, &value);
        v99 = v30;
        v100 = v29;
        v32 = v31;
        v34 = v33;
        value.origin = NSIntersectionRange(value.origin, v109);
        if (_NSLayoutTreeLineFragmentDrawsOutsideLineForGlyphAtIndex(self, v109.location))
        {
          v35 = *&value.origin.x;
          v96 = v34;
          v97 = v32;
          if (*&value.origin.x < *&value.origin.y + *&value.origin.x)
          {
            v37 = v99;
            v36 = v100;
            while (1)
            {
              v38 = _NSGlyphTreeNotShownAttributeForGlyphAtIndex(self, v35);
              v39 = _NSGlyphTreeDrawsOutsideLineFragmentForGlyphAtIndex(self, v35);
              if ((v38 & 1) != 0 || !v39)
              {
                if (!v39 || ![*(&self->super.isa + *v28) attribute:@"NSAttachment" atIndex:_NSGlyphTreeCharacterIndexForGlyphAtIndex(self effectiveRange:{v35), 0}])
                {
                  goto LABEL_56;
                }

                v101 = v34;
                v102 = v32;
                v103 = v37;
                v104 = v36;
                v105 = height;
                v63 = width;
                v64 = y;
                v65 = x;
                [(NSLayoutManager *)self locationForGlyphAtIndex:v35];
                v68 = v70;
                v72 = v71;
                [(NSLayoutManager *)self attachmentSizeForGlyphAtIndex:v35];
                v66 = v73;
                v67 = v74;
                v69 = v99 + v72 - v74;
              }

              else
              {
                v101 = v34;
                v102 = v32;
                [(NSLayoutManager *)self locationForGlyphAtIndex:v35];
                v41 = v40;
                v43 = v42;
                v44 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, v35);
                if (v44 < self->_cachedFontCharRange.location || v44 - self->_cachedFontCharRange.location >= self->_cachedFontCharRange.length)
                {
                  v46 = v44;
                  v47 = v27;
                  cachedFont = self->_cachedFont;
                  v49 = v28;
                  v50 = *v28;
                  v51 = [*(&self->super.isa + v50) attribute:@"NSFont" atIndex:v44 effectiveRange:&self->_cachedFontCharRange];
                  origin = 0;
                  v52 = [*(&self->super.isa + v50) attribute:@"CTVerticalForms" atIndex:v46 effectiveRange:&origin];
                  if (!v51)
                  {
                    v51 = NSDefaultFont();
                  }

                  v53 = [v52 BOOLValue];
                  if (v98)
                  {
                    v54 = v52 == 0;
                  }

                  else
                  {
                    v54 = 0;
                  }

                  v55 = v54;
                  if ((v53 & 1) != 0 || (v56 = v51, v55))
                  {
                    v56 = [v51 verticalFont];
                  }

                  if (v56)
                  {
                    v51 = v56;
                  }

                  if ([v51 isVertical])
                  {
                    v57 = v52 == 0;
                  }

                  else
                  {
                    v57 = 1;
                  }

                  v28 = v49;
                  if (!v57 && *&origin.y + *&origin.x < self->_cachedFontCharRange.length + self->_cachedFontCharRange.location)
                  {
                    self->_cachedFontCharRange.length = *&origin.y + *&origin.x - self->_cachedFontCharRange.location;
                  }

                  self->_cachedFont = [(NSLayoutManager *)self substituteFontForFont:v51];

                  [(UIFont *)self->_cachedFont boundingRectForFont];
                  v27 = v47;
                  v60 = (*(&self->super.isa + v47) + 112);
                  *v60 = v61;
                  v60[1] = -v58 - v59;
                  *(v60 + 2) = v62;
                  v60[3] = v59;
                }

                v103 = v37;
                v104 = v36;
                v105 = height;
                v63 = width;
                v64 = y;
                v65 = x;
                v66 = (*(&self->super.isa + v27))[16];
                v67 = (*(&self->super.isa + v27))[17];
                v68 = v41 + (*(&self->super.isa + v27))[14];
                v69 = v99 + v43 + (*(&self->super.isa + v27))[15];
              }

              v75 = v100 + v68;
              x = NSLMUnionRect(v65, v64, v63, v105, v100 + v68, v69, v66, v67);
              y = v76;
              width = v77;
              height = v78;
              v36 = NSLMUnionRect(v104, v103, v102, v101, v75, v69, v66, v67);
              v37 = v79;
              v32 = v80;
              v34 = v81;
LABEL_56:
              if (++v35 >= *&value.origin.y + *&value.origin.x)
              {
                goto LABEL_59;
              }
            }
          }

          v37 = v99;
          v36 = v100;
LABEL_59:
          v112.origin.y = v99;
          v112.origin.x = v100;
          v112.size.height = v96;
          v112.size.width = v97;
          v115.origin.x = v36;
          v115.origin.y = v37;
          v115.size.width = v32;
          v115.size.height = v34;
          if (!NSEqualRects(v112, v115))
          {
            origin = value.origin;
            v82 = 30;
            do
            {
              if (*&origin.x <= v107.n128_u64[0])
              {
                break;
              }

              v116.origin.x = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, *&origin.x - 1, &origin);
              v116.origin.y = v83;
              v116.size.width = v84;
              v116.size.height = v85;
              v113.origin.x = v36;
              v113.origin.y = v37;
              v113.size.width = v32;
              v113.size.height = v34;
              if (!NSIntersectsRect(v113, v116))
              {
                break;
              }

              if (!_NSLayoutTreeOutsideDrawsUponLineFragmentForGlyphAtIndex(self, *&origin.x))
              {
                _NSLayoutTreeSetOutsideDrawsUponLineFragmentAtGlyphIndex(self, *&origin.x);
              }

              --v82;
            }

            while (v82);
          }
        }

        v26 = *&value.origin.y + *&value.origin.x;
        v86 = v109.length + v109.location - (*&value.origin.y + *&value.origin.x);
        v54 = v109.length + v109.location == *&value.origin.y + *&value.origin.x;
        v109.location = *&value.origin.y + *&value.origin.x;
        v109.length = v86;
      }

      while (!v54);
    }

    [(NSLayoutManager *)self _resetCachedTextContainer];
    v6 = v95;
  }

  value.origin.x = 0.0;
  v87 = self->_extraData;
  if (*(v87 + 10) == v6)
  {
    v88 = 0.0;
LABEL_74:
    v89 = [(NSStorage *)self->_containerUsedRects elementAtIndex:*&v88];
    *(v89 + 9) = x;
    *(v89 + 10) = y;
    *(v89 + 11) = width;
    *(v89 + 12) = height;
    *(v89 + 104) = v109;
    goto LABEL_75;
  }

  if (CFDictionaryGetValueIfPresent(*(v87 + 11), v6, &value))
  {
    v88 = value.origin.x;
    if (*&value.origin.x != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_74;
    }
  }

LABEL_75:
  v90 = x;
  v91 = y;
  v92 = width;
  v93 = height;
  result.size.height = v93;
  result.size.width = v92;
  result.origin.y = v91;
  result.origin.x = v90;
  return result;
}

- (_NSRange)_firstPassGlyphRangeForBoundingRect:(CGRect)a3 inTextContainer:(id)a4 hintGlyphRange:(_NSRange)a5 okToFillHoles:(BOOL)a6
{
  HIDWORD(bRect.origin.y) = a6;
  length = a5.length;
  location = a5.location;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  firstUnlaidGlyphIndex = 0;
  bRect.size.width = 0.0;
  bRect.size.height = 0.0;
  if (self->_firstUnlaidCharIndex == 0x7FFFFFFFFFFFFFFFLL || self->_firstUnlaidGlyphIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSLayoutManager *)self getFirstUnlaidCharacterIndex:0 glyphIndex:&firstUnlaidGlyphIndex];
  }

  else
  {
    firstUnlaidGlyphIndex = self->_firstUnlaidGlyphIndex;
  }

  v14 = 0.0;
  if (*&location != 0.0)
  {
    v15 = NAN;
    v16 = *&location;
    while (1)
    {
      v17 = *&v16 - 1;
      v18 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, *&v16 - 1, &bRect.size);
      v20 = v19;
      v22 = v21;
      v24 = v23;
      if ((*(&self->_lmFlags + 3) & 0x40) != 0)
      {
        v28 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
      }

      else if ([(NSRunStorage *)self->_containerRuns count]<= v17)
      {
        v28 = 0;
      }

      else
      {
        containerRuns = self->_containerRuns;
        *&a3.origin.x = _NSBlockNumberForIndex(containerRuns, v17, 0).n128_u64[0];
        v27 = 0;
        if (containerRuns->_gapBlockIndex <= v26)
        {
          v27 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
        }

        v28 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v27 + v26)];
      }

      if (v28 != a4)
      {
        goto LABEL_24;
      }

      v94.origin.x = v18;
      v94.origin.y = v20;
      v94.size.width = v22;
      v94.size.height = v24;
      v98.origin.x = x;
      v98.origin.y = y;
      v98.size.width = width;
      v98.size.height = height;
      if (!NSIntersectsRect(v94, v98))
      {
        break;
      }

      if (v14 == 0.0)
      {
        v16 = bRect.size.width;
        v14 = bRect.size.height;
        v15 = bRect.size.width;
        if (!*&bRect.size.width)
        {
          goto LABEL_24;
        }
      }

      else
      {
        *&v89.location = v15;
        *&v89.length = v14;
        v29 = NSUnionRange(v89, bRect.size);
        v15 = *&v29.location;
        v14 = *&v29.length;
LABEL_19:
        v16 = bRect.size.width;
        if (!*&bRect.size.width)
        {
          goto LABEL_24;
        }
      }
    }

    a3.origin.x = v20 + v24;
    if (v20 + v24 <= y)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v15 = NAN;
LABEL_24:
  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    v30 = *(*(self->_extraData + 26) + 8);
  }

  else if (HIDWORD(bRect.origin.y))
  {
    _NSFastFillAllLayoutHolesForGlyphRange(self, location, 1uLL);
    v88 = 0;
    _NSGlyphTreeGetFirstHoleAfterGlyphIndex(self, 0, 0, 0, 0, &v88);
    v30 = v88;
  }

  else
  {
    v30 = firstUnlaidGlyphIndex;
  }

  if (location < v30)
  {
    v31 = 0;
    v32 = location + length;
    do
    {
      v33 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, location, &bRect.size);
      v35 = v34;
      v37 = v36;
      v39 = v38;
      if ((*(&self->_lmFlags + 3) & 0x40) != 0)
      {
        v43 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
      }

      else if ([(NSRunStorage *)self->_containerRuns count]<= location)
      {
        v43 = 0;
      }

      else
      {
        v40 = self->_containerRuns;
        *&a3.origin.x = _NSBlockNumberForIndex(v40, location, 0).n128_u64[0];
        v42 = 0;
        if (v40->_gapBlockIndex <= v41)
        {
          v42 = v40->_maxBlocks - v40->_numBlocks;
        }

        v43 = *&v40->_runs->var1[(v40->_elementSize + 8) * (v42 + v41)];
      }

      v31 |= v43 == a4;
      if (v43 == a4 && (v95.origin.x = v33, v95.origin.y = v35, v95.size.width = v37, v95.size.height = v39, v99.origin.x = x, v99.origin.y = y, v99.size.width = width, v99.size.height = height, NSIntersectsRect(v95, v99)))
      {
        if (v14 == 0.0)
        {
          v15 = bRect.size.width;
          v14 = bRect.size.height;
        }

        else
        {
          *&v90.location = v15;
          *&v90.length = v14;
          v44 = NSUnionRange(v90, bRect.size);
          v15 = *&v44.location;
          v14 = *&v44.length;
        }
      }

      else
      {
        v46 = v35 < y + height && v43 == a4;
        if (((location < v32) & ~v31) == 0 && !v46)
        {
          break;
        }
      }

      location = *&bRect.size.height + *&bRect.size.width;
      if (HIDWORD(bRect.origin.y) && (*(&self->_lmFlags + 3) & 0x40) == 0)
      {
        _NSFastFillAllLayoutHolesForGlyphRange(self, *&bRect.size.height + *&bRect.size.width, 1uLL);
        v88 = 0;
        _NSGlyphTreeGetFirstHoleAfterGlyphIndex(self, 0, 0, 0, 0, &v88);
        v30 = v88;
      }
    }

    while (location < v30);
  }

  v47 = [(NSLayoutManager *)self _primitiveCharacterRangeForGlyphRange:*&v15, *&v14, a3.origin.x, *&x];
  v49 = v48;
  v51 = [(NSLayoutManager *)self _blockRangeForCharRange:v47, v48];
  if (v47 != v51 || v49 != v50)
  {
    v54 = [(NSLayoutManager *)self _glyphRangeForCharacterRange:v51 actualCharacterRange:v50 okToFillHoles:0, HIDWORD(bRect.origin.y)];
    v55 = v54;
    v57 = v56;
    if (v54 >= *&v15)
    {
      v59 = bRect.origin.x;
    }

    else
    {
      v58 = v54;
      v59 = bRect.origin.x;
      do
      {
        v60 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v58, &bRect.size);
        v62 = v61;
        v64 = v63;
        v66 = v65;
        if ((*(&self->_lmFlags + 3) & 0x40) != 0)
        {
          v70 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
        }

        else if ([(NSRunStorage *)self->_containerRuns count]<= v58)
        {
          v70 = 0;
        }

        else
        {
          v67 = self->_containerRuns;
          _NSBlockNumberForIndex(v67, v58, 0);
          v69 = 0;
          if (v67->_gapBlockIndex <= v68)
          {
            v69 = v67->_maxBlocks - v67->_numBlocks;
          }

          v70 = *&v67->_runs->var1[(v67->_elementSize + 8) * (v69 + v68)];
        }

        if (v70 == a4)
        {
          v96.origin.x = v60;
          v96.origin.y = v62;
          v96.size.width = v64;
          v96.size.height = v66;
          v100.origin.x = bRect.origin.x;
          v100.origin.y = y;
          v100.size.width = width;
          v100.size.height = height;
          if (NSIntersectsRect(v96, v100))
          {
            if (v14 == 0.0)
            {
              v15 = bRect.size.width;
              v14 = bRect.size.height;
            }

            else
            {
              *&v91.location = v15;
              *&v91.length = v14;
              v71 = NSUnionRange(v91, bRect.size);
              v15 = *&v71.location;
              v14 = *&v71.length;
            }
          }
        }

        v58 = *&bRect.size.height + *&bRect.size.width;
      }

      while (*&bRect.size.height + *&bRect.size.width < *&v15);
    }

    v72 = *&v15 + *&v14;
    if (*&v15 + *&v14 < v30)
    {
      v73 = v55 + v57;
      do
      {
        if (v72 >= v73)
        {
          break;
        }

        v74 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v72, &bRect.size);
        v76 = v75;
        v78 = v77;
        v80 = v79;
        if ((*(&self->_lmFlags + 3) & 0x40) != 0)
        {
          v84 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
        }

        else if ([(NSRunStorage *)self->_containerRuns count]<= v72)
        {
          v84 = 0;
        }

        else
        {
          v81 = self->_containerRuns;
          _NSBlockNumberForIndex(v81, v72, 0);
          v83 = 0;
          if (v81->_gapBlockIndex <= v82)
          {
            v83 = v81->_maxBlocks - v81->_numBlocks;
          }

          v84 = *&v81->_runs->var1[(v81->_elementSize + 8) * (v83 + v82)];
        }

        if (v84 == a4)
        {
          v97.origin.x = v74;
          v97.origin.y = v76;
          v97.size.width = v78;
          v97.size.height = v80;
          v101.origin.x = v59;
          v101.origin.y = y;
          v101.size.width = width;
          v101.size.height = height;
          if (NSIntersectsRect(v97, v101))
          {
            if (v14 == 0.0)
            {
              v15 = bRect.size.width;
              v14 = bRect.size.height;
            }

            else
            {
              *&v92.location = v15;
              *&v92.length = v14;
              v85 = NSUnionRange(v92, bRect.size);
              v15 = *&v85.location;
              v14 = *&v85.length;
            }
          }
        }

        v72 = *&bRect.size.height + *&bRect.size.width;
        if (HIDWORD(bRect.origin.y) && (*(&self->_lmFlags + 3) & 0x40) == 0)
        {
          _NSFastFillAllLayoutHolesForGlyphRange(self, *&bRect.size.height + *&bRect.size.width, 1uLL);
          v88 = 0;
          _NSGlyphTreeGetFirstHoleAfterGlyphIndex(self, 0, 0, 0, 0, &v88);
          v30 = v88;
        }
      }

      while (v72 < v30);
    }
  }

  v52 = *&v15;
  v53 = *&v14;
  result.length = v53;
  result.location = v52;
  return result;
}

- (_NSRange)_firstPassGlyphRangeForBoundingRect:(CGRect)a3 inTextContainer:(id)a4 okToFillHoles:(BOOL)a5
{
  v92 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  value = 0;
  v97.location = 0;
  v97.length = 0;
  v96 = 0uLL;
  v10 = 0;
  v11 = 0;
  if (!NSIsEmptyRect(a3))
  {
    firstUnlaidGlyphIndex = 0;
    if (self->_firstUnlaidCharIndex == 0x7FFFFFFFFFFFFFFFLL || self->_firstUnlaidGlyphIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSLayoutManager *)self getFirstUnlaidCharacterIndex:0 glyphIndex:&firstUnlaidGlyphIndex];
    }

    else
    {
      firstUnlaidGlyphIndex = self->_firstUnlaidGlyphIndex;
    }

    if (a4)
    {
      if (CFDictionaryGetValueIfPresent(*(self->_extraData + 12), a4, &value))
      {
        v12 = value;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    if ((*(&self->_lmFlags + 3) & 0x40) != 0)
    {
      v13 = *(*(self->_extraData + 26) + 8);
    }

    else if (v92)
    {
      _NSFastFillAllLayoutHolesForGlyphRange(self, v12, 1uLL);
      v94 = 0;
      _NSGlyphTreeGetFirstHoleAfterGlyphIndex(self, 0, 0, 0, 0, &v94);
      v13 = v94;
    }

    else
    {
      v13 = firstUnlaidGlyphIndex;
    }

    if (v12 >= v13)
    {
      v10 = 0;
      location = 0;
    }

    else
    {
      v10 = 0;
      v89 = 0;
      v14 = 0;
      v15 = 0;
      range1 = 0;
      do
      {
        if ((*(&self->_lmFlags + 3) & 0x40) != 0)
        {
          v19 = *(*(self->_extraData + 26) + 8);
          v96.n128_u64[0] = 0;
          v96.n128_u64[1] = v19;
          v20 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
        }

        else if ([(NSRunStorage *)self->_containerRuns count]<= v12)
        {
          v20 = 0;
        }

        else
        {
          containerRuns = self->_containerRuns;
          _NSBlockNumberForIndex(containerRuns, v12, &v96);
          if (containerRuns->_gapBlockIndex <= v17)
          {
            v18 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
          }

          else
          {
            v18 = 0;
          }

          v20 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v18 + v17)];
        }

        v21 = v20 == a4;
        if (v20 == a4)
        {
          v24 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v12, &v97);
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v31 = firstUnlaidGlyphIndex;
          if (v96.n128_u64[1] + v96.n128_u64[0] < firstUnlaidGlyphIndex)
          {
            v31 = v96.n128_u64[1] + v96.n128_u64[0];
          }

          if ((*&self->_lmFlags & 0x40000000) != 0)
          {
            v32 = v96.n128_u64[1] + v96.n128_u64[0];
          }

          else
          {
            v32 = v31;
          }

          v103.origin.x = x;
          v103.origin.y = y;
          v103.size.width = width;
          v103.size.height = height;
          v33 = v26;
          v34 = v30;
          if (NSIntersectsRect(v103, *&v24))
          {
            location = v97.location;
            if ((v15 & 1) == 0)
            {
              v10 = v97.location;
            }

            v15 = 1;
          }

          else if (v15)
          {
            location = v97.location;
            if (v26 >= y + height)
            {
              goto LABEL_69;
            }

            v15 = 1;
            v89 = v97.location;
          }

          else if (range1)
          {
            v15 = 0;
            range1 = 1;
            location = v97.location;
          }

          else
          {
            location = v97.location;
            if (v26 + v30 >= y)
            {
              range1 = 0;
              v15 = 0;
            }

            else
            {
              v87 = v13;
              length = v97.length;
              v37 = v97.length + v97.location;
              if (v97.length + v97.location + 2500 >= v32)
              {
                range1 = 0;
                v15 = 0;
              }

              else
              {
                v38 = v32 - v37;
                if (v32 - v37 >= 0xCA)
                {
                  v88 = v10;
                  do
                  {
                    v39 = location + (v38 >> 1) + length;
                    if (v39 >= v32)
                    {
                      break;
                    }

                    v94 = 0;
                    v95 = 0;
                    _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v39, &v94);
                    if (v40 + v41 < y)
                    {
                      location = v94;
                      length = v95;
                    }

                    v42 = v38 > 0x193;
                    v38 >>= 1;
                    v10 = v88;
                  }

                  while (v42);
                }

                v15 = 0;
                v97.location = location;
                v97.length = length;
                range1 = 1;
              }

              v13 = v87;
            }
          }

          v12 = (v97.length + location);
        }

        else
        {
          if (v14)
          {
            break;
          }

          if (v92 || (*(&self->_lmFlags + 3) & 0x40) != 0)
          {
            [(NSLayoutManager *)self textContainerForGlyphAtIndex:v12 effectiveRange:&v96];
            v23 = v96.n128_u64[1];
            v22 = v96.n128_u64[0];
          }

          else
          {
            v23 = v96.n128_u64[1];
            v22 = v96.n128_u64[0];
            if (v96.n128_u64[1] + v96.n128_u64[0] > firstUnlaidGlyphIndex)
            {
              v23 = firstUnlaidGlyphIndex - v96.n128_u64[0];
              v96.n128_u64[1] = firstUnlaidGlyphIndex - v96.n128_u64[0];
            }
          }

          v12 = (v23 + v22);
        }

        if (v92 && (*(&self->_lmFlags + 3) & 0x40) == 0)
        {
          _NSFastFillAllLayoutHolesForGlyphRange(self, v12, 1uLL);
          v94 = 0;
          _NSGlyphTreeGetFirstHoleAfterGlyphIndex(self, 0, 0, 0, 0, &v94);
          v13 = v94;
        }

        v14 = v21;
      }

      while (v12 < v13);
      if (v15)
      {
        location = v97.length + v97.location;
      }

      else
      {
        location = v89;
      }
    }

LABEL_69:
    if (location >= v10)
    {
      v43 = location - v10;
    }

    else
    {
      v43 = 0;
    }

    range1a = v43;
    v44 = [(NSLayoutManager *)self _primitiveCharacterRangeForGlyphRange:v10];
    v46 = v45;
    v48 = [(NSLayoutManager *)self _blockRangeForCharRange:v44, v45];
    if (v44 == v48 && v46 == v47)
    {
      v11 = range1a;
    }

    else
    {
      v51 = [(NSLayoutManager *)self _glyphRangeForCharacterRange:v48 actualCharacterRange:v47 okToFillHoles:0, v92];
      v52 = v51;
      v54 = v53;
      v55 = v13;
      if (v51 < v10)
      {
        v56 = v51;
        do
        {
          v57 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v56, &v97);
          v59 = v58;
          v61 = v60;
          v63 = v62;
          if ((*(&self->_lmFlags + 3) & 0x40) != 0)
          {
            v67 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
          }

          else if ([(NSRunStorage *)self->_containerRuns count]<= v56)
          {
            v67 = 0;
          }

          else
          {
            v64 = self->_containerRuns;
            _NSBlockNumberForIndex(v64, v56, 0);
            v66 = 0;
            if (v64->_gapBlockIndex <= v65)
            {
              v66 = v64->_maxBlocks - v64->_numBlocks;
            }

            v67 = *&v64->_runs->var1[(v64->_elementSize + 8) * (v66 + v65)];
            v13 = v55;
          }

          if (v67 == a4)
          {
            v104.origin.x = v57;
            v104.origin.y = v59;
            v104.size.width = v61;
            v104.size.height = v63;
            v106.origin.x = x;
            v106.origin.y = y;
            v106.size.width = width;
            v106.size.height = height;
            if (NSIntersectsRect(v104, v106))
            {
              v100.location = v10;
              v100.length = range1a;
              v68 = NSUnionRange(v100, v97);
              v10 = v68.location;
              range1a = v68.length;
            }
          }

          v56 = v97.length + v97.location;
        }

        while (v97.length + v97.location < v10);
      }

      v11 = range1a;
      v69 = v10 + range1a;
      if (v10 + range1a < v13)
      {
        v70 = v52 + v54;
        if (v69 < v52 + v54)
        {
          v71 = &OBJC_IVAR___NSLayoutManager__containerRuns;
          do
          {
            v72 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v69, &v97);
            v74 = v73;
            v76 = v75;
            v78 = v77;
            if ((*(&self->_lmFlags + 3) & 0x40) != 0)
            {
              v85 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
            }

            else if ([*(&self->super.isa + *v71) count] <= v69)
            {
              v85 = 0;
            }

            else
            {
              v79 = v71;
              v80 = v11;
              v81 = v79;
              v82 = *(&self->super.isa + *v79);
              _NSBlockNumberForIndex(v82, v69, 0);
              v84 = 0;
              if (v82[11] <= v83)
              {
                v84 = v82[4] - v82[3];
              }

              v85 = *(v82[7] + (v82[2] + 8) * (v84 + v83) + 8);
              v11 = v80;
              v71 = v81;
            }

            if (v85 == a4)
            {
              v105.origin.x = v72;
              v105.origin.y = v74;
              v105.size.width = v76;
              v105.size.height = v78;
              v107.origin.x = x;
              v107.origin.y = y;
              v107.size.width = width;
              v107.size.height = height;
              if (NSIntersectsRect(v105, v107))
              {
                v101.location = v10;
                v101.length = v11;
                v86 = NSUnionRange(v101, v97);
                v10 = v86.location;
                v11 = v86.length;
              }
            }

            v69 = v97.length + v97.location;
            if (v92 && (*(&self->_lmFlags + 3) & 0x40) == 0)
            {
              _NSFastFillAllLayoutHolesForGlyphRange(self, v97.length + v97.location, 1uLL);
              v94 = 0;
              _NSGlyphTreeGetFirstHoleAfterGlyphIndex(self, 0, 0, 0, 0, &v94);
              v55 = v94;
            }
          }

          while (v69 < v55 && v69 < v70);
        }
      }
    }
  }

  v49 = v10;
  v50 = v11;
  result.length = v50;
  result.location = v49;
  return result;
}

- (_NSRange)_glyphRangeForBoundingRect:(CGRect)a3 inTextContainer:(id)a4 fast:(BOOL)a5 okToFillHoles:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  height = a3.size.height;
  y = a3.origin.y;
  width = a3.size.width;
  x = a3.origin.x;
  firstUnlaidGlyphIndex = 0;
  value = 0;
  extraData = self->_extraData;
  if (extraData[10] == a4)
  {
    v13 = 0;
  }

  else if (!CFDictionaryGetValueIfPresent(extraData[11], a4, &value) || (v13 = value, value == 0x7FFFFFFFFFFFFFFFLL))
  {
    v14 = 0;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_144;
  }

  if (self->_firstUnlaidCharIndex == 0x7FFFFFFFFFFFFFFFLL || self->_firstUnlaidGlyphIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSLayoutManager *)self getFirstUnlaidCharacterIndex:0 glyphIndex:&firstUnlaidGlyphIndex];
  }

  else
  {
    firstUnlaidGlyphIndex = self->_firstUnlaidGlyphIndex;
  }

  v16 = [(NSStorage *)self->_containerUsedRects elementAtIndex:v13];
  v17 = *(v16 + 14);
  v127 = v8;
  if (!v17)
  {
    goto LABEL_31;
  }

  v18 = v16;
  if (*(v16 + 13) + v17 > firstUnlaidGlyphIndex)
  {
    goto LABEL_31;
  }

  v141.origin.x = x;
  v141.origin.y = y;
  v141.size.width = width;
  v141.size.height = height;
  if (!NSContainsRect(v141, *(v16 + 72)))
  {
    goto LABEL_31;
  }

  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    v23 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
  }

  else
  {
    v19 = *(v18 + 13);
    if ([(NSRunStorage *)self->_containerRuns count]<= v19)
    {
      v23 = 0;
    }

    else
    {
      containerRuns = self->_containerRuns;
      _NSBlockNumberForIndex(containerRuns, v19, 0);
      v22 = 0;
      if (containerRuns->_gapBlockIndex <= v21)
      {
        v22 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
      }

      v23 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v22 + v21)];
    }

    v8 = v127;
  }

  if (v23 == v8)
  {
    goto LABEL_145;
  }

  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    v28 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
  }

  else
  {
    v24 = *(v18 + 13) + *(v18 + 14) - 1;
    if ([(NSRunStorage *)self->_containerRuns count]<= v24)
    {
      v28 = 0;
    }

    else
    {
      v25 = self->_containerRuns;
      _NSBlockNumberForIndex(v25, v24, 0);
      v27 = 0;
      if (v25->_gapBlockIndex <= v26)
      {
        v27 = v25->_maxBlocks - v25->_numBlocks;
      }

      v28 = *&v25->_runs->var1[(v25->_elementSize + 8) * (v27 + v26)];
    }

    v8 = v127;
  }

  if (v28 == v8)
  {
LABEL_145:
    v29 = [(NSLayoutManager *)self _firstPassGlyphRangeForBoundingRect:v8 inTextContainer:*(v18 + 13) hintGlyphRange:*(v18 + 14) okToFillHoles:v6, x, y, width, height];
  }

  else
  {
LABEL_31:
    v29 = [(NSLayoutManager *)self _firstPassGlyphRangeForBoundingRect:v8 inTextContainer:v6 okToFillHoles:x, y, width, height];
  }

  v15 = v29;
  if (!a5)
  {
    v131 = v14;
    value = 0;
    v138 = 0;
    v132 = [v8 layoutOrientation];
    [(NSLayoutManager *)self _setCachedTextContainer:v8 isVertical:v132 != 0];
    if (v15)
    {
      v30 = 0;
      v130 = v15;
      v31 = v15;
      while (1)
      {
        v32 = (v31 - 1);
        if ((*(&self->_lmFlags + 3) & 0x40) != 0)
        {
          v36 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
        }

        else if ([(NSRunStorage *)self->_containerRuns count]<= v32)
        {
          v36 = 0;
        }

        else
        {
          v33 = self->_containerRuns;
          _NSBlockNumberForIndex(v33, v32, 0);
          v35 = 0;
          if (v33->_gapBlockIndex <= v34)
          {
            v35 = v33->_maxBlocks - v33->_numBlocks;
          }

          v36 = *&v33->_runs->var1[(v33->_elementSize + 8) * (v35 + v34)];
          v8 = v127;
        }

        if (v36 != v8)
        {
          goto LABEL_88;
        }

        v37 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v32, &value);
        v39 = v38;
        v41 = v40;
        v42 = _NSLayoutTreeLineFragmentDrawsOutsideLineForGlyphAtIndex(self, v32);
        v31 = value;
        if (!v42 || value >= value + v138)
        {
          goto LABEL_83;
        }

        v129 = v39 + v41;
        while (1)
        {
          v43 = _NSGlyphTreeNotShownAttributeForGlyphAtIndex(self, v31);
          v44 = _NSGlyphTreeDrawsOutsideLineFragmentForGlyphAtIndex(self, v31);
          if ((v43 & 1) != 0 || !v44)
          {
            if (!v44 || ![(NSTextStorage *)self->_textStorage attribute:@"NSAttachment" atIndex:_NSGlyphTreeCharacterIndexForGlyphAtIndex(self effectiveRange:v31), 0])
            {
              goto LABEL_79;
            }

            [(NSLayoutManager *)self locationForGlyphAtIndex:v31];
            v76 = v75;
            v78 = v77;
            [(NSLayoutManager *)self attachmentSizeForGlyphAtIndex:v31];
            v73 = v79;
            v74 = v80;
            v67 = v37 + v76;
            v68 = v39 + v78 - v80;
            v69 = x;
            v70 = y;
            v71 = width;
            v72 = height;
          }

          else
          {
            v45 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, v31);
            v46 = v45 < self->_cachedFontCharRange.location || v45 - self->_cachedFontCharRange.location >= self->_cachedFontCharRange.length;
            if (v46)
            {
              v47 = v45;
              cachedFont = self->_cachedFont;
              v49 = [(NSTextStorage *)self->_textStorage attribute:@"NSFont" atIndex:v45 effectiveRange:&self->_cachedFontCharRange];
              v135 = 0;
              v136 = 0;
              v50 = [(NSTextStorage *)self->_textStorage attribute:@"CTVerticalForms" atIndex:v47 effectiveRange:&v135];
              if (!v49)
              {
                v49 = NSDefaultFont();
              }

              v51 = [v50 BOOLValue];
              if (v132)
              {
                v52 = v50 == 0;
              }

              else
              {
                v52 = 0;
              }

              v53 = v52;
              if ((v51 & 1) != 0 || (v54 = v49, v53))
              {
                v54 = [v49 verticalFont];
              }

              if (v54)
              {
                v49 = v54;
              }

              if ([v49 isVertical])
              {
                v55 = v50 == 0;
              }

              else
              {
                v55 = 1;
              }

              if (!v55 && v136 + v135 < self->_cachedFontCharRange.length + self->_cachedFontCharRange.location)
              {
                self->_cachedFontCharRange.length = v136 + v135 - self->_cachedFontCharRange.location;
              }

              self->_cachedFont = [(NSLayoutManager *)self substituteFontForFont:v49];

              [(UIFont *)self->_cachedFont boundingRectForFont];
              v58 = (self->_extraData + 112);
              *v58 = v59;
              v58[1] = -v56 - v57;
              *(v58 + 2) = v60;
              v58[3] = v57;
            }

            v61 = *(self->_extraData + 14);
            v62 = *(self->_extraData + 15);
            v63 = *(self->_extraData + 16);
            v64 = *(self->_extraData + 17);
            v142.origin.x = x + v61;
            v142.origin.y = v129 + v62;
            v142.size.width = v63;
            v142.size.height = v64;
            v144.origin.x = x;
            v144.origin.y = y;
            v144.size.width = width;
            v144.size.height = height;
            if (!NSIntersectsRect(v142, v144))
            {
              goto LABEL_79;
            }

            [(NSLayoutManager *)self locationForGlyphAtIndex:v31];
            v67 = v37 + v61 + v65;
            v68 = v39 + v62 + v66;
            v69 = x;
            v70 = y;
            v71 = width;
            v72 = height;
            v73 = v63;
            v74 = v64;
          }

          if (NSIntersectsRect(*&v69, *&v67))
          {
            break;
          }

LABEL_79:
          if (++v31 >= value + v138)
          {
            v31 = value;
            goto LABEL_82;
          }
        }

        v31 = value;
        v81 = (&v131[v130] - value);
        v130 = value;
        v131 = v81;
LABEL_82:
        v8 = v127;
LABEL_83:
        if (v31)
        {
          v46 = v30++ >= 0x1D;
          if (!v46)
          {
            continue;
          }
        }

        goto LABEL_88;
      }
    }

    v130 = 0;
LABEL_88:
    v15 = v130;
    v82 = &v131[v130];
    if ((*(&self->_lmFlags + 3) & 0x40) != 0)
    {
      v83 = *(*(self->_extraData + 26) + 8);
    }

    else
    {
      _NSFastFillAllLayoutHolesForGlyphRange(self, &v131[v130], 1uLL);
      v135 = 0;
      _NSGlyphTreeGetFirstHoleAfterGlyphIndex(self, 0, 0, 0, 0, &v135);
      v83 = v135;
    }

    if (v82 < v83)
    {
      v84 = 0;
      do
      {
        if ((*(&self->_lmFlags + 3) & 0x40) != 0)
        {
          v88 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
        }

        else if ([(NSRunStorage *)self->_containerRuns count]<= v82)
        {
          v88 = 0;
        }

        else
        {
          v85 = self->_containerRuns;
          _NSBlockNumberForIndex(v85, v82, 0);
          v87 = 0;
          if (v85->_gapBlockIndex <= v86)
          {
            v87 = v85->_maxBlocks - v85->_numBlocks;
          }

          v88 = *&v85->_runs->var1[(v85->_elementSize + 8) * (v87 + v86)];
          v8 = v127;
        }

        if (v88 != v8)
        {
          break;
        }

        v128 = v83;
        v89 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v82, &value);
        v91 = v90;
        v92 = _NSLayoutTreeLineFragmentDrawsOutsideLineForGlyphAtIndex(self, v82);
        v93 = value;
        v82 = value + v138;
        if (v92 && value < v82)
        {
          while (1)
          {
            v94 = _NSGlyphTreeNotShownAttributeForGlyphAtIndex(self, v93);
            v95 = _NSGlyphTreeDrawsOutsideLineFragmentForGlyphAtIndex(self, v93);
            if ((v94 & 1) == 0)
            {
              if (v95)
              {
                break;
              }
            }

            if (v95 && [(NSTextStorage *)self->_textStorage attribute:@"NSAttachment" atIndex:_NSGlyphTreeCharacterIndexForGlyphAtIndex(self effectiveRange:v93), 0])
            {
              [(NSLayoutManager *)self locationForGlyphAtIndex:v93];
              v121 = v120;
              v123 = v122;
              [(NSLayoutManager *)self attachmentSizeForGlyphAtIndex:v93];
              v116 = v124;
              v117 = v125;
              v118 = v89 + v121;
              v119 = v91 + v123 - v125;
LABEL_134:
              v143.origin.x = x;
              v143.origin.y = y;
              v143.size.width = width;
              v143.size.height = height;
              if (NSIntersectsRect(v143, *&v118))
              {
                v131 = value + v138 - v15;
                v93 = value + v138 - 1;
              }
            }

            ++v93;
            v82 = value + v138;
            if (v93 >= value + v138)
            {
              v8 = v127;
              goto LABEL_138;
            }
          }

          [(NSLayoutManager *)self locationForGlyphAtIndex:v93];
          v97 = v96;
          v99 = v98;
          v100 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, v93);
          if (v100 < self->_cachedFontCharRange.location || v100 - self->_cachedFontCharRange.location >= self->_cachedFontCharRange.length)
          {
            v102 = v100;
            v103 = self->_cachedFont;
            v104 = [(NSTextStorage *)self->_textStorage attribute:@"NSFont" atIndex:v100 effectiveRange:&self->_cachedFontCharRange];
            v135 = 0;
            v136 = 0;
            v105 = [(NSTextStorage *)self->_textStorage attribute:@"CTVerticalForms" atIndex:v102 effectiveRange:&v135];
            if (!v104)
            {
              v104 = NSDefaultFont();
            }

            v106 = [v105 BOOLValue];
            if (v132)
            {
              v107 = v105 == 0;
            }

            else
            {
              v107 = 0;
            }

            v108 = v107;
            if ((v106 & 1) != 0 || (v109 = v104, v108))
            {
              v109 = [v104 verticalFont];
            }

            if (v109)
            {
              v104 = v109;
            }

            if ([v104 isVertical])
            {
              v110 = v105 == 0;
            }

            else
            {
              v110 = 1;
            }

            if (!v110 && v136 + v135 < self->_cachedFontCharRange.length + self->_cachedFontCharRange.location)
            {
              self->_cachedFontCharRange.length = v136 + v135 - self->_cachedFontCharRange.location;
            }

            self->_cachedFont = [(NSLayoutManager *)self substituteFontForFont:v104];

            [(UIFont *)self->_cachedFont boundingRectForFont];
            v113 = (self->_extraData + 112);
            *v113 = v114;
            v113[1] = -v111 - v112;
            *(v113 + 2) = v115;
            v113[3] = v112;
            v15 = v130;
          }

          v116 = *(self->_extraData + 16);
          v117 = *(self->_extraData + 17);
          v118 = v89 + v97 + *(self->_extraData + 14);
          v119 = v91 + v99 + *(self->_extraData + 15);
          goto LABEL_134;
        }

LABEL_138:
        v83 = v128;
        if ((*(&self->_lmFlags + 3) & 0x40) == 0)
        {
          _NSFastFillAllLayoutHolesForGlyphRange(self, v82, 1uLL);
          v135 = 0;
          _NSGlyphTreeGetFirstHoleAfterGlyphIndex(self, 0, 0, 0, 0, &v135);
          v83 = v135;
        }

        if (v82 >= v83)
        {
          break;
        }

        v46 = v84++ >= 0x1D;
      }

      while (!v46);
    }

    [(NSLayoutManager *)self _resetCachedTextContainer];
    v14 = v131;
  }

LABEL_144:
  v126 = v15;
  result.length = v14;
  result.location = v126;
  return result;
}

- (unint64_t)_indexOfFirstGlyphInTextContainer:(id)a3 okToFillHoles:(BOOL)a4
{
  v4 = a4;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  value = 0x7FFFFFFFFFFFFFFFLL;
  firstUnlaidGlyphIndex = 0;
  *v38 = xmmword_18E856180;
  if ((*(&self->_lmFlags + 3) & 0x40) != 0 && *(*(self->_extraData + 26) + 8) && [(NSMutableArray *)self->_textContainers objectAtIndex:0]== a3)
  {
    return 0;
  }

  if (self->_firstUnlaidCharIndex == 0x7FFFFFFFFFFFFFFFLL || (v8 = self->_firstUnlaidGlyphIndex, v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    [(NSLayoutManager *)self getFirstUnlaidCharacterIndex:0 glyphIndex:&firstUnlaidGlyphIndex];
    v8 = firstUnlaidGlyphIndex;
    if (!firstUnlaidGlyphIndex)
    {
      return v7;
    }
  }

  else
  {
    firstUnlaidGlyphIndex = self->_firstUnlaidGlyphIndex;
    if (!v8)
    {
      return v7;
    }
  }

  if (a3)
  {
    ValueIfPresent = CFDictionaryGetValueIfPresent(*(self->_extraData + 12), a3, &value);
    v8 = firstUnlaidGlyphIndex;
    if (ValueIfPresent)
    {
      v7 = value;
      if (value < firstUnlaidGlyphIndex)
      {
        return v7;
      }

      CFDictionaryRemoveValue(*(self->_extraData + 12), a3);
      v8 = firstUnlaidGlyphIndex;
    }
  }

  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    v14 = *(*(self->_extraData + 26) + 8);
    v38[0] = 0;
    v38[1] = v14;
    v15 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
  }

  else
  {
    v10 = v8 - 1;
    if ([(NSRunStorage *)self->_containerRuns count]<= v8 - 1)
    {
      if (!a3)
      {
        if (v38[0] >= firstUnlaidGlyphIndex)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          return v38[0];
        }
      }

      goto LABEL_27;
    }

    containerRuns = self->_containerRuns;
    _NSBlockNumberForIndex(containerRuns, v10, v38);
    if (containerRuns->_gapBlockIndex <= v12)
    {
      v13 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
    }

    else
    {
      v13 = 0;
    }

    v15 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v13 + v12)];
  }

  if (v15 == a3)
  {
    goto LABEL_42;
  }

  if (!v15)
  {
LABEL_27:
    if (!v38[0])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((*(&self->_lmFlags + 3) & 0x40) != 0)
    {
      v20 = *(*(self->_extraData + 26) + 8);
      v38[0] = 0;
      v38[1] = v20;
      v15 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
    }

    else
    {
      v16 = v38[0] - 1;
      if ([(NSRunStorage *)self->_containerRuns count]<= v16)
      {
        v15 = 0;
      }

      else
      {
        v17 = self->_containerRuns;
        _NSBlockNumberForIndex(v17, v16, v38);
        if (v17->_gapBlockIndex <= v18)
        {
          v19 = v17->_maxBlocks - v17->_numBlocks;
        }

        else
        {
          v19 = 0;
        }

        v15 = *&v17->_runs->var1[(v17->_elementSize + 8) * (v19 + v18)];
      }
    }

    if (v15 != a3)
    {
      goto LABEL_37;
    }

LABEL_42:
    if (v38[0] < firstUnlaidGlyphIndex)
    {
      v7 = v38[0];
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v38[0] < firstUnlaidGlyphIndex && a3)
    {
      CFDictionarySetValue(*(self->_extraData + 12), a3, v38[0]);
      return v38[0];
    }

    return v7;
  }

LABEL_37:
  v36 = 0;
  extraData = self->_extraData;
  if (extraData[10] == a3)
  {
    v22 = 0;
  }

  else
  {
    if (CFDictionaryGetValueIfPresent(extraData[11], a3, &v36))
    {
      v22 = v36;
    }

    else
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    extraData = self->_extraData;
  }

  v36 = 0;
  if (extraData[10] == v15)
  {
    v24 = 0;
  }

  else
  {
    v23 = CFDictionaryGetValueIfPresent(extraData[11], v15, &v36);
    v24 = v36;
    if (!v23)
    {
      v24 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (v22 <= v24)
  {
    v29 = 0;
    while (1)
    {
      if ((*(&self->_lmFlags + 3) & 0x40) != 0)
      {
        v33 = *(*(self->_extraData + 26) + 8);
        v38[0] = 0;
        v38[1] = v33;
        v34 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
      }

      else if ([(NSRunStorage *)self->_containerRuns count]<= v29)
      {
        v34 = 0;
      }

      else
      {
        v30 = self->_containerRuns;
        _NSBlockNumberForIndex(v30, v29, v38);
        v32 = v30->_gapBlockIndex <= v31 ? v30->_maxBlocks - v30->_numBlocks : 0;
        v34 = *&v30->_runs->var1[(v30->_elementSize + 8) * (v32 + v31)];
      }

      if (v34 == a3)
      {
        break;
      }

      v29 = v38[1] + v38[0];
      if (v38[1] + v38[0] >= firstUnlaidGlyphIndex)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    if (v29 < firstUnlaidGlyphIndex)
    {
      v7 = v29;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (a3 && v29 < firstUnlaidGlyphIndex)
    {
      CFDictionarySetValue(*(self->_extraData + 12), a3, v29);
      return v29;
    }

    return v7;
  }

  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = (firstUnlaidGlyphIndex - 1);
  v36 = 0;
  v37 = 0;
  if (v15 != a3)
  {
    do
    {
      [(NSLayoutManager *)self textContainerForGlyphAtIndex:v7 effectiveRange:&v36];
      v7 = v36 + v37;
      _NSFastFillAllLayoutHolesForGlyphRange(self, v36 + v37, 1uLL);
      if (v7 >= *(*(self->_extraData + 26) + 8))
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((*(&self->_lmFlags + 3) & 0x40) != 0)
      {
        v28 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
      }

      else if ([(NSRunStorage *)self->_containerRuns count]<= v7)
      {
        v28 = 0;
      }

      else
      {
        v25 = self->_containerRuns;
        _NSBlockNumberForIndex(v25, v7, 0);
        v27 = 0;
        if (v25->_gapBlockIndex <= v26)
        {
          v27 = v25->_maxBlocks - v25->_numBlocks;
        }

        v28 = *&v25->_runs->var1[(v25->_elementSize + 8) * (v27 + v26)];
      }
    }

    while (v28 != a3);
  }

  if (a3)
  {
    CFDictionarySetValue(*(self->_extraData + 12), a3, v7);
  }

  return v7;
}

- (void)_invalidateGlyphsForExtendedCharacterRange:(_NSRange)a3 changeInLength:(int64_t)a4 includeBlocks:(BOOL)a5
{
  v5 = a5;
  length = a3.length;
  location = a3.location;
  v10 = a3.length - a4;
  v39 = a3.location;
  v40 = a3.length - a4;
  extraData = self->_extraData;
  v38 = (*(extraData[26] + 56) & 1) == 0 && (*(extraData[30] + 56) & 1) == 0;
  *&self->_lmFlags &= ~1u;
  self->_firstUnlaidGlyphIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->_firstUnlaidCharIndex = 0x7FFFFFFFFFFFFFFFLL;
  _NSClearGlyphIndexForPointCache(self);
  self->_cachedLocationNominalGlyphRange = xmmword_18E856180;
  lmFlags = self->_lmFlags;
  if (a4 <= 1)
  {
    if ((*&lmFlags & 0x40000000) != 0 && self->_firstTextView && !*(self->_extraData + 45))
    {
      [(NSLayoutManager *)self _noteFirstTextViewVisibleCharacterRangeIfAfterIndex:location];
      if (*(self->_extraData + 45))
      {
        *(self->_extraData + 44) += a4;
      }

      if (a4)
      {
        goto LABEL_23;
      }
    }

    else if (a4)
    {
      goto LABEL_9;
    }

    if (*(self->_extraData + 48) == location && *(self->_extraData + 49) == v10)
    {
      goto LABEL_34;
    }

    goto LABEL_23;
  }

LABEL_9:
  if ((*&lmFlags & 0x40000000) != 0)
  {
    if (self->_firstTextView)
    {
      v13 = (self->_extraData + 352);
      if (*(self->_extraData + 45))
      {
        v14 = *v13;
        if (v10 + location <= *v13)
        {
          *v13 = v14 + a4;
        }

        else if (location <= v14)
        {
          *v13 = xmmword_18E856180;
          *(self->_extraData + 23) = *MEMORY[0x1E696AA88];
        }
      }
    }
  }

LABEL_23:
  if (!length || length == a4)
  {
    v23 = 0;
    *(self->_extraData + 24) = xmmword_18E856180;
    *(self->_extraData + 50) = 0;
  }

  else
  {
    v16 = _NSGlyphTreeGlyphIndexForCharacterAtIndex(self, v10 + location - 1);
    v17 = (self->_extraData + 384);
    *v17 = location;
    v17[1] = length;
    _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v16, 0);
    *(self->_extraData + 50) = v18 + v19;
    if ((*(&self->_lmFlags + 3) & 0x40) != 0)
    {
      v23 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
    }

    else if ([(NSRunStorage *)self->_containerRuns count]<= v16)
    {
      v23 = 0;
    }

    else
    {
      containerRuns = self->_containerRuns;
      _NSBlockNumberForIndex(containerRuns, v16, 0);
      v22 = 0;
      if (containerRuns->_gapBlockIndex <= v21)
      {
        v22 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
      }

      v23 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v22 + v21)];
    }
  }

  *(self->_extraData + 51) = v23;
LABEL_34:
  _NSGlyphTreePrepareToInvalidateGlyphsForCharacterRange(self, location, v10, a4);
  p_cachedFontCharRange = &self->_cachedFontCharRange;
  v42.location = location;
  v42.length = v10;
  if (NSIntersectionRange(self[184], v42).length)
  {
    *p_cachedFontCharRange = xmmword_18E856180;
  }

  else if (p_cachedFontCharRange->location > location)
  {
    p_cachedFontCharRange->location += a4;
  }

  v29 = _NSGlyphTreeGlyphRangeForCharacterRange(self, location, v10, 0, 0, 1, &v39);
  v30 = v25;
  if (v40 + v39 >= v10 + location)
  {
    v31 = v40 + v39 - (v10 + location);
  }

  else
  {
    v31 = 0;
  }

  if (v25)
  {
    [(NSRunStorage *)self->_containerRuns removeElementsInRange:v29 coalesceRuns:v25, 1];
    if (v5)
    {
      v32 = *(self->_extraData + 23);
      if (v32)
      {
        _NSDeleteGlyphRangeFromTextBlocks(v32, v29, v30);
      }
    }
  }

  v33 = location + length + v31;
  v41 = 0;
  v34 = v33 - v39;
  if (v33 == v39)
  {
    if (v5)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  [(NSRunStorage *)self->_containerRuns insertElement:&v41 range:v29 coalesceRuns:v34, 1];
  if (!v5)
  {
LABEL_51:
    v36 = *(self->_extraData + 23);
    if (v36)
    {
      _NSRemoveTextBlocksForGlyphRange(v36, v29, v30);
    }

    goto LABEL_53;
  }

  v35 = *(self->_extraData + 23);
  if (v35)
  {
    _NSInsertGlyphRangeInTextBlocks(v35, v29, v34);
  }

LABEL_53:
  _NSGlyphTreeInvalidateGlyphsForCharacterRange(self, v39, v40, a4, 0, v26, v27, v28, v37);
  if ((*(*(self->_extraData + 26) + 56) & 2) == 0)
  {
    *&self->_lmFlags &= 0xF5EFFFFC;
  }

  if (v38 && (*(&self->_lmFlags + 1) & 0x10) != 0 && (*(*(self->_extraData + 26) + 56) & 1) != 0)
  {
    [-[NSLayoutManager delegate](self "delegate")];
  }
}

- (void)_invalidateLayoutForExtendedCharacterRange:(_NSRange)a3 isSoft:(BOOL)a4 invalidateUsage:(BOOL)a5
{
  v56 = a5;
  length = a3.length;
  location = a3.location;
  extraData = self->_extraData;
  v57 = (*(extraData[26] + 56) & 1) == 0 && (*(extraData[30] + 56) & 1) == 0;
  firstUnlaidGlyphIndex = 0;
  v55 = [(NSTextStorage *)self->_textStorage length];
  v10 = _invalidateLayoutForExtendedCharacterRange_isSoft_invalidateUsage__omniBugRequiresWorkaroundInAppKit;
  if (_invalidateLayoutForExtendedCharacterRange_isSoft_invalidateUsage__omniBugRequiresWorkaroundInAppKit == 254)
  {
    v10 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    _invalidateLayoutForExtendedCharacterRange_isSoft_invalidateUsage__omniBugRequiresWorkaroundInAppKit = v10;
  }

  *&self->_lmFlags &= ~1u;
  self->_firstUnlaidGlyphIndex = 0x7FFFFFFFFFFFFFFFLL;
  if (v10)
  {
    a4 &= (location != 0) | ~a4 | (length == 0);
  }

  self->_firstUnlaidCharIndex = 0x7FFFFFFFFFFFFFFFLL;
  _NSClearGlyphIndexForPointCache(self);
  self->_cachedLocationNominalGlyphRange = xmmword_18E856180;
  v58 = a4;
  if (!a4)
  {
    if ((*(&self->_lmFlags + 3) & 0x40) != 0 && self->_firstTextView && !*(self->_extraData + 45))
    {
      [(NSLayoutManager *)self _noteFirstTextViewVisibleCharacterRangeIfAfterIndex:location];
    }

    if (length)
    {
      if (location != *(self->_extraData + 48) || length != *(self->_extraData + 49))
      {
        v54 = location + length;
        v16 = _NSGlyphTreeGlyphIndexForCharacterAtIndex(self, location + length - 1);
        v17 = (self->_extraData + 384);
        *v17 = location;
        v17[1] = length;
        _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v16, 0);
        *(self->_extraData + 50) = v18 + v19;
        if ((*(&self->_lmFlags + 3) & 0x40) != 0)
        {
          v24 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
        }

        else if ([(NSRunStorage *)self->_containerRuns count]<= v16)
        {
          v24 = 0;
        }

        else
        {
          v20 = length;
          containerRuns = self->_containerRuns;
          _NSBlockNumberForIndex(containerRuns, v16, 0);
          v23 = 0;
          if (containerRuns->_gapBlockIndex <= v22)
          {
            v23 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
          }

          v24 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v23 + v22)];
          length = v20;
          a4 = v58;
        }

        *(self->_extraData + 51) = v24;
        if ((*(&self->_lmFlags + 3) & 0x40) != 0)
        {
          if (self->_firstTextView)
          {
            if (!*(self->_extraData + 45))
            {
              value = 0;
              _NSLayoutTreeGetFirstHoleAfterGlyphIndex(self, v16, &value);
              if (_NSGlyphTreeCharacterIndexForGlyphAtIndex(self, value) >= v54)
              {
                [(NSLayoutManager *)self _noteFirstTextViewVisibleCharacterRangeIfAfterIndex:0];
              }
            }
          }
        }
      }
    }
  }

  _NSLayoutTreeInvalidateLayoutForCharacterRange(self, location, length, a4, v11, v12, v13, v14, v53);
  if ((*(&self->_lmFlags + 3) & 0x40) == 0 || (location + length < v55 ? (v25 = 1) : (v25 = a4), !v25))
  {
    _NSLayoutTreeSetExtraLineFragmentRect(self, *MEMORY[0x1E696AA80], *(MEMORY[0x1E696AA80] + 8), *(MEMORY[0x1E696AA80] + 16), *(MEMORY[0x1E696AA80] + 24), *MEMORY[0x1E696AA80], *(MEMORY[0x1E696AA80] + 8), *(MEMORY[0x1E696AA80] + 16), *(MEMORY[0x1E696AA80] + 24));
    self->_extraLineFragmentContainer = 0;
  }

  if (self->_firstUnlaidCharIndex == 0x7FFFFFFFFFFFFFFFLL || (v26 = self->_firstUnlaidGlyphIndex, v26 == 0x7FFFFFFFFFFFFFFFLL))
  {
    [(NSLayoutManager *)self getFirstUnlaidCharacterIndex:0 glyphIndex:&firstUnlaidGlyphIndex];
    v26 = firstUnlaidGlyphIndex;
  }

  else
  {
    firstUnlaidGlyphIndex = self->_firstUnlaidGlyphIndex;
  }

  if (v26)
  {
    if ((*(&self->_lmFlags + 3) & 0x40) != 0)
    {
      v31 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
    }

    else
    {
      v27 = v26 - 1;
      if ([(NSRunStorage *)self->_containerRuns count]<= v26 - 1)
      {
        v31 = 0;
      }

      else
      {
        v28 = self->_containerRuns;
        _NSBlockNumberForIndex(v28, v27, 0);
        v30 = 0;
        if (v28->_gapBlockIndex <= v29)
        {
          v30 = v28->_maxBlocks - v28->_numBlocks;
        }

        v31 = *&v28->_runs->var1[(v28->_elementSize + 8) * (v30 + v29)];
      }
    }

    value = 0;
    v35 = self->_extraData;
    if (v35[10] == v31)
    {
      v36 = 0;
    }

    else if (CFDictionaryGetValueIfPresent(v35[11], v31, &value))
    {
      v36 = value;
    }

    else
    {
      v36 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v37 = [(NSMutableArray *)self->_textContainers count];
    if (v36 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = v37;
      if (v56)
      {
        [(NSLayoutManager *)self _invalidateUsageForTextContainersInRange:v36, v37 - v36];
      }

      v39 = v36 + 1;
      if (v36 + 1 < v38)
      {
        do
        {
          CFDictionaryRemoveValue(*(self->_extraData + 12), [(NSMutableArray *)self->_textContainers objectAtIndex:v39++]);
        }

        while (v38 != v39);
      }
    }
  }

  else
  {
    v32 = [(NSMutableArray *)self->_textContainers count];
    if (v32)
    {
      v33 = v32;
      if (v56)
      {
        [(NSLayoutManager *)self _invalidateUsageForTextContainersInRange:0, v32];
      }

      for (i = 0; i != v33; ++i)
      {
        CFDictionaryRemoveValue(*(self->_extraData + 12), [(NSMutableArray *)self->_textContainers objectAtIndex:i]);
      }
    }
  }

  if (!v58 && (*(self->_extraData + 23) || [(NSRunStorage *)self->_containerRuns count]))
  {
    v40 = _NSGlyphTreeGlyphIndexForCharacterAtIndex(self, location);
    v41 = _NSGlyphTreeGlyphIndexForCharacterAtIndex(self, location + length) - v40;
    if ((*(&self->_lmFlags + 3) & 0x40) == 0 && v40 < [(NSRunStorage *)self->_containerRuns count])
    {
      value = 0;
      v42 = self->_containerRuns;
      v61.length = [(NSRunStorage *)v42 count];
      v61.location = 0;
      v62.location = v40;
      v62.length = v41;
      v43 = NSIntersectionRange(v61, v62);
      [(NSRunStorage *)v42 replaceElementsInRange:v43.location withElement:v43.length coalesceRuns:&value, 1];
    }

    v44 = *(self->_extraData + 23);
    if (v44)
    {
      _NSRemoveTextBlocksForGlyphRange(v44, v40, v41);
      v45 = *(self->_extraData + 52);
      if (v45)
      {
        if (location < *(v45 + 16) + *(v45 + 8))
        {
          [(NSLayoutManager *)self _setRowArrayCache:0];
        }
      }
    }
  }

  v46 = *(self->_extraData + 25);
  if (v46)
  {
    v47 = [v46 count];
    if (v47)
    {
      v48 = v47 - 1;
      do
      {
        v49 = [*(self->_extraData + 25) objectAtIndex:v48];
        v50 = *(v49 + 8);
        v51 = *(v49 + 16);
        if (location < v51 + v50 || (!v51 ? (v52 = location > v50) : (v52 = 1), !v52))
        {
          [*(self->_extraData + 25) removeObjectAtIndex:v48];
        }

        --v48;
      }

      while (v48 != -1);
    }
  }

  [(NSLayoutManager *)self _markSelfAsDirtyForBackgroundLayout:self];
  [(NSLayoutManager *)self _invalidateInsertionPoint];
  if (v57 && (*(&self->_lmFlags + 1) & 0x10) != 0 && (*(*(self->_extraData + 30) + 56) & 1) != 0)
  {
    [-[NSLayoutManager delegate](self "delegate")];
  }
}

- (void)_firstTextViewChanged
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  textContainers = self->_textContainers;
  v4 = [(NSMutableArray *)textContainers countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(textContainers);
        }

        v8 = [*(*(&v20 + 1) + 8 * i) textView];
        if (v8)
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)textContainers countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:
  if (v9 != self->_firstTextView)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [self->_firstTextView delegate];
    }

    else
    {
      v10 = 0;
    }

    firstTextView = self->_firstTextView;
    *(self->_extraData + 22) = xmmword_18E856180;
    if (v10)
    {
      if ([firstTextView layoutManager] == self && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [self->_firstTextView setDelegate:0];
      }

      self->_firstTextView = objc_storeWeak(&self->_firstTextView, v9);
      if (objc_opt_respondsToSelector())
      {
        [self->_firstTextView setDelegate:v10];
      }

      if (self->_firstTextView)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v13 = objc_storeWeak(&self->_firstTextView, v9);
      self->_firstTextView = v13;
      if (v13)
      {
LABEL_22:
        if (objc_opt_respondsToSelector())
        {
          v12 = 0x10000000;
        }

        else
        {
          v12 = 0;
        }

LABEL_27:
        *(self->_extraData + 112) = *(self->_extraData + 112) & 0xEFFFFFFF | v12;
        if (v9 && firstTextView)
        {
          v14 = MEMORY[0x1E695DF20];
          v18 = @"NSNewNotifyingTextView";
          v19 = 0;
          v17 = v9;
        }

        else
        {
          if (!firstTextView)
          {
            if (!v9)
            {
              v16 = 0;
              goto LABEL_34;
            }

            v15 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v9, @"NSNewNotifyingTextView", 0, v18, v19}];
LABEL_33:
            v16 = v15;
LABEL_34:
            [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
            return;
          }

          v14 = MEMORY[0x1E695DF20];
          v17 = 0;
        }

        v15 = [v14 dictionaryWithObjectsAndKeys:{firstTextView, @"NSOldNotifyingTextView", v17, v18, v19}];
        goto LABEL_33;
      }
    }

    v12 = 0;
    goto LABEL_27;
  }
}

- (void)_drawBackgroundForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  length = a3.length;
  location = a3.location;
  v8 = self;
  v9 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider graphicsContextForApplicationFrameworkContext:"graphicsContextForApplicationFrameworkContext:", [(NSLayoutManager *)self applicationFrameworkContext]];
  c = [v9 CGContext];
  v118 = xmmword_18E856180;
  v10 = [v9 isDrawingToScreen];
  if ((*(&v8->_lmFlags + 3) & 0x10) != 0)
  {
    v114 = [v9 isFlipped] ^ 1;
  }

  else
  {
    v114 = 0;
  }

  v11 = _os_feature_enabled_impl();
  v12 = [(NSLayoutManager *)v8 applicationFrameworkContext];
  v13 = [(NSTextStorage *)v8->_textStorage _lockForReading];
  if (length)
  {
    v107 = v13;
    v120.location = 0;
    v120.length = 0;
    v119.location = 0;
    v119.length = 0;
    v117 = 0;
    _NSFastFillAllLayoutHolesForGlyphRange(v8, location, length);
    v14 = [(NSLayoutManager *)v8 characterRangeForGlyphRange:location actualGlyphRange:length, 0];
    v16 = v15;
    if ((*(&v8->_lmFlags + 3) & 0x40) != 0)
    {
      v108 = [(NSMutableArray *)v8->_textContainers objectAtIndex:0];
    }

    else if ([(NSRunStorage *)v8->_containerRuns count]<= location)
    {
      v108 = 0;
    }

    else
    {
      containerRuns = v8->_containerRuns;
      _NSBlockNumberForIndex(containerRuns, location, 0);
      v19 = 0;
      if (containerRuns->_gapBlockIndex <= v18)
      {
        v19 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
      }

      v108 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v19 + v18)];
    }

    CGContextSaveGState(c);
    CGContextSetShouldAntialias(c, 0);
    range2 = v14;
    range2_8 = v14 + v16;
    p_isa = &v8->super.isa;
    v109 = v11;
    if (v14 < v14 + v16)
    {
      v110 = v16;
      v105 = v10;
      v106 = v12;
      while (1)
      {
        v21 = [-[NSTextStorage attribute:atIndex:longestEffectiveRange:inRange:](v8->_textStorage attribute:@"NSParagraphStyle" atIndex:v14 longestEffectiveRange:&v120 inRange:{range2, v110), "textBlocks"}];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 count];
          if (v23)
          {
            break;
          }
        }

LABEL_44:
        v14 = v120.length + v120.location;
        if (v120.length + v120.location >= range2_8)
        {
          v56 = 0;
          v57 = range2;
          v11 = v109;
          do
          {
            v58 = [v8->_firstTextView markedRange];
            v61 = v57 < v58 || v57 - v58 >= v59;
            if ((v61 | v11))
            {
              v64 = v118;
              if (v57 < v118.location || v57 - v118.location >= v118.length)
              {
                v67 = range2;
                v66 = v110;
                v56 = [(NSTextStorage *)v8->_textStorage attribute:@"NSBackgroundColor" atIndex:v57 longestEffectiveRange:&v118 inRange:range2, v110];
                v64 = v118;
              }

              else
              {
                v66 = v110;
                v67 = range2;
              }

              v123.location = v67;
              v123.length = v66;
              v68 = NSIntersectionRange(v64, v123);
              v120 = v68;
              if ((v105 & 1) != 0 || (v69 = v56, (*(v8->_extraData + 449) & 0x10) != 0))
              {
                v70 = [(NSLayoutManager *)v8 temporaryAttributesAtCharacterIndex:v57 longestEffectiveRange:&v119 inRange:v68.location, v68.length];
                if ((*(v8->_extraData + 449) & 0x10) != 0)
                {
                  v70 = [-[NSLayoutManager delegate](v8 "delegate")];
                }

                v120 = NSIntersectionRange(v120, v119);
                v69 = v56;
                if (v70)
                {
                  v71 = [(NSDictionary *)v70 objectForKey:@"NSBackgroundColor"];
                  if (v71)
                  {
                    v69 = v71;
                  }

                  else
                  {
                    v69 = v56;
                  }
                }
              }

              v11 = v109;
              if (v69)
              {
                if (([v69 isEqual:0] & 1) == 0)
                {
                  [-[NSLayoutManager renderingColorForDocumentColor:](v8 renderingColorForDocumentColor:{v69), "set"}];
                  v72 = [(NSLayoutManager *)v8 rectArrayForCharacterRange:v120.location withinSelectedCharacterRange:v120.length inTextContainer:0x7FFFFFFFFFFFFFFFLL rectCount:0, v108, &v117];
                  if (v117)
                  {
                    v73 = v72;
                    v74 = v117;
                    do
                    {
                      v75 = v73[1];
                      *v73 = x + *v73;
                      if (v114)
                      {
                        v76 = y - (v75 + v73[3]);
                      }

                      else
                      {
                        v76 = y + v75;
                      }

                      v73[1] = v76;
                      v73 += 4;
                      --v74;
                    }

                    while (v74);
                    [NSLayoutManager fillBackgroundRectArray:v8 count:"fillBackgroundRectArray:count:forCharacterRange:color:" forCharacterRange:v72 color:?];
                  }
                }
              }

              v57 = v120.length + v120.location;
            }

            else
            {
              v62 = [v8->_firstTextView markedRange];
              v57 = v62 + v63;
            }
          }

          while (v57 < range2_8);
          v12 = v106;
          v16 = v110;
          goto LABEL_80;
        }
      }

      v24 = v23;
      if (v14 <= range2)
      {
        v26 = 0;
      }

      else
      {
        v25 = [-[NSTextStorage attribute:atIndex:effectiveRange:](v8->_textStorage attribute:@"NSParagraphStyle" atIndex:v14 - 1 effectiveRange:{0), "textBlocks"}];
        v26 = v25;
        if (v25)
        {
          v27 = [v25 count];
          goto LABEL_25;
        }
      }

      v27 = 0;
LABEL_25:
      v28 = 0;
      v29 = 1;
      do
      {
        v30 = [v22 objectAtIndex:v28];
        v31 = v29 & (v28 < v27);
        if (v31 == 1 && v30 == [v26 objectAtIndex:v28])
        {
          v29 = 1;
        }

        else
        {
          v32 = [(NSLayoutManager *)v8 glyphRangeForCharacterRange:v14 actualCharacterRange:1, 0];
          v116.location = 0;
          v116.length = 0;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = [v30 table];
            if (!v31 || (v34 = [v26 objectAtIndex:v28], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v33 != objc_msgSend(v34, "table"))
            {
              [p_isa boundsRectForTextBlock:v33 atIndex:v32 effectiveRange:&v116];
              if (v116.length)
              {
                v39 = v35;
                v40 = v36;
                v41 = v37;
                v42 = v38;
                if (!NSIsEmptyRect(*&v35))
                {
                  v43 = [p_isa characterRangeForGlyphRange:v116.location actualGlyphRange:{v116.length, 0}];
                  [v33 drawBackgroundWithFrame:0 inView:v43 characterRange:v44 layoutManager:{p_isa, x + v39, y + v40, v41, v42}];
                }
              }
            }
          }

          v8 = p_isa;
          [p_isa boundsRectForTextBlock:v30 atIndex:v32 effectiveRange:&v116];
          if (v116.length)
          {
            v49 = v45;
            v50 = v46;
            v51 = v47;
            v52 = v48;
            if (!NSIsEmptyRect(*&v45))
            {
              v54 = [p_isa characterRangeForGlyphRange:v116.location actualGlyphRange:{v116.length, 0}];
              v55 = -(v50 + v52);
              if (!v114)
              {
                v55 = v50;
              }

              [v30 drawBackgroundWithFrame:0 inView:v54 characterRange:v53 layoutManager:{p_isa, x + v49, y + v55, v51, v52}];
            }
          }

          v29 = 0;
        }

        ++v28;
      }

      while (v24 != v28);
      goto LABEL_44;
    }

LABEL_80:
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_124;
    }

    v77 = [p_isa[13] markedRange];
    v79 = v78;
    if (objc_opt_respondsToSelector())
    {
      v80 = [p_isa[13] attributedSubstringForMarkedRange];
      if (!v79)
      {
LABEL_124:
        CGContextRestoreGState(c);
        if (v107)
        {
          [p_isa[1] _unlock];
        }

        return;
      }
    }

    else
    {
      v80 = 0;
      if (!v79)
      {
        goto LABEL_124;
      }
    }

    v122.location = v77;
    v122.length = v79;
    v124.location = range2;
    v124.length = v16;
    v120 = NSIntersectionRange(v122, v124);
    if (!v120.length)
    {
      goto LABEL_124;
    }

    if (v80)
    {
      v81 = [v80 length];
      if (v120.length)
      {
        v82 = v81;
        v83 = v120.location;
        do
        {
          v84 = [v80 attribute:@"NSBackgroundColor" atIndex:v83 - v77 longestEffectiveRange:&v119 inRange:{0, v82}];
          if (!((v84 != 0) | v11 & 1))
          {
            v84 = [getNSColorClass_0[0]() _markedTextBackgroundColor];
          }

          v116.location = 0;
          v116.length = 0;
          v85 = [v80 attribute:NSMarkedClauseSegmentAttributeName atIndex:v120.location - v77 longestEffectiveRange:&v116 inRange:{0, v82}];
          v86 = v119;
          if (v85)
          {
            v86 = NSIntersectionRange(v86, v116);
            v119.length = v86.length;
          }

          v86.location += v77;
          v119.location = v86.location;
          v88 = NSIntersectionRange(v86, v120);
          v87 = v88.length;
          v119 = v88;
          if (v84)
          {
            [objc_msgSend(p_isa renderingColorForDocumentColor:{v84), "set"}];
            v89 = [p_isa rectArrayForCharacterRange:v119.location withinSelectedCharacterRange:v119.length inTextContainer:v77 rectCount:{v79, v108, &v117}];
            if (v117)
            {
              v90 = v89;
              v91 = 0;
              v92 = (v89 + 16);
              do
              {
                v93 = *(v92 - 1);
                v94 = x + *(v92 - 2);
                *(v92 - 2) = v94;
                if (v114)
                {
                  v95 = v92[1];
                  v96 = y - (v93 + v95);
                  *(v92 - 1) = v96;
                }

                else
                {
                  v96 = y + v93;
                  *(v92 - 1) = v96;
                  v95 = v92[1];
                }

                v97 = *v92;
                v125 = CGContextConvertRectToDeviceSpace(c, *&v94);
                v125.origin.x = round(v125.origin.x);
                v125.size.width = round(v125.size.width);
                *(v92 - 2) = v125;
                v126 = CGContextConvertRectToUserSpace(c, v125);
                *(v92 - 2) = v126;
                if (v126.size.width > 1.0)
                {
                  *v92 = v126.size.width + -1.0;
                }

                ++v91;
                v92 += 4;
              }

              while (v91 < v117);
              v87 = v119.length;
              LOBYTE(v11) = v109;
              if (v117)
              {
                [p_isa fillMarkedBackgroundRectArray:v90 count:? forCharacterRange:? color:?];
                v87 = v119.length;
              }
            }

            else
            {
              v87 = v119.length;
            }
          }

          v83 = v120.location + v87;
          v120.location += v87;
          v120.length -= v87;
        }

        while (v120.length);
      }

      goto LABEL_124;
    }

    if (objc_opt_respondsToSelector())
    {
      v98 = [p_isa[13] markedTextAttributes];
    }

    else
    {
      v98 = 0;
    }

    v99 = [v98 objectForKey:@"NSBackgroundColor"];
    if (!v99 && v12 != 2)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_124;
      }

      v99 = [objc_msgSend(p_isa[13] "markedTextStyle")];
      if (v99)
      {
        goto LABEL_117;
      }

      v99 = [getNSColorClass_0[0]() _markedTextBackgroundColor];
    }

    if (!v99)
    {
      goto LABEL_124;
    }

LABEL_117:
    [objc_msgSend(p_isa renderingColorForDocumentColor:{v99), "set"}];
    v100 = [p_isa rectArrayForCharacterRange:v120.location withinSelectedCharacterRange:v120.length inTextContainer:v77 rectCount:{v79, v108, &v117}];
    if (v117)
    {
      v101 = v100;
      v102 = v117;
      do
      {
        v103 = v101[1];
        *v101 = x + *v101;
        if (v114)
        {
          v104 = y - (v103 + v101[3]);
        }

        else
        {
          v104 = y + v103;
        }

        v101[1] = v104;
        v101 += 4;
        --v102;
      }

      while (v102);
      [p_isa fillBackgroundRectArray:v100 count:? forCharacterRange:? color:?];
    }

    goto LABEL_124;
  }

  if (v13)
  {
    textStorage = v8->_textStorage;

    [(NSTextStorage *)textStorage _unlock];
  }
}

- (id)selectedTextAttributesForCharacterAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  if (a4)
  {
    v7 = [(NSTextStorage *)self->_textStorage length];
    a4->location = 0;
    a4->length = v7;
  }

  if (![(NSLayoutManager *)self delegate])
  {
    return 0;
  }

  [(NSLayoutManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v8 = [(NSLayoutManager *)self delegate];

  return [v8 layoutManager:self shouldUseSelectedTextAttributes:0 atCharacterIndex:a3 effectiveRange:a4];
}

- (char)_packedGlyphs:(unint64_t)a3 range:(_NSRange)a4 length:(unint64_t *)a5
{
  length = a4.length;
  location = a4.location;
  v9 = 2 * a4.length + 2;
  if (self->_glyphBufferSize < v9)
  {
    self->_glyphBuffer = NSReallocateCollectable(self->_glyphBuffer, 2 * a4.length + 2, 0);
    if (!self->_glyphBuffer)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA18] format:{@"*** %@, _getGlyphBuffer(): NSZoneMalloc failed!", objc_opt_class()}];
    }

    self->_glyphBufferSize = v9;
  }

  glyphBuffer = self->_glyphBuffer;
  if (length)
  {
    _NSFastFillAllGlyphHolesForGlyphRange(self, location, length);
  }

  PackedGlyphsInRange = _NSGlyphTreeGetPackedGlyphsInRange(self, location, length, glyphBuffer);
  if (a5)
  {
    *a5 = 2 * PackedGlyphsInRange;
  }

  return glyphBuffer;
}

- (void)_drawGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4
{
  v6 = (MEMORY[0x1EEE9AC00])(self, a2, a3.location, a3.length);
  v303 = v7;
  v282 = v6;
  v353 = *MEMORY[0x1E69E9840];
  v329 = v8;
  if (v8)
  {
    v9 = v5;
    v10 = v4;
    v265 = [*(v4 + 8) _lockForReading];
    v267 = _os_feature_enabled_impl();
    v331 = v10;
    v11 = -[objc_class graphicsContextForApplicationFrameworkContext:](+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider, "textGraphicsContextProviderClass"), "graphicsContextForApplicationFrameworkContext:", [v10 applicationFrameworkContext]);
    v12 = [v11 CGContext];
    v346 = xmmword_18E856180;
    range2 = xmmword_18E856180;
    v344 = xmmword_18E856180;
    v343 = xmmword_18E856180;
    v342 = *(MEMORY[0x1E695EFD0] + 32);
    v296 = [objc_msgSend(v10 "typesetter")];
    if ((*(v10 + 67) & 0x10) != 0)
    {
      v333 = [v11 isFlipped] ^ 1;
    }

    else
    {
      v333 = 0;
    }

    v13 = [v10 _drawsDebugBaselines];
    v14 = 0.0;
    if (v13)
    {
      memset(v351, 0, 48);
      CGContextGetCTM(v351, v12);
      v15 = fabs(v351[0].a * v351[0].d - v351[0].b * v351[0].c);
      v16 = 1.0 / sqrt(v15);
      if (v15 <= 0.001)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = v16;
      }
    }

    if (_drawGlyphsForGlyphRange_atPoint__configureOnce != -1)
    {
      [NSLayoutManager(NSPrivate) _drawGlyphsForGlyphRange:atPoint:];
    }

    _NSFastFillAllLayoutHolesForGlyphRange(v10, v9, v329);
    v17 = [v10 characterRangeForGlyphRange:v9 actualGlyphRange:{v329, 0}];
    v324 = v18;
    v19 = v17;
    if ((*(v10 + 67) & 0x40) != 0)
    {
      v23 = [*(v10 + 32) objectAtIndex:0];
    }

    else if ([*(v10 + 48) count] <= v9)
    {
      v23 = 0;
    }

    else
    {
      v20 = *(v10 + 48);
      _NSBlockNumberForIndex(v20, v9, 0);
      if (v20[11] <= v21)
      {
        v22 = v20[4] - v20[3];
      }

      else
      {
        v22 = 0;
      }

      v23 = *(v20[7] + (v20[2] + 8) * (v22 + v21) + 8);
    }

    v24 = [v23 layoutOrientation];
    [v10 _setCachedTextContainer:v23 isVertical:v24 != 0];
    v284 = v24;
    v25 = *(v10 + 104);
    c = v12;
    v283 = v11;
    v261 = v13;
    v260 = v14;
    v328 = v19;
    v266 = v23;
    if (v25)
    {
      v26 = [v25 markedRange];
      v28 = v27;
      if (NSIntersectsRange() && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v271 = [*(v10 + 104) attributedSubstringForMarkedRange];
      }

      else
      {
        v271 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v29 = [*(v10 + 104) selectedRange];
        v31 = v30;
        v32 = v9;
        v33 = v28;
        v34 = v31;
      }

      else
      {
        v32 = v9;
        v34 = 0;
        v33 = v28;
        v29 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v32 = v9;
      v271 = 0;
      v34 = 0;
      v33 = 0;
      v29 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v274 = 0;
    v279 = 0;
    v264 = 0.0;
    length = 0;
    v332 = 0;
    v35 = 0;
    v299 = 0;
    v304 = 0;
    v323 = 0;
    v317 = 0;
    v36 = 0;
    v327 = 0;
    v308 = 0;
    v315 = 0;
    v309 = 0;
    v307 = 0;
    v314 = 0;
    v316 = 0;
    v292 = 0;
    v293 = 0;
    v302 = 0;
    v295 = 0;
    v275 = 0;
    v291 = 0;
    v298 = 0;
    v286 = 0;
    b = *(MEMORY[0x1E695EFD0] + 8);
    a = *MEMORY[0x1E695EFD0];
    d = *(MEMORY[0x1E695EFD0] + 24);
    v288 = *(MEMORY[0x1E695EFD0] + 16);
    v37 = *(MEMORY[0x1E696AA80] + 8);
    v306 = *MEMORY[0x1E696AA78];
    aPoint = *(MEMORY[0x1E696AA78] + 8);
    v38 = *MEMORY[0x1E696AA88];
    v39 = *(MEMORY[0x1E696AA88] + 8);
    if (v333)
    {
      v40 = 1.0;
    }

    else
    {
      v40 = -1.0;
    }

    v294 = 0.0;
    v285 = 0.0;
    v313 = *MEMORY[0x1E696AA80];
    v322 = *MEMORY[0x1E696AA80];
    v312 = *(MEMORY[0x1E696AA80] + 8);
    v311 = *(MEMORY[0x1E696AA80] + 16);
    v320 = v311;
    aRect = *(MEMORY[0x1E696AA80] + 24);
    bRect = aRect;
    v281 = v33;
    v301 = v26;
    v270 = v26 + v33;
    v277 = v29;
    v272 = v29 + v34;
    v280 = 0x7FFFFFFFFFFFFFFFLL;
    range1 = v34;
    v263 = 0x7FFFFFFFFFFFFFFFLL;
    location = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v330 = v32;
      v318 = _NSGlyphTreeNotShownAttributeForGlyphAtIndex(v10, v32);
      if (v328 < range2.location || v328 - range2.location >= range2.length)
      {
        v332 = [*(v10 + 8) attributesAtIndex:v328 longestEffectiveRange:&range2 inRange:{v328, v324}];
        if (v318)
        {
          v299 = [v332 objectForKey:@"NSAttachment"];
        }

        else
        {
          v299 = 0;
        }

        v304 = [v332 objectForKey:@"NSLink"];
        v43 = [v332 objectForKey:@"NSExpansion"];
        if (v43)
        {
          [v43 doubleValue];
          v45 = exp(v44);
        }

        else
        {
          v45 = 1.0;
        }

        v294 = v45;
        if (_drawGlyphsForGlyphRange_atPoint__isBidiDebugging)
        {
          v46 = [v332 objectForKey:@"NSWritingDirection"];
          v47 = v46;
          if (v46)
          {
            if ([v46 count])
            {
              v48 = v47;
            }

            else
            {
              v48 = 0;
            }

            v317 = v48;
          }

          else
          {
            v317 = 0;
          }
        }

        v49 = [v332 objectForKey:@"NSFont"];
        if (!v49)
        {
          v49 = NSDefaultFont();
        }

        v50 = [v332 objectForKey:@"CTVerticalForms"];
        v51 = [v50 BOOLValue];
        if (v284)
        {
          v52 = v50 == 0;
        }

        else
        {
          v52 = 0;
        }

        if (v52)
        {
          v53 = 1;
        }

        else
        {
          v53 = v51;
        }

        v54 = v49;
        if (v53 == 1)
        {
          v54 = [v49 verticalFont];
        }

        if (!v54)
        {
          v54 = v49;
        }

        v323 = v54;
        v36 = [v54 isVertical];
        if (v323)
        {
          [v323 _textMatrixTransformForContext:v283];
          b = v351[0].b;
          a = v351[0].a;
          d = v351[0].d;
          v288 = v351[0].c;
        }

        else
        {
          d = 0.0;
          v288 = 0.0;
          b = 0.0;
          a = 0.0;
          memset(v351, 0, 48);
        }

        v342 = *&v351[0].tx;
      }

      v55 = v346;
      v56.location = v328;
      if (v328 < v346.location || v328 - v346.location >= v346.length)
      {
        break;
      }

      v56.length = v324;
      v346 = NSIntersectionRange(v56, v55);
      v354.location = v330;
      v354.length = v329;
      v357.location = location;
      v357.length = length;
      v64 = NSIntersectionRange(v354, v357);
      length = v64.length;
      location = v64.location;
LABEL_161:
      if (location < v343.location || location - v343.location >= v343.length)
      {
        v322 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(v10, location, &v343);
        v320 = v98;
        bRect = v99;
        v37 = v100;
      }

      [v10 locationForGlyphAtIndex:location];
      v102 = v101;
      v104 = v103;
      if (v330 && (v364.origin.x = v313, v364.origin.y = v312, v364.size.width = v311, v364.size.height = aRect, v367.origin.x = v322, v367.origin.y = v37, v367.size.width = v320, v367.size.height = bRect, NSEqualRects(v364, v367)) && (v362.x = v306, v362.y = aPoint, v363.x = v102, v363.y = v104, NSEqualPoints(v362, v363)))
      {
        v32 = v343.length + v343.location;
        v106 = v329 + v330 - (v343.length + v343.location);
        v105 = v329 + v330 > v343.length + v343.location;
        if (v329 + v330 < v343.length + v343.location)
        {
          v106 = 0;
        }

        v329 = v106;
        if (!v105)
        {
          goto LABEL_396;
        }
      }

      else
      {
        v107 = v282 + v322;
        v108 = v282 + v322 + v102;
        v109 = v37 + v104;
        if (v333)
        {
          v109 = -(v37 + v104);
        }

        v276 = v109;
        v278 = v346.location;
        v110 = v346.length;
        if (v302 && length)
        {
          v111 = [v302 integerValue];
          if (v111 <= 0)
          {
            v112 = -(-v111 & 3);
          }

          else
          {
            v112 = v111 & 3;
          }

          v113 = _NSLayoutTreeLineFragmentUsedRectForGlyphAtIndex(v331, location, 0);
          v115 = v114;
          v117 = v116;
          width = v112;
          v118 = [v302 integerValue] & 0x3000;
          if (v118 || (v118 = [v315 integerValue] & 0x3000) != 0)
          {
            if (v118 == 12288)
            {
              v122 = bRect + v37;
              if (v333)
              {
                v315 = 0;
                v123 = v122 + -1.0;
                goto LABEL_205;
              }

              v315 = 0;
              v136 = v303 + v122;
              v137 = -1.0;
            }

            else
            {
              if (v118 == 4096)
              {
                goto LABEL_182;
              }

              if (v333)
              {
                v315 = 0;
                v123 = v37 + 1.0;
                goto LABEL_205;
              }

              v315 = 0;
              v136 = v303 + v37;
              v137 = 1.0;
            }

            v135 = v136 + v137;
          }

          else
          {
LABEL_182:
            [objc_msgSend(v331 "typesetter")];
            v120 = v115 + v117;
            if (v115 + v117 <= v37)
            {
              v121 = bRect;
            }

            else
            {
              v121 = bRect;
              if (v120 < bRect + v37)
              {
                v119 = v119 - (bRect + v37 - v120);
                v121 = v120 - v37;
              }
            }

            v129 = v119 * 0.5;
            v130 = floor(v129);
            v131 = v129 < 4.0;
            if (v129 >= 4.0)
            {
              v123 = (v129 - width) * 0.666;
            }

            else
            {
              v123 = v130;
            }

            v132 = v315;
            if (v131)
            {
              v132 = 0;
            }

            v315 = v132;
            v133 = v37 + v121;
            if (v333)
            {
              v123 = v133 - v123;
LABEL_205:
              v134 = v303;
            }

            else
            {
              v134 = v303 + v133;
            }

            v135 = v134 - v123;
          }

          y = v135;
          if ([v331 _hasSeenRightToLeft])
          {
            v138 = v108 + -1.0;
            if ((_NSGlyphTreeBidiLevelForGlyphAtIndex(v331, location) & 1) == 0)
            {
              v139 = location + length;
              if (location + length < v343.length + v343.location)
              {
                v140 = _NSGlyphTreeBidiLevelForGlyphAtIndex(v331, location + length);
                if (v140)
                {
                  do
                  {
                    v141 = v139;
                    v142 = v139 + 1;
                    if (v139 + 1 >= v343.length + v343.location)
                    {
                      break;
                    }

                    ++v139;
                  }

                  while (v140 == _NSGlyphTreeBidiLevelForGlyphAtIndex(v331, v142));
                }

                else
                {
                  v141 = location + length;
                }

                [v331 locationForGlyphAtIndex:v141];
                v144 = v282 + v322 + v143;
                v145 = 1.0;
                if (v110 + v278 != v270)
                {
                  v145 = 0.0;
                }

                v138 = v144 - v145;
              }

              if (v138 < v108)
              {
                v146 = _NSGlyphTreeBidiLevelForGlyphAtIndex(v331, location);
                v147 = location;
                do
                {
                  v148 = v147;
                  v149 = v343.location;
                  if (v147 <= v343.location)
                  {
                    goto LABEL_226;
                  }

                  --v147;
                }

                while (v146 == _NSGlyphTreeBidiLevelForGlyphAtIndex(v331, v148 - 1));
                v149 = v343.location;
LABEL_226:
                if (v148 <= v149)
                {
                  [v331 lineFragmentUsedRectForGlyphAtIndex:location effectiveRange:0];
                  v163 = v162;
                  v165 = v164;
                  [objc_msgSend(v331 textContainerForGlyphAtIndex:location effectiveRange:{0), "lineFragmentPadding"}];
                  v138 = v282 + v163 + v165 - v166 + -1.0;
                }

                else
                {
                  [v331 locationForGlyphAtIndex:v148 - 1];
                  v151 = v282 + v322 + v150;
                  v152 = 1.0;
                  if (v110 + v278 != v270)
                  {
                    v152 = 0.0;
                  }

                  v138 = v151 - v152;
                }
              }
            }

            v161 = v108;
            if (v138 < v108)
            {
              v351[0].a = 0.0;
              if ((*(v331 + 67) & 0x40) != 0)
              {
                v170 = [*(v331 + 32) objectAtIndex:0];
              }

              else if ([*(v331 + 48) count] <= location)
              {
                v170 = 0;
              }

              else
              {
                v167 = *(v331 + 48);
                _NSBlockNumberForIndex(v167, location, 0);
                if (v167[11] <= v168)
                {
                  v169 = v167[4] - v167[3];
                }

                else
                {
                  v169 = 0;
                }

                v170 = *(v167[7] + (v167[2] + 8) * (v169 + v168) + 8);
              }

              LOBYTE(v259) = 0;
              v171 = [v331 _rectArrayForRange:location withinSelectionRange:length rangeIsCharRange:0x7FFFFFFFFFFFFFFFLL singleRectOnly:0 fullLineRectsOnly:0 inTextContainer:1 rectCount:v259 rangeWithinContainer:v170 glyphsDrawOutsideLines:{v351, 0, 0}];
              v161 = *v171;
              v138 = *v171 + v171[2];
            }
          }

          else
          {
            if (location + length >= v343.length + v343.location)
            {
              [v331 lineFragmentUsedRectForGlyphAtIndex:location effectiveRange:0];
              v157 = v156;
              v159 = v158;
              [objc_msgSend(v331 textContainerForGlyphAtIndex:location effectiveRange:{0), "lineFragmentPadding"}];
              v138 = v282 + v157 + v159 - v160 + -1.0;
            }

            else
            {
              [v331 locationForGlyphAtIndex:?];
              v154 = v282 + v322 + v153;
              v155 = 1.0;
              if (v110 + v278 != v270)
              {
                v155 = 0.0;
              }

              v138 = v154 - v155;
            }

            v161 = v108;
          }

          if (!v275)
          {
            v172 = [getNSColorClass_0[0]() blackColor];
            if (v277 == 0x7FFFFFFFFFFFFFFFLL || !NSIntersectsRange())
            {
              if (v327 && ([v327 isEqual:v172] & 1) == 0)
              {
                v275 = [v327 colorWithAlphaComponent:0.8];
              }

              else
              {
                v275 = [getNSColorClass_0[0]() colorWithWhite:0.17 alpha:1.0];
              }
            }

            else
            {
              v173 = v327;
              if (!v327)
              {
                v173 = v172;
              }

              v275 = v173;
            }
          }

          if (v267)
          {
            if (!v274)
            {
              v174 = [__NSLMMarkedTextUnderlineRenderer alloc];
              if (v174)
              {
                *&v351[0].a = v174;
                *&v351[0].b = __NSLMMarkedTextUnderlineRenderer;
                v174 = [(CGAffineTransform *)v351 init];
                if (v174)
                {
                  v174->_cgContextRef = c;
                }
              }

              v274 = v174;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v175 = [v295 BOOLValue];
            }

            else
            {
              v175 = v112 != 1;
            }

            -[__NSLMMarkedTextUnderlineRenderer processMarkedTextUnderlineStartX:endX:yPosition:underlineColor:selected:](v274, [v331 renderingColorForDocumentColor:v275], v175, v161, v138, y);
          }

          else
          {
            CGContextSaveGState(c);
            [objc_msgSend(v331 renderingColorForDocumentColor:{v275), "set"}];
            if (v138 - v161 > 1.0 && v263 != v301 && v278 == v263)
            {
              v161 = v161 + 1.0;
            }

            if (v110 + v278 == v263 + *&v264 && v138 - v161 > 1.0 && v110 + v278 != v270)
            {
              v138 = v138 + -1.0;
            }

            CGContextSetLineWidth(c, width);
            CGContextMoveToPoint(c, v161, y);
            CGContextAddLineToPoint(c, v138, y);
            CGContextStrokePath(c);
            CGContextRestoreGState(c);
          }
        }

        v179 = v303 + v276;
        if (v299)
        {
          v180 = [v299 attachmentCell];
          [v331 attachmentSizeForGlyphAtIndex:location];
          v183 = v181;
          v184 = v182;
          if (v180)
          {
            [v331 showAttachmentCell:v180 inRect:v328 characterIndex:{v108, v179, v181, v182}];
          }

          else
          {
            [objc_msgSend(v331 renderingColorForDocumentColor:{v327), "set"}];
            [v331 showAttachment:v299 inRect:v266 textContainer:v328 characterIndex:{v108, v179, v183, v184}];
          }

          if (v110 > 1)
          {
            v189 = 1;
          }

          else
          {
            v189 = length;
          }

          v190 = v110 != 0;
          v191 = location;
          goto LABEL_378;
        }

        glyphs = 0;
        v340 = 0uLL;
        v339.length = 0;
        v339.location = 0;
        v185 = length;
        v186 = location + length;
        v187 = v343;
        v268 = v110;
        v188.location = location;
        if (location + length > v343.length + v343.location)
        {
          v188.length = length;
          v188 = NSIntersectionRange(v188, v187);
          v185 = v188.length;
          v186 = v188.location + v188.length;
        }

        v192 = 0;
        v300 = 0;
        v193 = v188.location;
        v339.location = v188.location;
        v339.length = v185;
        v194 = v351;
        v195 = v352;
        while (1)
        {
          v196 = v339.location;
          _NSLayoutTreeRunLocationForGlyphAtIndex(v331, v339.location, &v339);
          v360.location = v193;
          v360.length = v185;
          v197 = NSIntersectionRange(v339, v360);
          v198 = v197.location;
          v199 = v197.length;
          v339 = v197;
          if (v196 > v197.location)
          {
            v199 = v197.length - v196 + v197.location;
            v339.length = v199;
            v339.location = v196;
            v198 = v196;
          }

          v200 = 512 - v192;
          if (v199 > (512 - v192) >> 1)
          {
            v199 = v200 >> 1;
            v339.length = v200 >> 1;
          }

          PackedGlyphsInRange = _NSGlyphTreeGetPackedGlyphsInRange(v331, v198, v199, v195);
          v202 = PackedGlyphsInRange;
          if (((PackedGlyphsInRange == 1) & v296) == 1)
          {
            if (_NSGlyphTreeVirtualEllipsisAttributeForGlyphAtIndex(v331, v339.location))
            {
              LOWORD(characters.a) = 8230;
              v203 = [v331 substituteFontForFont:{objc_msgSend(objc_msgSend(v331, "typesetter"), "_ellipsisFontForFont:", v323)}];
              CTFontGetGlyphsForCharacters(v203, &characters, &glyphs, 1);
              [(__CTFont *)v203 getAdvancements:&v349 forCGGlyphs:&glyphs count:1];
              v300 = v203;
              v340.f64[0] = v108;
              v340.f64[1] = v179;
              if (v36)
              {
                [(__CTFont *)v203 getVerticalOriginTranslations:&v347 forCGGlyphs:&glyphs count:1];
                v205 = v348;
                v204.f64[0] = v347;
                if (!v333)
                {
                  v205 = -v348;
                }

                v204.f64[1] = v205;
                v340 = vaddq_f64(v340, v204);
              }

              goto LABEL_313;
            }
          }

          else if (!PackedGlyphsInRange)
          {
            goto LABEL_313;
          }

          [v323 getAdvancements:&v349 forCGGlyphs:v195 count:v202];
          if (v36)
          {
            [v323 getVerticalOriginTranslations:&v347 forCGGlyphs:v195 count:v202];
          }

          v192 += 2 * v202;
          v206 = &v348;
          v207 = &v350;
          do
          {
            v194->a = v108;
            v194->b = v179;
            if (v36)
            {
              v208 = *v206;
              if (!v333)
              {
                v208 = -*v206;
              }

              v194->a = v108 + *(v206 - 1);
              v194->b = v179 + v208;
            }

            v194 = (v194 + 16);
            v108 = v108 + v38 + *(v207 - 1);
            v179 = v179 + (v39 + *v207) * v40;
            v207 += 2;
            v206 += 2;
            --v202;
          }

          while (v202);
LABEL_313:
          v209 = v339.length + v339.location;
          v339.location = v209;
          if (v209 >= v186)
          {
            break;
          }

          [v331 locationForGlyphAtIndex:?];
          v108 = v107 + v210;
          v212 = v37 + v211;
          v213 = -(v37 + v211);
          if (v333)
          {
            v212 = v213;
          }

          v179 = v303 + v212;
          v195 = &v352[v192];
          if (v192 >= 512)
          {
            v209 = v339.location;
            goto LABEL_319;
          }
        }

        v195 = &v352[v192];
LABEL_319:
        v105 = v186 > v209;
        v191 = v193;
        if (v105)
        {
          v189 = v209 - v193;
        }

        else
        {
          v189 = v185;
        }

        if (v189 < length)
        {
          v268 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(v331, v189 + v193) - v278;
        }

        if (v189)
        {
          v338 = v342;
          CGContextGetFontRenderingStyle();
          v214 = v318 ^ 1;
          if (v189 != 1)
          {
            v214 = 1;
          }

          v215 = (v214 & 1) != 0 || [v331 glyphAtIndex:v193] != 0;
          [objc_msgSend(v331 renderingColorForDocumentColor:{v327), "set"}];
          if ((v293 & 7) != 0 && v215)
          {
            CGContextSaveGState(c);
            if (v309)
            {
              [objc_msgSend(v331 renderingColorForDocumentColor:{v309), "set"}];
            }

            [v314 applyToGraphicsContext:v283];
            [v331 underlineGlyphRange:v193 underlineType:v189 lineFragmentRect:v293 lineFragmentGlyphRange:v343.location containerOrigin:{v343.length, v322, v37, v320, bRect, v282, v303}];
            CGContextRestoreGState(c);
          }

          if (v261)
          {
            CGContextSaveGState(c);
            [objc_msgSend(v331 "typesetter")];
            v218 = v217;
            Mutable = CGPathCreateMutable();
            v220 = v303 + bRect + v37 - v218;
            CGPathMoveToPoint(Mutable, 0, v107, v220);
            CGPathAddLineToPoint(Mutable, 0, v320 + v107, v220);
            CGContextAddPath(c, Mutable);
            CGContextSetLineWidth(c, v260);
            [objc_msgSend(getNSColorClass_0[0]() "blueColor")];
            CGContextSetLineDash(c, 0.0, _drawGlyphsForGlyphRange_atPoint__components, 2uLL);
            CGContextSetShouldAntialias(c, 0);
            CGContextStrokePath(c);
            CGPathRelease(Mutable);
            CGContextRestoreGState(c);
          }

          [v323 applyToGraphicsContext:v283];
          if (v294 != 1.0 || (v221 = b, v319 = a, v222 = d, v223 = v288, v292))
          {
            CGContextGetTextMatrix(&t1, c);
            t2.a = v294;
            t2.b = 0.0;
            t2.c = v285;
            t2.d = 1.0;
            t2.tx = 0.0;
            t2.ty = 0.0;
            CGAffineTransformConcat(&characters, &t1, &t2);
            v221 = characters.b;
            v223 = characters.c;
            v222 = characters.d;
            v337 = *&characters.tx;
            v319 = characters.a;
            CGContextSetTextMatrix(c, &characters);
            v338 = v337;
          }

          if (v314 | v316)
          {
            CGContextSaveGState(c);
            [v314 applyToGraphicsContext:v283];
            if (v316)
            {
              [v323 pointSize];
              v225 = v224;
              [v316 doubleValue];
              v227 = v225 * 0.01 * v226;
              if (v227 <= 0.0)
              {
                if (v227 < 0.0)
                {
                  CGContextSetLineWidth(c, -v227);
                  v228 = kCGTextFillStroke;
                }

                else
                {
                  v228 = kCGTextFill;
                }
              }

              else
              {
                CGContextSetLineWidth(c, v227);
                v228 = kCGTextStroke;
              }

              CGContextSetTextDrawingMode(c, v228);
              if (v308)
              {
                [objc_msgSend(v331 renderingColorForDocumentColor:{v308), "setStroke"}];
              }
            }
          }

          v229 = v332;
          if (!v332)
          {
            v229 = [MEMORY[0x1E695DF20] dictionary];
          }

          characters.a = v319;
          characters.b = v221;
          characters.c = v223;
          characters.d = v222;
          *&characters.tx = v338;
          [v331 showCGGlyphs:v352 positions:v351 count:(v195 - v352) >> 1 font:v323 matrix:&characters attributes:v229 inContext:c];
          if (v300)
          {
            CGContextSaveGState(c);
            [(__CTFont *)v300 applyToGraphicsContext:v283];
            characters.a = v319;
            characters.b = v221;
            characters.c = v223;
            characters.d = v222;
            *&characters.tx = v338;
            [v331 showCGGlyphs:&glyphs positions:&v340 count:1 font:v300 matrix:&characters attributes:v229 inContext:c];
            CGContextRestoreGState(c);
          }

          CGContextSetFontRenderingStyle();
          if (v314 | v316)
          {
            CGContextRestoreGState(c);
          }

          if (v215)
          {
            if ((v291 & 7) != 0)
            {
              CGContextSaveGState(c);
              if (v307)
              {
                [objc_msgSend(v331 renderingColorForDocumentColor:{v307), "set"}];
              }

              [v314 applyToGraphicsContext:v283];
              v230 = v322;
              if (v292)
              {
                [v292 doubleValue];
                v232 = v231;
                [v323 xHeight];
                v230 = v322 + v232 * v233 * 0.5;
              }

              [v331 strikethroughGlyphRange:v193 strikethroughType:v189 lineFragmentRect:v291 lineFragmentGlyphRange:v343.location containerOrigin:{v343.length, v230, v37, v320, bRect, v282, v303}];
              CGContextRestoreGState(c);
            }

            if (v298 | v286)
            {
              characters.b = 0.0;
              characters.a = 0.0;
              v235 = [v331 characterRangeForGlyphRange:v343.location actualGlyphRange:{v343.length, 0}];
              v236 = v234;
              if (v298)
              {
                v237 = @"NSSpellingState";
              }

              else
              {
                v237 = @"NSTextAlternativesDisplayStyle";
              }

              [v331 temporaryAttribute:v237 atCharacterIndex:v278 longestEffectiveRange:&characters inRange:{v235, v234}];
              v238 = [v331 glyphRangeForCharacterRange:*&characters.a actualCharacterRange:{*&characters.b, 0}];
              v240 = v239;
              if ((v298 & 0x80) != 0 && ([v331 temporaryAttribute:NSTemporaryTextCorrectionAttributeName atCharacterIndex:v278 longestEffectiveRange:&characters inRange:{v235, v236}] || objc_msgSend(v331, "temporaryAttribute:atCharacterIndex:longestEffectiveRange:inRange:", @"NSTextAlternatives", v278, &characters, v235, v236)))
              {
                v361.location = [v331 glyphRangeForCharacterRange:*&characters.a actualCharacterRange:{*&characters.b, 0}];
                v361.length = v241;
                v356.location = v238;
                v356.length = v240;
                v242 = NSIntersectionRange(v356, v361);
                v238 = v242.location;
                v240 = v242.length;
              }

              if (v298)
              {
                v243 = v298;
              }

              else
              {
                v243 = v286;
              }

              [v331 drawSpellingUnderlineForGlyphRange:v193 spellingState:v189 inGlyphRange:v243 lineFragmentRect:v238 lineFragmentGlyphRange:v240 containerOrigin:{v322, v37, v320, bRect, v282, v303, v343.location, v343.length}];
            }
          }

          v191 = v193;
        }

        v299 = 0;
        v190 = v268;
LABEL_378:
        if (v304)
        {
          if (v190 && CGContextGetType() == 1)
          {
            objc_opt_class();
            v244 = v304;
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (v244 = [MEMORY[0x1E695DFF8] URLWithString:v304]) != 0)
            {
              v349 = 0;
              v245 = v191;
              v246 = [v331 rectArrayForGlyphRange:v191 withinSelectedGlyphRange:v189 inTextContainer:0x7FFFFFFFFFFFFFFFLL rectCount:{0, v266, &v349}];
              v247 = v349;
              if (v349)
              {
                v248 = 0;
                v249 = (v246 + 16);
                do
                {
                  v250 = *v249;
                  if (*v249 > 0.0)
                  {
                    v251 = v249[1];
                    if (v251 > 0.0)
                    {
                      v252 = *(v249 - 2);
                      v253 = *(v249 - 1);
                      CGContextGetCTM(v351, c);
                      v254 = -(v253 + v251);
                      if (!v333)
                      {
                        v254 = v253;
                      }

                      v365.origin.y = v303 + v254;
                      v365.origin.x = v282 + v252;
                      v365.size.width = v250;
                      v365.size.height = v251;
                      v366 = CGRectApplyAffineTransform(v365, v351);
                      CGPDFContextSetURLForRect(c, v244, v366);
                      v247 = v349;
                    }
                  }

                  ++v248;
                  v249 += 4;
                }

                while (v248 < v247);
              }

              v191 = v245;
            }
          }
        }

        v255 = v328 + v324;
        v328 = v190 + v278;
        v324 = v255 - (v190 + v278);
        v32 = v191 + v189;
        v257 = v329 + v330 - (v191 + v189);
        v256 = v329 + v330 > v191 + v189;
        if (v329 + v330 < v191 + v189)
        {
          v257 = 0;
        }

        v329 = v257;
        v10 = v331;
        if (!v256)
        {
LABEL_396:
          [(__NSLMMarkedTextUnderlineRenderer *)v274 renderUnderline];

          [v10 _resetCachedTextContainer];
          v258 = (*(v10 + 240) + 168);
          *v258 = 0;
          v258[1] = 0;
          if (v265)
          {
            [*(v10 + 8) _unlock];
          }

          return;
        }
      }
    }

    v56.length = v324;
    v58 = NSIntersectionRange(v56, range2);
    v346 = v58;
    if (v58.location < v344.location || v58.location - v344.location >= v344.length)
    {
      v35 = [v10 temporaryAttributesAtCharacterIndex:v58.location longestEffectiveRange:&v344 inRange:{v58.location, v58.length}];
      if (v304)
      {
        v60 = [v10 linkAttributesForAttributes:v332 forCharacterAtIndex:v346.location];
        if (v60)
        {
          v61 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v60];
          [v61 addEntriesFromDictionary:v35];
          v35 = v61;
        }
      }

      if ((*(*(v10 + 240) + 449) & 0x10) != 0)
      {
        v62 = [v10 delegate];
        v35 = [v62 layoutManager:v10 shouldUseTemporaryAttributes:v35 forDrawingToScreen:1 atCharacterIndex:v346.location effectiveRange:&v344];
      }
    }

    if (!v35 || (v346 = NSIntersectionRange(v346, v344), (v327 = [v35 objectForKey:@"NSColor"]) == 0))
    {
      v327 = [v332 objectForKey:@"NSColor"];
    }

    if (v317)
    {
      v327 = [getNSColorClass_0[0]() brownColor];
      if ([v317 count] == 1)
      {
        v63 = [objc_msgSend(v317 objectAtIndex:{0), "unsignedIntegerValue"}];
        if (v63)
        {
          if (v63 == 1)
          {
            v327 = [getNSColorClass_0[0]() redColor];
          }
        }

        else
        {
          v327 = [getNSColorClass_0[0]() blueColor];
        }
      }
    }

    if (!v35 || (v308 = [v35 objectForKey:@"NSStrokeColor"]) == 0)
    {
      v308 = [v332 objectForKey:@"NSStrokeColor"];
    }

    v315 = [v332 objectForKey:@"NSUnderline"];
    if (!v35 || (v309 = [v35 objectForKey:@"NSUnderlineColor"]) == 0)
    {
      v309 = [v332 objectForKey:@"NSUnderlineColor"];
    }

    v65 = [v332 objectForKey:@"NSStrikethrough"];
    if ((((v35 && (v307 = [v35 objectForKey:@"NSStrikethroughColor"]) != 0 || (v307 = objc_msgSend(v332, "objectForKey:", @"NSStrikethroughColor"), v35)) && (v314 = objc_msgSend(v35, "objectForKey:", @"NSShadow")) != 0 || (v314 = objc_msgSend(v332, "objectForKey:", @"NSShadow"), v35)) && (v316 = objc_msgSend(v35, "objectForKey:", @"NSStrokeWidth")) != 0 || (v316 = objc_msgSend(v332, "objectForKey:", @"NSStrokeWidth"), v35)) && (v66 = objc_msgSend(v35, "objectForKey:", @"NSObliqueness")) != 0 || (v66 = objc_msgSend(v332, "objectForKey:", @"NSObliqueness")) != 0)
    {
      v292 = v66;
      [v66 doubleValue];
      if (!v333)
      {
        v67 = -v67;
      }
    }

    else
    {
      v292 = 0;
      v67 = 0.0;
    }

    v285 = v67;
    if (v301 != 0x7FFFFFFFFFFFFFFFLL && NSIntersectsRange())
    {
      v68 = v346.location - v301;
      if (v346.location < v301)
      {
        v295 = 0;
        v302 = 0;
        v346.length = v301 - v346.location;
        goto LABEL_129;
      }

      if (v68 >= v281)
      {
        v295 = 0;
        v302 = 0;
        v346.length += v346.location - v270;
        v346.location = v270;
        goto LABEL_129;
      }

      if (v271 && v68 < [v271 length])
      {
        *&v351[0].a = 0uLL;
        v69 = [v271 attribute:@"NSColor" atIndex:v68 effectiveRange:v351];
        if (v69)
        {
          if (*&v351[0].b < v346.length)
          {
            v346.length = *&v351[0].b;
          }

          v327 = v69;
        }

        v302 = [v271 attribute:@"NSUnderline" atIndex:v68 effectiveRange:v351];
        if (v302)
        {
          if (*&v351[0].b < v346.length)
          {
            v346.length = *&v351[0].b;
          }

          v275 = [v271 attribute:@"NSUnderlineColor" atIndex:v68 effectiveRange:v351];
          if (v275 && *&v351[0].b < v346.length)
          {
            v346.length = *&v351[0].b;
          }

          if ([v271 attribute:NSMarkedClauseSegmentAttributeName atIndex:v68 effectiveRange:v351])
          {
            v358.length = *&v351[0].b;
            v358.location = *&v351[0].a + v301;
            v263 = *&v351[0].a + v301;
            v264 = v351[0].b;
            v346 = NSIntersectionRange(v346, v358);
          }

          v295 = [v271 attribute:@"NSMarkedTextSelectionAttributeName" atIndex:v68 effectiveRange:0];
        }

        else
        {
          v295 = 0;
        }

LABEL_129:
        if (v315)
        {
          v70 = [v315 integerValue];
        }

        else
        {
          v70 = 0;
        }

        v71 = [objc_msgSend(v35 objectForKey:{@"NSUnderline", "integerValue"}];
        if (v65)
        {
          v65 = [v65 integerValue];
        }

        v72 = [objc_msgSend(v35 objectForKey:{@"NSStrikethrough", "integerValue"}];
        *&v351[0].a = 0uLL;
        v298 = [objc_msgSend(v35 objectForKey:{@"NSSpellingState", "integerValue"}];
        v286 = [objc_msgSend(v35 objectForKey:{@"NSTextAlternativesDisplayStyle", "integerValue"}];
        v73 = [v35 objectForKey:NSTemporaryTextCorrectionAttributeName];
        v74 = [v35 objectForKey:@"NSTextAlternatives"];
        if (v73)
        {
          v75 = [*(v331 + 8) string];
          v76 = v346.location;
          v77 = [*(v331 + 8) length];
          v78 = [v75 rangeOfString:v73 options:8 range:{v76, v77 - v346.location}];
          v80 = v79;
          if (v79)
          {
            v81 = v78;
            if ([v331 temporaryAttribute:NSTemporaryTextCorrectionAttributeName atCharacterIndex:v346.location longestEffectiveRange:v351 inRange:{v78, v79}])
            {
              if (__PAIR128__(v80, v81) == *&v351[0].a)
              {
                v82 = v279;
                if (v346.location < v280 || v346.location - v280 >= v279)
                {
                  v349 = 0;
                  v347 = 0.0;
                  v83 = [*(v331 + 8) string];
                  [v83 getParagraphStart:&v349 end:0 contentsEnd:&v347 forRange:{v346.location, v346.length}];
                  v280 = v349;
                  v82 = *&v347 - v349;
                }

                v279 = v82;
                if (v280 + v82 >= v277 && v272 >= v280)
                {
                  if (!_drawGlyphsForGlyphRange_atPoint__correctionUnderlineBehavior)
                  {
                    v124 = v81 + v80;
                    v125 = range1;
                    v126 = v277;
                    v105 = v277 > v81 + v80;
                    v10 = v331;
                    if (v105)
                    {
                      v326 = v124;
                      v359.location = [*(v331 + 8) nextWordFromIndex:v277 forward:0];
                      v359.length = v272 - v359.location;
                      v355.location = v277;
                      v355.length = range1;
                      v127 = NSUnionRange(v355, v359);
                      v125 = v127.length;
                      v126 = v127.location;
                      v124 = v326;
                    }

                    if (v124 >= v126)
                    {
                      v128 = v298;
                      if (v126 + v125 >= v81)
                      {
                        v128 = v298 | 0x80;
                      }

                      v298 = v128;
                    }

                    goto LABEL_146;
                  }

                  v298 |= 0x80uLL;
                }
              }
            }
          }
        }

        v10 = v331;
LABEL_146:
        if (v74)
        {
          v84 = [*(v10 + 8) string];
          v85 = [v74 primaryString];
          v86 = v346.location;
          v87 = [*(v10 + 8) length];
          v88 = [v84 rangeOfString:v85 options:8 range:{v86, v87 - v346.location}];
          v90 = v89;
          if (v89)
          {
            v91 = v88;
            if ([v10 temporaryAttribute:@"NSTextAlternatives" atCharacterIndex:v346.location longestEffectiveRange:v351 inRange:{v88, v89}])
            {
              v10 = v331;
              if (__PAIR128__(v90, v91) == *&v351[0].a)
              {
                v92 = v280;
                v93 = v279;
                if (v346.location < v280 || v346.location - v280 >= v279)
                {
                  v349 = 0;
                  v347 = 0.0;
                  v94 = [*(v331 + 8) string];
                  [v94 getParagraphStart:&v349 end:0 contentsEnd:&v347 forRange:{v346.location, v346.length}];
                  v92 = v349;
                  v93 = *&v347 - v349;
                }

                v279 = v93;
                v280 = v92;
                if (v92 + v93 >= v277)
                {
                  v95 = v298;
                  if (v272 >= v92)
                  {
                    v95 = v298 | 0x80;
                  }

                  v298 = v95;
                }
              }
            }

            else
            {
              v10 = v331;
            }
          }
        }

        if (!v327)
        {
          v327 = [getNSColorClass_0[0]() blackColor];
          v10 = v331;
        }

        v96 = _NSGlyphTreeGlyphRangeForCharacterRange(v10, v346.location, v346.length, 1, 1, 1, &v346);
        length = v97;
        location = v96;
        v293 = v71 | v70;
        v291 = v72 | v65;
        goto LABEL_161;
      }
    }

    v295 = 0;
    v302 = 0;
    goto LABEL_129;
  }
}

uint64_t __63__NSLayoutManager_NSPrivate___drawGlyphsForGlyphRange_atPoint___block_invoke()
{
  _drawGlyphsForGlyphRange_atPoint__isBidiDebugging = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  _drawGlyphsForGlyphRange_atPoint__correctionUnderlineBehavior = result;
  return result;
}

- (unsigned)_glyphAtIndex:(unint64_t)a3 characterIndex:(unint64_t *)a4 glyphInscription:(unint64_t *)a5 isValidIndex:(BOOL *)a6
{
  v9 = a3;
  v15 = 0;
  _NSFastFillAllGlyphHolesForGlyphRange(self, a3, 1uLL);
  v11 = _NSGlyphTreeGlyphAtIndex(self, v9, &v15);
  if (v15)
  {
    v12 = v9;
    if (a4)
    {
      v12 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, v9);
    }

    if (a5)
    {
      v13 = _NSGlyphTreeIntAttributeForGlyphAtIndex(self, v9, 5);
    }

    else
    {
      v13 = 0;
    }

    v9 = v12;
    if (a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
    if (a4)
    {
LABEL_10:
      *a4 = v9;
    }
  }

  if (a5)
  {
    *a5 = v13;
  }

  if (a6)
  {
    *a6 = v15;
  }

  return v11;
}

- (void)_setNeedToFlushGlyph:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_lmFlags = (*&self->_lmFlags & 0xF7FFFFFF | v3);
}

- (void)_simpleInsertGlyph:(unsigned int)a3 atGlyphIndex:(unint64_t)a4 characterIndex:(unint64_t)a5 elastic:(BOOL)a6
{
  v9 = 0;
  [(NSRunStorage *)self->_containerRuns insertElement:&v9 range:a4 coalesceRuns:1, 1];
  v8 = *(self->_extraData + 23);
  if (v8)
  {
    _NSInsertGlyphRangeInTextBlocks(v8, a4, 1);
  }
}

- (void)_simpleDeleteGlyphsInRange:(_NSRange)a3
{
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    [(NSRunStorage *)self->_containerRuns removeElementsInRange:a3.location coalesceRuns:a3.length, 1];
    v6 = *(self->_extraData + 23);
    if (v6)
    {

      _NSDeleteGlyphRangeFromTextBlocks(v6, location, length);
    }
  }
}

- (void)_insertGlyphs:(unsigned int *)a3 elasticAttributes:(BOOL *)a4 count:(unint64_t)a5 atGlyphIndex:(unint64_t)a6 characterIndex:(unint64_t)a7
{
  v7 = a6;
  v8 = a5;
  _NSGlyphTreeInsertGlyphs(self, a7, a6, a5, a3);
  for (; v8; --v8)
  {
    v15 = *a4++;
    _NSGlyphTreeSetIntAttributeForGlyphAtIndex(self, v7++, 1, v15, v11, v12, v13, v14, v17);
  }

  lmFlags = self->_lmFlags;
  if ((*&lmFlags & 0x80000) == 0)
  {
    self->_lmFlags = (*&lmFlags | 0x100000);
  }
}

- (CGRect)_currentAttachmentRect
{
  v2 = *(self->_extraData + 2);
  v3 = *(self->_extraData + 3);
  v4 = *(self->_extraData + 4);
  v5 = *(self->_extraData + 5);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_setCurrentAttachmentRect:(CGRect)a3 index:(unint64_t)a4
{
  extraData = self->_extraData;
  *(extraData + 16) = a3;
  *(extraData + 6) = a4;
}

- (void)_clearTemporaryAttributes
{
  extraData = self->_extraData;
  v4 = extraData[55];
  if (v4)
  {
    [v4 enumerateObjectsUsingBlock:&__block_literal_global_175];
    [*(self->_extraData + 55) removeAllObjects];
    extraData = self->_extraData;
  }

  v5 = extraData[9];
  if (v5)
  {

    *(self->_extraData + 9) = 0;
  }
}

uint64_t __55__NSLayoutManager_NSPrivate___clearTemporaryAttributes__block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [a2 performSelector:sel_removeView];
  }

  return result;
}

- (void)_clearTemporaryAttributesForCharacterRange:(_NSRange)a3 changeInLength:(int64_t)a4
{
  v31 = *MEMORY[0x1E69E9840];
  extraData = self->_extraData;
  v5 = *(extraData + 9);
  if (v5)
  {
    length = a3.length;
    location = a3.location;
    v9 = a3.length - a4;
    v34.length = [*(extraData + 9) count];
    v33.location = location;
    v33.length = v9;
    v34.location = 0;
    v10 = NSIntersectionRange(v33, v34);
    if (v10.length)
    {
      v11 = 0;
      v28 = v10.location;
      v29 = 0;
      if (v10.location < v10.location + v10.length)
      {
        v11 = 0;
        v12 = v10.location;
        do
        {
          v13 = [(NSLayoutManager *)self temporaryAttribute:@"NSViewTextAttachmentCellHelper" atCharacterIndex:v12 effectiveRange:&v28];
          if (v13)
          {
            v14 = v13;
            if (!v11)
            {
              v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            [v11 addObject:v14];
          }

          v12 = v29 + v28;
        }

        while (v29 + v28 < v10.location + v10.length);
      }

      [v5 replaceObjectsInRange:v10.location withObject:v10.length length:{+[NSAttributeDictionary emptyAttributeDictionary](NSAttributeDictionary, "emptyAttributeDictionary"), length}];
      if (v11)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v15 = [v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v25;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v11);
              }

              v19 = *(*(&v24 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v19 performSelector:sel_removeView];
              }
            }

            v16 = [v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
          }

          while (v16);
        }

        [*(self->_extraData + 55) minusSet:v11];
      }
    }

    else
    {
      v20 = [v5 count];
      if (location <= v20)
      {
        v21 = location;
      }

      else
      {
        v21 = v20;
      }

      if (location <= v20)
      {
        v22 = length;
      }

      else
      {
        v22 = location + length - v20;
      }

      v23 = +[NSAttributeDictionary emptyAttributeDictionary];

      [v5 insertObject:v23 range:{v21, v22}];
    }
  }
}

- (void)setAllowsOriginalFontMetricsOverride:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_lmFlags = (*&self->_lmFlags & 0xFFFFFDFF | v3);
}

- (void)_setHasSeenRightToLeft:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_lmFlags = (*&self->_lmFlags & 0xFDFFFFFF | v3);
}

- (void)setFlipsIfNeeded:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_lmFlags = (*&self->_lmFlags & 0xEFFFFFFF | v3);
}

- (void)setLineFragmentRect:(CGRect)a3 forGlyphRange:(_NSRange)a4 usedRect:(CGRect)a5 baselineOffset:(double)a6
{
  location = a4.location;
  [(NSLayoutManager *)self setLineFragmentRect:a4.location forGlyphRange:a4.length usedRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];

  [(NSLayoutManager *)self setBaselineOffset:location forGlyphAtIndex:a6];
}

- (double)baselineOffsetForGlyphAtIndex:(unint64_t)a3
{
  v4 = 0.0;
  _NSLayoutTreeGetBaselineOffsetForGlyphAtIndex(self, a3, &v4);
  return v4;
}

- (void)setIgnoresViewTransformations:(BOOL)a3
{
  lmFlags = self->_lmFlags;
  if (a3)
  {
    if ((*&lmFlags & 0x4000000) != 0)
    {
      return;
    }

    v5 = 0x4000000;
  }

  else
  {
    if ((*&lmFlags & 0x4000000) == 0)
    {
      return;
    }

    v5 = 0;
  }

  v6 = [(NSTextStorage *)self->_textStorage length];
  v7 = self->_lmFlags;
  self->_lmFlags = (*&v7 & 0xFBFFFFFF | v5);
  if (v6)
  {
    v8 = v6;
    if ((*&v7 & 0x8100000) != 0)
    {
      [(NSLayoutManager *)self _invalidateGlyphsForExtendedCharacterRange:0 changeInLength:v6, 0];
    }

    [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:0 isSoft:v8, 0];
  }
}

- (void)_setAlwaysDrawsActive:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *(self->_extraData + 112) = *(self->_extraData + 112) & 0xFFFF7FFF | v3;
}

- (id)_insertionPointHelperForGlyphAtIndex:(unint64_t)a3
{
  v196[256] = *MEMORY[0x1E69E9840];
  v193 = 0;
  v194 = 0;
  v191 = 0;
  v192 = 0;
  v189 = 0;
  v190 = 0;
  v5 = [(NSTextStorage *)self->_textStorage string];
  v6 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, a3, &v193);
  v7 = _NSLayoutTreeLineFragmentUsedRectForGlyphAtIndex(self, v193, 0);
  v9 = v8;
  v10 = [(NSLayoutManager *)self characterRangeForGlyphRange:v193 actualGlyphRange:v194, 0];
  v12 = v11;
  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    v18 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
  }

  else
  {
    v13 = v193;
    if ([(NSRunStorage *)self->_containerRuns count]<= v13)
    {
      return 0;
    }

    containerRuns = self->_containerRuns;
    *&v16 = _NSBlockNumberForIndex(containerRuns, v13, 0).n128_u64[0];
    v17 = 0;
    if (containerRuns->_gapBlockIndex <= v15)
    {
      v17 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
    }

    v18 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v17 + v15)];
  }

  if (v18)
  {
    v19 = v12 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    return 0;
  }

  v22 = [[NSInsertionPointHelper allocWithZone:?]];
  v20 = v22;
  if (v22)
  {
    v176 = v18;
    v177 = v10;
    v22->_charRange.location = v10;
    v22->_charRange.length = v12;
    v23 = NSAllocateCollectable(8 * (v12 + 1), 0);
    v20->_logicalPositions = v23;
    v24 = NSAllocateCollectable(8 * (v12 + 1), 0);
    v25 = 0;
    v20->_logicalCharIndexes = v24;
    if ((*(&self->_lmFlags + 3) & 2) != 0)
    {
      v25 = malloc_type_malloc(v12 + 1, 0x100004077774924uLL);
    }

    v187 = v25;
    v26 = 0;
    if (!v23)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      goto LABEL_179;
    }

    v185 = v5;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    if (!v24)
    {
      goto LABEL_179;
    }

    v30 = v25;
    if ((*(&self->_lmFlags + 3) & 2) == 0 || v25)
    {
      v183 = v23;
      v175 = v20;
      v174 = [objc_msgSend(v176 "textView")];
      [v176 lineFragmentPadding];
      v32 = v31;
      v33 = v7 + v9;
      v34 = v177 + v12;
      v184 = v24;
      if (v177 >= v177 + v12)
      {
        LOBYTE(v182) = 0;
        v36 = 0;
        v35 = 0;
        length = 0;
        range1 = 0x7FFFFFFFFFFFFFFFLL;
        v55 = v177;
        v37 = v185;
        goto LABEL_132;
      }

      length = 0;
      v35 = 0;
      v182 = 0;
      v36 = 0;
      v181 = (v24 + 1);
      range1 = 0x7FFFFFFFFFFFFFFFLL;
      v37 = v185;
      range1_8 = v177 + v12;
      while (1)
      {
        RangeOfCharacterClusterAtIndex = CFStringGetRangeOfCharacterClusterAtIndex();
        v40 = v39;
        if (v39 <= 1)
        {
          if ([(__CFString *)v37 characterAtIndex:RangeOfCharacterClusterAtIndex]== 13 && RangeOfCharacterClusterAtIndex + 1 < v34)
          {
            if ([(__CFString *)v37 characterAtIndex:?]== 10)
            {
              v40 = 2;
            }

            else
            {
              v40 = 1;
            }
          }

          else
          {
            v40 = 1;
          }
        }

        v41 = v40 + RangeOfCharacterClusterAtIndex;
        if (v40 + RangeOfCharacterClusterAtIndex < v34)
        {
          goto LABEL_41;
        }

        v42 = [(__CFString *)v37 characterAtIndex:v41 - 1];
        if (v42 > 132)
        {
          break;
        }

        if (v42 == 13)
        {
          if (v41 >= [(__CFString *)v37 length]|| [(__CFString *)v37 characterAtIndex:v40 + RangeOfCharacterClusterAtIndex]!= 10)
          {
            goto LABEL_131;
          }
        }

        else if (v42 == 10 || v42 == 12)
        {
          goto LABEL_131;
        }

LABEL_41:
        v43 = [(NSLayoutManager *)self glyphRangeForCharacterRange:RangeOfCharacterClusterAtIndex actualCharacterRange:v40, &v191];
        v45 = v44;
        if (!v192)
        {
          v192 = 1;
        }

        [(NSLayoutManager *)self locationForGlyphAtIndex:v43];
        v47 = v46;
        v48 = v43 + v45;
        v49 = v43 + 1;
        if (v43 + 1 < v43 + v45)
        {
          v50 = v45 - 1;
          do
          {
            [(NSLayoutManager *)self locationForGlyphAtIndex:v49];
            if (v51 < v47)
            {
              v47 = v51;
            }

            ++v49;
            --v50;
          }

          while (v50);
        }

        v24 = v184;
        v184[v35] = RangeOfCharacterClusterAtIndex;
        v183[v35] = v47;
        v30 = v187;
        if (v187)
        {
          v52 = _NSGlyphTreeBidiLevelForGlyphAtIndex(self, v43);
          v187[v35] = v52;
          LOBYTE(v182) = (v52 != 0) | v182;
          BYTE4(v182) = v52;
          v36 |= v52 == 0;
          if (([(NSLayoutManager *)self propertyForGlyphAtIndex:v43]& 4) != 0)
          {
            v53.length = length;
            if (length)
            {
              v53.location = range1;
              v197.location = RangeOfCharacterClusterAtIndex;
              v197.length = v40;
              v54 = NSUnionRange(v53, v197);
              range1 = v54.location;
              length = v54.length;
            }

            else
            {
              length = v40;
              range1 = RangeOfCharacterClusterAtIndex;
            }
          }

          else
          {
            length = 0;
            range1 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        v55 = v192 + v191;
        if (v41 < v192 + v191)
        {
          v196[0] = 0;
          v56 = [(NSTextStorage *)self->_textStorage attribute:@"NSFont" atIndex:RangeOfCharacterClusterAtIndex effectiveRange:&v189];
          if (v190 + v189 < v192 + v191)
          {
            v37 = v185;
            v30 = v187;
            goto LABEL_94;
          }

          v57 = v56;
          v58 = [(NSTextStorage *)self->_textStorage attribute:@"CTVerticalForms" atIndex:RangeOfCharacterClusterAtIndex effectiveRange:0];
          if (!v57)
          {
            v57 = NSDefaultFont();
          }

          v59 = [v58 BOOLValue];
          if (v58)
          {
            v60 = 1;
          }

          else
          {
            v60 = v174 == 0;
          }

          v61 = !v60;
          v30 = v187;
          if ((v59 & 1) != 0 || (v62 = v57, v61))
          {
            v62 = [v57 verticalFont];
          }

          if (v62)
          {
            v63 = v62;
          }

          else
          {
            v63 = v57;
          }

          v64 = [(NSLayoutManager *)self substituteFontForFont:v63];
          if (v43 < v48)
          {
            v65 = v64;
            v66 = 0.0;
            v67 = 1;
            do
            {
              v68 = _NSGlyphTreeGlyphAtIndex(self, v43, 0);
              if (v68)
              {
                v69 = v68;
                if (v68 != 0xFFFFFF && ![(NSLayoutManager *)self notShownAttributeForGlyphAtIndex:v43])
                {
                  v188 = v69;
                  v70 = [(UIFont *)v65 getCaretPositions:v195 forGlyph:v69 maximumLength:16];
                  if ((v70 - 1) > 0xE || v70 + v67 > 0xFF)
                  {
                    v73 = v67;
                  }

                  else
                  {
                    v71 = v195;
                    do
                    {
                      v72 = *v71++;
                      v73 = v67 + 1;
                      *&v196[v67++] = v66 + v72;
                      --v70;
                    }

                    while (v70);
                  }

                  [(UIFont *)v65 _totalAdvancementForNativeGlyphs:&v188 count:1];
                  v66 = v66 + v74;
                  v67 = v73;
                }
              }

              ++v43;
            }

            while (v43 != v48);
            if (v66 <= 0.0 || v67 > 1)
            {
              v24 = v184;
              v34 = range1_8;
              if (v66 <= 0.0)
              {
                goto LABEL_113;
              }

              v76 = v192 + v191;
            }

            else
            {
              v75 = v191;
              v76 = v192 + v191;
              v24 = v184;
              v34 = range1_8;
              if (v191 < v192 + v191)
              {
                while (1)
                {
                  v77 = [(__CFString *)v185 characterAtIndex:v75];
                  if ((v77 - 1792) >> 9 < 0xB || v77 >> 8 > 0x30 || v77 - 11904 < 0x180)
                  {
                    break;
                  }

                  ++v75;
                  v76 = v192 + v191;
                  if (v75 >= v192 + v191)
                  {
                    goto LABEL_100;
                  }
                }

LABEL_113:
                v37 = v185;
LABEL_95:
                v55 = v192 + v191;
                goto LABEL_96;
              }
            }

LABEL_100:
            v78 = v35;
            v37 = v185;
            if (v41 < v76)
            {
              v78 = v35;
              do
              {
                v79 = CFStringGetRangeOfCharacterClusterAtIndex();
                *&v181[8 * v78] = v79;
                if (v187)
                {
                  v187[v78 + 1] = BYTE4(v182);
                }

                ++v78;
              }

              while (v79 + v80 < v192 + v191);
            }

            v81 = v78 - v35 + 1;
            if (v67 == v81)
            {
              v82 = v78 - v35;
              if (v78 >= v35)
              {
                v83 = 0;
                do
                {
                  if ((v182 & 0x100000000) != 0)
                  {
                    v84 = v82;
                  }

                  else
                  {
                    v84 = v83;
                  }

                  v183[v35++] = v47 + *&v196[v84];
                  --v82;
                  ++v83;
                }

                while (v35 <= v78);
              }
            }

            else
            {
              v85 = v78 - v35;
              if (v78 >= v35)
              {
                v86 = 0;
                v87 = v81;
                v88 = v35 + 1;
                if (v35 + 1 <= v78 + 1)
                {
                  v88 = v78 + 1;
                }

                v89 = v88 - v35;
                v90 = (v88 - v35 + 1) & 0xFFFFFFFFFFFFFFFELL;
                v91 = vdupq_n_s64(v89 - 1);
                v92 = &v183[v35 + 1];
                do
                {
                  v93 = vmovn_s64(vcgeq_u64(v91, vorrq_s8(vdupq_n_s64(v86), xmmword_18E856290)));
                  if (v93.i8[0])
                  {
                    if ((v182 & 0x100000000) != 0)
                    {
                      v94 = v85;
                    }

                    else
                    {
                      v94 = v86;
                    }

                    *(v92 - 1) = v47 + v66 * v94 / v87;
                  }

                  if (v93.i8[4])
                  {
                    v95 = v85 - 1;
                    if ((v182 & 0x100000000) == 0)
                    {
                      v95 = v86 + 1;
                    }

                    *v92 = v47 + v66 * v95 / v87;
                  }

                  v86 += 2;
                  v85 -= 2;
                  v92 += 2;
                }

                while (v90 != v86);
              }
            }

            v35 = v78;
            v24 = v184;
            goto LABEL_95;
          }

          v24 = v184;
          v37 = v185;
LABEL_94:
          v34 = range1_8;
          goto LABEL_95;
        }

        v37 = v185;
        v34 = range1_8;
LABEL_96:
        ++v35;
        if (v55 >= v34)
        {
          goto LABEL_132;
        }
      }

      if ((v42 - 8232) >= 2 && v42 != 133)
      {
        goto LABEL_41;
      }

LABEL_131:
      v55 = RangeOfCharacterClusterAtIndex;
LABEL_132:
      HasRightToLeftBaseWritingDirectionAtIndex = 0;
      v97 = v7 + v32;
      v98 = v33 - v32;
      if (v30)
      {
        v99 = v36;
        v100 = v175;
        if ((v99 & 1) == 0)
        {
          v101 = [(NSTextStorage *)self->_textStorage attribute:@"NSParagraphStyle" atIndex:v177 effectiveRange:0];
          v102 = v101;
          if (!v101 || (HasRightToLeftBaseWritingDirectionAtIndex = [v101 baseWritingDirection], HasRightToLeftBaseWritingDirectionAtIndex == -1))
          {
            v103 = [v176 textView];
            if (objc_opt_respondsToSelector())
            {
              v102 = [v103 defaultParagraphStyle];
            }

            v24 = v184;
            if (!v102 || (HasRightToLeftBaseWritingDirectionAtIndex = [v102 baseWritingDirection], HasRightToLeftBaseWritingDirectionAtIndex == -1))
            {
              HasRightToLeftBaseWritingDirectionAtIndex = _NSStringHasRightToLeftBaseWritingDirectionAtIndex(v37, v177, 0, [(__CFString *)v37 length]);
            }
          }
        }
      }

      else
      {
        v100 = v175;
      }

      v104 = v97 - v6;
      v105 = v98 - v6;
      v100->_writingDirection = HasRightToLeftBaseWritingDirectionAtIndex;
      if (v35)
      {
        v106 = v183;
        v107 = v35;
        v108 = v105;
        do
        {
          v109 = *v106++;
          v110 = v109;
          if (v109 < v108)
          {
            v108 = v110;
          }

          if (v110 > v104)
          {
            v104 = v110;
          }

          --v107;
        }

        while (v107);
      }

      else
      {
        v108 = v105;
      }

      v24[v35] = v55;
      v186 = HasRightToLeftBaseWritingDirectionAtIndex;
      if (HasRightToLeftBaseWritingDirectionAtIndex == 1)
      {
        v111 = v108;
      }

      else
      {
        v111 = v105;
      }

      v183[v35] = v111;
      if (v30)
      {
        v30[v35] = HasRightToLeftBaseWritingDirectionAtIndex == 1;
      }

      v112 = v35 + 1;
      v113 = v100;
      v100->_count = v35 + 1;
      p_count = &v100->_count;
      v26 = malloc_type_malloc(32 * (v35 + 1), 0x1000040E0EAB150uLL);
      p_count[3] = NSAllocateCollectable(8 * (v35 + 1), 0);
      p_count[4] = NSAllocateCollectable(8 * (v35 + 1), 0);
      p_count[6] = NSAllocateCollectable(8 * (v35 + 1), 0);
      v115 = NSAllocateCollectable(8 * (v35 + 1), 0);
      p_count[7] = v115;
      if (!v26 || !v113->_logicalLeftBoundaries || !v113->_logicalRightBoundaries)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        goto LABEL_178;
      }

      v27 = 0;
      if (!v113->_displayPositions)
      {
        v28 = 0;
        v29 = 0;
        goto LABEL_178;
      }

      v28 = 0;
      v29 = 0;
      if (!v115)
      {
LABEL_178:
        *p_count = 0;
        v20 = v175;
        goto LABEL_179;
      }

      if (v35 != -1)
      {
        v116 = 0;
        v117 = v26 + 2;
        do
        {
          *v117 = *&v183[v116];
          *(v117 - 2) = v24[v116++];
          v117 += 4;
        }

        while (v35 + 1 != v116);
        if (v182)
        {
          v118 = v26 + 1;
          v119 = v187;
          v120 = v35 + 1;
          do
          {
            v121 = *v119++;
            *v118 = v121;
            v118 += 4;
            --v120;
          }

          while (v120);
          if (range1 != 0x7FFFFFFFFFFFFFFFLL && length)
          {
            v122 = v26 + 1;
            v123 = v35 + 1;
            do
            {
              v124 = *(v122 - 1);
              v126 = v124 >= range1;
              v125 = v124 - range1;
              v126 = !v126 || v125 >= length;
              if (!v126)
              {
                *v122 = v187[v35];
              }

              v122 += 4;
              --v123;
            }

            while (v123);
          }
        }

        else
        {
          v127 = vdupq_n_s64(v35);
          v128 = (v35 & 0xFFFFFFFFFFFFFFFELL) + 2;
          v129 = xmmword_18E856290;
          v130 = v26 + 5;
          v131 = vdupq_n_s64(2uLL);
          do
          {
            v132 = vmovn_s64(vcgeq_u64(v127, v129));
            if (v132.i8[0])
            {
              *(v130 - 4) = 0;
            }

            if (v132.i8[4])
            {
              *v130 = 0;
            }

            v129 = vaddq_s64(v129, v131);
            v130 += 8;
            v128 -= 2;
          }

          while (v128);
        }
      }

      v133 = v108 + -1.0;
      if (v186 != 1)
      {
        v133 = v104 + 1.0;
      }

      v134 = &v26[4 * v35];
      v134[2] = v133;
      if (v186 == 1)
      {
        v135 = _NSInsertionPointDisplayCompareR;
      }

      else
      {
        v135 = _NSInsertionPointDisplayCompareL;
      }

      qsort(v26, v35 + 1, 0x20uLL, v135);
      if (v35 == -1)
      {
        v134[3] = v105;
        qsort(v26, 0, 0x20uLL, _NSInsertionPointLogicalCompare);
        v20 = v175;
        v143 = v183;
      }

      else
      {
        v136 = (v26 + 2);
        v137 = v35 + 1;
        do
        {
          if (*(v136 - 2) == v55)
          {
            *v136 = v111;
          }

          v136 += 4;
          --v137;
        }

        while (v137);
        if (v35)
        {
          v138 = v26 + 3;
          do
          {
            *v138 = v138[3];
            v138 += 4;
            --v35;
          }

          while (v35);
        }

        v134[3] = v105;
        v20 = v175;
        if (!((v112 == 0) | v182 & 1))
        {
          displayPositions = v175->_displayPositions;
          displayCharIndexes = v175->_displayCharIndexes;
          v141 = (v26 + 2);
          v142 = v112;
          do
          {
            *displayPositions++ = *v141;
            *displayCharIndexes++ = *(v141 - 2);
            v141 += 4;
            --v142;
          }

          while (v142);
        }

        qsort(v26, v112, 0x20uLL, _NSInsertionPointLogicalCompare);
        v143 = v183;
        if (v112)
        {
          logicalLeftBoundaries = v175->_logicalLeftBoundaries;
          logicalRightBoundaries = v175->_logicalRightBoundaries;
          v146 = (v26 + 3);
          v147 = v112;
          do
          {
            *logicalLeftBoundaries++ = *(v146 - 1);
            v148 = *v146;
            v146 += 4;
            *logicalRightBoundaries++ = v148;
            --v147;
          }

          while (v147);
        }
      }

      if ((v182 & 1) == 0)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        goto LABEL_179;
      }

      v28 = malloc_type_malloc(8 * v112, 0x100004000313F17uLL);
      v29 = malloc_type_malloc(8 * v112, 0x100004000313F17uLL);
      v149 = malloc_type_malloc(v112, 0x100004077774924uLL);
      v27 = v149;
      if (v28 && v29 && v149)
      {
        if (!v112)
        {
          v151 = 0;
          qsort(v26, 0, 0x20uLL, v135);
          goto LABEL_254;
        }

        v150 = 0;
        v151 = 0;
        v152 = v26 + 3;
        while (1)
        {
          v153 = *(v152 - 3);
          v29[v151] = v153;
          v184[v150] = v153;
          LOBYTE(v153) = *(v152 - 16);
          v149[v150] = v153;
          v187[v150] = v153;
          v154 = *(v152 - 2);
          if (v186 == 1)
          {
            if (v154)
            {
              v143[v150] = *v152;
              if (!v150 || (*(v152 - 6) & 1) != 0)
              {
                goto LABEL_246;
              }

              v156 = *(v152 - 4);
            }

            else
            {
              if (v150)
              {
                if ((*(v152 - 6) & 1) == 0)
                {
                  v155 = *(v152 - 1);
LABEL_245:
                  v143[v150] = v155;
                  goto LABEL_246;
                }

                v143[v150] = *(v152 - 5);
              }

              else
              {
                *v143 = v105;
              }

              v156 = *(v152 - 1);
            }
          }

          else if (v154)
          {
            if (v150)
            {
              if (*(v152 - 6))
              {
                v155 = *v152;
                goto LABEL_245;
              }

              v143[v150] = *(v152 - 4);
            }

            else
            {
              *v143 = v108;
            }

            v156 = *v152;
          }

          else
          {
            v143[v150] = *(v152 - 1);
            if (!v150 || (*(v152 - 6) & 1) == 0)
            {
              goto LABEL_246;
            }

            v156 = *(v152 - 5);
          }

          v28[v151++] = v156;
LABEL_246:
          ++v150;
          v152 += 4;
          if (v112 == v150)
          {
            v157 = 2;
            v158 = v112;
            do
            {
              v159 = *v143++;
              *&v26[v157] = v159;
              v157 += 4;
              --v158;
            }

            while (v158);
            qsort(v26, v112, 0x20uLL, v135);
            v160 = v20->_displayPositions;
            v161 = v20->_displayCharIndexes;
            v162 = (v26 + 2);
            do
            {
              *v160++ = *v162;
              *v161++ = *(v162 - 2);
              v162 += 4;
              --v112;
            }

            while (v112);
LABEL_254:
            if (v151)
            {
              v163 = v20;
              v20->_altCount = v151;
              p_count = &v20->_altCount;
              p_count[7] = NSAllocateCollectable(8 * v151, 0);
              p_count[8] = NSAllocateCollectable(8 * v151, 0);
              p_count[9] = NSAllocateCollectable(8 * v151, 0);
              v164 = NSAllocateCollectable(8 * v151, 0);
              p_count[10] = v164;
              v165 = p_count[7];
              if (v165)
              {
                logicalAltCharIndexes = v163->_logicalAltCharIndexes;
                if (logicalAltCharIndexes)
                {
                  if (v163->_displayAltPositions && v164)
                  {
                    v167 = 0;
                    v168 = v26 + 2;
                    do
                    {
                      v169 = v28[v167];
                      *(v165 + 8 * v167) = v169;
                      *v168 = v169;
                      v170 = v29[v167];
                      logicalAltCharIndexes[v167] = v170;
                      *(v168 - 2) = v170;
                      *(v168 - 1) = v27[v167++];
                      v168 += 4;
                    }

                    while (v151 != v167);
                    qsort(v26, v151, 0x20uLL, v135);
                    v20 = v175;
                    displayAltPositions = v175->_displayAltPositions;
                    displayAltCharIndexes = v175->_displayAltCharIndexes;
                    v173 = (v26 + 2);
                    do
                    {
                      *displayAltPositions++ = *v173;
                      *displayAltCharIndexes++ = *(v173 - 2);
                      v173 += 4;
                      --v151;
                    }

                    while (v151);
                    break;
                  }
                }
              }

              goto LABEL_178;
            }

            break;
          }
        }
      }

LABEL_179:
      if (v187)
      {
        free(v187);
      }

      if (v28)
      {
        free(v28);
      }

      if (v29)
      {
        free(v29);
      }

      if (v27)
      {
        free(v27);
      }

      if (v26)
      {
        free(v26);
      }
    }
  }

  return v20;
}

- (int64_t)getLineFragmentInsertionPointArraysForCharacterAtIndex:(unint64_t)a3 inDisplayOrder:(BOOL)a4 positions:(double *)a5 characterIndexes:(unint64_t *)a6 count:(unint64_t *)a7 alternatePositions:(double *)a8 characterIndexes:(unint64_t *)a9 count:(unint64_t *)a10
{
  v14 = a4;
  v15 = _insertionPointHelperForCharacterAtIndex(self, a3);
  if (v15)
  {
    v16 = v15;
    result = v15->_writingDirection;
    if (a5)
    {
      v18 = 48;
      if (v14)
      {
        v18 = 80;
      }

      *a5 = *(&v16->super.isa + v18);
    }

    if (a6)
    {
      v19 = 72;
      if (v14)
      {
        v19 = 88;
      }

      *a6 = *(&v16->super.isa + v19);
    }

    if (a7)
    {
      *a7 = v16->_count;
    }

    if (a8)
    {
      v20 = 96;
      if (v14)
      {
        v20 = 112;
      }

      *a8 = *(&v16->super.isa + v20);
    }

    if (a9)
    {
      v21 = 104;
      if (v14)
      {
        v21 = 120;
      }

      *a9 = *(&v16->super.isa + v21);
    }

    if (a10)
    {
      altCount = v16->_altCount;
LABEL_33:
      *a10 = altCount;
    }
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      *a6 = 0;
    }

    if (a7)
    {
      *a7 = 0;
    }

    if (a8)
    {
      *a8 = 0;
    }

    if (a9)
    {
      *a9 = 0;
    }

    altCount = 0;
    result = 0;
    if (a10)
    {
      goto LABEL_33;
    }
  }

  return result;
}

- (void)_setDrawsUnderlinesLikeWebKit:(BOOL)a3
{
  extraData = self->_extraData;
  v8 = extraData[112];
  if (((((v8 & 0x20000) == 0) ^ a3) & 1) == 0)
  {
    v12 = v3;
    if (a3)
    {
      v10 = 0x20000;
    }

    else
    {
      v10 = 0;
    }

    extraData[112] = v8 & 0xFFFDFFFF | v10;
    v11 = [(NSTextStorage *)[(NSLayoutManager *)self textStorage:v4] length];

    [(NSLayoutManager *)self invalidateLayoutForCharacterRange:0 actualCharacterRange:v11, 0];
  }
}

- (void)_setDrawsDebugBaselines:(BOOL)a3
{
  extraData = self->_extraData;
  v8 = extraData[112];
  if (((((v8 & 0x40000) == 0) ^ a3) & 1) == 0)
  {
    v12 = v3;
    if (a3)
    {
      v10 = 0x40000;
    }

    else
    {
      v10 = 0;
    }

    extraData[112] = v8 & 0xFFFBFFFF | v10;
    v11 = [(NSTextStorage *)[(NSLayoutManager *)self textStorage:v4] length];

    [(NSLayoutManager *)self invalidateLayoutForCharacterRange:0 actualCharacterRange:v11, 0];
  }
}

- (void)_setMirrorsTextAlignment:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  *(self->_extraData + 112) = *(self->_extraData + 112) & 0xFFF7FFFF | v3;
}

- (void)_setForcesTrackingFloor:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  *(self->_extraData + 112) = *(self->_extraData + 112) & 0xFFEFFFFF | v3;
}

- (void)showAttachment:(id)a3 inRect:(CGRect)a4 textContainer:(id)a5 characterIndex:(unint64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = [a3 attachmentCell];
  if (v14)
  {

    [(NSLayoutManager *)self showAttachmentCell:v14 inRect:a6 characterIndex:x, y, width, height];
  }

  else
  {
    if (a3)
    {
      [a3 lineLayoutPadding];
      v16 = v15;
      v17 = [(NSLayoutManager *)self applicationFrameworkContext];
      if (v16 != 0.0)
      {
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        v41 = NSInsetRect(v40, v16, 0.0);
        x = v41.origin.x;
        y = v41.origin.y;
        width = v41.size.width;
        height = v41.size.height;
      }
    }

    else
    {
      v17 = [(NSLayoutManager *)self applicationFrameworkContext];
    }

    if ([a3 usesTextAttachmentView] && (v18 = objc_msgSend(a5, "textView")) != 0 && (v19 = v18, v20 = objc_msgSend(a3, "viewProviderForParentView:characterIndex:layoutManager:", v18, a6, self), (v21 = objc_msgSend(v20, "view")) != 0))
    {
      v22 = v21;
      [v19 contentScaleFactor];
      (softLinkUIRectIntegralWithScale[0])(x, y - height, width, height, v23);
      [a3 placeView:v22 withFrame:v19 inParentView:a6 characterIndex:self layoutManager:?];
      v24 = *(self->_extraData + 55);
      if (!v24)
      {
        *(self->_extraData + 55) = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v24 = *(self->_extraData + 55);
      }

      [v24 addObject:v20];
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [v22 setHidden:0];
      v25 = MEMORY[0x1E6979518];

      [v25 commit];
    }

    else
    {
      v26 = [a3 imageForBounds:a5 textContainer:a6 characterIndex:{x, y, width, height}];
      v27 = [a3 image];
      if (v17 == 2)
      {
        v28 = v27;
        if (v26 == v27)
        {
          if ([v27 conformsToProtocol:&unk_1F01F0D38])
          {
            v29 = [objc_msgSend(objc_msgSend(a5 "layoutManager")];
            if ([v28 willProvideAdaptedImageForPresentation])
            {
              v26 = [v28 imageForBounds:v29 attributes:0 location:a5 textContainer:{x, y, width, height}];
            }
          }
        }
      }

      v30 = [-[objc_class graphicsContextForApplicationFrameworkContext:](+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider "textGraphicsContextProviderClass")];
      v31 = y - height;
      if (v30)
      {
        v32 = v30;
        v33 = x;
        v34 = CGContextConvertPointToDeviceSpace(v30, *(&v31 - 1));
        v39.x = floor(v34.x + 0.5);
        v39.y = floor(v34.y + 0.5);
        v37 = CGContextConvertPointToUserSpace(v32, v39);
        v36 = v37.y;
        v35 = v37.x;
      }

      else
      {
        v35 = floor(x + 0.5);
        v36 = floor(v31 + 0.5);
      }

      [v26 drawInRect:{v35, v36, width, height}];
    }
  }
}

- (_NSRange)rangeOfCharacterClusterAtIndex:(unint64_t)a3 type:(int64_t)a4
{
  v5 = [(NSTextStorage *)self->_textStorage string];
  RangeOfCharacterClusterAtIndex = CFStringGetRangeOfCharacterClusterAtIndex();
  v8 = v7;
  v12 = RangeOfCharacterClusterAtIndex;
  v13 = v7;
  if (v7 == 2)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(v5, RangeOfCharacterClusterAtIndex);
    if (((CFStringGetCharacterAtIndex(v5, RangeOfCharacterClusterAtIndex + 1) + (CharacterAtIndex << 10)) & 0x7FFFFE0) == 0x361CDE0)
    {
      [(NSLayoutManager *)self glyphRangeForCharacterRange:RangeOfCharacterClusterAtIndex actualCharacterRange:2, &v12];
      RangeOfCharacterClusterAtIndex = v12;
      v8 = v13;
    }

    else
    {
      v8 = 2;
    }
  }

  v10 = RangeOfCharacterClusterAtIndex;
  v11 = v8;
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)_setExtraLineFragmentRect:(CGRect)a3 usedRect:(CGRect)a4 textContainer:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  if (self->_extraLineFragmentContainer)
  {
    memset(&v19, 0, sizeof(v19));
    _NSLayoutTreeGetExtraLineFragmentRect(self, &v19, 0);
    if (!NSIsEmptyRect(v19))
    {
      extraLineFragmentContainer = self->_extraLineFragmentContainer;
      v19.origin.x = 0.0;
      extraData = self->_extraData;
      if (extraData[10] == extraLineFragmentContainer)
      {
        v17 = 0.0;
      }

      else
      {
        if (!CFDictionaryGetValueIfPresent(extraData[11], extraLineFragmentContainer, &v19))
        {
          goto LABEL_9;
        }

        v17 = v19.origin.x;
        if (*&v19.origin.x == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_9;
        }
      }

      [(NSLayoutManager *)self _invalidateUsageForTextContainersInRange:*&v17, 1, *&v19.origin.x];
    }
  }

LABEL_9:
  _NSLayoutTreeSetExtraLineFragmentRect(self, v13, v12, v11, v10, x, y, width, height);
  self->_extraLineFragmentContainer = a5;
  if (a5)
  {
    v20.origin.x = v13;
    v20.origin.y = v12;
    v20.size.width = v11;
    v20.size.height = v10;
    if (!NSIsEmptyRect(v20))
    {
      [(NSLayoutManager *)self _updateUsageForTextContainer:a5 addingUsedRect:x, y, width, height];
      [(NSLayoutManager *)self invalidateDisplayForCharacterRange:[(NSTextStorage *)self->_textStorage length], 0];
      if ([a5 textView])
      {
        if (![(NSTextStorage *)self->_textStorage length])
        {
          v18 = [a5 textView];
          [v18 bounds];
          [v18 setNeedsDisplayInRect:1 avoidAdditionalLayout:?];
        }
      }
    }
  }
}

- (void)_setTextContainer:(id)a3 forGlyphRange:(_NSRange)a4
{
  v24 = a3;
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    v23 = 0uLL;
    containerRuns = self->_containerRuns;
    *&v14 = _NSBlockNumberForIndex(containerRuns, a4.location, &v23).n128_u64[0];
    v15 = 0;
    if (containerRuns->_gapBlockIndex <= v9)
    {
      v15 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
    }

    if (&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v15 + v9)] != a3 || v23.n128_u64[1] + v23.n128_u64[0] < location + length)
    {
      [(NSRunStorage *)self->_containerRuns replaceElementsInRange:location withElement:length coalesceRuns:&v24, 1, v14];
    }

    _NSLayoutTreeInvalidateLayoutForGlyphRange(self, location, length, 0, v10, v11, v12, v13, v21);
    if (v24)
    {
      _NSGlyphTreeResetLayoutAttributesForGlyphsInRange(self, location, length, v16, v17, v18, v19, v20, v22);
    }
  }
}

- (void)setParagraphArbitrator:(id)a3
{
  v4 = *(self->_extraData + 53);
  if (v4 != a3)
  {
    v6 = v4;
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = [[NSParagraphArbitrator alloc] initWithAttributedString:0 range:0x7FFFFFFFFFFFFFFFLL, 0];
    }

    *(self->_extraData + 53) = v5;
  }
}

- (void)setStyleEffectConfiguration:(id)a3
{
  extraData = self->_extraData;
  if (extraData[54] != a3)
  {
    v4 = extraData[54];
    *(self->_extraData + 54) = [a3 copy];
  }
}

- (void)setViewProvider:(id)a3 forTextAttachment:(id)a4 characterIndex:(unint64_t)a5
{
  if (a3)
  {
    [(NSLayoutManager *)self addTemporaryAttribute:@"NSViewTextAttachmentCellHelper" value:a3 forCharacterRange:a5, 1];
  }
}

- (void)beginScrollingForView:(id)a3 textContainer:(id)a4
{
  if (beginScrollingForView_textContainer__onceToken != -1)
  {
    [NSLayoutManager(NSPrivate) beginScrollingForView:textContainer:];
  }

  if ([(NSLayoutManager *)self hasNonContiguousLayout])
  {
    if ((beginScrollingForView_textContainer__allowsLiveScrollOptimization & 1) == 0)
    {
      *(self->_extraData + 112) |= 0x200000u;
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      *(self->_extraData + 63) = v5;
    }
  }
}

uint64_t __66__NSLayoutManager_NSPrivate__beginScrollingForView_textContainer___block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    beginScrollingForView_textContainer__allowsLiveScrollOptimization = 1;
  }

  return result;
}

- (void)endScrollingForView:(id)a3 textContainer:(id)a4
{
  *(self->_extraData + 112) &= ~0x200000u;
  if ([(NSLayoutManager *)self hasNonContiguousLayout])
  {
    [a3 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(NSLayoutManager *)self _noteFirstTextViewVisibleCharacterRangeIfAfterIndex:0];
    [(NSLayoutManager *)self _invalidateUsageForTextContainersInRange:0, 1];
    v15 = [(NSMutableArray *)self->_textContainers count];
    v16 = [(NSMutableArray *)self->_textContainers count];
    if (v16)
    {
      v17 = v16;
      for (i = 0; i != v17; ++i)
      {
        if (*(CFStorageGetValueAtIndex() + 64))
        {
          [(NSLayoutManager *)self _recalculateUsageForTextContainerAtIndex:i];
        }
      }
    }

    if (v15)
    {
      for (j = 0; j != v15; ++j)
      {
        if ((*(CFStorageGetValueAtIndex() + 64) & 2) != 0)
        {
          [(NSLayoutManager *)self _resizeTextViewForTextContainer:[(NSMutableArray *)self->_textContainers objectAtIndex:j]];
        }
      }
    }

    [a3 bounds];
    v33.origin.x = v20;
    v33.origin.y = v21;
    v33.size.width = v22;
    v33.size.height = v23;
    v31.origin.x = v8;
    v31.origin.y = v10;
    v31.size.width = v12;
    v31.size.height = v14;
    if (NSEqualRects(v31, v33))
    {
      [a3 visibleRect];
      x = v32.origin.x;
      y = v32.origin.y;
      width = v32.size.width;
      height = v32.size.height;
      if (!NSIsEmptyRect(v32))
      {
        v28 = [(NSLayoutManager *)self glyphRangeForBoundingRectWithoutAdditionalLayout:a4 inTextContainer:x, y, width, height];
        if (v29)
        {
          [(NSLayoutManager *)self _primitiveInvalidateDisplayForGlyphRange:v28, v29];
        }
      }
    }
  }

  [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
  *(self->_extraData + 63) = v30;
}

- (CGRect)prepareLayoutForBoundingRect:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = ![(NSLayoutManager *)self isScrolling];
  if (prepareLayoutForBoundingRect_textContainer__onceToken != -1)
  {
    [NSLayoutManager(NSPrivate) prepareLayoutForBoundingRect:textContainer:];
  }

  p_extraData = &self->_extraData;
  while ((*(*(self->_extraData + 30) + 56) & 1) != 0)
  {
    v12 = [(NSLayoutManager *)self glyphRangeForBoundingRect:a4 inTextContainer:x, y, width, height];
    v13 = v12;
    v15 = v14;
    v29 = 0;
    if ((*&self->_lmFlags & 0x40000000) != 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }

    _NSLayoutTreeGetFirstHoleAfterGlyphIndex(self, v16, &v29);
    if (v29 >= v13 + v15)
    {
      break;
    }

    [(NSLayoutManager *)self ensureLayoutForGlyphRange:v13, v15];
    if (v13 + v15 < [(NSLayoutManager *)self numberOfGlyphs])
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      if (v17 - *(*p_extraData + 63) <= *&prepareLayoutForBoundingRect_textContainer__timeStampDelta)
      {
        continue;
      }
    }

    v10 = 1;
    p_extraData = &self->_extraData;
  }

  if ([(NSLayoutManager *)self hasNonContiguousLayout]&& (v10 & 1) != 0)
  {
    v18 = [(NSLayoutManager *)self isScrolling];
    *(*p_extraData + 112) &= ~0x200000u;
    v19 = [(NSMutableArray *)self->_textContainers count];
    v20 = [(NSMutableArray *)self->_textContainers count];
    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*(CFStorageGetValueAtIndex() + 64))
        {
          [(NSLayoutManager *)self _recalculateUsageForTextContainerAtIndex:i];
        }
      }
    }

    if (v19)
    {
      for (j = 0; j != v19; ++j)
      {
        if ((*(CFStorageGetValueAtIndex() + 64) & 2) != 0)
        {
          [(NSLayoutManager *)self _resizeTextViewForTextContainer:[(NSMutableArray *)self->_textContainers objectAtIndex:j]];
        }
      }
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *(*p_extraData + 63) = v23;
    if (v18)
    {
      v24 = 0x200000;
    }

    else
    {
      v24 = 0;
    }

    *(*p_extraData + 112) = *(*p_extraData + 112) & 0xFFDFFFFF | v24;
  }

  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

uint64_t __73__NSLayoutManager_NSPrivate__prepareLayoutForBoundingRect_textContainer___block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [v0 doubleValue];
    prepareLayoutForBoundingRect_textContainer__timeStampDelta = v2;
  }

  return result;
}

- (id)underlineColorForTextAlternatives
{
  if ((*(self->_extraData + 450) & 0x40) != 0)
  {
    return objc_getAssociatedObject(self, sel_underlineColorForTextAlternatives);
  }

  else
  {
    return 0;
  }
}

- (void)setUnderlineColorForTextAlternatives:(id)a3
{
  v4 = a3 != 0;
  objc_setAssociatedObject(self, sel_underlineColorForTextAlternatives, a3, 0x301);
  *(self->_extraData + 112) = *(self->_extraData + 112) & 0xFFBFFFFF | (v4 << 22);
}

- (id)underlineColorForSpelling
{
  if ((*(self->_extraData + 450) & 0x40) != 0)
  {
    return objc_getAssociatedObject(self, sel_underlineColorForSpelling);
  }

  else
  {
    return 0;
  }
}

- (void)setUnderlineColorForSpelling:(id)a3
{
  v4 = a3 != 0;
  objc_setAssociatedObject(self, sel_underlineColorForSpelling, a3, 0x301);
  *(self->_extraData + 112) = *(self->_extraData + 112) & 0xFFBFFFFF | (v4 << 22);
}

- (void)setApplicationFrameworkContext:(int64_t)a3
{
  if (!a3)
  {
    LOBYTE(a3) = _NSTextScalingTypeForCurrentEnvironment();
  }

  *(self->_extraData + 112) = *(self->_extraData + 112) & 0xFC7FFFFF | ((a3 & 7) << 23);
}

- (id)renderingColorForDocumentColor:(id)a3
{
  v5 = *(self->_extraData + 112);
  if ((v5 & 0x8000000) == 0)
  {
    goto LABEL_4;
  }

  result = [-[NSLayoutManager delegate](self "delegate")];
  if (!result)
  {
    v5 = *(self->_extraData + 112);
LABEL_4:
    if ((v5 & 0x10000000) != 0)
    {
      result = [self->_firstTextView renderingColorForDocumentColor:a3];
    }

    else
    {
      result = 0;
    }
  }

  if (!result)
  {
    return a3;
  }

  return result;
}

- (void)fillMarkedBackgroundRectArray:(const CGRect *)a3 count:(unint64_t)a4 forCharacterRange:(_NSRange)a5 color:(id)a6
{
  v6 = a4;
  if ((*(self->_extraData + 451) & 0x20) != 0)
  {
    if (a4)
    {
      v8 = [-[objc_class graphicsContextForApplicationFrameworkContext:](+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider textGraphicsContextProviderClass];
      CGContextSaveGState(v8);
      CGContextSetShouldAntialias(v8, 1);
      p_size = &a3->size;
      do
      {
        v12 = *&p_size[-1].width;
        p_size += 2;
        v10 = CGPathCreateWithRoundedRect(v12, 3.0, 3.0, 0);
        CGContextAddPath(v8, v10);
        CGContextFillPath(v8);
        CGPathRelease(v10);
        --v6;
      }

      while (v6);

      CGContextRestoreGState(v8);
    }
  }

  else
  {

    [(NSLayoutManager *)self fillBackgroundRectArray:a3 count:a4 forCharacterRange:a5.location color:a5.length, a6];
  }
}

- (id)_stringForLoggingLineFragmentForGlyphAtIndex:(int64_t)a3
{
  if ([(NSLayoutManager *)self numberOfGlyphs]<= a3)
  {
    [(NSLayoutManager(NSLayoutManager_Debugging) *)a2 _stringForLoggingLineFragmentForGlyphAtIndex:a3];
  }

  [(NSLayoutManager *)self ensureLayoutForGlyphRange:a3, 1];
  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"Line Fragment @ %ld", a3];
  v28.location = 0;
  v28.length = 0;
  [(NSLayoutManager *)self lineFragmentRectForGlyphAtIndex:a3 effectiveRange:&v28];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(NSLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:a3 effectiveRange:0];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = NSStringFromRange(v28);
  v30.origin.x = v8;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v14;
  v24 = NSStringFromRect(v30);
  v31.origin.x = v16;
  v31.origin.y = v18;
  v31.size.width = v20;
  v31.size.height = v22;
  [v6 appendFormat:@", glyph range %@, rects %@/%@", v23, v24, NSStringFromRect(v31)];
  for (i = v28.location; i < v28.length + v28.location; ++i)
  {
    v26 = [(NSLayoutManager *)self CGGlyphAtIndex:i];
    [(NSLayoutManager *)self locationForGlyphAtIndex:i];
    [v6 appendFormat:@"\n %ld: %hu %@", i, v26, NSStringFromPoint(v29)];
  }

  return v6;
}

- (void)_commonInit
{
  self->_textContainers = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{-[NSLayoutManager zone](self, "zone")), "init"}];
  self->_containerUsedRects = [[NSStorage allocWithZone:?]capacity:"initWithElementSize:capacity:", 120, 0];
  *&self->_lmFlags &= 0xFFFF3FFF;
  self->_containerRuns = [(NSRunStorage *)[NSIdRunStorage allocWithZone:?]capacity:"initWithElementSize:capacity:", 8, 0];
  v3 = [[NSExtraLMData allocWithZone:?]];
  v3->_hyphenationFactor = 0.0;
  v8 = *(MEMORY[0x1E696AA80] + 16);
  v9 = *MEMORY[0x1E696AA80];
  v3->_currentAttachmentRect.origin = *MEMORY[0x1E696AA80];
  v3->_currentAttachmentRect.size = v8;
  v3->_currentAttachmentIndex = 0x7FFFFFFFFFFFFFFFLL;
  v3->_textContainerIndexes = CFDictionaryCreateMutable(0, 0, 0, 0);
  v3->_textContainerGlyphIndexes = CFDictionaryCreateMutable(0, 0, 0, 0);
  v3->_typesetterBehavior = +[NSTypesetter defaultTypesetterBehavior];
  v3->_cachedFontBounds.origin = v9;
  v3->_cachedFontBounds.size = v8;
  *&v3->_cachedUnderlineThickness = 0u;
  *&v3->_cachedUnderlineAdjustment = 0u;
  v3->_cachedUnderlineRange.length = 0;
  v4 = *MEMORY[0x1E696AA88];
  v3->_firstTextViewVisibleCharRange = xmmword_18E856180;
  v3->_firstTextViewVisibleOffset = v4;
  v3->_lastInvalidatedCharRange.length = 0;
  v3->_lastInvalidatedLongitudinalPosition = 0.0;
  v3->_lastInvalidatedCharRange.location = 0x7FFFFFFFFFFFFFFFLL;
  v3->_paragraphArbitrator = [[NSParagraphArbitrator alloc] initWithAttributedString:0 range:0x7FFFFFFFFFFFFFFFLL, 0];
  v3->_lmFlags2 = (*&v3->_lmFlags2 & 0xFC7FFFFF | ((_NSTextScalingTypeForCurrentEnvironment() & 7) << 23));
  if (_allocExtraData_onceToken != -1)
  {
    [NSLayoutManager _commonInit];
  }

  v3->_lmFlags2 = (*&v3->_lmFlags2 & 0xBFFFFFFF | ((__NSUsesDefaultHyphenation & 1) << 30));
  self->_extraData = v3;
  if (!self->_textContainers || !self->_containerRuns || !self->_containerUsedRects)
  {
    v5 = _NSFullMethodName();
    [(NSLayoutManager *)self dealloc];
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA18] format:{@"*** %@: memory allocation failed.", v5}];
  }

  _NSGlyphTreeCreate(self);
  _NSLayoutTreeCreate(self);
  self->_lmFlags = (*&self->_lmFlags & 0xDA1FF1EB | (4 * __NSBackgroundLayoutEnabled) | (16 * __NSUsesScreenFonts) | (__NSShowsInvisibleCharacters << 10) | (__NSShowsControlCharacters << 11) | (__NSIgnoresViewTransformations << 26) | (__NSAllowsNonContiguousLayout << 29) | 0x1000200);
  self->_deferredDisplayCharRange = xmmword_18E856180;
  self->_cachedLocationNominalGlyphRange = xmmword_18E856180;
  self->_cachedFontCharRange = xmmword_18E856180;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  *&self->_firstUnlaidGlyphIndex = vnegq_f64(v6);
  self->_newlyFilledGlyphRange = xmmword_18E856180;
  v7 = __NSFillBackgroundRectArray;
  *(self->_extraData + 112) = *(self->_extraData + 112) & 0xDFFFFFFF | ((v7 == [(NSLayoutManager *)self methodForSelector:sel_fillBackgroundRectArray_count_forCharacterRange_color_]) << 29);
  if (__NSForcesOldShowGlyphs == 1)
  {
    *(self->_extraData + 112) |= 0x10000u;
  }
}

- (NSLayoutManager)init
{
  v5.receiver = self;
  v5.super_class = NSLayoutManager;
  v2 = [(NSLayoutManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NSLayoutManager *)v2 _commonInit];
  }

  return v3;
}

- (void)finalize
{
  _NSGlyphTreeFree(self);
  _NSLayoutTreeFree(self);
  _freeExtraData(self->_extraData);
  v3.receiver = self;
  v3.super_class = NSLayoutManager;
  [(NSLayoutManager *)&v3 finalize];
}

- (void)dealloc
{
  if (*(&self->_lmFlags + 1))
  {
    _NSRemoveDirtyLayoutManager(self);
  }

  self->_firstTextView = objc_storeWeak(&self->_firstTextView, 0);
  [(NSLayoutManager *)self setDelegate:0];

  textContainers = self->_textContainers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__NSLayoutManager_dealloc__block_invoke;
  v7[3] = &unk_1E7265FA0;
  v7[4] = self;
  [(NSMutableArray *)textContainers enumerateObjectsUsingBlock:v7];

  _NSGlyphTreeFree(self);
  _NSLayoutTreeFree(self);
  _freeExtraData(self->_extraData);
  cachedRectArray = self->_cachedRectArray;
  if (cachedRectArray)
  {
    NSZoneFree(0, cachedRectArray);
  }

  glyphBuffer = self->_glyphBuffer;
  if (glyphBuffer)
  {
    NSZoneFree(0, glyphBuffer);
  }

  v6.receiver = self;
  v6.super_class = NSLayoutManager;
  [(NSLayoutManager *)&v6 dealloc];
}

uint64_t __26__NSLayoutManager_dealloc__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _hasLayoutManager:*(a1 + 32)];
  if (result)
  {

    return [a2 setLayoutManager:0];
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    lmFlags = self->_lmFlags;
    v6 = *&lmFlags & 4 | (*&lmFlags >> 22) & 3 | (*&lmFlags >> 7) & 0x18 | (32 * ((*&lmFlags >> 4) & 1)) | (*&lmFlags >> 18) & 0x40 | (*&lmFlags >> 22) & 0x80 | (*&lmFlags >> 13) & 0x100;
    v7 = (*(self->_extraData + 112) >> 17) & 0x200;
    [a3 encodeObject:self->_textStorage forKey:@"NSTextStorage"];
    [a3 encodeObject:self->_textContainers forKey:@"NSTextContainers"];
    extraData = self->_extraData;
    v9 = extraData[24];
    if (v9 != 0.0)
    {
      *&v9 = v9;
      [a3 encodeFloat:@"NSHyphenationFactor" forKey:v9];
      extraData = self->_extraData;
    }

    v10 = v6 | v7;
    if ((*(extraData + 451) & 0x40) != 0)
    {
      [a3 encodeBool:1 forKey:@"NSUsesDefaultHyphenation"];
    }

    [a3 encodeInt:v10 ^ 0x20u forKey:@"NSLMFlags"];
    v11 = [(NSLayoutManager *)self delegate];

    [a3 encodeConditionalObject:v11 forKey:@"NSDelegate"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@ *** NSLayoutManager does not support non-keyed coding.", _NSFullMethodName()}];
  }
}

- (NSLayoutManager)initWithCoder:(NSCoder *)coder
{
  if ([(NSCoder *)coder allowsKeyedCoding])
  {
    v42 = 0u;
    memset(v43, 0, 56);
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    [(NSLayoutManager *)self _commonInit];
    [(NSCoder *)coder decodeFloatForKey:@"NSHyphenationFactor"];
    *(self->_extraData + 24) = v5;
    if ([(NSCoder *)coder containsValueForKey:@"NSUsesDefaultHyphenation"])
    {
      v6 = [(NSCoder *)coder decodeBoolForKey:@"NSUsesDefaultHyphenation"];
    }

    else
    {
      v6 = __NSUsesDefaultHyphenation;
    }

    *(self->_extraData + 112) = *(self->_extraData + 112) & 0xBFFFFFFF | ((v6 & 1) << 30);
    v7 = [(NSCoder *)coder decodeIntForKey:@"NSLMFlags"];
    if ((__NSBackgroundLayoutEnabled & ((v7 & 4) >> 2)) != 0)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 | *&self->_lmFlags & 0xDE1FF3EB | ((v7 & 3) << 22);
    if (__NSShowsInvisibleCharacters & 1 | ((v7 & 8) != 0))
    {
      v10 = 1024;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9 | v10;
    if (__NSShowsControlCharacters & 1 | ((v7 & 0x10) != 0))
    {
      v12 = 2048;
    }

    else
    {
      v12 = 0;
    }

    if ((__NSUsesScreenFonts & ((v7 & 0x20) == 0)) != 0)
    {
      v13 = 16;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 & 0xFEFFFFFF | (((v7 >> 6) & 1) << 24);
    if (__NSAllowsNonContiguousLayout & 1 | ((v7 & 0x80) != 0))
    {
      v15 = 0x20000000;
    }

    else
    {
      v15 = 0;
    }

    self->_lmFlags = (v15 & 0xFFDFFFFF | (((v7 >> 8) & 1) << 21) | v14 | v12 | v11);
    *(self->_extraData + 112) = *(self->_extraData + 112) & 0xFBFFFFFF | (((v7 >> 9) & 1) << 26);

    if ([(NSCoder *)coder requiresSecureCoding])
    {
      v16 = [(NSArray *)[(NSCoder *)coder decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"NSTextContainers"] mutableCopy];
    }

    else
    {
      v16 = [(NSCoder *)coder decodeObjectForKey:@"NSTextContainers"];
    }

    self->_textContainers = v16;
    v17 = *(MEMORY[0x1E696AA80] + 16);
    v39 = *MEMORY[0x1E696AA80];
    v40 = v17;
    v41 = 0uLL;
    __asm { FMOV            V2.2D, #-1.0 }

    v42 = _Q2;
    LODWORD(v43[0]) = 0;
    *(v43 + 8) = v39;
    *(&v43[1] + 8) = v17;
    *(&v43[2] + 8) = xmmword_18E856180;
    v22 = [(NSMutableArray *)v16 count];
    if (v22)
    {
      v23 = v22;
      for (i = 0; i != v23; ++i)
      {
        [(NSStorage *)self->_containerUsedRects insertElements:&v39 count:1 atIndex:i];
      }
    }

    textContainers = self->_textContainers;
    v26 = *(self->_extraData + 11);
    v27 = [(NSMutableArray *)textContainers count];
    if (v27)
    {
      v28 = [(NSMutableArray *)textContainers objectAtIndex:0];
    }

    else
    {
      v28 = 0;
    }

    [v28 size];
    v30 = v29;
    CFDictionaryRemoveAllValues(v26);
    *(self->_extraData + 10) = v28;
    lmFlags = self->_lmFlags;
    if (v27 != 1 || (*&lmFlags & 0x20000000) == 0)
    {
      self->_lmFlags = (*&lmFlags & 0xBFFFFFFF);
      if (v27 >= 2)
      {
        for (j = 1; j != v27; ++j)
        {
          CFDictionarySetValue(v26, [(NSMutableArray *)textContainers objectAtIndex:j], j);
        }
      }
    }

    else
    {
      v34 = [v28 isSimpleRectangularTextContainer];
      v35 = v30 >= 10000000.0;
      if (v30 <= 0.0)
      {
        v35 = 1;
      }

      if ((v34 & v35) != 0)
      {
        v36 = 0x40000000;
      }

      else
      {
        v36 = 0;
      }

      self->_lmFlags = (*&self->_lmFlags & 0xBFFFFFFF | v36);
    }

    [-[NSCoder decodeObjectOfClass:forKey:](coder decodeObjectOfClass:objc_opt_class() forKey:{@"NSTextStorage", "addLayoutManager:", self}];
    [(NSLayoutManager *)self _firstTextViewChanged];
    v37 = [(NSCoder *)coder decodeObjectForKey:@"NSDelegate"];
    if (v37)
    {
      [(NSLayoutManager *)self setDelegate:v37];
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@ *** NSLayoutManager does not support non-keyed coding.", _NSFullMethodName()}];
  }

  return self;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NSLayoutManager;
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@\n", -[NSLayoutManager description](&v7, sel_description)];
  v4 = [(NSMutableArray *)self->_textContainers count];
  textStorage = self->_textStorage;
  if (textStorage)
  {
    textStorage = [(NSTextStorage *)textStorage length];
  }

  [v3 appendFormat:@"    %lu containers, text backing has %lu characters\n", v4, textStorage];
  [v3 appendFormat:@"    Currently holding %lu glyphs", *(*(self->_extraData + 26) + 8)];
  [v3 appendString:@".\n"];
  [v3 appendFormat:@"    %@\n", _NSGlyphTreeSummaryDescription(self)];
  [v3 appendFormat:@"    %@\n", _NSLayoutTreeSummaryDescription(self)];
  return v3;
}

- (void)setTextStorage:(NSTextStorage *)textStorage
{
  v5 = [(NSMutableArray *)self->_textContainers count];
  if ((*&self->_lmFlags & 8) == 0)
  {
    ++self->_textViewResizeDisableStack;
  }

  self->_textStorage = textStorage;
  _NSGlyphTreeFree(self);
  _NSGlyphTreeCreate(self);
  v6 = [(NSRunStorage *)self->_containerRuns count];
  if (v6)
  {
    v7 = v6;
    [(NSRunStorage *)self->_containerRuns removeElementsInRange:0 coalesceRuns:v6, 1];
    v8 = *(self->_extraData + 23);
    if (v8)
    {
      _NSDeleteGlyphRangeFromTextBlocks(v8, 0, v7);
    }
  }

  _NSLayoutTreeFree(self);
  *&v9 = _NSLayoutTreeCreate(self).n128_u64[0];
  extraData = self->_extraData;
  v11 = extraData[23];
  if (v11)
  {
    _NSRemoveTextBlocksStartingAtGlyphIndex(v11, 0);

    *(self->_extraData + 23) = 0;
    extraData = self->_extraData;
    if (extraData[52])
    {
      [(NSLayoutManager *)self _setRowArrayCache:0];
      extraData = self->_extraData;
    }
  }

  v12 = extraData[25];
  if (v12)
  {

    *(self->_extraData + 25) = 0;
  }

  self->_firstUnlaidGlyphIndex = 0;
  self->_firstUnlaidCharIndex = 0;
  if (v5)
  {
    [(NSLayoutManager *)self _invalidateUsageForTextContainersInRange:0, v5, v9];
  }

  lmFlags = self->_lmFlags;
  self->_lmFlags = (*&lmFlags & 0xF5EFFFFC);
  self->_cachedLocationNominalGlyphRange = xmmword_18E856180;
  self->_cachedFontCharRange = xmmword_18E856180;
  self->_extraLineFragmentContainer = 0;
  v14 = self->_textStorage;
  if (v14)
  {
    v15 = [(NSTextStorage *)v14 length];
    if (v15)
    {
      v16 = v15;
      v22 = 0;
      [(NSRunStorage *)self->_containerRuns insertElement:&v22 range:0 coalesceRuns:v15, 1];
      v17 = *(self->_extraData + 23);
      if (v17)
      {
        _NSInsertGlyphRangeInTextBlocks(v17, 0, v16);
      }

      [(NSLayoutManager *)self _markSelfAsDirtyForBackgroundLayout:self];
    }

    else if ([(NSMutableArray *)self->_textContainers count])
    {
      v22 = 0;
      [(NSTypesetter *)[(NSLayoutManager *)self typesetter] layoutGlyphsInLayoutManager:self startingAtGlyphIndex:0 maxNumberOfLineFragments:1 nextGlyphIndex:&v22];
      [(NSLayoutManager *)self _invalidateInsertionPoint];
    }

    if (objc_opt_respondsToSelector())
    {
      v19 = 0x10000;
    }

    else
    {
      v19 = 0;
    }

    v18 = *&self->_lmFlags & 0xFFFEFFFF | v19;
  }

  else
  {
    v18 = *&lmFlags & 0xF5EEFFFC;
  }

  self->_lmFlags = v18;
  [(NSLayoutManager *)self _clearTemporaryAttributes];
  textContainers = self->_textContainers;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __34__NSLayoutManager_setTextStorage___block_invoke;
  v21[3] = &unk_1E7265FA0;
  v21[4] = self;
  [(NSMutableArray *)textContainers enumerateObjectsUsingBlock:v21];
  _enableTextViewResizing(self);
}

uint64_t __34__NSLayoutManager_setTextStorage___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 layoutManager];
  if (result == *(a1 + 32))
  {

    return [a2 setLayoutManager:?];
  }

  return result;
}

- (void)replaceTextStorage:(NSTextStorage *)newTextStorage
{
  v18 = *MEMORY[0x1E69E9840];
  if (!newTextStorage)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"*** %@: nil NSTextStorage given.  You must supply a NSTextStorage.", _NSFullMethodName()}];
  }

  textStorage = self->_textStorage;
  if (textStorage)
  {
    v6 = textStorage;
    v7 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[NSTextStorage layoutManagers](v6, "layoutManagers")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          [(NSTextStorage *)v6 removeLayoutManager:v12];
          [(NSTextStorage *)newTextStorage addLayoutManager:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  else
  {

    [(NSTextStorage *)newTextStorage addLayoutManager:self];
  }
}

- (NSGlyphGenerator)glyphGenerator
{
  result = self->_glyphGenerator;
  if (!result)
  {
    return +[NSGlyphGenerator defaultGlyphGenerator];
  }

  return result;
}

- (void)setGlyphGenerator:(NSGlyphGenerator *)glyphGenerator
{
  if (self->_glyphGenerator != glyphGenerator)
  {
    v5 = [(NSTextStorage *)self->_textStorage length];
    v6 = self->_glyphGenerator;
    self->_glyphGenerator = glyphGenerator;
    if (v5)
    {
      [(NSLayoutManager *)self _invalidateGlyphsForExtendedCharacterRange:0 changeInLength:v5, 0];

      [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:0 isSoft:v5, 0];
    }
  }
}

- (NSTypesetter)typesetter
{
  if (self->_typesetter)
  {
    return self->_typesetter;
  }

  else
  {
    return [NSTypesetter sharedSystemTypesetterForBehavior:*(self->_extraData + 13)];
  }
}

- (void)setTypesetter:(NSTypesetter *)typesetter
{
  if (self->_typesetter != typesetter)
  {
    v5 = [(NSTextStorage *)self->_textStorage length];
    v6 = self->_typesetter;
    self->_typesetter = typesetter;
    if (v5)
    {
      [(NSLayoutManager *)self _invalidateGlyphsForExtendedCharacterRange:0 changeInLength:v5, 0];

      [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:0 isSoft:v5, 0];
    }
  }
}

- (id)delegate
{
  objc_sync_enter(self);
  if (self->_delegateIsWeakValue)
  {
    Weak = [self->_delegate weakObjectValue];
  }

  else
  {
    Weak = objc_loadWeak(&self->_delegate);
  }

  v4 = Weak;
  objc_sync_exit(self);
  return v4;
}

- (void)setDelegate:(id)delegate
{
  objc_sync_enter(self);
  if (self->_delegateIsWeakValue)
  {
  }

  objc_storeWeak(&self->_delegate, delegate);
  self->_delegateIsWeakValue = 0;
  objc_sync_exit(self);
  if (delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = 4096;
    }

    else
    {
      v5 = 0;
    }

    self->_lmFlags = (*&self->_lmFlags & 0xFFFFEFFF | v5);
    if (objc_opt_respondsToSelector())
    {
      v6 = 0x2000;
    }

    else
    {
      v6 = 0;
    }

    self->_lmFlags = (*&self->_lmFlags & 0xFFFFDFFF | v6);
    if (objc_opt_respondsToSelector())
    {
      v7 = 4096;
    }

    else
    {
      v7 = 0;
    }

    extraData = self->_extraData;
    p_extraData = &self->_extraData;
    extraData[112] = extraData[112] & 0xFFFFEFFF | v7;
    if (objc_opt_respondsToSelector())
    {
      v10 = 0x8000000;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v11 = self->_extraData;
    p_extraData = &self->_extraData;
    *(p_extraData - 44) &= 0xFFFFCFFF;
    v11[112] &= ~0x1000u;
  }

  *(*p_extraData + 112) = *(*p_extraData + 112) & 0xF7FFFFFF | v10;
}

- (_NSRange)_characterRangeCurrentlyInAndAfterContainer:(id)a3
{
  v5 = [(NSTextStorage *)self->_textStorage length];
  if (v5)
  {
    v6 = v5;
    v7 = [(NSMutableArray *)self->_textContainers count];
    v8 = v7;
    if (a3)
    {
      value = 0;
      extraData = self->_extraData;
      if (extraData[10] == a3)
      {
        v10 = 0;
      }

      else if (CFDictionaryGetValueIfPresent(extraData[11], a3, &value))
      {
        v10 = value;
      }

      else
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v10 = v7;
    }

    do
    {
      if (v8 == v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = [(NSMutableArray *)self->_textContainers objectAtIndex:v10];
      }

      v13 = [(NSLayoutManager *)self _indexOfFirstGlyphInTextContainer:v12 okToFillHoles:0];
      v5 = 0x7FFFFFFFFFFFFFFFLL;
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, v13);
      }

      ++v10;
    }

    while (v10 <= v8 && v5 == 0x7FFFFFFFFFFFFFFFLL);
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
    }

    else
    {
      v11 = v6 - v5;
    }

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  result.length = v11;
  result.location = v5;
  return result;
}

- (void)addTextContainer:(NSTextContainer *)container
{
  v5 = [(NSMutableArray *)self->_textContainers count];

  [(NSLayoutManager *)self insertTextContainer:container atIndex:v5];
}

- (void)insertTextContainer:(NSTextContainer *)container atIndex:(NSUInteger)index
{
  v7 = [(NSTextStorage *)self->_textStorage length];
  v8 = [(NSMutableArray *)self->_textContainers count];
  v9 = [(NSTextContainer *)container textView];
  if (v8 < index)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"*** %@: container index %lu is beyond the range of containers (count %lu)", _NSFullMethodName(), index, v8}];
  }

  v40 = 0;
  if (!v7)
  {
    v13 = 0;
    if (index || !v8)
    {
      goto LABEL_20;
    }

    v14 = self;
    v15 = 0;
    v16 = 0;
    goto LABEL_18;
  }

  if (!v8)
  {
LABEL_15:
    if ((*(&self->_lmFlags + 1) & 0x810) != 0)
    {
      [(NSLayoutManager *)self _invalidateGlyphsForExtendedCharacterRange:v8 changeInLength:v7, 0];
    }

    v14 = self;
    v15 = v8;
    v16 = v7;
LABEL_18:
    [(NSLayoutManager *)v14 _invalidateLayoutForExtendedCharacterRange:v15 isSoft:v16, 0];
    goto LABEL_19;
  }

  if (v8 != index)
  {
    v10 = [(NSLayoutManager *)self _characterRangeCurrentlyInAndAfterContainer:[(NSMutableArray *)self->_textContainers objectAtIndex:index]];
    if (!v11)
    {
LABEL_19:
      v13 = 0;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v10 = [(NSLayoutManager *)self _characterRangeCurrentlyInAndAfterContainer:0];
  if (v11)
  {
LABEL_14:
    v8 = v10;
    v7 = v11;
    goto LABEL_15;
  }

  v35 = 0;
  firstUnlaidCharIndex = self->_firstUnlaidCharIndex;
  if (firstUnlaidCharIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSLayoutManager *)self getFirstUnlaidCharacterIndex:&v35 glyphIndex:0];
    firstUnlaidCharIndex = v35;
  }

  v13 = firstUnlaidCharIndex == v7;
LABEL_20:
  *&self->_lmFlags &= ~1u;
  v17 = *(MEMORY[0x1E696AA80] + 16);
  v36[0] = *MEMORY[0x1E696AA80];
  v36[1] = v17;
  v37 = 0;
  v38 = 0;
  __asm { FMOV            V2.2D, #-1.0 }

  v39 = _Q2;
  LODWORD(v40) = 0;
  v41 = v36[0];
  v42 = v17;
  v43 = xmmword_18E856180;
  [(NSStorage *)self->_containerUsedRects insertElements:v36 count:1 atIndex:index];
  [(NSMutableArray *)self->_textContainers insertObject:container atIndex:index];
  textContainers = self->_textContainers;
  v24 = *(self->_extraData + 11);
  v25 = [(NSMutableArray *)textContainers count];
  if (v25)
  {
    v26 = [(NSMutableArray *)textContainers objectAtIndex:0];
  }

  else
  {
    v26 = 0;
  }

  [v26 size];
  v28 = v27;
  CFDictionaryRemoveAllValues(v24);
  *(self->_extraData + 10) = v26;
  lmFlags = self->_lmFlags;
  if (v25 == 1 && (*&lmFlags & 0x20000000) != 0)
  {
    v30 = [v26 isSimpleRectangularTextContainer];
    v31 = v28 >= 10000000.0;
    if (v28 <= 0.0)
    {
      v31 = 1;
    }

    if ((v30 & v31) != 0)
    {
      v32 = 0x40000000;
    }

    else
    {
      v32 = 0;
    }

    self->_lmFlags = (*&self->_lmFlags & 0xBFFFFFFF | v32);
  }

  else
  {
    self->_lmFlags = (*&lmFlags & 0xBFFFFFFF);
    if (v25 >= 2)
    {
      for (i = 1; i != v25; ++i)
      {
        CFDictionarySetValue(v24, [(NSMutableArray *)textContainers objectAtIndex:i], i);
      }
    }
  }

  [(NSTextContainer *)container setLayoutManager:self];
  if (v9)
  {
    [(NSLayoutManager *)self _firstTextViewChanged];
  }

  if (v13 || !index && (textStorage = self->_textStorage) != 0 && ![(NSTextStorage *)textStorage length])
  {
    v35 = 0;
    [(NSTypesetter *)[(NSLayoutManager *)self typesetter] layoutGlyphsInLayoutManager:self startingAtGlyphIndex:*(*(self->_extraData + 26) + 8) maxNumberOfLineFragments:1 nextGlyphIndex:&v35];
    [(NSLayoutManager *)self _invalidateInsertionPoint];
  }

  *&self->_lmFlags |= 0x40000u;
}

- (void)removeTextContainerAtIndex:(NSUInteger)index
{
  v26 = [(NSTextStorage *)self->_textStorage length];
  v5 = [(NSMutableArray *)self->_textContainers count];
  if (v5 <= index)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"*** %@: container index %lu is beyond the range of containers (%lu)", _NSFullMethodName(), index, v5}];
  }

  lmFlags = self->_lmFlags;
  if ((*&lmFlags & 0x40) == 0)
  {
    ++self->_displayInvalidationDisableStack;
  }

  if ((*&lmFlags & 8) == 0)
  {
    ++self->_textViewResizeDisableStack;
  }

  v7 = [(NSMutableArray *)self->_textContainers objectAtIndex:index];
  v8 = [(NSTextContainer *)v7 textView];
  v9 = [(NSLayoutManager *)self _characterRangeCurrentlyInAndAfterContainer:v7];
  v11 = v10;
  *&self->_lmFlags &= ~1u;
  [(NSTextContainer *)v7 setLayoutManager:0];
  v12 = v7;
  [(NSMutableArray *)self->_textContainers removeObjectAtIndex:index];
  textContainers = self->_textContainers;
  v14 = *(self->_extraData + 11);
  v15 = [(NSMutableArray *)textContainers count];
  if (v15)
  {
    v16 = [(NSMutableArray *)textContainers objectAtIndex:0];
  }

  else
  {
    v16 = 0;
  }

  [v16 size];
  v18 = v17;
  CFDictionaryRemoveAllValues(v14);
  *(self->_extraData + 10) = v16;
  v19 = self->_lmFlags;
  if (v15 == 1 && (*&v19 & 0x20000000) != 0)
  {
    v20 = [v16 isSimpleRectangularTextContainer];
    v21 = v18 >= 10000000.0;
    if (v18 <= 0.0)
    {
      v21 = 1;
    }

    if ((v20 & v21) != 0)
    {
      v22 = 0x40000000;
    }

    else
    {
      v22 = 0;
    }

    self->_lmFlags = (*&self->_lmFlags & 0xBFFFFFFF | v22);
  }

  else
  {
    self->_lmFlags = (*&v19 & 0xBFFFFFFF);
    if (v15 >= 2)
    {
      for (i = 1; i != v15; ++i)
      {
        CFDictionarySetValue(v14, [(NSMutableArray *)textContainers objectAtIndex:i], i);
      }
    }
  }

  [(NSStorage *)self->_containerUsedRects removeElementAtIndex:index];
  CFDictionaryRemoveValue(*(self->_extraData + 12), v7);
  if (v7 == self->_extraLineFragmentContainer)
  {
    _NSLayoutTreeSetExtraLineFragmentRect(self, *MEMORY[0x1E696AA80], *(MEMORY[0x1E696AA80] + 8), *(MEMORY[0x1E696AA80] + 16), *(MEMORY[0x1E696AA80] + 24), *MEMORY[0x1E696AA80], *(MEMORY[0x1E696AA80] + 8), *(MEMORY[0x1E696AA80] + 16), *(MEMORY[0x1E696AA80] + 24));
    self->_extraLineFragmentContainer = 0;
    if (v11)
    {
LABEL_23:
      if ((*(&self->_lmFlags + 1) & 0x810) != 0)
      {
        [(NSLayoutManager *)self _invalidateGlyphsForExtendedCharacterRange:v9 changeInLength:v11, 0];
      }

      goto LABEL_28;
    }
  }

  else if (v11)
  {
    goto LABEL_23;
  }

  if (!v26)
  {
    v9 = 0;
    v11 = 0;
LABEL_28:
    [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:v9 isSoft:v11, 0];
  }

  _enableTextViewResizing(self);
  v24 = self->_lmFlags;
  if ((*&v24 & 0x40) == 0)
  {
    if (!self->_displayInvalidationDisableStack || (v25 = self->_displayInvalidationDisableStack - 1, (self->_displayInvalidationDisableStack = v25) == 0))
    {
      self->_lmFlags = (*&v24 | 0x40);
      [(NSLayoutManager *)self _invalidateDisplayIfNeeded];
      v24 = (*&self->_lmFlags & 0xFFFFFFBF);
      self->_lmFlags = v24;
    }
  }

  if (v8)
  {
    [(NSLayoutManager *)self _firstTextViewChanged];
    v24 = self->_lmFlags;
  }

  self->_lmFlags = (*&v24 | 0x40000);
}

- (void)textContainerChangedGeometry:(NSTextContainer *)container
{
  value = 0;
  extraData = self->_extraData;
  if (*(extraData + 10) != container && (!CFDictionaryGetValueIfPresent(*(extraData + 11), container, &value) || value == 0x7FFFFFFFFFFFFFFFLL))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"*** %@: given container does not appear in the list of containers for this NSLayoutManager.", _NSFullMethodName()}];
  }

  v7 = [(NSLayoutManager *)self _characterRangeCurrentlyInAndAfterContainer:container];
  v8 = v6;
  if (v6)
  {
    if ((*(&self->_lmFlags + 1) & 0x810) != 0)
    {
      [(NSLayoutManager *)self _invalidateGlyphsForExtendedCharacterRange:v7 changeInLength:v6, 0];
    }

    goto LABEL_9;
  }

  if (![(NSTextStorage *)[(NSLayoutManager *)self textStorage] length])
  {
LABEL_9:
    [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:v7 isSoft:v8, 0];
  }

  *&self->_lmFlags &= ~1u;
  textStorage = self->_textStorage;
  if (textStorage && ![(NSTextStorage *)textStorage length])
  {
    if ([(NSMutableArray *)self->_textContainers count])
    {
      value = 0;
      [(NSTypesetter *)[(NSLayoutManager *)self typesetter] layoutGlyphsInLayoutManager:self startingAtGlyphIndex:0 maxNumberOfLineFragments:1 nextGlyphIndex:&value];
      [(NSLayoutManager *)self _invalidateInsertionPoint];
    }
  }
}

- (void)textContainerChangedTextView:(NSTextContainer *)container
{
  [(NSLayoutManager *)self _firstTextViewChanged];

  [(NSLayoutManager *)self _invalidateInsertionPoint];
}

- (void)textContainerChangedTextView:(id)a3 fromTextView:(id)a4
{
  [(NSLayoutManager *)self textContainerChangedTextView:?];
  if ([a3 textView] != a4)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = v7;
    if (a4)
    {
      [v7 setObject:a4 forKey:@"_NSOldTextView"];
    }

    if ([a3 textView])
    {
      [v8 setObject:objc_msgSend(a3 forKey:{"textView"), @"_NSNewTextView"}];
    }

    v9 = [MEMORY[0x1E696AD88] defaultCenter];

    [v9 postNotificationName:@"_NSLayoutManagerObservedTextViewChangeNotification" object:self userInfo:v8];
  }
}

- (void)setAllowsNonContiguousLayout:(BOOL)allowsNonContiguousLayout
{
  v3 = allowsNonContiguousLayout;
  v5 = [(NSTextStorage *)self->_textStorage length];
  lmFlags = self->_lmFlags;
  v7 = (*&lmFlags >> 30) & 1;
  if (v3)
  {
    v8 = 0x20000000;
  }

  else
  {
    v8 = 0;
  }

  self->_lmFlags = (*&lmFlags & 0xDFFFFFFF | v8);
  textContainers = self->_textContainers;
  v10 = *(self->_extraData + 11);
  v11 = [(NSMutableArray *)textContainers count];
  if (v11)
  {
    v12 = [(NSMutableArray *)textContainers objectAtIndex:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = v7 & ~v3;
  [v12 size];
  v15 = v14;
  CFDictionaryRemoveAllValues(v10);
  *(self->_extraData + 10) = v12;
  v16 = self->_lmFlags;
  if (v11 != 1 || (*&v16 & 0x20000000) == 0)
  {
    self->_lmFlags = (*&v16 & 0xBFFFFFFF);
    if (v11 >= 2)
    {
      for (i = 1; i != v11; ++i)
      {
        CFDictionarySetValue(v10, [(NSMutableArray *)textContainers objectAtIndex:i], i);
      }
    }
  }

  else
  {
    v19 = [v12 isSimpleRectangularTextContainer];
    v20 = v15 >= 10000000.0;
    if (v15 <= 0.0)
    {
      v20 = 1;
    }

    if ((v19 & v20) != 0)
    {
      v21 = 0x40000000;
    }

    else
    {
      v21 = 0;
    }

    self->_lmFlags = (*&self->_lmFlags & 0xBFFFFFFF | v21);
  }

  if (v5)
  {
    v22 = v13;
  }

  else
  {
    v22 = 0;
  }

  if (v22 == 1)
  {
    if ((*(&self->_lmFlags + 1) & 0x810) != 0)
    {
      [(NSLayoutManager *)self _invalidateGlyphsForExtendedCharacterRange:0 changeInLength:v5, 0];
    }

    [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:0 isSoft:v5, 0];
  }
}

- (void)_setGlyphsPerLineEstimate:(unint64_t)a3 offsetPerLineEstimate:(double)a4
{
  v7 = [(NSTextStorage *)self->_textStorage length];
  _NSLayoutTreeSetGlyphsPerLineEstimate(self, a3);
  _NSLayoutTreeSetOffsetPerLineEstimate(self, a4);

  [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:0 isSoft:v7, 0];
}

- (void)setBackgroundLayoutEnabled:(BOOL)backgroundLayoutEnabled
{
  if (backgroundLayoutEnabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_lmFlags = (*&self->_lmFlags & 0xFFFFFFFB | v3);
  if (backgroundLayoutEnabled && (*(*(self->_extraData + 30) + 56) & 1) != 0)
  {
    [(NSLayoutManager *)self _markSelfAsDirtyForBackgroundLayout:self];
  }
}

- (void)setUsesScreenFonts:(BOOL)usesScreenFonts
{
  v3 = usesScreenFonts;
  v5 = [(NSTextStorage *)self->_textStorage length];
  v6 = v5;
  lmFlags = self->_lmFlags;
  if (v3)
  {
    if ((*&lmFlags & 0x10) != 0)
    {
      return;
    }

    v8 = 16;
  }

  else
  {
    if ((*&lmFlags & 0x10) == 0)
    {
      return;
    }

    v8 = 0;
  }

  self->_lmFlags = (*&lmFlags & 0xFFFFFFEF | v8);
  if (v5)
  {
    if ((*&lmFlags & 0x8100000) != 0)
    {
      [(NSLayoutManager *)self _invalidateGlyphsForExtendedCharacterRange:0 changeInLength:v5, 0];
    }

    else
    {
      self->_cachedFontCharRange = xmmword_18E856180;
    }

    [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:0 isSoft:v6, 0];
  }
}

- (void)setShowsInvisibleCharacters:(BOOL)showsInvisibleCharacters
{
  v3 = showsInvisibleCharacters;
  v5 = [(NSTextStorage *)self->_textStorage length];
  v6 = v5;
  lmFlags = self->_lmFlags;
  if (v3)
  {
    if ((*&lmFlags & 0x400) != 0)
    {
      return;
    }

    v8 = 1024;
  }

  else
  {
    if ((*&lmFlags & 0x400) == 0)
    {
      return;
    }

    v8 = 0;
  }

  self->_lmFlags = (*&lmFlags & 0xFFFFFBFF | v8);
  if (v5)
  {
    [(NSLayoutManager *)self invalidateGlyphsForCharacterRange:0 changeInLength:v5 actualCharacterRange:0, 0];

    [(NSLayoutManager *)self invalidateLayoutForCharacterRange:0 actualCharacterRange:v6, 0];
  }
}

- (void)setShowsControlCharacters:(BOOL)showsControlCharacters
{
  v3 = showsControlCharacters;
  v5 = [(NSTextStorage *)self->_textStorage length];
  v6 = v5;
  lmFlags = self->_lmFlags;
  if (v3)
  {
    if ((*&lmFlags & 0x800) != 0)
    {
      return;
    }

    v8 = 2048;
  }

  else
  {
    if ((*&lmFlags & 0x800) == 0)
    {
      return;
    }

    v8 = 0;
  }

  self->_lmFlags = (*&lmFlags & 0xFFFFF7FF | v8);
  if (v5)
  {
    [(NSLayoutManager *)self invalidateGlyphsForCharacterRange:0 changeInLength:v5 actualCharacterRange:0, 0];

    [(NSLayoutManager *)self invalidateLayoutForCharacterRange:0 actualCharacterRange:v6, 0];
  }
}

- (void)_setHyphenationFactor:(double)a3
{
  v5 = [(NSTextStorage *)self->_textStorage length];
  extraData = self->_extraData;
  if (extraData[24] != a3)
  {
    v7 = v5;
    extraData[24] = a3;
    if (v5)
    {
      [(NSLayoutManager *)self invalidateGlyphsForCharacterRange:0 changeInLength:v5 actualCharacterRange:0, 0];

      [(NSLayoutManager *)self invalidateLayoutForCharacterRange:0 actualCharacterRange:v7, 0];
    }
  }
}

- (void)setUsesDefaultHyphenation:(BOOL)usesDefaultHyphenation
{
  v3 = usesDefaultHyphenation;
  v5 = [(NSTextStorage *)self->_textStorage length];
  extraData = self->_extraData;
  v7 = extraData[112];
  if (((((v7 & 0x40000000) == 0) ^ v3) & 1) == 0)
  {
    v8 = v5;
    v9 = v3 ? 0x40000000 : 0;
    extraData[112] = v7 & 0xBFFFFFFF | v9;
    if (v5)
    {
      [(NSLayoutManager *)self invalidateGlyphsForCharacterRange:0 changeInLength:v5 actualCharacterRange:0, 0];

      [(NSLayoutManager *)self invalidateLayoutForCharacterRange:0 actualCharacterRange:v8, 0];
    }
  }
}

- (void)setTypesetterBehavior:(NSTypesetterBehavior)typesetterBehavior
{
  v3 = NSTypesetterBehavior_10_4|NSTypesetterBehavior_10_2;
  if (typesetterBehavior < (NSTypesetterBehavior_10_4|NSTypesetterBehavior_10_2))
  {
    v3 = typesetterBehavior;
  }

  *(self->_extraData + 13) = v3;
}

- (void)setLimitsLayoutForSuspiciousContents:(BOOL)limitsLayoutForSuspiciousContents
{
  v3 = limitsLayoutForSuspiciousContents;
  if ([(NSLayoutManager *)self limitsLayoutForSuspiciousContents]!= limitsLayoutForSuspiciousContents)
  {
    if (v3)
    {
      v5 = 0x4000000;
    }

    else
    {
      v5 = 0;
    }

    *(self->_extraData + 112) = *(self->_extraData + 112) & 0xFBFFFFFF | v5;
    v6 = [(NSTextStorage *)[(NSLayoutManager *)self textStorage] length];

    [(NSLayoutManager *)self _invalidateGlyphsForExtendedCharacterRange:0 changeInLength:v6, 0];
  }
}

- (void)_invalidateGlyphsForCharacterRange:(_NSRange)a3 editedCharacterRange:(_NSRange)a4 changeInLength:(int64_t)a5 actualCharacterRange:(_NSRange *)a6
{
  length = a4.length;
  location = a4.location;
  v10 = a3.length;
  v11 = a3.location;
  v13 = [(NSTextStorage *)self->_textStorage string];
  v14 = [(NSLayoutManager *)self _extendedCharRangeForInvalidation:v11 editedCharRange:v10, location, length];
  v16 = v14;
  v17 = *(self->_extraData + 45);
  if (a6)
  {
    a6->location = v14;
    a6->length = v15;
  }

  [(NSLayoutManager *)self _invalidateGlyphsForExtendedCharacterRange:v14 changeInLength:v15, a5];
  if (a5 == 1 && length == 1 && *(self->_extraData + 45))
  {
    v18 = [v13 characterAtIndex:location];
    if (v18 > 132)
    {
      if ((v18 - 8232) >= 2 && v18 != 133)
      {
LABEL_17:
        if (!v17)
        {
          extraData = self->_extraData;
          v20 = extraData[44];
          if (v20 >= v16 + 1 && v20 < location + 1)
          {
            extraData[44] = v20 - 1;
          }
        }

        return;
      }
    }

    else if (v18 != 10 && v18 != 12 && (v18 != 13 || location + 1 < [v13 length] && objc_msgSend(v13, "characterAtIndex:", location + 1) == 10))
    {
      goto LABEL_17;
    }

    *(self->_extraData + 22) = xmmword_18E856180;
    *(self->_extraData + 23) = *MEMORY[0x1E696AA88];
  }
}

- (void)invalidateLayoutForCharacterRange:(NSRange)charRange actualCharacterRange:(NSRangePointer)actualCharRange
{
  location = charRange.location;
  if (charRange.length)
  {
    location = [(NSLayoutManager *)self _extendedCharRangeForInvalidation:charRange.location editedCharRange:charRange.length, charRange.location, charRange.length];
    v8 = v7;
    if ((*(&self->_lmFlags + 3) & 8) != 0)
    {
      [(NSLayoutManager *)self _invalidateGlyphsForCharacterRange:location editedCharacterRange:v7 changeInLength:location actualCharacterRange:v7, 0, 0];
      if (!actualCharRange)
      {
        return;
      }
    }

    else
    {
      [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:location isSoft:v7, 0];
      if (!actualCharRange)
      {
        return;
      }
    }

    goto LABEL_8;
  }

  if (![(NSTextStorage *)[(NSLayoutManager *)self textStorage] length])
  {
    [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:0 isSoft:0, 0];
  }

  v8 = 0;
  if (actualCharRange)
  {
LABEL_8:
    actualCharRange->location = location;
    actualCharRange->length = v8;
  }
}

- (void)invalidateLayoutForCharacterRange:(NSRange)charRange isSoft:(BOOL)flag actualCharacterRange:(NSRangePointer)actualCharRange
{
  location = charRange.location;
  if (charRange.length)
  {
    v8 = flag;
    location = [(NSLayoutManager *)self _extendedCharRangeForInvalidation:charRange.location editedCharRange:charRange.length, charRange.location, charRange.length];
    v10 = v9;
    if (!v8 && (*(&self->_lmFlags + 3) & 8) != 0)
    {
      [(NSLayoutManager *)self _invalidateGlyphsForCharacterRange:location editedCharacterRange:v9 changeInLength:location actualCharacterRange:v9, 0, 0];
      if (!actualCharRange)
      {
        return;
      }
    }

    else
    {
      [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:location isSoft:v9, v8];
      if (!actualCharRange)
      {
        return;
      }
    }

    goto LABEL_9;
  }

  if (![(NSTextStorage *)[(NSLayoutManager *)self textStorage:charRange.location] length])
  {
    [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:0 isSoft:0, 0];
  }

  v10 = 0;
  if (actualCharRange)
  {
LABEL_9:
    actualCharRange->location = location;
    actualCharRange->length = v10;
  }
}

- (void)_primitiveInvalidateDisplayForGlyphRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.length)
  {
    v208 = 0uLL;
    v6 = *(self->_extraData + 55);
    *&v204 = 0;
    *(&v204 + 1) = &v204;
    *&v205 = 0x3052000000;
    *(&v205 + 1) = __Block_byref_object_copy__8;
    v206 = __Block_byref_object_dispose__8;
    v7 = [v6 count];
    if (v7)
    {
      v7 = [MEMORY[0x1E695DFA8] set];
    }

    v207 = v7;
    v199[0] = MEMORY[0x1E69E9820];
    v199[1] = 3221225472;
    v200 = __60__NSLayoutManager__primitiveInvalidateDisplayForGlyphRange___block_invoke;
    v201 = &unk_1E7267380;
    v202 = v6;
    v203 = &v204;
    if ((*(&self->_lmFlags + 3) & 0x40) != 0)
    {
      v12 = *(*(self->_extraData + 26) + 8);
      v208.n128_u64[0] = 0;
      v208.n128_u64[1] = v12;
      v13 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
    }

    else if ([(NSRunStorage *)self->_containerRuns count]<= location)
    {
      v13 = 0;
    }

    else
    {
      containerRuns = self->_containerRuns;
      _NSBlockNumberForIndex(containerRuns, location, &v208);
      if (containerRuns->_gapBlockIndex <= v9)
      {
        v10 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
      }

      else
      {
        v10 = 0;
      }

      v13 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v10 + v9)];
    }

    if ((*(&self->_lmFlags + 3) & 0x40) == 0 && location && location == v208.n128_u64[0])
    {
      if ([(NSRunStorage *)self->_containerRuns count]<= location - 1)
      {
        v17 = 0;
      }

      else
      {
        v14 = self->_containerRuns;
        _NSBlockNumberForIndex(v14, location - 1, 0);
        v16 = v14->_gapBlockIndex <= v15 ? v14->_maxBlocks - v14->_numBlocks : 0;
        v17 = *&v14->_runs->var1[(v14->_elementSize + 8) * (v16 + v15)];
      }

      v18 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, location - 1, 0);
      v20 = v19;
      v22 = v21;
      v23 = [v17 textView];
      if (v23)
      {
        [v17 textContainerOrigin];
        v25 = v24;
        [v23 bounds];
        v27 = v26;
        v29 = v28;
        v30 = v22 + v20 + v25;
        v33 = v31 + v32 - v30;
        [v23 setNeedsDisplayInRect:1 avoidAdditionalLayout:{v26, v30}];
        v200(v199, v23, v27, v30, v29, v33);
      }
    }

    if ((*(&self->_lmFlags + 3) & 0x40) != 0 || ((v34 = [(NSRunStorage *)self->_containerRuns count], v35 = location + length - 1, v34 <= v35) ? (v39 = 0) : ((v36 = self->_containerRuns, _NSBlockNumberForIndex(v36, v35, 0), v36->_gapBlockIndex <= v37) ? (v38 = v36->_maxBlocks - v36->_numBlocks) : (v38 = 0), v39 = *&v36->_runs->var1[(v36->_elementSize + 8) * (v38 + v37)]), v13 == v39))
    {
      v11 = [v13 textView];
      if (v11)
      {
        if ((*&self->_lmFlags & 0x40000000) != 0 && !*(self->_extraData + 23))
        {
          _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, location, 0);
          v63 = v62;
          v64 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, location + length - 1, 0);
          v66 = v65;
          v68 = v67;
          [v11 bounds];
          v70 = v69;
          v72 = v71;
          [v13 textContainerOrigin];
          v74 = v63 + v73;
          v75 = v66 + v68 - v63;
          [v11 setNeedsDisplayInRect:1 avoidAdditionalLayout:{v70, v74, v72, v75}];
          v200(v199, v11, v70, v74, v72, v75);
        }

        else
        {
          [(NSLayoutManager *)self _boundingRectForGlyphRange:location inTextContainer:length fast:v13 fullLineRectsOnly:(*&self->_lmFlags & 2) == 0, 1];
          v44 = v43;
          v46 = v45;
          v48 = v47;
          v50 = v49;
          [v13 textContainerOrigin];
          v192 = v52;
          v194 = v51;
          if (*(self->_extraData + 23))
          {
            v211.origin.x = _NSTextBlockBoundingRectAtIndex(self, location);
            x = v211.origin.x;
            y = v211.origin.y;
            width = v211.size.width;
            height = v211.size.height;
            if (!NSIsEmptyRect(v211))
            {
              v212.origin.x = v44;
              v212.origin.y = v46;
              v212.size.width = v48;
              v212.size.height = v50;
              v234.origin.x = x;
              v234.origin.y = y;
              v234.size.width = width;
              v234.size.height = height;
              v213 = NSUnionRect(v212, v234);
              v44 = v213.origin.x;
              v46 = v213.origin.y;
              v48 = v213.size.width;
              v50 = v213.size.height;
            }

            v214.origin.x = _NSTextBlockBoundingRectAtIndex(self, location + length - 1);
            v57 = v214.origin.x;
            v58 = v214.origin.y;
            v59 = v214.size.width;
            v60 = v214.size.height;
            if (!NSIsEmptyRect(v214))
            {
              v215.origin.x = v44;
              v215.origin.y = v46;
              v215.size.width = v48;
              v215.size.height = v50;
              v235.origin.x = v57;
              v235.origin.y = v58;
              v235.size.width = v59;
              v235.size.height = v60;
              v216 = NSUnionRect(v215, v235);
              v44 = v216.origin.x;
              v46 = v216.origin.y;
              v48 = v216.size.width;
              v50 = v216.size.height;
            }
          }

          [v11 setNeedsDisplayInRect:1 avoidAdditionalLayout:{v194 + v44, v192 + v46, v48, v50}];
          v200(v199, v11, v194 + v44, v192 + v46, v48, v50);
        }
      }
    }

    else
    {
      v197 = 0;
      v198 = 0;
      if ((*(&self->_lmFlags + 3) & 0x40) != 0)
      {
        v61 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
      }

      else if ([(NSRunStorage *)self->_containerRuns count]<= location)
      {
        v61 = 0;
      }

      else
      {
        v40 = self->_containerRuns;
        _NSBlockNumberForIndex(v40, location, 0);
        if (v40->_gapBlockIndex <= v41)
        {
          v42 = v40->_maxBlocks - v40->_numBlocks;
        }

        else
        {
          v42 = 0;
        }

        v61 = *&v40->_runs->var1[(v40->_elementSize + 8) * (v42 + v41)];
      }

      v76 = location;
      v77 = location;
      do
      {
        v78 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v77, &v197);
        if ((*(&self->_lmFlags + 3) & 0x40) != 0)
        {
          v82 = [(NSMutableArray *)self->_textContainers objectAtIndex:0, v78];
        }

        else if ([(NSRunStorage *)self->_containerRuns count]<= v77)
        {
          v82 = 0;
        }

        else
        {
          v79 = self->_containerRuns;
          _NSBlockNumberForIndex(v79, v77, 0);
          if (v79->_gapBlockIndex <= v80)
          {
            v81 = v79->_maxBlocks - v79->_numBlocks;
          }

          else
          {
            v81 = 0;
          }

          v82 = *&v79->_runs->var1[(v79->_elementSize + 8) * (v81 + v80)];
        }

        if (v82 != v61)
        {
          v83 = [v61 textView];
          v84 = v83;
          if (v83)
          {
            [v83 bounds];
            v193 = v86;
            v195 = v85;
            [(NSLayoutManager *)self _boundingRectForGlyphRange:v76 inTextContainer:v77 - v76 fast:v61 fullLineRectsOnly:(*&self->_lmFlags & 2) == 0, 1];
            v88 = v87;
            v90 = v89;
            v92 = v91;
            v94 = v93;
            if (*(self->_extraData + 23) && v77 > v76)
            {
              v217.origin.x = _NSTextBlockBoundingRectAtIndex(self, v76);
              v95 = v217.origin.x;
              v96 = v217.origin.y;
              v97 = v217.size.width;
              v98 = v217.size.height;
              if (!NSIsEmptyRect(v217))
              {
                v218.origin.x = v88;
                v218.origin.y = v90;
                v218.size.width = v92;
                v218.size.height = v94;
                v236.origin.x = v95;
                v236.origin.y = v96;
                v236.size.width = v97;
                v236.size.height = v98;
                v219 = NSUnionRect(v218, v236);
                v88 = v219.origin.x;
                v90 = v219.origin.y;
                v92 = v219.size.width;
                v94 = v219.size.height;
              }

              v220.origin.x = _NSTextBlockBoundingRectAtIndex(self, v77 - 1);
              v99 = v220.origin.x;
              v100 = v220.origin.y;
              v101 = v220.size.width;
              v102 = v220.size.height;
              if (!NSIsEmptyRect(v220))
              {
                v221.origin.x = v88;
                v221.origin.y = v90;
                v221.size.width = v92;
                v221.size.height = v94;
                v237.origin.x = v99;
                v237.origin.y = v100;
                v237.size.width = v101;
                v237.size.height = v102;
                v222 = NSUnionRect(v221, v237);
                v88 = v222.origin.x;
                v90 = v222.origin.y;
                v92 = v222.size.width;
                v94 = v222.size.height;
              }
            }

            [v61 textContainerOrigin];
            v223.origin.x = v88 + v103;
            v223.origin.y = v90 + v104;
            v238.size.height = v195 + v193 - v223.origin.y;
            v223.size.width = v92;
            v223.size.height = v94;
            v238.origin.x = v223.origin.x;
            v238.origin.y = v223.origin.y;
            v238.size.width = v92;
            v224 = NSUnionRect(v223, v238);
            v105 = v224.origin.x;
            v106 = v224.origin.y;
            v107 = v224.size.width;
            v108 = v224.size.height;
            [v84 setNeedsDisplayInRect:1 avoidAdditionalLayout:?];
            v200(v199, v84, v105, v106, v107, v108);
            v61 = v82;
            v76 = v77;
          }

          else
          {
            v61 = v82;
            v76 = v77;
          }
        }

        v77 = v198 + v197;
      }

      while (v198 + v197 >= location && v198 + v197 - location < length);
      v11 = [v61 textView];
      if (v11)
      {
        v209.length = v77 - v76;
        v209.location = v76;
        v210.location = location;
        v210.length = length;
        v110 = NSIntersectionRange(v209, v210);
        [(NSLayoutManager *)self _boundingRectForGlyphRange:v110.location inTextContainer:v110.length fast:v61 fullLineRectsOnly:(*&self->_lmFlags & 2) == 0, 1];
        v112 = v111;
        v114 = v113;
        v116 = v115;
        v118 = v117;
        if (*(self->_extraData + 23) && v110.length)
        {
          v225.origin.x = _NSTextBlockBoundingRectAtIndex(self, v110.location);
          v119 = v225.origin.x;
          v120 = v225.origin.y;
          v121 = v225.size.width;
          v122 = v225.size.height;
          if (!NSIsEmptyRect(v225))
          {
            v226.origin.x = v112;
            v226.origin.y = v114;
            v226.size.width = v116;
            v226.size.height = v118;
            v239.origin.x = v119;
            v239.origin.y = v120;
            v239.size.width = v121;
            v239.size.height = v122;
            v227 = NSUnionRect(v226, v239);
            v112 = v227.origin.x;
            v114 = v227.origin.y;
            v116 = v227.size.width;
            v118 = v227.size.height;
          }

          v228.origin.x = _NSTextBlockBoundingRectAtIndex(self, v110.length + v110.location - 1);
          v123 = v228.origin.x;
          v124 = v228.origin.y;
          v125 = v228.size.width;
          v126 = v228.size.height;
          if (!NSIsEmptyRect(v228))
          {
            v229.origin.x = v112;
            v229.origin.y = v114;
            v229.size.width = v116;
            v229.size.height = v118;
            v240.origin.x = v123;
            v240.origin.y = v124;
            v240.size.width = v125;
            v240.size.height = v126;
            v230 = NSUnionRect(v229, v240);
            v112 = v230.origin.x;
            v114 = v230.origin.y;
            v116 = v230.size.width;
            v118 = v230.size.height;
          }
        }

        [v61 textContainerOrigin];
        v128 = v112 + v127;
        v130 = v114 + v129;
        [v11 setNeedsDisplayInRect:1 avoidAdditionalLayout:{v128, v130, v116, v118}];
        v200(v199, v11, v128, v130, v116, v118);
      }
    }

    if ([*(*(&v204 + 1) + 40) count])
    {
      v131 = [(NSLayoutManager *)self characterRangeForGlyphRange:location actualGlyphRange:length, 0];
      v133 = v132;
      v134 = [(NSLayoutManager *)self textStorage];
      v196[0] = MEMORY[0x1E69E9820];
      v196[1] = 3221225472;
      v196[2] = __60__NSLayoutManager__primitiveInvalidateDisplayForGlyphRange___block_invoke_3;
      v196[3] = &unk_1E72673A8;
      v196[4] = self;
      v196[5] = &v204;
      [(NSTextStorage *)v134 enumerateAttribute:@"NSAttachment" inRange:v131 options:v133 usingBlock:0x100000, v196];
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [*(*(&v204 + 1) + 40) enumerateObjectsUsingBlock:&__block_literal_global_14];
      [MEMORY[0x1E6979518] commit];
      [*(self->_extraData + 55) minusSet:*(*(&v204 + 1) + 40)];
    }

    _Block_object_dispose(&v204, 8);
  }

  else
  {
    v11 = 0;
  }

  v135 = location + length;
  if (location + length >= *(*(self->_extraData + 26) + 8))
  {
    extraLineFragmentContainer = self->_extraLineFragmentContainer;
    if (extraLineFragmentContainer)
    {
      v137 = [(NSTextContainer *)extraLineFragmentContainer textView];
      if (!v137)
      {
        goto LABEL_94;
      }

      v138 = v137;
      v204 = 0u;
      v205 = 0u;
      _NSLayoutTreeGetExtraLineFragmentRect(self, &v204, 0);
      v139 = v204;
      v140 = v205;
      [v138 textContainerOrigin];
      v142 = *&v139 + v141;
      v144 = *(&v139 + 1) + v143;
      v145 = *(&v140 + 1) + *(&v140 + 1);
      v146 = v138;
      v147 = *&v140;
    }

    else
    {
      if (!v135)
      {
        goto LABEL_94;
      }

      if ((*&self->_lmFlags & 2) == 0)
      {
        goto LABEL_94;
      }

      v148 = v135 - 1;
      if (!_NSLayoutTreeLineFragmentDrawsOutsideLineForGlyphAtIndex(self, v135 - 1))
      {
        goto LABEL_94;
      }

      v149 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v148, 0);
      v151 = v150;
      v153 = v152;
      v155 = v154;
      [v11 textContainerOrigin];
      v157 = v149 + v156;
      v159 = v151 + v158 + v155;
      [v11 bounds];
      v162 = v160 + v161 - v159;
      [v11 visibleRect];
      v241.origin.x = v163;
      v241.origin.y = v164;
      v241.size.width = v165;
      v241.size.height = v166;
      v231.origin.x = v157;
      v231.origin.y = v159;
      v231.size.width = v153;
      v231.size.height = v162;
      *&v142 = NSIntersectionRect(v231, v241);
      v146 = v11;
    }

    [v146 setNeedsDisplayInRect:1 avoidAdditionalLayout:{v142, v144, v147, v145}];
  }

LABEL_94:
  lmFlags = self->_lmFlags;
  if ((*&lmFlags & 2) != 0 && location)
  {
    *&v204 = location;
    *(&v204 + 1) = length;
    v208 = 0uLL;
    if ((*&lmFlags & 0x40000000) != 0)
    {
      v208.n128_u64[1] = *(*(self->_extraData + 26) + 8);
      v172 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
    }

    else
    {
      v168 = location - 1;
      if ([(NSRunStorage *)self->_containerRuns count]<= location - 1)
      {
        v172 = 0;
      }

      else
      {
        v169 = self->_containerRuns;
        _NSBlockNumberForIndex(v169, v168, &v208);
        v171 = v169->_gapBlockIndex <= v170 ? v169->_maxBlocks - v169->_numBlocks : 0;
        v172 = *&v169->_runs->var1[(v169->_elementSize + 8) * (v171 + v170)];
      }
    }

    v173 = [v172 textView];
    if (v173)
    {
      v174 = v173;
      v176 = *MEMORY[0x1E696AA80];
      v175 = *(MEMORY[0x1E696AA80] + 8);
      v178 = *(MEMORY[0x1E696AA80] + 16);
      v177 = *(MEMORY[0x1E696AA80] + 24);
      [v172 textContainerOrigin];
      v180 = v179;
      v182 = v181;
      v183 = 0;
      v184 = 50;
      while (v204 > v208.n128_u64[0] && _NSLayoutTreeOutsideDrawsUponLineFragmentForGlyphAtIndex(self, v204 - 1))
      {
        v185 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v204 - 1, &v204);
        v187 = v186;
        v189 = v188;
        v191 = v190;
        if (v183)
        {
          v232.origin.x = v176;
          v232.origin.y = v175;
          v232.size.width = v178;
          v232.size.height = v177;
          v233 = NSUnionRect(v232, *&v185);
          v185 = v233.origin.x;
          v187 = v233.origin.y;
          v189 = v233.size.width;
          v191 = v233.size.height;
        }

        v183 = 1;
        v177 = v191;
        v178 = v189;
        v175 = v187;
        v176 = v185;
        if (!--v184)
        {
          goto LABEL_113;
        }
      }

      v191 = v177;
      v189 = v178;
      v187 = v175;
      v185 = v176;
      if ((v183 & 1) == 0)
      {
        return;
      }

LABEL_113:
      [v174 setNeedsDisplayInRect:1 avoidAdditionalLayout:{v180 + v185, v182 + v187, v189, v191}];
    }
  }
}

uint64_t __60__NSLayoutManager__primitiveInvalidateDisplayForGlyphRange___block_invoke(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6 = *(result + 40);
  if (*(*(v6 + 8) + 40))
  {
    v7 = *(result + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__NSLayoutManager__primitiveInvalidateDisplayForGlyphRange___block_invoke_2;
    v8[3] = &unk_1E7267358;
    *&v8[6] = a3;
    *&v8[7] = a4;
    *&v8[8] = a5;
    *&v8[9] = a6;
    v8[4] = a2;
    v8[5] = v6;
    return [v7 enumerateObjectsUsingBlock:v8];
  }

  return result;
}

uint64_t __60__NSLayoutManager__primitiveInvalidateDisplayForGlyphRange___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 view];
  v5 = *(a1 + 32);
  result = [v4 superview];
  if (v5 == result)
  {
    result = [v4 isFirstResponder];
    if ((result & 1) == 0)
    {
      [v4 frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [v4 frame];
      v22.origin.x = v15;
      v22.origin.y = v16;
      v22.size.width = v17;
      v22.size.height = v18;
      v23 = NSIntersectionRect(*(a1 + 48), v22);
      v21.origin.x = v8;
      v21.origin.y = v10;
      v21.size.width = v12;
      v21.size.height = v14;
      result = NSEqualRects(v21, v23);
      if (result)
      {
        v19 = *(*(*(a1 + 40) + 8) + 40);

        return [v19 addObject:a2];
      }
    }
  }

  return result;
}

uint64_t __60__NSLayoutManager__primitiveInvalidateDisplayForGlyphRange___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) viewProviderForTextAttachment:a2 characterIndex:a3];
  result = [v5 view];
  if (result)
  {
    v7 = result;
    result = [*(*(*(a1 + 40) + 8) + 40) containsObject:v5];
    if (result)
    {
      v8 = [*(a1 + 32) glyphIndexForCharacterAtIndex:a3];
      v9 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(*(a1 + 32), v8, 0);
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = *(a1 + 32);
      if ((*(v16 + 67) & 0x40) != 0)
      {
        v21 = [*(v16 + 32) objectAtIndex:0];
      }

      else if ([*(v16 + 48) count] <= v8)
      {
        v21 = 0;
      }

      else
      {
        v18 = *(v16 + 48);
        *&v17 = _NSBlockNumberForIndex(v18, v8, 0).n128_u64[0];
        v20 = 0;
        if (v18[11] <= v19)
        {
          v20 = v18[4] - v18[3];
        }

        v21 = *(v18[7] + (v18[2] + 8) * (v20 + v19) + 8);
      }

      [v21 textContainerOrigin];
      v23 = v9 + v22;
      v25 = v11 + v24;
      [objc_msgSend(v7 "superview")];
      v33.origin.x = v26;
      v33.origin.y = v27;
      v33.size.width = v28;
      v33.size.height = v29;
      v32.origin.x = v23;
      v32.origin.y = v25;
      v32.size.width = v13;
      v32.size.height = v15;
      result = NSIntersectsRect(v32, v33);
      if (result)
      {
        v30 = *(*(*(a1 + 40) + 8) + 40);

        return [v30 removeObject:v5];
      }
    }
  }

  return result;
}

uint64_t __60__NSLayoutManager__primitiveInvalidateDisplayForGlyphRange___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 view];

  return [v2 setHidden:1];
}

- (void)invalidateDisplayForCharacterRange:(NSRange)charRange
{
  length = charRange.length;
  location = charRange.location;
  v6 = [(NSTextStorage *)self->_textStorage length];
  v7 = v6;
  if (location >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = location;
  }

  if (location + length > v6)
  {
    location = v8;
    length = v6 - v8;
  }

  v19.location = [(NSLayoutManager *)self _blockRowRangeForCharRange:location, length];
  v19.length = v9;
  v18.location = location;
  v18.length = length;
  v10 = NSUnionRange(v18, v19);
  v11 = v10.length;
  if (self->_displayInvalidationDisableStack)
  {
    goto LABEL_7;
  }

  range2.location = 0;
  if (self->_firstUnlaidCharIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSLayoutManager *)self getFirstUnlaidCharacterIndex:&range2 glyphIndex:0];
  }

  else
  {
    range2.location = self->_firstUnlaidCharIndex;
  }

  if ((*(&self->_lmFlags + 3) & 0x40) == 0)
  {
    v13.location = range2.location;
    if (range2.location < v7)
    {
      if (range2.location <= v10.location)
      {
LABEL_7:
        v12.location = self->_deferredDisplayCharRange.location;
        if (v12.location == 0x7FFFFFFFFFFFFFFFLL)
        {
          self->_deferredDisplayCharRange = v10;
        }

        else
        {
          v12.length = self->_deferredDisplayCharRange.length;
          self->_deferredDisplayCharRange = NSUnionRange(v12, v10);
        }

        return;
      }

      v13.length = v10.location + v10.length - range2.location;
      if (v10.location + v10.length > range2.location)
      {
        v14.location = self->_deferredDisplayCharRange.location;
        if (v14.location == 0x7FFFFFFFFFFFFFFFLL)
        {
          self->_deferredDisplayCharRange.location = range2.location;
          self->_deferredDisplayCharRange.length = v13.length;
        }

        else
        {
          v14.length = self->_deferredDisplayCharRange.length;
          self->_deferredDisplayCharRange = NSUnionRange(v14, v13);
          v13.location = range2.location;
        }

        v11 = v13.location - v10.location;
      }
    }
  }

  if (v10.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(NSLayoutManager *)self _primitiveGlyphRangeForCharacterRange:v10.location, v11];
    [(NSLayoutManager *)self _primitiveInvalidateDisplayForGlyphRange:v15, v16];
  }
}

- (void)invalidateDisplayForGlyphRange:(NSRange)glyphRange
{
  v5 = [(NSLayoutManager *)self _primitiveCharacterRangeForGlyphRange:glyphRange.location, glyphRange.length];

  [(NSLayoutManager *)self invalidateDisplayForCharacterRange:v5, v4];
}

- (void)_forceDisplayToBeCorrectForViewsWithUnlaidGlyphs
{
  firstUnlaidGlyphIndex = 0;
  if (self->_firstUnlaidCharIndex == 0x7FFFFFFFFFFFFFFFLL || (v3 = self->_firstUnlaidGlyphIndex, v3 == 0x7FFFFFFFFFFFFFFFLL))
  {
    [(NSLayoutManager *)self getFirstUnlaidCharacterIndex:0 glyphIndex:&firstUnlaidGlyphIndex];
    v3 = firstUnlaidGlyphIndex;
    if (!firstUnlaidGlyphIndex)
    {
      goto LABEL_17;
    }
  }

  else
  {
    firstUnlaidGlyphIndex = self->_firstUnlaidGlyphIndex;
    if (!v3)
    {
LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }
  }

  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    v8 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
  }

  else
  {
    v4 = v3 - 1;
    if ([(NSRunStorage *)self->_containerRuns count]<= v3 - 1)
    {
      v8 = 0;
    }

    else
    {
      containerRuns = self->_containerRuns;
      _NSBlockNumberForIndex(containerRuns, v4, 0);
      v7 = 0;
      if (containerRuns->_gapBlockIndex <= v6)
      {
        v7 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
      }

      v8 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v7 + v6)];
    }
  }

  value = 0;
  extraData = self->_extraData;
  if (*(extraData + 10) == v8)
  {
    goto LABEL_17;
  }

  if (CFDictionaryGetValueIfPresent(*(extraData + 11), v8, &value))
  {
    v10 = value;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_18:
  if (v10 < [(NSMutableArray *)self->_textContainers count])
  {
    v11 = *MEMORY[0x1E696AA80];
    v12 = *(MEMORY[0x1E696AA80] + 8);
    v13 = *(MEMORY[0x1E696AA80] + 16);
    v14 = *(MEMORY[0x1E696AA80] + 24);
    do
    {
      v15 = [-[NSMutableArray objectAtIndex:](self->_textContainers objectAtIndex:{v10), "textView"}];
      if (v15)
      {
        v16 = v15;
        if ([v15 needsDisplay])
        {
          [v16 setNeedsDisplayInRect:0 avoidAdditionalLayout:{v11, v12, v13, v14}];
        }
      }

      ++v10;
    }

    while (v10 < [(NSMutableArray *)self->_textContainers count]);
  }
}

- (void)textStorage:(NSTextStorage *)str edited:(NSTextStorageEditedOptions)editedMask range:(NSRange)newCharRange changeInLength:(NSInteger)delta invalidatedRange:(NSRange)invalidatedCharRange
{
  length = newCharRange.length;
  location = newCharRange.location;
  v10 = editedMask;
  v12 = [(NSTextStorage *)self->_textStorage length];
  v17 = 0;
  v18 = 0;
  lmFlags = self->_lmFlags;
  self->_lmFlags = (*&lmFlags | 0x20000);
  if ((*&lmFlags & 8) == 0)
  {
    ++self->_textViewResizeDisableStack;
  }

  if ((v10 & 2) != 0)
  {
    [(NSLayoutManager *)self _clearTemporaryAttributesForCharacterRange:location changeInLength:length, delta];
  }

  [(NSLayoutManager *)self _invalidateGlyphsForCharacterRange:invalidatedCharRange.location editedCharacterRange:invalidatedCharRange.length changeInLength:location actualCharacterRange:length, delta, &v17];
  [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:v17 isSoft:v18, 0];
  v14 = v18 + v17;
  v15 = v12 - (v18 + v17);
  if (v12 >= v18 + v17)
  {
    [(NSLayoutManager *)self _invalidateLayoutForExtendedCharacterRange:v14 isSoft:v15, 1];
  }

  if (self->_textStorage && !v12 && [(NSMutableArray *)self->_textContainers count:v14])
  {
    v16 = 0;
    [(NSTypesetter *)[(NSLayoutManager *)self typesetter] layoutGlyphsInLayoutManager:self startingAtGlyphIndex:0 maxNumberOfLineFragments:1 nextGlyphIndex:&v16];
    [(NSLayoutManager *)self _invalidateInsertionPoint];
  }

  if ((v10 & 2) != 0)
  {
    [(NSLayoutManager *)self _fixSelectionAfterChangeInCharacterRange:location changeInLength:length, delta];
    if (delta < 0 && (*&self->_lmFlags & 0x2000) != 0 && ![(NSTextStorage *)self->_textStorage length])
    {
      if ([(NSMutableArray *)self->_textContainers count])
      {
        *&self->_lmFlags &= ~0x40000u;
        [-[NSLayoutManager delegate](self "delegate")];
        if ([(NSLayoutManager *)self didCompleteLayoutObserverBlock])
        {
          (*([(NSLayoutManager *)self didCompleteLayoutObserverBlock]+ 16))();
        }
      }
    }
  }

  _enableTextViewResizing(self);
  [(NSLayoutManager *)self _forceDisplayToBeCorrectForViewsWithUnlaidGlyphs];
  *&self->_lmFlags &= ~0x20000u;
}

- (void)ensureLayoutForCharacterRange:(NSRange)charRange
{
  length = charRange.length;
  location = charRange.location;
  [(NSLayoutManager *)self ensureGlyphsForCharacterRange:?];
  v7 = [(NSLayoutManager *)self glyphRangeForCharacterRange:location actualCharacterRange:length, 0];

  _NSFastFillAllLayoutHolesForGlyphRange(self, v7, v6);
}

- (void)ensureLayoutForTextContainer:(NSTextContainer *)container
{
  v23 = 0uLL;
  if ([(NSTextContainer *)container layoutManager]!= self)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"*** %@: given container does not appear in the list of containers for this NSLayoutManager.", _NSFullMethodName()}];
  }

  extraData = self->_extraData;
  if (*(*(extraData + 30) + 56))
  {
    v6 = *(extraData + 26);
    if ((*(v6 + 56) & 1) != 0 || *(v6 + 8))
    {
      value = 0;
      if (*(extraData + 10) == container)
      {
        v7 = 0;
      }

      else if (CFDictionaryGetValueIfPresent(*(extraData + 11), container, &value))
      {
        v7 = value;
      }

      else
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
      }

      lmFlags = self->_lmFlags;
      if ((*&lmFlags & 0x40) == 0)
      {
        ++self->_displayInvalidationDisableStack;
      }

      if ((*&lmFlags & 8) == 0)
      {
        ++self->_textViewResizeDisableStack;
      }

      v9 = 0;
      do
      {
        _NSFastFillAllLayoutHolesUpToEndOfContainerForGlyphIndex(self, v9);
        if ((*(&self->_lmFlags + 3) & 0x40) != 0)
        {
          v13 = *(*(self->_extraData + 26) + 8);
          v23.n128_u64[0] = 0;
          v23.n128_u64[1] = v13;
          v14 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
        }

        else if ([(NSRunStorage *)self->_containerRuns count]<= v9)
        {
          v14 = 0;
        }

        else
        {
          containerRuns = self->_containerRuns;
          _NSBlockNumberForIndex(containerRuns, v9, &v23);
          if (containerRuns->_gapBlockIndex <= v11)
          {
            v12 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
          }

          else
          {
            v12 = 0;
          }

          v14 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v12 + v11)];
        }

        if (v23.n128_u64[1])
        {
          v9 += v23.n128_u64[1];
        }

        else
        {
          ++v9;
        }

        if (v14)
        {
          v15 = v14 == container;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          break;
        }

        value = 0;
        v16 = self->_extraData;
        if (v16[10] == v14)
        {
          v18 = 0;
        }

        else
        {
          ValueIfPresent = CFDictionaryGetValueIfPresent(v16[11], v14, &value);
          v18 = value;
          if (!ValueIfPresent)
          {
            v18 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        if (v18 >= v7)
        {
          break;
        }

        v19 = self->_extraData;
        if ((*(v19[30] + 56) & 1) == 0)
        {
          break;
        }

        v20 = v19[26];
      }

      while ((*(v20 + 56) & 1) != 0 || v9 < *(v20 + 8));
      _enableTextViewResizing(self);
      v21 = self->_lmFlags;
      if ((*&v21 & 0x40) == 0)
      {
        if (!self->_displayInvalidationDisableStack || (v22 = self->_displayInvalidationDisableStack - 1, (self->_displayInvalidationDisableStack = v22) == 0))
        {
          self->_lmFlags = (*&v21 | 0x40);
          [(NSLayoutManager *)self _invalidateDisplayIfNeeded];
          *&self->_lmFlags &= ~0x40u;
        }
      }
    }
  }
}

- (void)ensureLayoutForBoundingRect:(CGRect)bounds inTextContainer:(NSTextContainer *)container
{
  if (*(*(self->_extraData + 30) + 56))
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    do
    {
      v10 = [(NSLayoutManager *)self glyphRangeForBoundingRect:container inTextContainer:x, y, width, height];
      v11 = v10;
      v13 = v12;
      v15 = 0;
      if ((*&self->_lmFlags & 0x40000000) != 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = 0;
      }

      _NSLayoutTreeGetFirstHoleAfterGlyphIndex(self, v14, &v15);
      if (v15 >= v11 + v13)
      {
        break;
      }

      [(NSLayoutManager *)self ensureLayoutForGlyphRange:v11, v13];
    }

    while ((*(*(self->_extraData + 30) + 56) & 1) != 0);
  }
}

- (void)insertGlyphs:(const NSGlyph *)glyphs length:(NSUInteger)length forStartingGlyphAtIndex:(NSUInteger)glyphIndex characterIndex:(NSUInteger)charIndex
{
  _NSGlyphTreeInsertGlyphs(self, charIndex, glyphIndex, length, glyphs);
  lmFlags = self->_lmFlags;
  if ((*&lmFlags & 0x80000) == 0)
  {
    self->_lmFlags = (*&lmFlags | 0x100000);
  }
}

- (void)replaceGlyphAtIndex:(NSUInteger)glyphIndex withGlyph:(NSGlyph)newGlyph
{
  _NSGlyphTreeReplaceGlyphAtIndex(self, glyphIndex, newGlyph);
  lmFlags = self->_lmFlags;
  if ((*&lmFlags & 0x80000) == 0)
  {
    self->_lmFlags = (*&lmFlags | 0x100000);
  }
}

- (void)deleteGlyphsInRange:(NSRange)glyphRange
{
  length = glyphRange.length;
  location = glyphRange.location;
  _NSGlyphTreeDeleteGlyphsInRange(self, glyphRange.location, glyphRange.length, glyphRange.length, v3, v4, v5, v6, v11);
  lmFlags = self->_lmFlags;
  if ((*&lmFlags & 0x80000) == 0)
  {
    self->_lmFlags = (*&lmFlags | 0x100000);
  }

  [(NSLayoutManager *)self _primitiveDeleteGlyphsInRange:location, length];
}

- (void)setCharacterIndex:(NSUInteger)charIndex forGlyphAtIndex:(NSUInteger)glyphIndex
{
  _NSGlyphTreeSetCharacterIndexForGlyphAtIndex(self, charIndex, glyphIndex, glyphIndex, v4, v5, v6, v7, v10);
  lmFlags = self->_lmFlags;
  if ((*&lmFlags & 0x80000) == 0)
  {
    self->_lmFlags = (*&lmFlags | 0x100000);
  }
}

- (void)setIntAttribute:(NSInteger)attributeTag value:(NSInteger)val forGlyphAtIndex:(NSUInteger)glyphIndex
{
  _NSGlyphTreeSetIntAttributeForGlyphAtIndex(self, glyphIndex, attributeTag, val, glyphIndex, v5, v6, v7, v12);
  lmFlags = self->_lmFlags;
  if ((*&lmFlags & 0x80000) == 0)
  {
    lmFlags = (*&lmFlags | 0x100000);
    self->_lmFlags = lmFlags;
  }

  if (attributeTag == 2 && val && (*&lmFlags & 0x2000000) == 0)
  {
    self->_lmFlags = (*&lmFlags | 0x2000000);
  }
}

- (void)setGlyphs:(const CGGlyph *)glyphs properties:(const NSGlyphProperty *)props characterIndexes:(const NSUInteger *)charIndexes font:(UIFont *)aFont forGlyphRange:(NSRange)glyphRange
{
  v28 = *MEMORY[0x1E69E9840];
  if (glyphRange.length >= 1)
  {
    location = glyphRange.location;
    v11 = glyphs;
    v12 = &glyphs[glyphRange.length];
    do
    {
      if ((v12 - v11) > 1)
      {
        v13 = 0;
        v14 = v12 - v11;
        if (v14 >= 0x80)
        {
          v14 = 128;
        }

        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        v16 = -1;
        while (1)
        {
          v17 = v16;
          v16 = charIndexes[v13];
          if (v17 == v16)
          {
            break;
          }

          v18 = props[v13];
          if (v18)
          {
            v19 = 0;
          }

          else if ((v18 & 2) != 0)
          {
            v19 = 0xFFFFFF;
          }

          else
          {
            v19 = v11[v13];
          }

          v27[v13++] = v19;
          if (v15 == v13)
          {
            _NSGlyphTreeInsertGlyphs(self, *charIndexes, location, v15, v27);
            v13 = v15;
            goto LABEL_20;
          }
        }

        _NSGlyphTreeInsertGlyphs(self, *charIndexes, location, v13, v27);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_20:
        v24 = &props[v13];
        do
        {
          v25 = *props;
          if ((*props & 4) != 0)
          {
            _NSGlyphTreeSetIntAttributeForGlyphAtIndex(self, location, 1, 1, v20, v21, v22, v23, v27[0]);
            v25 = *props;
          }

          if ((v25 & 8) != 0)
          {
            _NSGlyphTreeSetIntAttributeForGlyphAtIndex(self, location, 5, 1, v20, v21, v22, v23, v27[0]);
          }

          ++props;
          ++location;
        }

        while (props < v24);
      }

      else
      {
        _NSGlyphTreeInsertGlyphs(self, *charIndexes, location, 0, v27);
        v13 = 0;
      }

LABEL_26:
      v11 += v13;
      charIndexes += v13;
    }

    while (v11 < v12);
  }

  lmFlags = self->_lmFlags;
  if ((*&lmFlags & 0x80000) == 0)
  {
    self->_lmFlags = (*&lmFlags | 0x100000);
  }
}

- (NSUInteger)numberOfGlyphs
{
  v3 = [(NSTextStorage *)self->_textStorage length];
  if (!*(self->_extraData + 26))
  {
    return 0;
  }

  if (v3)
  {
    v4 = v3 - 1;
  }

  else
  {
    v4 = 0;
  }

  _NSFastFillAllGlyphHolesForCharacterRange(self, v4, 1uLL);
  return *(*(self->_extraData + 26) + 8);
}

- (CGGlyph)CGGlyphAtIndex:(NSUInteger)glyphIndex isValidIndex:(BOOL *)isValidIndex
{
  if (*(self->_extraData + 26))
  {
    _NSFastFillAllGlyphHolesForGlyphRange(self, glyphIndex, 1uLL);
    return _NSGlyphTreeGlyphAtIndex(self, glyphIndex, isValidIndex);
  }

  else
  {
    if (isValidIndex)
    {
      *isValidIndex = 0;
    }

    return -1;
  }
}

- (CGGlyph)CGGlyphAtIndex:(NSUInteger)glyphIndex
{
  v7 = 1;
  v5 = [(NSLayoutManager *)self glyphAtIndex:glyphIndex isValidIndex:&v7];
  if ((v7 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"*** %@: glyph index %lu not valid in layout manager %p", _NSFullMethodName(), glyphIndex, self}];
  }

  return v5;
}

- (BOOL)isValidGlyphIndex:(NSUInteger)glyphIndex
{
  v4 = 0;
  [(NSLayoutManager *)self glyphAtIndex:glyphIndex isValidIndex:&v4];
  return v4;
}

- (NSUInteger)characterIndexForGlyphAtIndex:(NSUInteger)glyphIndex
{
  if (!*(self->_extraData + 26))
  {
    return glyphIndex;
  }

  _NSFastFillAllGlyphHolesForGlyphRange(self, glyphIndex, 1uLL);

  return _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, glyphIndex);
}

- (NSUInteger)glyphIndexForCharacterAtIndex:(NSUInteger)charIndex
{
  if (!*(self->_extraData + 26))
  {
    return charIndex;
  }

  _NSFastFillAllGlyphHolesForCharacterRange(self, charIndex, 1uLL);

  return _NSGlyphTreeGlyphIndexForCharacterAtIndex(self, charIndex);
}

- (NSInteger)intAttribute:(NSInteger)attributeTag forGlyphAtIndex:(NSUInteger)glyphIndex
{
  _NSFastFillAllGlyphHolesForGlyphRange(self, glyphIndex, 1uLL);

  return _NSGlyphTreeIntAttributeForGlyphAtIndex(self, glyphIndex, attributeTag);
}

- (NSGlyphProperty)propertyForGlyphAtIndex:(NSUInteger)glyphIndex
{
  if (!*(self->_extraData + 26))
  {
    return 0;
  }

  _NSFastFillAllGlyphHolesForGlyphRange(self, glyphIndex, 1uLL);
  v5 = _NSGlyphTreeGlyphAtIndex(self, glyphIndex, 0);
  if (v5 == 0xFFFFFF)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (_NSGlyphTreeIntAttributeForGlyphAtIndex(self, glyphIndex, 1))
  {
    v6 |= 4uLL;
  }

  if (_NSGlyphTreeIntAttributeForGlyphAtIndex(self, glyphIndex, 5))
  {
    return v6 | 8;
  }

  else
  {
    return v6;
  }
}

- (NSUInteger)getGlyphsInRange:(NSRange)glyphRange glyphs:(CGGlyph *)glyphBuffer properties:(NSGlyphProperty *)props characterIndexes:(NSUInteger *)charIndexBuffer bidiLevels:(unsigned __int8 *)bidiLevelBuffer
{
  length = glyphRange.length;
  location = glyphRange.location;
  if (glyphRange.length)
  {
    _NSFastFillAllGlyphHolesForGlyphRange(self, glyphRange.location, glyphRange.length);
  }

  return _NSGlyphTreeGetCGGlyphsInRange(self, location, length, glyphBuffer, props, charIndexBuffer, bidiLevelBuffer);
}

- (NSUInteger)getGlyphsInRange:(NSRange)glyphRange glyphs:(NSGlyph *)glyphBuffer characterIndexes:(NSUInteger *)charIndexBuffer glyphInscriptions:(NSGlyphInscription *)inscribeBuffer elasticBits:(BOOL *)elasticBuffer bidiLevels:(unsigned __int8 *)bidiLevelBuffer
{
  length = glyphRange.length;
  location = glyphRange.location;
  if (glyphRange.length)
  {
    _NSFastFillAllGlyphHolesForGlyphRange(self, glyphRange.location, glyphRange.length);
  }

  return _NSGlyphTreeGetGlyphsInRange(self, location, length, glyphBuffer, charIndexBuffer, inscribeBuffer, elasticBuffer, bidiLevelBuffer);
}

- (NSUInteger)getGlyphs:(NSGlyph *)glyphArray range:(NSRange)glyphRange
{
  length = glyphRange.length;
  location = glyphRange.location;
  if (glyphRange.length)
  {
    _NSFastFillAllGlyphHolesForGlyphRange(self, glyphRange.location, glyphRange.length);
  }

  return _NSGlyphTreeGetShownGlyphsInRange(self, location, length, glyphArray);
}

- (void)setLineFragmentRect:(CGRect)fragmentRect forGlyphRange:(NSRange)glyphRange usedRect:(CGRect)usedRect
{
  if (!glyphRange.length)
  {
    return;
  }

  height = usedRect.size.height;
  width = usedRect.size.width;
  y = usedRect.origin.y;
  x = usedRect.origin.x;
  location = glyphRange.location;
  _NSLayoutTreeSetLineFragmentRectForGlyphRange(self, glyphRange.location, glyphRange.length, fragmentRect.origin.x, fragmentRect.origin.y, fragmentRect.size.width, fragmentRect.size.height, usedRect.origin.x, usedRect.origin.y, usedRect.size.width, usedRect.size.height, glyphRange.length, v5, v6, v7, v8, v22);
  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    v19 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
    if (!v19)
    {
      return;
    }
  }

  else
  {
    if ([(NSRunStorage *)self->_containerRuns count]<= location)
    {
      return;
    }

    containerRuns = self->_containerRuns;
    *&v17 = _NSBlockNumberForIndex(containerRuns, location, 0).n128_u64[0];
    v18 = 0;
    if (containerRuns->_gapBlockIndex <= v16)
    {
      v18 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
    }

    v19 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v18 + v16)];
    if (!v19)
    {
      return;
    }
  }

  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    value = 0;
    extraData = self->_extraData;
    if (extraData[10] == v19)
    {
      v21 = 0;
    }

    else
    {
      if (!CFDictionaryGetValueIfPresent(extraData[11], v19, &value))
      {
        return;
      }

      v21 = value;
      if (value == 0x7FFFFFFFFFFFFFFFLL)
      {
        return;
      }
    }

    [(NSLayoutManager *)self _invalidateUsageForTextContainersInRange:v21, 1, v17];
    return;
  }

  [(NSLayoutManager *)self _updateUsageForTextContainer:v19 addingUsedRect:x, y, width, height];
}

- (void)setLocation:(CGPoint)a3 forStartOfGlyphRange:(_NSRange)a4 coalesceRuns:(BOOL)a5
{
  length = a4.length;
  location = a4.location;
  y = a3.y;
  x = a3.x;
  cachedLocationNominalGlyphRange = self->_cachedLocationNominalGlyphRange;
  v11.location = location;
  v11.length = length;
  if (NSIntersectionRange(v11, cachedLocationNominalGlyphRange).length)
  {
    self->_cachedLocationNominalGlyphRange = xmmword_18E856180;
  }

  _NSLayoutTreeSetLocationForGlyphRange(self, location, length, x, y);
}

- (void)setLocation:(CGPoint)location forStartOfGlyphRange:(NSRange)glyphRange
{
  length = glyphRange.length;
  v5 = glyphRange.location;
  y = location.y;
  x = location.x;
  cachedLocationNominalGlyphRange = self->_cachedLocationNominalGlyphRange;
  v10.location = v5;
  v10.length = length;
  if (NSIntersectionRange(v10, cachedLocationNominalGlyphRange).length)
  {
    self->_cachedLocationNominalGlyphRange = xmmword_18E856180;
  }

  _NSLayoutTreeSetLocationForGlyphRange(self, v5, length, x, y);
}

- (void)setLocations:(NSPointArray)locations startingGlyphIndexes:(NSUInteger *)glyphIndexes count:(NSUInteger)count forGlyphRange:(NSRange)glyphRange
{
  if (count)
  {
    v8 = glyphRange.location + glyphRange.length;
    v9 = glyphIndexes + 1;
    p_y = &locations->y;
    v11 = 1;
    v12 = count;
    do
    {
      v13 = v8;
      if (v11 < count)
      {
        v13 = *v9;
      }

      [(NSLayoutManager *)self setLocation:*(v9 - 1) forStartOfGlyphRange:v13 - *(v9 - 1), *(p_y - 1), *p_y];
      ++v9;
      ++v11;
      p_y += 2;
      --v12;
    }

    while (v12);
  }
}

- (void)setDrawsOutsideLineFragment:(BOOL)flag forGlyphAtIndex:(NSUInteger)glyphIndex
{
  v9 = flag;
  if (flag)
  {
    _NSLayoutTreeSetLineFragmentDrawsOutsideLineAtGlyphIndex(self, glyphIndex);
    *&self->_lmFlags |= 2u;
  }

  _NSGlyphTreeSetDrawsOutsideLineFragmentForGlyphAtIndex(self, glyphIndex, v9, glyphIndex, v4, v5, v6, v7, v12);
}

- (NSUInteger)firstUnlaidCharacterIndex
{
  v3 = 0;
  _getFirstUnlaid(self, &v3, 0);
  return v3;
}

- (NSUInteger)firstUnlaidGlyphIndex
{
  v3 = 0;
  _getFirstUnlaid(self, 0, &v3);
  return v3;
}

- (void)getFirstUnlaidCharacterIndex:(NSUInteger *)charIndex glyphIndex:(NSUInteger *)glyphIndex
{
  if (charIndex)
  {
    *charIndex = [(NSLayoutManager *)self firstUnlaidCharacterIndex];
  }

  if (glyphIndex)
  {
    *glyphIndex = [(NSLayoutManager *)self firstUnlaidGlyphIndex];
  }
}

- (NSTextContainer)textContainerForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange withoutAdditionalLayout:(BOOL)flag
{
  extraData = self->_extraData;
  v7 = extraData[26];
  if (!v7 || !extraData[30])
  {
    if (effectiveGlyphRange)
    {
      v12 = 0;
      effectiveGlyphRange->location = 0;
      effectiveGlyphRange->length = 0;
      return v12;
    }

    return 0;
  }

  lmFlags = self->_lmFlags;
  if ((*&lmFlags & 0x40000000) == 0)
  {
    if (flag)
    {
      if (self->_containerRuns->_count <= glyphIndex)
      {
        if (effectiveGlyphRange)
        {
          v12 = 0;
          v13 = *(v7 + 8);
          effectiveGlyphRange->location = 0;
          effectiveGlyphRange->length = v13;
          return v12;
        }

        return 0;
      }

      goto LABEL_25;
    }

    if ((*&lmFlags & 0x40) == 0)
    {
      ++self->_displayInvalidationDisableStack;
    }

    if ((*&lmFlags & 8) == 0)
    {
      ++self->_textViewResizeDisableStack;
    }

    if (effectiveGlyphRange)
    {
      _NSFastFillAllLayoutHolesUpToEndOfContainerForGlyphIndex(self, glyphIndex);
      if ((*(&self->_lmFlags + 3) & 0x40) != 0)
      {
        v17 = *(*(self->_extraData + 26) + 8);
        effectiveGlyphRange->location = 0;
        effectiveGlyphRange->length = v17;
LABEL_28:
        v12 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
        goto LABEL_33;
      }
    }

    else
    {
      _NSFastFillAllLayoutHolesForGlyphRange(self, glyphIndex, 1uLL);
      if ((*(&self->_lmFlags + 3) & 0x40) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_25:
    if ([(NSRunStorage *)self->_containerRuns count]<= glyphIndex)
    {
      v12 = 0;
      if (flag)
      {
        return v12;
      }
    }

    else
    {
      containerRuns = self->_containerRuns;
      _NSBlockNumberForIndex(containerRuns, glyphIndex, effectiveGlyphRange);
      if (containerRuns->_gapBlockIndex <= v19)
      {
        v20 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
      }

      else
      {
        v20 = 0;
      }

      v12 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v20 + v19)];
      if (flag)
      {
        return v12;
      }
    }

LABEL_33:
    _enableTextViewResizing(self);
    v21 = self->_lmFlags;
    if ((*&v21 & 0x40) == 0)
    {
      if (!self->_displayInvalidationDisableStack || (v22 = self->_displayInvalidationDisableStack - 1, (self->_displayInvalidationDisableStack = v22) == 0))
      {
        self->_lmFlags = (*&v21 | 0x40);
        [(NSLayoutManager *)self _invalidateDisplayIfNeeded];
        *&self->_lmFlags &= ~0x40u;
      }
    }

    return v12;
  }

  if (effectiveGlyphRange)
  {
    v15 = *(v7 + 8);
    effectiveGlyphRange->location = 0;
    effectiveGlyphRange->length = v15;
  }

  textContainers = self->_textContainers;

  return [(NSMutableArray *)textContainers objectAtIndex:0];
}

- (NSTextContainer)textContainerForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange
{
  extraData = self->_extraData;
  v6 = extraData[26];
  if (!v6 || !extraData[30])
  {
    v11 = 0;
    if (effectiveGlyphRange)
    {
      effectiveGlyphRange->location = 0;
      effectiveGlyphRange->length = 0;
    }

    return v11;
  }

  lmFlags = self->_lmFlags;
  if ((*&lmFlags & 0x40000000) == 0)
  {
    if ((*&lmFlags & 0x40) == 0)
    {
      ++self->_displayInvalidationDisableStack;
    }

    if ((*&lmFlags & 8) == 0)
    {
      ++self->_textViewResizeDisableStack;
    }

    if (effectiveGlyphRange)
    {
      _NSFastFillAllLayoutHolesUpToEndOfContainerForGlyphIndex(self, glyphIndex);
      if ((*(&self->_lmFlags + 3) & 0x40) != 0)
      {
        v10 = *(*(self->_extraData + 26) + 8);
        effectiveGlyphRange->location = 0;
        effectiveGlyphRange->length = v10;
LABEL_22:
        v11 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
LABEL_26:
        _enableTextViewResizing(self);
        v18 = self->_lmFlags;
        if ((*&v18 & 0x40) == 0)
        {
          if (!self->_displayInvalidationDisableStack || (v19 = self->_displayInvalidationDisableStack - 1, (self->_displayInvalidationDisableStack = v19) == 0))
          {
            self->_lmFlags = (*&v18 | 0x40);
            [(NSLayoutManager *)self _invalidateDisplayIfNeeded];
            *&self->_lmFlags &= ~0x40u;
          }
        }

        return v11;
      }
    }

    else
    {
      _NSFastFillAllLayoutHolesForGlyphRange(self, glyphIndex, 1uLL);
      if ((*(&self->_lmFlags + 3) & 0x40) != 0)
      {
        goto LABEL_22;
      }
    }

    if ([(NSRunStorage *)self->_containerRuns count]<= glyphIndex)
    {
      v11 = 0;
    }

    else
    {
      containerRuns = self->_containerRuns;
      _NSBlockNumberForIndex(containerRuns, glyphIndex, effectiveGlyphRange);
      if (containerRuns->_gapBlockIndex <= v16)
      {
        v17 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
      }

      else
      {
        v17 = 0;
      }

      v11 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v17 + v16)];
    }

    goto LABEL_26;
  }

  if (effectiveGlyphRange)
  {
    v12 = *(v6 + 8);
    effectiveGlyphRange->location = 0;
    effectiveGlyphRange->length = v12;
  }

  textContainers = self->_textContainers;

  return [(NSMutableArray *)textContainers objectAtIndex:0];
}

- (CGRect)usedRectForTextContainer:(NSTextContainer *)container
{
  value = 0;
  extraData = self->_extraData;
  if (*(extraData + 10) == container)
  {
    v5 = 0;
LABEL_6:
    v6 = [(NSLayoutManager *)self _validatedStoredUsageForTextContainerAtIndex:v5];
    goto LABEL_7;
  }

  if (CFDictionaryGetValueIfPresent(*(extraData + 11), container, &value))
  {
    v5 = value;
    if (value != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }
  }

  v6 = MEMORY[0x1E696AA80];
LABEL_7:
  width = v6->var0.size.width;
  height = v6->var0.size.height;
  x = v6->var0.origin.x;
  y = v6->var0.origin.y;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)lineFragmentRectForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange withoutAdditionalLayout:(BOOL)flag
{
  if (!flag)
  {
    _NSFastFillAllLayoutHolesForGlyphRange(self, glyphIndex, 1uLL);
  }

  v8 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, glyphIndex, effectiveGlyphRange);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)lineFragmentRectForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange
{
  _NSFastFillAllLayoutHolesForGlyphRange(self, glyphIndex, 1uLL);

  v7 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, glyphIndex, effectiveGlyphRange);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)lineFragmentUsedRectForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange withoutAdditionalLayout:(BOOL)flag
{
  if (!flag)
  {
    _NSFastFillAllLayoutHolesForGlyphRange(self, glyphIndex, 1uLL);
  }

  v8 = _NSLayoutTreeLineFragmentUsedRectForGlyphAtIndex(self, glyphIndex, effectiveGlyphRange);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)lineFragmentUsedRectForGlyphAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4 allowLayout:(BOOL)a5
{
  [(NSLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:a3 effectiveRange:a4 withoutAdditionalLayout:!a5];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)lineFragmentUsedRectForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange
{
  _NSFastFillAllLayoutHolesForGlyphRange(self, glyphIndex, 1uLL);

  v7 = _NSLayoutTreeLineFragmentUsedRectForGlyphAtIndex(self, glyphIndex, effectiveGlyphRange);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)extraLineFragmentRect
{
  v6 = 0u;
  v7 = 0u;
  _NSLayoutTreeGetExtraLineFragmentRect(self, &v6, 0);
  v3 = *(&v6 + 1);
  v2 = *&v6;
  v5 = *(&v7 + 1);
  v4 = *&v7;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)extraLineFragmentUsedRect
{
  v6 = 0u;
  v7 = 0u;
  _NSLayoutTreeGetExtraLineFragmentRect(self, 0, &v6);
  v3 = *(&v6 + 1);
  v2 = *&v6;
  v5 = *(&v7 + 1);
  v4 = *&v7;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)locationForGlyphAtIndex:(NSUInteger)glyphIndex
{
  v47 = *MEMORY[0x1E69E9840];
  v45.location = 0;
  v45.length = 0;
  p_cachedLocationNominalGlyphRange = &self->_cachedLocationNominalGlyphRange;
  location = self->_cachedLocationNominalGlyphRange.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL || ((v8 = glyphIndex >= location, v7 = glyphIndex - location, v8) ? (v8 = v7 >= self->_cachedLocationNominalGlyphRange.length) : (v8 = 1), v8 || (cachedLocationGlyphIndex = self->_cachedLocationGlyphIndex, cachedLocationGlyphIndex > glyphIndex)))
  {
    _NSFastFillAllLayoutHolesForGlyphRange(self, glyphIndex, 1uLL);
    _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, glyphIndex, &v45);
    self->_cachedLocation.x = _NSLayoutTreeRunLocationForGlyphAtIndex(self, glyphIndex, p_cachedLocationNominalGlyphRange);
    self->_cachedLocation.y = v10;
    v11 = NSIntersectionRange(self->_cachedLocationNominalGlyphRange, v45);
    cachedLocationGlyphIndex = v11.location;
    self->_cachedLocationNominalGlyphRange = v11;
    self->_cachedLocationGlyphIndex = v11.location;
  }

  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    v16 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
  }

  else if ([(NSRunStorage *)self->_containerRuns count]<= cachedLocationGlyphIndex)
  {
    v16 = 0;
  }

  else
  {
    containerRuns = self->_containerRuns;
    *&v12 = _NSBlockNumberForIndex(containerRuns, cachedLocationGlyphIndex, 0).n128_u64[0];
    v15 = 0;
    if (containerRuns->_gapBlockIndex <= v14)
    {
      v15 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
    }

    v16 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v15 + v14)];
  }

  if (v16 == self->_cachedTextContainer)
  {
    cachedTextContainerIsVertical = self->_cachedTextContainerIsVertical;
  }

  else
  {
    cachedTextContainerIsVertical = [(NSTextContainer *)v16 layoutOrientation]!= 0;
  }

  v18 = self->_cachedLocationGlyphIndex;
  if (v18 >= glyphIndex)
  {
    goto LABEL_56;
  }

  v19 = 0;
  do
  {
    if (_NSGlyphTreeNotShownAttributeForGlyphAtIndex(self, v18))
    {
      goto LABEL_53;
    }

    v20 = _NSGlyphTreeCharacterIndexForGlyphAtIndex(self, self->_cachedLocationGlyphIndex);
    v21 = self->_cachedFontCharRange.location;
    v8 = v20 >= v21;
    v22 = v20 - v21;
    v24 = v8 && v22 < self->_cachedFontCharRange.length;
    if (v19 == 256)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    if (v19 >= 1 && (v25 & 1) == 0)
    {
      [(UIFont *)self->_cachedFont _totalAdvancementForNativeGlyphs:v46 count:v19];
      v19 = 0;
      self->_cachedLocation.x = v26 + self->_cachedLocation.x;
    }

    if ((v24 & 1) == 0)
    {
      cachedFont = self->_cachedFont;
      v28 = [(NSTextStorage *)self->_textStorage attribute:@"NSFont" atIndex:v20 effectiveRange:&self->_cachedFontCharRange];
      v43 = 0;
      v44 = 0;
      v29 = [(NSTextStorage *)self->_textStorage attribute:@"CTVerticalForms" atIndex:v20 effectiveRange:&v43];
      v30 = ([v29 BOOLValue] & 1) != 0 || v29 == 0 && cachedTextContainerIsVertical;
      if (v28)
      {
        if (!v30)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v28 = NSDefaultFont();
        if (!v30)
        {
LABEL_47:
          self->_cachedFont = [(NSLayoutManager *)self substituteFontForFont:v28];

          [(UIFont *)self->_cachedFont boundingRectForFont];
          extraData = self->_extraData;
          *(extraData + 14) = v37;
          extraData[15] = -v34 - v36;
          *(extraData + 16) = v38;
          extraData[17] = v36;
          goto LABEL_48;
        }
      }

      v31 = [v28 verticalFont];
      if (v31)
      {
        v28 = v31;
      }

      v32 = [v28 isVertical];
      if (v29)
      {
        if (v32)
        {
          v33 = self->_cachedFontCharRange.location;
          if (v44 + v43 < self->_cachedFontCharRange.length + v33)
          {
            self->_cachedFontCharRange.length = v44 + v43 - v33;
          }
        }
      }

      goto LABEL_47;
    }

LABEL_48:
    v39 = _NSGlyphTreeGlyphAtIndex(self, self->_cachedLocationGlyphIndex, 0);
    if (v39 == 0xFFFFFF)
    {
      if ([(UIFont *)self->_cachedFont _isDefaultFace])
      {
        LOWORD(v39) = 0;
      }

      else
      {
        LOWORD(v39) = -1;
      }
    }

    v46[v19++] = v39;
LABEL_53:
    v18 = self->_cachedLocationGlyphIndex + 1;
    self->_cachedLocationGlyphIndex = v18;
  }

  while (v18 < glyphIndex);
  if (v19 <= 0)
  {
LABEL_56:
    x = self->_cachedLocation.x;
    goto LABEL_57;
  }

  [(UIFont *)self->_cachedFont _totalAdvancementForNativeGlyphs:v46 count:v19];
  x = v40 + self->_cachedLocation.x;
  self->_cachedLocation.x = x;
LABEL_57:
  y = self->_cachedLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)notShownAttributeForGlyphAtIndex:(NSUInteger)glyphIndex
{
  _NSFastFillAllGlyphHolesForGlyphRange(self, glyphIndex, 1uLL);

  return _NSGlyphTreeNotShownAttributeForGlyphAtIndex(self, glyphIndex);
}

- (BOOL)drawsOutsideLineFragmentForGlyphAtIndex:(NSUInteger)glyphIndex
{
  _NSFastFillAllGlyphHolesForGlyphRange(self, glyphIndex, 1uLL);

  return _NSGlyphTreeDrawsOutsideLineFragmentForGlyphAtIndex(self, glyphIndex);
}

- (CGSize)attachmentSizeForGlyphAtIndex:(NSUInteger)glyphIndex
{
  v3 = _NSLayoutTreeAttachmentSizeForGlyphAtIndex(self, glyphIndex);
  result.height = v4;
  result.width = v3;
  return result;
}

- (NSRange)truncatedGlyphRangeInLineFragmentForGlyphAtIndex:(NSUInteger)glyphIndex
{
  v8 = 0;
  v9 = 0;
  [(NSLayoutManager *)self lineFragmentRectForGlyphAtIndex:glyphIndex effectiveRange:&v8];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (v9 && (v5 = _NSGlyphTreeEllipsisGlyphIndexForTruncatedGlyphRange(self, v8, v9), v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = v8 - v5 + v9;
    v4 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4;
  result.length = v6;
  result.location = v7;
  return result;
}

- (void)setLayoutRect:(NSRect)rect forTextBlock:(NSTextBlock *)block glyphRange:(NSRange)glyphRange
{
  length = glyphRange.length;
  location = glyphRange.location;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _NSFastFillAllGlyphHolesForGlyphRange(self, glyphRange.location, glyphRange.length);
  v13 = _NSAddTextBlockWithGlyphRange(self, self->_extraData + 23, block, location, length);
  v13->_layoutRect.origin.x = x;
  v13->_layoutRect.origin.y = y;
  v13->_layoutRect.size.width = width;
  v13->_layoutRect.size.height = height;
  if (location)
  {
    v14 = v13;
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    if (!NSIsEmptyRect(v19))
    {
      v15 = location - 1;
      _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v15, 0);
      v14->_layoutRect.origin.y = v14->_layoutRect.origin.y - (v16 + v17);

      _NSLayoutTreeSetBlocksDependUponLineFragmentAtGlyphIndex(self, v15);
    }
  }
}

- (void)setBoundsRect:(NSRect)rect forTextBlock:(NSTextBlock *)block glyphRange:(NSRange)glyphRange
{
  length = glyphRange.length;
  location = glyphRange.location;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _NSFastFillAllGlyphHolesForGlyphRange(self, glyphRange.location, glyphRange.length);
  v13 = _NSAddTextBlockWithGlyphRange(self, self->_extraData + 23, block, location, length);
  v13->_boundsRect.origin.x = x;
  v13->_boundsRect.origin.y = y;
  v13->_boundsRect.size.width = width;
  v13->_boundsRect.size.height = height;
  if (location)
  {
    v14 = v13;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    if (!NSIsEmptyRect(v22))
    {
      _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, location, 0);
      v14->_boundsRect.origin.y = v14->_boundsRect.origin.y - v15;
      _NSLayoutTreeSetBlocksDependUponLineFragmentAtGlyphIndex(self, location);
    }
  }

  if ((*(&self->_lmFlags + 3) & 0x40) != 0)
  {
    v20 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
    if (!v20)
    {
      return;
    }

    goto LABEL_11;
  }

  v16 = length + location - 1;
  if ([(NSRunStorage *)self->_containerRuns count]> v16)
  {
    containerRuns = self->_containerRuns;
    _NSBlockNumberForIndex(containerRuns, v16, 0);
    v19 = 0;
    if (containerRuns->_gapBlockIndex <= v18)
    {
      v19 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
    }

    v20 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v19 + v18)];
    if (v20)
    {
LABEL_11:
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      if (!NSIsEmptyRect(v23))
      {

        [(NSLayoutManager *)self _updateUsageForTextContainer:v20 addingUsedRect:x, y, width, height];
      }
    }
  }
}

- (NSRect)layoutRectForTextBlock:(NSTextBlock *)block glyphRange:(NSRange)glyphRange
{
  length = glyphRange.length;
  location = glyphRange.location;
  v8 = *MEMORY[0x1E696AA80];
  v9 = *(MEMORY[0x1E696AA80] + 8);
  v10 = *(MEMORY[0x1E696AA80] + 16);
  v11 = *(MEMORY[0x1E696AA80] + 24);
  v20 = xmmword_18E856180;
  _NSFastFillAllGlyphHolesForGlyphRange(self, glyphRange.location, glyphRange.length);
  v12 = *(self->_extraData + 23);
  if (v12)
  {
    _NSLocateTextBlockAtIndex(v12, block, location, &v20);
    if (v13)
    {
      if (__PAIR128__(length, location) == v20)
      {
        v8 = *(v13 + 16);
        v9 = *(v13 + 24);
        v10 = *(v13 + 32);
        v11 = *(v13 + 40);
        if (location)
        {
          if (!NSIsEmptyRect(*(v13 + 16)))
          {
            _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, location - 1, 0);
            v9 = v9 + v14 + v15;
          }
        }
      }
    }
  }

  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (NSRect)boundsRectForTextBlock:(NSTextBlock *)block glyphRange:(NSRange)glyphRange
{
  length = glyphRange.length;
  location = glyphRange.location;
  v8 = *MEMORY[0x1E696AA80];
  v9 = *(MEMORY[0x1E696AA80] + 8);
  v10 = *(MEMORY[0x1E696AA80] + 16);
  v11 = *(MEMORY[0x1E696AA80] + 24);
  v19 = xmmword_18E856180;
  _NSFastFillAllGlyphHolesForGlyphRange(self, glyphRange.location, glyphRange.length);
  v12 = *(self->_extraData + 23);
  if (v12)
  {
    _NSLocateTextBlockAtIndex(v12, block, location, &v19);
    if (v13)
    {
      if (__PAIR128__(length, location) == v19)
      {
        v8 = *(v13 + 48);
        v9 = *(v13 + 56);
        v10 = *(v13 + 64);
        v11 = *(v13 + 72);
        if (location)
        {
          if (!NSIsEmptyRect(*(v13 + 48)))
          {
            _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, location, 0);
            v9 = v9 + v14;
          }
        }
      }
    }
  }

  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (NSRect)layoutRectForTextBlock:(NSTextBlock *)block atIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange
{
  v9 = *MEMORY[0x1E696AA80];
  v10 = *(MEMORY[0x1E696AA80] + 8);
  v11 = *(MEMORY[0x1E696AA80] + 16);
  v12 = *(MEMORY[0x1E696AA80] + 24);
  _NSFastFillAllGlyphHolesForGlyphRange(self, glyphIndex, 1uLL);
  v13 = *(self->_extraData + 23);
  v14 = xmmword_18E856180;
  if (v13)
  {
    v24 = xmmword_18E856180;
    v25 = xmmword_18E856180;
    _NSLocateTextBlockAtIndex(v13, block, glyphIndex, &v25);
    if (v15)
    {
      v9 = *(v15 + 16);
      v10 = *(v15 + 24);
      v11 = *(v15 + 32);
      v12 = *(v15 + 40);
      *(&v16 + 1) = *(&v25 + 1);
      v17 = v25;
      if (v25)
      {
        v24 = v25;
        if (!NSIsEmptyRect(*(v15 + 16)))
        {
          _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v17 - 1, 0);
          v10 = v10 + v18 + v19;
        }
      }

      else
      {
        *&v16 = 0;
        v24 = v16;
      }
    }

    v14 = v24;
  }

  if (effectiveGlyphRange)
  {
    *effectiveGlyphRange = v14;
  }

  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (NSRect)boundsRectForTextBlock:(NSTextBlock *)block atIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange
{
  v9 = *MEMORY[0x1E696AA80];
  v10 = *(MEMORY[0x1E696AA80] + 8);
  v11 = *(MEMORY[0x1E696AA80] + 16);
  v12 = *(MEMORY[0x1E696AA80] + 24);
  _NSFastFillAllGlyphHolesForGlyphRange(self, glyphIndex, 1uLL);
  v13 = *(self->_extraData + 23);
  v14 = xmmword_18E856180;
  if (v13)
  {
    v23 = xmmword_18E856180;
    v24 = xmmword_18E856180;
    _NSLocateTextBlockAtIndex(v13, block, glyphIndex, &v24);
    if (v15)
    {
      v9 = *(v15 + 48);
      v10 = *(v15 + 56);
      v11 = *(v15 + 64);
      v12 = *(v15 + 72);
      *(&v16 + 1) = *(&v24 + 1);
      v17 = v24;
      if (v24)
      {
        v23 = v24;
        if (!NSIsEmptyRect(*(v15 + 48)))
        {
          _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, v17, 0);
          v10 = v10 + v18;
        }
      }

      else
      {
        *&v16 = 0;
        v23 = v16;
      }
    }

    v14 = v23;
  }

  if (effectiveGlyphRange)
  {
    *effectiveGlyphRange = v14;
  }

  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (NSRange)glyphRangeForCharacterRange:(NSRange)charRange actualCharacterRange:(NSRangePointer)actualCharRange
{
  if (*(self->_extraData + 26))
  {
    length = charRange.length;
    location = charRange.location;
    _NSFastFillAllGlyphHolesForCharacterRange(self, charRange.location, 1uLL);
    if (length >= 2)
    {
      _NSFastFillAllGlyphHolesForCharacterRange(self, length + location - 1, 2uLL);
    }

    v8 = _NSGlyphTreeGlyphRangeForCharacterRange(self, location, length, 1, 1, 1, actualCharRange);
  }

  else
  {
    if (actualCharRange)
    {
      actualCharRange->location = 0;
      actualCharRange->length = 0;
    }

    v8 = 0;
    v9 = 0;
  }

  result.length = v9;
  result.location = v8;
  return result;
}

- (NSRange)characterRangeForGlyphRange:(NSRange)glyphRange actualGlyphRange:(NSRangePointer)actualGlyphRange
{
  if (*(self->_extraData + 26))
  {
    length = glyphRange.length;
    location = glyphRange.location;
    _NSFastFillAllGlyphHolesForGlyphRange(self, glyphRange.location, 1uLL);
    if (length)
    {
      _NSFastFillAllGlyphHolesForGlyphRange(self, length + location - 1, 2uLL);
    }

    v8 = _NSGlyphTreeCharacterRangeForGlyphRange(self, location, length, 1, 1, &actualGlyphRange->location);
  }

  else
  {
    if (actualGlyphRange)
    {
      actualGlyphRange->location = 0;
      actualGlyphRange->length = 0;
    }

    v8 = 0;
    v9 = 0;
  }

  result.length = v9;
  result.location = v8;
  return result;
}

- (NSRange)glyphRangeForTextContainer:(NSTextContainer *)container
{
  if ([(NSTextContainer *)container layoutManager]!= self)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"*** %@: given container does not appear in the list of containers for this NSLayoutManager.", _NSFullMethodName()}];
  }

  if ([(NSTextStorage *)self->_textStorage length])
  {
    v19 = 0;
    v20 = 0;
    if ((*(&self->_lmFlags + 3) & 0x40) != 0)
    {
      v7 = 0;
      v8 = *(*(self->_extraData + 26) + 8);
      goto LABEL_33;
    }

    value = 0;
    extraData = self->_extraData;
    if (extraData[10] == container)
    {
      v6 = 0;
    }

    else if (CFDictionaryGetValueIfPresent(extraData[11], container, &value))
    {
      v6 = value;
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9 = [(NSLayoutManager *)self textContainerForGlyphAtIndex:0 effectiveRange:&v19];
    value = 0;
    v10 = self->_extraData;
    if (v10[10] == v9)
    {
      v12 = 0;
    }

    else
    {
      ValueIfPresent = CFDictionaryGetValueIfPresent(v10[11], v9, &value);
      v12 = value;
      if (!ValueIfPresent)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    if (v9 == container)
    {
LABEL_32:
      v7 = v19;
      v8 = v20;
      goto LABEL_33;
    }

    v7 = 0;
    while (v12 <= v6)
    {
      if (v20)
      {
        v7 += v20;
      }

      else
      {
        ++v7;
      }

      v13 = *(self->_extraData + 26);
      if ((*(v13 + 56) & 1) == 0)
      {
        v14 = *(v13 + 8);
        if (v7 >= v14)
        {
          v8 = 0;
          v7 = v14;
          goto LABEL_33;
        }
      }

      v15 = [(NSLayoutManager *)self textContainerForGlyphAtIndex:v7 effectiveRange:&v19];
      value = 0;
      v16 = self->_extraData;
      if (v16[10] == v15)
      {
        v12 = 0;
      }

      else
      {
        v17 = CFDictionaryGetValueIfPresent(v16[11], v15, &value);
        v12 = value;
        if (!v17)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      if (v15 == container)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
LABEL_33:
  v18 = v7;
  result.length = v8;
  result.location = v18;
  return result;
}

- (NSRange)rangeOfNominallySpacedGlyphsContainingIndex:(NSUInteger)glyphIndex
{
  location = glyphIndex;
  length = 1;
  _NSFastFillAllLayoutHolesForGlyphRange(self, glyphIndex, 1uLL);
  if ((_NSGlyphTreeNotShownAttributeForGlyphAtIndex(self, location) & 1) == 0)
  {
    v12.location = 0;
    v12.length = 0;
    v11.location = 0;
    v11.length = 0;
    _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, location, &v11);
    _NSLayoutTreeRunLocationForGlyphAtIndex(self, location, &v12);
    v6 = NSIntersectionRange(v12, v11);
    v12 = v6;
    v7 = location + 1;
    if (location + 1 >= v6.length + v6.location)
    {
      length = v6.length;
      location = v6.location;
    }

    else
    {
      do
      {
        v8 = _NSGlyphTreeNotShownAttributeForGlyphAtIndex(self, v7);
        location = v12.location;
        if (v8)
        {
          length = v7 - v12.location;
          v12.length = v7 - v12.location;
        }

        else
        {
          length = v12.length;
        }

        ++v7;
      }

      while (v7 < length + v12.location);
    }
  }

  v9 = location;
  v10 = length;
  result.length = v10;
  result.location = v9;
  return result;
}

- (CGRect)boundingRectForGlyphRange:(NSRange)glyphRange inTextContainer:(NSTextContainer *)container
{
  [(NSLayoutManager *)self _boundingRectForGlyphRange:glyphRange.location inTextContainer:glyphRange.length fast:container fullLineRectsOnly:(*&self->_lmFlags & 2) == 0, 0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (NSRange)glyphRangeForBoundingRect:(CGRect)bounds inTextContainer:(NSTextContainer *)container
{
  v4 = [(NSLayoutManager *)self _glyphRangeForBoundingRect:container inTextContainer:(*&self->_lmFlags & 2) == 0 fast:1 okToFillHoles:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.length = v5;
  result.location = v4;
  return result;
}

- (NSRange)glyphRangeForBoundingRectWithoutAdditionalLayout:(CGRect)bounds inTextContainer:(NSTextContainer *)container
{
  v4 = [(NSLayoutManager *)self _glyphRangeForBoundingRect:container inTextContainer:(*&self->_lmFlags & 2) == 0 fast:0 okToFillHoles:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.length = v5;
  result.location = v4;
  return result;
}

- (CGFloat)fractionOfDistanceThroughGlyphForPoint:(CGPoint)point inTextContainer:(NSTextContainer *)container
{
  v5 = 0.0;
  _glyphIndexForPoint(self, container, &v5, point.x, point.y);
  return v5;
}

- (NSUInteger)glyphIndexForPoint:(CGPoint)point inTextContainer:(NSTextContainer *)container fractionOfDistanceThroughGlyph:(CGFloat *)partialFraction
{
  y = point.y;
  x = point.x;
  if (partialFraction)
  {
    [(NSLayoutManager *)self fractionOfDistanceThroughGlyphForPoint:container inTextContainer:point.x, point.y];
    *partialFraction = v10;
  }

  return [(NSLayoutManager *)self glyphIndexForPoint:container inTextContainer:x, y];
}

- (NSUInteger)characterIndexForPoint:(CGPoint)point inTextContainer:(NSTextContainer *)container fractionOfDistanceBetweenInsertionPoints:(CGFloat *)partialFraction
{
  y = point.y;
  x = point.x;
  v49 = 0.0;
  v47 = 0;
  v48 = 0;
  v10 = [(NSTextStorage *)self->_textStorage length];
  v11 = [(NSLayoutManager *)self glyphIndexForPoint:container inTextContainer:&v49 fractionOfDistanceThroughGlyph:x, y];
  v12 = [(NSLayoutManager *)self characterIndexForGlyphAtIndex:v11];
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v13 = [(NSTextStorage *)self->_textStorage string];
  v41 = 0;
  v42 = 0;
  if (v12 >= v10)
  {
    goto LABEL_94;
  }

  v14 = v13;
  [(NSLayoutManager *)self lineFragmentRectForGlyphAtIndex:v11 effectiveRange:&v41];
  if (!v42)
  {
    goto LABEL_94;
  }

  if (y < v16 || y >= v16 + v17)
  {
    goto LABEL_94;
  }

  v19 = x - v15;
  v20 = [(NSLayoutManager *)self getLineFragmentInsertionPointArraysForCharacterAtIndex:v12 inDisplayOrder:1 positions:&v48 characterIndexes:&v46 count:&v44 alternatePositions:&v47 characterIndexes:&v45 count:&v43];
  if (v44 < 2)
  {
    goto LABEL_24;
  }

  if (v19 < *v48)
  {
    if (!v43)
    {
      goto LABEL_18;
    }

    for (i = 0; i < v43; ++i)
    {
      if (*v48 == *(v47 + 8 * i))
      {
        v22 = *(v45 + 8 * i) == 0x7FFFFFFFFFFFFFFFLL;
        if (*(v45 + 8 * i) != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }
      }

      else
      {
        v22 = 1;
      }
    }

    if (v22)
    {
LABEL_18:
      if (*v46 >= v10)
      {
        v12 = v46[1];
        goto LABEL_84;
      }

      if ([v14 characterAtIndex:?] == 13 && *v46 + 1 < v10 && objc_msgSend(v14, "characterAtIndex:") == 10)
      {
        v12 = *v46;
LABEL_84:
        v49 = 1.0;
        goto LABEL_94;
      }

      goto LABEL_94;
    }

    v35 = *v46;
    goto LABEL_82;
  }

  v23 = v48[v44 - 1];
  if (v19 >= v23)
  {
    if (v43)
    {
      for (j = 0; j < v43; ++j)
      {
        if (v23 == *(v47 + 8 * j))
        {
          v31 = *(v45 + 8 * j) == 0x7FFFFFFFFFFFFFFFLL;
          if (*(v45 + 8 * j) != 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }
        }

        else
        {
          v31 = 1;
        }
      }

      if (!v31)
      {
        v35 = v46[v44 - 1];
LABEL_82:
        v49 = 0.0;
        if (v35)
        {
          v12 = v35 - 1;
          goto LABEL_84;
        }

        goto LABEL_93;
      }
    }

    v32 = &v46[v44];
    if (*(v32 - 1) >= v10)
    {
      v12 = *(v32 - 2);
      goto LABEL_84;
    }

    if ([v14 characterAtIndex:?] == 13 && v46[v44 - 1] + 1 < v10 && objc_msgSend(v14, "characterAtIndex:") == 10)
    {
      v12 = v46[v44 - 1];
      goto LABEL_84;
    }
  }

  else
  {
LABEL_24:
    if (v44 < 2)
    {
      goto LABEL_94;
    }

    v24 = v49;
    v25 = v46 + 1;
    v26 = v48 + 1;
    v27 = 1;
    while (1)
    {
      v28 = *(v26 - 1);
      if (v19 >= v28)
      {
        v29 = *v26;
        if (v19 < *v26)
        {
          break;
        }
      }

      ++v27;
      ++v25;
      ++v26;
      if (v27 >= v44)
      {
        goto LABEL_94;
      }
    }

    if (v43)
    {
      for (k = 0; k < v43; ++k)
      {
        if (v28 == *(v47 + 8 * k))
        {
          v34 = *(v45 + 8 * k);
        }

        else
        {
          v34 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v34 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }
      }
    }

    else
    {
      v34 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v43)
    {
      for (m = 0; m < v43; ++m)
      {
        if (v29 == *(v47 + 8 * m))
        {
          v37 = *(v45 + 8 * m);
        }

        else
        {
          v37 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v37 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }
      }
    }

    else
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v39 = *(v25 - 1);
    v38 = *v25;
    if (v39 >= v38)
    {
      if (v39 > v38)
      {
        v24 = (v29 - v19) / (v29 - v28);
        v49 = v24;
        v12 = v38;
      }
    }

    else
    {
      v24 = (v19 - v28) / (v29 - v28);
      v49 = v24;
      v12 = v39;
    }

    if (v20 == 1)
    {
      if (v34 == 0x7FFFFFFFFFFFFFFFLL || v24 < 0.5)
      {
        if (v37 == 0x7FFFFFFFFFFFFFFFLL || v24 >= 0.5)
        {
          if (v39 < v37 && v37 != 0x7FFFFFFFFFFFFFFFLL && v24 >= 0.5)
          {
            v49 = (v19 - *(v26 - 1)) / (*v26 - *(v26 - 1));
            v12 = v39;
          }

          goto LABEL_94;
        }

        goto LABEL_91;
      }

LABEL_79:
      v49 = 0.0;
      if (v39)
      {
        v12 = v39 - 1;
        goto LABEL_84;
      }

      goto LABEL_93;
    }

    if (v34 != 0x7FFFFFFFFFFFFFFFLL && v24 < 0.5)
    {
      goto LABEL_79;
    }

    if (v34 > v38 && v34 != 0x7FFFFFFFFFFFFFFFLL && v24 >= 0.5)
    {
      v49 = (*v26 - v19) / (*v26 - *(v26 - 1));
      v12 = v38;
      goto LABEL_94;
    }

    if (v37 != 0x7FFFFFFFFFFFFFFFLL && v24 >= 0.5)
    {
LABEL_91:
      v49 = 0.0;
      if (v38)
      {
        v12 = v38 - 1;
        goto LABEL_84;
      }

LABEL_93:
      v12 = 0;
    }
  }

LABEL_94:
  if (partialFraction)
  {
    *partialFraction = v49;
  }

  return v12;
}

- (NSUInteger)getLineFragmentInsertionPointsForCharacterAtIndex:(NSUInteger)charIndex alternatePositions:(BOOL)aFlag inDisplayOrder:(BOOL)dFlag positions:(CGFloat *)positions characterIndexes:(NSUInteger *)charIndexes
{
  v12 = 0;
  __src = 0;
  v11 = 0;
  if (aFlag)
  {
    [(NSLayoutManager *)self getLineFragmentInsertionPointArraysForCharacterAtIndex:charIndex inDisplayOrder:dFlag positions:0 characterIndexes:0 count:0 alternatePositions:&__src characterIndexes:&v11 count:&v12];
  }

  else
  {
    [(NSLayoutManager *)self getLineFragmentInsertionPointArraysForCharacterAtIndex:charIndex inDisplayOrder:dFlag positions:&__src characterIndexes:&v11 count:&v12 alternatePositions:0 characterIndexes:0 count:0];
  }

  result = v12;
  if (v12)
  {
    if (positions)
    {
      memmove(positions, __src, 8 * v12);
      result = v12;
    }

    if (charIndexes)
    {
      memmove(charIndexes, v11, 8 * result);
      return v12;
    }
  }

  return result;
}

- (NSDictionary)temporaryAttributesAtCharacterIndex:(NSUInteger)charIndex effectiveRange:(NSRangePointer)effectiveCharRange
{
  v6 = *(self->_extraData + 9);
  if (!v6)
  {
    v11 = +[NSAttributeDictionary emptyAttributeDictionary];
    if (effectiveCharRange)
    {
      v12 = [(NSTextStorage *)self->_textStorage length];
      effectiveCharRange->location = 0;
      effectiveCharRange->length = v12;
    }

    return v11;
  }

  v8 = [v6 count];
  if (v8 <= charIndex)
  {
    v13 = v8;
    v11 = +[NSAttributeDictionary emptyAttributeDictionary];
    if (effectiveCharRange)
    {
      v14 = [(NSTextStorage *)self->_textStorage length];
      if (v14 <= charIndex)
      {
        effectiveCharRange->location = charIndex;
        effectiveCharRange->length = 1;
      }

      else
      {
        effectiveCharRange->location = v13;
        effectiveCharRange->length = v14 - v13;
      }
    }

    return v11;
  }

  v9 = *(self->_extraData + 9);

  return [v9 objectAtIndex:charIndex effectiveRange:effectiveCharRange];
}

- (void)setTemporaryAttributes:(NSDictionary *)attrs forCharacterRange:(NSRange)charRange
{
  if (charRange.length)
  {
    length = charRange.length;
    location = charRange.location;
    v8 = *(self->_extraData + 9);
    if (!v8)
    {
      if (![(NSDictionary *)attrs count])
      {
        return;
      }

      v8 = *(self->_extraData + 9);
      if (!v8)
      {
        *(self->_extraData + 9) = [objc_msgSend(MEMORY[0x1E696AD58] allocWithZone:{-[NSLayoutManager zone](self, "zone")), "init"}];
        [*(self->_extraData + 9) insertObject:+[NSAttributeDictionary emptyAttributeDictionary](NSAttributeDictionary range:{"emptyAttributeDictionary"), 0, -[NSTextStorage length](self->_textStorage, "length")}];
        v8 = *(self->_extraData + 9);
      }
    }

    v13.length = [v8 count];
    v12.location = location;
    v12.length = length;
    v13.location = 0;
    v9 = NSIntersectionRange(v12, v13);
    v10 = [NSAttributeDictionary newWithDictionary:attrs];
    [*(self->_extraData + 9) replaceObjectsInRange:v9.location withObject:v9.length length:{v10, v9.length}];

    [(NSLayoutManager *)self invalidateDisplayForCharacterRange:v9.location, v9.length];
  }
}

- (void)addTemporaryAttributes:(NSDictionary *)attrs forCharacterRange:(NSRange)charRange
{
  if (charRange.length)
  {
    length = charRange.length;
    location = charRange.location;
    v8 = *(self->_extraData + 9);
    if (!v8)
    {
      *(self->_extraData + 9) = [objc_msgSend(MEMORY[0x1E696AD58] allocWithZone:{-[NSLayoutManager zone](self, "zone")), "init"}];
      [*(self->_extraData + 9) insertObject:+[NSAttributeDictionary emptyAttributeDictionary](NSAttributeDictionary range:{"emptyAttributeDictionary"), 0, -[NSTextStorage length](self->_textStorage, "length")}];
      v8 = *(self->_extraData + 9);
    }

    v19.length = [v8 count];
    v16.location = location;
    v16.length = length;
    v19.location = 0;
    v9 = NSIntersectionRange(v16, v19);
    if (v9.length)
    {
      v10 = v9.location;
      v11 = v9.length;
      do
      {
        v15.location = 0;
        v15.length = 0;
        v12 = [objc_msgSend(*(self->_extraData + 9) objectAtIndex:v10 effectiveRange:{&v15), "mutableCopyWithZone:", 0}];
        v17.location = v10;
        v17.length = v11;
        v13 = NSIntersectionRange(v17, v15);
        v15.location = v10;
        v15.length = v13.length;
        if (v13.length > v11)
        {
          v15.length = v11;
        }

        [v12 addEntriesFromDictionary:{attrs, v15.location}];
        if (v15.length)
        {
          [*(self->_extraData + 9) replaceObjectsInRange:v15.location withObject:v15.length length:{v12, v15.length}];
        }

        if (!v15.length)
        {
          break;
        }

        v10 += v15.length;
        v11 -= v15.length;
      }

      while (v11);
    }

    if (([objc_msgSend(MEMORY[0x1E695DFD8] setWithArray:{-[NSDictionary allKeys](attrs, "allKeys")), "isSubsetOfSet:", _NSFaultInObject()}] & 1) == 0)
    {
      v20.length = [*(self->_extraData + 9) count];
      v18.location = location;
      v18.length = length;
      v20.location = 0;
      v14 = NSIntersectionRange(v18, v20);
      [(NSLayoutManager *)self invalidateDisplayForCharacterRange:v14.location, v14.length];
    }
  }
}

- (void)addTemporaryAttribute:(NSAttributedStringKey)attrName value:(id)value forCharacterRange:(NSRange)charRange
{
  if (charRange.length)
  {
    length = charRange.length;
    location = charRange.location;
    v10 = *(self->_extraData + 9);
    if (!v10)
    {
      *(self->_extraData + 9) = [objc_msgSend(MEMORY[0x1E696AD58] allocWithZone:{-[NSLayoutManager zone](self, "zone")), "init"}];
      [*(self->_extraData + 9) insertObject:+[NSAttributeDictionary emptyAttributeDictionary](NSAttributeDictionary range:{"emptyAttributeDictionary"), 0, -[NSTextStorage length](self->_textStorage, "length")}];
      v10 = *(self->_extraData + 9);
    }

    v21.length = [v10 count];
    v18.location = location;
    v18.length = length;
    v21.location = 0;
    v11 = NSIntersectionRange(v18, v21);
    if (v11.length)
    {
      v12 = v11.location;
      v13 = v11.length;
      do
      {
        v17.location = 0;
        v17.length = 0;
        v14 = [objc_msgSend(*(self->_extraData + 9) objectAtIndex:v12 effectiveRange:{&v17), "mutableCopyWithZone:", 0}];
        v19.location = v12;
        v19.length = v13;
        v15 = NSIntersectionRange(v19, v17);
        v17.location = v12;
        v17.length = v15.length;
        if (v15.length > v13)
        {
          v17.length = v13;
        }

        [v14 setObject:value forKey:{attrName, v17.location}];
        if (v17.length)
        {
          [*(self->_extraData + 9) replaceObjectsInRange:v17.location withObject:v17.length length:{v14, v17.length}];
        }

        if (!v17.length)
        {
          break;
        }

        v12 += v17.length;
        v13 -= v17.length;
      }

      while (v13);
    }

    if (([_NSFaultInObject() containsObject:attrName] & 1) == 0)
    {
      v22.length = [*(self->_extraData + 9) count];
      v20.location = location;
      v20.length = length;
      v22.location = 0;
      v16 = NSIntersectionRange(v20, v22);
      [(NSLayoutManager *)self invalidateDisplayForCharacterRange:v16.location, v16.length];
    }
  }
}

- (void)removeTemporaryAttribute:(NSAttributedStringKey)attrName forCharacterRange:(NSRange)charRange
{
  v5 = *(self->_extraData + 9);
  if (v5)
  {
    v6 = charRange.length == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    length = charRange.length;
    location = charRange.location;
    v20.length = [v5 count];
    v17.location = location;
    v17.length = length;
    v20.location = 0;
    v10 = NSIntersectionRange(v17, v20);
    if (v10.length)
    {
      v11 = v10.location;
      v12 = v10.length;
      do
      {
        v16.location = 0;
        v16.length = 0;
        v13 = [objc_msgSend(*(self->_extraData + 9) objectAtIndex:v11 effectiveRange:{&v16), "mutableCopyWithZone:", 0}];
        v18.location = v11;
        v18.length = v12;
        v14 = NSIntersectionRange(v18, v16);
        v16.location = v11;
        v16.length = v14.length;
        if (v14.length > v12)
        {
          v16.length = v12;
        }

        [v13 removeObjectForKey:{attrName, v16.location}];
        if (v16.length)
        {
          [*(self->_extraData + 9) replaceObjectsInRange:v16.location withObject:v16.length length:{v13, v16.length}];
        }

        if (!v16.length)
        {
          break;
        }

        v11 += v16.length;
        v12 -= v16.length;
      }

      while (v12);
    }

    if (([_NSFaultInObject() containsObject:attrName] & 1) == 0)
    {
      v21.length = [*(self->_extraData + 9) count];
      v19.location = location;
      v19.length = length;
      v21.location = 0;
      v15 = NSIntersectionRange(v19, v21);
      [(NSLayoutManager *)self invalidateDisplayForCharacterRange:v15.location, v15.length];
    }
  }
}

- (id)temporaryAttribute:(NSAttributedStringKey)attrName atCharacterIndex:(NSUInteger)location effectiveRange:(NSRangePointer)range
{
  v6 = [(NSLayoutManager *)self temporaryAttributesAtCharacterIndex:location effectiveRange:range];

  return [(NSDictionary *)v6 objectForKey:attrName];
}

- (id)temporaryAttribute:(NSAttributedStringKey)attrName atCharacterIndex:(NSUInteger)location longestEffectiveRange:(NSRangePointer)range inRange:(NSRange)rangeLimit
{
  length = rangeLimit.length;
  v7 = rangeLimit.location;
  v11 = [(NSLayoutManager *)self temporaryAttribute:attrName atCharacterIndex:location effectiveRange:?];
  if (range)
  {
    v12 = [(NSTextStorage *)self->_textStorage length];
    range2 = *range;
    if (v7 + length >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v7 + length;
    }

    do
    {
      v14 = range2.length + range2.location;
      if (range2.length + range2.location >= v13)
      {
        break;
      }

      v15 = [(NSLayoutManager *)self temporaryAttribute:attrName atCharacterIndex:range2.length + range2.location effectiveRange:&range2];
    }

    while (v15 == v11 || [v15 isEqual:v11]);
    range2 = *range;
    do
    {
      v16 = range2.location;
      if (range2.location <= v7)
      {
        break;
      }

      v17 = [(NSLayoutManager *)self temporaryAttribute:attrName atCharacterIndex:range2.location - 1 effectiveRange:&range2];
    }

    while (v17 == v11 || [v17 isEqual:v11]);
    v21.length = v14 - v16;
    v20.location = v7;
    v20.length = length;
    v21.location = v16;
    *range = NSIntersectionRange(v20, v21);
  }

  return v11;
}

- (NSDictionary)temporaryAttributesAtCharacterIndex:(NSUInteger)location longestEffectiveRange:(NSRangePointer)range inRange:(NSRange)rangeLimit
{
  length = rangeLimit.length;
  v6 = rangeLimit.location;
  v9 = [(NSLayoutManager *)self temporaryAttributesAtCharacterIndex:location effectiveRange:?];
  if (range)
  {
    v10 = [(NSTextStorage *)self->_textStorage length];
    range2 = *range;
    if (v6 + length >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6 + length;
    }

    do
    {
      v12 = range2.length + range2.location;
    }

    while (range2.length + range2.location < v11 && [(NSDictionary *)[(NSLayoutManager *)self temporaryAttributesAtCharacterIndex:range2.length + range2.location effectiveRange:&range2] isEqualToDictionary:v9]);
    range2 = *range;
    do
    {
      v13 = range2.location;
    }

    while (range2.location > v6 && [(NSDictionary *)[(NSLayoutManager *)self temporaryAttributesAtCharacterIndex:range2.location - 1 effectiveRange:&range2] isEqualToDictionary:v9]);
    v17.length = v12 - v13;
    v16.location = v6;
    v16.length = length;
    v17.location = v13;
    *range = NSIntersectionRange(v16, v17);
  }

  return v9;
}

- (NSFont)substituteFontForFont:(NSFont *)originalFont
{
  if (![(NSLayoutManager *)self usesScreenFonts])
  {
    return originalFont;
  }

  return [(UIFont *)originalFont screenFontWithRenderingMode:0];
}

- (CGFloat)defaultLineHeightForFont:(NSFont *)theFont
{
  v4 = [(NSLayoutManager *)self usesFontLeading];
  [(UIFont *)theFont _defaultLineHeightForUILayout];
  v6 = v5;
  v7 = 0.0;
  if (v4)
  {
    [(UIFont *)theFont _leading];
  }

  return v6 + v7;
}

- (CGFloat)defaultBaselineOffsetForFont:(NSFont *)theFont
{
  [(NSLayoutManager *)self usesFontLeading];

  [(UIFont *)theFont ascender];
  return result;
}

- (void)setUsesFontLeading:(BOOL)usesFontLeading
{
  if (usesFontLeading)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_lmFlags = (*&self->_lmFlags & 0xFEFFFFFF | v3);
}

- (void)setSynchronizesAlignmentToDirection:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_lmFlags = (*&self->_lmFlags & 0xFFDFFFFF | v3);
}

- (void)enumerateLineFragmentsForGlyphRange:(NSRange)glyphRange usingBlock:(void *)block
{
  length = glyphRange.length;
  location = glyphRange.location;
  v31 = glyphRange.location;
  v32 = 0;
  v30 = 0;
  [(NSLayoutManager *)self ensureLayoutForGlyphRange:?];
  v8 = *(*(self->_extraData + 26) + 8);
  if (v8 > location)
  {
    v9 = location + length <= v8 ? length : v8 - location;
    for (i = v9 + location; location < i; v31 = location)
    {
      v11 = _NSLayoutTreeLineFragmentRectForGlyphAtIndex(self, location, &v31);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = _NSLayoutTreeLineFragmentUsedRectForGlyphAtIndex(self, v31, 0);
      v20 = v19;
      v22 = v21;
      v24 = v23;
      if ((*(&self->_lmFlags + 3) & 0x40) != 0)
      {
        v29 = [(NSMutableArray *)self->_textContainers objectAtIndex:0];
      }

      else
      {
        v25 = v31;
        if ([(NSRunStorage *)self->_containerRuns count]<= v25)
        {
          v29 = 0;
        }

        else
        {
          containerRuns = self->_containerRuns;
          _NSBlockNumberForIndex(containerRuns, v25, 0);
          v28 = 0;
          if (containerRuns->_gapBlockIndex <= v27)
          {
            v28 = containerRuns->_maxBlocks - containerRuns->_numBlocks;
          }

          v29 = *&containerRuns->_runs->var1[(containerRuns->_elementSize + 8) * (v28 + v27)];
        }
      }

      (*(block + 2))(block, v29, v31, v32, &v30, v11, v13, v15, v17, v18, v20, v22, v24);
      if (v30)
      {
        break;
      }

      location = v32 + v31;
    }
  }
}

- (void)enumerateEnclosingRectsForGlyphRange:(NSRange)glyphRange withinSelectedGlyphRange:(NSRange)selectedRange inTextContainer:(NSTextContainer *)textContainer usingBlock:(void *)block
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v11 = 0;
  LOBYTE(v10) = 0;
  v7 = [(NSLayoutManager *)self _rectArrayForRange:glyphRange.location withinSelectionRange:glyphRange.length rangeIsCharRange:selectedRange.location singleRectOnly:selectedRange.length fullLineRectsOnly:0 inTextContainer:0 rectCount:v10 rangeWithinContainer:textContainer glyphsDrawOutsideLines:&v12 rectArray:0 rectArrayCapacity:0, v13, 64];
  if (v12 >= 1)
  {
    p_x = &v7->origin.x;
    v9 = &v7[v12];
    do
    {
      (*(block + 2))(block, &v11, *p_x, p_x[1], p_x[2], p_x[3]);
      if (v11)
      {
        break;
      }

      p_x += 4;
    }

    while (p_x < v9);
  }
}

- (void)enumerateEnclosingRectsForCharacterRange:(_NSRange)a3 withinSelectedCharacterRange:(_NSRange)a4 inTextContainer:(id)a5 usingBlock:(id)a6
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v11 = 0;
  LOBYTE(v10) = 0;
  v7 = [(NSLayoutManager *)self _rectArrayForRange:a3.location withinSelectionRange:a3.length rangeIsCharRange:a4.location singleRectOnly:a4.length fullLineRectsOnly:1 inTextContainer:0 rectCount:v10 rangeWithinContainer:a5 glyphsDrawOutsideLines:&v12 rectArray:0 rectArrayCapacity:0, v13, 64];
  if (v12 >= 1)
  {
    p_x = &v7->origin.x;
    v9 = &v7[v12];
    do
    {
      (*(a6 + 2))(a6, &v11, *p_x, p_x[1], p_x[2], p_x[3]);
      if (v11)
      {
        break;
      }

      p_x += 4;
    }

    while (p_x < v9);
  }
}

- (void)showCGGlyphs:(const CGGlyph *)glyphs positions:(const CGPoint *)positions count:(NSUInteger)glyphCount font:(UIFont *)font matrix:(CGAffineTransform *)textMatrix attributes:(NSDictionary *)attributes inContext:(CGContextRef)graphicsContext
{
  v9 = *&textMatrix->c;
  v10[0] = *&textMatrix->a;
  v10[1] = v9;
  v10[2] = *&textMatrix->tx;
  [(NSLayoutManager *)self showCGGlyphs:glyphs positions:positions count:glyphCount font:font textMatrix:v10 attributes:attributes inContext:graphicsContext];
}

- (void)fillBackgroundRectArray:(const CGRect *)rectArray count:(NSUInteger)rectCount forCharacterRange:(NSRange)charRange color:(UIColor *)color
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 2;
  if (rectCount)
  {
    if (_CFExecutableLinkedOnOrAfter())
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__NSLayoutManager_fillBackgroundRectArray_count_forCharacterRange_color___block_invoke;
      block[3] = &unk_1E72673F0;
      block[4] = &v12;
      if (fillBackgroundRectArray_count_forCharacterRange_color__onceToken != -1)
      {
        dispatch_once(&fillBackgroundRectArray_count_forCharacterRange_color__onceToken, block);
      }
    }

    v9 = [-[objc_class graphicsContextForApplicationFrameworkContext:](+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider "textGraphicsContextProviderClass")];
    CompositeOperation = CGContextGetCompositeOperation();
    if (CompositeOperation != *(v13 + 6))
    {
      CGContextSetCompositeOperation();
    }

    CGContextFillRects(v9, rectArray, rectCount);
    if (CompositeOperation != *(v13 + 6))
    {
      CGContextSetCompositeOperation();
    }
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t __73__NSLayoutManager_fillBackgroundRectArray_count_forCharacterRange_color___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (void)showCGGlyphs:(const CGGlyph *)glyphs positions:(const CGPoint *)positions count:(NSInteger)glyphCount font:(UIFont *)font textMatrix:(CGAffineTransform *)textMatrix attributes:(NSDictionary *)attributes inContext:(CGContextRef)CGContext
{
  v9 = *&textMatrix->c;
  v10[0] = *&textMatrix->a;
  v10[1] = v9;
  v10[2] = *&textMatrix->tx;
  [(NSLayoutManager *)self _showCGGlyphs:glyphs positions:positions count:glyphCount font:font textMatrix:v10 attributes:attributes inContext:CGContext];
}

- (void)showAttachmentCell:(NSCell *)cell inRect:(NSRect)rect characterIndex:(NSUInteger)attachmentIndex
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = [(NSCell *)cell attachment];
  if (v12)
  {
    [v12 lineLayoutPadding];
    if (v13 != 0.0)
    {
      v14 = v13;
      v16.origin.x = x;
      v16.origin.y = y;
      v16.size.width = width;
      v16.size.height = height;
      v17 = NSInsetRect(v16, v14, 0.0);
      x = v17.origin.x;
      y = v17.origin.y;
      width = v17.size.width;
      height = v17.size.height;
    }
  }

  [(NSLayoutManager *)self _showAttachmentCell:cell inRect:attachmentIndex characterIndex:x, y, width, height];
}

- (void)coordinateAccess:(id)a3
{
  [(NSTextStorage *)self->_textStorage _lockForWriting];
  (*(a3 + 2))(a3, self);
  textStorage = self->_textStorage;

  [(NSTextStorage *)textStorage _unlock];
}

- (id)destinationTextContainerForRange:(_NSRange)a3 inTextContainer:(id)a4
{
  length = a3.length;
  location = a3.location;
  [(NSLayoutManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v8 = [-[NSLayoutManager delegate](self "delegate")]) == 0)
  {
    [(NSLayoutManager *)self textStorage];
    v9 = objc_alloc_init(objc_opt_class());
    v10 = objc_alloc_init(objc_opt_class());
    [v10 setUsesFontLeading:{objc_msgSend(objc_msgSend(a4, "layoutManager"), "usesFontLeading")}];
    [v10 setAllowsOriginalFontMetricsOverride:{objc_msgSend(objc_msgSend(a4, "layoutManager"), "allowsOriginalFontMetricsOverride")}];
    [v10 setTypesetterBehavior:{objc_msgSend(objc_msgSend(a4, "layoutManager"), "typesetterBehavior")}];
    v11 = objc_alloc(objc_opt_class());
    [a4 size];
    v8 = [v11 initWithSize:?];
    [a4 lineFragmentPadding];
    [v8 setLineFragmentPadding:?];
    [v8 setExclusionPaths:{objc_msgSend(a4, "exclusionPaths")}];
    [v8 setLineBreakMode:{objc_msgSend(a4, "lineBreakMode")}];
    [v8 setMaximumNumberOfLines:{objc_msgSend(a4, "maximumNumberOfLines")}];
    [v9 addLayoutManager:v10];
    [v10 addTextContainer:v8];

    [v9 replaceCharactersInRange:0 withAttributedString:{objc_msgSend(v9, "length"), -[NSTextStorage attributedSubstringFromRange:](-[NSLayoutManager textStorage](self, "textStorage"), "attributedSubstringFromRange:", location, length)}];
  }

  return v8;
}

- (id)layoutFragmentsForReplacingCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4 rect:(CGRect)a5 textContainer:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  length = a3.length;
  location = a3.location;
  v15 = [MEMORY[0x1E695DF70] array];
  if (length || [a4 length])
  {
    v16 = [(NSLayoutManager *)self glyphRangeForCharacterRange:location actualCharacterRange:length, 0];
    v18 = v17;
    v231.location = 0;
    v231.length = 0;
    v19 = [(NSLayoutManager *)self textContainerForGlyphAtIndex:v17 + v16 - 1 effectiveRange:&v231];
    v232.location = v16;
    v232.length = v18;
    v20 = NSIntersectionRange(v232, v231);
    if ((v20.length || [a4 length]) && (length || -[NSTextStorage length](-[NSLayoutManager textStorage](self, "textStorage"), "length") != location) && v19 == a6)
    {
      [(NSLayoutManager *)self lineFragmentRectForGlyphAtIndex:v20.location effectiveRange:0];
      v259.origin.x = x;
      v259.origin.y = y;
      v259.size.width = width;
      v259.size.height = height;
      if (NSIntersectsRect(v241, v259) || ([(NSLayoutManager *)self lineFragmentRectForGlyphAtIndex:v20.length + v20.location - 1 effectiveRange:0], v260.origin.x = x, v260.origin.y = y, v260.size.width = width, v260.size.height = height, NSIntersectsRect(v242, v260)))
      {
        v21 = [(NSLayoutManager *)self characterRangeForGlyphRange:v20.location actualGlyphRange:v20.length, 0];
        aRect_24 = v22;
        v23 = [(NSTextStorage *)[(NSLayoutManager *)self textStorage] string];
        v230 = 0;
        [(NSLayoutManager *)self boundingRectForGlyphRange:v20.location inTextContainer:v20.length, a6];
        v25 = [(NSLayoutManager *)self glyphRangeForBoundingRectWithoutAdditionalLayout:a6 inTextContainer:x, y, width, height + v24];
        v27 = v26;
        v29 = [(NSLayoutManager *)self characterRangeForGlyphRange:v25 actualGlyphRange:v26, 0];
        v30 = v28;
        if (v25 > v231.location)
        {
          [v23 getParagraphStart:&v230 end:0 contentsEnd:0 forRange:{v29, v28}];
          v31 = v230;
          if (v230 == v29)
          {
            [v23 getParagraphStart:&v230 end:0 contentsEnd:0 forRange:{v29 - 1, 1}];
            v31 = v230;
          }

          if (v31 < v29)
          {
            v30 = v29 + v30 - v31;
            v29 = v31;
          }
        }

        v32 = v231.location;
        v33 = v231.length;
        if (v231.length + v231.location <= v25 + v27)
        {
          v35 = aRect_24;
        }

        else
        {
          [v23 getParagraphStart:0 end:0 contentsEnd:&v230 forRange:{v29 + v30 - 1, 1}];
          v34 = v230;
          v35 = aRect_24;
          if (v230 == v29 + v30)
          {
            [v23 getParagraphStart:0 end:0 contentsEnd:&v230 forRange:{v29 + v30, 1}];
            v34 = v230;
          }

          if (v34 > v29 + v30)
          {
            v30 = v34 - v29;
          }

          v32 = v231.location;
          v33 = v231.length;
        }

        v36 = [(NSLayoutManager *)self characterRangeForGlyphRange:v32 actualGlyphRange:v33, 0];
        aRect_16 = v30 + v29;
        v214 = v30 + v29 - v36;
        v227 = [(NSLayoutManager *)self destinationTextContainerForRange:v36 inTextContainer:?];
        v37 = [v227 layoutManager];
        v38 = [v37 textStorage];
        v225 = v36;
        if (a4)
        {
          [v38 replaceCharactersInRange:v21 withAttributedString:{v35, a4}];
        }

        else
        {
          [v38 replaceCharactersInRange:v21 withString:{v35, &stru_1F01AD578}];
        }

        [v37 ensureLayoutForTextContainer:v227];
        v213 = [a4 length];
        v226 = v15;
        if (v21 > v29)
        {
          v39 = [(NSLayoutManager *)self glyphRangeForCharacterRange:v29 actualCharacterRange:v21 - v29, 0];
          v41 = v40;
          [(NSLayoutManager *)self lineFragmentRectForGlyphAtIndex:v39 effectiveRange:0];
          v43 = v42;
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v50 = v41 + v39 - 1;
          [(NSLayoutManager *)self lineFragmentRectForGlyphAtIndex:v50 effectiveRange:0];
          v261.origin.x = v51;
          v261.origin.y = v52;
          v261.size.width = v53;
          v261.size.height = v54;
          v243.origin.x = v43;
          v243.origin.y = v45;
          v243.size.width = v47;
          v243.size.height = v49;
          v244 = NSUnionRect(v243, v261);
          aRect = v244.size.height;
          aRect_8 = v244.origin.y;
          [a6 size];
          v211 = v55;
          [(NSLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:v50 effectiveRange:0];
          v57 = v56;
          v59 = v58;
          v61 = v60;
          v63 = v62;
          v64 = [v37 glyphRangeForCharacterRange:v29 - v225 actualCharacterRange:{v21 - v29, 0}];
          v66 = v65;
          [v37 lineFragmentRectForGlyphAtIndex:v64 effectiveRange:0];
          v68 = v67;
          v70 = v69;
          v72 = v71;
          v74 = v73;
          [v37 lineFragmentRectForGlyphAtIndex:v66 + v64 - 1 effectiveRange:0];
          v262.origin.x = v75;
          v262.origin.y = v76;
          v262.size.width = v77;
          v262.size.height = v78;
          v245.origin.x = v68;
          v245.origin.y = v70;
          v245.size.width = v72;
          v245.size.height = v74;
          v246 = NSUnionRect(v245, v262);
          v79 = v246.origin.y;
          v80 = v246.size.height;
          [v227 size];
          v82 = v81;
          [v37 lineFragmentUsedRectForGlyphAtIndex:v66 + v64 - 1 effectiveRange:0];
          v263.origin.x = v83;
          v263.origin.y = v84;
          v263.size.width = v85;
          v263.size.height = v86;
          v247.origin.x = v57;
          v247.origin.y = v59;
          v247.size.width = v61;
          v247.size.height = v63;
          v87 = !NSEqualRects(v247, v263);
          v233.width = v211;
          v233.height = aRect;
          v237.width = v82;
          v237.height = v80;
          if (!NSEqualSizes(v233, v237))
          {
            v87 |= 4uLL;
          }

          v88 = [[NSTextLayoutFragment alloc] initWithLayoutManager:self characterRange:v29 animationType:v21 - v29 boundingRect:v87, 0.0, aRect_8, v211, aRect];
          if (([(NSTextLayoutFragment *)v88 animationType]& 1) != 0)
          {
            -[NSTextLayoutFragment setDestinationTextStorage:](v88, "setDestinationTextStorage:", [v37 textStorage]);
            [(NSTextLayoutFragment *)v88 setDestinationLayoutManager:v37];
            [(NSTextLayoutFragment *)v88 setDestinationGlyphRange:v64, v66];
            [(NSTextLayoutFragment *)v88 setDestinationVerticalDelta:-v79];
            [(NSTextLayoutFragment *)v88 setDestinationBoundingRect:0.0, v79, v82, v80];
          }

          [v226 addObject:v88];

          v35 = aRect_24;
        }

        v89 = [(NSLayoutManager *)self glyphRangeForCharacterRange:v21 actualCharacterRange:v35, 0];
        v91 = v90;
        [(NSLayoutManager *)self lineFragmentRectForGlyphAtIndex:v89 effectiveRange:0];
        v96 = v93;
        if (v91)
        {
          v97 = v92;
          v98 = v94;
          v99 = v95;
          [(NSLayoutManager *)self lineFragmentRectForGlyphAtIndex:v91 + v89 - 1 effectiveRange:0];
          v264.origin.x = v100;
          v264.origin.y = v101;
          v264.size.width = v102;
          v264.size.height = v103;
          v248.origin.x = v97;
          v248.origin.y = v96;
          v248.size.width = v98;
          v248.size.height = v99;
          v249 = NSUnionRect(v248, v264);
          aRect_24a = v249.origin.y;
          aRect_8a = v249.size.height;
          [(NSLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:v91 + v89 - 1 effectiveRange:0, v249.origin.x];
          aRecta = v104;
          v106 = v105;
          v108 = v107;
          v110 = v109;
          [a6 size];
          v112 = v111;
        }

        else
        {
          aRect_24a = v93;
          v112 = *MEMORY[0x1E696AA88];
          aRect_8a = *(MEMORY[0x1E696AA88] + 8);
          v106 = *(MEMORY[0x1E696AA80] + 8);
          aRecta = *MEMORY[0x1E696AA80];
          v108 = *(MEMORY[0x1E696AA80] + 16);
          v110 = *(MEMORY[0x1E696AA80] + 24);
        }

        [(NSLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:v89 effectiveRange:0];
        v210 = v114;
        v212 = v113;
        v208 = v116;
        v209 = v115;
        v117 = [v37 glyphRangeForCharacterRange:v21 - v225 actualCharacterRange:{objc_msgSend(a4, "length"), 0}];
        v119 = v118;
        [v37 lineFragmentRectForGlyphAtIndex:v117 effectiveRange:0];
        v124 = v123;
        if (v119)
        {
          v125 = v120;
          v126 = v121;
          v127 = v122;
          v128 = v119 + v117 - 1;
          [v37 lineFragmentRectForGlyphAtIndex:v128 effectiveRange:0];
          v265.origin.x = v129;
          v265.origin.y = v130;
          v265.size.width = v131;
          v265.size.height = v132;
          v250.origin.x = v125;
          v250.origin.y = v124;
          v250.size.width = v126;
          v250.size.height = v127;
          v251 = NSUnionRect(v250, v265);
          v124 = v251.origin.y;
          v133 = v251.size.height;
          [v227 size];
          v135 = v134;
        }

        else
        {
          v135 = *MEMORY[0x1E696AA88];
          v133 = *(MEMORY[0x1E696AA88] + 8);
          v128 = v117 - 1;
        }

        [v37 lineFragmentUsedRectForGlyphAtIndex:v128 effectiveRange:0];
        v266.origin.x = v136;
        v266.origin.y = v137;
        v266.size.width = v138;
        v266.size.height = v139;
        v252.origin.x = aRecta;
        v252.origin.y = v106;
        v252.size.width = v108;
        v252.size.height = v110;
        if (!NSEqualRects(v252, v266) || ([v37 lineFragmentUsedRectForGlyphAtIndex:v117 effectiveRange:0], v267.origin.x = v140, v267.origin.y = v141, v267.size.width = v142, v267.size.height = v143, v253.origin.y = v210, v253.origin.x = v212, v253.size.height = v208, v253.size.width = v209, v144 = 0, !NSEqualRects(v253, v267)))
        {
          v144 = 1;
        }

        v234.width = v112;
        v234.height = aRect_8a;
        v238.width = v135;
        v238.height = v133;
        if (!NSEqualSizes(v234, v238))
        {
          v144 |= 4uLL;
        }

        v145 = [[NSTextLayoutFragment alloc] initWithLayoutManager:self characterRange:v21 animationType:v35 boundingRect:v144, 0.0, aRect_24a, v112, aRect_8a];
        if (([(NSTextLayoutFragment *)v145 animationType]& 1) != 0)
        {
          -[NSTextLayoutFragment setDestinationTextStorage:](v145, "setDestinationTextStorage:", [v37 textStorage]);
          [(NSTextLayoutFragment *)v145 setDestinationLayoutManager:v37];
          [(NSTextLayoutFragment *)v145 setDestinationGlyphRange:v117, v119];
          [(NSTextLayoutFragment *)v145 setDestinationVerticalDelta:-v124];
          [(NSTextLayoutFragment *)v145 setDestinationBoundingRect:0.0, v124, v135, v133];
        }

        v15 = v226;
        [v226 addObject:v145];

        v146 = aRect_16 - (v21 + v35);
        if (aRect_16 != v21 + v35)
        {
          v228 = 0;
          v229 = 0;
          v147 = [(NSLayoutManager *)self glyphRangeForCharacterRange:v21 + v35 actualCharacterRange:aRect_16 - (v21 + v35), 0];
          v149 = v148;
          [(NSLayoutManager *)self lineFragmentRectForGlyphAtIndex:v147 effectiveRange:0];
          v151 = v150;
          v153 = v152;
          v155 = v154;
          v157 = v156;
          [(NSLayoutManager *)self lineFragmentRectForGlyphAtIndex:v149 + v147 - 1 effectiveRange:0];
          v268.origin.x = v158;
          v268.origin.y = v159;
          v268.size.width = v160;
          v268.size.height = v161;
          v254.origin.x = v151;
          v254.origin.y = v153;
          v254.size.width = v155;
          v254.size.height = v157;
          v255 = NSUnionRect(v254, v268);
          v162 = v255.origin.y;
          v163 = v255.size.height;
          [a6 size];
          v165 = v164;
          [(NSLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:v147 effectiveRange:0];
          aRect_16a = v167;
          aRect_24b = v166;
          v169 = v168;
          aRect_8b = v170;
          v230 = [a4 length] + v21;
          v171 = [v37 glyphRangeForCharacterRange:v230 - v225 actualCharacterRange:{v225 - v35 + v213 + v214 - v230, 0}];
          v173 = v172;
          [v37 lineFragmentRectForGlyphAtIndex:v171 effectiveRange:&v228];
          v175 = v174;
          v177 = v176;
          v179 = v178;
          v181 = v180;
          if (v228 < v171)
          {
            v182 = [MEMORY[0x1E696AB08] newlineCharacterSet];
            v183 = [objc_msgSend(v37 "textStorage")];
            if ([v182 longCharacterIsMember:{objc_msgSend(v183, "characterAtIndex:", v230 - v225)}])
            {
              v184 = v171 + v173;
              v171 = v229 + v228;
              v173 = v184 - (v229 + v228);
              [v37 lineFragmentRectForGlyphAtIndex:v229 + v228 effectiveRange:0];
              v175 = v185;
              v177 = v186;
              v179 = v187;
              v181 = v188;
            }
          }

          [v37 lineFragmentRectForGlyphAtIndex:v173 + v171 - 1 effectiveRange:0];
          v269.origin.x = v189;
          v269.origin.y = v190;
          v269.size.width = v191;
          v269.size.height = v192;
          v256.origin.x = v175;
          v256.origin.y = v177;
          v256.size.width = v179;
          v256.size.height = v181;
          v257 = NSUnionRect(v256, v269);
          v193 = v257.origin.y;
          v194 = v257.size.height;
          [v227 size];
          v196 = v195;
          v235.x = 0.0;
          v239.x = 0.0;
          v235.y = v162;
          v239.y = v193;
          v197 = NSEqualPoints(v235, v239);
          v236.width = v165;
          v236.height = v163;
          v240.width = v196;
          v240.height = v194;
          v198 = NSEqualSizes(v236, v240);
          v199 = !v197;
          if (v197)
          {
            v200 = 0;
          }

          else
          {
            v200 = 2;
          }

          if (v199)
          {
            v201 = v193;
          }

          else
          {
            v201 = v169;
          }

          [v37 lineFragmentUsedRectForGlyphAtIndex:v171 effectiveRange:0];
          v270.origin.x = v202;
          v270.origin.y = v203;
          v270.size.width = v204;
          v270.size.height = v205;
          v258.size.width = aRect_16a;
          v258.origin.x = aRect_24b;
          v258.origin.y = v201;
          v258.size.height = aRect_8b;
          v206 = [[NSTextLayoutFragment alloc] initWithLayoutManager:self characterRange:v21 + v35 animationType:v146 boundingRect:v200 | (!NSEqualRects(v258, v270) || !v198), 0.0, v162, v165, v163];
          if ([(NSTextLayoutFragment *)v206 animationType])
          {
            [(NSTextLayoutFragment *)v206 setDestinationBoundingRect:0.0, v193, v196, v194];
          }

          v15 = v226;
          if (([(NSTextLayoutFragment *)v206 animationType]& 1) != 0)
          {
            -[NSTextLayoutFragment setDestinationTextStorage:](v206, "setDestinationTextStorage:", [v37 textStorage]);
            [(NSTextLayoutFragment *)v206 setDestinationLayoutManager:v37];
            [(NSTextLayoutFragment *)v206 setDestinationGlyphRange:v171, v173];
            [(NSTextLayoutFragment *)v206 setDestinationVerticalDelta:-v193];
          }

          [v226 addObject:v206];
        }
      }
    }
  }

  return v15;
}

@end