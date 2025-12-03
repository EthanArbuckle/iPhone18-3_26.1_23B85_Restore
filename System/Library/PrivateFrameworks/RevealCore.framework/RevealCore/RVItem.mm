@interface RVItem
- (NSString)leadingText;
- (NSString)textSearchContext;
- (NSString)trailingText;
- (NSURL)normalizedURL;
- (RVItem)initWithClientIdentifier:(id)identifier rangeInContext:(_NSRange)context;
- (RVItem)initWithCoder:(id)coder;
- (RVItem)initWithContactProperty:(int64_t)property value:(id)value rangeInContext:(_NSRange)context;
- (RVItem)initWithDDResult:(id)result;
- (RVItem)initWithDDResult:(id)result text:(id)text range:(_NSRange)range;
- (RVItem)initWithSearchQuery:(id)query rangeInContext:(_NSRange)context;
- (RVItem)initWithText:(id)text clickedIndex:(unint64_t)index selectionRanges:(id)ranges shouldUpdateSelection:(BOOL *)selection;
- (RVItem)initWithText:(id)text selectedRange:(_NSRange)range;
- (RVItem)initWithText:(id)text selectedRange:(_NSRange)range customURLParser:(id)parser;
- (RVItem)initWithURL:(id)l rangeInContext:(_NSRange)context;
- (_NSRange)highlightRange;
- (id)constrainContextSubstring:(uint64_t)substring range:(unint64_t)range leading:(unsigned __int8)leading;
- (id)getClientHintKey:(id)key ofType:(Class)type;
- (uint64_t)textContentRange;
- (void)commonInitWithText:(unint64_t)text selectedRange:(uint64_t)range customURLParser:(void *)parser lookup:;
- (void)encodeWithCoder:(id)coder;
- (void)normalizeWithParser:(uint64_t)parser lookupOnly:(void *)only;
- (void)setLeadingText:(id)text;
- (void)setTrailingText:(id)text;
@end

@implementation RVItem

- (_NSRange)highlightRange
{
  length = self->_highlightRange.length;
  location = self->_highlightRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (NSString)trailingText
{
  trailingText = self->_trailingText;
  if (!trailingText)
  {
    if (self->_text && self->_type == 2)
    {
      textContentRange = [(RVItem *)self textContentRange];
      v6 = [(RVItem *)self constrainContextSubstring:textContentRange + v5 range:[(NSString *)self->_text length]- (textContentRange + v5) leading:0];
      v7 = self->_trailingText;
      self->_trailingText = v6;

      trailingText = self->_trailingText;
    }

    else
    {
      trailingText = 0;
    }
  }

  return trailingText;
}

- (uint64_t)textContentRange
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2 && *(v1 + 8) == 2 && *(v1 + 16) == 3)
    {
      urlificationRange = [v2 urlificationRange];
      v4 = urlificationRange - [*(v1 + 32) range];
      result = *(v1 + 64) - v4;
      v5 = *(v1 + 72) + v4;
    }

    else
    {
      result = *(v1 + 64);
      v6 = *(v1 + 72);
    }
  }

  return result;
}

