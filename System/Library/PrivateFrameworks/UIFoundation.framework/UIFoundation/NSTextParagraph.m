@interface NSTextParagraph
+ (id)textParagraphsForAttributedString:(id)a3 range:(_NSRange)a4;
- (BOOL)_containsTextAttachments;
- (CGSize)estimatedIntrinsicContentSizeForTextLayoutManager:(id)a3;
- (NSAttributedString)attributedString;
- (NSTextParagraph)initWithAttributedString:(NSAttributedString *)attributedString;
- (NSTextParagraph)initWithAttributedString:(id)a3 range:(_NSRange)a4;
- (NSTextParagraph)initWithString:(id)a3 attributes:(id)a4;
- (NSTextParagraph)initWithTextAttachment:(id)a3 attributes:(id)a4;
- (NSTextParagraph)initWithTextContentManager:(id)a3;
- (NSTextRange)paragraphContentRange;
- (NSTextRange)paragraphSeparatorRange;
- (_NSRange)rangeForLocation:(id)a3 allowsTrailingEdge:(BOOL)a4;
- (const)_bidiLevelsForFallbackWritingDirection:(int64_t)a3 resolvedBaseWritingDirectionPointer:(int64_t *)a4;
- (id)_textElementLocationForCharacterIndex:(unint64_t)a3;
- (id)anchoredTextAttachments;
- (id)description;
- (id)locationForCharacterIndex:(int64_t)a3 dataSourceLocationsOnly:(BOOL)a4 actualRange:(_NSRange *)a5;
- (id)paragraphRange;
- (int64_t)_resolvedBaseWritingDirectionWithFallbackDirection:(int64_t)a3;
- (void)_setContainsTextAttachments:(BOOL)a3;
- (void)_setElementTextLocation:(id)a3 forCharacterIndex:(unint64_t)a4;
- (void)dealloc;
- (void)enumerateSubstringsFromLocation:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateSubstringsInRange:(_NSRange)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)setAttributedString:(id)a3;
- (void)setElementRange:(id)a3;
- (void)setParagraphContentRange:(id)a3;
- (void)setParagraphSeparatorRange:(id)a3;
- (void)synchronizeDocumentRange;
@end

@implementation NSTextParagraph

- (NSAttributedString)attributedString
{
  location = self->_range.location;
  attributedString = self->_attributedString;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = attributedString;

    return v5;
  }

  else
  {

    return [(NSAttributedString *)attributedString attributedSubstringFromRange:?];
  }
}

- (NSTextRange)paragraphContentRange
{
  objc_sync_enter(self);
  v3 = self->_paragraphContentRange;
  objc_sync_exit(self);
  return v3;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];

  textElementLocationTable = self->_textElementLocationTable;
  self->_textElementLocationTable = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMapTable *)textElementLocationTable objectEnumerator];
  v5 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v8++) setTextElement:0];
      }

      while (v6 != v8);
      v6 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  free(self->_bidiLevels);
  self->_bidiLevels = 0;
  v9.receiver = self;
  v9.super_class = NSTextParagraph;
  [(NSTextElement *)&v9 dealloc];
}

- (NSTextRange)paragraphSeparatorRange
{
  objc_sync_enter(self);
  v3 = self->_paragraphSeparatorRange;
  objc_sync_exit(self);
  return v3;
}

- (id)anchoredTextAttachments
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v2 = [(NSTextParagraph *)self attributedString];
  v3 = [(NSAttributedString *)v2 length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__NSTextParagraph_anchoredTextAttachments__block_invoke;
  v6[3] = &unk_1E7266970;
  v6[4] = &v7;
  [(NSAttributedString *)v2 enumerateAttribute:@"NSTextParagraphAnchoredAttachment" inRange:0 options:v3 usingBlock:0x100000, v6];
  if (v8[5])
  {
    v4 = v8[5];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __42__NSTextParagraph_anchoredTextAttachments__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = a2;
    v7 = result;
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if ((result & 1) == 0)
    {
      v8[0] = v6;
      result = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      v6 = result;
    }

    *(*(*(v7 + 32) + 8) + 40) = v6;
    *a5 = 1;
  }

  return result;
}

