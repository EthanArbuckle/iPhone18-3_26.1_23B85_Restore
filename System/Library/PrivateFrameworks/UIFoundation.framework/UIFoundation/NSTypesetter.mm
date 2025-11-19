@interface NSTypesetter
+ (void)initialize;
- ($0177D170777CFC227CB001A659B5CD18)_allocateAuxData;
- ($0177D170777CFC227CB001A659B5CD18)_getAuxData;
- (BOOL)_forceOriginalFontBaseline;
- (BOOL)_isLineBreakModeOverridden;
- (BOOL)bidiProcessingEnabled;
- (BOOL)finalizeLineFragmentRect:(CGRect *)a3 lineFragmentUsedRect:(CGRect *)a4 baselineOffset:(double *)a5 forGlyphRange:(_NSRange)a6;
- (BOOL)usesFontLeading;
- (CGFloat)baselineOffsetInLayoutManager:(NSLayoutManager *)layoutMgr glyphIndex:(NSUInteger)glyphIndex;
- (CGFloat)lineFragmentPadding;
- (CGFloat)lineSpacingAfterGlyphAtIndex:(NSUInteger)glyphIndex withProposedLineFragmentRect:(NSRect)rect;
- (CGFloat)paragraphSpacingAfterGlyphAtIndex:(NSUInteger)glyphIndex withProposedLineFragmentRect:(NSRect)rect;
- (CGFloat)paragraphSpacingBeforeGlyphAtIndex:(NSUInteger)glyphIndex withProposedLineFragmentRect:(NSRect)rect;
- (NSArray)textContainers;
- (NSAttributedString)attributedString;
- (NSDictionary)attributesForExtraLineFragment;
- (NSFont)substituteFontForFont:(NSFont *)originalFont;
- (NSLayoutManager)layoutManager;
- (NSParagraphStyle)currentParagraphStyle;
- (NSRange)characterRangeForGlyphRange:(NSRange)glyphRange actualGlyphRange:(NSRangePointer)actualGlyphRange;
- (NSRange)glyphRangeForCharacterRange:(NSRange)charRange actualCharacterRange:(NSRangePointer)actualCharRange;
- (NSRange)layoutCharactersInRange:(NSRange)characterRange forLayoutManager:(NSLayoutManager *)layoutManager maximumNumberOfLineFragments:(NSUInteger)maxNumLines;
- (NSRange)paragraphCharacterRange;
- (NSRange)paragraphGlyphRange;
- (NSRange)paragraphSeparatorCharacterRange;
- (NSRange)paragraphSeparatorGlyphRange;
- (NSTextContainer)currentTextContainer;
- (NSTextTab)textTabForGlyphLocation:(CGFloat)glyphLocation writingDirection:(NSWritingDirection)direction maxLocation:(CGFloat)maxLocation;
- (NSTypesetterBehavior)typesetterBehavior;
- (NSTypesetterControlCharacterAction)actionForControlCharacterAtIndex:(NSUInteger)charIndex;
- (NSUInteger)getGlyphsInRange:(NSRange)glyphsRange glyphs:(NSGlyph *)glyphBuffer characterIndexes:(NSUInteger *)charIndexBuffer glyphInscriptions:(NSGlyphInscription *)inscribeBuffer elasticBits:(BOOL *)elasticBuffer bidiLevels:(unsigned __int8 *)bidiLevelBuffer;
- (NSUInteger)layoutParagraphAtPoint:(NSPointPointer)lineFragmentOrigin;
- (float)hyphenationFactor;
- (float)tightenThresholdForTruncation;
- (id)_ellipsisFontForFont:(id)a3;
- (id)defaultParagraphStyle;
- (int64_t)applicationFrameworkContext;
- (unint64_t)_getRemainingNominalParagraphRange:(_NSRange *)a3 andParagraphSeparatorRange:(_NSRange *)a4 charactarIndex:(unint64_t)a5 layoutManager:(id)a6 string:(id)a7;
- (unint64_t)getGlyphsInRange:(_NSRange)a3 glyphs:(unsigned __int16 *)a4 properties:(int64_t *)a5 characterIndexes:(unint64_t *)a6 bidiLevels:(char *)a7;
- (void)_layoutGlyphsInLayoutManager:(id)a3 startingAtGlyphIndex:(unint64_t)a4 maxNumberOfLineFragments:(unint64_t)a5 maxCharacterIndex:(unint64_t)a6 nextGlyphIndex:(unint64_t *)a7 nextCharacterIndex:(unint64_t *)a8;
- (void)_setForceOriginalFontBaseline:(BOOL)a3;
- (void)_setLineBreakModeOverridden:(BOOL)a3;
- (void)_updateParagraphStyleCache:(id)a3;
- (void)beginLineWithGlyphAtIndex:(NSUInteger)glyphIndex;
- (void)beginParagraph;
- (void)dealloc;
- (void)deleteGlyphsInRange:(NSRange)glyphRange;
- (void)endLineWithGlyphRange:(NSRange)lineGlyphRange;
- (void)endParagraph;
- (void)finalize;
- (void)getLineFragmentRect:(NSRectPointer)lineFragmentRect usedRect:(NSRectPointer)lineFragmentUsedRect forParagraphSeparatorGlyphRange:(NSRange)paragraphSeparatorGlyphRange atProposedOrigin:(NSPoint)lineOrigin;
- (void)getLineFragmentRect:(NSRectPointer)lineFragmentRect usedRect:(NSRectPointer)lineFragmentUsedRect remainingRect:(NSRectPointer)remainingRect forStartingGlyphAtIndex:(NSUInteger)startingGlyphIndex proposedRect:(NSRect)proposedRect lineSpacing:(CGFloat)lineSpacing paragraphSpacingBefore:(CGFloat)paragraphSpacingBefore paragraphSpacingAfter:(CGFloat)paragraphSpacingAfter;
- (void)insertGlyph:(NSGlyph)glyph atGlyphIndex:(NSUInteger)glyphIndex characterIndex:(NSUInteger)characterIndex;
- (void)layoutGlyphsInLayoutManager:(NSLayoutManager *)layoutManager startingAtGlyphIndex:(NSUInteger)startGlyphIndex maxNumberOfLineFragments:(NSUInteger)maxNumLines nextGlyphIndex:(NSUInteger *)nextGlyph;
- (void)setApplicationFrameworkContext:(int64_t)a3;
- (void)setAttachmentSize:(NSSize)attachmentSize forGlyphRange:(NSRange)glyphRange;
- (void)setAttributedString:(NSAttributedString *)attributedString;
- (void)setBidiLevels:(const uint8_t *)levels forGlyphRange:(NSRange)glyphRange;
- (void)setBidiProcessingEnabled:(BOOL)bidiProcessingEnabled;
- (void)setDefaultParagraphStyle:(id)a3;
- (void)setDrawsOutsideLineFragment:(BOOL)flag forGlyphRange:(NSRange)glyphRange;
- (void)setHardInvalidation:(BOOL)flag forGlyphRange:(NSRange)glyphRange;
- (void)setHyphenationFactor:(float)hyphenationFactor;
- (void)setLineFragmentPadding:(CGFloat)lineFragmentPadding;
- (void)setLineFragmentRect:(NSRect)fragmentRect forGlyphRange:(NSRange)glyphRange usedRect:(NSRect)usedRect baselineOffset:(CGFloat)baselineOffset;
- (void)setLocation:(NSPoint)location withAdvancements:(const CGFloat *)advancements forStartOfGlyphRange:(NSRange)glyphRange;
- (void)setNotShownAttribute:(BOOL)flag forGlyphRange:(NSRange)glyphRange;
- (void)setParagraphGlyphRange:(NSRange)paragraphRange separatorGlyphRange:(NSRange)paragraphSeparatorRange;
- (void)setTightenThresholdForTruncation:(float)a3;
- (void)setTypesetterBehavior:(NSTypesetterBehavior)typesetterBehavior;
- (void)setUsesFontLeading:(BOOL)usesFontLeading;
- (void)substituteGlyphsInRange:(NSRange)glyphRange withGlyphs:(NSGlyph *)glyphs;
@end

@implementation NSTypesetter

- (int64_t)applicationFrameworkContext
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  return (reserved->var19 >> 22) & 7;
}

- (BOOL)usesFontLeading
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  return (*&reserved->var19 >> 4) & 1;
}

- (NSTypesetterBehavior)typesetterBehavior
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  return *&reserved->var19 & 0xFLL;
}

- ($0177D170777CFC227CB001A659B5CD18)_getAuxData
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _allocateAuxData];
    self->_reserved = reserved;
    reserved->var19 = (*&reserved->var19 & 0xFFFC7FC0 | [objc_opt_class() defaultTypesetterBehavior] & 0xF | 0x28030);
    reserved->var19 = (*&reserved->var19 & 0xFE3FFFFF | ((_NSTextScalingTypeForCurrentEnvironment() & 7) << 22));
  }

  return reserved;
}

- ($0177D170777CFC227CB001A659B5CD18)_allocateAuxData
{
  result = NSAllocateScannedUncollectable();
  *&result->var0 = 0u;
  *&result->var1.length = 0u;
  *&result->var2.length = 0u;
  *&result->var5 = 0u;
  *&result->var7 = 0u;
  *&result->var9 = 0u;
  *&result->var11 = 0u;
  result->var13.origin = 0u;
  result->var13.size = 0u;
  result->var14.origin = 0u;
  result->var14.size = 0u;
  result->var15 = 0u;
  *&result->var16 = 0u;
  *&result->var18 = 0u;
  *&result->var20[2] = 0u;
  *&result->var20[4] = 0u;
  *&result->var20[6] = 0u;
  *&result->var20[8] = 0u;
  *&result->var20[10] = 0u;
  result->var20[12] = 0;
  *result->var20 = 0u;
  result->var0 = result->var20;
  return result;
}

- (void)dealloc
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  v4 = self->_reserved;
  if (v4)
  {
    NSZoneFree(0, v4);
  }

  v5.receiver = self;
  v5.super_class = NSTypesetter;
  [(NSTypesetter *)&v5 dealloc];
}

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = @"NSTypesetterBehavior";
    if ([v3 objectForKey:@"NSTypesetterBehavior"] || (v4 = @"NSTypesetterCompatibilityLevel", objc_msgSend(v3, "objectForKey:", @"NSTypesetterCompatibilityLevel")))
    {
      v5 = [v3 integerForKey:v4];
      v6 = 6;
      if (v5 < 6)
      {
        v6 = v5;
      }

      __NSTypesetterCompatibilityLevel = v6;
    }

    if ([v3 objectForKey:@"NSStringDrawingTypesetterBehavior"])
    {
      v7 = [v3 integerForKey:@"NSStringDrawingTypesetterBehavior"];
      v8 = 6;
      if (v7 < 6)
      {
        v8 = v7;
      }
    }

    else
    {
      v8 = __NSTypesetterCompatibilityLevel;
      if (__NSTypesetterCompatibilityLevel >= __NSStringDrawingTypesetterCompatibilityLevel)
      {
LABEL_13:
        __NSDefaultNotShownIMP = [NSLayoutManager instanceMethodForSelector:sel_setNotShownAttribute_forGlyphAtIndex_];
        __NSDefaultDrawsOutsideIMP = [NSLayoutManager instanceMethodForSelector:sel_setDrawsOutsideLineFragment_forGlyphAtIndex_];
        __NSLayoutManagerClass = objc_opt_class();
        return;
      }
    }

    __NSStringDrawingTypesetterCompatibilityLevel = v8;
    goto LABEL_13;
  }
}

- (id)defaultParagraphStyle
{
  result = self->_defaultParagraphStyle;
  if (!result)
  {
    return +[NSParagraphStyle defaultParagraphStyle];
  }

  return result;
}

- (NSAttributedString)attributedString
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  return *reserved->var0;
}

- (CGFloat)lineFragmentPadding
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  return *(reserved->var0 + 5);
}

- (void)beginParagraph
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  length = reserved->var1.length;
  [(NSTypesetter *)self _updateParagraphStyleCache:[(NSAttributedString *)[(NSTypesetter *)self attributedString] attribute:@"NSParagraphStyle" atIndex:reserved->var1.location longestEffectiveRange:0 inRange:reserved->var1.location, length]];
  v5 = *(MEMORY[0x1E696AA80] + 16);
  reserved->var13.origin = *MEMORY[0x1E696AA80];
  reserved->var13.size = v5;
  v6 = self->_reserved;
  if (!v6)
  {
    v6 = [(NSTypesetter *)self _getAuxData];
  }

  reserved->var19 = (*&reserved->var19 & 0xFFFBFFFF | ((length == *(v6->var0 + 2)) << 18));
}

- (NSRange)paragraphCharacterRange
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  length = reserved->var1.length;
  location = reserved->var1.location;
  result.length = length;
  result.location = location;
  return result;
}

- (NSRange)paragraphSeparatorCharacterRange
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  length = reserved->var2.length;
  location = reserved->var2.location;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)bidiProcessingEnabled
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  return (*&reserved->var19 >> 5) & 1;
}

- (BOOL)_forceOriginalFontBaseline
{
  if ([(NSTypesetter *)self applicationFrameworkContext]!= 2 || (reserved = [(NSTypesetter *)self typesetterBehavior], reserved != 1))
  {
    reserved = self->_reserved;
    if (!reserved)
    {
      reserved = [(NSTypesetter *)self _getAuxData];
    }

    LODWORD(reserved) = (*&reserved->var19 >> 6) & 1;
  }

  return reserved;
}

- (NSTextContainer)currentTextContainer
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  return *(reserved->var0 + 8);
}

- (BOOL)_isLineBreakModeOverridden
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  return (*(&reserved->var19 + 2) >> 5) & 1;
}

- (NSRange)paragraphSeparatorGlyphRange
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  var0 = reserved->var0;
  v5 = *(reserved->var0 + 3);
  v6 = *(var0 + 4);
  result.length = v6;
  result.location = v5;
  return result;
}

- (NSRange)paragraphGlyphRange
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  var0 = reserved->var0;
  v5 = *(reserved->var0 + 1);
  v6 = *(var0 + 2);
  result.length = v6;
  result.location = v5;
  return result;
}

- (NSLayoutManager)layoutManager
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  return *(reserved->var0 + 6);
}

