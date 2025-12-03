@interface UITextFormattingViewControllerFormattingDescriptor
+ (BOOL)_canToggleTrait:(unsigned int)trait forFont:(id)font;
+ (BOOL)_canToggleTrait:(unsigned int)trait forFont:(id)font inText:(id)text;
- (BOOL)isEqual:(id)equal;
- (UITextFormattingViewControllerFormattingDescriptor)init;
- (UITextFormattingViewControllerFormattingDescriptor)initWithAttributes:(id)attributes;
- (UITextFormattingViewControllerFormattingDescriptor)initWithCoder:(id)coder;
- (UITextFormattingViewControllerFormattingDescriptor)initWithString:(id)string range:(_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setListStyle:(int64_t)style;
@end

@implementation UITextFormattingViewControllerFormattingDescriptor

+ (BOOL)_canToggleTrait:(unsigned int)trait forFont:(id)font
{
  fontCopy = font;
  v6 = sub_189077318(trait);
  sub_188A34624(0, &qword_1ED48C4A0);
  v7 = sub_18A4A7C88();

  return (v7 & 1) == 0;
}

+ (BOOL)_canToggleTrait:(unsigned int)trait forFont:(id)font inText:(id)text
{
  v7 = sub_18A4A7288();
  v9 = v8;
  fontCopy = font;
  LOBYTE(trait) = sub_189076044(trait, v7, v9);

  return trait & 1;
}

- (UITextFormattingViewControllerFormattingDescriptor)init
{
  v10.receiver = self;
  v10.super_class = UITextFormattingViewControllerFormattingDescriptor;
  v2 = [(UITextFormattingViewControllerFormattingDescriptor *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    textAlignments = v2->_textAlignments;
    v2->_textAlignments = v3;

    v5 = objc_opt_new();
    textLists = v2->_textLists;
    v2->_textLists = v5;

    v7 = objc_opt_new();
    highlights = v2->_highlights;
    v2->_highlights = v7;

    v2->__blockquote = 0;
    v2->_strikethrough = 0;
    v2->_listStyle = 0;
    v2->_underline = 0;
    *&v2->__canToggleBold = 257;
  }

  return v2;
}

- (UITextFormattingViewControllerFormattingDescriptor)initWithString:(id)string range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if (location + length <= [stringCopy length])
  {
    v9 = [stringCopy attributesAtIndex:location effectiveRange:0];
    v10 = [v9 mutableCopy];

    v11 = objc_opt_new();
    v12 = objc_opt_new();
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = __Block_byref_object_copy__100;
    v33[4] = __Block_byref_object_dispose__100;
    v34 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __75__UITextFormattingViewControllerFormattingDescriptor_initWithString_range___block_invoke;
    v27[3] = &unk_1E710B090;
    v15 = v11;
    v28 = v15;
    v26 = v12;
    v29 = v26;
    v32 = v33;
    v25 = v13;
    v30 = v25;
    v16 = v14;
    v31 = v16;
    [stringCopy enumerateAttributesInRange:location options:length usingBlock:{0, v27}];
    if ([v15 count] >= 2)
    {
      [v10 setValue:v15 forKey:*off_1E70EC918];
    }

    if ([v26 count] >= 2)
    {
      [v10 setValue:v26 forKey:*off_1E70EC988];
    }

    if ([v25 count] >= 2)
    {
      [v10 setValue:v25 forKey:*off_1E70ECA08];
    }

    if ([v16 count] >= 2)
    {
      [v10 setValue:v16 forKey:*off_1E70ECA40];
    }

    v17 = [(UITextFormattingViewControllerFormattingDescriptor *)self initWithAttributes:v10];
    if ([v15 count])
    {
      v24 = v10;
      firstObject = [v15 firstObject];
      string = [stringCopy string];
      v20 = [string substringWithRange:{location, length}];
      [(UITextFormattingViewControllerFormattingDescriptor *)v17 set_canToggleBold:[UITextFormattingViewControllerFormattingDescriptor _canToggleTrait:2 forFont:firstObject inText:v20]];

      string2 = [stringCopy string];
      v22 = [string2 substringWithRange:{location, length}];
      [(UITextFormattingViewControllerFormattingDescriptor *)v17 set_canToggleItalic:[UITextFormattingViewControllerFormattingDescriptor _canToggleTrait:1 forFont:firstObject inText:v22]];

      v10 = v24;
    }

    v8 = v17;

    _Block_object_dispose(v33, 8);
  }

  else
  {
    v8 = [(UITextFormattingViewControllerFormattingDescriptor *)self initWithAttributes:MEMORY[0x1E695E0F8]];
  }

  return v8;
}

void __75__UITextFormattingViewControllerFormattingDescriptor_initWithString_range___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 objectForKeyedSubscript:*off_1E70EC978];
  if (v3 || ([v13 objectForKeyedSubscript:*off_1E70EC918], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
  }

  v5 = [v13 objectForKeyedSubscript:*off_1E70EC988];
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  v6 = [v13 objectForKeyedSubscript:*off_1E70ECA08];
  if (v6)
  {
    v7 = *(*(*(a1 + 64) + 8) + 40);
    if (v7 || ([MEMORY[0x1E696AD98] numberWithBool:objc_opt_respondsToSelector() & 1], v8 = objc_claimAutoreleasedReturnValue(), v9 = *(*(a1 + 64) + 8), v10 = *(v9 + 40), *(v9 + 40) = v8, v10, (v7 = *(*(*(a1 + 64) + 8) + 40)) != 0))
    {
      if ([v7 BOOLValue])
      {
        v11 = [v6 performSelector:sel_name];
        if (v11)
        {
          [*(a1 + 48) addObject:v11];
        }
      }
    }
  }

  v12 = [v13 objectForKeyedSubscript:*off_1E70ECA40];
  if (v12)
  {
    [*(a1 + 56) addObject:v12];
  }
}