- (void)setAttributedString:(id)a3
{
  if (self->_attributedString != a3)
  {
    objc_sync_enter(self);

    self->_attributedString = [a3 copy];
    self->_range = xmmword_18E856180;

    objc_sync_exit(self);
  }
}

- (id)description
{
  if (self->_range.location != 0x7FFFFFFFFFFFFFFFLL || (attributedString = self->_attributedString) == 0)
  {
    attributedString = [(NSTextParagraph *)self attributedString];
  }

  v4 = [(NSAttributedString *)attributedString string];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p %@>", objc_opt_class(), self, v4];
}

+ (id)textParagraphsForAttributedString:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v9 = [a3 string];
  if (location + length > [a3 length])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v21.location = location;
    v21.length = length;
    [v13 handleFailureInMethod:a2 object:a1 file:@"NSTextElement.m" lineNumber:267 description:{@"Out-of-bounds range specified %@", NSStringFromRange(v21)}];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__NSTextParagraph_textParagraphsForAttributedString_range___block_invoke;
  v14[3] = &unk_1E7266F98;
  v14[4] = a3;
  v14[5] = &v15;
  [v9 enumerateSubstringsInRange:location options:length usingBlock:{513, v14}];
  v10 = v16[5];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v15, 8);
  return v11;
}

void __59__NSTextParagraph_textParagraphsForAttributedString_range___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = -[NSTextParagraph initWithAttributedString:]([NSTextParagraph alloc], "initWithAttributedString:", [*(a1 + 32) attributedSubstringFromRange:{a5, a6}]);
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v10 = v7;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v7 = v10;
    *(*(*(a1 + 40) + 8) + 40) = v9;
    v8 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v8 addObject:v7];
}

- (NSTextParagraph)initWithAttributedString:(NSAttributedString *)attributedString
{
  v7.receiver = self;
  v7.super_class = NSTextParagraph;
  v4 = [(NSTextElement *)&v7 initWithTextContentManager:0];
  v5 = v4;
  if (v4)
  {
    [(NSTextElement *)v4 setCoalescingType:3];
    [(NSTextParagraph *)v5 setAttributedString:attributedString];
    v5->_range = xmmword_18E856180;
    v5->_resolvedBaseDirection = -1;
    v5->_fallbackBaseDirection = 0;
    v5->_isEndOfParagraph = 1;
    v5->_isBeginningOfParagraph = 1;
  }

  return v5;
}

- (NSTextParagraph)initWithAttributedString:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(NSTextParagraph *)self initWithAttributedString:0];
  if (v7)
  {
    v7->_attributedString = a3;
    v7->_range.location = location;
    v7->_range.length = length;
  }

  return v7;
}

- (NSTextParagraph)initWithTextContentManager:(id)a3
{
  v4 = [(NSTextParagraph *)self initWithAttributedString:0];
  v5 = v4;
  if (v4)
  {
    [(NSTextElement *)v4 setTextContentManager:a3];
  }

  return v5;
}

- (NSTextParagraph)initWithString:(id)a3 attributes:(id)a4
{
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a3 attributes:a4];
  v7 = [(NSTextParagraph *)self initWithAttributedString:v6];
  v8 = v7;
  if (v7)
  {
    [(NSTextParagraph *)v7 setAttributes:a4];
  }

  return v8;
}

- (void)setParagraphContentRange:(id)a3
{
  objc_sync_enter(self);
  paragraphContentRange = self->_paragraphContentRange;
  if (paragraphContentRange != a3)
  {

    self->_paragraphContentRange = a3;
  }

  objc_sync_exit(self);
}

- (void)setParagraphSeparatorRange:(id)a3
{
  objc_sync_enter(self);
  if (self->_paragraphSeparatorRange != a3)
  {
    v5 = [(NSTextElement *)self coalescingType];
    paragraphSeparatorRange = self->_paragraphSeparatorRange;

    v7 = v5 & 0xF;
    self->_paragraphSeparatorRange = a3;
    if (!paragraphSeparatorRange)
    {
      if ([a3 isEmpty])
      {
        v7 = v5 & 0xD | 2u;
      }

      else
      {
        attributedString = self->_attributedString;
        if (attributedString)
        {
          v9 = [(NSAttributedString *)attributedString string];
        }

        else
        {
          v9 = [(NSAttributedString *)[(NSTextParagraph *)self attributedString] string];
        }

        v10 = v9;
        location = self->_range.location;
        if (location == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [(NSString *)v9 length];
        }

        else
        {
          v12 = self->_range.length + location;
        }

        v13 = [(NSString *)v10 characterAtIndex:v12 - 1];
        v14 = v5 | 4;
        if (v13 != 13)
        {
          v14 = v5;
        }

        v7 = v14 & 0xD;
      }
    }

    [(NSTextElement *)self setCoalescingType:v7];
  }

  objc_sync_exit(self);
}

