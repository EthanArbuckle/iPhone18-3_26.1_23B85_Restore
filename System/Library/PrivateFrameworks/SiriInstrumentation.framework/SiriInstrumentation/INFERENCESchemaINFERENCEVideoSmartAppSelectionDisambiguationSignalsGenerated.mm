@interface INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDependentSignals:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated

- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated;
  v5 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"playOnThirdPartyAppSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGenerated alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)v5 setPlayOnThirdPartyAppSignals:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"independentSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)v5 setIndependentSignal:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"dependentSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v8;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationDependentSignals alloc] initWithDictionary:v16];
              [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)v5 addDependentSignals:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v13);
      }

      v8 = v20;
    }

    v18 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_dependentSignals count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_dependentSignals;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"dependentSignals"];
  }

  if (self->_independentSignal)
  {
    v12 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self independentSignal];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"independentSignal"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"independentSignal"];
    }
  }

  if (self->_playOnThirdPartyAppSignals)
  {
    v15 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self playOnThirdPartyAppSignals];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"playOnThirdPartyAppSignals"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"playOnThirdPartyAppSignals"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGenerated *)self->_playOnThirdPartyAppSignals hash];
  v4 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self->_independentSignal hash]^ v3;
  return v4 ^ [(NSArray *)self->_dependentSignals hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self playOnThirdPartyAppSignals];
  v6 = [v4 playOnThirdPartyAppSignals];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self playOnThirdPartyAppSignals];
  if (v7)
  {
    v8 = v7;
    v9 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self playOnThirdPartyAppSignals];
    v10 = [v4 playOnThirdPartyAppSignals];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self independentSignal];
  v6 = [v4 independentSignal];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self independentSignal];
  if (v12)
  {
    v13 = v12;
    v14 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self independentSignal];
    v15 = [v4 independentSignal];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self dependentSignals];
  v6 = [v4 dependentSignals];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self dependentSignals];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self dependentSignals];
    v20 = [v4 dependentSignals];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self playOnThirdPartyAppSignals];

  if (v5)
  {
    v6 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self playOnThirdPartyAppSignals];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self independentSignal];

  if (v7)
  {
    v8 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self independentSignal];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_dependentSignals;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)addDependentSignals:(id)a3
{
  v4 = a3;
  dependentSignals = self->_dependentSignals;
  v8 = v4;
  if (!dependentSignals)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_dependentSignals;
    self->_dependentSignals = v6;

    v4 = v8;
    dependentSignals = self->_dependentSignals;
  }

  [(NSArray *)dependentSignals addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self playOnThirdPartyAppSignals];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self deletePlayOnThirdPartyAppSignals];
  }

  v9 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self independentSignal];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self deleteIndependentSignal];
  }

  v12 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self dependentSignals];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
  [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self setDependentSignals:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end