- (UITextFormattingViewControllerFormattingDescriptor)initWithAttributes:(id)attributes
{
  v69[1] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v5 = [(UITextFormattingViewControllerFormattingDescriptor *)self init];
  if (!v5)
  {
    goto LABEL_42;
  }

  obj = [attributesCopy objectForKey:*off_1E70EC918];
  v6 = [attributesCopy objectForKey:*off_1E70EC978];
  v7 = v6;
  if (v6)
  {
    v69[0] = v6;
    v8 = MEMORY[0x1E695DEC8];
    v9 = v69;
LABEL_4:
    v10 = [v8 arrayWithObjects:v9 count:1];
    fonts = v5->_fonts;
    v5->_fonts = v10;

    goto LABEL_5;
  }

  if (obj)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_fonts, obj);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v68 = obj;
        v8 = MEMORY[0x1E695DEC8];
        v9 = &v68;
        goto LABEL_4;
      }
    }
  }

LABEL_5:
  v12 = [attributesCopy objectForKey:*off_1E70EC920];
  v13 = v12;
  if (v12)
  {
    v67 = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
    textColors = v5->_textColors;
    v5->_textColors = v14;
  }

  v16 = [attributesCopy objectForKey:*off_1E70EC988];
  if (!v16)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v16 count])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66 = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
      if (v17)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v54 = 0;
    goto LABEL_17;
  }

  v17 = v16;
