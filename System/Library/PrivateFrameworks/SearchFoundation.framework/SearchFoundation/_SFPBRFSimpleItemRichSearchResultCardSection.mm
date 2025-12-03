@interface _SFPBRFSimpleItemRichSearchResultCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSimpleItemRichSearchResultCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSimpleItemRichSearchResultCardSection)initWithFacade:(id)facade;
- (_SFPBRFSimpleItemRichSearchResultCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_3:(id)text_3;
- (void)addText_5:(id)text_5;
- (void)setText_3:(id)text_3;
- (void)setText_5:(id)text_5;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSimpleItemRichSearchResultCardSection

- (_SFPBRFSimpleItemRichSearchResultCardSection)initWithFacade:(id)facade
{
  v63 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text4];
      [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setText_2:v13];
    }

    text5 = [facadeCopy text];
    if (text5)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    text6 = [facadeCopy text];
    v17 = [text6 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v58;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v58 != v19)
          {
            objc_enumerationMutation(text6);
          }

          v21 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v57 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [text6 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v18);
    }

    [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setText_3s:v15];
    text7 = [facadeCopy text];

    if (text7)
    {
      v23 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v25 = [(_SFPBRFTextProperty *)v23 initWithFacade:text8];
      [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setText_4:v25];
    }

    text9 = [facadeCopy text];
    if (text9)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    text10 = [facadeCopy text];
    v29 = [text10 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v54;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v54 != v31)
          {
            objc_enumerationMutation(text10);
          }

          v33 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v53 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [text10 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v30);
    }

    [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setText_5s:v27];
    text11 = [facadeCopy text];

    if (text11)
    {
      v35 = [_SFPBRFTextProperty alloc];
      text12 = [facadeCopy text];
      v37 = [(_SFPBRFTextProperty *)v35 initWithFacade:text12];
      [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setText_6:v37];
    }

    text13 = [facadeCopy text];

    if (text13)
    {
      v39 = [_SFPBRFTextProperty alloc];
      text14 = [facadeCopy text];
      v41 = [(_SFPBRFTextProperty *)v39 initWithFacade:text14];
      [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setText_7:v41];
    }

    text15 = [facadeCopy text];

    if (text15)
    {
      v43 = [_SFPBRFTextProperty alloc];
      text16 = [facadeCopy text];
      v45 = [(_SFPBRFTextProperty *)v43 initWithFacade:text16];
      [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setText_8:v45];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v47 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v49 = [(_SFPBRFVisualProperty *)v47 initWithFacade:thumbnail2];
      [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setThumbnail:v49];
    }

    v50 = v5;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSimpleItemRichSearchResultCardSection)initWithDictionary:(id)dictionary
{
  v55 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v52.receiver = self;
  v52.super_class = _SFPBRFSimpleItemRichSearchResultCardSection;
  v5 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)&v52 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setText_2:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    v43 = v10;
    v42 = v8;
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v49;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v49 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v48 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [[_SFPBRFTextProperty alloc] initWithDictionary:v17];
              [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 addText_3:v18];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v48 objects:v54 count:16];
        }

        while (v14);
      }

      v6 = v11;
      v8 = v42;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBRFTextProperty alloc] initWithDictionary:v19];
      [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setText_4:v20];
    }

    v41 = v19;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"text5"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v6;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v45;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v45 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v44 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = [[_SFPBRFTextProperty alloc] initWithDictionary:v27];
              [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 addText_5:v28];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v44 objects:v53 count:16];
        }

        while (v24);
      }

      v8 = v42;
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:{@"text6", v40}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBRFTextProperty alloc] initWithDictionary:v29];
      [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setText_6:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"text7"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBRFTextProperty alloc] initWithDictionary:v31];
      [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setText_7:v32];
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"text8"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[_SFPBRFTextProperty alloc] initWithDictionary:v33];
      [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setText_8:v34];
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v35];
      [(_SFPBRFSimpleItemRichSearchResultCardSection *)v5 setThumbnail:v36];
    }

    v37 = v5;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSimpleItemRichSearchResultCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self dictionaryRepresentation];
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
  v53 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_text_1)
  {
    text = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
    dictionaryRepresentation = [text dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"text1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"text1"];
    }
  }

  if (self->_text_2)
  {
    text2 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
    dictionaryRepresentation2 = [text2 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"text2"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"text2"];
    }
  }

  if ([(NSArray *)self->_text_3s count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v11 = self->_text_3s;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v48;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v48 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation3 = [*(*(&v47 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"text3"];
  }

  if (self->_text_4)
  {
    text3 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
    dictionaryRepresentation4 = [text3 dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"text4"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"text4"];
    }
  }

  if ([(NSArray *)self->_text_5s count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v22 = self->_text_5s;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v44;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation5 = [*(*(&v43 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array2 addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null5];
          }
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v24);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"text5"];
  }

  if (self->_text_6)
  {
    text4 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
    dictionaryRepresentation6 = [text4 dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"text6"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"text6"];
    }
  }

  if (self->_text_7)
  {
    text5 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
    dictionaryRepresentation7 = [text5 dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"text7"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"text7"];
    }
  }

  if (self->_text_8)
  {
    text6 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
    dictionaryRepresentation8 = [text6 dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"text8"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"text8"];
    }
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self thumbnail];
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

  v41 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v5 = [(NSArray *)self->_text_3s hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  v7 = [(NSArray *)self->_text_5s hash];
  v8 = v7 ^ [(_SFPBRFTextProperty *)self->_text_6 hash];
  v9 = v6 ^ v8 ^ [(_SFPBRFTextProperty *)self->_text_7 hash];
  v10 = [(_SFPBRFTextProperty *)self->_text_8 hash];
  return v9 ^ v10 ^ [(_SFPBRFVisualProperty *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  text = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_46;
  }

  text3 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_46;
  }

  text6 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  if (text6)
  {
    v13 = text6;
    text7 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
    text8 = [equalCopy text];
    v16 = [text7 isEqual:text8];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text_3s];
  text2 = [equalCopy text_3s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_46;
  }

  text_3s = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text_3s];
  if (text_3s)
  {
    v18 = text_3s;
    text_3s2 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text_3s];
    text_3s3 = [equalCopy text_3s];
    v21 = [text_3s2 isEqual:text_3s3];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_46;
  }

  text9 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  if (text9)
  {
    v23 = text9;
    text10 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
    text11 = [equalCopy text];
    v26 = [text10 isEqual:text11];

    if (!v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text_5s];
  text2 = [equalCopy text_5s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_46;
  }

  text_5s = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text_5s];
  if (text_5s)
  {
    v28 = text_5s;
    text_5s2 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text_5s];
    text_5s3 = [equalCopy text_5s];
    v31 = [text_5s2 isEqual:text_5s3];

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_46;
  }

  text12 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  if (text12)
  {
    v33 = text12;
    text13 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
    text14 = [equalCopy text];
    v36 = [text13 isEqual:text14];

    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_46;
  }

  text15 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  if (text15)
  {
    v38 = text15;
    text16 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
    text17 = [equalCopy text];
    v41 = [text16 isEqual:text17];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_46;
  }

  text18 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  if (text18)
  {
    v43 = text18;
    text19 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
    text20 = [equalCopy text];
    v46 = [text19 isEqual:text20];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) != (text2 == 0))
  {
    thumbnail = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self thumbnail];
    if (!thumbnail)
    {

LABEL_50:
      v52 = 1;
      goto LABEL_48;
    }

    v48 = thumbnail;
    thumbnail2 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v51 = [thumbnail2 isEqual:thumbnail3];

    if (v51)
    {
      goto LABEL_50;
    }
  }

  else
  {
LABEL_46:
  }

LABEL_47:
  v52 = 0;
LABEL_48:

  return v52;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  text = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text_3s = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text_3s];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [text_3s countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(text_3s);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [text_3s countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  text3 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  text_5s = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text_5s];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = [text_5s countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(text_5s);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [text_5s countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v16);
  }

  text4 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  if (text4)
  {
    PBDataWriterWriteSubmessage();
  }

  text5 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  if (text5)
  {
    PBDataWriterWriteSubmessage();
  }

  text6 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self text];
  if (text6)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFSimpleItemRichSearchResultCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)addText_5:(id)text_5
{
  text_5Copy = text_5;
  text_5s = self->_text_5s;
  v8 = text_5Copy;
  if (!text_5s)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_5s;
    self->_text_5s = array;

    text_5Copy = v8;
    text_5s = self->_text_5s;
  }

  [(NSArray *)text_5s addObject:text_5Copy];
}

- (void)setText_5:(id)text_5
{
  v4 = [text_5 copy];
  text_5s = self->_text_5s;
  self->_text_5s = v4;

  MEMORY[0x1EEE66BB8]();
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

@end