@interface _SFPBRFSimpleItemStandardCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSimpleItemStandardCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSimpleItemStandardCardSection)initWithFacade:(id)facade;
- (_SFPBRFSimpleItemStandardCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_3:(id)text_3;
- (void)addText_4:(id)text_4;
- (void)setText_3:(id)text_3;
- (void)setText_4:(id)text_4;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSimpleItemStandardCardSection

- (_SFPBRFSimpleItemStandardCardSection)initWithFacade:(id)facade
{
  v51 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFSimpleItemStandardCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFSimpleItemStandardCardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text4];
      [(_SFPBRFSimpleItemStandardCardSection *)v5 setText_2:v13];
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

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    text6 = [facadeCopy text];
    v17 = [text6 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v46;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(text6);
          }

          v21 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v45 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [text6 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v18);
    }

    [(_SFPBRFSimpleItemStandardCardSection *)v5 setText_3s:v15];
    text7 = [facadeCopy text];
    if (text7)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    text8 = [facadeCopy text];
    v25 = [text8 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v42;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(text8);
          }

          v29 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v41 + 1) + 8 * j)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [text8 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v26);
    }

    [(_SFPBRFSimpleItemStandardCardSection *)v5 setText_4s:v23];
    text9 = [facadeCopy text];

    if (text9)
    {
      v31 = [_SFPBRFTextProperty alloc];
      text10 = [facadeCopy text];
      v33 = [(_SFPBRFTextProperty *)v31 initWithFacade:text10];
      [(_SFPBRFSimpleItemStandardCardSection *)v5 setText_5:v33];
    }

    text11 = [facadeCopy text];

    if (text11)
    {
      v35 = [_SFPBRFTextProperty alloc];
      text12 = [facadeCopy text];
      v37 = [(_SFPBRFTextProperty *)v35 initWithFacade:text12];
      [(_SFPBRFSimpleItemStandardCardSection *)v5 setText_6:v37];
    }

    v38 = v5;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSimpleItemStandardCardSection)initWithDictionary:(id)dictionary
{
  v46 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v43.receiver = self;
  v43.super_class = _SFPBRFSimpleItemStandardCardSection;
  v5 = [(_SFPBRFSimpleItemStandardCardSection *)&v43 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSimpleItemStandardCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSimpleItemStandardCardSection *)v5 setText_2:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    v34 = v6;
    v33 = v10;
    if (objc_opt_isKindOfClass())
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v40;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v40 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v39 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
              [(_SFPBRFSimpleItemStandardCardSection *)v5 addText_3:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v13);
      }

      v6 = v34;
      v10 = v33;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v36;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v35 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[_SFPBRFTextProperty alloc] initWithDictionary:v24];
              [(_SFPBRFSimpleItemStandardCardSection *)v5 addText_4:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v21);
      }

      v6 = v34;
      v10 = v33;
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"text5"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRFTextProperty alloc] initWithDictionary:v26];
      [(_SFPBRFSimpleItemStandardCardSection *)v5 setText_5:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"text6"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRFTextProperty alloc] initWithDictionary:v28];
      [(_SFPBRFSimpleItemStandardCardSection *)v5 setText_6:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSimpleItemStandardCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSimpleItemStandardCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSimpleItemStandardCardSection *)self dictionaryRepresentation];
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
  v44 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_text_1)
  {
    text = [(_SFPBRFSimpleItemStandardCardSection *)self text];
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
    text2 = [(_SFPBRFSimpleItemStandardCardSection *)self text];
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
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = self->_text_3s;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v39;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation3 = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
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

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"text3"];
  }

  if ([(NSArray *)self->_text_4s count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = self->_text_4s;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation4 = [*(*(&v34 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array2 addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null4];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v21);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"text4"];
  }

  if (self->_text_5)
  {
    text3 = [(_SFPBRFSimpleItemStandardCardSection *)self text];
    dictionaryRepresentation5 = [text3 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"text5"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"text5"];
    }
  }

  if (self->_text_6)
  {
    text4 = [(_SFPBRFSimpleItemStandardCardSection *)self text];
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

  v32 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v5 = [(NSArray *)self->_text_3s hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_text_4s hash];
  v7 = [(_SFPBRFTextProperty *)self->_text_5 hash];
  return v6 ^ v7 ^ [(_SFPBRFTextProperty *)self->_text_6 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  text = [(_SFPBRFSimpleItemStandardCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  text3 = [(_SFPBRFSimpleItemStandardCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFSimpleItemStandardCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemStandardCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  text6 = [(_SFPBRFSimpleItemStandardCardSection *)self text];
  if (text6)
  {
    v13 = text6;
    text7 = [(_SFPBRFSimpleItemStandardCardSection *)self text];
    text8 = [equalCopy text];
    v16 = [text7 isEqual:text8];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemStandardCardSection *)self text_3s];
  text2 = [equalCopy text_3s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  text_3s = [(_SFPBRFSimpleItemStandardCardSection *)self text_3s];
  if (text_3s)
  {
    v18 = text_3s;
    text_3s2 = [(_SFPBRFSimpleItemStandardCardSection *)self text_3s];
    text_3s3 = [equalCopy text_3s];
    v21 = [text_3s2 isEqual:text_3s3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemStandardCardSection *)self text_4s];
  text2 = [equalCopy text_4s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  text_4s = [(_SFPBRFSimpleItemStandardCardSection *)self text_4s];
  if (text_4s)
  {
    v23 = text_4s;
    text_4s2 = [(_SFPBRFSimpleItemStandardCardSection *)self text_4s];
    text_4s3 = [equalCopy text_4s];
    v26 = [text_4s2 isEqual:text_4s3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemStandardCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  text9 = [(_SFPBRFSimpleItemStandardCardSection *)self text];
  if (text9)
  {
    v28 = text9;
    text10 = [(_SFPBRFSimpleItemStandardCardSection *)self text];
    text11 = [equalCopy text];
    v31 = [text10 isEqual:text11];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemStandardCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) != (text2 == 0))
  {
    text12 = [(_SFPBRFSimpleItemStandardCardSection *)self text];
    if (!text12)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = text12;
    text13 = [(_SFPBRFSimpleItemStandardCardSection *)self text];
    text14 = [equalCopy text];
    v36 = [text13 isEqual:text14];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)to
{
  v32 = *MEMORY[0x1E69E9840];
  toCopy = to;
  text = [(_SFPBRFSimpleItemStandardCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFSimpleItemStandardCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text_3s = [(_SFPBRFSimpleItemStandardCardSection *)self text_3s];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [text_3s countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(text_3s);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [text_3s countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  text_4s = [(_SFPBRFSimpleItemStandardCardSection *)self text_4s];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [text_4s countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(text_4s);
        }

        v18 = *(*(&v22 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [text_4s countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  text3 = [(_SFPBRFSimpleItemStandardCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  text4 = [(_SFPBRFSimpleItemStandardCardSection *)self text];
  if (text4)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = *MEMORY[0x1E69E9840];
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