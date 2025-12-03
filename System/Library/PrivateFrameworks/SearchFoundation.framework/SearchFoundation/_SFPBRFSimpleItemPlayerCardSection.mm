@interface _SFPBRFSimpleItemPlayerCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSimpleItemPlayerCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSimpleItemPlayerCardSection)initWithFacade:(id)facade;
- (_SFPBRFSimpleItemPlayerCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_3:(id)text_3;
- (void)setText_3:(id)text_3;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSimpleItemPlayerCardSection

- (_SFPBRFSimpleItemPlayerCardSection)initWithFacade:(id)facade
{
  v38 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFSimpleItemPlayerCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text4];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setText_2:v13];
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

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    text6 = [facadeCopy text];
    v17 = [text6 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(text6);
          }

          v21 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v33 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [text6 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    [(_SFPBRFSimpleItemPlayerCardSection *)v5 setText_3s:v15];
    text7 = [facadeCopy text];

    if (text7)
    {
      v23 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v25 = [(_SFPBRFTextProperty *)v23 initWithFacade:text8];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setText_4:v25];
    }

    player = [facadeCopy player];

    if (player)
    {
      v27 = [_SFPBButtonItem alloc];
      player2 = [facadeCopy player];
      v29 = [(_SFPBButtonItem *)v27 initWithFacade:player2];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setPlayer:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSimpleItemPlayerCardSection)initWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = _SFPBRFSimpleItemPlayerCardSection;
  v5 = [(_SFPBRFSimpleItemPlayerCardSection *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setText_2:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v8;
      v26 = v6;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v27 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
              [(_SFPBRFSimpleItemPlayerCardSection *)v5 addText_3:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v13);
      }

      v8 = v25;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:{@"text4", v25, v26, v27}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBRFTextProperty alloc] initWithDictionary:v18];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setText_4:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"player"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBButtonItem alloc] initWithDictionary:v20];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setPlayer:v21];
    }

    v22 = v5;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSimpleItemPlayerCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSimpleItemPlayerCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSimpleItemPlayerCardSection *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_player)
  {
    player = [(_SFPBRFSimpleItemPlayerCardSection *)self player];
    dictionaryRepresentation = [player dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"player"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"player"];
    }
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
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
    text2 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
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
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = self->_text_3s;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation4 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
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

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array forKeyedSubscript:@"text3"];
  }

  if (self->_text_4)
  {
    text3 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
    dictionaryRepresentation5 = [text3 dictionaryRepresentation];
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

  v24 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v5 = [(NSArray *)self->_text_3s hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  return v6 ^ [(_SFPBButtonItem *)self->_player hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  text = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  text3 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  text6 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  if (text6)
  {
    v13 = text6;
    text7 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
    text8 = [equalCopy text];
    v16 = [text7 isEqual:text8];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemPlayerCardSection *)self text_3s];
  text2 = [equalCopy text_3s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  text_3s = [(_SFPBRFSimpleItemPlayerCardSection *)self text_3s];
  if (text_3s)
  {
    v18 = text_3s;
    text_3s2 = [(_SFPBRFSimpleItemPlayerCardSection *)self text_3s];
    text_3s3 = [equalCopy text_3s];
    v21 = [text_3s2 isEqual:text_3s3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  text9 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  if (text9)
  {
    v23 = text9;
    text10 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
    text11 = [equalCopy text];
    v26 = [text10 isEqual:text11];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSimpleItemPlayerCardSection *)self player];
  text2 = [equalCopy player];
  if ((text != 0) != (text2 == 0))
  {
    player = [(_SFPBRFSimpleItemPlayerCardSection *)self player];
    if (!player)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = player;
    player2 = [(_SFPBRFSimpleItemPlayerCardSection *)self player];
    player3 = [equalCopy player];
    v31 = [player2 isEqual:player3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  text = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text_3s = [(_SFPBRFSimpleItemPlayerCardSection *)self text_3s];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [text_3s countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(text_3s);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [text_3s countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  text3 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  player = [(_SFPBRFSimpleItemPlayerCardSection *)self player];
  if (player)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = *MEMORY[0x1E69E9840];
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