- (id)constrainContextSubstring:(uint64_t)substring range:(unint64_t)range leading:(unsigned __int8)leading
{
  v9 = a2;
  v10 = 0;
  if (self && substring != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = +[RVSelection maxContextLength];
    v12 = range - v11;
    if (((range > v11) & leading) == 0)
    {
      v12 = 0;
    }

    v13 = v12 + substring;
    v14 = [v9 length];
    if (v14 > v13 && (range >= v11 ? (v15 = v11) : (v15 = range), v13 + v15 <= v14 ? (v16 = v15) : (v16 = v14 - v13), v16))
    {
      if (v13)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16 == v14;
      }

      if (v17)
      {
        v18 = v9;
      }

      else
      {
        v18 = [v9 substringWithRange:v13];
      }

      v10 = v18;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)setTrailingText:(id)text
{
  textCopy = text;
  v4 = [textCopy length];
  if (v4)
  {
    v4 = [(RVItem *)self constrainContextSubstring:textCopy range:0 leading:v4, 1u];
  }

  trailingText = self->_trailingText;
  self->_trailingText = v4;
}

- (NSString)leadingText
{
  leadingText = self->_leadingText;
  if (!leadingText)
  {
    if (self->_text && self->_type == 2)
    {
      textContentRange = [(RVItem *)self textContentRange];
      v5 = [(RVItem *)self constrainContextSubstring:0 range:textContentRange leading:1u];
      v6 = self->_leadingText;
      self->_leadingText = v5;

      leadingText = self->_leadingText;
    }

    else
    {
      leadingText = 0;
    }
  }

  return leadingText;
}

- (void)setLeadingText:(id)text
{
  textCopy = text;
  v4 = [textCopy length];
  if (v4)
  {
    v4 = [(RVItem *)self constrainContextSubstring:textCopy range:0 leading:v4, 1u];
  }

  leadingText = self->_leadingText;
  self->_leadingText = v4;
}

- (id)getClientHintKey:(id)key ofType:(Class)type
{
  keyCopy = key;
  clientHints = [(RVItem *)self clientHints];
  if (clientHints)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [clientHints objectForKeyedSubscript:keyCopy];
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_6;
      }
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (NSURL)normalizedURL
{
  if (self)
  {
    [RVItem normalizeWithParser:0 lookupOnly:?];
  }

  url = self->_url;

  return url;
}

- (void)normalizeWithParser:(uint64_t)parser lookupOnly:(void *)only
{
  v68 = *MEMORY[0x277D85DE8];
  onlyCopy = only;
  if ((*(parser + 96) & 1) == 0)
  {
    *(parser + 16) = *(parser + 8);
    text = [parser text];
    v5 = text;
    v6 = *(parser + 16);
    if (v6 != 2)
    {
      goto LABEL_67;
    }

    v7 = (parser + 64);
    if (*(parser + 64) == 0x7FFFFFFFFFFFFFFFLL || ![text length])
    {
      goto LABEL_66;
    }

    v8 = *(parser + 64);
    v9 = *(parser + 72);
    v10 = [RVSelection searchRangeForString:*(parser + 48) aroundLocation:v8];
    if (v11 < 2)
    {
LABEL_52:
      if (!onlyCopy)
      {
        goto LABEL_66;
      }

      if (!v9)
      {
LABEL_56:
        *&v60 = v8;
        *(&v60 + 1) = v9;
        v43 = onlyCopy[2](onlyCopy, &v60);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = *(parser + 72);
          if (v44)
          {
            if (__PAIR128__(v44, *v7) != v60)
            {
LABEL_65:

              goto LABEL_66;
            }
          }

          else
          {
            if (!*(&v60 + 1))
            {
              goto LABEL_65;
            }

            v45 = v60;
            if (v45 >= [v5 length])
            {
              goto LABEL_65;
            }

            *v7 = v60;
          }
        }

        if (v43)
        {
          v46 = *(parser + 24);
          *(parser + 24) = v43;
          v47 = v43;

          *(parser + 16) = 1;
          goto LABEL_65;
        }

LABEL_66:
        v6 = *(parser + 16);
        goto LABEL_67;
      }

      v6 = *(parser + 16);
      if (v6 == 2)
      {
        if (v9 != *(parser + 72))
        {
LABEL_74:
          *(parser + 96) = 1;

          goto LABEL_75;
        }

        goto LABEL_56;
      }

LABEL_67:
      if (v6 == 3)
      {
        [*(parser + 32) coreResult];
        if (DDResultGetCategory() == 1)
        {
          v48 = DDResultCopyExtractedURL();
          if (v48)
          {
            v49 = [MEMORY[0x277CBEBC0] URLWithString:v48];
            if (v49)
            {
              objc_storeStrong((parser + 24), v49);
              *(parser + 16) = 1;
            }
          }
        }
      }

      goto LABEL_74;
    }

    v56 = v9;
    v59 = v10;
    v51 = v11;
    v12 = [v5 substringWithRange:{v10, v11}];
    v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
    scheme = [v13 scheme];
    v57 = v12;
    obj = v13;
    if ([scheme length])
    {
      absoluteString = [v13 absoluteString];
      if ([absoluteString length])
      {
        scheme2 = [v13 scheme];
        lowercaseString = [scheme2 lowercaseString];
        v18 = [&unk_2874ECC80 containsObject:lowercaseString];

        v12 = v57;
        if (v18)
        {
          v19 = obj;
          objc_storeStrong((parser + 24), obj);
          *(parser + 16) = 1;
          *(parser + 64) = v59;
          *(parser + 72) = v51;
LABEL_51:

          v9 = v56;
          goto LABEL_52;
        }

LABEL_12:
        v53 = v8;
        v54 = v5;
        v58 = *v7;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v52 = [objc_alloc(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:0];
        v20 = [MEMORY[0x277D04220] scanString:v12 range:0x7FFFFFFFFFFFFFFFLL configuration:0];
        v21 = [v20 countByEnumeratingWithState:&v62 objects:v67 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v63;
          v24 = *MEMORY[0x277D04048];
          do
          {
            v25 = 0;
            do
            {
              if (*v63 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v26 = *(*(&v62 + 1) + 8 * v25);
              [v26 coreResult];
              Category = DDResultGetCategory();
              if (Category)
              {
                v28 = Category == 7;
              }

              else
              {
                v28 = 1;
              }

              if (!v28)
              {
                HasType = DDResultHasType();
                if ((HasType & 1) == 0)
                {
                  v30.location = DDResultGetRangeForURLification();
                  length = v30.length;
                  v32 = v30.location + v59;
                  v33.length = *(parser + 72);
                  if (v33.length)
                  {
                    if (v30.length >= 2 && floor(v30.length * 0.66) <= v33.length)
                    {
                      v34 = v32 | 2;
                      if (v32 >= 2)
                      {
                        v30.location = v32 - 2;
                      }

                      else
                      {
                        v30.location = 0;
                      }

                      if (v32 >= 2)
                      {
                        v34 = 4;
                      }

                      v33.location = *(parser + 64);
                      v30.length += v34;
                      v35 = NSIntersectionRange(v30, v33);
                      if (v35.location == *(parser + 64) && v35.length == *(parser + 72))
                      {
LABEL_46:
                        *(parser + 64) = v32;
                        *(parser + 72) = length;
                        objc_storeStrong((parser + 32), v26);
                        *(parser + 16) = 3;
                        goto LABEL_47;
                      }
                    }
                  }

                  else if (v58 >= v32 && v58 - v32 < v30.length)
                  {
                    goto LABEL_46;
                  }
                }
              }

              ++v25;
            }

            while (v22 != v25);
            v38 = [v20 countByEnumeratingWithState:&v62 objects:v67 count:16];
            v22 = v38;
          }

          while (v38);
        }

LABEL_47:

        v12 = v57;
        if (*(parser + 16) == 2 && !*(parser + 72))
        {
          v66 = *MEMORY[0x277CD8978];
          v39 = v66;
          v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
          v41 = [objc_alloc(MEMORY[0x277CD89D8]) initWithTagSchemes:v40];
          [v41 setString:v57];
          v42 = [v57 length];
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __41__RVItem_normalizeWithParser_lookupOnly___block_invoke;
          v61[3] = &unk_279B2F9F8;
          v61[6] = v51;
          v61[7] = v58;
          v61[4] = parser;
          v61[5] = v59;
          [v41 enumerateTagsInRange:0 unit:v42 scheme:0 options:v39 usingBlock:{46, v61}];
        }

        v7 = (parser + 64);
        v5 = v54;
        v8 = v53;
        v19 = obj;
        goto LABEL_51;
      }
    }

    goto LABEL_12;
  }

LABEL_75:

  v50 = *MEMORY[0x277D85DE8];
}

void *__41__RVItem_normalizeWithParser_lookupOnly___block_invoke(void *result, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v5 = result[5] + a3;
  v6 = result[7];
  v7 = v6 >= v5;
  v8 = v6 - v5;
  if (v7)
  {
    if (v8 >= a4)
    {
      return result;
    }

    v9 = result[4];
    *(v9 + 64) = v5;
    *(v9 + 72) = a4;
  }

  *a5 = 1;
  return result;
}

- (NSString)textSearchContext
{
  if (self->_highlightRange.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSString *)self->_text length];
    if (v3)
    {
      v6 = [RVSelection searchRangeForString:self->_text aroundLocation:self->_highlightRange.location];
      if (v7 < 2)
      {
        v3 = 0;
      }

      else
      {
        v3 = [(NSString *)self->_text substringWithRange:v6, v7];
      }
    }
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_normalizedType forKey:@"normalizedType"];
  url = self->_url;
  if (url)
  {
    [coderCopy encodeObject:url forKey:@"url"];
  }

  ddResult = self->_ddResult;
  if (ddResult)
  {
    [coderCopy encodeObject:ddResult forKey:@"ddResult"];
  }

  text = self->_text;
  v7 = coderCopy;
  if (text)
  {
    [coderCopy encodeObject:text forKey:@"text"];
    v8 = NSStringFromRange(self->_highlightRange);
    [coderCopy encodeObject:v8 forKey:@"highlightRange"];

    v7 = coderCopy;
  }

  if (self->_contactPropertyValue)
  {
    [coderCopy encodeInteger:self->_contactPropertyType forKey:@"contactPropertyType"];
    [coderCopy encodeObject:self->_contactPropertyValue forKey:@"contactPropertyValue"];
    v7 = coderCopy;
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [coderCopy encodeObject:clientIdentifier forKey:@"clientIdentifier"];
    v7 = coderCopy;
  }

  leadingText = self->_leadingText;
  if (leadingText)
  {
    [coderCopy encodeObject:leadingText forKey:@"leadingText"];
    v7 = coderCopy;
  }

  trailingText = self->_trailingText;
  if (trailingText)
  {
    [coderCopy encodeObject:trailingText forKey:@"trailingText"];
    v7 = coderCopy;
  }

  originalSelectedText = self->_originalSelectedText;
  if (originalSelectedText)
  {
    [coderCopy encodeObject:originalSelectedText forKey:@"originalSelectedText"];
    v7 = coderCopy;
  }
}

