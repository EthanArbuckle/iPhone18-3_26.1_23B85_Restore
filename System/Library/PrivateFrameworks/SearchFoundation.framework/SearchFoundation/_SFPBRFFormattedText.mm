@interface _SFPBRFFormattedText
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSString)text;
- (_SFPBRFFormattedText)initWithDictionary:(id)dictionary;
- (_SFPBRFFormattedText)initWithFacade:(id)facade;
- (_SFPBRFFormattedText)initWithJSON:(id)n;
- (_SFPBRFImageElement)inline_image_element;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAttributions:(id)attributions;
- (void)addHighlighted_substrings:(id)highlighted_substrings;
- (void)setAttributions:(id)attributions;
- (void)setHighlighted_substrings:(id)highlighted_substrings;
- (void)setInline_image_element:(id)inline_image_element;
- (void)setText:(id)text;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFFormattedText

- (_SFPBRFFormattedText)initWithFacade:(id)facade
{
  v77 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFFormattedText *)self init];
  if (v5)
  {
    if ([facadeCopy hasText])
    {
      text = [facadeCopy text];

      if (text)
      {
        text2 = [facadeCopy text];
        [(_SFPBRFFormattedText *)v5 setText:text2];
      }
    }

    if ([facadeCopy hasInline_image_element])
    {
      inline_image_element = [facadeCopy inline_image_element];

      if (inline_image_element)
      {
        v9 = [_SFPBRFImageElement alloc];
        inline_image_element2 = [facadeCopy inline_image_element];
        v11 = [(_SFPBRFImageElement *)v9 initWithFacade:inline_image_element2];
        [(_SFPBRFFormattedText *)v5 setInline_image_element:v11];
      }
    }

    color = [facadeCopy color];

    if (color)
    {
      v13 = [_SFPBRFColor alloc];
      color2 = [facadeCopy color];
      v15 = [(_SFPBRFColor *)v13 initWithFacade:color2];
      [(_SFPBRFFormattedText *)v5 setColor:v15];
    }

    is_italic = [facadeCopy is_italic];

    if (is_italic)
    {
      v17 = [_SFPBRFOptionalBool alloc];
      is_italic2 = [facadeCopy is_italic];
      v19 = [(_SFPBRFOptionalBool *)v17 initWithFacade:is_italic2];
      [(_SFPBRFFormattedText *)v5 setIs_italic:v19];
    }

    is_bold = [facadeCopy is_bold];

    if (is_bold)
    {
      v21 = [_SFPBRFOptionalBool alloc];
      is_bold2 = [facadeCopy is_bold];
      v23 = [(_SFPBRFOptionalBool *)v21 initWithFacade:is_bold2];
      [(_SFPBRFFormattedText *)v5 setIs_bold:v23];
    }

    text_encapsulation = [facadeCopy text_encapsulation];

    if (text_encapsulation)
    {
      v25 = [_SFPBRFTextEncapsulation alloc];
      text_encapsulation2 = [facadeCopy text_encapsulation];
      v27 = [(_SFPBRFTextEncapsulation *)v25 initWithFacade:text_encapsulation2];
      [(_SFPBRFFormattedText *)v5 setText_encapsulation:v27];
    }

    is_highlighted = [facadeCopy is_highlighted];

    if (is_highlighted)
    {
      v29 = [_SFPBRFOptionalBool alloc];
      is_highlighted2 = [facadeCopy is_highlighted];
      v31 = [(_SFPBRFOptionalBool *)v29 initWithFacade:is_highlighted2];
      [(_SFPBRFFormattedText *)v5 setIs_highlighted:v31];
    }

    background_color = [facadeCopy background_color];

    if (background_color)
    {
      v33 = [_SFPBRFColor alloc];
      background_color2 = [facadeCopy background_color];
      v35 = [(_SFPBRFColor *)v33 initWithFacade:background_color2];
      [(_SFPBRFFormattedText *)v5 setBackground_color:v35];
    }

    attributions = [facadeCopy attributions];
    if (attributions)
    {
      v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v37 = 0;
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    attributions2 = [facadeCopy attributions];
    v39 = [attributions2 countByEnumeratingWithState:&v71 objects:v76 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v72;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v72 != v41)
          {
            objc_enumerationMutation(attributions2);
          }

          v43 = [[_SFPBRFAttribution alloc] initWithFacade:*(*(&v71 + 1) + 8 * i)];
          if (v43)
          {
            [v37 addObject:v43];
          }
        }

        v40 = [attributions2 countByEnumeratingWithState:&v71 objects:v76 count:16];
      }

      while (v40);
    }

    [(_SFPBRFFormattedText *)v5 setAttributions:v37];
    highlighted_substrings = [facadeCopy highlighted_substrings];
    if (highlighted_substrings)
    {
      v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v45 = 0;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    highlighted_substrings2 = [facadeCopy highlighted_substrings];
    v47 = [highlighted_substrings2 countByEnumeratingWithState:&v67 objects:v75 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v68;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v68 != v49)
          {
            objc_enumerationMutation(highlighted_substrings2);
          }

          v51 = [[_SFPBRFHighlightedSubstring alloc] initWithFacade:*(*(&v67 + 1) + 8 * j)];
          if (v51)
          {
            [v45 addObject:v51];
          }
        }

        v48 = [highlighted_substrings2 countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v48);
    }

    [(_SFPBRFFormattedText *)v5 setHighlighted_substrings:v45];
    font = [facadeCopy font];

    if (font)
    {
      v53 = [_SFPBRFFont alloc];
      font2 = [facadeCopy font];
      v55 = [(_SFPBRFFont *)v53 initWithFacade:font2];
      [(_SFPBRFFormattedText *)v5 setFont:v55];
    }

    is_underlined = [facadeCopy is_underlined];

    if (is_underlined)
    {
      v57 = [_SFPBRFOptionalBool alloc];
      is_underlined2 = [facadeCopy is_underlined];
      v59 = [(_SFPBRFOptionalBool *)v57 initWithFacade:is_underlined2];
      [(_SFPBRFFormattedText *)v5 setIs_underlined:v59];
    }

    engageable = [facadeCopy engageable];

    if (engageable)
    {
      v61 = [_SFPBRFEngageable alloc];
      engageable2 = [facadeCopy engageable];
      v63 = [(_SFPBRFEngageable *)v61 initWithFacade:engageable2];
      [(_SFPBRFFormattedText *)v5 setEngageable:v63];
    }

    if ([facadeCopy hasWeight])
    {
      -[_SFPBRFFormattedText setWeight:](v5, "setWeight:", [facadeCopy weight]);
    }

    if ([facadeCopy hasDesign])
    {
      -[_SFPBRFFormattedText setDesign:](v5, "setDesign:", [facadeCopy design]);
    }

    v64 = v5;
  }

  v65 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFormattedText)initWithDictionary:(id)dictionary
{
  v68 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v65.receiver = self;
  v65.super_class = _SFPBRFFormattedText;
  v5 = [(_SFPBRFFormattedText *)&v65 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRFFormattedText *)v5 setText:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"inlineImageElement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFImageElement alloc] initWithDictionary:v8];
      [(_SFPBRFFormattedText *)v5 setInline_image_element:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"color"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFColor alloc] initWithDictionary:v10];
      [(_SFPBRFFormattedText *)v5 setColor:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isItalic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFOptionalBool alloc] initWithDictionary:v12];
      [(_SFPBRFFormattedText *)v5 setIs_italic:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"isBold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFOptionalBool alloc] initWithDictionary:v14];
      [(_SFPBRFFormattedText *)v5 setIs_bold:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"textEncapsulation"];
    objc_opt_class();
    v56 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBRFTextEncapsulation alloc] initWithDictionary:v16];
      [(_SFPBRFFormattedText *)v5 setText_encapsulation:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"isHighlighted"];
    objc_opt_class();
    v55 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBRFOptionalBool alloc] initWithDictionary:v18];
      [(_SFPBRFFormattedText *)v5 setIs_highlighted:v19];
    }

    v50 = v14;
    v51 = v12;
    v52 = v10;
    v53 = v8;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBRFColor alloc] initWithDictionary:v20];
      [(_SFPBRFFormattedText *)v5 setBackground_color:v21];
    }

    v49 = v20;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"attributions"];
    objc_opt_class();
    v54 = v22;
    if (objc_opt_isKindOfClass())
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v62;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v62 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v61 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [[_SFPBRFAttribution alloc] initWithDictionary:v28];
              [(_SFPBRFFormattedText *)v5 addAttributions:v29];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v61 objects:v67 count:16];
        }

        while (v25);
      }
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"highlightedSubstrings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v31 = v30;
      v32 = [v31 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v58;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v58 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v57 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = [[_SFPBRFHighlightedSubstring alloc] initWithDictionary:v36];
              [(_SFPBRFFormattedText *)v5 addHighlighted_substrings:v37];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v33);
      }
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"font"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBRFFont alloc] initWithDictionary:v38];
      [(_SFPBRFFormattedText *)v5 setFont:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"isUnderlined"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBRFOptionalBool alloc] initWithDictionary:v40];
      [(_SFPBRFFormattedText *)v5 setIs_underlined:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"engageable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[_SFPBRFEngageable alloc] initWithDictionary:v42];
      [(_SFPBRFFormattedText *)v5 setEngageable:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"weight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFFormattedText setWeight:](v5, "setWeight:", [v44 intValue]);
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"design"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFFormattedText setDesign:](v5, "setDesign:", [v45 intValue]);
    }

    v46 = v5;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFormattedText)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFFormattedText *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFFormattedText *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v68 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_attributions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v5 = self->_attributions;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v63;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v63 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v62 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v62 objects:v67 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"attributions"];
  }

  if (self->_background_color)
  {
    background_color = [(_SFPBRFFormattedText *)self background_color];
    dictionaryRepresentation2 = [background_color dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_color)
  {
    color = [(_SFPBRFFormattedText *)self color];
    dictionaryRepresentation3 = [color dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"color"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"color"];
    }
  }

  if (self->_design)
  {
    design = [(_SFPBRFFormattedText *)self design];
    if (design >= 4)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", design];
    }

    else
    {
      v19 = off_1E7ACE560[design];
    }

    [dictionary setObject:v19 forKeyedSubscript:@"design"];
  }

  if (self->_engageable)
  {
    engageable = [(_SFPBRFFormattedText *)self engageable];
    dictionaryRepresentation4 = [engageable dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"engageable"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"engageable"];
    }
  }

  if (self->_font)
  {
    font = [(_SFPBRFFormattedText *)self font];
    dictionaryRepresentation5 = [font dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"font"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"font"];
    }
  }

  if ([(NSArray *)self->_highlighted_substrings count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v27 = self->_highlighted_substrings;
    v28 = [(NSArray *)v27 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v59;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v59 != v30)
          {
            objc_enumerationMutation(v27);
          }

          dictionaryRepresentation6 = [*(*(&v58 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation6)
          {
            [array2 addObject:dictionaryRepresentation6];
          }

          else
          {
            null6 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null6];
          }
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v29);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"highlightedSubstrings"];
  }

  if (self->_inline_image_element)
  {
    inline_image_element = [(_SFPBRFFormattedText *)self inline_image_element];
    dictionaryRepresentation7 = [inline_image_element dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"inlineImageElement"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"inlineImageElement"];
    }
  }

  if (self->_is_bold)
  {
    is_bold = [(_SFPBRFFormattedText *)self is_bold];
    dictionaryRepresentation8 = [is_bold dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"isBold"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"isBold"];
    }
  }

  if (self->_is_highlighted)
  {
    is_highlighted = [(_SFPBRFFormattedText *)self is_highlighted];
    dictionaryRepresentation9 = [is_highlighted dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"isHighlighted"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"isHighlighted"];
    }
  }

  if (self->_is_italic)
  {
    is_italic = [(_SFPBRFFormattedText *)self is_italic];
    dictionaryRepresentation10 = [is_italic dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"isItalic"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"isItalic"];
    }
  }

  if (self->_is_underlined)
  {
    is_underlined = [(_SFPBRFFormattedText *)self is_underlined];
    dictionaryRepresentation11 = [is_underlined dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"isUnderlined"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"isUnderlined"];
    }
  }

  if (self->_text)
  {
    text = [(_SFPBRFFormattedText *)self text];
    v50 = [text copy];
    [dictionary setObject:v50 forKeyedSubscript:@"text"];
  }

  if (self->_text_encapsulation)
  {
    text_encapsulation = [(_SFPBRFFormattedText *)self text_encapsulation];
    dictionaryRepresentation12 = [text_encapsulation dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"textEncapsulation"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"textEncapsulation"];
    }
  }

  if (self->_weight)
  {
    weight = [(_SFPBRFFormattedText *)self weight];
    if (weight >= 0xA)
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", weight];
    }

    else
    {
      v55 = off_1E7ACE220[weight];
    }

    [dictionary setObject:v55 forKeyedSubscript:@"weight"];
  }

  v56 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v15 = [(NSString *)self->_text hash];
  v14 = [(_SFPBRFImageElement *)self->_inline_image_element hash];
  v13 = [(_SFPBRFColor *)self->_color hash];
  v3 = [(_SFPBRFOptionalBool *)self->_is_italic hash];
  v4 = [(_SFPBRFOptionalBool *)self->_is_bold hash];
  v5 = [(_SFPBRFTextEncapsulation *)self->_text_encapsulation hash];
  v6 = [(_SFPBRFOptionalBool *)self->_is_highlighted hash];
  v7 = [(_SFPBRFColor *)self->_background_color hash];
  v8 = [(NSArray *)self->_attributions hash];
  v9 = [(NSArray *)self->_highlighted_substrings hash];
  v10 = [(_SFPBRFFont *)self->_font hash];
  v11 = [(_SFPBRFOptionalBool *)self->_is_underlined hash];
  return v14 ^ v15 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(_SFPBRFEngageable *)self->_engageable hash]^ (2654435761 * self->_weight) ^ (2654435761 * self->_design);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_67;
  }

  text = [(_SFPBRFFormattedText *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_66;
  }

  text3 = [(_SFPBRFFormattedText *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFFormattedText *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFormattedText *)self inline_image_element];
  text2 = [equalCopy inline_image_element];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_66;
  }

  inline_image_element = [(_SFPBRFFormattedText *)self inline_image_element];
  if (inline_image_element)
  {
    v13 = inline_image_element;
    inline_image_element2 = [(_SFPBRFFormattedText *)self inline_image_element];
    inline_image_element3 = [equalCopy inline_image_element];
    v16 = [inline_image_element2 isEqual:inline_image_element3];

    if (!v16)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFormattedText *)self color];
  text2 = [equalCopy color];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_66;
  }

  color = [(_SFPBRFFormattedText *)self color];
  if (color)
  {
    v18 = color;
    color2 = [(_SFPBRFFormattedText *)self color];
    color3 = [equalCopy color];
    v21 = [color2 isEqual:color3];

    if (!v21)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFormattedText *)self is_italic];
  text2 = [equalCopy is_italic];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_66;
  }

  is_italic = [(_SFPBRFFormattedText *)self is_italic];
  if (is_italic)
  {
    v23 = is_italic;
    is_italic2 = [(_SFPBRFFormattedText *)self is_italic];
    is_italic3 = [equalCopy is_italic];
    v26 = [is_italic2 isEqual:is_italic3];

    if (!v26)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFormattedText *)self is_bold];
  text2 = [equalCopy is_bold];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_66;
  }

  is_bold = [(_SFPBRFFormattedText *)self is_bold];
  if (is_bold)
  {
    v28 = is_bold;
    is_bold2 = [(_SFPBRFFormattedText *)self is_bold];
    is_bold3 = [equalCopy is_bold];
    v31 = [is_bold2 isEqual:is_bold3];

    if (!v31)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFormattedText *)self text_encapsulation];
  text2 = [equalCopy text_encapsulation];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_66;
  }

  text_encapsulation = [(_SFPBRFFormattedText *)self text_encapsulation];
  if (text_encapsulation)
  {
    v33 = text_encapsulation;
    text_encapsulation2 = [(_SFPBRFFormattedText *)self text_encapsulation];
    text_encapsulation3 = [equalCopy text_encapsulation];
    v36 = [text_encapsulation2 isEqual:text_encapsulation3];

    if (!v36)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFormattedText *)self is_highlighted];
  text2 = [equalCopy is_highlighted];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_66;
  }

  is_highlighted = [(_SFPBRFFormattedText *)self is_highlighted];
  if (is_highlighted)
  {
    v38 = is_highlighted;
    is_highlighted2 = [(_SFPBRFFormattedText *)self is_highlighted];
    is_highlighted3 = [equalCopy is_highlighted];
    v41 = [is_highlighted2 isEqual:is_highlighted3];

    if (!v41)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFormattedText *)self background_color];
  text2 = [equalCopy background_color];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_66;
  }

  background_color = [(_SFPBRFFormattedText *)self background_color];
  if (background_color)
  {
    v43 = background_color;
    background_color2 = [(_SFPBRFFormattedText *)self background_color];
    background_color3 = [equalCopy background_color];
    v46 = [background_color2 isEqual:background_color3];

    if (!v46)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFormattedText *)self attributions];
  text2 = [equalCopy attributions];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_66;
  }

  attributions = [(_SFPBRFFormattedText *)self attributions];
  if (attributions)
  {
    v48 = attributions;
    attributions2 = [(_SFPBRFFormattedText *)self attributions];
    attributions3 = [equalCopy attributions];
    v51 = [attributions2 isEqual:attributions3];

    if (!v51)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFormattedText *)self highlighted_substrings];
  text2 = [equalCopy highlighted_substrings];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_66;
  }

  highlighted_substrings = [(_SFPBRFFormattedText *)self highlighted_substrings];
  if (highlighted_substrings)
  {
    v53 = highlighted_substrings;
    highlighted_substrings2 = [(_SFPBRFFormattedText *)self highlighted_substrings];
    highlighted_substrings3 = [equalCopy highlighted_substrings];
    v56 = [highlighted_substrings2 isEqual:highlighted_substrings3];

    if (!v56)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFormattedText *)self font];
  text2 = [equalCopy font];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_66;
  }

  font = [(_SFPBRFFormattedText *)self font];
  if (font)
  {
    v58 = font;
    font2 = [(_SFPBRFFormattedText *)self font];
    font3 = [equalCopy font];
    v61 = [font2 isEqual:font3];

    if (!v61)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFormattedText *)self is_underlined];
  text2 = [equalCopy is_underlined];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_66;
  }

  is_underlined = [(_SFPBRFFormattedText *)self is_underlined];
  if (is_underlined)
  {
    v63 = is_underlined;
    is_underlined2 = [(_SFPBRFFormattedText *)self is_underlined];
    is_underlined3 = [equalCopy is_underlined];
    v66 = [is_underlined2 isEqual:is_underlined3];

    if (!v66)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFormattedText *)self engageable];
  text2 = [equalCopy engageable];
  if ((text != 0) == (text2 == 0))
  {
LABEL_66:

    goto LABEL_67;
  }

  engageable = [(_SFPBRFFormattedText *)self engageable];
  if (engageable)
  {
    v68 = engageable;
    engageable2 = [(_SFPBRFFormattedText *)self engageable];
    engageable3 = [equalCopy engageable];
    v71 = [engageable2 isEqual:engageable3];

    if (!v71)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  weight = self->_weight;
  if (weight == [equalCopy weight])
  {
    design = self->_design;
    v72 = design == [equalCopy design];
    goto LABEL_68;
  }

LABEL_67:
  v72 = 0;
LABEL_68:

  return v72;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x1E69E9840];
  toCopy = to;
  text = [(_SFPBRFFormattedText *)self text];
  if (text)
  {
    PBDataWriterWriteStringField();
  }

  inline_image_element = [(_SFPBRFFormattedText *)self inline_image_element];
  if (inline_image_element)
  {
    PBDataWriterWriteSubmessage();
  }

  color = [(_SFPBRFFormattedText *)self color];
  if (color)
  {
    PBDataWriterWriteSubmessage();
  }

  is_italic = [(_SFPBRFFormattedText *)self is_italic];
  if (is_italic)
  {
    PBDataWriterWriteSubmessage();
  }

  is_bold = [(_SFPBRFFormattedText *)self is_bold];
  if (is_bold)
  {
    PBDataWriterWriteSubmessage();
  }

  text_encapsulation = [(_SFPBRFFormattedText *)self text_encapsulation];
  if (text_encapsulation)
  {
    PBDataWriterWriteSubmessage();
  }

  is_highlighted = [(_SFPBRFFormattedText *)self is_highlighted];
  if (is_highlighted)
  {
    PBDataWriterWriteSubmessage();
  }

  background_color = [(_SFPBRFFormattedText *)self background_color];
  if (background_color)
  {
    PBDataWriterWriteSubmessage();
  }

  attributions = [(_SFPBRFFormattedText *)self attributions];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = [attributions countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      v17 = 0;
      do
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(attributions);
        }

        v18 = *(*(&v33 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [attributions countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v15);
  }

  highlighted_substrings = [(_SFPBRFFormattedText *)self highlighted_substrings];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = [highlighted_substrings countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      v23 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(highlighted_substrings);
        }

        v24 = *(*(&v29 + 1) + 8 * v23);
        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [highlighted_substrings countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v21);
  }

  font = [(_SFPBRFFormattedText *)self font];
  if (font)
  {
    PBDataWriterWriteSubmessage();
  }

  is_underlined = [(_SFPBRFFormattedText *)self is_underlined];
  if (is_underlined)
  {
    PBDataWriterWriteSubmessage();
  }

  engageable = [(_SFPBRFFormattedText *)self engageable];
  if (engageable)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFFormattedText *)self weight])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRFFormattedText *)self design])
  {
    PBDataWriterWriteInt32Field();
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)addHighlighted_substrings:(id)highlighted_substrings
{
  highlighted_substringsCopy = highlighted_substrings;
  highlighted_substrings = self->_highlighted_substrings;
  v8 = highlighted_substringsCopy;
  if (!highlighted_substrings)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_highlighted_substrings;
    self->_highlighted_substrings = array;

    highlighted_substringsCopy = v8;
    highlighted_substrings = self->_highlighted_substrings;
  }

  [(NSArray *)highlighted_substrings addObject:highlighted_substringsCopy];
}

