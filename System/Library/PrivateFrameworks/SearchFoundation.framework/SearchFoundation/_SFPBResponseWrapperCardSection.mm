@interface _SFPBResponseWrapperCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBResponseWrapperCardSection)initWithDictionary:(id)dictionary;
- (_SFPBResponseWrapperCardSection)initWithFacade:(id)facade;
- (_SFPBResponseWrapperCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPattern_models:(id)pattern_models;
- (void)setPattern_models:(id)pattern_models;
- (void)setVisualCATOutput:(id)output;
- (void)writeTo:(id)to;
@end

@implementation _SFPBResponseWrapperCardSection

- (_SFPBResponseWrapperCardSection)initWithFacade:(id)facade
{
  v32 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBResponseWrapperCardSection *)self init];
  if (v5)
  {
    catModel = [facadeCopy catModel];

    if (catModel)
    {
      v7 = [_SFPBCATModel alloc];
      catModel2 = [facadeCopy catModel];
      v9 = [(_SFPBCATModel *)v7 initWithFacade:catModel2];
      [(_SFPBResponseWrapperCardSection *)v5 setCatModel:v9];
    }

    visualCATOutput = [facadeCopy visualCATOutput];

    if (visualCATOutput)
    {
      visualCATOutput2 = [facadeCopy visualCATOutput];
      [(_SFPBResponseWrapperCardSection *)v5 setVisualCATOutput:visualCATOutput2];
    }

    pattern_model = [facadeCopy pattern_model];

    if (pattern_model)
    {
      v13 = [_SFPBPatternModel alloc];
      pattern_model2 = [facadeCopy pattern_model];
      v15 = [(_SFPBPatternModel *)v13 initWithFacade:pattern_model2];
      [(_SFPBResponseWrapperCardSection *)v5 setPattern_model:v15];
    }

    pattern_models = [facadeCopy pattern_models];
    if (pattern_models)
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
    pattern_models2 = [facadeCopy pattern_models];
    v19 = [pattern_models2 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(pattern_models2);
          }

          v23 = [[_SFPBPatternModel alloc] initWithFacade:*(*(&v27 + 1) + 8 * i)];
          if (v23)
          {
            [v17 addObject:v23];
          }
        }

        v20 = [pattern_models2 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v20);
    }

    [(_SFPBResponseWrapperCardSection *)v5 setPattern_models:v17];
    v24 = v5;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBResponseWrapperCardSection)initWithDictionary:(id)dictionary
{
  v31 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = _SFPBResponseWrapperCardSection;
  v5 = [(_SFPBResponseWrapperCardSection *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"catModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCATModel alloc] initWithDictionary:v6];
      [(_SFPBResponseWrapperCardSection *)v5 setCatModel:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"visualCATOutput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      [(_SFPBResponseWrapperCardSection *)v5 setVisualCATOutput:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"patternModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBPatternModel alloc] initWithDictionary:v10];
      [(_SFPBResponseWrapperCardSection *)v5 setPattern_model:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"patternModels"];
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

- (_SFPBResponseWrapperCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBResponseWrapperCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBResponseWrapperCardSection *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_catModel)
  {
    catModel = [(_SFPBResponseWrapperCardSection *)self catModel];
    dictionaryRepresentation = [catModel dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"catModel"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"catModel"];
    }
  }

  if (self->_pattern_model)
  {
    pattern_model = [(_SFPBResponseWrapperCardSection *)self pattern_model];
    dictionaryRepresentation2 = [pattern_model dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"patternModel"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"patternModel"];
    }
  }

  if ([(NSArray *)self->_pattern_models count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
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

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"patternModels"];
  }

  if (self->_visualCATOutput)
  {
    visualCATOutput = [(_SFPBResponseWrapperCardSection *)self visualCATOutput];
    v19 = [visualCATOutput base64EncodedStringWithOptions:0];
    if (v19)
    {
      [dictionary setObject:v19 forKeyedSubscript:@"visualCATOutput"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"visualCATOutput"];
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBCATModel *)self->_catModel hash];
  v4 = [(NSData *)self->_visualCATOutput hash]^ v3;
  v5 = [(_SFPBPatternModel *)self->_pattern_model hash];
  return v4 ^ v5 ^ [(NSArray *)self->_pattern_models hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  catModel = [(_SFPBResponseWrapperCardSection *)self catModel];
  catModel2 = [equalCopy catModel];
  if ((catModel != 0) == (catModel2 == 0))
  {
    goto LABEL_21;
  }

  catModel3 = [(_SFPBResponseWrapperCardSection *)self catModel];
  if (catModel3)
  {
    v8 = catModel3;
    catModel4 = [(_SFPBResponseWrapperCardSection *)self catModel];
    catModel5 = [equalCopy catModel];
    v11 = [catModel4 isEqual:catModel5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  catModel = [(_SFPBResponseWrapperCardSection *)self visualCATOutput];
  catModel2 = [equalCopy visualCATOutput];
  if ((catModel != 0) == (catModel2 == 0))
  {
    goto LABEL_21;
  }

  visualCATOutput = [(_SFPBResponseWrapperCardSection *)self visualCATOutput];
  if (visualCATOutput)
  {
    v13 = visualCATOutput;
    visualCATOutput2 = [(_SFPBResponseWrapperCardSection *)self visualCATOutput];
    visualCATOutput3 = [equalCopy visualCATOutput];
    v16 = [visualCATOutput2 isEqual:visualCATOutput3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  catModel = [(_SFPBResponseWrapperCardSection *)self pattern_model];
  catModel2 = [equalCopy pattern_model];
  if ((catModel != 0) == (catModel2 == 0))
  {
    goto LABEL_21;
  }

  pattern_model = [(_SFPBResponseWrapperCardSection *)self pattern_model];
  if (pattern_model)
  {
    v18 = pattern_model;
    pattern_model2 = [(_SFPBResponseWrapperCardSection *)self pattern_model];
    pattern_model3 = [equalCopy pattern_model];
    v21 = [pattern_model2 isEqual:pattern_model3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  catModel = [(_SFPBResponseWrapperCardSection *)self pattern_models];
  catModel2 = [equalCopy pattern_models];
  if ((catModel != 0) != (catModel2 == 0))
  {
    pattern_models = [(_SFPBResponseWrapperCardSection *)self pattern_models];
    if (!pattern_models)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = pattern_models;
    pattern_models2 = [(_SFPBResponseWrapperCardSection *)self pattern_models];
    pattern_models3 = [equalCopy pattern_models];
    v26 = [pattern_models2 isEqual:pattern_models3];

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

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  catModel = [(_SFPBResponseWrapperCardSection *)self catModel];
  if (catModel)
  {
    PBDataWriterWriteSubmessage();
  }

  visualCATOutput = [(_SFPBResponseWrapperCardSection *)self visualCATOutput];
  if (visualCATOutput)
  {
    PBDataWriterWriteDataField();
  }

  pattern_model = [(_SFPBResponseWrapperCardSection *)self pattern_model];
  if (pattern_model)
  {
    PBDataWriterWriteSubmessage();
  }

  pattern_models = [(_SFPBResponseWrapperCardSection *)self pattern_models];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [pattern_models countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(pattern_models);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [pattern_models countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addPattern_models:(id)pattern_models
{
  pattern_modelsCopy = pattern_models;
  pattern_models = self->_pattern_models;
  v8 = pattern_modelsCopy;
  if (!pattern_models)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pattern_models;
    self->_pattern_models = array;

    pattern_modelsCopy = v8;
    pattern_models = self->_pattern_models;
  }

  [(NSArray *)pattern_models addObject:pattern_modelsCopy];
}

- (void)setPattern_models:(id)pattern_models
{
  v4 = [pattern_models copy];
  pattern_models = self->_pattern_models;
  self->_pattern_models = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setVisualCATOutput:(id)output
{
  v4 = [output copy];
  visualCATOutput = self->_visualCATOutput;
  self->_visualCATOutput = v4;

  MEMORY[0x1EEE66BB8]();
}

@end