LABEL_13:
  v54 = v17;
  v18 = v13;
  v19 = [v17 objectAtIndexedSubscript:{0, v16}];
  objc_storeStrong(&v5->__paragraphStyle, v19);
  [v19 minimumLineHeight];
  if (v20 > 0.0)
  {
    [v19 minimumLineHeight];
    v5->_lineHeight = v21;
  }

  v22 = objc_opt_new();
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __73__UITextFormattingViewControllerFormattingDescriptor_initWithAttributes___block_invoke;
  v64[3] = &unk_1E710B0B8;
  v65 = v22;
  v23 = v22;
  [v54 enumerateObjectsUsingBlock:v64];
  [(UITextFormattingViewControllerFormattingDescriptor *)v5 setTextAlignments:v23];
  v24 = objc_opt_new();
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __73__UITextFormattingViewControllerFormattingDescriptor_initWithAttributes___block_invoke_2;
  v62[3] = &unk_1E710B0B8;
  v63 = v24;
  v25 = v24;
  [v54 enumerateObjectsUsingBlock:v62];
  v26 = objc_opt_new();
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __73__UITextFormattingViewControllerFormattingDescriptor_initWithAttributes___block_invoke_3;
  v60[3] = &unk_1E710B0E0;
  v61 = v26;
  v27 = v26;
  [v25 enumerateObjectsUsingBlock:v60];
  [(UITextFormattingViewControllerFormattingDescriptor *)v5 setTextLists:v27];

  v13 = v18;
  v16 = v51;
LABEL_17:
  v28 = [attributesCopy objectForKey:*off_1E70ECAD8];
  v5->_underlinePresent = [v28 BOOLValue];

  v29 = [attributesCopy objectForKey:*off_1E70EC9C8];
  v5->_strikethroughPresent = [v29 BOOLValue];

  v5->__blockquote = 0;
  v30 = [MEMORY[0x1E695DFA8] set];
  v31 = [attributesCopy objectForKey:*off_1E70ECA08];
  v52 = v30;
  if (v31)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __73__UITextFormattingViewControllerFormattingDescriptor_initWithAttributes___block_invoke_4;
      v58[3] = &unk_1E70FA6E8;
      v59 = v30;
      v32 = v31;
      [v31 enumerateObjectsUsingBlock:v58];
      v33 = v59;
    }

    else
    {
      v32 = v31;
      v33 = v31;
      if (objc_opt_respondsToSelector())
      {
        v34 = [v33 performSelector:sel_name];
        v35 = v34;
        if (v34)
        {
          v36 = _UITextFormattingViewControllerComponentKeyForAnimation(v34);
          [v52 addObject:v36];

          v30 = v52;
        }
      }
    }

    v31 = v32;
  }

  if ([v30 count])
  {
    v37 = [v30 copy];
    customComponentKeys = v5->__customComponentKeys;
    v5->__customComponentKeys = v37;
  }

  v39 = [attributesCopy objectForKey:*off_1E70ECA40];
  v40 = objc_opt_new();
  if (!v39)
  {
    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __73__UITextFormattingViewControllerFormattingDescriptor_initWithAttributes___block_invoke_5;
    v56[3] = &unk_1E70FA6E8;
    v57 = v40;
    [v39 enumerateObjectsUsingBlock:v56];
    v41 = v57;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_36;
    }

    v41 = _UITextFormattingViewControllerHighlightFromColorScheme(v39);
    [v40 addObject:v41];
  }

LABEL_36:
  [(UITextFormattingViewControllerFormattingDescriptor *)v5 setHighlights:v40];
  v42 = [attributesCopy objectForKey:*off_1E70ECA80];
  if (![(NSSet *)v5->_highlights count]&& v42)
  {
    v43 = [MEMORY[0x1E695DFD8] setWithObject:@"UITextFormattingViewControllerHighlightDefault"];
    [(UITextFormattingViewControllerFormattingDescriptor *)v5 setHighlights:v43];
  }

  if ([(NSArray *)v5->_fonts count])
  {
    firstObject = [(NSArray *)v5->_fonts firstObject];
    v45 = v31;
    v46 = v39;
    v47 = v40;
    v48 = v45;
    [(UITextFormattingViewControllerFormattingDescriptor *)v5 set_canToggleBold:[UITextFormattingViewControllerFormattingDescriptor _canToggleTrait:2 forFont:firstObject]];
    v49 = v48;
    v40 = v47;
    v39 = v46;
    v31 = v49;
    [(UITextFormattingViewControllerFormattingDescriptor *)v5 set_canToggleItalic:[UITextFormattingViewControllerFormattingDescriptor _canToggleTrait:1 forFont:firstObject]];
  }

