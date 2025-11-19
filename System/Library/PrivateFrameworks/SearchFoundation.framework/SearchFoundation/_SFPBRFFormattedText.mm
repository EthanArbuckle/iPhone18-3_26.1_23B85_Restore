@interface _SFPBRFFormattedText
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSString)text;
- (_SFPBRFFormattedText)initWithDictionary:(id)a3;
- (_SFPBRFFormattedText)initWithFacade:(id)a3;
- (_SFPBRFFormattedText)initWithJSON:(id)a3;
- (_SFPBRFImageElement)inline_image_element;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAttributions:(id)a3;
- (void)addHighlighted_substrings:(id)a3;
- (void)setAttributions:(id)a3;
- (void)setHighlighted_substrings:(id)a3;
- (void)setInline_image_element:(id)a3;
- (void)setText:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFFormattedText

- (_SFPBRFFormattedText)initWithFacade:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFFormattedText *)self init];
  if (v5)
  {
    if ([v4 hasText])
    {
      v6 = [v4 text];

      if (v6)
      {
        v7 = [v4 text];
        [(_SFPBRFFormattedText *)v5 setText:v7];
      }
    }

    if ([v4 hasInline_image_element])
    {
      v8 = [v4 inline_image_element];

      if (v8)
      {
        v9 = [_SFPBRFImageElement alloc];
        v10 = [v4 inline_image_element];
        v11 = [(_SFPBRFImageElement *)v9 initWithFacade:v10];
        [(_SFPBRFFormattedText *)v5 setInline_image_element:v11];
      }
    }

    v12 = [v4 color];

    if (v12)
    {
      v13 = [_SFPBRFColor alloc];
      v14 = [v4 color];
      v15 = [(_SFPBRFColor *)v13 initWithFacade:v14];
      [(_SFPBRFFormattedText *)v5 setColor:v15];
    }

    v16 = [v4 is_italic];

    if (v16)
    {
      v17 = [_SFPBRFOptionalBool alloc];
      v18 = [v4 is_italic];
      v19 = [(_SFPBRFOptionalBool *)v17 initWithFacade:v18];
      [(_SFPBRFFormattedText *)v5 setIs_italic:v19];
    }

    v20 = [v4 is_bold];

    if (v20)
    {
      v21 = [_SFPBRFOptionalBool alloc];
      v22 = [v4 is_bold];
      v23 = [(_SFPBRFOptionalBool *)v21 initWithFacade:v22];
      [(_SFPBRFFormattedText *)v5 setIs_bold:v23];
    }

    v24 = [v4 text_encapsulation];

    if (v24)
    {
      v25 = [_SFPBRFTextEncapsulation alloc];
      v26 = [v4 text_encapsulation];
      v27 = [(_SFPBRFTextEncapsulation *)v25 initWithFacade:v26];
      [(_SFPBRFFormattedText *)v5 setText_encapsulation:v27];
    }

    v28 = [v4 is_highlighted];

    if (v28)
    {
      v29 = [_SFPBRFOptionalBool alloc];
      v30 = [v4 is_highlighted];
      v31 = [(_SFPBRFOptionalBool *)v29 initWithFacade:v30];
      [(_SFPBRFFormattedText *)v5 setIs_highlighted:v31];
    }

    v32 = [v4 background_color];

    if (v32)
    {
      v33 = [_SFPBRFColor alloc];
      v34 = [v4 background_color];
      v35 = [(_SFPBRFColor *)v33 initWithFacade:v34];
      [(_SFPBRFFormattedText *)v5 setBackground_color:v35];
    }

    v36 = [v4 attributions];
    if (v36)
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
    v38 = [v4 attributions];
    v39 = [v38 countByEnumeratingWithState:&v71 objects:v76 count:16];
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
            objc_enumerationMutation(v38);
          }

          v43 = [[_SFPBRFAttribution alloc] initWithFacade:*(*(&v71 + 1) + 8 * i)];
          if (v43)
          {
            [v37 addObject:v43];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v71 objects:v76 count:16];
      }

      while (v40);
    }

    [(_SFPBRFFormattedText *)v5 setAttributions:v37];
    v44 = [v4 highlighted_substrings];
    if (v44)
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
    v46 = [v4 highlighted_substrings];
    v47 = [v46 countByEnumeratingWithState:&v67 objects:v75 count:16];
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
            objc_enumerationMutation(v46);
          }

          v51 = [[_SFPBRFHighlightedSubstring alloc] initWithFacade:*(*(&v67 + 1) + 8 * j)];
          if (v51)
          {
            [v45 addObject:v51];
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v48);
    }

    [(_SFPBRFFormattedText *)v5 setHighlighted_substrings:v45];
    v52 = [v4 font];

    if (v52)
    {
      v53 = [_SFPBRFFont alloc];
      v54 = [v4 font];
      v55 = [(_SFPBRFFont *)v53 initWithFacade:v54];
      [(_SFPBRFFormattedText *)v5 setFont:v55];
    }

    v56 = [v4 is_underlined];

    if (v56)
    {
      v57 = [_SFPBRFOptionalBool alloc];
      v58 = [v4 is_underlined];
      v59 = [(_SFPBRFOptionalBool *)v57 initWithFacade:v58];
      [(_SFPBRFFormattedText *)v5 setIs_underlined:v59];
    }

    v60 = [v4 engageable];

    if (v60)
    {
      v61 = [_SFPBRFEngageable alloc];
      v62 = [v4 engageable];
      v63 = [(_SFPBRFEngageable *)v61 initWithFacade:v62];
      [(_SFPBRFFormattedText *)v5 setEngageable:v63];
    }

    if ([v4 hasWeight])
    {
      -[_SFPBRFFormattedText setWeight:](v5, "setWeight:", [v4 weight]);
    }

    if ([v4 hasDesign])
    {
      -[_SFPBRFFormattedText setDesign:](v5, "setDesign:", [v4 design]);
    }

    v64 = v5;
  }

  v65 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFormattedText)initWithDictionary:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v65.receiver = self;
  v65.super_class = _SFPBRFFormattedText;
  v5 = [(_SFPBRFFormattedText *)&v65 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRFFormattedText *)v5 setText:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"inlineImageElement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFImageElement alloc] initWithDictionary:v8];
      [(_SFPBRFFormattedText *)v5 setInline_image_element:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"color"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFColor alloc] initWithDictionary:v10];
      [(_SFPBRFFormattedText *)v5 setColor:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"isItalic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFOptionalBool alloc] initWithDictionary:v12];
      [(_SFPBRFFormattedText *)v5 setIs_italic:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"isBold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFOptionalBool alloc] initWithDictionary:v14];
      [(_SFPBRFFormattedText *)v5 setIs_bold:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"textEncapsulation"];
    objc_opt_class();
    v56 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBRFTextEncapsulation alloc] initWithDictionary:v16];
      [(_SFPBRFFormattedText *)v5 setText_encapsulation:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"isHighlighted"];
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
    v20 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBRFColor alloc] initWithDictionary:v20];
      [(_SFPBRFFormattedText *)v5 setBackground_color:v21];
    }

    v49 = v20;
    v22 = [v4 objectForKeyedSubscript:@"attributions"];
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

    v30 = [v4 objectForKeyedSubscript:@"highlightedSubstrings"];
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

    v38 = [v4 objectForKeyedSubscript:@"font"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBRFFont alloc] initWithDictionary:v38];
      [(_SFPBRFFormattedText *)v5 setFont:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"isUnderlined"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBRFOptionalBool alloc] initWithDictionary:v40];
      [(_SFPBRFFormattedText *)v5 setIs_underlined:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"engageable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[_SFPBRFEngageable alloc] initWithDictionary:v42];
      [(_SFPBRFFormattedText *)v5 setEngageable:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"weight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFFormattedText setWeight:](v5, "setWeight:", [v44 intValue]);
    }

    v45 = [v4 objectForKeyedSubscript:@"design"];
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

- (_SFPBRFFormattedText)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFFormattedText *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFFormattedText *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_attributions count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v62 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v62 objects:v67 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"attributions"];
  }

  if (self->_background_color)
  {
    v12 = [(_SFPBRFFormattedText *)self background_color];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_color)
  {
    v15 = [(_SFPBRFFormattedText *)self color];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"color"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"color"];
    }
  }

  if (self->_design)
  {
    v18 = [(_SFPBRFFormattedText *)self design];
    if (v18 >= 4)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v18];
    }

    else
    {
      v19 = off_1E7ACE560[v18];
    }

    [v3 setObject:v19 forKeyedSubscript:@"design"];
  }

  if (self->_engageable)
  {
    v20 = [(_SFPBRFFormattedText *)self engageable];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"engageable"];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v22 forKeyedSubscript:@"engageable"];
    }
  }

  if (self->_font)
  {
    v23 = [(_SFPBRFFormattedText *)self font];
    v24 = [v23 dictionaryRepresentation];
    if (v24)
    {
      [v3 setObject:v24 forKeyedSubscript:@"font"];
    }

    else
    {
      v25 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v25 forKeyedSubscript:@"font"];
    }
  }

  if ([(NSArray *)self->_highlighted_substrings count])
  {
    v26 = [MEMORY[0x1E695DF70] array];
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

          v32 = [*(*(&v58 + 1) + 8 * j) dictionaryRepresentation];
          if (v32)
          {
            [v26 addObject:v32];
          }

          else
          {
            v33 = [MEMORY[0x1E695DFB0] null];
            [v26 addObject:v33];
          }
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v29);
    }

    [v3 setObject:v26 forKeyedSubscript:@"highlightedSubstrings"];
  }

  if (self->_inline_image_element)
  {
    v34 = [(_SFPBRFFormattedText *)self inline_image_element];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"inlineImageElement"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"inlineImageElement"];
    }
  }

  if (self->_is_bold)
  {
    v37 = [(_SFPBRFFormattedText *)self is_bold];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"isBold"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"isBold"];
    }
  }

  if (self->_is_highlighted)
  {
    v40 = [(_SFPBRFFormattedText *)self is_highlighted];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"isHighlighted"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"isHighlighted"];
    }
  }

  if (self->_is_italic)
  {
    v43 = [(_SFPBRFFormattedText *)self is_italic];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"isItalic"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"isItalic"];
    }
  }

  if (self->_is_underlined)
  {
    v46 = [(_SFPBRFFormattedText *)self is_underlined];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"isUnderlined"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"isUnderlined"];
    }
  }

  if (self->_text)
  {
    v49 = [(_SFPBRFFormattedText *)self text];
    v50 = [v49 copy];
    [v3 setObject:v50 forKeyedSubscript:@"text"];
  }

  if (self->_text_encapsulation)
  {
    v51 = [(_SFPBRFFormattedText *)self text_encapsulation];
    v52 = [v51 dictionaryRepresentation];
    if (v52)
    {
      [v3 setObject:v52 forKeyedSubscript:@"textEncapsulation"];
    }

    else
    {
      v53 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v53 forKeyedSubscript:@"textEncapsulation"];
    }
  }

  if (self->_weight)
  {
    v54 = [(_SFPBRFFormattedText *)self weight];
    if (v54 >= 0xA)
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v54];
    }

    else
    {
      v55 = off_1E7ACE220[v54];
    }

    [v3 setObject:v55 forKeyedSubscript:@"weight"];
  }

  v56 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_67;
  }

  v5 = [(_SFPBRFFormattedText *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_66;
  }

  v7 = [(_SFPBRFFormattedText *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFFormattedText *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFormattedText *)self inline_image_element];
  v6 = [v4 inline_image_element];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_66;
  }

  v12 = [(_SFPBRFFormattedText *)self inline_image_element];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFFormattedText *)self inline_image_element];
    v15 = [v4 inline_image_element];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFormattedText *)self color];
  v6 = [v4 color];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_66;
  }

  v17 = [(_SFPBRFFormattedText *)self color];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFFormattedText *)self color];
    v20 = [v4 color];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFormattedText *)self is_italic];
  v6 = [v4 is_italic];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_66;
  }

  v22 = [(_SFPBRFFormattedText *)self is_italic];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBRFFormattedText *)self is_italic];
    v25 = [v4 is_italic];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFormattedText *)self is_bold];
  v6 = [v4 is_bold];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_66;
  }

  v27 = [(_SFPBRFFormattedText *)self is_bold];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBRFFormattedText *)self is_bold];
    v30 = [v4 is_bold];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFormattedText *)self text_encapsulation];
  v6 = [v4 text_encapsulation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_66;
  }

  v32 = [(_SFPBRFFormattedText *)self text_encapsulation];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBRFFormattedText *)self text_encapsulation];
    v35 = [v4 text_encapsulation];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFormattedText *)self is_highlighted];
  v6 = [v4 is_highlighted];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_66;
  }

  v37 = [(_SFPBRFFormattedText *)self is_highlighted];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBRFFormattedText *)self is_highlighted];
    v40 = [v4 is_highlighted];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFormattedText *)self background_color];
  v6 = [v4 background_color];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_66;
  }

  v42 = [(_SFPBRFFormattedText *)self background_color];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBRFFormattedText *)self background_color];
    v45 = [v4 background_color];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFormattedText *)self attributions];
  v6 = [v4 attributions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_66;
  }

  v47 = [(_SFPBRFFormattedText *)self attributions];
  if (v47)
  {
    v48 = v47;
    v49 = [(_SFPBRFFormattedText *)self attributions];
    v50 = [v4 attributions];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFormattedText *)self highlighted_substrings];
  v6 = [v4 highlighted_substrings];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_66;
  }

  v52 = [(_SFPBRFFormattedText *)self highlighted_substrings];
  if (v52)
  {
    v53 = v52;
    v54 = [(_SFPBRFFormattedText *)self highlighted_substrings];
    v55 = [v4 highlighted_substrings];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFormattedText *)self font];
  v6 = [v4 font];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_66;
  }

  v57 = [(_SFPBRFFormattedText *)self font];
  if (v57)
  {
    v58 = v57;
    v59 = [(_SFPBRFFormattedText *)self font];
    v60 = [v4 font];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFormattedText *)self is_underlined];
  v6 = [v4 is_underlined];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_66;
  }

  v62 = [(_SFPBRFFormattedText *)self is_underlined];
  if (v62)
  {
    v63 = v62;
    v64 = [(_SFPBRFFormattedText *)self is_underlined];
    v65 = [v4 is_underlined];
    v66 = [v64 isEqual:v65];

    if (!v66)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFFormattedText *)self engageable];
  v6 = [v4 engageable];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_66:

    goto LABEL_67;
  }

  v67 = [(_SFPBRFFormattedText *)self engageable];
  if (v67)
  {
    v68 = v67;
    v69 = [(_SFPBRFFormattedText *)self engageable];
    v70 = [v4 engageable];
    v71 = [v69 isEqual:v70];

    if (!v71)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  weight = self->_weight;
  if (weight == [v4 weight])
  {
    design = self->_design;
    v72 = design == [v4 design];
    goto LABEL_68;
  }

LABEL_67:
  v72 = 0;
LABEL_68:

  return v72;
}

