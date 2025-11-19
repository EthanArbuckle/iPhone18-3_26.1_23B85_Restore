@interface NSTextListElement
+ (NSTextListElement)textListElementWithChildElements:(NSArray *)children textList:(NSTextList *)textList nestingLevel:(NSInteger)nestingLevel;
+ (NSTextListElement)textListElementWithContents:(NSAttributedString *)contents markerAttributes:(NSDictionary *)markerAttributes textList:(NSTextList *)textList childElements:(NSArray *)children;
+ (_NSRange)_textListElementContentsRangeForRange:(_NSRange)a3 inAttributedString:(id)a4 hadMarker:(BOOL *)a5;
+ (id)_createChildElementsFromAttributedString:(id)a3 inRange:(_NSRange)a4 indentLevel:(int64_t)a5 includesTextListMarkers:(BOOL)a6 effectiveRange:(_NSRange *)a7 textListElementInstantiationCallback:(id)a8;
+ (id)_createElementWithChildElements:(id)a3 textList:(id)a4 nestingLevel:(int64_t)a5;
+ (id)_createTextListElementFromAttributedString:(id)a3 inRange:(_NSRange)a4 indentLevel:(int64_t)a5 includesTextListMarkers:(BOOL)a6 effectiveRange:(_NSRange *)a7 textListElementInstantiationCallback:(id)a8;
+ (id)_createUpdatedTextTabsForTextTabs:(id)a3 markerLocation:(double)a4 listLocation:(double)a5;
+ (id)_formattedAttributedStringForRootTextListElement:(id)a3;
+ (id)_rootTextListElementFromAttributedString:(id)a3 atIndex:(int64_t)a4 options:(unint64_t)a5 effectiveRange:(_NSRange *)a6 textListElementInstantiationCallback:(id)a7;
+ (id)_validatedMarkerAttributesForAttributes:(id)a3;
+ (void)_fillTextListElement:(id)a3 toAttributedString:(id)a4;
+ (void)initialize;
- (BOOL)_appendsParagraphSeparator;
- (NSAttributedString)attributedString;
- (NSTextListElement)initWithParentElement:(NSTextListElement *)parent textList:(NSTextList *)textList contents:(NSAttributedString *)contents markerAttributes:(NSDictionary *)markerAttributes childElements:(NSArray *)children;
- (NSTextListElement)textListElementWithChildElements:(id)a3;
- (_NSRange)rangeForLocation:(id)a3 allowsTrailingEdge:(BOOL)a4;
- (id)_createConfiguredParagraphStyleForParagraphStyle:(id)a3;
- (id)_markerTextAttributesForTextList:(id)a3 attributes:(id)a4;
- (id)locationForCharacterIndex:(int64_t)a3 dataSourceLocationsOnly:(BOOL)a4 actualRange:(_NSRange *)a5;
- (id)markerAttributedString;
- (int64_t)_contentsLocationOffset;
- (int64_t)_indentLevel;
- (int64_t)indentLevel;
- (void)_reparentWithTextListElement:(id)a3 itemNumber:(int64_t)a4;
- (void)dealloc;
- (void)setParagraphContentRange:(id)a3;
@end

@implementation NSTextListElement

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc_init(__NSTextListElementEditedRangeValidator);
    [NSTextContentStorage registerEditedRangeValidator:v2];
  }
}