LABEL_42:
  return v5;
}

uint64_t __73__UITextFormattingViewControllerFormattingDescriptor_initWithAttributes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 alignment];
  if (v3 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E710B100[v3];
  }

  v5 = *(a1 + 32);

  return [v5 addObject:v4];
}

void __73__UITextFormattingViewControllerFormattingDescriptor_initWithAttributes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 textLists];
  [v2 addObjectsFromArray:v3];
}

void __73__UITextFormattingViewControllerFormattingDescriptor_initWithAttributes___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 markerFormat];
  v4 = [v3 isEqualToString:*off_1E70ECA98];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = @"UITextFormattingViewControllerTextListDisc";
    goto LABEL_7;
  }

  v7 = [v12 markerFormat];
  if ([v7 isEqualToString:*off_1E70ECA90])
  {

LABEL_6:
    v5 = *(a1 + 32);
    v6 = @"UITextFormattingViewControllerTextListDecimal";
    goto LABEL_7;
  }

  v8 = [v12 markerFormat];
  v9 = [v8 isEqualToString:@"{decimal}."];

  if (v9)
  {
    goto LABEL_6;
  }

  v10 = [v12 markerFormat];
  v11 = [v10 isEqualToString:*off_1E70ECAA0];

  v5 = *(a1 + 32);
  if (v11)
  {
    v6 = @"UITextFormattingViewControllerTextListHyphen";
  }

  else
  {
    v6 = @"UITextFormattingViewControllerTextListOther";
  }

LABEL_7:
  [v5 addObject:v6];
}

void __73__UITextFormattingViewControllerFormattingDescriptor_initWithAttributes___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = _UITextFormattingViewControllerComponentKeyForAnimation(a2);
  [v2 addObject:v3];
}