- (void)endParagraph
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  reserved->var19 = (*&reserved->var19 & 0xFFF87FFF | 0x28000);
}

- (void)finalize
{
  reserved = self->_reserved;
  if (reserved)
  {
    NSZoneFree(0, reserved);
  }

  v4.receiver = self;
  v4.super_class = NSTypesetter;
  [(NSTypesetter *)&v4 finalize];
}

- (void)_setForceOriginalFontBaseline:(BOOL)a3
{
  v3 = a3;
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  if (v3)
  {
    v6 = 64;
  }

  else
  {
    v6 = 0;
  }

  reserved->var19 = (*&reserved->var19 & 0xFFFFFFBF | v6);
}

- (void)_setLineBreakModeOverridden:(BOOL)a3
{
  v3 = a3;
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  if (v3)
  {
    v6 = 0x200000;
  }

  else
  {
    v6 = 0;
  }

  reserved->var19 = (*&reserved->var19 & 0xFFDFFFFF | v6);
}

- (unint64_t)_getRemainingNominalParagraphRange:(_NSRange *)a3 andParagraphSeparatorRange:(_NSRange *)a4 charactarIndex:(unint64_t)a5 layoutManager:(id)a6 string:(id)a7
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  v14 = [a7 length];
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  *theString = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  *buffer = 0u;
  v15 = [(NSTypesetter *)self bidiProcessingEnabled];
  v16 = self->_reserved;
  if (!v16)
  {
    v16 = [(NSTypesetter *)self _getAuxData];
  }

  v17 = *(v16->var0 + 11);
  if (_getRemainingNominalParagraphRange_andParagraphSeparatorRange_charactarIndex_layoutManager_string__bmpOnce != -1)
  {
    [NSTypesetter _getRemainingNominalParagraphRange:andParagraphSeparatorRange:charactarIndex:layoutManager:string:];
  }

  *&reserved->var19 &= 0xFFFD7FFF;
  theString[0] = a7;
  *(&v64 + 1) = 0;
  *&v65 = v14;
  CharactersPtr = CFStringGetCharactersPtr(a7);
  CStringPtr = 0;
  theString[1] = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a7, 0x600u);
  }

  *(&v65 + 1) = 0;
  v66 = 0;
  *&v64 = CStringPtr;
  if (v14 <= a5)
  {
    return 1;
  }

  v52 = a6;
  v53 = a3;
  v54 = a4;
  v20 = &getNSColorClass_1;
  v21 = a5;
  while (1)
  {
    if ((v21 & 0x8000000000000000) != 0 || (v22 = v65, v65 <= v21))
    {
      v23 = 0;
    }

    else if (theString[1])
    {
      v23 = *(&theString[1]->isa + *(&v64 + 1) + v21);
    }

    else if (v64)
    {
      v23 = *(v64 + *(&v64 + 1) + v21);
    }

    else
    {
      if (v66 <= v21 || (v30 = *(&v65 + 1), *(&v65 + 1) > v21))
      {
        v31 = v21 - 4;
        if (v21 < 4)
        {
          v31 = 0;
        }

        if (v31 + 64 < v65)
        {
          v22 = v31 + 64;
        }

        *(&v65 + 1) = v31;
        v66 = v22;
        v67.length = v22 - v31;
        v67.location = *(&v64 + 1) + v31;
        CFStringGetCharacters(theString[0], v67, buffer);
        v20 = &getNSColorClass_1;
        v30 = *(&v65 + 1);
      }

      v23 = buffer[v21 - v30];
    }

    v24 = v23;
    if (!v15)
    {
      v15 = 0;
      goto LABEL_56;
    }

    BitmapPtrForPlane = v20[329];
    v26 = _getRemainingNominalParagraphRange_andParagraphSeparatorRange_charactarIndex_layoutManager_string__bidiPropertyBMP;
    if (v23 >> 10 != 54)
    {
      break;
    }

    v27 = v21 + 1;
    if ((v21 + 1) >= 0)
    {
      v28 = v65;
      if (v65 > v27)
      {
        if (theString[1])
        {
          v29 = *(&theString[1]->isa + *(&v64 + 1) + v27);
        }

        else if (v64)
        {
          v29 = *(v64 + *(&v64 + 1) + v27);
        }

        else
        {
          if (v66 <= v27 || (v32 = *(&v65 + 1), *(&v65 + 1) > v27))
          {
            v33 = v21 - 3;
            if (v21 < 3)
            {
              v33 = 0;
            }

            if (v33 + 64 < v65)
            {
              v28 = v33 + 64;
            }

            *(&v65 + 1) = v33;
            v66 = v28;
            v68.length = v28 - v33;
            v68.location = *(&v64 + 1) + v33;
            CFStringGetCharacters(theString[0], v68, buffer);
            v20 = &getNSColorClass_1;
            v32 = *(&v65 + 1);
          }

          v29 = buffer[v27 - v32];
        }

        if (v29 >> 10 == 55)
        {
          v24 = (v24 << 10) + v29 - 56613888;
          if ((v24 & 0x1F0000) != 0)
          {
            BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane();
            UnicodePropertyDataForPlane = CFUniCharGetUnicodePropertyDataForPlane();
            v20 = &getNSColorClass_1;
            v26 = UnicodePropertyDataForPlane;
          }

          ++v21;
          break;
        }
      }
    }

    v15 = 1;
LABEL_77:
    v21 = v27;
    if (v27 >= v14)
    {
      return 1;
    }
  }

  if (BitmapPtrForPlane && ((*(BitmapPtrForPlane + (v24 >> 3)) >> (v24 & 7)) & 1) != 0)
  {
    goto LABEL_53;
  }

  if (!v26)
  {
    goto LABEL_55;
  }

  v35 = *(v26 + BYTE1(v24));
  if (v35 >= 0x13)
  {
    v35 = *(v26 + (v35 << 8) - 4864 + v24 + 256);
  }

  if (v35 == 3)
  {
LABEL_53:
    v15 = 0;
    *&reserved->var19 |= 0x8000u;
  }

  else
  {
LABEL_55:
    v15 = 1;
  }

LABEL_56:
  var19 = reserved->var19;
  if ((*&var19 & 0x20000) == 0 && v24 >= 0x590)
  {
    if (v24 - 11264 >= 0xFFFFF400 && (!_getRemainingNominalParagraphRange_andParagraphSeparatorRange_charactarIndex_layoutManager_string__controlBMP || ((*(_getRemainingNominalParagraphRange_andParagraphSeparatorRange_charactarIndex_layoutManager_string__controlBMP + (v24 >> 3)) >> (v24 & 7)) & 1) == 0) && (!_getRemainingNominalParagraphRange_andParagraphSeparatorRange_charactarIndex_layoutManager_string__nonBaseBMP || ((*(_getRemainingNominalParagraphRange_andParagraphSeparatorRange_charactarIndex_layoutManager_string__nonBaseBMP + (v24 >> 3)) >> (v24 & 7)) & 1) == 0))
    {
      goto LABEL_67;
    }

    var19 = (*&var19 | 0x20000);
    reserved->var19 = var19;
  }

  if (HIWORD(v24))
  {
LABEL_76:
    v27 = v21 + 1;
    goto LABEL_77;
  }

  if ((v24 - 1424) >> 4 <= 0x10E)
  {
    reserved->var19 = (*&var19 | 0x10000);
  }

LABEL_67:
  LOBYTE(v37) = _getRemainingNominalParagraphRange_andParagraphSeparatorRange_charactarIndex_layoutManager_string__controlBMP;
  if (_getRemainingNominalParagraphRange_andParagraphSeparatorRange_charactarIndex_layoutManager_string__controlBMP)
  {
    v37 = (*(_getRemainingNominalParagraphRange_andParagraphSeparatorRange_charactarIndex_layoutManager_string__controlBMP + (v24 >> 3)) >> (v24 & 7)) & 1;
  }

  if (v24 == 9)
  {
    LOBYTE(v37) = 0;
  }

  if ((v37 & 1) == 0 && (v24 & 0xFFFE) != 0x2028)
  {
    goto LABEL_76;
  }

  v38 = [(NSTypesetter *)self actionForControlCharacterAtIndex:v21, v52];
  v20 = &getNSColorClass_1;
  v39 = v38;
  if ((v38 & 8) == 0 && (v17 >= 10000000.0 || (v38 & 0x20) == 0))
  {
    goto LABEL_76;
  }

  v41 = v21 - a5;
  if (v21 == a5)
  {
    v42 = [v52 glyphIndexForCharacterAtIndex:{a5, v41}];
    v43 = 0;
  }

  else
  {
    v42 = [v52 glyphRangeForCharacterRange:a5 actualCharacterRange:{v41, 0}];
  }

  v53->location = v42;
  v53->length = v43;
  v44 = v43 + v42;
  if (v24 != 13)
  {
    goto LABEL_89;
  }

  v45 = v21 + 1;
  v46 = 1;
  if (v21 + 1 >= v14 || v45 < 0)
  {
    goto LABEL_90;
  }

  v47 = v65;
  if (v65 <= v45)
  {
LABEL_89:
    v46 = 1;
    goto LABEL_90;
  }

  if (theString[1])
  {
    v48 = *(&theString[1]->isa + *(&v64 + 1) + v45);
  }

  else if (v64)
  {
    v48 = *(v64 + *(&v64 + 1) + v45);
  }

  else
  {
    if (v66 <= v45 || (v49 = *(&v65 + 1), *(&v65 + 1) > v45))
    {
      v50 = v21 - 3;
      if (v21 < 3)
      {
        v50 = 0;
      }

      if (v50 + 64 < v65)
      {
        v47 = v50 + 64;
      }

      *(&v65 + 1) = v50;
      v66 = v47;
      v69.length = v47 - v50;
      v69.location = *(&v64 + 1) + v50;
      CFStringGetCharacters(theString[0], v69, buffer);
      v49 = *(&v65 + 1);
    }

    v48 = buffer[v45 - v49];
  }

  v51 = v48 == 10;
  v46 = 1;
  if (v51)
  {
    v46 = 2;
  }

LABEL_90:
  v54->location = v44;
  v54->length = v46;
  return v39;
}

uint64_t __114__NSTypesetter__getRemainingNominalParagraphRange_andParagraphSeparatorRange_charactarIndex_layoutManager_string___block_invoke()
{
  _getRemainingNominalParagraphRange_andParagraphSeparatorRange_charactarIndex_layoutManager_string__strongRightBMP = CFUniCharGetBitmapPtrForPlane();
  _getRemainingNominalParagraphRange_andParagraphSeparatorRange_charactarIndex_layoutManager_string__bidiPropertyBMP = CFUniCharGetUnicodePropertyDataForPlane();
  _getRemainingNominalParagraphRange_andParagraphSeparatorRange_charactarIndex_layoutManager_string__controlBMP = CFUniCharGetBitmapPtrForPlane();
  result = CFUniCharGetBitmapPtrForPlane();
  _getRemainingNominalParagraphRange_andParagraphSeparatorRange_charactarIndex_layoutManager_string__nonBaseBMP = result;
  return result;
}

- (void)_updateParagraphStyleCache:(id)a3
{
  v3 = a3;
  reserved = self->_reserved;
  if (reserved)
  {
    var0 = reserved->var0;
    if (a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = [(NSTypesetter *)self _getAuxData];
  reserved = self->_reserved;
  var0 = v7->var0;
  if (reserved)
  {
    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  reserved = [(NSTypesetter *)self _getAuxData];
  if (!v3)
  {
LABEL_6:
    v3 = [(NSTypesetter *)self defaultParagraphStyle];
  }

LABEL_7:
  if (([*(var0 + 12) isEqual:v3] & 1) == 0)
  {
    v3 = [v3 copyWithZone:{-[NSTypesetter zone](self, "zone")}];

    *(var0 + 12) = v3;
    [v3 lineSpacing];
    reserved->var7 = v8;
    [v3 headIndent];
    reserved->var8 = v9;
    [v3 tailIndent];
    reserved->var9 = v10;
    [v3 minimumLineHeight];
    reserved->var10 = v11;
    [v3 maximumLineHeight];
    reserved->var11 = v12;
    [v3 lineHeightMultiple];
    reserved->var12 = v13;
    reserved->var19 = (*&reserved->var19 & 0xFFFF87FF | (([v3 lineBreakMode] & 0xF) << 11));
  }

  v14 = [v3 alignment];
  if (v14 == 4)
  {
    v14 = [v3 baseWritingDirection];
    if (v14 == NSWritingDirectionNatural)
    {
      v14 = [NSParagraphStyle defaultWritingDirectionForLanguage:0];
    }

    LOBYTE(v14) = 2 * (v14 == NSWritingDirectionRightToLeft);
  }

  var19 = (*&reserved->var19 & 0xFFFFF87F | ((v14 & 0xF) << 7));
  reserved->var19 = var19;
  if (v3)
  {
    v16 = (([v3 baseWritingDirection] << 19) + 0x80000) & 0x180000;
    var19 = reserved->var19;
  }

  else
  {
    v16 = 0;
  }

  reserved->var19 = (*&var19 & 0xFFE7FFFF | v16);
}

- (void)setApplicationFrameworkContext:(int64_t)a3
{
  LOBYTE(v3) = a3;
  if (!a3)
  {
    v3 = _NSTextScalingTypeForCurrentEnvironment();
  }

  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  reserved->var19 = (*&reserved->var19 & 0xFE3FFFFF | ((v3 & 7) << 22));
}

- (id)_ellipsisFontForFont:(id)a3
{
  CTFontGetWeight();
  [a3 pointSize];

  return [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
}

- (void)setUsesFontLeading:(BOOL)usesFontLeading
{
  v3 = usesFontLeading;
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  if (v3)
  {
    v6 = 16;
  }

  else
  {
    v6 = 0;
  }

  reserved->var19 = (*&reserved->var19 & 0xFFFFFFEF | v6);
}

- (void)setTypesetterBehavior:(NSTypesetterBehavior)typesetterBehavior
{
  v3 = typesetterBehavior;
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  reserved->var19 = (*&reserved->var19 & 0xFFFFFFF0 | v3 & 0xF);
}

- (float)hyphenationFactor
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  return reserved->var3;
}

- (void)setHyphenationFactor:(float)hyphenationFactor
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  reserved->var3 = hyphenationFactor;
}

- (void)setLineFragmentPadding:(CGFloat)lineFragmentPadding
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  *(reserved->var0 + 5) = lineFragmentPadding;
}

- (NSFont)substituteFontForFont:(NSFont *)originalFont
{
  v4 = [(NSTypesetter *)self layoutManager];
  if (!v4)
  {
    return originalFont;
  }

  return [(NSLayoutManager *)v4 substituteFontForFont:originalFont];
}

- (NSTextTab)textTabForGlyphLocation:(CGFloat)glyphLocation writingDirection:(NSWritingDirection)direction maxLocation:(CGFloat)maxLocation
{
  v8 = direction != NSWritingDirectionRightToLeft;
  v9 = [(NSTypesetter *)self currentParagraphStyle];
  v10 = [(NSParagraphStyle *)v9 tabStops];
  v11 = [(NSArray *)v10 count];
  if (v11 < 1)
  {
LABEL_16:
    [(NSParagraphStyle *)v9 defaultTabInterval];
    if (v22 > 0.0)
    {
      v23 = (glyphLocation / v22);
      v24 = v22 * (v23 + 1);
      v25 = v22 * (v23 + 2);
      v26 = v24 <= glyphLocation ? v25 : v24;
      if (v26 < maxLocation)
      {
        v28 = [NSTextTab alloc];
        v29 = [(NSTextTab *)v28 initWithTextAlignment:2 * (direction == NSWritingDirectionRightToLeft) location:MEMORY[0x1E695E0F8] options:v26];

        return v29;
      }
    }
  }

  else
  {
    v12 = v11;
    v13 = 0;
    v14 = 2 * v8;
    while (1)
    {
      v15 = [(NSArray *)v10 objectAtIndex:v13];
      [(NSTextTab *)v15 location];
      v17 = v16;
      v18 = [(NSTextTab *)v15 alignment];
      if (v17 > maxLocation)
      {
        break;
      }

      v19 = v18 != v14 || (v18 - 5) >= 0xFFFFFFFFFFFFFFFELL;
      v20 = !v19;
      if (v17 == maxLocation && !v20)
      {
        break;
      }

      if (v17 > glyphLocation)
      {
        return v15;
      }

      if (v12 == ++v13)
      {
        goto LABEL_16;
      }
    }
  }

  return 0;
}

- (void)setBidiProcessingEnabled:(BOOL)bidiProcessingEnabled
{
  v3 = bidiProcessingEnabled;
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  if (v3)
  {
    v6 = 32;
  }

  else
  {
    v6 = 0;
  }

  reserved->var19 = (*&reserved->var19 & 0xFFFFFFDF | v6);
}

- (float)tightenThresholdForTruncation
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  return reserved->var4;
}