- (void)setHighlighted_substrings:(id)highlighted_substrings
{
  v4 = [highlighted_substrings copy];
  highlighted_substrings = self->_highlighted_substrings;
  self->_highlighted_substrings = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addAttributions:(id)attributions
{
  attributionsCopy = attributions;
  attributions = self->_attributions;
  v8 = attributionsCopy;
  if (!attributions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_attributions;
    self->_attributions = array;

    attributionsCopy = v8;
    attributions = self->_attributions;
  }

  [(NSArray *)attributions addObject:attributionsCopy];
}

- (void)setAttributions:(id)attributions
{
  v4 = [attributions copy];
  attributions = self->_attributions;
  self->_attributions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_SFPBRFImageElement)inline_image_element
{
  if (self->_whichValue == 2)
  {
    v3 = self->_inline_image_element;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInline_image_element:(id)inline_image_element
{
  inline_image_elementCopy = inline_image_element;
  text = self->_text;
  self->_text = 0;

  self->_whichValue = 2 * (inline_image_elementCopy != 0);
  inline_image_element = self->_inline_image_element;
  self->_inline_image_element = inline_image_elementCopy;
}

- (NSString)text
{
  if (self->_whichValue == 1)
  {
    v3 = self->_text;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setText:(id)text
{
  inline_image_element = self->_inline_image_element;
  self->_inline_image_element = 0;
  textCopy = text;

  self->_whichValue = textCopy != 0;
  v5 = [textCopy copy];
  text = self->_text;
  self->_text = v5;
}

@end