void __73__UITextFormattingViewControllerFormattingDescriptor_initWithAttributes___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = _UITextFormattingViewControllerHighlightFromColorScheme(a2);
  [v2 addObject:v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  formattingStyleKey = [(UITextFormattingViewControllerFormattingDescriptor *)self formattingStyleKey];
  [v4 setFormattingStyleKey:formattingStyleKey];

  fonts = [(UITextFormattingViewControllerFormattingDescriptor *)self fonts];
  v7 = [fonts copy];
  v8 = v4[6];
  v4[6] = v7;

  textColors = [(UITextFormattingViewControllerFormattingDescriptor *)self textColors];
  v10 = [textColors copy];
  v11 = v4[7];
  v4[7] = v10;

  [(UITextFormattingViewControllerFormattingDescriptor *)self lineHeight];
  v4[8] = v12;
  [v4 setUnderline:{-[UITextFormattingViewControllerFormattingDescriptor underline](self, "underline")}];
  [v4 setUnderlinePresent:{-[UITextFormattingViewControllerFormattingDescriptor underlinePresent](self, "underlinePresent")}];
  [v4 setStrikethrough:{-[UITextFormattingViewControllerFormattingDescriptor strikethrough](self, "strikethrough")}];
  [v4 setStrikethroughPresent:{-[UITextFormattingViewControllerFormattingDescriptor strikethroughPresent](self, "strikethroughPresent")}];
  textAlignments = [(UITextFormattingViewControllerFormattingDescriptor *)self textAlignments];
  [v4 setTextAlignments:textAlignments];

  [v4 setListStyle:{-[UITextFormattingViewControllerFormattingDescriptor listStyle](self, "listStyle")}];
  textLists = [(UITextFormattingViewControllerFormattingDescriptor *)self textLists];
  [v4 setTextLists:textLists];

  highlights = [(UITextFormattingViewControllerFormattingDescriptor *)self highlights];
  [v4 setHighlights:highlights];

  _paragraphStyle = [(UITextFormattingViewControllerFormattingDescriptor *)self _paragraphStyle];
  [v4 set_paragraphStyle:_paragraphStyle];

  _customComponentKeys = [(UITextFormattingViewControllerFormattingDescriptor *)self _customComponentKeys];
  v18 = [_customComponentKeys copy];
  [v4 set_customComponentKeys:v18];

  _emphasisStyleKey = [(UITextFormattingViewControllerFormattingDescriptor *)self _emphasisStyleKey];
  [v4 set_emphasisStyleKey:_emphasisStyleKey];

  [v4 set_blockquote:{-[UITextFormattingViewControllerFormattingDescriptor _blockquote](self, "_blockquote")}];
  [v4 set_canToggleBold:{-[UITextFormattingViewControllerFormattingDescriptor _canToggleBold](self, "_canToggleBold")}];
  [v4 set_canToggleItalic:{-[UITextFormattingViewControllerFormattingDescriptor _canToggleItalic](self, "_canToggleItalic")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      formattingStyleKey = [(UITextFormattingViewControllerFormattingDescriptor *)self formattingStyleKey];
      formattingStyleKey2 = [(UITextFormattingViewControllerFormattingDescriptor *)v5 formattingStyleKey];
      if ([formattingStyleKey isEqualToString:formattingStyleKey2])
      {
        fonts = [(UITextFormattingViewControllerFormattingDescriptor *)self fonts];
        fonts2 = [(UITextFormattingViewControllerFormattingDescriptor *)v5 fonts];
        if ([fonts isEqualToArray:fonts2])
        {
          textColors = [(UITextFormattingViewControllerFormattingDescriptor *)self textColors];
          textColors2 = [(UITextFormattingViewControllerFormattingDescriptor *)v5 textColors];
          if ([textColors isEqualToArray:textColors2] && (-[UITextFormattingViewControllerFormattingDescriptor lineHeight](self, "lineHeight"), v13 = v12, -[UITextFormattingViewControllerFormattingDescriptor lineHeight](v5, "lineHeight"), v13 == v14) && (v15 = -[UITextFormattingViewControllerFormattingDescriptor underlinePresent](self, "underlinePresent"), v15 == -[UITextFormattingViewControllerFormattingDescriptor underlinePresent](v5, "underlinePresent")) && (v16 = -[UITextFormattingViewControllerFormattingDescriptor strikethroughPresent](self, "strikethroughPresent"), v16 == -[UITextFormattingViewControllerFormattingDescriptor strikethroughPresent](v5, "strikethroughPresent")))
          {
            textAlignments = [(UITextFormattingViewControllerFormattingDescriptor *)self textAlignments];
            textAlignments2 = [(UITextFormattingViewControllerFormattingDescriptor *)v5 textAlignments];
            v38 = textAlignments;
            if ([textAlignments isEqualToSet:textAlignments2])
            {
              textLists = [(UITextFormattingViewControllerFormattingDescriptor *)self textLists];
              textLists2 = [(UITextFormattingViewControllerFormattingDescriptor *)v5 textLists];
              v36 = textLists;
              if ([textLists isEqualToSet:textLists2])
              {
                highlights = [(UITextFormattingViewControllerFormattingDescriptor *)self highlights];
                highlights2 = [(UITextFormattingViewControllerFormattingDescriptor *)v5 highlights];
                v34 = highlights;
                if ([highlights isEqualToSet:highlights2])
                {
                  _customComponentKeys = [(UITextFormattingViewControllerFormattingDescriptor *)self _customComponentKeys];
                  _customComponentKeys2 = [(UITextFormattingViewControllerFormattingDescriptor *)v5 _customComponentKeys];
                  v32 = _customComponentKeys;
                  if ([_customComponentKeys isEqualToSet:_customComponentKeys2])
                  {
                    _emphasisStyleKey = [(UITextFormattingViewControllerFormattingDescriptor *)self _emphasisStyleKey];
                    _emphasisStyleKey2 = [(UITextFormattingViewControllerFormattingDescriptor *)v5 _emphasisStyleKey];
                    v30 = _emphasisStyleKey;
                    v25 = _emphasisStyleKey;
                    v26 = _emphasisStyleKey2;
                    if ([v25 isEqualToString:_emphasisStyleKey2] && (v28 = -[UITextFormattingViewControllerFormattingDescriptor _blockquote](self, "_blockquote"), v28 == -[UITextFormattingViewControllerFormattingDescriptor _blockquote](v5, "_blockquote")) && (v29 = -[UITextFormattingViewControllerFormattingDescriptor _canToggleBold](self, "_canToggleBold"), v29 == -[UITextFormattingViewControllerFormattingDescriptor _canToggleBold](v5, "_canToggleBold")))
                    {
                      _canToggleItalic = [(UITextFormattingViewControllerFormattingDescriptor *)self _canToggleItalic];
                      v17 = _canToggleItalic ^ [(UITextFormattingViewControllerFormattingDescriptor *)v5 _canToggleItalic]^ 1;
                    }

                    else
                    {
                      LOBYTE(v17) = 0;
                    }
                  }

                  else
                  {
                    LOBYTE(v17) = 0;
                  }
                }

                else
                {
                  LOBYTE(v17) = 0;
                }
              }

              else
              {
                LOBYTE(v17) = 0;
              }
            }

            else
            {
              LOBYTE(v17) = 0;
            }
          }

          else
          {
            LOBYTE(v17) = 0;
          }
        }

        else
        {
          LOBYTE(v17) = 0;
        }
      }

      else
      {
        LOBYTE(v17) = 0;
      }
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  return v17;
}

- (unint64_t)hash
{
  formattingStyleKey = [(UITextFormattingViewControllerFormattingDescriptor *)self formattingStyleKey];
  v25 = [formattingStyleKey hash];
  fonts = [(UITextFormattingViewControllerFormattingDescriptor *)self fonts];
  v24 = [fonts hash];
  textColors = [(UITextFormattingViewControllerFormattingDescriptor *)self textColors];
  v23 = [textColors hash];
  v3 = MEMORY[0x1E696AD98];
  [(UITextFormattingViewControllerFormattingDescriptor *)self lineHeight];
  v26 = [v3 numberWithDouble:?];
  v21 = [v26 hash];
  underlinePresent = [(UITextFormattingViewControllerFormattingDescriptor *)self underlinePresent];
  strikethroughPresent = [(UITextFormattingViewControllerFormattingDescriptor *)self strikethroughPresent];
  textAlignments = [(UITextFormattingViewControllerFormattingDescriptor *)self textAlignments];
  v17 = [textAlignments hash];
  textLists = [(UITextFormattingViewControllerFormattingDescriptor *)self textLists];
  v16 = [textLists hash];
  highlights = [(UITextFormattingViewControllerFormattingDescriptor *)self highlights];
  v15 = [highlights hash];
  _paragraphStyle = [(UITextFormattingViewControllerFormattingDescriptor *)self _paragraphStyle];
  v6 = [_paragraphStyle hash];
  _customComponentKeys = [(UITextFormattingViewControllerFormattingDescriptor *)self _customComponentKeys];
  v8 = [_customComponentKeys hash];
  _emphasisStyleKey = [(UITextFormattingViewControllerFormattingDescriptor *)self _emphasisStyleKey];
  v10 = [_emphasisStyleKey hash];
  _blockquote = [(UITextFormattingViewControllerFormattingDescriptor *)self _blockquote];
  _canToggleBold = [(UITextFormattingViewControllerFormattingDescriptor *)self _canToggleBold];
  v13 = v25 ^ v24 ^ v23 ^ underlinePresent ^ strikethroughPresent ^ v17 ^ v21 ^ v16 ^ v15 ^ v6 ^ v8 ^ v10 ^ _blockquote ^ _canToggleBold ^ [(UITextFormattingViewControllerFormattingDescriptor *)self _canToggleItalic];

  return v13 ^ 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  formattingStyleKey = [(UITextFormattingViewControllerFormattingDescriptor *)self formattingStyleKey];
  [coderCopy encodeObject:formattingStyleKey forKey:@"_FormattingStyleKey"];

  fonts = [(UITextFormattingViewControllerFormattingDescriptor *)self fonts];
  [coderCopy encodeObject:fonts forKey:@"_Fonts"];

  textColors = [(UITextFormattingViewControllerFormattingDescriptor *)self textColors];
  [coderCopy encodeObject:textColors forKey:@"_TextColors"];

  [(UITextFormattingViewControllerFormattingDescriptor *)self lineHeight];
  *&v7 = v7;
  [coderCopy encodeFloat:@"_LineHeight" forKey:v7];
  [coderCopy encodeInteger:-[UITextFormattingViewControllerFormattingDescriptor underline](self forKey:{"underline"), @"Underline"}];
  [coderCopy encodeBool:-[UITextFormattingViewControllerFormattingDescriptor underlinePresent](self forKey:{"underlinePresent"), @"_UnderlinePresent"}];
  [coderCopy encodeInteger:-[UITextFormattingViewControllerFormattingDescriptor strikethrough](self forKey:{"strikethrough"), @"_Strikethrough"}];
  [coderCopy encodeBool:-[UITextFormattingViewControllerFormattingDescriptor strikethroughPresent](self forKey:{"strikethroughPresent"), @"_StrikethroughPresent"}];
  textAlignments = [(UITextFormattingViewControllerFormattingDescriptor *)self textAlignments];
  [coderCopy encodeObject:textAlignments forKey:@"_TextAlignments"];

  [coderCopy encodeInteger:-[UITextFormattingViewControllerFormattingDescriptor listStyle](self forKey:{"listStyle"), @"_ListStyle"}];
  textLists = [(UITextFormattingViewControllerFormattingDescriptor *)self textLists];
  [coderCopy encodeObject:textLists forKey:@"_TextLists"];

  highlights = [(UITextFormattingViewControllerFormattingDescriptor *)self highlights];
  [coderCopy encodeObject:highlights forKey:@"_Highlights"];

  _paragraphStyle = [(UITextFormattingViewControllerFormattingDescriptor *)self _paragraphStyle];
  [coderCopy encodeInteger:_paragraphStyle forKey:@"_ParagraphStyle"];

  _customComponentKeys = [(UITextFormattingViewControllerFormattingDescriptor *)self _customComponentKeys];
  [coderCopy encodeObject:_customComponentKeys forKey:@"_CustomComponentKeys"];

  _emphasisStyleKey = [(UITextFormattingViewControllerFormattingDescriptor *)self _emphasisStyleKey];
  [coderCopy encodeObject:_emphasisStyleKey forKey:@"_EmphasisStyleKey"];

  [coderCopy encodeInteger:-[UITextFormattingViewControllerFormattingDescriptor _blockquote](self forKey:{"_blockquote"), @"_Blockquote"}];
  [coderCopy encodeBool:-[UITextFormattingViewControllerFormattingDescriptor _canToggleBold](self forKey:{"_canToggleBold"), @"_CanToggleBold"}];
  [coderCopy encodeBool:-[UITextFormattingViewControllerFormattingDescriptor _canToggleItalic](self forKey:{"_canToggleItalic"), @"_CanToggleItalic"}];
}

- (UITextFormattingViewControllerFormattingDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UITextFormattingViewControllerFormattingDescriptor *)self init];
  if (v5)
  {
    v6 = _UITextFormattingViewControllerFormattingDescriptorClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_FormattingStyleKey"];
    [(UITextFormattingViewControllerFormattingDescriptor *)v5 setFormattingStyleKey:v7];

    v8 = _UITextFormattingViewControllerFormattingDescriptorClasses();
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_Fonts"];
    [(UITextFormattingViewControllerFormattingDescriptor *)v5 setFonts:v9];

    v10 = _UITextFormattingViewControllerFormattingDescriptorClasses();
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_TextColors"];
    [(UITextFormattingViewControllerFormattingDescriptor *)v5 setTextColors:v11];

    [coderCopy decodeFloatForKey:@"_LineHeight"];
    [(UITextFormattingViewControllerFormattingDescriptor *)v5 setLineHeight:v12];
    -[UITextFormattingViewControllerFormattingDescriptor setUnderline:](v5, "setUnderline:", [coderCopy decodeIntegerForKey:@"Underline"]);
    -[UITextFormattingViewControllerFormattingDescriptor setUnderlinePresent:](v5, "setUnderlinePresent:", [coderCopy decodeBoolForKey:@"_UnderlinePresent"]);
    -[UITextFormattingViewControllerFormattingDescriptor setStrikethrough:](v5, "setStrikethrough:", [coderCopy decodeIntegerForKey:@"_Strikethrough"]);
    -[UITextFormattingViewControllerFormattingDescriptor setStrikethroughPresent:](v5, "setStrikethroughPresent:", [coderCopy decodeBoolForKey:@"_StrikethroughPresent"]);
    v13 = _UITextFormattingViewControllerFormattingDescriptorClasses();
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_TextAlignments"];
    [(UITextFormattingViewControllerFormattingDescriptor *)v5 setTextAlignments:v14];

    -[UITextFormattingViewControllerFormattingDescriptor setListStyle:](v5, "setListStyle:", [coderCopy decodeIntegerForKey:@"_ListStyle"]);
    v15 = _UITextFormattingViewControllerFormattingDescriptorClasses();
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"_TextLists"];
    [(UITextFormattingViewControllerFormattingDescriptor *)v5 setTextLists:v16];

    v17 = _UITextFormattingViewControllerFormattingDescriptorClasses();
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"_Highlights"];
    [(UITextFormattingViewControllerFormattingDescriptor *)v5 setHighlights:v18];

    v19 = _UITextFormattingViewControllerFormattingDescriptorClasses();
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"_ParagraphStyle"];
    [(UITextFormattingViewControllerFormattingDescriptor *)v5 set_paragraphStyle:v20];

    v21 = _UITextFormattingViewControllerFormattingDescriptorClasses();
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"_CustomComponentKeys"];
    [(UITextFormattingViewControllerFormattingDescriptor *)v5 set_customComponentKeys:v22];

    v23 = _UITextFormattingViewControllerFormattingDescriptorClasses();
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"_EmphasisStyleKey"];
    [(UITextFormattingViewControllerFormattingDescriptor *)v5 set_emphasisStyleKey:v24];

    -[UITextFormattingViewControllerFormattingDescriptor set_blockquote:](v5, "set_blockquote:", [coderCopy decodeIntegerForKey:@"_Blockquote"]);
    -[UITextFormattingViewControllerFormattingDescriptor set_canToggleBold:](v5, "set_canToggleBold:", [coderCopy decodeBoolForKey:@"_CanToggleBold"]);
    -[UITextFormattingViewControllerFormattingDescriptor set_canToggleItalic:](v5, "set_canToggleItalic:", [coderCopy decodeBoolForKey:@"_CanToggleItalic"]);
  }

  return v5;
}

- (void)setListStyle:(int64_t)style
{
  if (style > 2)
  {
    if (style == 3)
    {
      v5 = @"UITextFormattingViewControllerTextListDecimal";
      goto LABEL_11;
    }

    if (style == 98)
    {
      v5 = @"UITextFormattingViewControllerTextListOther";
      goto LABEL_11;
    }
  }

  else
  {
    if (style == 1)
    {
      v5 = @"UITextFormattingViewControllerTextListDisc";
      goto LABEL_11;
    }

    if (style == 2)
    {
      v5 = @"UITextFormattingViewControllerTextListHyphen";
LABEL_11:
      v6 = [MEMORY[0x1E695DFD8] setWithObject:v5];
      goto LABEL_12;
    }
  }

  v6 = objc_opt_new();
LABEL_12:
  textLists = self->_textLists;
  self->_textLists = v6;

  self->_listStyle = style;
}

@end