- (void)setTightenThresholdForTruncation:(float)a3
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  reserved->var4 = a3;
}

- (void)setAttributedString:(NSAttributedString *)attributedString
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  *reserved->var0 = attributedString;
}

- (void)setParagraphGlyphRange:(NSRange)paragraphRange separatorGlyphRange:(NSRange)paragraphSeparatorRange
{
  length = paragraphSeparatorRange.length;
  location = paragraphSeparatorRange.location;
  v6 = paragraphRange.length;
  v7 = paragraphRange.location;
  reserved = self->_reserved;
  if (reserved)
  {
    var0 = reserved->var0;
  }

  else
  {
    v11 = [(NSTypesetter *)self _getAuxData];
    reserved = self->_reserved;
    var0 = v11->var0;
    if (!reserved)
    {
      reserved = [(NSTypesetter *)self _getAuxData];
    }
  }

  *(var0 + 1) = v7;
  *(var0 + 2) = v6;
  *(var0 + 3) = location;
  *(var0 + 4) = length;
  if (location + length == v7 + v6)
  {
    *(var0 + 2) = location - v7;
  }

  *&reserved->var19 &= ~0x40000u;
  reserved->var1.location = [(NSTypesetter *)self characterRangeForGlyphRange:*(var0 + 1) actualGlyphRange:*(var0 + 2)];
  reserved->var1.length = v12;
  reserved->var2.location = [(NSTypesetter *)self characterRangeForGlyphRange:*(var0 + 3) actualGlyphRange:*(var0 + 4), var0 + 24];
  reserved->var2.length = v13;
}

- (void)beginLineWithGlyphAtIndex:(NSUInteger)glyphIndex
{
  if (![(NSTypesetter *)self _isLineBreakModeOverridden])
  {
    reserved = self->_reserved;
    if (reserved)
    {
      var0 = reserved->var0;
    }

    else
    {
      v6 = [(NSTypesetter *)self _getAuxData];
      reserved = self->_reserved;
      var0 = v6->var0;
      if (!reserved)
      {
        reserved = [(NSTypesetter *)self _getAuxData];
      }
    }

    v7 = [*(var0 + 8) maximumNumberOfLines];
    if (v7)
    {
      if (reserved->var18 >= v7)
      {
        *(var0 + 8) = 0;
      }
    }
  }
}

- (void)endLineWithGlyphRange:(NSRange)lineGlyphRange
{
  reserved = self->_reserved;
  if (reserved)
  {
    ++reserved->var18;
    length = reserved->var1.length;
    v5 = reserved;
  }

  else
  {
    reserved = [(NSTypesetter *)self _getAuxData:lineGlyphRange.location];
    v5 = self->_reserved;
    ++reserved->var18;
    length = reserved->var1.length;
    if (!v5)
    {
      v5 = [(NSTypesetter *)self _getAuxData];
    }
  }

  reserved->var19 = (*&reserved->var19 & 0xFFFBFFFF | ((length == *(v5->var0 + 2)) << 18));
}

- (CGFloat)lineSpacingAfterGlyphAtIndex:(NSUInteger)glyphIndex withProposedLineFragmentRect:(NSRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  var0 = reserved->var0;
  v12 = [(NSLayoutManager *)[(NSTypesetter *)self layoutManager] delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [(NSTypesetter *)self layoutManager];

    [v12 layoutManager:v13 lineSpacingAfterGlyphAtIndex:glyphIndex withProposedLineFragmentRect:{x, y, width, height}];
  }

  else if (*(var0 + 4) || (result = 0.0, *(var0 + 3) > glyphIndex + 1))
  {
    v15 = [(NSTypesetter *)self currentParagraphStyle];
    result = 0.0;
    if (v15)
    {
      [(NSParagraphStyle *)v15 lineSpacing];
      if (result < 0.0)
      {
        return 0.0;
      }
    }
  }

  return result;
}

