@interface _SFPBRFSummaryItemShortNumberCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSummaryItemShortNumberCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSummaryItemShortNumberCardSection)initWithFacade:(id)facade;
- (_SFPBRFSummaryItemShortNumberCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_3:(id)text_3;
- (void)addText_4:(id)text_4;
- (void)setText_3:(id)text_3;
- (void)setText_4:(id)text_4;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSummaryItemShortNumberCardSection

- (_SFPBRFSummaryItemShortNumberCardSection)initWithFacade:(id)facade
{
  v59 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFSummaryItemShortNumberCardSection *)self init];
  if (v5)
  {
    number = [facadeCopy number];

    if (number)
    {
      v7 = [_SFPBRFTextProperty alloc];
      number2 = [facadeCopy number];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:number2];
      [(_SFPBRFSummaryItemShortNumberCardSection *)v5 setNumber:v9];
    }

    text = [facadeCopy text];

    if (text)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text2];
      [(_SFPBRFSummaryItemShortNumberCardSection *)v5 setText_2:v13];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v15 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:text4];
      [(_SFPBRFSummaryItemShortNumberCardSection *)v5 setText_1:v17];
    }

    text5 = [facadeCopy text];
    if (text5)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    text6 = [facadeCopy text];
    v21 = [text6 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v54;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v54 != v23)
          {
            objc_enumerationMutation(text6);
          }

          v25 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v53 + 1) + 8 * i)];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [text6 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v22);
    }

    [(_SFPBRFSummaryItemShortNumberCardSection *)v5 setText_3s:v19];
    text7 = [facadeCopy text];
    if (text7)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    text8 = [facadeCopy text];
    v29 = [text8 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v50;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(text8);
          }

          v33 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v49 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [text8 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v30);
    }

    [(_SFPBRFSummaryItemShortNumberCardSection *)v5 setText_4s:v27];
    text9 = [facadeCopy text];

    if (text9)
    {
      v35 = [_SFPBRFTextProperty alloc];
      text10 = [facadeCopy text];
      v37 = [(_SFPBRFTextProperty *)v35 initWithFacade:text10];
      [(_SFPBRFSummaryItemShortNumberCardSection *)v5 setText_5:v37];
    }

    text11 = [facadeCopy text];

    if (text11)
    {
      v39 = [_SFPBRFTextProperty alloc];
      text12 = [facadeCopy text];
      v41 = [(_SFPBRFTextProperty *)v39 initWithFacade:text12];
      [(_SFPBRFSummaryItemShortNumberCardSection *)v5 setText_6:v41];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v43 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v45 = [(_SFPBRFVisualProperty *)v43 initWithFacade:thumbnail2];
      [(_SFPBRFSummaryItemShortNumberCardSection *)v5 setThumbnail:v45];
    }

    v46 = v5;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemShortNumberCardSection)initWithDictionary:(id)dictionary
{
  v54 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v51.receiver = self;
  v51.super_class = _SFPBRFSummaryItemShortNumberCardSection;
  v5 = [(_SFPBRFSummaryItemShortNumberCardSection *)&v51 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"number"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemShortNumberCardSection *)v5 setNumber:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSummaryItemShortNumberCardSection *)v5 setText_2:v9];
    }

    v42 = v6;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFSummaryItemShortNumberCardSection *)v5 setText_1:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    v40 = v8;
    v37 = v12;
    if (objc_opt_isKindOfClass())
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v48;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v48 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v47 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[_SFPBRFTextProperty alloc] initWithDictionary:v18];
              [(_SFPBRFSummaryItemShortNumberCardSection *)v5 addText_3:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v15);
      }

      v8 = v40;
      v12 = v37;
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:{@"text4", v37, v10, v40}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v44;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v44 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v43 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [[_SFPBRFTextProperty alloc] initWithDictionary:v26];
              [(_SFPBRFSummaryItemShortNumberCardSection *)v5 addText_4:v27];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v43 objects:v52 count:16];
        }

        while (v23);
      }

      v10 = v39;
      v8 = v41;
      v12 = v38;
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"text5"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRFTextProperty alloc] initWithDictionary:v28];
      [(_SFPBRFSummaryItemShortNumberCardSection *)v5 setText_5:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"text6"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRFTextProperty alloc] initWithDictionary:v30];
      [(_SFPBRFSummaryItemShortNumberCardSection *)v5 setText_6:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v32];
      [(_SFPBRFSummaryItemShortNumberCardSection *)v5 setThumbnail:v33];
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemShortNumberCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemShortNumberCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSummaryItemShortNumberCardSection *)self dictionaryRepresentation];
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
  v50 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_number)
  {
    number = [(_SFPBRFSummaryItemShortNumberCardSection *)self number];
    dictionaryRepresentation = [number dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"number"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"number"];
    }
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
    dictionaryRepresentation2 = [text dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"text1"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"text1"];
    }
  }

  if (self->_text_2)
  {
    text2 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
    dictionaryRepresentation3 = [text2 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"text2"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"text2"];
    }
  }

  if ([(NSArray *)self->_text_3s count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v14 = self->_text_3s;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v45;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation4 = [*(*(&v44 + 1) + 8 * i) dictionaryRepresentation];
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

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array forKeyedSubscript:@"text3"];
  }

  if ([(NSArray *)self->_text_4s count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v22 = self->_text_4s;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v41;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation5 = [*(*(&v40 + 1) + 8 * j) dictionaryRepresentation];
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

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v24);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"text4"];
  }

  if (self->_text_5)
  {
    text3 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
    dictionaryRepresentation6 = [text3 dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"text5"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"text5"];
    }
  }

  if (self->_text_6)
  {
    text4 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
    dictionaryRepresentation7 = [text4 dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"text6"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"text6"];
    }
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFSummaryItemShortNumberCardSection *)self thumbnail];
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

  v38 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_number hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v5 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_text_3s hash];
  v7 = [(NSArray *)self->_text_4s hash];
  v8 = v7 ^ [(_SFPBRFTextProperty *)self->_text_5 hash];
  v9 = v6 ^ v8 ^ [(_SFPBRFTextProperty *)self->_text_6 hash];
  return v9 ^ [(_SFPBRFVisualProperty *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  number = [(_SFPBRFSummaryItemShortNumberCardSection *)self number];
  number2 = [equalCopy number];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_41;
  }

  number3 = [(_SFPBRFSummaryItemShortNumberCardSection *)self number];
  if (number3)
  {
    v8 = number3;
    number4 = [(_SFPBRFSummaryItemShortNumberCardSection *)self number];
    number5 = [equalCopy number];
    v11 = [number4 isEqual:number5];

    if (!v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_41;
  }

  text = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
  if (text)
  {
    v13 = text;
    text2 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
    text3 = [equalCopy text];
    v16 = [text2 isEqual:text3];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_41;
  }

  text4 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
  if (text4)
  {
    v18 = text4;
    text5 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
    text6 = [equalCopy text];
    v21 = [text5 isEqual:text6];

    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemShortNumberCardSection *)self text_3s];
  number2 = [equalCopy text_3s];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_41;
  }

  text_3s = [(_SFPBRFSummaryItemShortNumberCardSection *)self text_3s];
  if (text_3s)
  {
    v23 = text_3s;
    text_3s2 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text_3s];
    text_3s3 = [equalCopy text_3s];
    v26 = [text_3s2 isEqual:text_3s3];

    if (!v26)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemShortNumberCardSection *)self text_4s];
  number2 = [equalCopy text_4s];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_41;
  }

  text_4s = [(_SFPBRFSummaryItemShortNumberCardSection *)self text_4s];
  if (text_4s)
  {
    v28 = text_4s;
    text_4s2 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text_4s];
    text_4s3 = [equalCopy text_4s];
    v31 = [text_4s2 isEqual:text_4s3];

    if (!v31)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_41;
  }

  text7 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
  if (text7)
  {
    v33 = text7;
    text8 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
    text9 = [equalCopy text];
    v36 = [text8 isEqual:text9];

    if (!v36)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_41;
  }

  text10 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
  if (text10)
  {
    v38 = text10;
    text11 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
    text12 = [equalCopy text];
    v41 = [text11 isEqual:text12];

    if (!v41)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemShortNumberCardSection *)self thumbnail];
  number2 = [equalCopy thumbnail];
  if ((number != 0) != (number2 == 0))
  {
    thumbnail = [(_SFPBRFSummaryItemShortNumberCardSection *)self thumbnail];
    if (!thumbnail)
    {

LABEL_45:
      v47 = 1;
      goto LABEL_43;
    }

    v43 = thumbnail;
    thumbnail2 = [(_SFPBRFSummaryItemShortNumberCardSection *)self thumbnail];
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
  number = [(_SFPBRFSummaryItemShortNumberCardSection *)self number];
  if (number)
  {
    PBDataWriterWriteSubmessage();
  }

  text = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text_3s = [(_SFPBRFSummaryItemShortNumberCardSection *)self text_3s];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [text_3s countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(text_3s);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [text_3s countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  text_4s = [(_SFPBRFSummaryItemShortNumberCardSection *)self text_4s];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [text_4s countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(text_4s);
        }

        v19 = *(*(&v24 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [text_4s countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  text3 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  text4 = [(_SFPBRFSummaryItemShortNumberCardSection *)self text];
  if (text4)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFSummaryItemShortNumberCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = *MEMORY[0x1E69E9840];
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