- (RVItem)initWithCoder:(id)coder
{
  v32[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = RVItem;
  v5 = [(RVItem *)&v31 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_normalizedType = [coderCopy decodeIntegerForKey:@"normalizedType"];
    v6 = NSClassFromString(&cfstr_Wksecurecoding.isa);
    if (v6)
    {
      v7 = MEMORY[0x277CBEB98];
      v32[0] = v6;
      v32[1] = objc_opt_class();
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
      v9 = [v7 setWithArray:v8];
      v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"url"];
      url = v5->_url;
      v5->_url = v10;
    }

    else
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
      v8 = v5->_url;
      v5->_url = v12;
    }

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ddResult"];
    ddResult = v5->_ddResult;
    v5->_ddResult = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"highlightRange"];
    v18 = v17;
    if (v17)
    {
      v5->_highlightRange = NSRangeFromString(v17);
    }

    v5->_contactPropertyType = [coderCopy decodeIntegerForKey:@"contactPropertyType"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactPropertyValue"];
    contactPropertyValue = v5->_contactPropertyValue;
    v5->_contactPropertyValue = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"leadingText"];
    leadingText = v5->_leadingText;
    v5->_leadingText = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trailingText"];
    trailingText = v5->_trailingText;
    v5->_trailingText = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalSelectedText"];
    originalSelectedText = v5->_originalSelectedText;
    v5->_originalSelectedText = v27;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v5;
}