- (NSAttributedString)attributedString
{
  objc_sync_enter(self);
  v3 = &selRef_performEditingTransactionWithBlock_;
  if (![(NSTextListElement *)self isRepresentedElement])
  {
    goto LABEL_3;
  }

  v36.receiver = self;
  v36.super_class = NSTextListElement;
  if ([(NSTextParagraph *)&v36 attributedString])
  {
    goto LABEL_3;
  }

  if (self->_markerTextAttributesForTextList || (markerAttributes = self->_markerAttributes) == 0)
  {
    markerAttributes = [(NSTextListElement *)self _markerTextAttributesForTextList:self->_textList attributes:[(NSAttributedString *)self->_contents attributesAtIndex:0 effectiveRange:0]];
  }

  v7 = [(NSDictionary *)markerAttributes objectForKeyedSubscript:?];
  v8 = [(NSDictionary *)markerAttributes objectForKeyedSubscript:@"CTAdaptiveImageProvider"];
  if (v7 | v8)
  {
    v34 = [(NSDictionary *)markerAttributes mutableCopy];
    if (v7)
    {
      [(NSDictionary *)v34 removeObjectForKey:@"NSAttachment"];
    }

    markerAttributes = v34;
    if (v8)
    {
      [(NSDictionary *)v34 removeObjectForKey:@"CTAdaptiveImageProvider"];
    }
  }

  else
  {
    v34 = 0;
  }

  markerTextAttributeOverrides = self->_markerTextAttributeOverrides;
  if (markerTextAttributeOverrides && (v10 = markerTextAttributeOverrides[2](markerTextAttributeOverrides, self, markerAttributes)) != 0)
  {
    v11 = [(NSDictionary *)markerAttributes isEqualToDictionary:v10];
    if (!v11)
    {
      markerAttributes = v10;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F01AD578 attributes:markerAttributes];
  v13 = [(NSDictionary *)markerAttributes objectForKeyedSubscript:?];
  v33 = [(NSTextListElement *)self _appendsParagraphSeparator];
  if (self->_contentsOnly && (v14 = [(NSTextElement *)self textContentManager], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = [(NSTextContentManager *)v14 includesTextListMarkers]^ 1;
  }

  else
  {
    v15 = 1;
  }

  if (v13)
  {
    v16 = v11;
  }

  else
  {
    v16 = 1;
  }

  if (v16 != 1)
  {
    [v13 defaultTabInterval];
    if (v19 <= 0.0)
    {
      v18 = [objc_msgSend(v13 "tabStops")] == 0;
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v17 = [(NSTextListElement *)self _createConfiguredParagraphStyleForParagraphStyle:v13];
  if (!v17)
  {
LABEL_30:
    v18 = 0;
    goto LABEL_32;
  }

  v18 = 0;
  v13 = v17;
LABEL_32:
  [v12 beginEditing];
  if (v15)
  {
    v32 = [(NSTextList *)self->_textList markerTextAttachment];
    v20 = [(NSTextListElement *)self _markerString];
    v31 = [v20 length];
    v21 = [v12 mutableString];
    if (v18)
    {
      v22 = @"%@";
    }

    else
    {
      v22 = @"\t%@\t";
    }

    [v21 appendFormat:v22, v20];
    v23 = !v18;
    if (([(NSTextList *)self->_textList listOptions]& 1) != 0)
    {
      for (i = [(NSTextListElement *)self parentElement]; i; i = [(NSTextListElement *)i parentElement])
      {
        if ([(NSTextListElement *)i isRepresentedElement])
        {
          v30 = [(NSTextListElement *)i _markerString];
          [objc_msgSend(v12 "mutableString")];
          v23 += [v30 length];
        }
      }
    }

    if (v32 && [v20 isEqualToString:@"\uFFFC"])
    {
      [v12 addAttribute:@"NSAttachment" value:v32 range:{v23, v31}];
    }
  }

  self->_contentsLocationOffset = [v12 length];
  if (v33)
  {
    [objc_msgSend(v12 "mutableString")];
  }

  [v12 addAttributes:markerAttributes range:{0, objc_msgSend(v12, "length")}];
  if ([(NSAttributedString *)self->_contents length])
  {
    [v12 replaceCharactersInRange:objc_msgSend(v12 withAttributedString:{"length") - v33, 0, self->_contents}];
  }

  else if (!v18)
  {
    v24 = [(NSDictionary *)self->_markerAttributes objectForKeyedSubscript:@"NSFont"];
    if (v24)
    {
      if (([v24 isEqual:{-[NSDictionary objectForKeyedSubscript:](markerAttributes, "objectForKeyedSubscript:", @"NSFont"}] & 1) == 0)
      {
        [v12 addAttribute:@"NSFont" value:v24 range:{self->_contentsLocationOffset - 1, 1}];
      }
    }
  }

  [v12 addAttribute:@"NSParagraphStyle" value:v13 range:{0, objc_msgSend(v12, "length")}];
  [v12 endEditing];

  [(NSTextParagraph *)self setAttributedString:v12];
  v25 = [(NSTextContentManager *)[(NSTextElement *)self textContentManager] offsetFromLocation:[(NSTextRange *)[(NSTextElement *)self elementRange] location] toLocation:[(NSTextRange *)[(NSTextParagraph *)self paragraphContentRange] location]];
  v3 = &selRef_performEditingTransactionWithBlock_;
  if (v25 >= 1)
  {
    contentsLocationOffset = self->_contentsLocationOffset;
    v27 = contentsLocationOffset < v25;
    v28 = contentsLocationOffset - v25;
    if (!v27)
    {
      self->_contentsLocationOffset = v28;
    }
  }

LABEL_3:
  objc_sync_exit(self);
  v4 = v3[178];
  v35.receiver = self;
  v35.super_class = v4;
  return [(NSTextParagraph *)&v35 attributedString];
}

- (BOOL)_appendsParagraphSeparator
{
  v3 = [(NSTextElement *)self textContentManager];
  if (![-[NSTextRange endLocation](-[NSTextElement elementRange](self "elementRange")])
  {
    return 1;
  }

  return [(NSTextContentManager *)v3 containsExtraLineFragment];
}

- (int64_t)_indentLevel
{
  result = self->_indentLevel;
  if (result < 0)
  {
    result = [(NSTextListElement *)self parentElement];
    if (result)
    {
      result = [result _indentLevel] + 1;
    }

    self->_indentLevel = result;
  }

  return result;
}

- (void)_reparentWithTextListElement:(id)a3 itemNumber:(int64_t)a4
{
  objc_sync_enter(self);
  [(NSTextListElement *)self setParentElement:a3];
  self->_indentLevel = -1;
  self->_itemNumber = a4;
  [(NSTextParagraph *)self setAttributedString:0];

  objc_sync_exit(self);
}

+ (id)_createUpdatedTextTabsForTextTabs:(id)a3 markerLocation:(double)a4 listLocation:(double)a5
{
  v21[2] = *MEMORY[0x1E69E9840];
  v8 = [a3 mutableCopy];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3010000000;
  v18 = "";
  v19 = 0;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__NSTextListElement__createUpdatedTextTabsForTextTabs_markerLocation_listLocation___block_invoke;
  v14[3] = &unk_1E7266B78;
  *&v14[5] = a5;
  v14[4] = &v15;
  [a3 enumerateObjectsUsingBlock:v14];
  v9 = [NSTextTab alloc];
  v10 = [(NSTextTab *)v9 initWithTextAlignment:4 location:MEMORY[0x1E695E0F8] options:a4];
  v11 = [NSTextTab alloc];
  v12 = [(NSTextTab *)v11 initWithTextAlignment:4 location:MEMORY[0x1E695E0F8] options:a5];
  v21[0] = v10;
  v21[1] = v12;
  [v8 replaceObjectsInRange:v16[4] withObjectsFromArray:{v16[5], objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v21, 2)}];

  _Block_object_dispose(&v15, 8);
  return v8;
}

uint64_t __83__NSTextListElement__createUpdatedTextTabsForTextTabs_markerLocation_listLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 location];
  if (v7 <= *(a1 + 40))
  {
    ++*(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

- (id)_createConfiguredParagraphStyleForParagraphStyle:(id)a3
{
  if (a3)
  {
    v4 = [a3 mutableCopy];
  }

  else
  {
    v4 = objc_alloc_init(NSMutableParagraphStyle);
  }

  v5 = v4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(NSTextListElement *)self _indentLevel];
  [(NSTextListElement *)self _indentOffset];
  v9 = v8 * v7;
  [(NSTextListElement *)self _markerOffset];
  v11 = v9 - v10;
  [(NSMutableParagraphStyle *)v5 setFirstLineHeadIndent:0.0];
  [(NSMutableParagraphStyle *)v5 setHeadIndent:v9];
  v12 = [objc_opt_class() _createUpdatedTextTabsForTextTabs:-[NSParagraphStyle tabStops](v5 markerLocation:"tabStops") listLocation:{v11, v9}];
  [(NSMutableParagraphStyle *)v5 setTabStops:v12];

  for (i = self; [(NSTextListElement *)i parentElement]; self = i)
  {
    [v6 insertObject:-[NSTextListElement textList](self atIndex:{"textList"), 0}];
    i = [(NSTextListElement *)self parentElement];
  }

  [(NSMutableParagraphStyle *)v5 setTextLists:v6];

  return v5;
}

+ (id)_validatedMarkerAttributesForAttributes:(id)a3
{
  v4 = 0;
  v5 = 0;
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"NSAttachment";
  v8[1] = @"CTAdaptiveImageProvider";
  v8[2] = @"NSTextHighlightStyle";
  v8[3] = @"NSLink";
  do
  {
    v6 = v8[v4];
    if ([a3 objectForKeyedSubscript:v6])
    {
      if (!v5)
      {
        v5 = [a3 mutableCopy];
      }

      [v5 removeObjectForKey:v6];
    }

    ++v4;
  }

  while (v4 != 4);
  if (v5)
  {
    return v5;
  }

  else
  {
    return a3;
  }
}

+ (id)_createElementWithChildElements:(id)a3 textList:(id)a4 nestingLevel:(int64_t)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v9 = [[a1 alloc] initWithParentElement:0 textList:a4 contents:0 markerAttributes:0 childElements:a3];
  v10 = v9;
  if (a5 < 1)
  {
    if (a5 < 0)
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = *MEMORY[0x1E695D940];
      v14 = objc_opt_class();
      [v12 raise:v13 format:{@"-[%@ %@] receiving negative nesting level %ld", v14, NSStringFromSelector(a2), a5}];
    }
  }

  else
  {
    v16[0] = v9;
    v11 = [a1 _createElementWithChildElements:objc_msgSend(MEMORY[0x1E695DEC8] textList:"arrayWithObjects:count:" nestingLevel:{v16, 1), a4, a5 - 1}];

    return v11;
  }

  return v10;
}

+ (void)_fillTextListElement:(id)a3 toAttributedString:(id)a4
{
  v7 = [a3 attributedString];
  if (v7)
  {
    [a4 appendAttributedString:v7];
  }

  v8 = [a3 childElements];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__NSTextListElement__fillTextListElement_toAttributedString___block_invoke;
  v9[3] = &unk_1E7266BA0;
  v9[4] = a1;
  v9[5] = a4;
  [v8 enumerateObjectsUsingBlock:v9];
}

+ (id)_formattedAttributedStringForRootTextListElement:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
  [v5 beginEditing];
  [a1 _fillTextListElement:a3 toAttributedString:v5];
  [v5 endEditing];

  return v5;
}

+ (_NSRange)_textListElementContentsRangeForRange:(_NSRange)a3 inAttributedString:(id)a4 hadMarker:(BOOL *)a5
{
  length = a3.length;
  location = a3.location;
  v8 = [a4 string];
  theString = v8;
  v27 = location;
  v28 = length;
  CharactersPtr = CFStringGetCharactersPtr(v8);
  v25 = CharactersPtr;
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v8, 0x600u);
  }

  v29 = 0;
  v30 = 0;
  v26 = CStringPtr;
  if (length > 0)
  {
    memset(v23, 0, sizeof(v23));
    if (CharactersPtr)
    {
      v11 = 0;
      v12 = CharactersPtr[location];
    }

    else if (CStringPtr)
    {
      v11 = 0;
      v12 = CStringPtr[location];
    }

    else
    {
      v13.length = length >= 0x40 ? 64 : length;
      v30 = v13.length;
      v13.location = location;
      CFStringGetCharacters(v8, v13, v23);
      v11 = v29;
      v12 = *(v23 - v29);
    }

    if (v12 == 9 && length != 1)
    {
      v15 = 1;
      do
      {
        v16 = v28;
        if (v28 <= v15)
        {
          v18 = v15 + 1;
        }

        else
        {
          if (v25)
          {
            v17 = v25[v27 + v15];
          }

          else if (v26)
          {
            v17 = v26[v27 + v15];
          }

          else
          {
            if (v30 <= v15 || v11 > v15)
            {
              v20 = v15 - 4;
              if (v15 < 4)
              {
                v20 = 0;
              }

              if (v20 + 64 < v28)
              {
                v16 = v20 + 64;
              }

              v29 = v20;
              v30 = v16;
              v32.length = v16 - v20;
              v32.location = v27 + v20;
              CFStringGetCharacters(theString, v32, v23);
              v11 = v29;
            }

            v17 = *(v23 + v15 - v11);
          }

          v18 = v15 + 1;
          if (v17 == 9)
          {
            length -= v18;
            location += v18;
            *a5 = v15 > 1;
            break;
          }
        }

        v15 = v18;
      }

      while (v18 < length);
    }
  }

  v21 = location;
  v22 = length;
  result.length = v22;
  result.location = v21;
  return result;
}