- (CGFloat)paragraphSpacingBeforeGlyphAtIndex:(NSUInteger)glyphIndex withProposedLineFragmentRect:(NSRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = [(NSLayoutManager *)[(NSTypesetter *)self layoutManager] delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(NSTypesetter *)self layoutManager];

    [v10 layoutManager:v11 paragraphSpacingBeforeGlyphAtIndex:glyphIndex withProposedLineFragmentRect:{x, y, width, height}];
  }

  else
  {
    v13 = [(NSTypesetter *)self currentParagraphStyle];
    if (v13 && y > 0.0)
    {

      [(NSParagraphStyle *)v13 paragraphSpacingBefore];
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

- (CGFloat)paragraphSpacingAfterGlyphAtIndex:(NSUInteger)glyphIndex withProposedLineFragmentRect:(NSRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = [(NSLayoutManager *)[(NSTypesetter *)self layoutManager] delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(NSTypesetter *)self layoutManager];

    [v10 layoutManager:v11 paragraphSpacingAfterGlyphAtIndex:glyphIndex withProposedLineFragmentRect:{x, y, width, height}];
  }

  else
  {
    v13 = [(NSTypesetter *)self currentParagraphStyle];
    if (v13)
    {

      [(NSParagraphStyle *)v13 paragraphSpacing];
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

- (BOOL)finalizeLineFragmentRect:(CGRect *)a3 lineFragmentUsedRect:(CGRect *)a4 baselineOffset:(double *)a5 forGlyphRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v12 = [(NSLayoutManager *)[(NSTypesetter *)self layoutManager] delegate];
  if (objc_opt_respondsToSelector())
  {
    return [v12 layoutManager:-[NSTypesetter layoutManager](self shouldSetLineFragmentRect:"layoutManager") lineFragmentUsedRect:a3 baselineOffset:a4 inTextContainer:a5 forGlyphRange:{-[NSTypesetter currentTextContainer](self, "currentTextContainer"), location, length}];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v14 = [(NSTypesetter *)self layoutManager];

  return [v12 layoutManager:v14 shouldSetLineFragmentRect:a3 lineFragmentUsedRect:a4 baselineOffset:a5 forGlyphRange:{location, length}];
}

- (NSArray)textContainers
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  return *(reserved->var0 + 7);
}

- (NSParagraphStyle)currentParagraphStyle
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  return *(reserved->var0 + 12);
}

- (void)setHardInvalidation:(BOOL)flag forGlyphRange:(NSRange)glyphRange
{
  length = glyphRange.length;
  location = glyphRange.location;
  v6 = [(NSTypesetter *)self layoutManager];
  if (v6)
  {

    [(NSLayoutManager *)v6 invalidateGlyphsOnLayoutInvalidationForGlyphRange:location, length];
  }
}

- (void)getLineFragmentRect:(NSRectPointer)lineFragmentRect usedRect:(NSRectPointer)lineFragmentUsedRect forParagraphSeparatorGlyphRange:(NSRange)paragraphSeparatorGlyphRange atProposedOrigin:(NSPoint)lineOrigin
{
  y = lineOrigin.y;
  x = lineOrigin.x;
  length = paragraphSeparatorGlyphRange.length;
  location = paragraphSeparatorGlyphRange.location;
  reserved = self->_reserved;
  if (reserved)
  {
    var0 = reserved->var0;
  }

  else
  {
    v15 = [(NSTypesetter *)self _getAuxData];
    reserved = self->_reserved;
    var0 = v15->var0;
    if (!reserved)
    {
      reserved = [(NSTypesetter *)self _getAuxData];
    }
  }

  v90 = lineFragmentUsedRect;
  v16 = [(NSTypesetter *)self attributedString];
  v93 = [(NSAttributedString *)v16 string];
  v88 = [(NSTextContainer *)[(NSTypesetter *)self currentTextContainer] layoutOrientation];
  memset(v94, 0, sizeof(v94));
  v17 = [(NSTypesetter *)self typesetterBehavior];
  v89 = [(NSTypesetter *)self usesFontLeading];
  v18 = [(NSTypesetter *)self _forceOriginalFontBaseline];
  if (location != *(var0 + 3) || length != *(var0 + 4))
  {
    [(NSTypesetter *)self setParagraphGlyphRange:location separatorGlyphRange:0, location, length];
  }

  v20 = reserved->var1.location;
  v92 = v17;
  if (v20 < 1)
  {
    goto LABEL_21;
  }

  if (v20 == 1)
  {
    v21 = 0;
  }

  else
  {
    v22 = [(NSString *)v93 characterAtIndex:v20 - 1];
    v21 = v20 - 1;
    if (v22 == 10)
    {
      if ([(NSString *)v93 characterAtIndex:v20 - 2]== 13)
      {
        v21 = v20 - 2;
      }

      else
      {
        v21 = v20 - 1;
      }
    }
  }

  v23 = [(NSTypesetter *)self actionForControlCharacterAtIndex:v21];
  if ((v23 & 0x10) != 0 || v17 <= NSTypesetterBehavior_10_3 && (v23 & 0x20) != 0)
  {
LABEL_21:
    v24 = 1;
  }

  else
  {
    v46 = [(NSTypesetter *)self attributedString];
    v95 = 0;
    v96 = 0;
    v47 = [(NSAttributedString *)v46 attribute:@"NSAttachment" atIndex:v20 - 1 effectiveRange:&v95];
    if (v96 + v95 > v20 || !v47)
    {
      if ([(NSString *)v93 length]<= v20)
      {
        v47 = 0;
      }

      else
      {
        v47 = [(NSAttributedString *)v46 attribute:@"NSAttachment" atIndex:v20 effectiveRange:&v95];
        if (v96 + v95 > v20)
        {
          v47 = 0;
        }
      }
    }

    v24 = [v47 embeddingType] == 1;
  }

  v91 = v24;
  if (length)
  {
    if (![(NSAttributedString *)v16 length])
    {
      v26 = 0;
      goto LABEL_28;
    }

    v25 = [(NSAttributedString *)v16 attributesAtIndex:v20 effectiveRange:0];
  }

  else
  {
    v25 = [(NSTypesetter *)self attributesForExtraLineFragment];
  }

  v26 = v25;
LABEL_28:
  [(NSTypesetter *)self _updateParagraphStyleCache:[(NSDictionary *)v26 objectForKey:@"NSParagraphStyle"]];
  v27 = [(NSDictionary *)v26 objectForKey:@"CTVerticalForms"];
  if (!v26)
  {
    goto LABEL_35;
  }

  if (!v18 || (v28 = [(NSDictionary *)v26 objectForKey:_NSOriginalFontAttributeName]) == 0)
  {
    v28 = [(NSDictionary *)v26 objectForKey:@"NSFont"];
  }

  if ([-[NSDictionary objectForKey:](v26 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
  {
    v28 = [v28 verticalFont];
  }

  if (!v28)
  {
LABEL_35:
    v28 = NSDefaultFont();
  }

  v29 = [v27 BOOLValue];
  if (v27)
  {
    v30 = 1;
  }

  else
  {
    v30 = v88 == 0;
  }

  v31 = !v30;
  if ((v29 & 1) != 0 || (v32 = v28, v31))
  {
    v32 = [v28 verticalFont];
  }

  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v28;
  }

  v34 = [(NSTypesetter *)self substituteFontForFont:v33];
  [(UIFont *)v34 _defaultLineHeightForUILayout];
  v35 = 0.0;
  var10 = v36 + 0.0;
  if (v92 >= 3)
  {
    var12 = reserved->var12;
    v41 = var12 <= 0.0;
    v39 = var10 * var12;
    if (!v41)
    {
      var10 = v39;
    }
  }

  var11 = reserved->var11;
  if (var10 < reserved->var10)
  {
    var10 = reserved->var10;
  }

  v41 = var11 >= var10 || var11 <= 0.0;
  if (v41)
  {
    v42 = var10;
  }

  else
  {
    v42 = reserved->var11;
  }

  if (v89)
  {
    [(UIFont *)v34 _leading];
    v35 = v43;
  }

  if (v92 >= 2)
  {
    var7 = reserved->var7;
    if (var7 < 0.0)
    {
      v45 = v35 + var7;
      if (v35 + var7 >= 0.0)
      {
        v35 = v35 + var7;
      }

      else
      {
        v35 = 0.0;
        if (v20)
        {
          if ([(NSString *)[(NSAttributedString *)v16 string] characterAtIndex:((__PAIR128__(v20, length) - 1) >> 64)]!= 12)
          {
            v42 = v42 + v45;
            if (v42 <= 0.0)
            {
              v42 = 0.0001;
            }
          }
        }
      }
    }
  }

  if ([(NSTypesetter *)self applicationFrameworkContext]!= 2 && !v89 && length)
  {
    if (CTFontIsSystemUIFont())
    {
      [(UIFont *)v34 _leading];
      v35 = v48;
    }

    goto LABEL_80;
  }

  if (length)
  {
LABEL_80:
    [(NSTypesetter *)self lineSpacingAfterGlyphAtIndex:length + location - 1 withProposedLineFragmentRect:x, y, 10000000.0, v42];
    goto LABEL_81;
  }

  v49 = 0.0;
LABEL_81:
  if (v35 < v49)
  {
    v35 = v49;
  }

  v50 = !v91;
  v51 = 0.0;
  if (v92 < 3)
  {
    v50 = 1;
  }

  v52 = 0.0;
  if ((v50 & 1) == 0)
  {
    [(NSTypesetter *)self paragraphSpacingBeforeGlyphAtIndex:location withProposedLineFragmentRect:x, y, 10000000.0, v42];
    v52 = v53;
  }

  if (length && (v54 = v20 + length, [(NSString *)v93 length]>= v20 + length))
  {
    p_x = &v90->origin.x;
    if (v54 < 1)
    {
      goto LABEL_112;
    }

    if (v54 == 1)
    {
      v56 = 0;
    }

    else
    {
      v57 = [(NSString *)v93 characterAtIndex:v54 - 1];
      v56 = v54 - 1;
      if (v57 == 10)
      {
        if ([(NSString *)v93 characterAtIndex:v54 - 2]== 13)
        {
          v56 = v54 - 2;
        }

        else
        {
          v56 = v54 - 1;
        }
      }
    }

    v58 = [(NSTypesetter *)self actionForControlCharacterAtIndex:v56];
    if ((v58 & 0x10) != 0 || v92 <= 3 && (v58 & 0x20) != 0)
    {
      goto LABEL_112;
    }

    v59 = [(NSTypesetter *)self attributedString];
    v95 = 0;
    v96 = 0;
    v60 = [(NSAttributedString *)v59 attribute:@"NSAttachment" atIndex:v54 - 1 effectiveRange:&v95];
    if (v96 + v95 > v54 || !v60)
    {
      if ([(NSString *)v93 length]<= v54)
      {
        v60 = 0;
      }

      else
      {
        v60 = [(NSAttributedString *)v59 attribute:@"NSAttachment" atIndex:v54 effectiveRange:&v95];
        if (v96 + v95 > v54)
        {
          v60 = 0;
        }
      }
    }

    if ([v60 embeddingType] == 1)
    {
LABEL_112:
      [(NSTypesetter *)self paragraphSpacingAfterGlyphAtIndex:length + location - 1 withProposedLineFragmentRect:x, y, 10000000.0, v42];
      v51 = v61;
    }
  }

  else
  {
    p_x = &v90->origin.x;
  }

  [(NSTypesetter *)self getLineFragmentRect:lineFragmentRect usedRect:p_x remainingRect:v94 forStartingGlyphAtIndex:location proposedRect:x lineSpacing:y paragraphSpacingBefore:10000000.0 paragraphSpacingAfter:v42, v35, v52, v51];
  if (lineFragmentRect->size.width <= 0.0 || lineFragmentRect->size.height <= 0.0)
  {
    v69 = *(MEMORY[0x1E696AA80] + 16);
    lineFragmentRect->origin = *MEMORY[0x1E696AA80];
    lineFragmentRect->size = v69;
    return;
  }

  v62 = [(NSTypesetter *)self currentParagraphStyle];
  [(NSTypesetter *)self lineFragmentPadding];
  v64 = v63;
  var19 = reserved->var19;
  v66 = (var19 >> 19) & 3;
  if (v91)
  {
    [(NSParagraphStyle *)v62 firstLineHeadIndent];
    var8 = v67;
  }

  else
  {
    var8 = reserved->var8;
  }

  if (v66)
  {
    v70 = (v66 - 1);
  }

  else
  {
    v70 = [NSParagraphStyle defaultWritingDirectionForLanguage:0];
  }

  if (lineFragmentRect->size.width >= 10000000.0)
  {
    v71 = 0;
  }

  else
  {
    v71 = (var19 >> 7) & 0xF;
  }

  v72 = 2 * (v70 == NSWritingDirectionRightToLeft);
  if (v71 != 3)
  {
    v72 = v71;
  }

  p_x[2] = v64 + v64;
  v73 = 0.0;
  if (var8 >= 0.0)
  {
    v73 = var8;
  }

  if (v72 == 1)
  {
    if (v92 > 1)
    {
      if (v70 == NSWritingDirectionRightToLeft)
      {
        v80 = lineFragmentRect->size.width + v64 * -2.0;
        v81 = v80 - v73;
        var9 = reserved->var9;
        if (var9 <= 0.0)
        {
          v80 = 0.0;
        }

        v83 = v81 - (var9 - v80);
      }

      else
      {
        v85 = reserved->var9;
        if (v85 <= 0.0)
        {
          v86 = v64 + v85;
          v87 = v85 - v64;
          if (v86 > 0.0)
          {
            v87 = -v64;
          }

          v85 = v87 + lineFragmentRect->size.width - v64;
        }

        v83 = v73 + v85;
      }

      v74 = v83 * 0.5;
    }

    else
    {
      if (length)
      {
        v75 = reserved->var8;
      }

      else
      {
        v75 = 0.0;
      }

      v74 = (lineFragmentRect->size.width - (v64 + v64)) * 0.5 + v75;
    }

    goto LABEL_162;
  }

  if (v72 == 2)
  {
    if (v70 == NSWritingDirectionRightToLeft)
    {
      v74 = lineFragmentRect->size.width - (v73 + v64 * 2.0);
LABEL_162:
      v77 = *p_x + v74;
      goto LABEL_163;
    }

    v73 = reserved->var9;
    if (v73 <= 0.0)
    {
      v78 = v64 + v73;
      v79 = v73 - v64;
      if (v78 > 0.0)
      {
        v79 = -v64;
      }

      v73 = v79 + lineFragmentRect->size.width - v64;
    }
  }

  else
  {
    if (v70 == NSWritingDirectionRightToLeft)
    {
      v76 = reserved->var9;
      if (v76 > 0.0)
      {
        v76 = v76 + v64 * 2.0 - lineFragmentRect->size.width;
      }

      v77 = *p_x - v76;
      goto LABEL_163;
    }

    if (v92 < 2 && length == 0)
    {
      v73 = 0.0;
    }
  }

  v77 = v73 + *p_x;
LABEL_163:
  *p_x = v77;
}

- (void)setDefaultParagraphStyle:(id)a3
{
  if (self->_defaultParagraphStyle != a3 && ([a3 isEqual:?] & 1) == 0)
  {

    self->_defaultParagraphStyle = a3;
  }
}

- (NSDictionary)attributesForExtraLineFragment
{
  v3 = [(NSTypesetter *)self attributedString];
  v4 = [(NSAttributedString *)v3 length];
  v5 = [(NSTextView *)[(NSTextContainer *)[(NSTypesetter *)self currentTextContainer] textView] superview];
  if (!v5 || (v6 = v5, v4) && [v5 selectedRange] != v4 || (objc_opt_respondsToSelector() & 1) == 0 || (result = objc_msgSend(v6, "typingAttributes")) == 0)
  {
    result = [(NSTextContainer *)[(NSTypesetter *)self currentTextContainer] attributesForExtraLineFragment];
    if (!result)
    {
      if (v4)
      {

        return [(NSAttributedString *)v3 attributesAtIndex:v4 - 1 effectiveRange:0];
      }

      else
      {
        return MEMORY[0x1E695E0F8];
      }
    }
  }

  return result;
}

- (NSTypesetterControlCharacterAction)actionForControlCharacterAtIndex:(NSUInteger)charIndex
{
  v4 = [(NSTypesetter *)self attributedString];
  v5 = [(NSString *)[(NSAttributedString *)v4 string] characterAtIndex:charIndex];
  if (v5 > 12)
  {
    if (v5 > 8231)
    {
      if (v5 == 8232)
      {
        return 8;
      }

      if (v5 == 8233)
      {
        return 24;
      }
    }

    else
    {
      if (v5 == 13)
      {
        return 24;
      }

      if (v5 == 133)
      {
        return 8;
      }
    }

    return 1;
  }

  if (v5 <= 10)
  {
    if (v5 == 9)
    {
      return 4;
    }

    if (v5 != 10)
    {
      return 1;
    }

    return 24;
  }

  if (v5 == 11)
  {
    return 8;
  }

  if ([(NSAttributedString *)v4 _isStringDrawingTextStorage])
  {
    return 8;
  }

  else
  {
    return 40;
  }
}

- (void)_layoutGlyphsInLayoutManager:(id)a3 startingAtGlyphIndex:(unint64_t)a4 maxNumberOfLineFragments:(unint64_t)a5 maxCharacterIndex:(unint64_t)a6 nextGlyphIndex:(unint64_t *)a7 nextCharacterIndex:(unint64_t *)a8
{
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  v13 = [a3 isValidGlyphIndex:a4];
  v14 = MEMORY[0x1E696AA80];
  v210 = reserved;
  v211 = self;
  reserved->var15.length = 0;
  p_length = &reserved->var15.length;
  v16 = *v14;
  v17 = v14[1];
  *(p_length - 9) = *v14;
  *(p_length - 7) = v17;
  v195 = v17;
  v196 = v16;
  *(p_length - 3) = v17;
  *(p_length - 5) = v16;
  *(p_length - 1) = 0x7FFFFFFFFFFFFFFFLL;
  v197 = p_length;
  p_length[1] = 0;
  v18 = self->_reserved;
  v199 = a8;
  if (!v18)
  {
    v18 = [(NSTypesetter *)self _getAuxData];
  }

  var0 = v18->var0;
  v234 = 0;
  v235 = 0;
  v20 = [a3 textContainers];
  *(var0 + 7) = v20;
  v201 = [v20 count];
  if (v13)
  {
    v212 = a4;
  }

  else
  {
    v212 = [a3 numberOfGlyphs];
  }

  if (!v201)
  {
LABEL_160:
    *(var0 + 8) = 0;
    goto LABEL_161;
  }

  if (v212)
  {
    v21 = [a3 textContainerForGlyphAtIndex:v212 - 1 effectiveRange:&v234 withoutAdditionalLayout:1];
  }

  else
  {
    v21 = [*(var0 + 7) objectAtIndex:0];
  }

  *(var0 + 8) = v21;
  if (v21)
  {
    v232 = 0;
    v233 = 0;
    v230 = 0;
    v231 = 0;
    v193 = *MEMORY[0x1E696AA78];
    v229 = *MEMORY[0x1E696AA78];
    *var0 = [a3 textStorage];
    if (*(var0 + 6) != a3)
    {
      *(var0 + 6) = a3;
      if (objc_opt_class() != __NSLayoutManagerClass)
      {
        v210->var5 = [a3 methodForSelector:sel_setNotShownAttribute_forGlyphAtIndex_];
        v210->var6 = [a3 methodForSelector:sel_setDrawsOutsideLineFragment_forGlyphAtIndex_];
      }
    }

    -[NSTypesetter setTypesetterBehavior:](self, "setTypesetterBehavior:", [a3 typesetterBehavior]);
    -[NSTypesetter _setForceOriginalFontBaseline:](self, "_setForceOriginalFontBaseline:", [a3 allowsOriginalFontMetricsOverride]);
    -[NSTypesetter setUsesFontLeading:](self, "setUsesFontLeading:", [a3 usesFontLeading]);
    -[NSTypesetter setApplicationFrameworkContext:](self, "setApplicationFrameworkContext:", [a3 applicationFrameworkContext]);
    [a3 hyphenationFactor];
    v23 = v22;
    if (v23 == 0.0 && [a3 usesDefaultHyphenation])
    {
      +[NSParagraphStyle _defaultHyphenationFactor];
      v23 = *&v22;
    }

    *&v22 = v23;
    [(NSTypesetter *)self setHyphenationFactor:v22];
    v200 = [*var0 string];
    [*(var0 + 8) size];
    *(var0 + 10) = v25;
    *(var0 + 11) = v24;
    if (v25 <= 0.0)
    {
      *(var0 + 10) = 0x416312D000000000;
    }

    if (v24 <= 0.0)
    {
      *(var0 + 11) = 0x416312D000000000;
    }

    *(var0 + 9) = [*(var0 + 7) indexOfObjectIdenticalTo:*(var0 + 8)];
    [*(var0 + 8) lineFragmentPadding];
    [(NSTypesetter *)self setLineFragmentPadding:?];
    v210->var18 = 0;
    if (!v212)
    {
      v32 = 8;
      if (v13)
      {
        v32 = 1;
      }

      v208 = v32;
      if (_NSTypesetterTextBlockRetriesDict)
      {
        os_unfair_lock_lock_with_options();
        CFDictionaryRemoveValue(_NSTypesetterTextBlockRetriesDict, a3);
        os_unfair_lock_unlock(&_NSTypesetterTextBlockRetriesDictLock);
      }

      goto LABEL_69;
    }

    v205 = v212 - 1;
    v208 = -[NSTypesetter actionForControlCharacterAtIndex:](self, "actionForControlCharacterAtIndex:", [a3 characterIndexForGlyphAtIndex:?]);
    if (_NSTypesetterTextBlockRetriesDict && (os_unfair_lock_lock_with_options(), Value = CFDictionaryGetValue(_NSTypesetterTextBlockRetriesDict, a3), CFDictionaryRemoveValue(_NSTypesetterTextBlockRetriesDict, a3), os_unfair_lock_unlock(&_NSTypesetterTextBlockRetriesDictLock), v212 == Value))
    {
      CFDictionarySetValue(_NSTypesetterTextBlockRetriesDict, a3, Value);
      v208 |= 0x20u;
    }

    else if (*(var0 + 11) < 10000000.0 && (v208 & 0x20) != 0)
    {
      v27 = [*(var0 + 12) textBlocks];
      if (v27)
      {
        if ([v27 count])
        {
          v208 = 8;
          goto LABEL_44;
        }
      }
    }

    if (*(var0 + 11) < 10000000.0 && (v208 & 0x20) != 0)
    {
      v28 = *(var0 + 9) + 1;
      *(var0 + 9) = v28;
      if (v28 >= v201)
      {
        *(var0 + 8) = 0;
      }

      else
      {
        v29 = [*(var0 + 7) objectAtIndex:?];
        *(var0 + 8) = v29;
        [v29 size];
        *(var0 + 10) = v31;
        *(var0 + 11) = v30;
        if (v31 <= 0.0)
        {
          *(var0 + 10) = 0x416312D000000000;
        }

        if (v30 <= 0.0)
        {
          *(var0 + 11) = 0x416312D000000000;
        }

        [*(var0 + 8) lineFragmentPadding];
        [(NSTypesetter *)self setLineFragmentPadding:?];
      }

      v208 = 8;
      goto LABEL_60;
    }

LABEL_44:
    v33 = [a3 characterIndexForGlyphAtIndex:v205];
    v34 = [*var0 length];
    v35 = [objc_msgSend(*var0 attribute:@"NSParagraphStyle" atIndex:v33 effectiveRange:{0), "textBlocks"}];
    [a3 lineFragmentRectForGlyphAtIndex:v205 effectiveRange:0 withoutAdditionalLayout:1];
    *&v229 = 0;
    *(&v229 + 1) = v36 + v37;
    if (!v35 || (v38 = [v35 count]) == 0)
    {
LABEL_60:
      v47 = [*(var0 + 8) maximumNumberOfLines];
      if (v47)
      {
        if (v235)
        {
          *buffer = v234;
          *&buffer[4] = 0;
          if (v234 < v212)
          {
            v48 = 0;
            do
            {
              [a3 lineFragmentRectForGlyphAtIndex:? effectiveRange:? withoutAdditionalLayout:?];
              --v48;
            }

            while (*&buffer[4] + *buffer < v212);
            if (v48)
            {
              if (-v48 >= v47)
              {
                *(var0 + 8) = 0;
              }

              else
              {
                v210->var18 -= v48;
                a5 -= v48;
              }
            }
          }
        }
      }

LABEL_69:
      if (!*(var0 + 8))
      {
        goto LABEL_161;
      }

      v49 = @"NSParagraphStyle";
      v191 = *(MEMORY[0x1E696AA80] + 16);
      v192 = *MEMORY[0x1E696AA80];
      v186 = *(MEMORY[0x1E696AA80] + 24);
      v187 = *(MEMORY[0x1E696AA80] + 8);
      while (1)
      {
        if (v210->var18 >= a5)
        {
          goto LABEL_161;
        }

        if ((v13 & 1) == 0)
        {
          if ((v208 & 8) != 0)
          {
            *buffer = 0u;
            v216 = 0u;
            v213 = 0u;
            v214 = 0u;
            [(NSTypesetter *)v211 getLineFragmentRect:buffer usedRect:&v213 forParagraphSeparatorGlyphRange:v212 atProposedOrigin:0, v229];
            [a3 setExtraLineFragmentRect:*(var0 + 8) usedRect:*buffer textContainer:{*&buffer[4], v216, v213, v214}];
          }

          LOBYTE(v13) = 0;
          goto LABEL_160;
        }

        LOBYTE(v13) = 1;
        if ([a3 characterIndexForGlyphAtIndex:v212] >= a6)
        {
          goto LABEL_161;
        }

        v208 = -[NSTypesetter _getRemainingNominalParagraphRange:andParagraphSeparatorRange:charactarIndex:layoutManager:string:](v211, "_getRemainingNominalParagraphRange:andParagraphSeparatorRange:charactarIndex:layoutManager:string:", &v232, &v230, [a3 characterIndexForGlyphAtIndex:v212], a3, v200);
        if ((v208 & 0x28) != 0)
        {
          v50 = v232;
          v51 = v233;
          v52 = v230;
          v53 = v231;
        }

        else
        {
          v52 = [a3 numberOfGlyphs];
          v53 = 0;
          v50 = v212;
          v51 = v52 - v212;
          v232 = v212;
          v233 = v52 - v212;
          v230 = v52;
          v231 = 0;
        }

        [(NSTypesetter *)v211 setParagraphGlyphRange:v50 separatorGlyphRange:v51, v52, v53];
        v232 = [(NSTypesetter *)v211 paragraphGlyphRange];
        v233 = v54;
        v55 = [(NSTypesetter *)v211 layoutParagraphAtPoint:&v229];
        v212 = v55;
        if (!NSIsEmptyRect(v210->var13) && v210->var13.size.width < 10000000.0)
        {
          v56 = [*(var0 + 12) textBlocks];
          if (v56)
          {
            if ([v56 count])
            {
              location = v210->var1.location;
              if (location < [*var0 length])
              {
                v194 = [objc_msgSend(*var0 attribute:v49 atIndex:v210->var1.location effectiveRange:{0), "textBlocks"}];
                if (v194)
                {
                  v58 = [v194 count];
                  if (v58)
                  {
                    v59 = v210->var1.location;
                    if (v59 < [*var0 length])
                    {
                      break;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_133:
        if (!*(var0 + 8))
        {
          if (v55)
          {
            if (v55 >= v231 + v230 || (v134 = [a3 textContainerForGlyphAtIndex:v55 - 1 effectiveRange:0 withoutAdditionalLayout:1], (v135 = v134) == 0) || !objc_msgSend(v134, "lineBreakMode"))
            {
              LOBYTE(v13) = 1;
              goto LABEL_155;
            }

            v213 = 0uLL;
            *(var0 + 8) = v135;
            *(var0 + 9) = [*(var0 + 7) indexOfObject:v135];
            [*(var0 + 8) size];
            *(var0 + 10) = v138;
            *(var0 + 11) = v137;
            if (v138 <= 0.0)
            {
              *(var0 + 10) = 0x416312D000000000;
            }

            if (v137 <= 0.0)
            {
              *(var0 + 11) = 0x416312D000000000;
            }

            [*(var0 + 8) lineFragmentPadding];
            [(NSTypesetter *)v211 setLineFragmentPadding:?];
            [a3 lineFragmentRectForGlyphAtIndex:v55 - 1 effectiveRange:&v213 withoutAdditionalLayout:1];
            *&v229 = v139;
            *(&v229 + 1) = v140;
            v141 = v213;
            if (v213 >= v232 && v213 - v232 < v233)
            {
              v142 = [(NSTypesetter *)v211 paragraphSeparatorCharacterRange];
              v144 = [a3 glyphRangeForCharacterRange:v142 actualCharacterRange:{v143, 0}];
              v145 = 0;
              *(&v213 + 1) = v144 + v146 - v213;
              goto LABEL_235;
            }

            if (v213)
            {
              v147 = v213;
              v207 = v213;
              while (1)
              {
                -[NSTypesetter _getRemainingNominalParagraphRange:andParagraphSeparatorRange:charactarIndex:layoutManager:string:](v211, "_getRemainingNominalParagraphRange:andParagraphSeparatorRange:charactarIndex:layoutManager:string:", &v232, &v230, [a3 characterIndexForGlyphAtIndex:v147], a3, v200);
                v148 = v213;
                if (v233)
                {
                  break;
                }

                [a3 lineFragmentRectForGlyphAtIndex:v213 - 1 effectiveRange:&v213 withoutAdditionalLayout:1];
                *&v229 = v149;
                *(&v229 + 1) = v150;
                v147 = v213;
                if (!v213)
                {
                  if ([(NSTypesetter *)v211 bidiProcessingEnabled]&& (*(&v210->var19 + 1) & 0x80) == 0)
                  {
                    BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane();
                    UnicodePropertyDataForPlane = CFUniCharGetUnicodePropertyDataForPlane();
                    v226 = 0;
                    v224 = 0u;
                    v225 = 0u;
                    v222 = 0u;
                    *theString = 0u;
                    v220 = 0u;
                    v221 = 0u;
                    v218 = 0u;
                    v219 = 0u;
                    v216 = 0u;
                    v217 = 0u;
                    *buffer = 0u;
                    v152 = [*var0 string];
                    v153 = [(__CFString *)v152 length];
                    theString[0] = v152;
                    *(&v224 + 1) = 0;
                    *&v225 = v153;
                    theString[1] = CFStringGetCharactersPtr(v152);
                    if (theString[1])
                    {
                      CStringPtr = 0;
                    }

                    else
                    {
                      CStringPtr = CFStringGetCStringPtr(v152, 0x600u);
                    }

                    *&v224 = CStringPtr;
                    *(&v225 + 1) = 0;
                    v226 = 0;
                    v155 = [a3 characterRangeForGlyphRange:v213 actualGlyphRange:0];
                    v157 = v155 + v156;
                    if (v155 < (v155 + v156))
                    {
                      while ((v155 & 0x8000000000000000) == 0)
                      {
                        v158 = v225;
                        if (v225 <= v155)
                        {
                          break;
                        }

                        if (theString[1])
                        {
                          v159 = *(&theString[1]->isa + *(&v224 + 1) + v155);
                        }

                        else if (v224)
                        {
                          v159 = *(v224 + *(&v224 + 1) + v155);
                        }

                        else
                        {
                          if (v226 <= v155 || (v165 = *(&v225 + 1), *(&v225 + 1) > v155))
                          {
                            v166 = v155 - 4;
                            if (v155 < 4)
                            {
                              v166 = 0;
                            }

                            if (v166 + 64 < v225)
                            {
                              v158 = v166 + 64;
                            }

                            *(&v225 + 1) = v166;
                            v226 = v158;
                            v236.length = v158 - v166;
                            v236.location = *(&v224 + 1) + v166;
                            CFStringGetCharacters(theString[0], v236, buffer);
                            v165 = *(&v225 + 1);
                          }

                          v159 = buffer[v155 - v165];
                        }

                        v160 = v159;
                        if (v159 >> 10 != 54)
                        {
                          goto LABEL_191;
                        }

                        v164 = v155 + 1;
                        v167 = v225;
                        if (v225 <= v155 + 1)
                        {
                          goto LABEL_198;
                        }

                        if (theString[1])
                        {
                          v168 = *(&theString[1]->isa + *(&v224 + 1) + v164);
                        }

                        else if (v224)
                        {
                          v168 = *(v224 + *(&v224 + 1) + v164);
                        }

                        else
                        {
                          if (v226 <= v164 || (v169 = *(&v225 + 1), *(&v225 + 1) > v164))
                          {
                            v170 = v155 - 3;
                            if (v155 < 3)
                            {
                              v170 = 0;
                            }

                            if (v170 + 64 < v225)
                            {
                              v167 = v170 + 64;
                            }

                            *(&v225 + 1) = v170;
                            v226 = v167;
                            v237.length = v167 - v170;
                            v237.location = *(&v224 + 1) + v170;
                            CFStringGetCharacters(theString[0], v237, buffer);
                            v169 = *(&v225 + 1);
                          }

                          v168 = buffer[v164 - v169];
                        }

                        if (v168 >> 10 != 55)
                        {
                          goto LABEL_198;
                        }

                        v160 = (v160 << 10) + v168 - 56613888;
                        if ((v160 & 0x1F0000) == 0)
                        {
                          ++v155;
LABEL_191:
                          v161 = BitmapPtrForPlane;
                          v162 = UnicodePropertyDataForPlane;
                          if (BitmapPtrForPlane)
                          {
                            goto LABEL_192;
                          }

                          goto LABEL_193;
                        }

                        v161 = CFUniCharGetBitmapPtrForPlane();
                        v162 = CFUniCharGetUnicodePropertyDataForPlane();
                        ++v155;
                        if (v161)
                        {
LABEL_192:
                          if ((*(v161 + (v160 >> 3)) >> (v160 & 7)))
                          {
                            goto LABEL_229;
                          }
                        }

LABEL_193:
                        if (v162)
                        {
                          v163 = *(v162 + BYTE1(v160));
                          if (v163 >= 0x13)
                          {
                            v163 = *(v162 + (v163 << 8) - 4864 + v160 + 256);
                          }

                          if (v163 == 3)
                          {
LABEL_229:
                            *&v210->var19 |= 0x8000u;
                            goto LABEL_230;
                          }
                        }

                        v164 = v155 + 1;
LABEL_198:
                        v155 = v164;
                        if (v164 >= v157)
                        {
                          goto LABEL_230;
                        }
                      }

                      LOWORD(v160) = 0;
                      goto LABEL_191;
                    }

LABEL_230:
                    v141 = v207;
                  }

                  v147 = v213;
                }

                *(&v213 + 1) = v231 + v230 - v147;
                if (!v147)
                {
                  goto LABEL_233;
                }
              }
            }

            else
            {
LABEL_233:
              v148 = 0;
            }

            v145 = v148 < v141;
LABEL_235:
            v171 = [v135 lineBreakMode];
            v173 = *(&v213 + 1);
            v172 = v213;
            if (v171 >= 3)
            {
              v174 = [(NSTypesetter *)v211 characterRangeForGlyphRange:v213 actualGlyphRange:0];
              v176 = v175;
              [a3 _invalidateGlyphsForExtendedCharacterRange:v174 changeInLength:{v175, 0}];
              v172 = [a3 glyphRangeForCharacterRange:v174 actualCharacterRange:{v176, 0}];
              v173 = v177;
              *&v213 = v172;
              *(&v213 + 1) = v177;
            }

            [(NSTypesetter *)v211 setParagraphGlyphRange:v172 separatorGlyphRange:v173, v173 + v172, 0];
            [(NSTypesetter *)v211 _setLineBreakModeOverridden:1];
            v212 = [(NSTypesetter *)v211 layoutParagraphAtPoint:&v229];
            [(NSTypesetter *)v211 _setLineBreakModeOverridden:0];
            if (v145)
            {
              [a3 _invalidateUsageForTextContainersInRange:{*(var0 + 9), 1}];
            }

            *(var0 + 8) = 0;
          }

          else
          {
            v212 = 0;
          }

          LOBYTE(v13) = 1;
          goto LABEL_161;
        }

        LOBYTE(v13) = [a3 isValidGlyphIndex:v55];
        v128 = v208 & 0x20;
        if (*(var0 + 11) >= 10000000.0 || v128 == 0)
        {
          goto LABEL_141;
        }

        if (NSIsEmptyRect(v210->var13) || v210->var13.size.width >= 10000000.0)
        {
          v128 = 1;
LABEL_141:
          if (*(var0 + 11) >= 10000000.0 || !v128)
          {
            goto LABEL_155;
          }

          v130 = *(var0 + 9) + 1;
          *(var0 + 9) = v130;
          if (v130 >= v201)
          {
            goto LABEL_160;
          }

          v131 = [*(var0 + 7) objectAtIndex:?];
          *(var0 + 8) = v131;
          [v131 size];
          *(var0 + 10) = v133;
          *(var0 + 11) = v132;
          if (v133 <= 0.0)
          {
            *(var0 + 10) = 0x416312D000000000;
          }

          if (v132 <= 0.0)
          {
            *(var0 + 11) = 0x416312D000000000;
          }

          [*(var0 + 8) lineFragmentPadding];
          [(NSTypesetter *)v211 setLineFragmentPadding:?];
          v229 = v193;
        }

        v208 = 8;
LABEL_155:
        if (!*(var0 + 8))
        {
          goto LABEL_161;
        }
      }

      v60 = [*var0 length];
      if (v210->var1.length + v210->var1.location + v231 >= v60)
      {
        v62 = 0;
      }

      else
      {
        v61 = [objc_msgSend(*var0 attribute:v49) atIndex:"textBlocks" effectiveRange:?];
        v62 = v61;
        if (v61)
        {
          v63 = [v61 count];
          goto LABEL_90;
        }
      }

      v63 = 0;
LABEL_90:
      v178 = v49;
      memset(buffer, 0, sizeof(buffer));
      v213 = xmmword_18E856180;
      v227 = 0;
      v228 = 0;
      v64 = 0;
      if (!v63)
      {
        goto LABEL_98;
      }

      v65 = v58 >= v63 ? v63 : v58;
      while (1)
      {
        v66 = [v194 objectAtIndex:v64];
        if (v66 != [v62 objectAtIndex:v64])
        {
          break;
        }

        if (v65 == ++v64)
        {
          v64 = v65;
          break;
        }
      }

      if (v58 > v64)
      {
LABEL_98:
        v67 = 0;
        v179 = 0x7FFFFFFFFFFFFFFFLL;
        bRect_8 = v191;
        bRect_16 = v192;
        do
        {
          v68 = v58--;
          v69 = [v194 objectAtIndex:v58];
          if (v67)
          {
            *buffer = v213;
            v70 = bRect_8;
            v71 = bRect_16;
            v72 = v67;
            v185 = v179;
          }

          else
          {
            [a3 layoutRectForTextBlock:v69 atIndex:*(var0 + 1) effectiveRange:buffer];
            v71 = v73;
            v70 = v74;
            if (*&buffer[4])
            {
              v185 = [a3 characterRangeForGlyphRange:*buffer actualGlyphRange:{*&buffer[4], 0}];
              v72 = v75;
            }

            else
            {
              v76 = [*var0 rangeOfTextBlock:v69 atIndex:v210->var1.location];
              v72 = v77;
              v185 = v76;
              *buffer = [a3 glyphRangeForCharacterRange:v76 actualCharacterRange:{v77, 0}];
              *&buffer[4] = v78;
            }
          }

          v79 = [a3 textContainerForGlyphAtIndex:*buffer effectiveRange:0 withoutAdditionalLayout:1];
          if (!v79)
          {
            v79 = *(var0 + 8);
            if (!v79)
            {
              continue;
            }
          }

          [v79 size];
          v81 = v80;
          v83 = v82;
          [v79 lineFragmentPadding];
          v85 = v84;
          if (v81 > 0.0)
          {
            v86 = v81;
          }

          else
          {
            v86 = 10000000.0;
          }

          if (v83 > 0.0)
          {
            v87 = v83;
          }

          else
          {
            v87 = 10000000.0;
          }

          v88 = 0;
          v89 = 0;
          v238 = NSInsetRect(*(&v86 - 2), v85, 0.0);
          x = v238.origin.x;
          y = v238.origin.y;
          width = v238.size.width;
          height = v238.size.height;
          v184 = v70;
          bRect = v71;
          dX = v85;
          if (v58)
          {
            v91 = [v194 objectAtIndex:v68 - 2];
            [a3 layoutRectForTextBlock:v91 atIndex:*(var0 + 1) effectiveRange:&v213];
            bRect_8 = v95;
            bRect_16 = v94;
            if (*(&v213 + 1))
            {
              v96 = v92;
              v97 = v93;
              v98 = [a3 characterRangeForGlyphRange:v213 actualGlyphRange:0];
              v100 = v99;
              v179 = v98;
              height = v97;
              y = v96;
              width = bRect_8;
              x = bRect_16;
            }

            else
            {
              v101 = [*var0 rangeOfTextBlock:v91 atIndex:v210->var1.location];
              v100 = v102;
              v179 = v101;
              *&v213 = [a3 glyphRangeForCharacterRange:v101 actualCharacterRange:{v102, 0}];
              *(&v213 + 1) = v103;
            }

            bRect_24 = height;
          }

          else
          {
            bRect_24 = v238.size.height;
            v100 = v67;
          }

          v104 = *buffer;
          v106 = v186;
          v105 = v187;
          v108 = v191;
          v107 = v192;
          if (*buffer < *&buffer[4] + *buffer)
          {
            v206 = v85 + v85;
            v110 = v191;
            v109 = v192;
            v111 = v186;
            v112 = v187;
            do
            {
              [a3 lineFragmentRectForGlyphAtIndex:v104 effectiveRange:&v227 withoutAdditionalLayout:1];
              v107 = v113;
              v105 = v114;
              v108 = v115;
              v106 = v116;
              [a3 lineFragmentUsedRectForGlyphAtIndex:v104 effectiveRange:&v227 withoutAdditionalLayout:1];
              v119 = v117 + v118;
              if (v105 + v106 > v119)
              {
                v106 = v119 - v105;
              }

              if (v108 >= v206)
              {
                v239.origin.x = v107;
                v239.origin.y = v105;
                v239.size.width = v108;
                v239.size.height = v106;
                v240 = NSInsetRect(v239, dX, 0.0);
                v107 = v240.origin.x;
                v105 = v240.origin.y;
                v108 = v240.size.width;
                v106 = v240.size.height;
              }

              v241.origin.x = v109;
              v241.origin.y = v112;
              v241.size.width = v110;
              v241.size.height = v111;
              if (!NSIsEmptyRect(v241))
              {
                v242.origin.x = v109;
                v242.origin.y = v112;
                v242.size.width = v110;
                v242.size.height = v111;
                v246.origin.x = v107;
                v246.origin.y = v105;
                v246.size.width = v108;
                v246.size.height = v106;
                v243 = NSUnionRect(v242, v246);
                v107 = v243.origin.x;
                v105 = v243.origin.y;
                v108 = v243.size.width;
                v106 = v243.size.height;
              }

              v104 = v228 + v227;
              v109 = v107;
              v112 = v105;
              v110 = v108;
              v111 = v106;
            }

            while ((v228 + v227) < *&buffer[4] + *buffer);
          }

          v120 = v184;
          if (v184 > 0.0)
          {
            v244.origin.x = v107;
            v244.origin.y = v105;
            v244.size.width = v108;
            v244.size.height = v106;
            v121 = bRect;
            v122 = v105;
            v123 = v106;
            v245 = NSUnionRect(v244, *(&v120 - 2));
            v107 = v245.origin.x;
            v105 = v245.origin.y;
            v108 = v245.size.width;
            v106 = v245.size.height;
          }

          v67 = v100;
          [v69 boundsRectForContentRect:v79 inRect:v185 textContainer:v72 characterRange:{v107, v105, v108, v106, x, y, width, bRect_24}];
          v125 = v124;
          v127 = v126;
          [a3 setBoundsRect:v69 forTextBlock:*buffer glyphRange:*&buffer[4]];
          if (*(&v229 + 1) < v125 + v127)
          {
            *(&v229 + 1) = v125 + v127;
          }
        }

        while (v58 > v64);
      }

      v49 = v178;
      goto LABEL_133;
    }

    if (v33 + 1 >= v34)
    {
      v40 = 0;
    }

    else
    {
      v39 = [objc_msgSend(*var0 attribute:@"NSParagraphStyle" atIndex:"textBlocks" effectiveRange:?];
      v40 = v39;
      if (v39)
      {
        v41 = [v39 count];
        goto LABEL_53;
      }
    }

    v41 = 0;
LABEL_53:
    v42 = 0;
    v43 = 1;
    do
    {
      v44 = [v35 objectAtIndex:v42];
      if ((v43 & (v42 < v41)) == 1 && v44 == [v40 objectAtIndex:v42])
      {
        v43 = 1;
      }

      else
      {
        [a3 boundsRectForTextBlock:v44 atIndex:v205 effectiveRange:0];
        v43 = 0;
        if (*(&v229 + 1) < v45 + v46)
        {
          *(&v229 + 1) = v45 + v46;
        }
      }

      ++v42;
    }

    while (v38 != v42);
    goto LABEL_60;
  }

LABEL_161:
  v136 = v197 - 5;
  v210->var5 = 0;
  v210->var6 = 0;
  v210->var19 = (*&v210->var19 & 0xFFF87FFF | 0x28000);
  *v136 = v196;
  *(v136 + 1) = v195;
  v210->var15.location = 0x7FFFFFFFFFFFFFFFLL;
  *v197 = 0;
  v197[1] = 0;
  if (a7)
  {
    *a7 = v212;
  }

  if (v199)
  {
    if (v13)
    {
      a6 = [a3 characterIndexForGlyphAtIndex:v212];
    }

    *v199 = a6;
  }
}

- (void)layoutGlyphsInLayoutManager:(NSLayoutManager *)layoutManager startingAtGlyphIndex:(NSUInteger)startGlyphIndex maxNumberOfLineFragments:(NSUInteger)maxNumLines nextGlyphIndex:(NSUInteger *)nextGlyph
{
  v11 = [(NSTextStorage *)[(NSLayoutManager *)layoutManager textStorage] length];

  [(NSTypesetter *)self _layoutGlyphsInLayoutManager:layoutManager startingAtGlyphIndex:startGlyphIndex maxNumberOfLineFragments:maxNumLines maxCharacterIndex:v11 nextGlyphIndex:nextGlyph nextCharacterIndex:0];
}

- (NSRange)layoutCharactersInRange:(NSRange)characterRange forLayoutManager:(NSLayoutManager *)layoutManager maximumNumberOfLineFragments:(NSUInteger)maxNumLines
{
  length = characterRange.length;
  location = characterRange.location;
  v11 = characterRange.location + characterRange.length;
  v19 = characterRange.location + characterRange.length;
  v12 = [(NSTextStorage *)[(NSLayoutManager *)layoutManager textStorage] length];
  if (v11 > v12)
  {
    v13 = v12;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = NSStringFromSelector(a2);
    v20.location = location;
    v20.length = length;
    [v14 raise:v15 format:{@"%@: Invalid character range %@ requested for a text storage with length %d", v16, NSStringFromRange(v20), v13}];
  }

  [(NSTypesetter *)self _layoutGlyphsInLayoutManager:layoutManager startingAtGlyphIndex:[(NSLayoutManager *)layoutManager glyphIndexForCharacterAtIndex:location] maxNumberOfLineFragments:maxNumLines maxCharacterIndex:v11 nextGlyphIndex:0 nextCharacterIndex:&v19];
  v17 = v19 - location;
  v18 = location;
  result.length = v17;
  result.location = v18;
  return result;
}

- (CGFloat)baselineOffsetInLayoutManager:(NSLayoutManager *)layoutMgr glyphIndex:(NSUInteger)glyphIndex
{
  [(NSLayoutManager *)layoutMgr baselineOffsetForGlyphAtIndex:glyphIndex];
  v8 = v7;
  if (v7 == 0.0)
  {
    v9 = [(NSTextStorage *)[(NSLayoutManager *)layoutMgr textStorage] attributesAtIndex:[(NSLayoutManager *)layoutMgr characterIndexForGlyphAtIndex:glyphIndex] effectiveRange:0];
    v10 = [v9 objectForKey:@"NSBaselineOffset"];
    if (v10)
    {
      [v10 doubleValue];
      v8 = v8 + v11;
    }

    v12 = [v9 objectForKey:@"NSSuperScript"];
    if (v12)
    {
      v13 = v12;
      v14 = [(NSTypesetter *)self _forceOriginalFontBaseline];
      if (!v9)
      {
        goto LABEL_12;
      }

      if (!v14 || (v15 = [v9 objectForKey:_NSOriginalFontAttributeName]) == 0)
      {
        v15 = [v9 objectForKey:@"NSFont"];
      }

      if ([objc_msgSend(v9 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
      {
        v15 = [v15 verticalFont];
      }

      if (!v15)
      {
LABEL_12:
        v15 = NSDefaultFont();
      }

      [(NSLayoutManager *)layoutMgr typesetterBehavior];
      v16 = [(NSLayoutManager *)layoutMgr usesFontLeading];
      [v15 _defaultLineHeightForUILayout];
      v18 = v17;
      v19 = 0.0;
      if (v16)
      {
        [v15 _leading];
      }

      v8 = v8 + ceil((v18 + v19) * [v13 integerValue] * 0.4);
    }

    if ([(NSTextContainer *)[(NSLayoutManager *)layoutMgr textContainerForGlyphAtIndex:glyphIndex effectiveRange:0] layoutOrientation])
    {
      v20 = [v9 objectForKey:@"NSFont"];
      if (!v20)
      {
        v20 = NSDefaultFont();
      }

      if (![objc_msgSend(v20 "verticalFont")])
      {
        [(NSLayoutManager *)layoutMgr lineFragmentRectForGlyphAtIndex:glyphIndex effectiveRange:0];
        v24 = v26 * 0.5;
        return v24 - v8;
      }
    }

    [(NSLayoutManager *)layoutMgr locationForGlyphAtIndex:glyphIndex];
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  [(NSLayoutManager *)layoutMgr lineFragmentRectForGlyphAtIndex:glyphIndex effectiveRange:0];
  v24 = v23 - v22;
  return v24 - v8;
}

- (NSRange)characterRangeForGlyphRange:(NSRange)glyphRange actualGlyphRange:(NSRangePointer)actualGlyphRange
{
  length = glyphRange.length;
  location = glyphRange.location;
  reserved = self->_reserved;
  v9 = reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
    v9 = self->_reserved;
    if (!v9)
    {
      v9 = [(NSTypesetter *)self _getAuxData];
    }
  }

  var0 = v9->var0;
  if ((*(&reserved->var19 + 2) & 4) != 0)
  {
    if (actualGlyphRange)
    {
      actualGlyphRange->location = location;
      actualGlyphRange->length = length;
    }

    v11 = (reserved->var1.location + location - *(var0 + 1));
    goto LABEL_13;
  }

  v11 = *(var0 + 6);
  if (!v11)
  {
    length = 0;
LABEL_13:
    v12 = length;
    goto LABEL_14;
  }

  v11 = [v11 characterRangeForGlyphRange:location actualGlyphRange:{length, actualGlyphRange}];
LABEL_14:
  result.length = v12;
  result.location = v11;
  return result;
}

- (NSRange)glyphRangeForCharacterRange:(NSRange)charRange actualCharacterRange:(NSRangePointer)actualCharRange
{
  length = charRange.length;
  location = charRange.location;
  reserved = self->_reserved;
  v9 = reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
    v9 = self->_reserved;
    if (!v9)
    {
      v9 = [(NSTypesetter *)self _getAuxData];
    }
  }

  var0 = v9->var0;
  if ((*(&reserved->var19 + 2) & 4) != 0)
  {
    if (actualCharRange)
    {
      actualCharRange->location = location;
      actualCharRange->length = length;
    }

    v11 = (*(var0 + 1) + location - reserved->var1.location);
    goto LABEL_13;
  }

  v11 = *(var0 + 6);
  if (!v11)
  {
    length = 0;
LABEL_13:
    v12 = length;
    goto LABEL_14;
  }

  v11 = [v11 glyphRangeForCharacterRange:location actualCharacterRange:{length, actualCharRange}];
LABEL_14:
  result.length = v12;
  result.location = v11;
  return result;
}

- (unint64_t)getGlyphsInRange:(_NSRange)a3 glyphs:(unsigned __int16 *)a4 properties:(int64_t *)a5 characterIndexes:(unint64_t *)a6 bidiLevels:(char *)a7
{
  length = a3.length;
  location = a3.location;
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  result = *(reserved->var0 + 6);
  if (result)
  {

    return [result getGlyphsInRange:location glyphs:length properties:a4 characterIndexes:a5 bidiLevels:{a6, a7}];
  }

  return result;
}

- (NSUInteger)getGlyphsInRange:(NSRange)glyphsRange glyphs:(NSGlyph *)glyphBuffer characterIndexes:(NSUInteger *)charIndexBuffer glyphInscriptions:(NSGlyphInscription *)inscribeBuffer elasticBits:(BOOL *)elasticBuffer bidiLevels:(unsigned __int8 *)bidiLevelBuffer
{
  length = glyphsRange.length;
  location = glyphsRange.location;
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  result = *(reserved->var0 + 6);
  if (result)
  {

    return [result getGlyphsInRange:location glyphs:length characterIndexes:glyphBuffer glyphInscriptions:charIndexBuffer elasticBits:inscribeBuffer bidiLevels:elasticBuffer];
  }

  return result;
}

- (void)getLineFragmentRect:(NSRectPointer)lineFragmentRect usedRect:(NSRectPointer)lineFragmentUsedRect remainingRect:(NSRectPointer)remainingRect forStartingGlyphAtIndex:(NSUInteger)startingGlyphIndex proposedRect:(NSRect)proposedRect lineSpacing:(CGFloat)lineSpacing paragraphSpacingBefore:(CGFloat)paragraphSpacingBefore paragraphSpacingAfter:(CGFloat)paragraphSpacingAfter
{
  height = proposedRect.size.height;
  width = proposedRect.size.width;
  y = proposedRect.origin.y;
  x = proposedRect.origin.x;
  v22 = [(NSTypesetter *)self _lineFragmentRectForProposedRectArgs];
  if (v22)
  {
    v23 = v22;
    v22->var0.var0 = lineSpacing;
    v22->var0.var1 = paragraphSpacingBefore;
    v22->var0.var2 = paragraphSpacingAfter;
    v22->var0.var3 = startingGlyphIndex;
    [(NSTypesetter *)self lineFragmentRectForProposedRect:remainingRect remainingRect:x, y, width, height + lineSpacing + paragraphSpacingBefore + paragraphSpacingAfter];
    lineFragmentRect->origin.x = v24;
    lineFragmentRect->origin.y = v25;
    lineFragmentRect->size.width = v26;
    lineFragmentRect->size.height = v27;
    if (lineFragmentUsedRect)
    {
      size = v23->var1.var0.size;
      lineFragmentUsedRect->origin = *&v23->var0.var0;
      lineFragmentUsedRect->size = size;
    }
  }

  else
  {
    reserved = self->_reserved;
    v153 = paragraphSpacingAfter;
    v150 = lineSpacing;
    v169 = width;
    v155 = paragraphSpacingBefore;
    if (reserved)
    {
      v30 = x;
      var0 = reserved->var0;
      v32 = y;
    }

    else
    {
      v33 = [(NSTypesetter *)self _getAuxData];
      reserved = self->_reserved;
      var0 = v33->var0;
      v32 = y;
      v30 = x;
      if (!reserved)
      {
        reserved = [(NSTypesetter *)self _getAuxData];
      }
    }

    v34 = [(NSTypesetter *)self textContainers];
    v35 = [(NSTypesetter *)self currentTextContainer];
    v161 = *(var0 + 10);
    v163 = *(var0 + 11);
    v154 = *(var0 + 9);
    v36 = *MEMORY[0x1E696AA80];
    v151 = *(MEMORY[0x1E696AA80] + 8);
    v38 = *(MEMORY[0x1E696AA80] + 16);
    v37 = *(MEMORY[0x1E696AA80] + 24);
    v145 = v34;
    v149 = [(NSArray *)v34 count];
    if (v35)
    {
      v146 = v36;
      v147 = v37;
      v148 = v38;
      v144 = 0;
      v166 = height + v155;
      v39 = height + v155 + paragraphSpacingAfter + v150;
      v139 = startingGlyphIndex - 1;
      v138 = *MEMORY[0x1E695D930];
      v142 = *(MEMORY[0x1E696AA78] + 8);
      v143 = *MEMORY[0x1E696AA78];
      v40 = &off_18E856000;
      v41 = v150;
      v162 = paragraphSpacingAfter;
      v165 = var0;
      v156 = remainingRect;
      v157 = startingGlyphIndex;
      while (2)
      {
        while (1)
        {
          v158 = v35;
          v152 = v41;
LABEL_11:
          for (i = v41; ; i = v99 - v32 - v166)
          {
            v167 = v39;
            if (NSIsEmptyRect(reserved->var13))
            {
              v42 = *(var0 + 6);
              v43 = [*(var0 + 12) textBlocks];
              v44 = [v43 count];
              v173[0] = 0uLL;
              [(NSTypesetter *)self lineFragmentPadding];
              dX = v45;
              v46 = *(v40 + 45);
              if (v43)
              {
                v47 = v44 == 0;
              }

              else
              {
                v47 = 1;
              }

              if (v47 || (v48 = reserved->var1.location, v48 >= [*var0 length]))
              {
                length = 0;
                v61 = 0;
                v72 = 0x7FFFFFFFFFFFFFFFLL;
                v60 = v46;
                v54 = v32;
                v59 = v32;
                v58 = v30;
              }

              else
              {
                v49 = [objc_msgSend(*var0 attribute:@"NSParagraphStyle" atIndex:reserved->var1.location effectiveRange:{0), "textBlocks"}];
                if (v49 && (v50 = v49, (v51 = [v49 count]) != 0) && (v52 = v51, v53 = reserved->var1.location, v53 < objc_msgSend(*var0, "length")))
                {
                  v54 = v32;
                  v55 = [v50 lastObject];
                  if (v55 == reserved->var16 && (location = reserved->var1.location, v72 = reserved->var15.location, v102 = location >= v72, v103 = location - v72, v102) && (length = reserved->var15.length, v103 < length))
                  {
                    v61 = v55;
                    v58 = reserved->var14.origin.x;
                    v59 = reserved->var14.origin.y;
                    v60 = reserved->var14.size.width;
                    v46 = reserved->var14.size.height;
                  }

                  else
                  {
                    v140 = lineFragmentRect;
                    v141 = lineFragmentUsedRect;
                    v56 = 0;
                    v57 = 0;
                    v46 = v163;
                    v58 = 0.0;
                    v59 = 0.0;
                    v60 = v161;
                    do
                    {
                      v61 = [v50 objectAtIndex:v56];
                      v174.origin.x = v58;
                      v174.origin.y = v59;
                      v174.size.width = v60;
                      v174.size.height = v46;
                      v175 = NSInsetRect(v174, dX, 0.0);
                      v159 = v175.origin.x;
                      v160 = v175.size.height;
                      v62 = v175.origin.y;
                      v63 = v175.size.width;
                      [v42 layoutRectForTextBlock:v61 atIndex:*(v165 + 1) effectiveRange:v173];
                      if (*(&v173[0] + 1) && (v68 = v64, v69 = v65, v70 = v66, v71 = v67, !NSIsEmptyRect(*&v64)))
                      {
                        v72 = [v42 characterRangeForGlyphRange:v173[0] actualGlyphRange:0];
                        length = v80;
                      }

                      else
                      {
                        v72 = [*v165 rangeOfTextBlock:v61 atIndex:reserved->var1.location];
                        length = v73;
                        *&v173[0] = [v42 glyphRangeForCharacterRange:v72 actualCharacterRange:{v73, 0}];
                        *(&v173[0] + 1) = v75;
                        [v61 rectForLayoutAtPoint:v158 inRect:v72 textContainer:length characterRange:{v30, v54, v159, v62, v63, v160}];
                        v68 = v76;
                        v69 = v77;
                        v70 = v78;
                        v71 = v79;
                        [v42 setLayoutRect:v61 forTextBlock:v173[0] glyphRange:?];
                        v57 |= reserved->var1.location == v72;
                      }

                      v176.origin.x = v68;
                      v176.origin.y = v69;
                      v176.size.width = v70;
                      v176.size.height = v71;
                      v177 = NSInsetRect(v176, -dX, 0.0);
                      v58 = v177.origin.x;
                      v59 = v177.origin.y;
                      v60 = v177.size.width;
                      v46 = v177.size.height;
                      if (v57)
                      {
                        v30 = v177.origin.x;
                        v54 = v177.origin.y;
                      }

                      ++v56;
                    }

                    while (v52 != v56);
                    lineFragmentRect = v140;
                    lineFragmentUsedRect = v141;
                  }
                }

                else
                {
                  length = 0;
                  v61 = 0;
                  v72 = 0x7FFFFFFFFFFFFFFFLL;
                  v60 = v46;
                  v54 = v32;
                  v59 = v32;
                  v58 = v30;
                }

                v35 = v158;
              }

              reserved->var13.origin.x = v58;
              reserved->var13.origin.y = v59;
              reserved->var13.size.width = v60;
              reserved->var13.size.height = v46;
              reserved->var14.origin.x = v58;
              reserved->var14.origin.y = v59;
              reserved->var14.size.width = v60;
              reserved->var14.size.height = v46;
              reserved->var15.location = v72;
              reserved->var15.length = length;
              reserved->var16 = v61;
              var0 = v165;
              remainingRect = v156;
              startingGlyphIndex = v157;
              v40 = &off_18E856000;
            }

            else
            {
              v54 = v32;
              v58 = reserved->var13.origin.x;
              v59 = reserved->var13.origin.y;
              v60 = reserved->var13.size.width;
              v46 = reserved->var13.size.height;
            }

            v178.origin.x = v58;
            v178.origin.y = v59;
            v178.size.width = v60;
            v178.size.height = v46;
            if (NSIsEmptyRect(v178))
            {
              v81 = v169;
              v32 = v54;
              v82 = v30;
              v83 = v167;
            }

            else
            {
              v84 = reserved->var13.size.width;
              v81 = v169;
              v32 = v54;
              v82 = v30;
              v83 = v167;
              if (v84 < *(v40 + 45))
              {
                v85 = reserved->var13.origin.x;
                v86 = reserved->var13.origin.y;
                if (v30 >= v85)
                {
                  v87 = v30;
                }

                else
                {
                  v87 = reserved->var13.origin.x;
                }

                if (v54 >= v86)
                {
                  v88 = v54;
                }

                else
                {
                  v88 = reserved->var13.origin.y;
                }

                v89 = reserved->var13.size.height;
                v90 = v169;
                v91 = v167;
                v179 = NSIntersectionRect(*&v87, *(&v84 - 2));
                v82 = v179.origin.x;
                v32 = v179.origin.y;
                v81 = v179.size.width;
                v83 = v179.size.height;
              }
            }

            v30 = v82;
            v169 = v81;
            v92 = v83;
            [(NSTextContainer *)v35 lineFragmentRectForProposedRect:[(NSTypesetter *)self characterRangeForGlyphRange:startingGlyphIndex actualGlyphRange:1 atIndex:0] writingDirection:[(NSTypesetter *)self _baseWritingDirection] remainingRect:remainingRect, v82, v32, v81, v83];
            v38 = v95;
            v37 = v96;
            if (v96 != 0.0 && v95 != 0.0)
            {
              v134 = 0;
              v97 = v94;
              v36 = v93;
              goto LABEL_110;
            }

            v97 = v94;
            v36 = v93;
            [(NSTextContainer *)v35 size];
            v100 = *(v40 + 45);
            if (v98 <= 0.0)
            {
              v98 = *(v40 + 45);
            }

            v161 = v98;
            if (v99 <= 0.0)
            {
              v99 = *(v40 + 45);
            }

            v163 = v99;
            if (v38 == 0.0 || v166 + v32 > v99)
            {
              break;
            }

            if (v162 > 0.0)
            {
              v104 = v32 + v92 - v162;
              v105 = v99;
              v106 = v99 - v32;
              v107 = v105 - v104;
              v108 = v92 - v162;
              v109 = v104 < v105;
              v110 = 0.0;
              if (v109)
              {
                v110 = v107;
              }

              v162 = v110;
              if (v109)
              {
                v39 = v106;
              }

              else
              {
                v39 = v108;
              }

              v41 = v152;
              goto LABEL_11;
            }

            if (i <= 0.0)
            {
              break;
            }

            v39 = v99 - v32;
          }

          if (NSIsEmptyRect(reserved->var13) || reserved->var13.size.width >= v100)
          {
            goto LABEL_92;
          }

          v111 = *(var0 + 6);
          v112 = [*(var0 + 12) textBlocks];
          [v112 count];
          v173[0] = xmmword_18E856180;
          v171 = 0;
          v172 = 0;
          if (!v112)
          {
            goto LABEL_91;
          }

          v113 = [v112 count];
          if (!v113)
          {
            goto LABEL_91;
          }

          v114 = v113;
          v115 = reserved->var1.location;
          if (v115 >= [*v165 length])
          {
            goto LABEL_91;
          }

          v116 = [objc_msgSend(*v165 attribute:@"NSParagraphStyle" atIndex:reserved->var1.location effectiveRange:{0), "textBlocks"}];
          if (!v116)
          {
            goto LABEL_91;
          }

          v117 = v116;
          v118 = reserved->var1.location;
          if (v118 >= [*v165 length])
          {
            goto LABEL_91;
          }

          v119 = [v117 objectAtIndex:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v120 = [*v165 _rangeOfTextTableRow:objc_msgSend(v119 atIndex:{"table"), reserved->var1.location}];
            *&v173[0] = [v111 glyphRangeForCharacterRange:v120 actualCharacterRange:{v121, 0}];
            *(&v173[0] + 1) = v122;
          }

          else
          {
            v122 = *(&v173[0] + 1);
          }

          if (v122)
          {
            v123 = 1;
            var0 = v165;
          }

          else
          {
            var0 = v165;
            [v111 layoutRectForTextBlock:v119 atIndex:*(v165 + 1) effectiveRange:v173];
            if (*(&v173[0] + 1))
            {
              v123 = 1;
            }

            else
            {
              v124 = [*v165 rangeOfTextBlock:v119 atIndex:reserved->var1.location];
              *&v173[0] = [v111 glyphRangeForCharacterRange:v124 actualCharacterRange:{v125, 0}];
              *(&v173[0] + 1) = v126;
              v123 = v126 != 0;
            }
          }

          if (*&v173[0] < v157 && *&v173[0] && v123)
          {
            v170[0] = 0;
            v170[1] = 0;
            v37 = v147;
            v38 = v148;
            v36 = v146;
            v97 = v151;
            if (![v111 textContainerForGlyphAtIndex:v139 effectiveRange:v170 withoutAdditionalLayout:1] || v170[0] != *&v173[0])
            {
              os_unfair_lock_lock_with_options();
              Mutable = _NSTypesetterTextBlockRetriesDict;
              if (!_NSTypesetterTextBlockRetriesDict)
              {
                Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
                _NSTypesetterTextBlockRetriesDict = Mutable;
              }

              v136 = *&v173[0];
              Value = CFDictionaryGetValue(Mutable, v111);
              CFDictionarySetValue(_NSTypesetterTextBlockRetriesDict, v111, *&v173[0]);
              os_unfair_lock_unlock(&_NSTypesetterTextBlockRetriesDictLock);
              if (v136 == Value)
              {
                [MEMORY[0x1E695DF30] raise:v138 format:{@"*** block retry failed at %ld for layout manager %p", *&v173[0], v111}];
              }
            }

            v35 = 0;
            goto LABEL_106;
          }

          for (j = 0; j != v114; ++j)
          {
            v128 = [v117 objectAtIndex:j];
            [v111 layoutRectForTextBlock:v128 atIndex:*(v165 + 1) effectiveRange:&v171];
            if (v172)
            {
              [v111 setLayoutRect:v128 forTextBlock:v171 glyphRange:{v146, v151, v148, v147}];
            }

            [v111 boundsRectForTextBlock:v128 atIndex:*(v165 + 1) effectiveRange:&v171];
            if (v172)
            {
              [v111 setBoundsRect:v128 forTextBlock:v171 glyphRange:{v146, v151, v148, v147}];
            }
          }

LABEL_91:
          var0 = v165;
          remainingRect = v156;
          startingGlyphIndex = v157;
          v40 = &off_18E856000;
LABEL_92:
          if (v32 == 0.0 && v92 > v163)
          {
            v39 = v163;
            v41 = i;
            continue;
          }

          v102 = v154 + 1 >= v149;
          v41 = i;
          ++v154;
          if (v102)
          {
            break;
          }

          v35 = [(NSArray *)v145 objectAtIndex:v163];
          [(NSTextContainer *)v35 size];
          if (v129 <= 0.0)
          {
            v129 = v100;
          }

          v161 = v129;
          if (v130 <= 0.0)
          {
            v131 = v100;
          }

          else
          {
            v131 = v130;
          }

          v163 = v131;
          v41 = v150;
          v132 = *MEMORY[0x1E696AA80];
          v133 = *(MEMORY[0x1E696AA80] + 16);
          reserved->var13.origin = *MEMORY[0x1E696AA80];
          reserved->var13.size = v133;
          v39 = v166 - v155 + v150 + v153;
          reserved->var14.origin = v132;
          reserved->var14.size = v133;
          reserved->var15.length = 0;
          reserved->var16 = 0;
          reserved->var15.location = 0x7FFFFFFFFFFFFFFFLL;
          v155 = 0.0;
          v162 = v153;
          v32 = v142;
          v30 = v143;
          if (!v35)
          {
LABEL_106:
            v134 = 1;
            goto LABEL_110;
          }
        }

        v134 = 1;
        if (!((i <= 0.0) | v144 & 1) && v92 > i)
        {
          v39 = v92 - i;
          v144 = 1;
          continue;
        }

        break;
      }

      v35 = 0;
      v37 = v147;
      v38 = v148;
      v36 = v146;
    }

    else
    {
      v134 = 1;
      v162 = paragraphSpacingAfter;
    }

    v97 = v151;
LABEL_110:
    lineFragmentRect->origin.x = v36;
    lineFragmentRect->origin.y = v97;
    lineFragmentRect->size.width = v38;
    lineFragmentRect->size.height = v37;
    if (lineFragmentUsedRect)
    {
      v180.origin.x = v36;
      v180.origin.y = v97;
      v180.size.width = v38;
      v180.size.height = v37;
      if (!NSIsEmptyRect(v180))
      {
        lineFragmentUsedRect->origin.x = v36;
        lineFragmentUsedRect->origin.y = v155 + v97;
        lineFragmentUsedRect->size.width = v38;
        lineFragmentUsedRect->size.height = v37 - (v162 + v155);
      }
    }

    if (v35 != *(var0 + 8))
    {
      *(var0 + 8) = v35;
      if ((v134 & 1) == 0)
      {
        *(var0 + 10) = v161;
        *(var0 + 11) = v163;
        *(var0 + 9) = v154;
        [(NSTextContainer *)v35 lineFragmentPadding];
        [(NSTypesetter *)self setLineFragmentPadding:?];
      }
    }
  }
}

- (void)setLineFragmentRect:(NSRect)fragmentRect forGlyphRange:(NSRange)glyphRange usedRect:(NSRect)usedRect baselineOffset:(CGFloat)baselineOffset
{
  height = usedRect.size.height;
  width = usedRect.size.width;
  y = usedRect.origin.y;
  x = usedRect.origin.x;
  length = glyphRange.length;
  location = glyphRange.location;
  v11 = fragmentRect.size.height;
  v12 = fragmentRect.size.width;
  v13 = fragmentRect.origin.y;
  v14 = fragmentRect.origin.x;
  reserved = self->_reserved;
  if (reserved)
  {
    v17 = *(reserved->var0 + 6);
  }

  else
  {
    v18 = [(NSTypesetter *)self _getAuxData];
    reserved = self->_reserved;
    v17 = *(v18->var0 + 6);
    if (!reserved)
    {
      reserved = [(NSTypesetter *)self _getAuxData];
    }
  }

  reserved->var17 = baselineOffset;
  [v17 setTextContainer:-[NSTypesetter currentTextContainer](self forGlyphRange:{"currentTextContainer"), location, length}];

  [v17 setLineFragmentRect:location forGlyphRange:length usedRect:v14 baselineOffset:{v13, v12, v11, x, y, width, height}];
}

- (void)substituteGlyphsInRange:(NSRange)glyphRange withGlyphs:(NSGlyph *)glyphs
{
  length = glyphRange.length;
  location = glyphRange.location;
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  if (length >= 1)
  {
    v9 = *(reserved->var0 + 6);
    v10 = &glyphs[length];
    do
    {
      v11 = *glyphs++;
      [v9 replaceGlyphAtIndex:location++ withGlyph:v11];
    }

    while (glyphs < v10);
  }
}

- (void)insertGlyph:(NSGlyph)glyph atGlyphIndex:(NSUInteger)glyphIndex characterIndex:(NSUInteger)characterIndex
{
  v7 = *&glyph;
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  [*(reserved->var0 + 6) insertGlyph:v7 atGlyphIndex:glyphIndex characterIndex:characterIndex];
  v10 = self->_reserved;
  if (!v10)
  {
    v10 = [(NSTypesetter *)self _getAuxData];
  }

  *&v10->var19 &= ~0x40000u;
}

- (void)deleteGlyphsInRange:(NSRange)glyphRange
{
  length = glyphRange.length;
  location = glyphRange.location;
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  [*(reserved->var0 + 6) deleteGlyphsInRange:{location, length}];
  v7 = self->_reserved;
  if (!v7)
  {
    v7 = [(NSTypesetter *)self _getAuxData];
  }

  *&v7->var19 &= ~0x40000u;
}

- (void)setNotShownAttribute:(BOOL)flag forGlyphRange:(NSRange)glyphRange
{
  length = glyphRange.length;
  location = glyphRange.location;
  v6 = flag;
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  v9 = *(reserved->var0 + 6);
  if (v9)
  {
    v10 = self->_reserved;
    if (!v10)
    {
      v10 = [(NSTypesetter *)self _getAuxData];
    }

    if (v10->var5)
    {
      var5 = v10->var5;
    }

    else
    {
      var5 = __NSDefaultNotShownIMP;
    }

    if (location < location + length)
    {
      do
      {
        var5(v9, sel_setNotShownAttribute_forGlyphAtIndex_, v6, location++);
        --length;
      }

      while (length);
    }
  }
}

- (void)setDrawsOutsideLineFragment:(BOOL)flag forGlyphRange:(NSRange)glyphRange
{
  length = glyphRange.length;
  location = glyphRange.location;
  v6 = flag;
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  v9 = *(reserved->var0 + 6);
  if (v9)
  {
    v10 = self->_reserved;
    if (!v10)
    {
      v10 = [(NSTypesetter *)self _getAuxData];
    }

    if (v10->var6)
    {
      var6 = v10->var6;
    }

    else
    {
      var6 = __NSDefaultDrawsOutsideIMP;
    }

    if (location < location + length)
    {
      do
      {
        var6(v9, sel_setDrawsOutsideLineFragment_forGlyphAtIndex_, v6, location++);
        --length;
      }

      while (length);
    }
  }
}

- (void)setLocation:(NSPoint)location withAdvancements:(const CGFloat *)advancements forStartOfGlyphRange:(NSRange)glyphRange
{
  if (glyphRange.length)
  {
    length = glyphRange.length;
    v6 = glyphRange.location;
    y = location.y;
    x = location.x;
    reserved = self->_reserved;
    if (reserved)
    {
      v11 = *(reserved->var0 + 6);
    }

    else
    {
      v12 = [(NSTypesetter *)self _getAuxData];
      reserved = self->_reserved;
      v11 = *(v12->var0 + 6);
      if (!reserved)
      {
        reserved = [(NSTypesetter *)self _getAuxData];
      }
    }

    v13 = reserved->var17 - y;

    [v11 setLocation:v6 forStartOfGlyphRange:{length, x, v13}];
  }
}

- (void)setAttachmentSize:(NSSize)attachmentSize forGlyphRange:(NSRange)glyphRange
{
  if (glyphRange.length)
  {
    length = glyphRange.length;
    location = glyphRange.location;
    height = attachmentSize.height;
    width = attachmentSize.width;
    reserved = self->_reserved;
    if (!reserved)
    {
      reserved = [(NSTypesetter *)self _getAuxData];
    }

    v9 = *(reserved->var0 + 6);

    [v9 setAttachmentSize:location forGlyphRange:{length, width, height}];
  }
}

- (void)setBidiLevels:(const uint8_t *)levels forGlyphRange:(NSRange)glyphRange
{
  length = glyphRange.length;
  location = glyphRange.location;
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  if (length >= 1)
  {
    v9 = *(reserved->var0 + 6);
    v10 = &levels[length];
    do
    {
      v11 = *levels++;
      [v9 setIntAttribute:2 value:v11 forGlyphAtIndex:location++];
    }

    while (levels < v10);
  }
}

- (NSUInteger)layoutParagraphAtPoint:(NSPointPointer)lineFragmentOrigin
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  reserved = self->_reserved;
  if (!reserved)
  {
    reserved = [(NSTypesetter *)self _getAuxData];
  }

  return *(reserved->var0 + 1);
}

@end