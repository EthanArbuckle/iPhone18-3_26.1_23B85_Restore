@interface _SFPBRFSimpleItemPlayerCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFSimpleItemPlayerCardSection)initWithDictionary:(id)a3;
- (_SFPBRFSimpleItemPlayerCardSection)initWithFacade:(id)a3;
- (_SFPBRFSimpleItemPlayerCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_3:(id)a3;
- (void)setText_3:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFSimpleItemPlayerCardSection

- (_SFPBRFSimpleItemPlayerCardSection)initWithFacade:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFSimpleItemPlayerCardSection *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [_SFPBRFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:v12];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setText_2:v13];
    }

    v14 = [v4 text];
    if (v14)
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
    v16 = [v4 text];
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v33 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    [(_SFPBRFSimpleItemPlayerCardSection *)v5 setText_3s:v15];
    v22 = [v4 text];

    if (v22)
    {
      v23 = [_SFPBRFTextProperty alloc];
      v24 = [v4 text];
      v25 = [(_SFPBRFTextProperty *)v23 initWithFacade:v24];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setText_4:v25];
    }

    v26 = [v4 player];

    if (v26)
    {
      v27 = [_SFPBButtonItem alloc];
      v28 = [v4 player];
      v29 = [(_SFPBButtonItem *)v27 initWithFacade:v28];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setPlayer:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSimpleItemPlayerCardSection)initWithDictionary:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = _SFPBRFSimpleItemPlayerCardSection;
  v5 = [(_SFPBRFSimpleItemPlayerCardSection *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setText_1:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setText_2:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"text3"];
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

    v18 = [v4 objectForKeyedSubscript:{@"text4", v25, v26, v27}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBRFTextProperty alloc] initWithDictionary:v18];
      [(_SFPBRFSimpleItemPlayerCardSection *)v5 setText_4:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"player"];
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

- (_SFPBRFSimpleItemPlayerCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFSimpleItemPlayerCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFSimpleItemPlayerCardSection *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_player)
  {
    v4 = [(_SFPBRFSimpleItemPlayerCardSection *)self player];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"player"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"player"];
    }
  }

  if (self->_text_1)
  {
    v7 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"text1"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"text1"];
    }
  }

  if (self->_text_2)
  {
    v10 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"text2"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"text2"];
    }
  }

  if ([(NSArray *)self->_text_3s count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
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

          v19 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          if (v19)
          {
            [v13 addObject:v19];
          }

          else
          {
            v20 = [MEMORY[0x1E695DFB0] null];
            [v13 addObject:v20];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"text3"];
  }

  if (self->_text_4)
  {
    v21 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"text4"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"text4"];
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v5 = [(NSArray *)self->_text_3s hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  return v6 ^ [(_SFPBButtonItem *)self->_player hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
    v15 = [v4 text];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSimpleItemPlayerCardSection *)self text_3s];
  v6 = [v4 text_3s];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_SFPBRFSimpleItemPlayerCardSection *)self text_3s];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFSimpleItemPlayerCardSection *)self text_3s];
    v20 = [v4 text_3s];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
    v25 = [v4 text];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSimpleItemPlayerCardSection *)self player];
  v6 = [v4 player];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_SFPBRFSimpleItemPlayerCardSection *)self player];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_SFPBRFSimpleItemPlayerCardSection *)self player];
    v30 = [v4 player];
    v31 = [v29 isEqual:v30];

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

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFSimpleItemPlayerCardSection *)self text_3s];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [(_SFPBRFSimpleItemPlayerCardSection *)self text];
  if (v13)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_SFPBRFSimpleItemPlayerCardSection *)self player];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addText_3:(id)a3
{
  v4 = a3;
  text_3s = self->_text_3s;
  v8 = v4;
  if (!text_3s)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_3s;
    self->_text_3s = v6;

    v4 = v8;
    text_3s = self->_text_3s;
  }

  [(NSArray *)text_3s addObject:v4];
}

- (void)setText_3:(id)a3
{
  v4 = [a3 copy];
  text_3s = self->_text_3s;
  self->_text_3s = v4;

  MEMORY[0x1EEE66BB8]();
}

@end