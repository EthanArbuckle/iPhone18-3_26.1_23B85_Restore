@interface _SFPBRFSummaryItemButtonCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSummaryItemButtonCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSummaryItemButtonCardSection)initWithFacade:(id)facade;
- (_SFPBRFSummaryItemButtonCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_2:(id)text_2;
- (void)addText_3:(id)text_3;
- (void)setText_2:(id)text_2;
- (void)setText_3:(id)text_3;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSummaryItemButtonCardSection

- (_SFPBRFSummaryItemButtonCardSection)initWithFacade:(id)facade
{
  v59 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFSummaryItemButtonCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setText_1:v9];
    }

    button = [facadeCopy button];

    if (button)
    {
      v11 = [_SFPBButtonItem alloc];
      button2 = [facadeCopy button];
      v13 = [(_SFPBButtonItem *)v11 initWithFacade:button2];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setButton_1:v13];
    }

    button3 = [facadeCopy button];

    if (button3)
    {
      v15 = [_SFPBButtonItem alloc];
      button4 = [facadeCopy button];
      v17 = [(_SFPBButtonItem *)v15 initWithFacade:button4];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setButton_2:v17];
    }

    button5 = [facadeCopy button];

    if (button5)
    {
      v19 = [_SFPBButtonItem alloc];
      button6 = [facadeCopy button];
      v21 = [(_SFPBButtonItem *)v19 initWithFacade:button6];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setButton_3:v21];
    }

    text3 = [facadeCopy text];
    if (text3)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    text4 = [facadeCopy text];
    v25 = [text4 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v54;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v54 != v27)
          {
            objc_enumerationMutation(text4);
          }

          v29 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v53 + 1) + 8 * i)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [text4 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v26);
    }

    [(_SFPBRFSummaryItemButtonCardSection *)v5 setText_2s:v23];
    text5 = [facadeCopy text];
    if (text5)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v31 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    text6 = [facadeCopy text];
    v33 = [text6 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v50;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v50 != v35)
          {
            objc_enumerationMutation(text6);
          }

          v37 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v49 + 1) + 8 * j)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [text6 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v34);
    }

    [(_SFPBRFSummaryItemButtonCardSection *)v5 setText_3s:v31];
    text7 = [facadeCopy text];

    if (text7)
    {
      v39 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v41 = [(_SFPBRFTextProperty *)v39 initWithFacade:text8];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setText_4:v41];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v43 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v45 = [(_SFPBRFVisualProperty *)v43 initWithFacade:thumbnail2];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setThumbnail:v45];
    }

    if ([facadeCopy hasButtonItemsAreTrailing])
    {
      -[_SFPBRFSummaryItemButtonCardSection setButtonItemsAreTrailing:](v5, "setButtonItemsAreTrailing:", [facadeCopy buttonItemsAreTrailing]);
    }

    v46 = v5;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemButtonCardSection)initWithDictionary:(id)dictionary
{
  v53 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v50.receiver = self;
  v50.super_class = _SFPBRFSummaryItemButtonCardSection;
  v5 = [(_SFPBRFSummaryItemButtonCardSection *)&v50 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"button1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBButtonItem alloc] initWithDictionary:v8];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setButton_1:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"button2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBButtonItem alloc] initWithDictionary:v10];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setButton_2:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"button3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBButtonItem alloc] initWithDictionary:v12];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setButton_3:v13];
    }

    v38 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    v41 = v14;
    v40 = v6;
    v39 = v10;
    if (objc_opt_isKindOfClass())
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v47;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v47 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v46 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [[_SFPBRFTextProperty alloc] initWithDictionary:v20];
              [(_SFPBRFSummaryItemButtonCardSection *)v5 addText_2:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v17);
      }

      v6 = v40;
      v10 = v39;
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v43;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v43 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v42 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [[_SFPBRFTextProperty alloc] initWithDictionary:v28];
              [(_SFPBRFSummaryItemButtonCardSection *)v5 addText_3:v29];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v25);
      }

      v6 = v40;
      v10 = v39;
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRFTextProperty alloc] initWithDictionary:v30];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setText_4:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v32];
      [(_SFPBRFSummaryItemButtonCardSection *)v5 setThumbnail:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"buttonItemsAreTrailing"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFSummaryItemButtonCardSection setButtonItemsAreTrailing:](v5, "setButtonItemsAreTrailing:", [v34 BOOLValue]);
    }

    v35 = v5;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemButtonCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemButtonCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSummaryItemButtonCardSection *)self dictionaryRepresentation];
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
  v51 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_buttonItemsAreTrailing)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFSummaryItemButtonCardSection buttonItemsAreTrailing](self, "buttonItemsAreTrailing")}];
    [dictionary setObject:v4 forKeyedSubscript:@"buttonItemsAreTrailing"];
  }

  if (self->_button_1)
  {
    button = [(_SFPBRFSummaryItemButtonCardSection *)self button];
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
    button2 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
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
    button3 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
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
    text = [(_SFPBRFSummaryItemButtonCardSection *)self text];
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

  if ([(NSArray *)self->_text_2s count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v18 = self->_text_2s;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(v18);
          }

          dictionaryRepresentation5 = [*(*(&v45 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null5];
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v20);
    }

    [dictionary setObject:array forKeyedSubscript:@"text2"];
  }

  if ([(NSArray *)self->_text_3s count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = self->_text_3s;
    v27 = [(NSArray *)v26 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v42;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v26);
          }

          dictionaryRepresentation6 = [*(*(&v41 + 1) + 8 * j) dictionaryRepresentation];
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

        v28 = [(NSArray *)v26 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v28);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"text3"];
  }

  if (self->_text_4)
  {
    text2 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
    dictionaryRepresentation7 = [text2 dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"text4"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"text4"];
    }
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFSummaryItemButtonCardSection *)self thumbnail];
    dictionaryRepresentation8 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"thumbnail"];
    }
  }

  v39 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBButtonItem *)self->_button_1 hash];
  v5 = [(_SFPBButtonItem *)self->_button_2 hash];
  v6 = [(_SFPBButtonItem *)self->_button_3 hash];
  v7 = [(NSArray *)self->_text_2s hash];
  v8 = [(NSArray *)self->_text_3s hash];
  v9 = [(_SFPBRFTextProperty *)self->_text_4 hash];
  v10 = [(_SFPBRFVisualProperty *)self->_thumbnail hash];
  v11 = 2654435761;
  if (!self->_buttonItemsAreTrailing)
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  text = [(_SFPBRFSummaryItemButtonCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_41;
  }

  text3 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  text2 = [equalCopy button];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_41;
  }

  button = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  if (button)
  {
    v13 = button;
    button2 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
    button3 = [equalCopy button];
    v16 = [button2 isEqual:button3];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  text2 = [equalCopy button];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_41;
  }

  button4 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  if (button4)
  {
    v18 = button4;
    button5 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
    button6 = [equalCopy button];
    v21 = [button5 isEqual:button6];

    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  text2 = [equalCopy button];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_41;
  }

  button7 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  if (button7)
  {
    v23 = button7;
    button8 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
    button9 = [equalCopy button];
    v26 = [button8 isEqual:button9];

    if (!v26)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemButtonCardSection *)self text_2s];
  text2 = [equalCopy text_2s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_41;
  }

  text_2s = [(_SFPBRFSummaryItemButtonCardSection *)self text_2s];
  if (text_2s)
  {
    v28 = text_2s;
    text_2s2 = [(_SFPBRFSummaryItemButtonCardSection *)self text_2s];
    text_2s3 = [equalCopy text_2s];
    v31 = [text_2s2 isEqual:text_2s3];

    if (!v31)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemButtonCardSection *)self text_3s];
  text2 = [equalCopy text_3s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_41;
  }

  text_3s = [(_SFPBRFSummaryItemButtonCardSection *)self text_3s];
  if (text_3s)
  {
    v33 = text_3s;
    text_3s2 = [(_SFPBRFSummaryItemButtonCardSection *)self text_3s];
    text_3s3 = [equalCopy text_3s];
    v36 = [text_3s2 isEqual:text_3s3];

    if (!v36)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemButtonCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_41;
  }

  text6 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
  if (text6)
  {
    v38 = text6;
    text7 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
    text8 = [equalCopy text];
    v41 = [text7 isEqual:text8];

    if (!v41)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemButtonCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) != (text2 == 0))
  {
    thumbnail = [(_SFPBRFSummaryItemButtonCardSection *)self thumbnail];
    if (!thumbnail)
    {

LABEL_45:
      buttonItemsAreTrailing = self->_buttonItemsAreTrailing;
      v47 = buttonItemsAreTrailing == [equalCopy buttonItemsAreTrailing];
      goto LABEL_43;
    }

    v43 = thumbnail;
    thumbnail2 = [(_SFPBRFSummaryItemButtonCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v46 = [thumbnail2 isEqual:thumbnail3];

    if (v46)
    {
      goto LABEL_45;
    }
  }

  else
  {
LABEL_41:
  }

LABEL_42:
  v47 = 0;
LABEL_43:

  return v47;
}

- (void)writeTo:(id)to
{
  v34 = *MEMORY[0x1E69E9840];
  toCopy = to;
  text = [(_SFPBRFSummaryItemButtonCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  button = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  if (button)
  {
    PBDataWriterWriteSubmessage();
  }

  button2 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  if (button2)
  {
    PBDataWriterWriteSubmessage();
  }

  button3 = [(_SFPBRFSummaryItemButtonCardSection *)self button];
  if (button3)
  {
    PBDataWriterWriteSubmessage();
  }

  text_2s = [(_SFPBRFSummaryItemButtonCardSection *)self text_2s];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [text_2s countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(text_2s);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [text_2s countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  text_3s = [(_SFPBRFSummaryItemButtonCardSection *)self text_3s];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [text_3s countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(text_3s);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [text_3s countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  text2 = [(_SFPBRFSummaryItemButtonCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFSummaryItemButtonCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFSummaryItemButtonCardSection *)self buttonItemsAreTrailing])
  {
    PBDataWriterWriteBOOLField();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)addText_3:(id)text_3
{
  text_3Copy = text_3;
  text_3s = self->_text_3s;
  v8 = text_3Copy;
  if (!text_3s)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_3s;
    self->_text_3s = array;

    text_3Copy = v8;
    text_3s = self->_text_3s;
  }

  [(NSArray *)text_3s addObject:text_3Copy];
}

- (void)setText_3:(id)text_3
{
  v4 = [text_3 copy];
  text_3s = self->_text_3s;
  self->_text_3s = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addText_2:(id)text_2
{
  text_2Copy = text_2;
  text_2s = self->_text_2s;
  v8 = text_2Copy;
  if (!text_2s)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_2s;
    self->_text_2s = array;

    text_2Copy = v8;
    text_2s = self->_text_2s;
  }

  [(NSArray *)text_2s addObject:text_2Copy];
}

- (void)setText_2:(id)text_2
{
  v4 = [text_2 copy];
  text_2s = self->_text_2s;
  self->_text_2s = v4;

  MEMORY[0x1EEE66BB8]();
}

@end