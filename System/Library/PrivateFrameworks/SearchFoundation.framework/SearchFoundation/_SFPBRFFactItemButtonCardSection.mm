@interface _SFPBRFFactItemButtonCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFFactItemButtonCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFFactItemButtonCardSection)initWithFacade:(id)facade;
- (_SFPBRFFactItemButtonCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_4:(id)text_4;
- (void)setText_4:(id)text_4;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFFactItemButtonCardSection

- (_SFPBRFFactItemButtonCardSection)initWithFacade:(id)facade
{
  v58 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFFactItemButtonCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_1:v9];
    }

    button = [facadeCopy button];

    if (button)
    {
      v11 = [_SFPBButtonItem alloc];
      button2 = [facadeCopy button];
      v13 = [(_SFPBButtonItem *)v11 initWithFacade:button2];
      [(_SFPBRFFactItemButtonCardSection *)v5 setButton_1:v13];
    }

    button3 = [facadeCopy button];

    if (button3)
    {
      v15 = [_SFPBButtonItem alloc];
      button4 = [facadeCopy button];
      v17 = [(_SFPBButtonItem *)v15 initWithFacade:button4];
      [(_SFPBRFFactItemButtonCardSection *)v5 setButton_2:v17];
    }

    button5 = [facadeCopy button];

    if (button5)
    {
      v19 = [_SFPBButtonItem alloc];
      button6 = [facadeCopy button];
      v21 = [(_SFPBButtonItem *)v19 initWithFacade:button6];
      [(_SFPBRFFactItemButtonCardSection *)v5 setButton_3:v21];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v23 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v25 = [(_SFPBRFTextProperty *)v23 initWithFacade:text4];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_2:v25];
    }

    text5 = [facadeCopy text];

    if (text5)
    {
      v27 = [_SFPBRFTextProperty alloc];
      text6 = [facadeCopy text];
      v29 = [(_SFPBRFTextProperty *)v27 initWithFacade:text6];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_3:v29];
    }

    text7 = [facadeCopy text];
    if (text7)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v31 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    text8 = [facadeCopy text];
    v33 = [text8 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v54;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v54 != v35)
          {
            objc_enumerationMutation(text8);
          }

          v37 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v53 + 1) + 8 * i)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [text8 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v34);
    }

    [(_SFPBRFFactItemButtonCardSection *)v5 setText_4s:v31];
    text9 = [facadeCopy text];

    if (text9)
    {
      v39 = [_SFPBRFTextProperty alloc];
      text10 = [facadeCopy text];
      v41 = [(_SFPBRFTextProperty *)v39 initWithFacade:text10];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_5:v41];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v43 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v45 = [(_SFPBRFVisualProperty *)v43 initWithFacade:thumbnail2];
      [(_SFPBRFFactItemButtonCardSection *)v5 setThumbnail:v45];
    }

    thumbnail22 = [facadeCopy thumbnail2];

    if (thumbnail22)
    {
      v47 = [_SFPBRFVisualProperty alloc];
      thumbnail23 = [facadeCopy thumbnail2];
      v49 = [(_SFPBRFVisualProperty *)v47 initWithFacade:thumbnail23];
      [(_SFPBRFFactItemButtonCardSection *)v5 setThumbnail2:v49];
    }

    if ([facadeCopy hasButtonItemsAreBottom])
    {
      -[_SFPBRFFactItemButtonCardSection setButtonItemsAreBottom:](v5, "setButtonItemsAreBottom:", [facadeCopy buttonItemsAreBottom]);
    }

    v50 = v5;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFactItemButtonCardSection)initWithDictionary:(id)dictionary
{
  v48 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v46.receiver = self;
  v46.super_class = _SFPBRFFactItemButtonCardSection;
  v5 = [(_SFPBRFFactItemButtonCardSection *)&v46 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"button1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBButtonItem alloc] initWithDictionary:v8];
      [(_SFPBRFFactItemButtonCardSection *)v5 setButton_1:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"button2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBButtonItem alloc] initWithDictionary:v10];
      [(_SFPBRFFactItemButtonCardSection *)v5 setButton_2:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"button3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBButtonItem alloc] initWithDictionary:v12];
      [(_SFPBRFFactItemButtonCardSection *)v5 setButton_3:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFTextProperty alloc] initWithDictionary:v14];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_2:v15];
    }

    v39 = v14;
    v40 = v12;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_3:v17];
    }

    v38 = v16;
    v41 = v10;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v8;
      v37 = v6;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v43;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v43 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v42 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[_SFPBRFTextProperty alloc] initWithDictionary:v24];
              [(_SFPBRFFactItemButtonCardSection *)v5 addText_4:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v21);
      }

      v8 = v36;
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:{@"text5", v36, v37}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRFTextProperty alloc] initWithDictionary:v26];
      [(_SFPBRFFactItemButtonCardSection *)v5 setText_5:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v28];
      [(_SFPBRFFactItemButtonCardSection *)v5 setThumbnail:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v30];
      [(_SFPBRFFactItemButtonCardSection *)v5 setThumbnail2:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"buttonItemsAreBottom"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFFactItemButtonCardSection setButtonItemsAreBottom:](v5, "setButtonItemsAreBottom:", [v32 BOOLValue]);
    }

    v33 = v5;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFactItemButtonCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFFactItemButtonCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFFactItemButtonCardSection *)self dictionaryRepresentation];
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
  v47 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_buttonItemsAreBottom)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFFactItemButtonCardSection buttonItemsAreBottom](self, "buttonItemsAreBottom")}];
    [dictionary setObject:v4 forKeyedSubscript:@"buttonItemsAreBottom"];
  }

  if (self->_button_1)
  {
    button = [(_SFPBRFFactItemButtonCardSection *)self button];
    dictionaryRepresentation = [button dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"button1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"button1"];
    }
  }

  if (self->_button_2)
  {
    button2 = [(_SFPBRFFactItemButtonCardSection *)self button];
    dictionaryRepresentation2 = [button2 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"button2"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"button2"];
    }
  }

  if (self->_button_3)
  {
    button3 = [(_SFPBRFFactItemButtonCardSection *)self button];
    dictionaryRepresentation3 = [button3 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"button3"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"button3"];
    }
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFFactItemButtonCardSection *)self text];
    dictionaryRepresentation4 = [text dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"text1"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"text1"];
    }
  }

  if (self->_text_2)
  {
    text2 = [(_SFPBRFFactItemButtonCardSection *)self text];
    dictionaryRepresentation5 = [text2 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"text2"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"text2"];
    }
  }

  if (self->_text_3)
  {
    text3 = [(_SFPBRFFactItemButtonCardSection *)self text];
    dictionaryRepresentation6 = [text3 dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"text3"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"text3"];
    }
  }

  if ([(NSArray *)self->_text_4s count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v24 = self->_text_4s;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v43;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v43 != v27)
          {
            objc_enumerationMutation(v24);
          }

          dictionaryRepresentation7 = [*(*(&v42 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation7)
          {
            [array addObject:dictionaryRepresentation7];
          }

          else
          {
            null7 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null7];
          }
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v26);
    }

    [dictionary setObject:array forKeyedSubscript:@"text4"];
  }

  if (self->_text_5)
  {
    text4 = [(_SFPBRFFactItemButtonCardSection *)self text];
    dictionaryRepresentation8 = [text4 dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"text5"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"text5"];
    }
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFFactItemButtonCardSection *)self thumbnail];
    dictionaryRepresentation9 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_thumbnail2)
  {
    thumbnail2 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail2];
    dictionaryRepresentation10 = [thumbnail2 dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"thumbnail2"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"thumbnail2"];
    }
  }

  v40 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBButtonItem *)self->_button_1 hash];
  v5 = [(_SFPBButtonItem *)self->_button_2 hash];
  v6 = [(_SFPBButtonItem *)self->_button_3 hash];
  v7 = [(_SFPBRFTextProperty *)self->_text_2 hash];
  v8 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v9 = [(NSArray *)self->_text_4s hash];
  v10 = [(_SFPBRFTextProperty *)self->_text_5 hash];
  v11 = [(_SFPBRFVisualProperty *)self->_thumbnail hash];
  v12 = [(_SFPBRFVisualProperty *)self->_thumbnail2 hash];
  v13 = 2654435761;
  if (!self->_buttonItemsAreBottom)
  {
    v13 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  text = [(_SFPBRFFactItemButtonCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  text3 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFFactItemButtonCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemButtonCardSection *)self button];
  text2 = [equalCopy button];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  button = [(_SFPBRFFactItemButtonCardSection *)self button];
  if (button)
  {
    v13 = button;
    button2 = [(_SFPBRFFactItemButtonCardSection *)self button];
    button3 = [equalCopy button];
    v16 = [button2 isEqual:button3];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemButtonCardSection *)self button];
  text2 = [equalCopy button];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  button4 = [(_SFPBRFFactItemButtonCardSection *)self button];
  if (button4)
  {
    v18 = button4;
    button5 = [(_SFPBRFFactItemButtonCardSection *)self button];
    button6 = [equalCopy button];
    v21 = [button5 isEqual:button6];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemButtonCardSection *)self button];
  text2 = [equalCopy button];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  button7 = [(_SFPBRFFactItemButtonCardSection *)self button];
  if (button7)
  {
    v23 = button7;
    button8 = [(_SFPBRFFactItemButtonCardSection *)self button];
    button9 = [equalCopy button];
    v26 = [button8 isEqual:button9];

    if (!v26)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemButtonCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  text6 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (text6)
  {
    v28 = text6;
    text7 = [(_SFPBRFFactItemButtonCardSection *)self text];
    text8 = [equalCopy text];
    v31 = [text7 isEqual:text8];

    if (!v31)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemButtonCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  text9 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (text9)
  {
    v33 = text9;
    text10 = [(_SFPBRFFactItemButtonCardSection *)self text];
    text11 = [equalCopy text];
    v36 = [text10 isEqual:text11];

    if (!v36)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemButtonCardSection *)self text_4s];
  text2 = [equalCopy text_4s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  text_4s = [(_SFPBRFFactItemButtonCardSection *)self text_4s];
  if (text_4s)
  {
    v38 = text_4s;
    text_4s2 = [(_SFPBRFFactItemButtonCardSection *)self text_4s];
    text_4s3 = [equalCopy text_4s];
    v41 = [text_4s2 isEqual:text_4s3];

    if (!v41)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemButtonCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  text12 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (text12)
  {
    v43 = text12;
    text13 = [(_SFPBRFFactItemButtonCardSection *)self text];
    text14 = [equalCopy text];
    v46 = [text13 isEqual:text14];

    if (!v46)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemButtonCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  thumbnail = [(_SFPBRFFactItemButtonCardSection *)self thumbnail];
  if (thumbnail)
  {
    v48 = thumbnail;
    thumbnail2 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v51 = [thumbnail2 isEqual:thumbnail3];

    if (!v51)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemButtonCardSection *)self thumbnail2];
  text2 = [equalCopy thumbnail2];
  if ((text != 0) != (text2 == 0))
  {
    thumbnail22 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail2];
    if (!thumbnail22)
    {

LABEL_55:
      buttonItemsAreBottom = self->_buttonItemsAreBottom;
      v57 = buttonItemsAreBottom == [equalCopy buttonItemsAreBottom];
      goto LABEL_53;
    }

    v53 = thumbnail22;
    thumbnail23 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail2];
    thumbnail24 = [equalCopy thumbnail2];
    v56 = [thumbnail23 isEqual:thumbnail24];

    if (v56)
    {
      goto LABEL_55;
    }
  }

  else
  {
LABEL_51:
  }

LABEL_52:
  v57 = 0;
LABEL_53:

  return v57;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  toCopy = to;
  text = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  button = [(_SFPBRFFactItemButtonCardSection *)self button];
  if (button)
  {
    PBDataWriterWriteSubmessage();
  }

  button2 = [(_SFPBRFFactItemButtonCardSection *)self button];
  if (button2)
  {
    PBDataWriterWriteSubmessage();
  }

  button3 = [(_SFPBRFFactItemButtonCardSection *)self button];
  if (button3)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text3 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  text_4s = [(_SFPBRFFactItemButtonCardSection *)self text_4s];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [text_4s countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(text_4s);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [text_4s countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  text4 = [(_SFPBRFFactItemButtonCardSection *)self text];
  if (text4)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFFactItemButtonCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail2 = [(_SFPBRFFactItemButtonCardSection *)self thumbnail2];
  if (thumbnail2)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFFactItemButtonCardSection *)self buttonItemsAreBottom])
  {
    PBDataWriterWriteBOOLField();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addText_4:(id)text_4
{
  text_4Copy = text_4;
  text_4s = self->_text_4s;
  v8 = text_4Copy;
  if (!text_4s)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_4s;
    self->_text_4s = array;

    text_4Copy = v8;
    text_4s = self->_text_4s;
  }

  [(NSArray *)text_4s addObject:text_4Copy];
}

- (void)setText_4:(id)text_4
{
  v4 = [text_4 copy];
  text_4s = self->_text_4s;
  self->_text_4s = v4;

  MEMORY[0x1EEE66BB8]();
}

@end