@interface INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDependentSignals:(id)signals;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated

- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated;
  v5 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"playOnThirdPartyAppSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGenerated alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)v5 setPlayOnThirdPartyAppSignals:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"independentSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)v5 setIndependentSignal:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"dependentSignals"];
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

- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_dependentSignals count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"dependentSignals"];
  }

  if (self->_independentSignal)
  {
    independentSignal = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self independentSignal];
    dictionaryRepresentation2 = [independentSignal dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"independentSignal"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"independentSignal"];
    }
  }

  if (self->_playOnThirdPartyAppSignals)
  {
    playOnThirdPartyAppSignals = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self playOnThirdPartyAppSignals];
    dictionaryRepresentation3 = [playOnThirdPartyAppSignals dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"playOnThirdPartyAppSignals"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"playOnThirdPartyAppSignals"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGenerated *)self->_playOnThirdPartyAppSignals hash];
  v4 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals *)self->_independentSignal hash]^ v3;
  return v4 ^ [(NSArray *)self->_dependentSignals hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  playOnThirdPartyAppSignals = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self playOnThirdPartyAppSignals];
  playOnThirdPartyAppSignals2 = [equalCopy playOnThirdPartyAppSignals];
  if ((playOnThirdPartyAppSignals != 0) == (playOnThirdPartyAppSignals2 == 0))
  {
    goto LABEL_16;
  }

  playOnThirdPartyAppSignals3 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self playOnThirdPartyAppSignals];
  if (playOnThirdPartyAppSignals3)
  {
    v8 = playOnThirdPartyAppSignals3;
    playOnThirdPartyAppSignals4 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self playOnThirdPartyAppSignals];
    playOnThirdPartyAppSignals5 = [equalCopy playOnThirdPartyAppSignals];
    v11 = [playOnThirdPartyAppSignals4 isEqual:playOnThirdPartyAppSignals5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  playOnThirdPartyAppSignals = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self independentSignal];
  playOnThirdPartyAppSignals2 = [equalCopy independentSignal];
  if ((playOnThirdPartyAppSignals != 0) == (playOnThirdPartyAppSignals2 == 0))
  {
    goto LABEL_16;
  }

  independentSignal = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self independentSignal];
  if (independentSignal)
  {
    v13 = independentSignal;
    independentSignal2 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self independentSignal];
    independentSignal3 = [equalCopy independentSignal];
    v16 = [independentSignal2 isEqual:independentSignal3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  playOnThirdPartyAppSignals = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self dependentSignals];
  playOnThirdPartyAppSignals2 = [equalCopy dependentSignals];
  if ((playOnThirdPartyAppSignals != 0) != (playOnThirdPartyAppSignals2 == 0))
  {
    dependentSignals = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self dependentSignals];
    if (!dependentSignals)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = dependentSignals;
    dependentSignals2 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self dependentSignals];
    dependentSignals3 = [equalCopy dependentSignals];
    v21 = [dependentSignals2 isEqual:dependentSignals3];

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

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  playOnThirdPartyAppSignals = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self playOnThirdPartyAppSignals];

  if (playOnThirdPartyAppSignals)
  {
    playOnThirdPartyAppSignals2 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self playOnThirdPartyAppSignals];
    PBDataWriterWriteSubmessage();
  }

  independentSignal = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self independentSignal];

  if (independentSignal)
  {
    independentSignal2 = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self independentSignal];
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

- (void)addDependentSignals:(id)signals
{
  signalsCopy = signals;
  dependentSignals = self->_dependentSignals;
  v8 = signalsCopy;
  if (!dependentSignals)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_dependentSignals;
    self->_dependentSignals = array;

    signalsCopy = v8;
    dependentSignals = self->_dependentSignals;
  }

  [(NSArray *)dependentSignals addObject:signalsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  playOnThirdPartyAppSignals = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self playOnThirdPartyAppSignals];
  v7 = [playOnThirdPartyAppSignals applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self deletePlayOnThirdPartyAppSignals];
  }

  independentSignal = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self independentSignal];
  v10 = [independentSignal applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self deleteIndependentSignal];
  }

  dependentSignals = [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self dependentSignals];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:dependentSignals underConditions:policyCopy];
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