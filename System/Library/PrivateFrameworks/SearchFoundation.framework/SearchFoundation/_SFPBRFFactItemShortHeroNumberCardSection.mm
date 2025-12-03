@interface _SFPBRFFactItemShortHeroNumberCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFFactItemShortHeroNumberCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFFactItemShortHeroNumberCardSection)initWithFacade:(id)facade;
- (_SFPBRFFactItemShortHeroNumberCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_2:(id)text_2;
- (void)addText_3:(id)text_3;
- (void)setText_2:(id)text_2;
- (void)setText_3:(id)text_3;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFFactItemShortHeroNumberCardSection

- (_SFPBRFFactItemShortHeroNumberCardSection)initWithFacade:(id)facade
{
  v55 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self init];
  if (v5)
  {
    number = [facadeCopy number];

    if (number)
    {
      v7 = [_SFPBRFTextProperty alloc];
      number2 = [facadeCopy number];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:number2];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setNumber:v9];
    }

    text = [facadeCopy text];

    if (text)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text2];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setText_1:v13];
    }

    text3 = [facadeCopy text];
    if (text3)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    text4 = [facadeCopy text];
    v17 = [text4 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v50;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(text4);
          }

          v21 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v49 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [text4 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v18);
    }

    [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setText_2s:v15];
    text5 = [facadeCopy text];
    if (text5)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    text6 = [facadeCopy text];
    v25 = [text6 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v46;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v46 != v27)
          {
            objc_enumerationMutation(text6);
          }

          v29 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v45 + 1) + 8 * j)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [text6 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v26);
    }

    [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setText_3s:v23];
    unit = [facadeCopy unit];

    if (unit)
    {
      v31 = [_SFPBRFTextProperty alloc];
      unit2 = [facadeCopy unit];
      v33 = [(_SFPBRFTextProperty *)v31 initWithFacade:unit2];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setUnit:v33];
    }

    text7 = [facadeCopy text];

    if (text7)
    {
      v35 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v37 = [(_SFPBRFTextProperty *)v35 initWithFacade:text8];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setText_4:v37];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v39 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v41 = [(_SFPBRFVisualProperty *)v39 initWithFacade:thumbnail2];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setThumbnail:v41];
    }

    v42 = v5;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFactItemShortHeroNumberCardSection)initWithDictionary:(id)dictionary
{
  v48 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v45.receiver = self;
  v45.super_class = _SFPBRFFactItemShortHeroNumberCardSection;
  v5 = [(_SFPBRFFactItemShortHeroNumberCardSection *)&v45 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"number"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setNumber:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setText_1:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    v36 = v6;
    v35 = v10;
    if (objc_opt_isKindOfClass())
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v42;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v42 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v41 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
              [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 addText_2:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v13);
      }

      v6 = v36;
      v10 = v35;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v38;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v38 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v37 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[_SFPBRFTextProperty alloc] initWithDictionary:v24];
              [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 addText_3:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v21);
      }

      v6 = v36;
      v10 = v35;
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"unit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRFTextProperty alloc] initWithDictionary:v26];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setUnit:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRFTextProperty alloc] initWithDictionary:v28];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setText_4:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v30];
      [(_SFPBRFFactItemShortHeroNumberCardSection *)v5 setThumbnail:v31];
    }

    v32 = v5;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFFactItemShortHeroNumberCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFFactItemShortHeroNumberCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFFactItemShortHeroNumberCardSection *)self dictionaryRepresentation];
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
  if (self->_number)
  {
    number = [(_SFPBRFFactItemShortHeroNumberCardSection *)self number];
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
    text = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
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

  if ([(NSArray *)self->_text_2s count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = self->_text_2s;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation3 = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
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

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"text2"];
  }

  if ([(NSArray *)self->_text_3s count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = self->_text_3s;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation4 = [*(*(&v37 + 1) + 8 * j) dictionaryRepresentation];
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

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v21);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"text3"];
  }

  if (self->_text_4)
  {
    text2 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
    dictionaryRepresentation5 = [text2 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"text4"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"text4"];
    }
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFFactItemShortHeroNumberCardSection *)self thumbnail];
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

  if (self->_unit)
  {
    unit = [(_SFPBRFFactItemShortHeroNumberCardSection *)self unit];
    dictionaryRepresentation7 = [unit dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"unit"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"unit"];
    }
  }

  v35 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_number hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_1 hash]^ v3;
  v5 = [(NSArray *)self->_text_2s hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_text_3s hash];
  v7 = [(_SFPBRFTextProperty *)self->_unit hash];
  v8 = v7 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  return v6 ^ v8 ^ [(_SFPBRFVisualProperty *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  number = [(_SFPBRFFactItemShortHeroNumberCardSection *)self number];
  number2 = [equalCopy number];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_36;
  }

  number3 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self number];
  if (number3)
  {
    v8 = number3;
    number4 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self number];
    number5 = [equalCopy number];
    v11 = [number4 isEqual:number5];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_36;
  }

  text = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
  if (text)
  {
    v13 = text;
    text2 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
    text3 = [equalCopy text];
    v16 = [text2 isEqual:text3];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_2s];
  number2 = [equalCopy text_2s];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_36;
  }

  text_2s = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_2s];
  if (text_2s)
  {
    v18 = text_2s;
    text_2s2 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_2s];
    text_2s3 = [equalCopy text_2s];
    v21 = [text_2s2 isEqual:text_2s3];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_3s];
  number2 = [equalCopy text_3s];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_36;
  }

  text_3s = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_3s];
  if (text_3s)
  {
    v23 = text_3s;
    text_3s2 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_3s];
    text_3s3 = [equalCopy text_3s];
    v26 = [text_3s2 isEqual:text_3s3];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemShortHeroNumberCardSection *)self unit];
  number2 = [equalCopy unit];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_36;
  }

  unit = [(_SFPBRFFactItemShortHeroNumberCardSection *)self unit];
  if (unit)
  {
    v28 = unit;
    unit2 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self unit];
    unit3 = [equalCopy unit];
    v31 = [unit2 isEqual:unit3];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_36;
  }

  text4 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
  if (text4)
  {
    v33 = text4;
    text5 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
    text6 = [equalCopy text];
    v36 = [text5 isEqual:text6];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemShortHeroNumberCardSection *)self thumbnail];
  number2 = [equalCopy thumbnail];
  if ((number != 0) != (number2 == 0))
  {
    thumbnail = [(_SFPBRFFactItemShortHeroNumberCardSection *)self thumbnail];
    if (!thumbnail)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = thumbnail;
    thumbnail2 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v41 = [thumbnail2 isEqual:thumbnail3];

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
  number = [(_SFPBRFFactItemShortHeroNumberCardSection *)self number];
  if (number)
  {
    PBDataWriterWriteSubmessage();
  }

  text = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text_2s = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_2s];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [text_2s countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(text_2s);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [text_2s countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  text_3s = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text_3s];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [text_3s countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(text_3s);
        }

        v18 = *(*(&v23 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [text_3s countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  unit = [(_SFPBRFFactItemShortHeroNumberCardSection *)self unit];
  if (unit)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFFactItemShortHeroNumberCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFFactItemShortHeroNumberCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = *MEMORY[0x1E69E9840];
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