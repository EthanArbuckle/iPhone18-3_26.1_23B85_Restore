@interface NSATSTypesetter
+ (NSATSTypesetter)sharedInstance;
+ (void)initialize;
- ($0177D170777CFC227CB001A659B5CD18)_allocateAuxData;
- ($500F09A0A86A1DC0979241A7D72823DF)_lineFragmentRectForProposedRectArgs;
- (BOOL)_baselineRenderingMode;
- (BOOL)_forceWordWrapping;
- (BOOL)_isBusy;
- (BOOL)_layoutLineFragmentStartingWithGlyphAtIndex:(unint64_t *)a3 characterIndex:(unint64_t *)a4 atPoint:(CGPoint *)a5 renderingContext:(id *)a6;
- (BOOL)_mirrorsTextAlignment;
- (BOOL)limitsLayoutForSuspiciousContents;
- (BOOL)shouldBreakLineByHyphenatingBeforeCharacterAtIndex:(NSUInteger)charIndex;
- (BOOL)shouldBreakLineByWordBeforeCharacterAtIndex:(NSUInteger)charIndex;
- (BOOL)synchronizesAlignmentToDirection;
- (NSATSGlyphStorage)_ctTypesetter;
- (NSATSTypesetter)init;
- (NSRect)boundingBoxForControlGlyphAtIndex:(NSUInteger)glyphIndex forTextContainer:(NSTextContainer *)textContainer proposedLineFragment:(NSRect)proposedRect glyphPosition:(NSPoint)glyphPosition characterIndex:(NSUInteger)charIndex;
- (NSRect)lineFragmentRectForProposedRect:(NSRect)proposedRect remainingRect:(NSRectPointer)remainingRect;
- (NSUInteger)layoutParagraphAtPoint:(NSPoint *)lineFragmentOrigin;
- (_DWORD)_doBidiProcessing;
- (_DWORD)init;
- (_NSRange)layoutCharactersInRange:(_NSRange)a3 forLayoutManager:(id)a4 maximumNumberOfLineFragments:(unint64_t)a5;
- (__CTTypesetter)_ctTypesetter;
- (const)_bidiLevels;
- (double)baselineOffsetInLayoutManager:(id)a3 glyphIndex:(unint64_t)a4;
- (double)defaultTighteningFactor;
- (float)hyphenationFactorForGlyphAtIndex:(NSUInteger)glyphIndex;
- (id)_getATSTypesetterGuts;
- (int64_t)_baseWritingDirection;
- (unint64_t)actionForControlCharacterAtIndex:(unint64_t)a3;
- (unint64_t)lineBreakStrategy;
- (void)_doBidiProcessing;
- (void)_flushCachedObjects;
- (void)_setBaselineRenderingMode:(BOOL)a3;
- (void)_setBusy:(BOOL)a3;
- (void)_setForceWordWrapping:(BOOL)a3;
- (void)beginLineWithGlyphAtIndex:(unint64_t)a3;
- (void)beginParagraph;
- (void)dealloc;
- (void)endLineWithGlyphRange:(_NSRange)a3;
- (void)endParagraph;
- (void)layoutGlyphsInLayoutManager:(id)a3 startingAtGlyphIndex:(unint64_t)a4 maxNumberOfLineFragments:(unint64_t)a5 nextGlyphIndex:(unint64_t *)a6;
- (void)setDefaultTighteningFactor:(double)a3;
- (void)setLimitsLayoutForSuspiciousContents:(BOOL)a3;
- (void)setLineBreakStrategy:(unint64_t)a3;
@end

@implementation NSATSTypesetter

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    qword_1ED4DF2D8 = objc_opt_class();
    __NSRaiseWithRecursiveLayoutRequest = [v5 BOOLForKey:@"_NSRaiseWithRecursiveLayoutRequest"];
    _MergedGlobals_1 = [v5 BOOLForKey:@"_NSAllowsScreenFontKerning"];
    __NSATSTypesetterSharedInstance = [objc_allocWithZone(NSATSTypesetter) init];
  }

  else if (!qword_1ED4DF2D0 && objc_opt_class() != qword_1ED4DF2D8)
  {
    v3 = [qword_1ED4DF2D8 instanceMethodForSelector:sel_lineFragmentRectForProposedRect_remainingRect_];
    if ([objc_opt_class() instanceMethodForSelector:sel_lineFragmentRectForProposedRect_remainingRect_] != v3)
    {
      v4 = objc_opt_class();
      NSLog(@"Detected an NSATSTypesetter subclass %@ implementing a deprecated interface, -lineFragmentRectForProposedRect:remainingRect:.  NSATSTypesetter is running in backward compatibility mode.  Developers are recommended to use -getLineFragmentRect:usedRect:remainingRect:forStartingGlyphAtIndex:proposedRect:lineSpacing:paragraphSpacingBefore:paragraphSpacingAfter: instead.", v4);
      qword_1ED4DF2D0 = v3;
    }
  }
}

- (NSATSTypesetter)init
{
  v5.receiver = self;
  v5.super_class = NSATSTypesetter;
  v2 = [(NSATSTypesetter *)&v5 init];
  v3 = v2;
  if (v2 && !v2->_private)
  {
    [(NSATSTypesetter *)v2 init];
  }

  return v3;
}

- (_DWORD)init
{
  result = -[_NSATSTypesetterGuts initWithTypesetter:](+[_NSATSTypesetterGuts allocWithZone:](_NSATSTypesetterGuts, "allocWithZone:", [a1 zone]), a1);
  a1[16] = result;
  return result;
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
  result->var0 = &self->attributedString;
  return result;
}

- (void)beginParagraph
{
  v3 = self->_private;
  if (!v3)
  {
    [NSATSTypesetter _doBidiProcessing];
    v3 = v6;
  }

  v5.receiver = self;
  v5.super_class = NSATSTypesetter;
  [(NSTypesetter *)&v5 beginParagraph];
  *(v3 + 22) = 0;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  v4 = *(v3 + 12);
  if (v4)
  {
    CFRelease(v4);
    *(v3 + 12) = 0;
  }

  if (*(v3 + 7))
  {
    NSZoneFree([(NSATSTypesetter *)self zone], *(v3 + 7));
    *(v3 + 7) = 0;
  }

  if ((*(*(v3 + 5) + 217) & 0x70) == 0 && [(NSAttributedString *)self->attributedString _isStringDrawingTextStorage])
  {
    if ([(NSAttributedString *)self->attributedString _baselineMode])
    {
      *(*(v3 + 5) + 216) = *(*(v3 + 5) + 216) & 0xFFFF87FF | 0x1000;
    }
  }
}

- (int64_t)_baseWritingDirection
{
  v3 = self->_private;
  if (!v3)
  {
    [NSATSTypesetter _doBidiProcessing];
    v3 = v6;
  }

  v4 = v3[22] & 3;
  if (!v4)
  {
    [(NSATSTypesetter *)self _doBidiProcessing];
    v4 = v3[22] & 3;
  }

  return v4 - 1;
}