- (id)locationForCharacterIndex:(int64_t)a3 dataSourceLocationsOnly:(BOOL)a4 actualRange:(_NSRange *)a5
{
  p_range = &self->_range;
  location = self->_range.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    length = [(NSAttributedString *)[(NSTextParagraph *)self attributedString:a3] length];
    v11 = 0;
  }

  else
  {
    length = self->_range.length;
    v11 = self->_range.location;
  }

  if (length < a3)
  {
    return 0;
  }

  v13 = [(NSTextContentManager *)[(NSTextElement *)self textContentManager] locationFromLocation:[(NSTextRange *)[(NSTextElement *)self elementRange] location] withOffset:a3];
  v12 = v13;
  if (a5 && v13)
  {
    if (length <= a3)
    {
      v14.length = 0;
      v14.location = v11 + a3;
    }

    else
    {
      v14.location = [(NSString *)[(NSAttributedString *)self->_attributedString string] rangeOfComposedCharacterSequenceAtIndex:v11 + a3];
      if (location != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = NSIntersectionRange(v14, *p_range);
      }
    }

    a5->location = v14.location - v11;
    a5->length = v14.length;
  }

  return v12;
}

- (_NSRange)rangeForLocation:(id)a3 allowsTrailingEdge:(BOOL)a4
{
  v9 = xmmword_18E856180;
  if (a3 && ((v4 = a4, -[NSTextRange containsLocation:](-[NSTextElement elementRange](self, "elementRange"), "containsLocation:", a3)) || v4 && [-[NSTextRange endLocation](-[NSTextElement elementRange](self "elementRange")]))
  {
    [(NSTextParagraph *)self locationForCharacterIndex:[(NSTextContentManager *)[(NSTextElement *)self textContentManager] offsetFromLocation:[(NSTextRange *)[(NSTextElement *)self elementRange] location] toLocation:a3] dataSourceLocationsOnly:0 actualRange:&v9];
    v8 = *(&v9 + 1);
    v7 = v9;
  }

  else
  {
    v8 = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result.length = v8;
  result.location = v7;
  return result;
}

- (id)_textElementLocationForCharacterIndex:(unint64_t)a3
{
  objc_sync_enter(self);
  v5 = [(NSMapTable *)self->_textElementLocationTable objectForKey:a3 + 1];
  objc_sync_exit(self);
  return v5;
}

- (void)_setElementTextLocation:(id)a3 forCharacterIndex:(unint64_t)a4
{
  objc_sync_enter(self);
  textElementLocationTable = self->_textElementLocationTable;
  if (!textElementLocationTable)
  {
    textElementLocationTable = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:512 capacity:0];
    self->_textElementLocationTable = textElementLocationTable;
  }

  [(NSMapTable *)textElementLocationTable setObject:a3 forKey:a4 + 1];

  objc_sync_exit(self);
}

- (void)enumerateSubstringsInRange:(_NSRange)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = [(NSAttributedString *)self->_attributedString string];
  v10 = self->_range.location;
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  [(NSString *)v9 enumerateSubstringsInRange:MEMORY[0x1E69E9820] options:3221225472 usingBlock:__65__NSTextParagraph_enumerateSubstringsInRange_options_usingBlock___block_invoke, &unk_1E7266FC0, a5, v10 + location, length, v10];
}

uint64_t __65__NSTextParagraph_enumerateSubstringsInRange_options_usingBlock___block_invoke(uint64_t a1, int a2, NSRange range1, NSUInteger a4, NSUInteger a5)
{
  length = range1.length;
  location = range1.location;
  v15 = *(a1 + 40);
  v13.location = location;
  v13.length = length;
  NSIntersectionRange(v13, v15);
  v14.location = a4;
  v14.length = a5;
  NSIntersectionRange(v14, *(a1 + 40));
  v10 = *(*(a1 + 32) + 16);

  return v10();
}

