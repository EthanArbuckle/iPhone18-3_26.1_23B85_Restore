@interface _SFPBResponseWrapperCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBResponseWrapperCardSection)initWithDictionary:(id)a3;
- (_SFPBResponseWrapperCardSection)initWithFacade:(id)a3;
- (_SFPBResponseWrapperCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPattern_models:(id)a3;
- (void)setPattern_models:(id)a3;
- (void)setVisualCATOutput:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBResponseWrapperCardSection

- (_SFPBResponseWrapperCardSection)initWithFacade:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBResponseWrapperCardSection *)self init];
  if (v5)
  {
    v6 = [v4 catModel];

    if (v6)
    {
      v7 = [_SFPBCATModel alloc];
      v8 = [v4 catModel];
      v9 = [(_SFPBCATModel *)v7 initWithFacade:v8];
      [(_SFPBResponseWrapperCardSection *)v5 setCatModel:v9];
    }

    v10 = [v4 visualCATOutput];

    if (v10)
    {
      v11 = [v4 visualCATOutput];
      [(_SFPBResponseWrapperCardSection *)v5 setVisualCATOutput:v11];
    }

    v12 = [v4 pattern_model];

    if (v12)
    {
      v13 = [_SFPBPatternModel alloc];
      v14 = [v4 pattern_model];
      v15 = [(_SFPBPatternModel *)v13 initWithFacade:v14];
      [(_SFPBResponseWrapperCardSection *)v5 setPattern_model:v15];
    }

    v16 = [v4 pattern_models];
    if (v16)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v17 = 0;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = [v4 pattern_models];
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [[_SFPBPatternModel alloc] initWithFacade:*(*(&v27 + 1) + 8 * i)];
          if (v23)
          {
            [v17 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v20);
    }

    [(_SFPBResponseWrapperCardSection *)v5 setPattern_models:v17];
    v24 = v5;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBResponseWrapperCardSection)initWithDictionary:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = _SFPBResponseWrapperCardSection;
  v5 = [(_SFPBResponseWrapperCardSection *)&v29 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"catModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCATModel alloc] initWithDictionary:v6];
      [(_SFPBResponseWrapperCardSection *)v5 setCatModel:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"visualCATOutput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      [(_SFPBResponseWrapperCardSection *)v5 setVisualCATOutput:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"patternModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBPatternModel alloc] initWithDictionary:v10];
      [(_SFPBResponseWrapperCardSection *)v5 setPattern_model:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"patternModels"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v10;
      v24 = v6;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v25 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[_SFPBPatternModel alloc] initWithDictionary:v18];
              [(_SFPBResponseWrapperCardSection *)v5 addPattern_models:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v15);
      }

      v6 = v24;
      v10 = v23;
    }

    v20 = v5;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBResponseWrapperCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBResponseWrapperCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBResponseWrapperCardSection *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_catModel)
  {
    v4 = [(_SFPBResponseWrapperCardSection *)self catModel];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"catModel"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"catModel"];
    }
  }

  if (self->_pattern_model)
  {
    v7 = [(_SFPBResponseWrapperCardSection *)self pattern_model];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"patternModel"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"patternModel"];
    }
  }

  if ([(NSArray *)self->_pattern_models count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = self->_pattern_models;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          if (v16)
          {
            [v10 addObject:v16];
          }

          else
          {
            v17 = [MEMORY[0x1E695DFB0] null];
            [v10 addObject:v17];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"patternModels"];
  }

  if (self->_visualCATOutput)
  {
    v18 = [(_SFPBResponseWrapperCardSection *)self visualCATOutput];
    v19 = [v18 base64EncodedStringWithOptions:0];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"visualCATOutput"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"visualCATOutput"];
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBCATModel *)self->_catModel hash];
  v4 = [(NSData *)self->_visualCATOutput hash]^ v3;
  v5 = [(_SFPBPatternModel *)self->_pattern_model hash];
  return v4 ^ v5 ^ [(NSArray *)self->_pattern_models hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_SFPBResponseWrapperCardSection *)self catModel];
  v6 = [v4 catModel];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_SFPBResponseWrapperCardSection *)self catModel];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBResponseWrapperCardSection *)self catModel];
    v10 = [v4 catModel];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBResponseWrapperCardSection *)self visualCATOutput];
  v6 = [v4 visualCATOutput];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_SFPBResponseWrapperCardSection *)self visualCATOutput];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBResponseWrapperCardSection *)self visualCATOutput];
    v15 = [v4 visualCATOutput];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBResponseWrapperCardSection *)self pattern_model];
  v6 = [v4 pattern_model];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_SFPBResponseWrapperCardSection *)self pattern_model];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBResponseWrapperCardSection *)self pattern_model];
    v20 = [v4 pattern_model];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBResponseWrapperCardSection *)self pattern_models];
  v6 = [v4 pattern_models];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_SFPBResponseWrapperCardSection *)self pattern_models];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_SFPBResponseWrapperCardSection *)self pattern_models];
    v25 = [v4 pattern_models];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBResponseWrapperCardSection *)self catModel];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBResponseWrapperCardSection *)self visualCATOutput];
  if (v6)
  {
    PBDataWriterWriteDataField();
  }

  v7 = [(_SFPBResponseWrapperCardSection *)self pattern_model];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBResponseWrapperCardSection *)self pattern_models];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addPattern_models:(id)a3
{
  v4 = a3;
  pattern_models = self->_pattern_models;
  v8 = v4;
  if (!pattern_models)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pattern_models;
    self->_pattern_models = v6;

    v4 = v8;
    pattern_models = self->_pattern_models;
  }

  [(NSArray *)pattern_models addObject:v4];
}

- (void)setPattern_models:(id)a3
{
  v4 = [a3 copy];
  pattern_models = self->_pattern_models;
  self->_pattern_models = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setVisualCATOutput:(id)a3
{
  v4 = [a3 copy];
  visualCATOutput = self->_visualCATOutput;
  self->_visualCATOutput = v4;

  MEMORY[0x1EEE66BB8]();
}

@end