+ (id)_createTextListElementFromAttributedString:(id)a3 inRange:(_NSRange)a4 indentLevel:(int64_t)a5 includesTextListMarkers:(BOOL)a6 effectiveRange:(_NSRange *)a7 textListElementInstantiationCallback:(id)a8
{
  v32 = a6;
  length = a4.length;
  location = a4.location;
  v12 = a8;
  v38 = 0;
  v39 = 0;
  v13 = a5 + 1;
  v37 = 0;
  [objc_msgSend(a3 "string")];
  v43.location = v39;
  v43.length = v37 - v39;
  v41.location = location;
  v41.length = length;
  v14 = NSIntersectionRange(v41, v43);
  v40 = v14;
  v44.location = v39;
  v44.length = v38 - v39;
  v42.location = location;
  v42.length = length;
  v33 = NSIntersectionRange(v42, v44);
  v34 = a3;
  v15 = [a3 attributesAtIndex:location effectiveRange:0];
  v16 = [objc_msgSend(v15 objectForKeyedSubscript:{@"NSParagraphStyle", "textLists"}];
  v17 = [v16 count];
  if (v17 == v13)
  {
    v18 = 0;
    v36.location = 0;
    v36.length = 0;
    if (v14.length + v14.location >= location && v14.length + v14.location - location < length)
    {
      v18 = 0;
      if ([objc_msgSend(objc_msgSend(objc_msgSend(v34 attributesAtIndex:v14.length + v14.location effectiveRange:{0), "objectForKeyedSubscript:", @"NSParagraphStyle", "textLists"), "count"}] > v13)
      {
        v18 = [a1 _createChildElementsFromAttributedString:v34 inRange:v14.length + v14.location indentLevel:location + length - (v14.length + v14.location) includesTextListMarkers:v13 effectiveRange:v32 textListElementInstantiationCallback:{&v36, a8}];
      }
    }

    v35 = 0;
    if (v32)
    {
      v19 = [a1 _textListElementContentsRangeForRange:v33 inAttributedString:v34 hadMarker:&v35];
      v21 = v20;
      if (v20)
      {
LABEL_8:
        v22 = [v34 attributedSubstringFromRange:{v19, v21}];
        goto LABEL_15;
      }
    }

    else
    {
      v21 = v33.length;
      v19 = v33.location;
      if (v33.length)
      {
        goto LABEL_8;
      }
    }

    v22 = 0;
LABEL_15:
    v26 = -[NSTextListElement initWithParentElement:textList:contents:markerAttributes:childElements:]([NSTextListElement alloc], "initWithParentElement:textList:contents:markerAttributes:childElements:", 0, [v16 lastObject], v22, +[NSTextListElement _validatedMarkerAttributesForAttributes:](NSTextListElement, "_validatedMarkerAttributesForAttributes:", v15), v18);
    if (v18)
    {
      v33.length = v19 + v21 - v14.location;
      v40 = NSUnionRange(v14, v36);

      v27 = v14.location;
      v24 = a7;
      v12 = a8;
    }

    else
    {
      v27 = v33.location;
      v24 = a7;
      v12 = a8;
      if (v33 != __PAIR128__(v21, v19))
      {
        v28 = v33.length;
        if ((v35 & 1) == 0)
        {
          v28 = v21;
        }

        v33.length = v28;
        if ((v35 & 1) == 0)
        {
          v27 = v19;
        }
      }
    }

    goto LABEL_27;
  }

  if (v17 <= v13)
  {
    return 0;
  }

  v23 = [a1 _createChildElementsFromAttributedString:v34 inRange:location indentLevel:length includesTextListMarkers:v13 effectiveRange:v32 textListElementInstantiationCallback:{&v40, a8}];
  if ([v23 count])
  {
    v24 = a7;
    if (a5 < 0)
    {
      v25 = [v16 firstObject];
    }

    else
    {
      v25 = [v16 objectAtIndexedSubscript:a5];
    }

    v26 = [a1 _createElementWithChildElements:v23 textList:v25 nestingLevel:0];
  }

  else
  {
    v26 = 0;
    v24 = a7;
  }

  v27 = v33.location;
LABEL_27:
  if (v26)
  {
    if (v12)
    {
      v12[2](v12, v26, v34, v40.location, v40.length, v27, v33.length);
    }

    if (v24)
    {
      *v24 = v40;
    }
  }

  return v26;
}

+ (id)_createChildElementsFromAttributedString:(id)a3 inRange:(_NSRange)a4 indentLevel:(int64_t)a5 includesTextListMarkers:(BOOL)a6 effectiveRange:(_NSRange *)a7 textListElementInstantiationCallback:(id)a8
{
  v8 = a6;
  length = a4.length;
  location = a4.location;
  v27.location = 0;
  v27.length = 0;
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = a1;
  v15 = a1;
  v16 = v8;
  v17 = [v15 _createTextListElementFromAttributedString:a3 inRange:location indentLevel:length includesTextListMarkers:a5 effectiveRange:v8 textListElementInstantiationCallback:{&v27, a8}];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = v27.location;
        v19 = v27.length;
      }

      else
      {
        v28.location = v20;
        v28.length = v19;
        v21 = NSUnionRange(v28, v27);
        v20 = v21.location;
        v19 = v21.length;
      }

      [v26 addObject:v18];

      if (v27.length + v27.location < location || v27.length + v27.location - location >= length)
      {
        break;
      }

      v18 = [v14 _createTextListElementFromAttributedString:a3 inRange:v27.length + v27.location indentLevel:location + length - (v27.length + v27.location) includesTextListMarkers:a5 effectiveRange:v16 textListElementInstantiationCallback:{&v27, a8}];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v23 = v26;
  if ([v26 count])
  {
    if (a7)
    {
      a7->location = v20;
      a7->length = v19;
    }
  }

  else
  {

    return 0;
  }

  return v23;
}

+ (id)_rootTextListElementFromAttributedString:(id)a3 atIndex:(int64_t)a4 options:(unint64_t)a5 effectiveRange:(_NSRange *)a6 textListElementInstantiationCallback:(id)a7
{
  v9 = a5;
  if ([a3 length] <= a4)
  {
    return 0;
  }

  result = [objc_msgSend(objc_msgSend(objc_msgSend(a3 attributesAtIndex:a4 effectiveRange:{0), "objectForKeyedSubscript:", @"NSParagraphStyle", "textLists"), "firstObject"}];
  if (!result)
  {
    return result;
  }

  v14 = [a3 rangeOfTextList:result atIndex:a4];
  if (!v15)
  {
    return 0;
  }

  v16 = v14;
  v17 = v15;
  v22 = v14;
  v23 = v15;
  do
  {
    v18 = [a3 attribute:@"NSAttachment" atIndex:v16 longestEffectiveRange:&v22 inRange:{v16, v17}];
    if (!v18)
    {
      break;
    }

    if ([v18 embeddingType] != 1)
    {
      break;
    }

    v19 = v17 + v16;
    v16 = v23 + v22;
    v17 = v19 - (v23 + v22);
  }

  while (v19 != v23 + v22);
  v22 = v16;
  if (v16 < v17 + v16)
  {
    v20 = v16;
    while (1)
    {
      v21 = [a3 attribute:@"NSAttachment" atIndex:v20 longestEffectiveRange:&v22 inRange:{v16, v17}];
      if (v21)
      {
        if ([v21 embeddingType] == 1)
        {
          break;
        }
      }

      v20 = v22 + v23;
      v22 = v20;
      if (v20 >= v17 + v16)
      {
        goto LABEL_17;
      }
    }

    v17 = v22 - v16;
  }

LABEL_17:
  result = 0;
  if (a4 >= v16 && a4 - v16 < v17)
  {
    result = [a1 _createTextListElementFromAttributedString:a3 inRange:v16 indentLevel:v17 includesTextListMarkers:-1 effectiveRange:v9 & 1 textListElementInstantiationCallback:{a6, a7}];
    if (result)
    {
      return result;
    }
  }

  return result;
}

- (id)_markerTextAttributesForTextList:(id)a3 attributes:(id)a4
{
  markerTextAttributesForTextList = self->_markerTextAttributesForTextList;
  if (markerTextAttributesForTextList)
  {
    v6 = markerTextAttributesForTextList[2](markerTextAttributesForTextList, a3);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 count];
  v8 = [a4 count];
  if (v7 < 1)
  {
    v9 = 0;
  }

  else if (v8 < 1)
  {
    v9 = 0;
    a4 = v6;
  }

  else
  {
    v9 = [a4 mutableCopy];
    [v9 addEntriesFromDictionary:v6];
    a4 = v9;
  }

  if (![v6 objectForKeyedSubscript:@"NSFont"])
  {
    v11 = [a4 objectForKeyedSubscript:@"NSFont"];
    v12 = [v11 fontDescriptor];
    if ((CTFontDescriptorGetSymbolicTraits() & 3) != 0)
    {
      CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v12, 0, 3u);
      [v11 pointSize];
      v14 = [UIFont fontWithDescriptor:CopyWithSymbolicTraits size:?];
      CFRelease(CopyWithSymbolicTraits);
      if (v14)
      {
        if (([(UIFont *)v14 isEqual:v11]& 1) == 0)
        {
          if (!v9)
          {
            v9 = [a4 mutableCopy];
            a4 = v9;
          }

          [v9 setObject:v14 forKeyedSubscript:@"NSFont"];
        }
      }
    }
  }

  return a4;
}

- (int64_t)indentLevel
{
  objc_sync_enter(self);
  v3 = [(NSTextListElement *)self _indentLevel];
  objc_sync_exit(self);
  return v3;
}

- (int64_t)_contentsLocationOffset
{
  if (!self->_contentsOnly)
  {
    return 0;
  }

  [(NSTextListElement *)self attributedString];
  return self->_contentsLocationOffset;
}

- (NSTextListElement)initWithParentElement:(NSTextListElement *)parent textList:(NSTextList *)textList contents:(NSAttributedString *)contents markerAttributes:(NSDictionary *)markerAttributes childElements:(NSArray *)children
{
  if (contents | markerAttributes || [(NSArray *)children count])
  {
    v23.receiver = self;
    v23.super_class = NSTextListElement;
    v14 = [(NSTextParagraph *)&v23 initWithAttributedString:0];
    if (v14)
    {
      objc_initWeak(&location, v14);
      [(NSTextListElement *)v14 setParentElement:parent];
      v14->_textList = textList;
      v14->_contents = [(NSAttributedString *)contents copy];
      v14->_markerAttributes = [(NSDictionary *)markerAttributes copy];
      v14->_childElements = [(NSArray *)children copy];
      v15 = [(NSTextList *)textList startingItemNumber];
      childElements = v14->_childElements;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __92__NSTextListElement_initWithParentElement_textList_contents_markerAttributes_childElements___block_invoke;
      v20[3] = &unk_1E7266BC8;
      objc_copyWeak(v21, &location);
      v21[1] = v15;
      [(NSArray *)childElements enumerateObjectsUsingBlock:v20];
      v14->_indentLevel = -1;
      v17 = [(NSTextElement *)v14 coalescingType];
      v18 = v17 | 8u;
      if (!parent && !v14->_contents && [(NSArray *)v14->_childElements count])
      {
        v18 = v17 | 9 | [-[NSArray lastObject](v14->_childElements "lastObject")] & 2;
      }

      [(NSTextElement *)v14 setCoalescingType:v18];
      objc_destroyWeak(v21);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    if ([(NSArray *)children count])
    {
      [NSTextListElement initWithParentElement:a2 textList:self contents:children markerAttributes:? childElements:?];
    }

    return 0;
  }

  return v14;
}

uint64_t __92__NSTextListElement_initWithParentElement_textList_contents_markerAttributes_childElements___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  Weak = objc_loadWeak((a1 + 32));
  v7 = *(a1 + 40) + a3;

  return [a2 _reparentWithTextListElement:Weak itemNumber:v7];
}

- (void)dealloc
{
  [(NSTextListElement *)self setParentElement:0];

  v3.receiver = self;
  v3.super_class = NSTextListElement;
  [(NSTextParagraph *)&v3 dealloc];
}

+ (NSTextListElement)textListElementWithContents:(NSAttributedString *)contents markerAttributes:(NSDictionary *)markerAttributes textList:(NSTextList *)textList childElements:(NSArray *)children
{
  v10 = [a1 alloc];
  if ([(NSAttributedString *)contents length])
  {
    v11 = contents;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v10 initWithParentElement:0 textList:textList contents:v11 markerAttributes:markerAttributes childElements:children];

  return v12;
}

+ (NSTextListElement)textListElementWithChildElements:(NSArray *)children textList:(NSTextList *)textList nestingLevel:(NSInteger)nestingLevel
{
  v5 = [a1 _createElementWithChildElements:children textList:textList nestingLevel:nestingLevel];

  return v5;
}

- (void)setParagraphContentRange:(id)a3
{
  v7.receiver = self;
  v7.super_class = NSTextListElement;
  [(NSTextParagraph *)&v7 setParagraphContentRange:?];
  if (a3)
  {
    [a3 range];
    v6 = v5 == [(NSAttributedString *)self->_contents length];
  }

  else
  {
    v6 = 0;
  }

  self->_contentsOnly = v6;
}

- (id)markerAttributedString
{
  v3 = [(NSTextListElement *)self attributedString];
  if (!self->_contentsOnly)
  {
    return 0;
  }

  v4 = v3;
  contentsLocationOffset = self->_contentsLocationOffset;
  if (contentsLocationOffset > [(NSAttributedString *)v3 length])
  {
    return 0;
  }

  v7 = self->_contentsLocationOffset;

  return [(NSAttributedString *)v4 attributedSubstringFromRange:0, v7];
}

- (id)locationForCharacterIndex:(int64_t)a3 dataSourceLocationsOnly:(BOOL)a4 actualRange:(_NSRange *)a5
{
  v9 = [(NSTextListElement *)self _contentsLocationOffset];
  v10 = [(NSAttributedString *)[(NSTextListElement *)self attributedString] length];
  if (v10 < a3)
  {
    return 0;
  }

  v12 = v10;
  v13 = __OFSUB__(a3, v9);
  v14 = a3 - v9;
  if (v14 < 0 == v13)
  {
    v17.receiver = self;
    v17.super_class = NSTextListElement;
    v11 = [(NSTextParagraph *)&v17 locationForCharacterIndex:v14 dataSourceLocationsOnly:0 actualRange:0];
    if (!a5)
    {
      return v11;
    }

    goto LABEL_11;
  }

  if (a4)
  {
    return 0;
  }

  objc_sync_enter(self);
  v11 = [(NSTextParagraph *)self _textElementLocationForCharacterIndex:a3];
  if (!v11)
  {
    v11 = [[_NSTextElementLocation alloc] initWithTextElement:self baseLocation:[(NSTextRange *)[(NSTextElement *)self elementRange] location] offset:v14];
    [(NSTextParagraph *)self _setElementTextLocation:v11 forCharacterIndex:a3];
  }

  objc_sync_exit(self);
  if (a5)
  {
LABEL_11:
    if (v11)
    {
      if (v12 == a3)
      {
        v15 = 0;
      }

      else
      {
        a3 = [(NSString *)[(NSAttributedString *)[(NSTextListElement *)self attributedString] string] rangeOfComposedCharacterSequenceAtIndex:a3];
      }

      a5->location = a3;
      a5->length = v15;
    }
  }

  return v11;
}

- (_NSRange)rangeForLocation:(id)a3 allowsTrailingEdge:(BOOL)a4
{
  v11 = xmmword_18E856180;
  if (a3 && ((v4 = a4, -[NSTextRange containsLocation:](-[NSTextElement elementRange](self, "elementRange"), "containsLocation:", a3)) || v4 && [-[NSTextRange endLocation](-[NSTextElement elementRange](self "elementRange")]))
  {
    v7 = [(NSTextContentManager *)[(NSTextElement *)self textContentManager] offsetFromLocation:[(NSTextRange *)[(NSTextElement *)self elementRange] location] toLocation:a3];
    v8 = [(NSTextListElement *)self _contentsLocationOffset]+ v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [a3 textElement] == self)
    {
      v8 += [a3 offset];
    }

    [(NSTextListElement *)self locationForCharacterIndex:v8 dataSourceLocationsOnly:0 actualRange:&v11];
    v10 = *(&v11 + 1);
    v9 = v11;
  }

  else
  {
    v10 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result.length = v10;
  result.location = v9;
  return result;
}

- (NSTextListElement)textListElementWithChildElements:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithParentElement:-[NSTextListElement parentElement](self textList:"parentElement") contents:self->_textList markerAttributes:self->_contents childElements:{self->_markerAttributes, a3}];

  return v3;
}

@end