- (void)enumerateSubstringsFromLocation:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v9 = [(NSTextParagraph *)self paragraphContentRange];
  v10 = [(NSTextParagraph *)self paragraphSeparatorRange];
  v11 = [(NSTextRange *)v9 location];
  v12 = [(NSTextRange *)v10 endLocation];
  if ([a3 compare:v11] != -1)
  {
    v13 = [a3 compare:v12];
    v14 = (a4 & 0x100) != 0 ? a3 : v12;
    v15 = (a4 & 0x100) != 0 ? v11 : a3;
    if (v13 == -1)
    {
      v12 = v14;
      v11 = v15;
    }
  }

  v16 = [(NSTextParagraph *)self rangeForLocation:v11 allowsTrailingEdge:0];
  v17 = [(NSTextParagraph *)self rangeForLocation:v12 allowsTrailingEdge:1];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL && v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__NSTextParagraph_enumerateSubstringsFromLocation_options_usingBlock___block_invoke;
    v18[3] = &unk_1E7266FE8;
    v18[4] = self;
    v18[5] = a5;
    [(NSTextParagraph *)self enumerateSubstringsInRange:v16 options:v17 - v16 usingBlock:a4, v18];
  }
}

void __70__NSTextParagraph_enumerateSubstringsFromLocation_options_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [*(a1 + 32) locationForCharacterIndex:a3 dataSourceLocationsOnly:0 actualRange:0], objc_msgSend(*(a1 + 32), "locationForCharacterIndex:dataSourceLocationsOnly:actualRange:", a3 + a4, 0, 0));
  if (a3 != a5 || (v12 = 0, a4 != a6))
  {
    v12 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [*(a1 + 32) locationForCharacterIndex:a5 dataSourceLocationsOnly:0 actualRange:0], objc_msgSend(*(a1 + 32), "locationForCharacterIndex:dataSourceLocationsOnly:actualRange:", a5 + a6, 0, 0));
  }

  v13 = v12;
  (*(*(a1 + 40) + 16))();
}

- (void)setElementRange:(id)a3
{
  objc_sync_enter(self);
  v6.receiver = self;
  v6.super_class = NSTextParagraph;
  [(NSTextElement *)&v6 setElementRange:a3];
  if (self->_range.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_range.location = [(NSTextRange *)[(NSTextElement *)self elementRange] range];
    self->_range.length = v5;
  }

  objc_sync_exit(self);
}