- (void)writeTo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFFormattedText *)self text];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBRFFormattedText *)self inline_image_element];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFFormattedText *)self color];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBRFFormattedText *)self is_italic];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_SFPBRFFormattedText *)self is_bold];
  if (v9)
  {
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_SFPBRFFormattedText *)self text_encapsulation];
  if (v10)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_SFPBRFFormattedText *)self is_highlighted];
  if (v11)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_SFPBRFFormattedText *)self background_color];
  if (v12)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_SFPBRFFormattedText *)self attributions];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v33 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v15);
  }

  v19 = [(_SFPBRFFormattedText *)self highlighted_substrings];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v29 + 1) + 8 * v23);
        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v21);
  }

  v25 = [(_SFPBRFFormattedText *)self font];
  if (v25)
  {
    PBDataWriterWriteSubmessage();
  }

  v26 = [(_SFPBRFFormattedText *)self is_underlined];
  if (v26)
  {
    PBDataWriterWriteSubmessage();
  }

  v27 = [(_SFPBRFFormattedText *)self engageable];
  if (v27)
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

- (void)addHighlighted_substrings:(id)a3
{
  v4 = a3;
  highlighted_substrings = self->_highlighted_substrings;
  v8 = v4;
  if (!highlighted_substrings)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_highlighted_substrings;
    self->_highlighted_substrings = v6;

    v4 = v8;
    highlighted_substrings = self->_highlighted_substrings;
  }

  [(NSArray *)highlighted_substrings addObject:v4];
}

- (void)setHighlighted_substrings:(id)a3
{
  v4 = [a3 copy];
  highlighted_substrings = self->_highlighted_substrings;
  self->_highlighted_substrings = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addAttributions:(id)a3
{
  v4 = a3;
  attributions = self->_attributions;
  v8 = v4;
  if (!attributions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_attributions;
    self->_attributions = v6;

    v4 = v8;
    attributions = self->_attributions;
  }

  [(NSArray *)attributions addObject:v4];
}

- (void)setAttributions:(id)a3
{
  v4 = [a3 copy];
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

- (void)setInline_image_element:(id)a3
{
  v4 = a3;
  text = self->_text;
  self->_text = 0;

  self->_whichValue = 2 * (v4 != 0);
  inline_image_element = self->_inline_image_element;
  self->_inline_image_element = v4;
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

- (void)setText:(id)a3
{
  inline_image_element = self->_inline_image_element;
  self->_inline_image_element = 0;
  v7 = a3;

  self->_whichValue = v7 != 0;
  v5 = [v7 copy];
  text = self->_text;
  self->_text = v5;
}

@end