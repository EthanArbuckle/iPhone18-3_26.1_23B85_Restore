@interface _SFPBRFFactItemStandardCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFFactItemStandardCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFFactItemStandardCardSection)initWithFacade:(id)facade;
- (_SFPBRFFactItemStandardCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_4:(id)text_4;
- (void)addText_5:(id)text_5;
- (void)setText_4:(id)text_4;
- (void)setText_5:(id)text_5;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFFactItemStandardCardSection

- (_SFPBRFFactItemStandardCardSection)initWithFacade:(id)facade
{
  v55 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFFactItemStandardCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFFactItemStandardCardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text4];
      [(_SFPBRFFactItemStandardCardSection *)v5 setText_2:v13];
    }

    text5 = [facadeCopy text];

    if (text5)
    {
      v15 = [_SFPBRFTextProperty alloc];
      text6 = [facadeCopy text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:text6];
      [(_SFPBRFFactItemStandardCardSection *)v5 setText_3:v17];
    }

    text7 = [facadeCopy text];
    if (text7)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    text8 = [facadeCopy text];
    v21 = [text8 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v50;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(text8);
          }

          v25 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v49 + 1) + 8 * i)];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [text8 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v22);
    }

    [(_SFPBRFFactItemStandardCardSection *)v5 setText_4s:v19];
    text9 = [facadeCopy text];
    if (text9)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    text10 = [facadeCopy text];
    v29 = [text10 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v46;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(text10);
          }

          v33 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v45 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [text10 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v30);
    }

    [(_SFPBRFFactItemStandardCardSection *)v5 setText_5s:v27];
    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v35 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v37 = [(_SFPBRFVisualProperty *)v35 initWithFacade:thumbnail2];
      [(_SFPBRFFactItemStandardCardSection *)v5 setThumbnail:v37];
    }

    thumbnail22 = [facadeCopy thumbnail2];

    if (thumbnail22)
    {
      v39 = [_SFPBRFVisualProperty alloc];
      thumbnail23 = [facadeCopy thumbnail2];
      v41 = [(_SFPBRFVisualProperty *)v39 initWithFacade:thumbnail23];
      [(_SFPBRFFactItemStandardCardSection *)v5 setThumbnail2:v41];
    }

    v42 = v5;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFactItemStandardCardSection)initWithDictionary:(id)dictionary
{
  v52 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v49.receiver = self;
  v49.super_class = _SFPBRFFactItemStandardCardSection;
  v5 = [(_SFPBRFFactItemStandardCardSection *)&v49 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFFactItemStandardCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFFactItemStandardCardSection *)v5 setText_2:v9];
    }

    v40 = v6;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFFactItemStandardCardSection *)v5 setText_3:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    v38 = v8;
    v35 = v12;
    if (objc_opt_isKindOfClass())
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v46;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v46 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v45 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[_SFPBRFTextProperty alloc] initWithDictionary:v18];
              [(_SFPBRFFactItemStandardCardSection *)v5 addText_4:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v45 objects:v51 count:16];
        }

        while (v15);
      }

      v8 = v38;
      v12 = v35;
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:{@"text5", v35, v10, v38}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v42;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v42 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v41 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [[_SFPBRFTextProperty alloc] initWithDictionary:v26];
              [(_SFPBRFFactItemStandardCardSection *)v5 addText_5:v27];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v41 objects:v50 count:16];
        }

        while (v23);
      }

      v10 = v37;
      v8 = v39;
      v12 = v36;
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v28];
      [(_SFPBRFFactItemStandardCardSection *)v5 setThumbnail:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v30];
      [(_SFPBRFFactItemStandardCardSection *)v5 setThumbnail2:v31];
    }

    v32 = v5;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFactItemStandardCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFFactItemStandardCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFFactItemStandardCardSection *)self dictionaryRepresentation];
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
  if (self->_text_1)
  {
    text = [(_SFPBRFFactItemStandardCardSection *)self text];
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
    text2 = [(_SFPBRFFactItemStandardCardSection *)self text];
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

  if (self->_text_3)
  {
    text3 = [(_SFPBRFFactItemStandardCardSection *)self text];
    dictionaryRepresentation3 = [text3 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"text3"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"text3"];
    }
  }

  if ([(NSArray *)self->_text_4s count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v14 = self->_text_4s;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation4 = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null4];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array forKeyedSubscript:@"text4"];
  }

  if ([(NSArray *)self->_text_5s count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = self->_text_5s;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v38;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation5 = [*(*(&v37 + 1) + 8 * j) dictionaryRepresentation];
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

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v24);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"text5"];
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFFactItemStandardCardSection *)self thumbnail];
    dictionaryRepresentation6 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_thumbnail2)
  {
    thumbnail2 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail2];
    dictionaryRepresentation7 = [thumbnail2 dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"thumbnail2"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"thumbnail2"];
    }
  }

  v35 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v5 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_text_4s hash];
  v7 = [(NSArray *)self->_text_5s hash];
  v8 = v7 ^ [(_SFPBRFVisualProperty *)self->_thumbnail hash];
  return v6 ^ v8 ^ [(_SFPBRFVisualProperty *)self->_thumbnail2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  text = [(_SFPBRFFactItemStandardCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text3 = [(_SFPBRFFactItemStandardCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFFactItemStandardCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemStandardCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text6 = [(_SFPBRFFactItemStandardCardSection *)self text];
  if (text6)
  {
    v13 = text6;
    text7 = [(_SFPBRFFactItemStandardCardSection *)self text];
    text8 = [equalCopy text];
    v16 = [text7 isEqual:text8];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemStandardCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text9 = [(_SFPBRFFactItemStandardCardSection *)self text];
  if (text9)
  {
    v18 = text9;
    text10 = [(_SFPBRFFactItemStandardCardSection *)self text];
    text11 = [equalCopy text];
    v21 = [text10 isEqual:text11];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemStandardCardSection *)self text_4s];
  text2 = [equalCopy text_4s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text_4s = [(_SFPBRFFactItemStandardCardSection *)self text_4s];
  if (text_4s)
  {
    v23 = text_4s;
    text_4s2 = [(_SFPBRFFactItemStandardCardSection *)self text_4s];
    text_4s3 = [equalCopy text_4s];
    v26 = [text_4s2 isEqual:text_4s3];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemStandardCardSection *)self text_5s];
  text2 = [equalCopy text_5s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text_5s = [(_SFPBRFFactItemStandardCardSection *)self text_5s];
  if (text_5s)
  {
    v28 = text_5s;
    text_5s2 = [(_SFPBRFFactItemStandardCardSection *)self text_5s];
    text_5s3 = [equalCopy text_5s];
    v31 = [text_5s2 isEqual:text_5s3];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemStandardCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  thumbnail = [(_SFPBRFFactItemStandardCardSection *)self thumbnail];
  if (thumbnail)
  {
    v33 = thumbnail;
    thumbnail2 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v36 = [thumbnail2 isEqual:thumbnail3];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFFactItemStandardCardSection *)self thumbnail2];
  text2 = [equalCopy thumbnail2];
  if ((text != 0) != (text2 == 0))
  {
    thumbnail22 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail2];
    if (!thumbnail22)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = thumbnail22;
    thumbnail23 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail2];
    thumbnail24 = [equalCopy thumbnail2];
    v41 = [thumbnail23 isEqual:thumbnail24];

    if (v41)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
  }

LABEL_37:
  v42 = 0;
LABEL_38:

  return v42;
}

- (void)writeTo:(id)to
{
  v33 = *MEMORY[0x1E69E9840];
  toCopy = to;
  text = [(_SFPBRFFactItemStandardCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFFactItemStandardCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text3 = [(_SFPBRFFactItemStandardCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  text_4s = [(_SFPBRFFactItemStandardCardSection *)self text_4s];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [text_4s countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(text_4s);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [text_4s countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  text_5s = [(_SFPBRFFactItemStandardCardSection *)self text_5s];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [text_5s countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(text_5s);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [text_5s countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  thumbnail = [(_SFPBRFFactItemStandardCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail2 = [(_SFPBRFFactItemStandardCardSection *)self thumbnail2];
  if (thumbnail2)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = *MEMORY[0x1E69E9840];
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