- (void)synchronizeDocumentRange
{
  v14 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (self->_range.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_range.location = [(NSTextRange *)[(NSTextElement *)self elementRange] range];
    self->_range.length = v3;
  }

  textElementLocationTable = self->_textElementLocationTable;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSMapTable *)textElementLocationTable objectEnumerator];
  v6 = [(NSEnumerator *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * i) updateBaseLocation];
      }

      v6 = [(NSEnumerator *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  objc_sync_exit(self);
}

- (CGSize)estimatedIntrinsicContentSizeForTextLayoutManager:(id)a3
{
  v5 = [a3 textContainerForLocation:{-[NSTextRange location](-[NSTextElement elementRange](self, "elementRange"), "location")}];
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  if (!v5)
  {
    goto LABEL_27;
  }

  v8 = v5;
  p_range = &self->_range;
  location = self->_range.location;
  attributedString = self->_attributedString;
  if (!attributedString)
  {
    attributedString = [(NSTextParagraph *)self attributedString];
  }

  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = self->_range.length;
    if (length > 0)
    {
      v13 = p_range->location;
      goto LABEL_9;
    }

LABEL_10:
    v14 = [objc_msgSend(objc_msgSend(a3 "textSelections")];
    v15 = 0;
    goto LABEL_11;
  }

  length = [(NSAttributedString *)attributedString length];
  if (length <= 0)
  {
    goto LABEL_10;
  }

  v13 = 0;
LABEL_9:
  v14 = [(NSAttributedString *)attributedString attributesAtIndex:v13 effectiveRange:0];
  v15 = 1;
LABEL_11:
  [v8 size];
  v17 = v16;
  v27 = 0.0;
  +[NSCoreTypesetter _lineMetricsForAttributes:typesetterBehavior:usesFontLeading:applySpacings:usesSystemFontLeading:usesNegativeFontLeading:layoutOrientation:lineHeight:baselineOffset:spacing:](NSCoreTypesetter, "_lineMetricsForAttributes:typesetterBehavior:usesFontLeading:applySpacings:usesSystemFontLeading:usesNegativeFontLeading:layoutOrientation:lineHeight:baselineOffset:spacing:", v14, +[NSTypesetter defaultTypesetterBehavior](NSTypesetter, "defaultTypesetterBehavior"), [a3 usesFontLeading], 1, 0, 0, objc_msgSend(v8, "layoutOrientation"), &v27, 0, 0);
  if (([a3 allowsFontSubstitutionAffectingVerticalMetrics] & 1) != 0 || (v18 = -[NSDictionary objectForKeyedSubscript:](v14, "objectForKeyedSubscript:", @"NSOriginalFont")) == 0)
  {
    v18 = [(NSDictionary *)v14 objectForKeyedSubscript:@"NSFont"];
    if (!v18)
    {
      v18 = NSDefaultFont();
    }
  }

  v19 = v18;
  if (v15)
  {
    if ((CTFontGetSymbolicTraits(v18) & 0x400) != 0 || (characters = 109, glyphs = 0, !CTFontGetGlyphsForCharacters(v19, &characters, &glyphs, 1)) || (advances.width = 0.0, advances.height = 0.0, CTFontGetAdvancesForGlyphs(v19, kCTFontOrientationDefault, &glyphs, &advances, 1), MaxX = advances.width * 0.5, advances.width * 0.5 <= 0.0))
    {
      [(__CTFont *)v19 boundingRectForFont];
      MaxX = CGRectGetMaxX(v29);
    }

    v21 = 0;
    v6 = MaxX * length;
    if (v17 > 0.0 && v17 < 10000000.0 && v6 >= v17)
    {
      v21 = vcvtpd_s64_f64(v6 / v17);
      v6 = v17;
    }

    if (v21 <= 1)
    {
      v21 = 1;
    }

    v7 = v27 * v21;
  }

LABEL_27:
  v22 = v6;
  v23 = v7;
  result.height = v23;
  result.width = v22;
  return result;
}

- (int64_t)_resolvedBaseWritingDirectionWithFallbackDirection:(int64_t)a3
{
  resolvedBaseDirection = self->_resolvedBaseDirection;
  fallbackBaseDirection = self->_fallbackBaseDirection;
  if ((fallbackBaseDirection == a3 || fallbackBaseDirection == -1) && resolvedBaseDirection != -1)
  {
    goto LABEL_30;
  }

  attributedString = self->_attributedString;
  if (!attributedString)
  {
    attributedString = [(NSTextParagraph *)self attributedString];
  }

  location = self->_range.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    length = [(NSAttributedString *)attributedString length];
    location = 0;
  }

  else
  {
    length = self->_range.length;
  }

  attributes = self->_attributes;
  if (!attributes)
  {
    if ([(NSAttributedString *)attributedString length])
    {
      v13 = [(NSAttributedString *)attributedString attribute:@"NSParagraphStyle" atIndex:location effectiveRange:0];
      if (v13)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    attributes = self->_attributes;
  }

  v13 = [(NSDictionary *)attributes objectForKeyedSubscript:@"NSParagraphStyle"];
  if (!v13)
  {
LABEL_16:
    v13 = +[NSParagraphStyle defaultParagraphStyle];
  }

LABEL_17:
  v14 = [(NSParagraphStyle *)v13 baseWritingDirection];
  v15 = v14;
  self->_resolvedBaseDirection = v14;
  if (a3 == 1 || v14 == 1 || _NSStringHasRightToLeftCharactersInRange([(NSAttributedString *)attributedString string], location, length))
  {
    resolvedBaseDirection = a3;
    if (length)
    {
      v16 = malloc_type_calloc(length, 1uLL, 0x100004077774924uLL);
      v17 = [_NSParagraphBidiLevelsProducer resolvedBaseWritingDirectionForTextContentManager:attributedString AttributedString:location paragraphRange:length baseWritingDirection:v15 fallbackBaseWritingDirection:a3 bidiLevels:?];
      if (v17 == -1)
      {
        resolvedBaseDirection = v15;
      }

      else
      {
        resolvedBaseDirection = v17;
      }

      free(self->_bidiLevels);
      self->_bidiLevels = v16;
    }

    self->_resolvedBaseDirection = resolvedBaseDirection;
  }

  else
  {
    self->_resolvedBaseDirection = 0;
    free(self->_bidiLevels);
    resolvedBaseDirection = 0;
    self->_bidiLevels = 0;
  }

LABEL_30:
  self->_fallbackBaseDirection = a3;
  return resolvedBaseDirection;
}

- (const)_bidiLevelsForFallbackWritingDirection:(int64_t)a3 resolvedBaseWritingDirectionPointer:(int64_t *)a4
{
  v6 = [(NSTextParagraph *)self _resolvedBaseWritingDirectionWithFallbackDirection:a3];
  if (a4)
  {
    *a4 = v6;
  }

  return self->_bidiLevels;
}

- (NSTextParagraph)initWithTextAttachment:(id)a3 attributes:(id)a4
{
  v7 = [a4 mutableCopy];
  if ([a3 embeddingType] == 1)
  {
    v8 = [a3 standaloneAlignment];
    if (v8 != 3)
    {
      v9 = v8;
      v10 = [a4 objectForKeyedSubscript:@"NSParagraphStyle"];
      if (v9 == 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2 * (v9 == 2);
      }

      if (v10)
      {
        v12 = v10;
        if ([v10 alignment] == v11)
        {
          goto LABEL_12;
        }

        v13 = [v12 mutableCopy];
      }

      else
      {
        if ([+[NSParagraphStyle alignment]== v11 defaultParagraphStyle]
        {
          goto LABEL_12;
        }

        v13 = objc_alloc_init(NSMutableParagraphStyle);
      }

      v14 = v13;
      [(NSMutableParagraphStyle *)v13 setAlignment:v11];
      [v7 setObject:v14 forKeyedSubscript:@"NSParagraphStyle"];
    }
  }

LABEL_12:
  v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttachment:a3 attributes:v7];
  v16 = [(NSTextParagraph *)self initWithAttributedString:v15];
  if ([a3 embeddingType] == 1)
  {
    [(NSTextElement *)v16 setCoalescingType:0];
  }

  return v16;
}

- (BOOL)_containsTextAttachments
{
  objc_sync_enter(self);
  containsTextAttachments = self->_containsTextAttachments;
  if (!self->_containsTextAttachments)
  {
    attributedString = self->_attributedString;
    if (!attributedString)
    {
      attributedString = [(NSTextParagraph *)self attributedString];
    }

    location = self->_range.location;
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      length = [(NSAttributedString *)attributedString length];
      location = 0;
    }

    else
    {
      length = self->_range.length;
    }

    v10 = location;
    v11 = 0;
    v7 = length + location;
    if (location < length + location)
    {
      while (![(NSAttributedString *)attributedString attribute:@"NSAttachment" atIndex:location longestEffectiveRange:&v10 inRange:location, v7 - location])
      {
        location = v11 + v10;
        v10 = location;
        if (location >= v7)
        {
          goto LABEL_12;
        }
      }

      self->_containsTextAttachments = 2;
    }

LABEL_12:
    containsTextAttachments = self->_containsTextAttachments;
  }

  v8 = containsTextAttachments != 1;
  objc_sync_exit(self);
  return v8;
}

- (void)_setContainsTextAttachments:(BOOL)a3
{
  v3 = a3;
  objc_sync_enter(self);
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  self->_containsTextAttachments = v5;

  objc_sync_exit(self);
}

- (id)paragraphRange
{
  objc_sync_enter(self);
  paragraphContentRange = self->_paragraphContentRange;
  if (self->_paragraphSeparatorRange)
  {
    v4 = [(NSTextRange *)paragraphContentRange textRangeByFormingUnionWithTextRange:?];
  }

  else
  {
    v4 = paragraphContentRange;
  }

  v5 = v4;
  objc_sync_exit(self);
  return v5;
}

@end