- (RVItem)initWithContactProperty:(int64_t)property value:(id)value rangeInContext:(_NSRange)context
{
  length = context.length;
  location = context.location;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = RVItem;
  v11 = [(RVItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = 4;
    v11->_contactPropertyType = property;
    objc_storeStrong(&v11->_contactPropertyValue, value);
    v12->_highlightRange.location = location;
    v12->_highlightRange.length = length;
    v12->_selectionType = 0;
    [RVItem normalizeWithParser:v12 lookupOnly:0];
  }

  return v12;
}

- (RVItem)initWithClientIdentifier:(id)identifier rangeInContext:(_NSRange)context
{
  length = context.length;
  location = context.location;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = RVItem;
  v9 = [(RVItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 5;
    v9->_highlightRange.location = location;
    v9->_highlightRange.length = length;
    objc_storeStrong(&v9->_clientIdentifier, identifier);
    v10->_selectionType = 0;
    [RVItem normalizeWithParser:v10 lookupOnly:0];
  }

  return v10;
}

- (RVItem)initWithText:(id)text selectedRange:(_NSRange)range customURLParser:(id)parser
{
  length = range.length;
  location = range.location;
  textCopy = text;
  parserCopy = parser;
  v14.receiver = self;
  v14.super_class = RVItem;
  v11 = [(RVItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(RVItem *)v11 commonInitWithText:textCopy selectedRange:location customURLParser:length lookup:parserCopy];
  }

  return v12;
}

- (void)commonInitWithText:(unint64_t)text selectedRange:(uint64_t)range customURLParser:(void *)parser lookup:
{
  v21 = a2;
  parserCopy = parser;
  self[1] = 2;
  v10 = [v21 copy];
  v11 = self[6];
  self[6] = v10;

  self[8] = text;
  self[9] = range;
  self[15] = range != 0;
  [RVItem normalizeWithParser:self lookupOnly:parserCopy];
  if (!self[15] && !self[9] && text < [v21 length])
  {
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v13 = [whitespaceCharacterSet characterIsMember:{objc_msgSend(v21, "characterAtIndex:", text)}];

    if (v13)
    {
      whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v15 = [v21 length];
      textCopy = text;
      do
      {
        v17 = textCopy--;
      }

      while (textCopy < v15 && ([whitespaceCharacterSet2 characterIsMember:{objc_msgSend(v21, "characterAtIndex:", textCopy)}] & 1) != 0);
      v18 = text + 1;
      do
      {
        v19 = v18;
        if (v18 >= v15)
        {
          break;
        }

        v20 = [whitespaceCharacterSet2 characterIsMember:{objc_msgSend(v21, "characterAtIndex:", v18)}];
        v18 = v19 + 1;
      }

      while ((v20 & 1) != 0);
      self[8] = v17;
      self[9] = v19 - v17;
      self[2] = 2;
    }
  }
}

- (RVItem)initWithText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v11.receiver = self;
  v11.super_class = RVItem;
  v8 = [(RVItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(RVItem *)v8 commonInitWithText:textCopy selectedRange:location customURLParser:length lookup:0];
  }

  return v9;
}

- (RVItem)initWithText:(id)text clickedIndex:(unint64_t)index selectionRanges:(id)ranges shouldUpdateSelection:(BOOL *)selection
{
  textCopy = text;
  rangesCopy = ranges;
  v24.receiver = self;
  v24.super_class = RVItem;
  v12 = [(RVItem *)&v24 init];
  if (v12)
  {
    v23 = 0;
    v13 = [RVSelection revealRangeAtIndex:index selectedRanges:rangesCopy shouldUpdateSelection:&v23];
    v15 = v14;
    firstObject = [rangesCopy firstObject];
    rangeValue = [firstObject rangeValue];
    v19 = v18;

    [(RVItem *)v12 commonInitWithText:textCopy selectedRange:v13 customURLParser:v15 lookup:0];
    if (index >= rangeValue && index - rangeValue < v19 && v19 > v12->_highlightRange.length)
    {
      v20 = [textCopy substringWithRange:{rangeValue, v19}];
      originalSelectedText = v12->_originalSelectedText;
      v12->_originalSelectedText = v20;
    }

    if (selection)
    {
      *selection = v23;
    }
  }

  return v12;
}

- (RVItem)initWithDDResult:(id)result text:(id)text range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  resultCopy = result;
  textCopy = text;
  v21.receiver = self;
  v21.super_class = RVItem;
  v12 = [(RVItem *)&v21 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = 3;
    objc_storeStrong(&v12->_ddResult, result);
    v13->_highlightRange.location = [resultCopy urlificationRange];
    v13->_highlightRange.length = v14;
    v13->_selectionType = 2;
    if (textCopy)
    {
      v15 = [textCopy copy];

      v16 = [(RVItem *)v13 constrainContextSubstring:v15 range:0 leading:location, 1u];
      leadingText = v13->_leadingText;
      v13->_leadingText = v16;

      v18 = -[RVItem constrainContextSubstring:range:leading:](v13, v15, location + length, [v15 length] - (location + length), 0);
      trailingText = v13->_trailingText;
      v13->_trailingText = v18;

      textCopy = v15;
    }

    [RVItem normalizeWithParser:v13 lookupOnly:0];
  }

  return v13;
}

