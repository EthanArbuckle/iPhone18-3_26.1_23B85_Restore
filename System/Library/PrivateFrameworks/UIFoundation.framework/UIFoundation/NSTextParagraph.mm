@interface NSTextParagraph
+ (id)textParagraphsForAttributedString:(id)string range:(_NSRange)range;
- (BOOL)_containsTextAttachments;
- (CGSize)estimatedIntrinsicContentSizeForTextLayoutManager:(id)manager;
- (NSAttributedString)attributedString;
- (NSTextParagraph)initWithAttributedString:(NSAttributedString *)attributedString;
- (NSTextParagraph)initWithAttributedString:(id)string range:(_NSRange)range;
- (NSTextParagraph)initWithString:(id)string attributes:(id)attributes;
- (NSTextParagraph)initWithTextAttachment:(id)attachment attributes:(id)attributes;
- (NSTextParagraph)initWithTextContentManager:(id)manager;
- (NSTextRange)paragraphContentRange;
- (NSTextRange)paragraphSeparatorRange;
- (_NSRange)rangeForLocation:(id)location allowsTrailingEdge:(BOOL)edge;
- (const)_bidiLevelsForFallbackWritingDirection:(int64_t)direction resolvedBaseWritingDirectionPointer:(int64_t *)pointer;
- (id)_textElementLocationForCharacterIndex:(unint64_t)index;
- (id)anchoredTextAttachments;
- (id)description;
- (id)locationForCharacterIndex:(int64_t)index dataSourceLocationsOnly:(BOOL)only actualRange:(_NSRange *)range;
- (id)paragraphRange;
- (int64_t)_resolvedBaseWritingDirectionWithFallbackDirection:(int64_t)direction;
- (void)_setContainsTextAttachments:(BOOL)attachments;
- (void)_setElementTextLocation:(id)location forCharacterIndex:(unint64_t)index;
- (void)dealloc;
- (void)enumerateSubstringsFromLocation:(id)location options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateSubstringsInRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block;
- (void)setAttributedString:(id)string;
- (void)setElementRange:(id)range;
- (void)setParagraphContentRange:(id)range;
- (void)setParagraphSeparatorRange:(id)range;
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
  objectEnumerator = [(NSMapTable *)textElementLocationTable objectEnumerator];
  v5 = [(NSEnumerator *)objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v10 + 1) + 8 * v8++) setTextElement:0];
      }

      while (v6 != v8);
      v6 = [(NSEnumerator *)objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  attributedString = [(NSTextParagraph *)self attributedString];
  v3 = [(NSAttributedString *)attributedString length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__NSTextParagraph_anchoredTextAttachments__block_invoke;
  v6[3] = &unk_1E7266970;
  v6[4] = &v7;
  [(NSAttributedString *)attributedString enumerateAttribute:@"NSTextParagraphAnchoredAttachment" inRange:0 options:v3 usingBlock:0x100000, v6];
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

- (void)setAttributedString:(id)string
{
  if (self->_attributedString != string)
  {
    objc_sync_enter(self);

    self->_attributedString = [string copy];
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

  string = [(NSAttributedString *)attributedString string];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p %@>", objc_opt_class(), self, string];
}

+ (id)textParagraphsForAttributedString:(id)string range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  string = [string string];
  if (location + length > [string length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21.location = location;
    v21.length = length;
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSTextElement.m" lineNumber:267 description:{@"Out-of-bounds range specified %@", NSStringFromRange(v21)}];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__NSTextParagraph_textParagraphsForAttributedString_range___block_invoke;
  v14[3] = &unk_1E7266F98;
  v14[4] = string;
  v14[5] = &v15;
  [string enumerateSubstringsInRange:location options:length usingBlock:{513, v14}];
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

- (NSTextParagraph)initWithAttributedString:(id)string range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = [(NSTextParagraph *)self initWithAttributedString:0];
  if (v7)
  {
    v7->_attributedString = string;
    v7->_range.location = location;
    v7->_range.length = length;
  }

  return v7;
}

- (NSTextParagraph)initWithTextContentManager:(id)manager
{
  v4 = [(NSTextParagraph *)self initWithAttributedString:0];
  v5 = v4;
  if (v4)
  {
    [(NSTextElement *)v4 setTextContentManager:manager];
  }

  return v5;
}

- (NSTextParagraph)initWithString:(id)string attributes:(id)attributes
{
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:string attributes:attributes];
  v7 = [(NSTextParagraph *)self initWithAttributedString:v6];
  v8 = v7;
  if (v7)
  {
    [(NSTextParagraph *)v7 setAttributes:attributes];
  }

  return v8;
}

- (void)setParagraphContentRange:(id)range
{
  objc_sync_enter(self);
  paragraphContentRange = self->_paragraphContentRange;
  if (paragraphContentRange != range)
  {

    self->_paragraphContentRange = range;
  }

  objc_sync_exit(self);
}

- (void)setParagraphSeparatorRange:(id)range
{
  objc_sync_enter(self);
  if (self->_paragraphSeparatorRange != range)
  {
    coalescingType = [(NSTextElement *)self coalescingType];
    paragraphSeparatorRange = self->_paragraphSeparatorRange;

    v7 = coalescingType & 0xF;
    self->_paragraphSeparatorRange = range;
    if (!paragraphSeparatorRange)
    {
      if ([range isEmpty])
      {
        v7 = coalescingType & 0xD | 2u;
      }

      else
      {
        attributedString = self->_attributedString;
        if (attributedString)
        {
          string = [(NSAttributedString *)attributedString string];
        }

        else
        {
          string = [(NSAttributedString *)[(NSTextParagraph *)self attributedString] string];
        }

        v10 = string;
        location = self->_range.location;
        if (location == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [(NSString *)string length];
        }

        else
        {
          v12 = self->_range.length + location;
        }

        v13 = [(NSString *)v10 characterAtIndex:v12 - 1];
        v14 = coalescingType | 4;
        if (v13 != 13)
        {
          v14 = coalescingType;
        }

        v7 = v14 & 0xD;
      }
    }

    [(NSTextElement *)self setCoalescingType:v7];
  }

  objc_sync_exit(self);
}

- (id)locationForCharacterIndex:(int64_t)index dataSourceLocationsOnly:(BOOL)only actualRange:(_NSRange *)range
{
  p_range = &self->_range;
  location = self->_range.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    length = [(NSAttributedString *)[(NSTextParagraph *)self attributedString:index] length];
    v11 = 0;
  }

  else
  {
    length = self->_range.length;
    v11 = self->_range.location;
  }

  if (length < index)
  {
    return 0;
  }

  v13 = [(NSTextContentManager *)[(NSTextElement *)self textContentManager] locationFromLocation:[(NSTextRange *)[(NSTextElement *)self elementRange] location] withOffset:index];
  v12 = v13;
  if (range && v13)
  {
    if (length <= index)
    {
      v14.length = 0;
      v14.location = v11 + index;
    }

    else
    {
      v14.location = [(NSString *)[(NSAttributedString *)self->_attributedString string] rangeOfComposedCharacterSequenceAtIndex:v11 + index];
      if (location != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = NSIntersectionRange(v14, *p_range);
      }
    }

    range->location = v14.location - v11;
    range->length = v14.length;
  }

  return v12;
}

- (_NSRange)rangeForLocation:(id)location allowsTrailingEdge:(BOOL)edge
{
  v9 = xmmword_18E856180;
  if (location && ((v4 = edge, -[NSTextRange containsLocation:](-[NSTextElement elementRange](self, "elementRange"), "containsLocation:", location)) || v4 && [-[NSTextRange endLocation](-[NSTextElement elementRange](self "elementRange")]))
  {
    [(NSTextParagraph *)self locationForCharacterIndex:[(NSTextContentManager *)[(NSTextElement *)self textContentManager] offsetFromLocation:[(NSTextRange *)[(NSTextElement *)self elementRange] location] toLocation:location] dataSourceLocationsOnly:0 actualRange:&v9];
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

- (id)_textElementLocationForCharacterIndex:(unint64_t)index
{
  objc_sync_enter(self);
  v5 = [(NSMapTable *)self->_textElementLocationTable objectForKey:index + 1];
  objc_sync_exit(self);
  return v5;
}

- (void)_setElementTextLocation:(id)location forCharacterIndex:(unint64_t)index
{
  objc_sync_enter(self);
  textElementLocationTable = self->_textElementLocationTable;
  if (!textElementLocationTable)
  {
    textElementLocationTable = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:512 capacity:0];
    self->_textElementLocationTable = textElementLocationTable;
  }

  [(NSMapTable *)textElementLocationTable setObject:location forKey:index + 1];

  objc_sync_exit(self);
}

- (void)enumerateSubstringsInRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  string = [(NSAttributedString *)self->_attributedString string];
  v10 = self->_range.location;
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  [(NSString *)string enumerateSubstringsInRange:MEMORY[0x1E69E9820] options:3221225472 usingBlock:__65__NSTextParagraph_enumerateSubstringsInRange_options_usingBlock___block_invoke, &unk_1E7266FC0, block, v10 + location, length, v10];
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

- (void)enumerateSubstringsFromLocation:(id)location options:(unint64_t)options usingBlock:(id)block
{
  paragraphContentRange = [(NSTextParagraph *)self paragraphContentRange];
  paragraphSeparatorRange = [(NSTextParagraph *)self paragraphSeparatorRange];
  location = [(NSTextRange *)paragraphContentRange location];
  endLocation = [(NSTextRange *)paragraphSeparatorRange endLocation];
  if ([location compare:location] != -1)
  {
    v13 = [location compare:endLocation];
    v14 = (options & 0x100) != 0 ? location : endLocation;
    v15 = (options & 0x100) != 0 ? location : location;
    if (v13 == -1)
    {
      endLocation = v14;
      location = v15;
    }
  }

  v16 = [(NSTextParagraph *)self rangeForLocation:location allowsTrailingEdge:0];
  v17 = [(NSTextParagraph *)self rangeForLocation:endLocation allowsTrailingEdge:1];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL && v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__NSTextParagraph_enumerateSubstringsFromLocation_options_usingBlock___block_invoke;
    v18[3] = &unk_1E7266FE8;
    v18[4] = self;
    v18[5] = block;
    [(NSTextParagraph *)self enumerateSubstringsInRange:v16 options:v17 - v16 usingBlock:options, v18];
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

- (void)setElementRange:(id)range
{
  objc_sync_enter(self);
  v6.receiver = self;
  v6.super_class = NSTextParagraph;
  [(NSTextElement *)&v6 setElementRange:range];
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
  objectEnumerator = [(NSMapTable *)textElementLocationTable objectEnumerator];
  v6 = [(NSEnumerator *)objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * i) updateBaseLocation];
      }

      v6 = [(NSEnumerator *)objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  objc_sync_exit(self);
}

- (CGSize)estimatedIntrinsicContentSizeForTextLayoutManager:(id)manager
{
  v5 = [manager textContainerForLocation:{-[NSTextRange location](-[NSTextElement elementRange](self, "elementRange"), "location")}];
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
    v14 = [objc_msgSend(objc_msgSend(manager "textSelections")];
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
  +[NSCoreTypesetter _lineMetricsForAttributes:typesetterBehavior:usesFontLeading:applySpacings:usesSystemFontLeading:usesNegativeFontLeading:layoutOrientation:lineHeight:baselineOffset:spacing:](NSCoreTypesetter, "_lineMetricsForAttributes:typesetterBehavior:usesFontLeading:applySpacings:usesSystemFontLeading:usesNegativeFontLeading:layoutOrientation:lineHeight:baselineOffset:spacing:", v14, +[NSTypesetter defaultTypesetterBehavior](NSTypesetter, "defaultTypesetterBehavior"), [manager usesFontLeading], 1, 0, 0, objc_msgSend(v8, "layoutOrientation"), &v27, 0, 0);
  if (([manager allowsFontSubstitutionAffectingVerticalMetrics] & 1) != 0 || (v18 = -[NSDictionary objectForKeyedSubscript:](v14, "objectForKeyedSubscript:", @"NSOriginalFont")) == 0)
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

- (int64_t)_resolvedBaseWritingDirectionWithFallbackDirection:(int64_t)direction
{
  resolvedBaseDirection = self->_resolvedBaseDirection;
  fallbackBaseDirection = self->_fallbackBaseDirection;
  if ((fallbackBaseDirection == direction || fallbackBaseDirection == -1) && resolvedBaseDirection != -1)
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
  baseWritingDirection = [(NSParagraphStyle *)v13 baseWritingDirection];
  v15 = baseWritingDirection;
  self->_resolvedBaseDirection = baseWritingDirection;
  if (direction == 1 || baseWritingDirection == 1 || _NSStringHasRightToLeftCharactersInRange([(NSAttributedString *)attributedString string], location, length))
  {
    resolvedBaseDirection = direction;
    if (length)
    {
      v16 = malloc_type_calloc(length, 1uLL, 0x100004077774924uLL);
      v17 = [_NSParagraphBidiLevelsProducer resolvedBaseWritingDirectionForTextContentManager:attributedString AttributedString:location paragraphRange:length baseWritingDirection:v15 fallbackBaseWritingDirection:direction bidiLevels:?];
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
  self->_fallbackBaseDirection = direction;
  return resolvedBaseDirection;
}

- (const)_bidiLevelsForFallbackWritingDirection:(int64_t)direction resolvedBaseWritingDirectionPointer:(int64_t *)pointer
{
  v6 = [(NSTextParagraph *)self _resolvedBaseWritingDirectionWithFallbackDirection:direction];
  if (pointer)
  {
    *pointer = v6;
  }

  return self->_bidiLevels;
}

- (NSTextParagraph)initWithTextAttachment:(id)attachment attributes:(id)attributes
{
  v7 = [attributes mutableCopy];
  if ([attachment embeddingType] == 1)
  {
    standaloneAlignment = [attachment standaloneAlignment];
    if (standaloneAlignment != 3)
    {
      v9 = standaloneAlignment;
      v10 = [attributes objectForKeyedSubscript:@"NSParagraphStyle"];
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
  v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttachment:attachment attributes:v7];
  v16 = [(NSTextParagraph *)self initWithAttributedString:v15];
  if ([attachment embeddingType] == 1)
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

- (void)_setContainsTextAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  objc_sync_enter(self);
  if (attachmentsCopy)
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