- (void)_doBidiProcessing
{
  v3 = self->_private;
  if (!v3)
  {
    [NSATSTypesetter _doBidiProcessing];
    v3 = v23;
  }

  v4 = [(NSTypesetter *)self applicationFrameworkContext];
  if (![(NSTypesetter *)self bidiProcessingEnabled])
  {
    v15 = 0;
    v10 = NSWritingDirectionLeftToRight;
    goto LABEL_28;
  }

  v5 = [(NSATSTypesetter *)self zone];
  v6 = [NSParagraphStyle defaultWritingDirectionForLanguage:0];
  v7 = v6;
  v8 = *(v3[5] + 216);
  v9 = (v8 >> 19) & 3;
  v10 = v9 - 1;
  if ((v8 & 0x8000) != 0 || v9 == 2 || (!v9 ? (v11 = v6 == NSWritingDirectionRightToLeft) : (v11 = 0), v11))
  {
    [(NSTypesetter *)self paragraphCharacterRange];
    if (v12)
    {
      v13 = v12;
      v14 = +[(NSTextContentManager *)NSTextContentStorage];
      if (v9)
      {
        v15 = NSZoneMalloc(v5, v13);
        v16 = 0;
      }

      else
      {
        v17 = v14;
        v18 = malloc_type_calloc(v13, 1uLL, 0x100004077774924uLL);
        v16 = v18;
        if (v4 == 2)
        {
          v19 = v7;
        }

        else
        {
          v19 = 0;
        }

        memset(v18, v19, v13);
        v15 = NSZoneMalloc(v5, v13);
        if (v17 == 2)
        {
          if (CFAttributedStringGetStatisticalWritingDirections())
          {
LABEL_24:
            if (v16)
            {
              v10 = *v16;
              free(v16);
            }

            goto LABEL_26;
          }

LABEL_23:
          NSZoneFree(v5, v15);
          v15 = 0;
          goto LABEL_24;
        }
      }

      if (CFAttributedStringGetBidiLevelsAndResolvedDirections())
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  v15 = 0;
LABEL_26:
  if (v10 == NSWritingDirectionNatural)
  {
    v10 = v7;
  }

LABEL_28:
  *(v3 + 22) = v3[11] & 0xFFFFFFFC | (v10 + 1) & 3;
  v3[7] = v15;
  v20 = [(NSParagraphStyle *)self->currentParagraphStyle alignment];
  if ([(NSATSTypesetter *)self _mirrorsTextAlignment])
  {
    if (v20 == NSTextAlignmentRight)
    {
      v21 = v3[5];
      v22 = *(v21 + 216) & 0xFFFFF87F;
      goto LABEL_37;
    }

    if (v20 == NSTextAlignmentLeft)
    {
      v21 = v3[5];
      v22 = *(v21 + 216) & 0xFFFFF87F | 0x100;
LABEL_37:
      *(v21 + 216) = v22;

      [(NSATSTypesetter *)self synchronizesAlignmentToDirection];
      return;
    }
  }

  if ([(NSATSTypesetter *)self synchronizesAlignmentToDirection]&& v20 == NSTextAlignmentNatural)
  {
    *(v3[5] + 216) = *(v3[5] + 216) & 0xFFFFF87F | ((v10 == NSWritingDirectionRightToLeft) << 8);
  }
}

- (BOOL)_baselineRenderingMode
{
  v2 = self->_private;
  if (!v2)
  {
    [NSATSTypesetter _doBidiProcessing];
    v2 = v5;
  }

  return (v2[84] >> 3) & 1;
}

- (__CTTypesetter)_ctTypesetter
{
  v3 = self->_private;
  if (!v3)
  {
    [NSATSTypesetter _doBidiProcessing];
    v3 = v5;
  }

  result = v3->_numRuns;
  if (!result)
  {
    [(NSTypesetter *)self paragraphCharacterRange];
    if (!v3->super._glyphs)
    {
      [(NSATSTypesetter *)self _ctTypesetter];
    }

    [NSATSGlyphStorage setGlyphRange:characterRange:];
    result = [(NSATSGlyphStorage *)v3->super._glyphs createCTTypesetter];
    v3->_numRuns = result;
  }

  return result;
}

- (id)_getATSTypesetterGuts
{
  v2 = self->_private;
  if (!v2)
  {
    [NSATSTypesetter _doBidiProcessing];
    return v4;
  }

  return v2;
}

- (NSATSGlyphStorage)_ctTypesetter
{
  result = [NSATSGlyphStorage allocWithZone:[(NSATSTypesetter *)a1 zone]];
  if (result)
  {
    v7.receiver = result;
    v7.super_class = NSATSGlyphStorage;
    result = [(NSATSTypesetter *)&v7 init];
    if (result)
    {
      result->_typesetter = a1;
    }
  }

  *a3 = result;
  *a2 = result;
  return result;
}

- (const)_bidiLevels
{
  v3 = self->_private;
  if (!v3)
  {
    [NSATSTypesetter _doBidiProcessing];
    v3 = v5;
  }

  if ((*(v3 + 88) & 3) == 0)
  {
    [(NSATSTypesetter *)self _doBidiProcessing];
  }

  return *(v3 + 7);
}

- (BOOL)limitsLayoutForSuspiciousContents
{
  v2 = self->_private;
  if (!v2)
  {
    [NSATSTypesetter _doBidiProcessing];
    v2 = v5;
  }

  return (v2[84] >> 2) & 1;
}

- (double)defaultTighteningFactor
{
  v2 = self->_private;
  if (!v2)
  {
    [NSATSTypesetter _doBidiProcessing];
    v2 = v4;
  }

  return v2[8];
}

- (void)endParagraph
{
  v3 = self->_private;
  if (!v3)
  {
    v3 = [[_NSATSTypesetterGuts allocWithZone:?], self];
    self->_private = v3;
  }

  v7.receiver = self;
  v7.super_class = NSATSTypesetter;
  [(NSTypesetter *)&v7 endParagraph];
  v4 = v3[12];
  if (v4)
  {
    CFRelease(v4);
    v3[12] = 0;
  }

  if (v3[7])
  {
    NSZoneFree([(NSATSTypesetter *)self zone], v3[7]);
    v3[7] = 0;
  }

  v5 = v3[1];
  if (v5)
  {
    v5[26] = 0;
    v6 = *(v5 + 1);
    if (v6)
    {
      CFRelease(v6);
      *(v5 + 1) = 0;
    }
  }

  [(NSATSGlyphStorage *)v3[2] _invalidate];
  if ((*(v3[5] + 54) & 0x7800) == 0x1000 && [(NSAttributedString *)self->attributedString _isStringDrawingTextStorage])
  {
    if ([(NSAttributedString *)self->attributedString _baselineMode])
    {
      *(v3[5] + 54) = *(v3[5] + 54) & 0xFFFF87FF | (([(NSParagraphStyle *)self->currentParagraphStyle lineBreakMode]& 0xF) << 11);
    }
  }
}

- (void)_flushCachedObjects
{
  v2 = self->_private;
  if (!v2)
  {
    [NSATSTypesetter _doBidiProcessing];
    v2 = v4;
  }

  v3 = *(v2 + 2);

  [(NSATSGlyphStorage *)v3 _flushCachedObjects];
}

- (_DWORD)_doBidiProcessing
{
  OUTLINED_FUNCTION_3_0();
  v3 = OUTLINED_FUNCTION_11_0([v2 zone]);
  result = [(_NSATSTypesetterGuts *)v3 initWithTypesetter:v1];
  *v0 = result;
  v1[16] = result;
  return result;
}

+ (NSATSTypesetter)sharedInstance
{
  v2 = objc_opt_class();
  if (v2 != objc_opt_class())
  {
    NSRequestConcreteImplementation();
  }

  return __NSATSTypesetterSharedInstance;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSATSTypesetter;
  [(NSTypesetter *)&v3 dealloc];
}

- (void)_setBaselineRenderingMode:(BOOL)a3
{
  v3 = a3;
  v4 = self->_private;
  if (!v4)
  {
    [NSATSTypesetter _doBidiProcessing];
    v4 = v6;
  }

  if (v3)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v4[21] = v4[21] & 0xFFFFFFF7 | v5;
}

- (BOOL)_forceWordWrapping
{
  v2 = self->_private;
  if (!v2)
  {
    [NSATSTypesetter _doBidiProcessing];
    v2 = v5;
  }

  return (v2[84] >> 4) & 1;
}

- (void)_setForceWordWrapping:(BOOL)a3
{
  v3 = a3;
  v4 = self->_private;
  if (!v4)
  {
    [NSATSTypesetter _doBidiProcessing];
    v4 = v6;
  }

  if (v3)
  {
    v5 = 16;
  }

  else
  {
    v5 = 0;
  }

  v4[21] = v4[21] & 0xFFFFFFEF | v5;
}

- (BOOL)_layoutLineFragmentStartingWithGlyphAtIndex:(unint64_t *)a3 characterIndex:(unint64_t *)a4 atPoint:(CGPoint *)a5 renderingContext:(id *)a6
{
  typesetter = a6;
  x = *&self->_private;
  if (x == 0.0)
  {
    [NSATSTypesetter _doBidiProcessing];
    x = v233.origin.x;
  }

  v11 = [(NSAttributedString *)self->attributedString string];
  memset(&v233, 0, sizeof(v233));
  *v167 = *(MEMORY[0x1E696AA80] + 16);
  v170 = *MEMORY[0x1E696AA80];
  v231 = *MEMORY[0x1E696AA80];
  v232 = *v167;
  memset(&v230, 0, sizeof(v230));
  v156 = a3;
  v158 = a4;
  v12 = *a3;
  v228 = 0;
  v229 = 0;
  v13 = *a4;
  v14 = [(NSTypesetter *)self paragraphCharacterRange];
  v211 = v15;
  v214 = v14;
  v201 = [(NSTypesetter *)self paragraphSeparatorCharacterRange];
  v205 = v16;
  v17 = [(NSATSTypesetter *)self _baseWritingDirection];
  v192 = *&x;
  v196 = *(*(*&x + 40) + 216);
  v199 = v17;
  v207 = [(NSTypesetter *)self typesetterBehavior];
  v209 = v11;
  v226 = 0.0;
  v227 = 0.0;
  v224 = 0.0;
  v225 = 0.0;
  *&bRect = [(NSString *)v11 length];
  v18 = [(NSATSTypesetter *)self _baselineRenderingMode];
  y = a5->y;
  v217 = a5->x;
  theString = a5;
  v20 = [(NSAttributedString *)self->attributedString attributesAtIndex:v13 effectiveRange:0];
  v21 = [(NSTextContainer *)[(NSTypesetter *)self currentTextContainer] layoutOrientation];
  v22 = *&self->_private;
  if (v22 == 0.0)
  {
    [NSATSTypesetter _doBidiProcessing];
    v22 = v222.origin.x;
  }

  v23 = *(*&v22 + 40);
  v24 = [(NSTypesetter *)self typesetterBehavior];
  v25 = [(NSTypesetter *)self _forceOriginalFontBaseline];
  if (!v20)
  {
    goto LABEL_12;
  }

  if (!v25 || (v26 = [(NSDictionary *)v20 objectForKey:_NSOriginalFontAttributeName]) == 0)
  {
    v26 = [(NSDictionary *)v20 objectForKey:@"NSFont"];
  }

  if ([-[NSDictionary objectForKey:](v20 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
  {
    v26 = [v26 verticalFont];
  }

  if (!v26)
  {
LABEL_12:
    v26 = NSDefaultFont();
  }

  v27 = v26;
  if (v21)
  {
    v27 = [v26 verticalFont];
  }

  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  [v28 _defaultLineHeightForUILayout];
  v30 = v29 + 0.0;
  if (v12)
  {
    v31 = v196;
    if ([(NSTypesetter *)self usesFontLeading]|| CTFontIsSystemUIFont())
    {
      [v28 _leading];
      if (v32 < 0.0)
      {
        v30 = v30 + v32;
      }
    }
  }

  else
  {
    v31 = v196;
  }

  if (v24 >= NSTypesetterBehavior_10_3)
  {
    v33 = v23[13];
    if (v33 > 0.0)
    {
      v30 = v30 * v33;
    }
  }

  v34 = v23[11];
  v35 = v23[12];
  if (v30 >= v34)
  {
    v34 = v30;
  }

  if (v34 > v35 && v35 > 0.0)
  {
    v34 = v23[12];
  }

  v37 = v24 < NSTypesetterBehavior_10_2 || v18;
  HIDWORD(v188) = v18;
  if ((v37 & 1) == 0)
  {
    v38 = v23[8];
    v39 = v38 < 0.0;
    v40 = v34 + v38;
    if (v39)
    {
      v34 = v40;
    }
  }

  v152 = (v31 >> 7) & 0xF;
  v148 = 0x3F50624DD2F1A9FCLL;
  if (v34 <= 0.0)
  {
    v41 = 0.001;
  }

  else
  {
    v41 = v34;
  }

  v42 = [(NSAttributedString *)self->attributedString string];
  if (v13 < 1)
  {
    goto LABEL_56;
  }

  v43 = v42;
  if (v13 == 1)
  {
    v44 = 0;
  }

  else
  {
    v45 = [(NSString *)v42 characterAtIndex:v13 - 1];
    v44 = v13 - 1;
    if (v45 == 10)
    {
      if ([(NSString *)v43 characterAtIndex:v13 - 2]== 13)
      {
        v44 = v13 - 2;
      }

      else
      {
        v44 = v13 - 1;
      }
    }
  }

  v46 = [(NSATSTypesetter *)self actionForControlCharacterAtIndex:v44];
  if ((v46 & 0x10) != 0 || v207 <= NSTypesetterBehavior_10_3 && (v46 & 0x20) != 0)
  {
LABEL_56:
    v47 = 1;
  }

  else
  {
    v107 = [(NSTypesetter *)self attributedString];
    v222.origin = 0uLL;
    v108 = [(NSAttributedString *)v107 attribute:@"NSAttachment" atIndex:v13 - 1 effectiveRange:&v222];
    if (*&v222.origin.y + *&v222.origin.x > v13 || !v108)
    {
      if ([(NSString *)v43 length]<= v13)
      {
        v108 = 0;
      }

      else
      {
        v108 = [(NSAttributedString *)v107 attribute:@"NSAttachment" atIndex:v13 effectiveRange:&v222];
        if (*&v222.origin.y + *&v222.origin.x > v13)
        {
          v108 = 0;
        }
      }
    }

    v47 = [v108 embeddingType] == 1;
  }

  v194 = 0;
  v197 = 0;
  v224 = 0.0;
  v49 = v207 > NSTypesetterBehavior_10_3 && v199 == 1;
  HIDWORD(v186) = v47;
  LODWORD(v188) = v49;
  v50 = v207 > NSTypesetterBehavior_10_2 && v47;
  HIDWORD(v177) = v50;
  v175 = v214 + v211;
  v160 = v201 + v205 - 1;
  v162 = v214 + v211 + 1;
  *(&bRect + 1) = v201 + v205;
  v146 = v201 + v205 - 2;
  v51 = *MEMORY[0x1E696AA80];
  v52 = *(MEMORY[0x1E696AA80] + 8);
  v212 = *(MEMORY[0x1E696AA80] + 24);
  v215 = *(MEMORY[0x1E696AA80] + 16);
  v53 = 1;
  v54 = 10000000.0;
  *&v190 = 0.0;
  *&v202 = 0.0;
  v55 = 0.0;
  v56 = 0.0;
  v57 = 0.0;
  do
  {
    [(NSATSTypesetter *)self beginLineWithGlyphAtIndex:v12];
    currentTextContainerIndex = self->currentTextContainerIndex;
    currentTextContainer = self->currentTextContainer;
    currentTextContainerSize = self->currentTextContainerSize;
    [(NSTypesetter *)self getLineFragmentRect:&v233 usedRect:0 remainingRect:&v230 forStartingGlyphAtIndex:v12 proposedRect:v217 lineSpacing:y paragraphSpacingBefore:v54 paragraphSpacingAfter:v41, v57, v56, v55];
    if (v233.size.width != 0.0)
    {
      v66 = v233.size.width + self->lineFragmentPadding * -2.0;
      v179 = *&v52;
      v182 = *&v51;
      if (v188)
      {
        v67 = v192;
        v68 = *(v192 + 40);
        v69 = *(v68 + 80);
        if (v69 <= 0.0)
        {
          v70 = -v69;
        }

        else
        {
          v70 = v66 - v69;
        }

        if (HIDWORD(v186))
        {
          v71 = v233.size.width + self->lineFragmentPadding * -2.0;
          [(NSParagraphStyle *)self->currentParagraphStyle firstLineHeadIndent];
          v66 = v71;
        }

        else
        {
          v72 = *(v68 + 72);
        }

        v76 = v66 - v72;
        goto LABEL_96;
      }

      v67 = v192;
      if (v207 > NSTypesetterBehavior_10_2_WithCompatibility)
      {
        if (!HIDWORD(v186))
        {
          v73 = *(v192 + 40);
LABEL_93:
          v70 = *(v73 + 72);
LABEL_94:
          v76 = *(*(v192 + 40) + 80);
          if (v76 <= 0.0)
          {
            v76 = v66 + v76;
          }

LABEL_96:
          if (v76 <= v66)
          {
            v66 = 0.0;
            if (v76 >= 0.0)
            {
              v66 = v76;
            }
          }

          v79 = 0;
          if (v70 >= 0.0)
          {
            v79 = *&v70;
            if (v70 > v66)
            {
              v79 = *&v66;
            }
          }

          v80 = *(v67 + 8);
          v52 = *&v179;
          v51 = *&v182;
          v203 = v79;
          if (!v80)
          {
            v197 = *&v54;
            v81 = v66;
            v80 = [NSATSLineFragment allocWithZone:[(NSATSTypesetter *)self zone]];
            if (v80)
            {
              v80->_typesetter = self;
            }

            *(v67 + 8) = v80;
            v66 = v81;
            v52 = *&v179;
            v51 = *&v182;
          }

          [(NSATSLineFragment *)v80 layoutForStartingGlyphAtIndex:v60 characterIndex:v13 minPosition:v61 maxPosition:v62 lineFragmentRect:v63, v64, v65, v144, v146, v148, theString, v152, typesetter, v156, v158, v160, SWORD2(v160), HIWORD(v160), v162, WORD1(v162), SWORD2(v162), SBYTE6(v162), SHIBYTE(v162), bRect, v167[0], v167[1], v170, *(&v170 + 1), v173, v175, v177, v179, v182, v186, v188, *&v66, v192, v194, v197, v199, v203, v205, v207, v209, *&v212, *&v215];
          v86 = *(v67 + 8);
          if (v86)
          {
            v12 = v86[3];
            v87 = v86[4];
            v13 = v86[5];
            v88 = v86[6];
          }

          else
          {
            v12 = 0;
            v87 = 0;
            v88 = 0;
            v13 = 0;
          }

          [(NSATSLineFragment *)v86 getTypographicLineHeight:&v225 baselineOffset:&v224 leading:v82, v83, v84, v85, v145, v147, v149, theStringa, v153, typesettera, v157, v159, v161, v163, SHIDWORD(v163), bRecta, v166, v168, v169, v171, v172, v174, v176, v178, v180, v183, v187, v189, v191, v193, v195, v198, v200, v204, v206, v208, v210, v213, v216];
          *(&v231 + 1) = *&v233.origin.y;
          *(&v232 + 1) = *&v233.size.height;
          v194 = v88;
          v197 = v87;
          if ((v188 & 0x100000000) != 0)
          {
            goto LABEL_72;
          }

          if (v207 <= NSTypesetterBehavior_10_2_WithCompatibility)
          {
            v57 = v224;
          }

          else
          {
            v89 = *(*(v67 + 40) + 64);
            v57 = v224;
            if (v89 < 0.0)
            {
              v57 = v89 + v224;
              v224 = v57;
              if (v57 < 0.0)
              {
                if ((v186 & 0x100000000) == 0)
                {
                  v90 = v233.size.height + v57;
                  v233.size.height = v90;
                  v91 = v57 + v225;
                  v225 = v57 + v225;
                  if (v90 <= 0.0)
                  {
                    v225 = v91 - v90;
                    v233.size.height = 0.001;
                  }
                }

                v224 = 0.0;
                v57 = 0.0;
              }
            }
          }

          [(NSTypesetter *)self lineSpacingAfterGlyphAtIndex:v12 + v87 - 1 withProposedLineFragmentRect:v233.origin.x];
          if (v57 < v92)
          {
            v57 = v92;
          }

          v55 = 0.0;
          v56 = 0.0;
          if (HIDWORD(v177))
          {
            [(NSTypesetter *)self paragraphSpacingBeforeGlyphAtIndex:self->paragraphGlyphRange.location withProposedLineFragmentRect:*&v233.origin, *&v233.size];
            v56 = v93;
          }

          if (v205 && v13 + v88 >= v175)
          {
            if (*(v67 + 84))
            {
              [(NSATSTypesetter *)self paragraphSpacingAfterCharactersInRange:v13 withProposedLineFragmentRect:v162 - v13, *&v233.origin, *&v233.size];
LABEL_146:
              v55 = v95;
              goto LABEL_147;
            }

            if (*(&bRect + 1) <= bRect)
            {
              if (*(&bRect + 1) < 1)
              {
                goto LABEL_145;
              }

              if (*(&bRect + 1) == 1)
              {
                v94 = 0;
              }

              else
              {
                v96 = [(NSString *)v209 characterAtIndex:v160];
                v94 = v160;
                if (v96 == 10)
                {
                  if ([(NSString *)v209 characterAtIndex:v146]== 13)
                  {
                    v94 = v146;
                  }

                  else
                  {
                    v94 = v160;
                  }
                }
              }

              v97 = [(NSATSTypesetter *)self actionForControlCharacterAtIndex:v94];
              if ((v97 & 0x10) != 0 || v207 <= NSTypesetterBehavior_10_3 && (v97 & 0x20) != 0)
              {
                goto LABEL_145;
              }

              v98 = [(NSTypesetter *)self attributedString];
              v222.origin = 0uLL;
              v99 = [(NSAttributedString *)v98 attribute:@"NSAttachment" atIndex:v160 effectiveRange:&v222];
              if (*&v222.origin.y + *&v222.origin.x > *(&bRect + 1) || !v99)
              {
                if ([(NSString *)v209 length]<= *(&bRect + 1))
                {
                  v99 = 0;
                }

                else
                {
                  v99 = [NSAttributedString attribute:v98 atIndex:"attribute:atIndex:effectiveRange:" effectiveRange:@"NSAttachment"];
                  if (*&v222.origin.y + *&v222.origin.x > *(&bRect + 1))
                  {
                    v99 = 0;
                  }
                }
              }

              if ([v99 embeddingType] == 1)
              {
LABEL_145:
                [(NSTypesetter *)self paragraphSpacingAfterGlyphAtIndex:self->paragraphSeparatorGlyphRange.location + self->paragraphSeparatorGlyphRange.length - 1 withProposedLineFragmentRect:*&v233.origin, *&v233.size];
                goto LABEL_146;
              }
            }
          }

LABEL_147:
          if (v57 <= 0.0 && v56 <= 0.0 && v55 <= 0.0 && v233.size.height == v41)
          {
            goto LABEL_72;
          }

          v220 = 0u;
          v221 = 0u;
          memset(&v219, 0, sizeof(v219));
          lineFragmentPadding = self->lineFragmentPadding;
          v101.y = v233.origin.y;
          v222.size.height = v233.size.height;
          v101.x = v217;
          v222.origin = v101;
          v222.size.width = v54;
          [NSTypesetter getLineFragmentRect:"getLineFragmentRect:usedRect:remainingRect:forStartingGlyphAtIndex:proposedRect:lineSpacing:paragraphSpacingBefore:paragraphSpacingAfter:" usedRect:&v222 remainingRect:&v220 forStartingGlyphAtIndex:&v219 proposedRect:v12 lineSpacing:? paragraphSpacingBefore:? paragraphSpacingAfter:?];
          height = v222.size.height;
          if (v222.size.width != 0.0 && v222.size.height != 0.0 && v233.size.width == v222.size.width && lineFragmentPadding == self->lineFragmentPadding)
          {
            v233 = v222;
            *(&v231 + 1) = *(&v220 + 1);
            *(&v232 + 1) = *(&v221 + 1);
            v230 = v219;
            v51 = v184;
            goto LABEL_72;
          }

          if (v233.size.height <= v41)
          {
            if (v222.size.height <= v41)
            {
              v104 = v222.origin.y;
              if (v222.origin.y == v233.origin.y || (v105 = v222.origin.x, width = 10000000.0, v233.size.width == v222.size.width) && lineFragmentPadding == self->lineFragmentPadding)
              {
LABEL_167:
                v51 = v184;
                v240.origin.x = v184;
                v240.origin.y = v52;
                v240.size.height = v212;
                v240.size.width = v215;
                if (!NSEqualRects(v233, v240))
                {
                  goto LABEL_170;
                }

                goto LABEL_72;
              }
            }

            else
            {
              if (v53 & 1 | (v222.size.width >= v233.size.width))
              {
                width = v54;
              }

              else
              {
                width = v222.size.width;
              }

              height = v233.size.height;
              v104 = y;
              v105 = v217;
              v53 = 0;
            }
          }

          else
          {
            height = v233.size.height;
            width = v54;
            v104 = y;
            v105 = v217;
          }

          v233.origin = v170;
          v233.size = *v167;
          v41 = height;
          v54 = width;
          y = v104;
          v217 = v105;
          goto LABEL_167;
        }
      }

      else
      {
        v73 = *(v192 + 40);
        v74 = (*(v73 + 216) >> 7) & 0xF;
        v75 = v74 == 3 || v74 == 0;
        if (!v75 || !HIDWORD(v186))
        {
          goto LABEL_93;
        }
      }

      v77 = v233.size.width + self->lineFragmentPadding * -2.0;
      [(NSParagraphStyle *)self->currentParagraphStyle firstLineHeadIndent];
      v66 = v77;
      v70 = v78;
      goto LABEL_94;
    }

    if (v41 + y <= self->currentTextContainerSize.height || [(NSString *)v209 characterAtIndex:v13, v41 + y]!= 65532 || ![(NSAttributedString *)self->attributedString attribute:@"NSAttachment" atIndex:v13 effectiveRange:0])
    {
LABEL_170:
      self->currentTextContainer = 0;
      return 0;
    }

    v53 = 0;
    v41 = self->currentTextContainerSize.height - y;
    self->currentTextContainerIndex = currentTextContainerIndex;
    self->currentTextContainer = currentTextContainer;
    self->currentTextContainerSize = currentTextContainerSize;
LABEL_72:
    v239.origin.x = v51;
    v239.origin.y = v52;
    v239.size.height = v212;
    v239.size.width = v215;
  }

  while (NSEqualRects(v233, v239));
  v226 = *&v190;
  v227 = *&v202;
  v109 = v152;
  if (v152 == 3)
  {
    v110 = v199;
    if (![(NSATSTypesetter *)self synchronizesAlignmentToDirection])
    {
      v110 = ((*(*(v192 + 40) + 216) >> 19) & 3) - 1;
    }

    if (v13 + v194 < v175)
    {
      [(NSATSLineFragment *)*(v192 + 8) justifyWithFactor:?];
    }

    if (v110 == NSWritingDirectionNatural)
    {
      v110 = [NSParagraphStyle defaultWritingDirectionForLanguage:0];
    }

    v109 = 2 * (v110 == NSWritingDirectionRightToLeft);
  }

  v111 = *(v192 + 8);
  if (v111)
  {
    v112 = *(v111 + 80);
    BoundsWithOptions = CTLineGetBoundsWithOptions(*(v111 + 8), 0);
    v113 = BoundsWithOptions.size.width + *(v111 + 96) - v112;
    v114 = *(v192 + 8);
  }

  else
  {
    v114 = 0;
    v113 = 0.0;
  }

  *&v232 = v113;
  [(NSATSLineFragment *)v114 resolveOpticalAlignmentUpdatingMinPosition:&v226 maxPosition:?];
  v115 = v233.size.width;
  if (v233.size.width >= 10000000.0 || (v115 = v226 - v227, v113 >= v226 - v227))
  {
    v109 = 0;
  }

  v116 = *(v192 + 8);
  if (!v116 || (*(v116 + 104) & 8) == 0 || ((v117 = [(NSTypesetter *)self attributedString], (v118 = *(v192 + 8)) == 0) ? (v119 = 0) : (v119 = *(v118 + 40)), (v120 = [(NSAttributedString *)v117 attribute:@"NSAttachment" atIndex:v119 effectiveRange:0]) == 0))
  {
LABEL_200:
    if (v109 == 1)
    {
      goto LABEL_203;
    }

    if (v109 == 2)
    {
      goto LABEL_202;
    }

LABEL_205:
    v123 = v227;
    v122 = v109 == 0;
    goto LABEL_206;
  }

  v121 = [v120 standaloneAlignment];
  if (!v121)
  {
    v109 = 0;
    goto LABEL_205;
  }

  if (v121 == 1)
  {
LABEL_203:
    v122 = 0;
    v123 = v227 + (v226 - (v113 + v227)) * 0.5;
    goto LABEL_206;
  }

  if (v121 != 2)
  {
    goto LABEL_200;
  }

LABEL_202:
  v122 = 0;
  v123 = v226 - v113;
LABEL_206:
  v124 = *(v192 + 8);
  if (v124)
  {
    v125 = *(v124 + 80);
    if (v125 > 0.0)
    {
      v113 = v125 + v113;
      if (v199 == 1 || *(v124 + 40) == *(v124 + 72))
      {
        v126 = v123 != v226 && v113 <= v125;
        v127 = v123 - v125;
        if (!v126)
        {
          v123 = v127;
        }
      }
    }
  }

  v128 = !v122;
  if (v207 > NSTypesetterBehavior_10_2_WithCompatibility)
  {
    v128 = 1;
  }

  v218 = v123;
  if (v128)
  {
    v129 = v227;
    if (v123 + *&v231 >= v227)
    {
      v129 = v123 + *&v231;
    }

    else
    {
      v113 = v113 - (v227 - (v123 + *&v231));
LABEL_222:
      *&v231 = v129;
    }
  }

  else
  {
    if (v123 < 0.0)
    {
      v129 = v123 + *&v231;
      goto LABEL_222;
    }

    v113 = v123 + v113;
    v129 = *&v231;
  }

  if (v226 < v129 + v113)
  {
    v113 = v113 - (v129 + v113 - v226);
    *&v232 = v113;
  }

  v130 = v129 + v233.origin.x;
  v131 = v113 + self->lineFragmentPadding * 2.0;
  v228 = v12;
  v229 = v197;
  v181 = *&v52;
  v185 = v51;
  if (!typesetter)
  {
    [(NSATSLineFragment *)v124 saveMorphedGlyphs:?];
    v141 = v229;
    v142 = v229 - v197;
    if (v229 > v197)
    {
      self->paragraphSeparatorGlyphRange.location += v142;
      self->paragraphGlyphRange.length += v142;
      v197 = v141;
    }
  }

  v132 = *(&v231 + 1);
  v133 = *(&v232 + 1);
  v235.origin.x = v130;
  v235.origin.y = *(&v231 + 1);
  v235.size.width = v131;
  v235.size.height = *(&v232 + 1);
  v236 = NSIntersectionRect(v235, v233);
  v134 = v236.origin.x;
  v135 = v236.origin.y;
  v136 = v236.size.width;
  v137 = v236.size.height;
  if (NSIsEmptyRect(v236))
  {
    if (v131 == 0.0)
    {
      *&v232 = 0x3FF0000000000000;
      v131 = 1.0;
    }

    if (v133 == 0.0)
    {
      *(&v232 + 1) = 0x3FF0000000000000;
      v133 = 1.0;
    }

    v237.origin.x = v130;
    v237.origin.y = v132;
    v237.size.width = v131;
    v237.size.height = v133;
    v238 = NSIntersectionRect(v237, v233);
    v134 = v238.origin.x;
    v135 = v238.origin.y;
    if (v131 == 0.0)
    {
      v136 = 1.0;
    }

    else
    {
      v136 = v238.size.width;
    }

    if (v133 == 0.0)
    {
      v137 = 1.0;
    }

    else
    {
      v137 = v238.size.height;
    }
  }

  *&v231 = v134;
  *(&v231 + 1) = v135;
  *&v232 = v136;
  *(&v232 + 1) = v137;
  v138 = v13 + v194;
  if (v13 + v194 >= v175)
  {
    v197 += self->paragraphSeparatorGlyphRange.length;
  }

  v225 = v225 + v135 - v233.origin.y;
  if ((*(v192 + 84) & 2) != 0)
  {
    [(NSATSTypesetter *)self willSetLineFragmentRect:&v233 forGlyphRange:v12 usedRect:v197 baselineOffset:&v231, &v225];
  }

  if ([(NSTypesetter *)self finalizeLineFragmentRect:&v233 lineFragmentUsedRect:&v231 baselineOffset:&v225 forGlyphRange:v12, v197])
  {
    v230.origin = v170;
    v230.size = *v167;
  }

  [(NSTypesetter *)self setLineFragmentRect:v12 forGlyphRange:v197 usedRect:*&v233.origin baselineOffset:*&v233.size, v231, v232, *&v225];
  if (typesetter)
  {
    if (v138 >= v175)
    {
      *typesetter = [(NSATSLineFragment *)*(v192 + 8) _copyRenderingContextWithGlyphOrigin:v218];
    }

    v139 = v197;
  }

  else
  {
    if ([(NSAttributedString *)self->attributedString _isStringDrawingTextStorage])
    {
      [NSATSTypesetter _layoutLineFragmentStartingWithGlyphAtIndex:&v225 characterIndex:v192 + 8 atPoint:? renderingContext:?];
    }

    [NSATSLineFragment saveWithGlyphOrigin:];
    v139 = v197;
    if (v138 >= v175)
    {
      if (v199 == 1)
      {
        v143 = *&v231 - v233.origin.x + self->lineFragmentPadding;
      }

      else
      {
        v143 = *&v231 + *&v232 - v233.origin.x - self->lineFragmentPadding;
      }

      [(NSTypesetter *)self setLocation:0 withAdvancements:self->paragraphSeparatorGlyphRange.location forStartOfGlyphRange:self->paragraphSeparatorGlyphRange.length, v143, 0.0];
      [(NSTypesetter *)self setNotShownAttribute:1 forGlyphRange:self->paragraphSeparatorGlyphRange.location, self->paragraphSeparatorGlyphRange.length];
      v138 = v194 + v205 + v13;
    }
  }

  [(NSATSTypesetter *)self endLineWithGlyphRange:v12, v139];
  *v156 = v139 + v12;
  *v158 = v138;
  v241.origin.x = v185;
  *&v241.origin.y = v181;
  v241.size.height = v212;
  v241.size.width = v215;
  if (NSEqualRects(v230, v241))
  {
    v140 = v233.origin.y + v233.size.height;
    theString->x = 0.0;
    theString->y = v140;
  }

  else
  {
    *theString = v230.origin;
  }

  return 1;
}

- (BOOL)_mirrorsTextAlignment
{
  v2 = [(NSTypesetter *)self layoutManager];

  return [(NSLayoutManager *)v2 _mirrorsTextAlignment];
}

- (BOOL)synchronizesAlignmentToDirection
{
  v2 = [(NSTypesetter *)self layoutManager];

  return [(NSLayoutManager *)v2 synchronizesAlignmentToDirection];
}

- (void)setDefaultTighteningFactor:(double)a3
{
  v4 = self->_private;
  if (!v4)
  {
    [NSATSTypesetter _doBidiProcessing];
    v4 = v5;
  }

  v4[8] = a3;
}

- (void)setLimitsLayoutForSuspiciousContents:(BOOL)a3
{
  v3 = a3;
  v4 = self->_private;
  if (!v4)
  {
    [NSATSTypesetter _doBidiProcessing];
    v4 = v6;
  }

  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  v4[21] = v4[21] & 0xFFFFFFFB | v5;
}

- (unint64_t)lineBreakStrategy
{
  v3 = self->_private;
  if (!v3)
  {
    [NSATSTypesetter _doBidiProcessing];
    v3 = v6;
  }

  result = v3[9];
  if (!result)
  {
    v5 = [(NSTypesetter *)self currentParagraphStyle];

    return [(NSParagraphStyle *)v5 lineBreakStrategy];
  }

  return result;
}

- (void)setLineBreakStrategy:(unint64_t)a3
{
  v4 = self->_private;
  if (!v4)
  {
    [NSATSTypesetter _doBidiProcessing];
    v4 = v5;
  }

  v4[9] = a3;
}

- (void)beginLineWithGlyphAtIndex:(unint64_t)a3
{
  v5 = self->_private;
  if (!v5)
  {
    [NSATSTypesetter _doBidiProcessing];
    v5 = v13;
  }

  v12.receiver = self;
  v12.super_class = NSATSTypesetter;
  [(NSTypesetter *)&v12 beginLineWithGlyphAtIndex:a3];
  textContainers = self->textContainers;
  if (textContainers)
  {
    if (v5[3] == a3 && (v7 = v5[4], v7 != self->currentTextContainerIndex))
    {
      if (v7 < [(NSArray *)textContainers count])
      {
        self->currentTextContainerIndex = v5[4];
        v8 = [(NSArray *)self->textContainers objectAtIndex:?];
        self->currentTextContainer = v8;
        [(NSTextContainer *)v8 size];
        self->currentTextContainerSize.width = v10;
        self->currentTextContainerSize.height = v9;
        if (v10 <= 0.0)
        {
          self->currentTextContainerSize.width = 10000000.0;
        }

        if (v9 <= 0.0)
        {
          self->currentTextContainerSize.height = 10000000.0;
        }

        [(NSTextContainer *)self->currentTextContainer lineFragmentPadding];
        self->lineFragmentPadding = v11;
      }
    }

    else
    {
      v5[3] = a3;
      v5[4] = self->currentTextContainerIndex;
    }
  }
}

- (void)endLineWithGlyphRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = self->_private;
  if (!v6)
  {
    [NSATSTypesetter _doBidiProcessing];
    v6 = v8;
  }

  v7.receiver = self;
  v7.super_class = NSATSTypesetter;
  [(NSTypesetter *)&v7 endLineWithGlyphRange:location, length];
  v6[3] = 0;
  v6[4] = 0;
}

- (unint64_t)actionForControlCharacterAtIndex:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = NSATSTypesetter;
  v5 = [(NSTypesetter *)&v8 actionForControlCharacterAtIndex:?];
  v6 = [(NSLayoutManager *)self->layoutManager delegate];
  if (objc_opt_respondsToSelector())
  {
    return [v6 layoutManager:self->layoutManager shouldUseAction:v5 forControlCharacterAtIndex:a3];
  }

  return v5;
}

- (NSUInteger)layoutParagraphAtPoint:(NSPoint *)lineFragmentOrigin
{
  p_paragraphGlyphRange = &self->paragraphGlyphRange;
  location = self->paragraphGlyphRange.location;
  v21 = location;
  CTSwapLineBreakEpsilon();
  [(NSATSTypesetter *)self beginParagraph];
  if (p_paragraphGlyphRange->length)
  {
    *&v19 = [(NSTypesetter *)self paragraphCharacterRange];
    v7 = [(NSTypesetter *)self paragraphSeparatorCharacterRange];
    v9 = v7 + v8;
    if (v19 < v7 + v8)
    {
      do
      {
        v10 = [(NSATSTypesetter *)self _layoutLineFragmentStartingWithGlyphAtIndex:&v21 characterIndex:&v19 atPoint:lineFragmentOrigin renderingContext:0];
      }

      while (v19 < v9 && v10);
    }
  }

  else
  {
    p_paragraphSeparatorGlyphRange = &self->paragraphSeparatorGlyphRange;
    if (self->paragraphSeparatorGlyphRange.length)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      [(NSATSTypesetter *)self beginLineWithGlyphAtIndex:location];
      [(NSTypesetter *)self getLineFragmentRect:&v19 usedRect:&v17 forParagraphSeparatorGlyphRange:p_paragraphSeparatorGlyphRange->location atProposedOrigin:self->paragraphSeparatorGlyphRange.length, lineFragmentOrigin->x, lineFragmentOrigin->y];
      if (!self->layoutManager || self->currentTextContainer)
      {
        v16 = *(&v17 + 1) + *(&v18 + 1) - *(&v19 + 1);
        v13 = self->_private;
        if (!v13)
        {
          v13 = [[_NSATSTypesetterGuts allocWithZone:?], self];
          self->_private = v13;
        }

        if ((v13[84] & 2) != 0)
        {
          [(NSATSTypesetter *)self willSetLineFragmentRect:&v19 forGlyphRange:p_paragraphSeparatorGlyphRange->location usedRect:self->paragraphSeparatorGlyphRange.length baselineOffset:&v17, &v16];
        }

        [(NSTypesetter *)self finalizeLineFragmentRect:&v19 lineFragmentUsedRect:&v17 baselineOffset:&v16 forGlyphRange:p_paragraphSeparatorGlyphRange->location, self->paragraphSeparatorGlyphRange.length];
        [(NSTypesetter *)self setLineFragmentRect:p_paragraphSeparatorGlyphRange->location forGlyphRange:self->paragraphSeparatorGlyphRange.length usedRect:v19 baselineOffset:v20, v17, v18, *&v16];
        [(NSTypesetter *)self setLocation:0 withAdvancements:p_paragraphSeparatorGlyphRange->location forStartOfGlyphRange:self->paragraphSeparatorGlyphRange.length, *&v17 - *&v19 + self->lineFragmentPadding, 0.0];
        [(NSTypesetter *)self setNotShownAttribute:1 forGlyphRange:p_paragraphSeparatorGlyphRange->location, self->paragraphSeparatorGlyphRange.length];
        v21 = self->paragraphSeparatorGlyphRange.length + p_paragraphSeparatorGlyphRange->location;
        [(NSATSTypesetter *)self endLineWithGlyphRange:p_paragraphGlyphRange->location, v21 - p_paragraphGlyphRange->location];
        v14 = *(&v19 + 1) + *(&v20 + 1);
        lineFragmentOrigin->x = 0.0;
        lineFragmentOrigin->y = v14;
      }
    }
  }

  [(NSATSTypesetter *)self endParagraph];
  CTSwapLineBreakEpsilon();
  return v21;
}

- (BOOL)shouldBreakLineByWordBeforeCharacterAtIndex:(NSUInteger)charIndex
{
  v5 = [(NSLayoutManager *)[(NSTypesetter *)self layoutManager] delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v6 = [(NSTypesetter *)self layoutManager];

  return [v5 layoutManager:v6 shouldBreakLineByWordBeforeCharacterAtIndex:charIndex];
}

- (BOOL)shouldBreakLineByHyphenatingBeforeCharacterAtIndex:(NSUInteger)charIndex
{
  v5 = [(NSLayoutManager *)[(NSTypesetter *)self layoutManager] delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v6 = [(NSTypesetter *)self layoutManager];

  return [v5 layoutManager:v6 shouldBreakLineByHyphenatingBeforeCharacterAtIndex:charIndex];
}

- (float)hyphenationFactorForGlyphAtIndex:(NSUInteger)glyphIndex
{
  [(NSParagraphStyle *)self->currentParagraphStyle hyphenationFactor];
  if (v4 == 0.0)
  {

    [(NSTypesetter *)self hyphenationFactor];
  }

  else
  {
    v6 = v4;
    if (v6 < 0.0)
    {
      v6 = 0.0;
    }

    return fmin(v6, 1.0);
  }

  return result;
}

- (NSRect)boundingBoxForControlGlyphAtIndex:(NSUInteger)glyphIndex forTextContainer:(NSTextContainer *)textContainer proposedLineFragment:(NSRect)proposedRect glyphPosition:(NSPoint)glyphPosition characterIndex:(NSUInteger)charIndex
{
  y = glyphPosition.y;
  x = glyphPosition.x;
  height = proposedRect.size.height;
  width = proposedRect.size.width;
  v12 = proposedRect.origin.y;
  v13 = proposedRect.origin.x;
  v17 = [(NSLayoutManager *)[(NSTypesetter *)self layoutManager] delegate];
  if (objc_opt_respondsToSelector())
  {
    [v17 layoutManager:-[NSTypesetter layoutManager](self boundingBoxForControlGlyphAtIndex:"layoutManager") forTextContainer:glyphIndex proposedLineFragment:textContainer glyphPosition:charIndex characterIndex:{v13, v12, width, height, x, y}];
  }

  else
  {
    v18 = *MEMORY[0x1E696AA80];
    v19 = *(MEMORY[0x1E696AA80] + 8);
    v20 = *(MEMORY[0x1E696AA80] + 16);
    v21 = *(MEMORY[0x1E696AA80] + 24);
  }

  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (BOOL)_isBusy
{
  v2 = self->_private;
  if (!v2)
  {
    [NSATSTypesetter _doBidiProcessing];
    v2 = v4;
  }

  return v2[80];
}

- (void)_setBusy:(BOOL)a3
{
  v4 = self->_private;
  if (!v4)
  {
    [NSATSTypesetter _doBidiProcessing];
    v4 = v5;
  }

  v4[80] = a3;
}

- (void)layoutGlyphsInLayoutManager:(id)a3 startingAtGlyphIndex:(unint64_t)a4 maxNumberOfLineFragments:(unint64_t)a5 nextGlyphIndex:(unint64_t *)a6
{
  os_unfair_lock_lock(&__NSATSTypesetterLock);
  if ([(NSATSTypesetter *)self _isBusy])
  {
    if (a4 && (__NSRaiseWithRecursiveLayoutRequest & 1) != 0 && self->layoutManager == a3)
    {
      [(NSATSTypesetter *)self _setBusy:0];
      os_unfair_lock_unlock(&__NSATSTypesetterLock);
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@: Recursive layout request for layout manager %@", self, a3}];
    }

    os_unfair_lock_unlock(&__NSATSTypesetterLock);
    v14 = [objc_msgSend(objc_opt_class() allocWithZone:{-[NSATSTypesetter zone](self, "zone")), "init"}];
    [v14 layoutGlyphsInLayoutManager:a3 startingAtGlyphIndex:a4 maxNumberOfLineFragments:a5 nextGlyphIndex:a6];
  }

  else
  {
    [(NSATSTypesetter *)self _setBusy:1];
    os_unfair_lock_unlock(&__NSATSTypesetterLock);
    v11 = [a3 textStorage];
    v12 = [(NSATSTypesetter *)self _baselineRenderingMode];
    v13 = [(NSATSTypesetter *)self _forceWordWrapping];
    -[NSTypesetter setApplicationFrameworkContext:](self, "setApplicationFrameworkContext:", [a3 applicationFrameworkContext]);
    if ([v11 _isStringDrawingTextStorage])
    {
      -[NSATSTypesetter _setForceWordWrapping:](self, "_setForceWordWrapping:", [v11 _forceWordWrapping]);
      [v11 defaultTighteningFactor];
      [(NSATSTypesetter *)self setDefaultTighteningFactor:?];
      [(NSATSTypesetter *)self setLineBreakStrategy:+[NSTypesetter defaultLineBreakStrategy]];
      -[NSATSTypesetter setLimitsLayoutForSuspiciousContents:](self, "setLimitsLayoutForSuspiciousContents:", [a3 limitsLayoutForSuspiciousContents]);
    }

    v15.receiver = self;
    v15.super_class = NSATSTypesetter;
    [(NSTypesetter *)&v15 layoutGlyphsInLayoutManager:a3 startingAtGlyphIndex:a4 maxNumberOfLineFragments:a5 nextGlyphIndex:a6];
    [(NSATSTypesetter *)self _flushCachedObjects];
    if (!v12)
    {
      [(NSATSTypesetter *)self _setBaselineRenderingMode:0];
    }

    if (!v13)
    {
      [(NSATSTypesetter *)self _setForceWordWrapping:0];
    }

    [(NSATSTypesetter *)self setDefaultTighteningFactor:0.0];
    [(NSATSTypesetter *)self setLineBreakStrategy:0];
    [(NSATSTypesetter *)self setLimitsLayoutForSuspiciousContents:0];
    [(NSATSTypesetter *)self _setBusy:0];
  }
}

- (_NSRange)layoutCharactersInRange:(_NSRange)a3 forLayoutManager:(id)a4 maximumNumberOfLineFragments:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  os_unfair_lock_lock(&__NSATSTypesetterLock);
  if ([(NSATSTypesetter *)self _isBusy])
  {
    v10 = __NSRaiseWithRecursiveLayoutRequest != 1 || location == 0;
    if (!v10 && self->layoutManager == a4)
    {
      [(NSATSTypesetter *)self _setBusy:0];
      os_unfair_lock_unlock(&__NSATSTypesetterLock);
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@: Recursive layout request for layout manager %@", self, a4}];
    }

    os_unfair_lock_unlock(&__NSATSTypesetterLock);
    v11 = [objc_msgSend(objc_opt_class() allocWithZone:{-[NSATSTypesetter zone](self, "zone")), "init"}];
    v12 = [v11 layoutCharactersInRange:location forLayoutManager:length maximumNumberOfLineFragments:{a4, a5}];
    v14 = v13;
  }

  else
  {
    [(NSATSTypesetter *)self _setBusy:1];
    os_unfair_lock_unlock(&__NSATSTypesetterLock);
    v15 = [a4 textStorage];
    v16 = [(NSATSTypesetter *)self _baselineRenderingMode];
    v17 = [(NSATSTypesetter *)self _forceWordWrapping];
    -[NSTypesetter setApplicationFrameworkContext:](self, "setApplicationFrameworkContext:", [a4 applicationFrameworkContext]);
    if ([v15 _isStringDrawingTextStorage])
    {
      -[NSATSTypesetter _setForceWordWrapping:](self, "_setForceWordWrapping:", [v15 _forceWordWrapping]);
      [v15 defaultTighteningFactor];
      [(NSATSTypesetter *)self setDefaultTighteningFactor:?];
      [(NSATSTypesetter *)self setLineBreakStrategy:+[NSTypesetter defaultLineBreakStrategy]];
    }

    -[NSATSTypesetter setLimitsLayoutForSuspiciousContents:](self, "setLimitsLayoutForSuspiciousContents:", [a4 limitsLayoutForSuspiciousContents]);
    v21.receiver = self;
    v21.super_class = NSATSTypesetter;
    v12 = [(NSTypesetter *)&v21 layoutCharactersInRange:location forLayoutManager:length maximumNumberOfLineFragments:a4, a5];
    v14 = v18;
    [(NSATSTypesetter *)self _flushCachedObjects];
    if (!v16)
    {
      [(NSATSTypesetter *)self _setBaselineRenderingMode:0];
    }

    if (!v17)
    {
      [(NSATSTypesetter *)self _setForceWordWrapping:0];
    }

    [(NSATSTypesetter *)self setDefaultTighteningFactor:0.0];
    [(NSATSTypesetter *)self setLineBreakStrategy:0];
    [(NSATSTypesetter *)self setLimitsLayoutForSuspiciousContents:0];
    [(NSATSTypesetter *)self _setBusy:0];
  }

  v19 = v12;
  v20 = v14;
  result.length = v20;
  result.location = v19;
  return result;
}

- (double)baselineOffsetInLayoutManager:(id)a3 glyphIndex:(unint64_t)a4
{
  os_unfair_lock_lock(&__NSATSTypesetterLock);
  if ([(NSATSTypesetter *)self _isBusy])
  {
    if (a4 && (__NSRaiseWithRecursiveLayoutRequest & 1) != 0 && self->layoutManager == a3)
    {
      [(NSATSTypesetter *)self _setBusy:0];
      os_unfair_lock_unlock(&__NSATSTypesetterLock);
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@: Recursive layout request for layout manager %@", self, a3}];
    }

    os_unfair_lock_unlock(&__NSATSTypesetterLock);
    v7 = [objc_msgSend(objc_opt_class() allocWithZone:{-[NSATSTypesetter zone](self, "zone")), "init"}];
    [v7 baselineOffsetInLayoutManager:a3 glyphIndex:a4];
    v9 = v8;
  }

  else
  {
    [(NSATSTypesetter *)self _setBusy:1];
    os_unfair_lock_unlock(&__NSATSTypesetterLock);
    v12.receiver = self;
    v12.super_class = NSATSTypesetter;
    [(NSTypesetter *)&v12 baselineOffsetInLayoutManager:a3 glyphIndex:a4];
    v9 = v10;
    [(NSATSTypesetter *)self _setBusy:0];
  }

  return v9;
}

- ($500F09A0A86A1DC0979241A7D72823DF)_lineFragmentRectForProposedRectArgs
{
  v2 = self->_private;
  if (!v2)
  {
    [NSATSTypesetter _doBidiProcessing];
    v2 = v4;
  }

  return *(v2 + 6);
}

- (NSRect)lineFragmentRectForProposedRect:(NSRect)proposedRect remainingRect:(NSRectPointer)remainingRect
{
  height = proposedRect.size.height;
  width = proposedRect.size.width;
  y = proposedRect.origin.y;
  x = proposedRect.origin.x;
  v10 = self->_private;
  if (!v10)
  {
    [NSATSTypesetter _doBidiProcessing];
    v10 = v18;
  }

  v11 = v10[6];
  v18 = 0u;
  v19 = 0u;
  if (v11)
  {
    v12 = height - (*v11 + *(v11 + 8) + *(v11 + 16));
    v10[6] = 0;
    [(NSTypesetter *)self getLineFragmentRect:&v18 usedRect:v11 remainingRect:remainingRect forStartingGlyphAtIndex:*(v11 + 24) proposedRect:x lineSpacing:y paragraphSpacingBefore:width paragraphSpacingAfter:v12, *v11, *(v11 + 8), *(v11 + 16)];
    v10[6] = v11;
    v13 = &v18;
    v14 = *(&v18 + 1);
    v15 = *&v19;
  }

  else
  {
    v13 = MEMORY[0x1E696AA80];
    v14 = *(MEMORY[0x1E696AA80] + 8);
    v15 = *(MEMORY[0x1E696AA80] + 16);
  }

  v16 = v13[3];
  v17 = *v13;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v17;
  return result;
}

- (uint64_t)_layoutLineFragmentStartingWithGlyphAtIndex:(uint64_t)a3 characterIndex:atPoint:renderingContext:.cold.3(id *a1, double *a2, uint64_t a3)
{
  result = [*a1 _setBaselineDelta:*a2];
  if (*a3)
  {
    if ((*(*a3 + 104) & 0x10) != 0)
    {
      return [*a1 _setWrappedByCluster:1];
    }
  }

  return result;
}

@end