- (RVItem)initWithDDResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = RVItem;
  v6 = [(RVItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 3;
    objc_storeStrong(&v6->_ddResult, result);
    v7->_highlightRange.location = [resultCopy urlificationRange];
    v7->_highlightRange.length = v8;
    v7->_selectionType = 2;
    [RVItem normalizeWithParser:v7 lookupOnly:0];
  }

  return v7;
}

- (RVItem)initWithURL:(id)l rangeInContext:(_NSRange)context
{
  length = context.length;
  location = context.location;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = RVItem;
  v9 = [(RVItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 1;
    objc_storeStrong(&v9->_url, l);
    v10->_highlightRange.location = location;
    v10->_highlightRange.length = length;
    v10->_selectionType = 0;
    [RVItem normalizeWithParser:v10 lookupOnly:0];
  }

  return v10;
}

- (RVItem)initWithSearchQuery:(id)query rangeInContext:(_NSRange)context
{
  length = context.length;
  location = context.location;
  queryCopy = query;
  v12.receiver = self;
  v12.super_class = RVItem;
  v9 = [(RVItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 6;
    objc_storeStrong(&v9->_query, query);
    v10->_highlightRange.location = location;
    v10->_highlightRange.length = length;
    v10->_selectionType = 0;
    [RVItem normalizeWithParser:v10 lookupOnly:0];
  }

  return v10;
}

@end