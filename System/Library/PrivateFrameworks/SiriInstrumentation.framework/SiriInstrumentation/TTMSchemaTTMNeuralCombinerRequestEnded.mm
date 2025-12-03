@interface TTMSchemaTTMNeuralCombinerRequestEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTMSchemaTTMNeuralCombinerRequestEnded)initWithDictionary:(id)dictionary;
- (TTMSchemaTTMNeuralCombinerRequestEnded)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addResults:(id)results;
- (void)setHasSpeakerIdThreshold:(BOOL)threshold;
- (void)writeTo:(id)to;
@end

@implementation TTMSchemaTTMNeuralCombinerRequestEnded

- (TTMSchemaTTMNeuralCombinerRequestEnded)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = TTMSchemaTTMNeuralCombinerRequestEnded;
  v5 = [(TTMSchemaTTMNeuralCombinerRequestEnded *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"results"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        do
        {
          v11 = 0;
          do
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v23 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [TTMSchemaTTMNeuralCombinerTCUResult alloc];
              v14 = [(TTMSchemaTTMNeuralCombinerTCUResult *)v13 initWithDictionary:v12, v23];
              [(TTMSchemaTTMNeuralCombinerRequestEnded *)v5 addResults:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"asset", v23}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaAsset alloc] initWithDictionary:v15];
      [(TTMSchemaTTMNeuralCombinerRequestEnded *)v5 setAsset:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"neuralCombinerThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v17 floatValue];
      [(TTMSchemaTTMNeuralCombinerRequestEnded *)v5 setNeuralCombinerThreshold:?];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"mitigationAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(TTMSchemaTTMNeuralCombinerRequestEnded *)v5 setMitigationAssetVersion:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"speakerIdThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v20 floatValue];
      [(TTMSchemaTTMNeuralCombinerRequestEnded *)v5 setSpeakerIdThreshold:?];
    }

    v21 = v5;
  }

  return v5;
}

- (TTMSchemaTTMNeuralCombinerRequestEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self dictionaryRepresentation];
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
  v27 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_asset)
  {
    asset = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self asset];
    dictionaryRepresentation = [asset dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"asset"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"asset"];
    }
  }

  if (self->_mitigationAssetVersion)
  {
    mitigationAssetVersion = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self mitigationAssetVersion];
    v8 = [mitigationAssetVersion copy];
    [dictionary setObject:v8 forKeyedSubscript:@"mitigationAssetVersion"];
  }

  if (*&self->_has)
  {
    v9 = MEMORY[0x1E696AD98];
    [(TTMSchemaTTMNeuralCombinerRequestEnded *)self neuralCombinerThreshold];
    v10 = [v9 numberWithFloat:?];
    [dictionary setObject:v10 forKeyedSubscript:@"neuralCombinerThreshold"];
  }

  if ([(NSArray *)self->_results count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = self->_results;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array forKeyedSubscript:@"results"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v19 = MEMORY[0x1E696AD98];
    [(TTMSchemaTTMNeuralCombinerRequestEnded *)self speakerIdThreshold];
    v20 = [v19 numberWithFloat:?];
    [dictionary setObject:v20 forKeyedSubscript:@"speakerIdThreshold"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_results hash];
  v4 = [(SISchemaAsset *)self->_asset hash];
  if (*&self->_has)
  {
    neuralCombinerThreshold = self->_neuralCombinerThreshold;
    if (neuralCombinerThreshold >= 0.0)
    {
      v9 = neuralCombinerThreshold;
    }

    else
    {
      v9 = -neuralCombinerThreshold;
    }

    *v5.i64 = floor(v9 + 0.5);
    v10 = (v9 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v6, v5).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v7 += v10;
      }
    }

    else
    {
      v7 -= fabs(v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = [(NSString *)self->_mitigationAssetVersion hash];
  if ((*&self->_has & 2) != 0)
  {
    speakerIdThreshold = self->_speakerIdThreshold;
    if (speakerIdThreshold >= 0.0)
    {
      v17 = speakerIdThreshold;
    }

    else
    {
      v17 = -speakerIdThreshold;
    }

    *v13.i64 = floor(v17 + 0.5);
    v18 = (v17 - *v13.i64) * 1.84467441e19;
    *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v14, v13).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v15 += v18;
      }
    }

    else
    {
      v15 -= fabs(v18);
    }
  }

  else
  {
    v15 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v12 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  results = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self results];
  results2 = [equalCopy results];
  if ((results != 0) == (results2 == 0))
  {
    goto LABEL_19;
  }

  results3 = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self results];
  if (results3)
  {
    v8 = results3;
    results4 = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self results];
    results5 = [equalCopy results];
    v11 = [results4 isEqual:results5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  results = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self asset];
  results2 = [equalCopy asset];
  if ((results != 0) == (results2 == 0))
  {
    goto LABEL_19;
  }

  asset = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self asset];
  if (asset)
  {
    v13 = asset;
    asset2 = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self asset];
    asset3 = [equalCopy asset];
    v16 = [asset2 isEqual:asset3];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[44] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    neuralCombinerThreshold = self->_neuralCombinerThreshold;
    [equalCopy neuralCombinerThreshold];
    if (neuralCombinerThreshold != v18)
    {
      goto LABEL_20;
    }
  }

  results = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self mitigationAssetVersion];
  results2 = [equalCopy mitigationAssetVersion];
  if ((results != 0) == (results2 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  mitigationAssetVersion = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self mitigationAssetVersion];
  if (mitigationAssetVersion)
  {
    v20 = mitigationAssetVersion;
    mitigationAssetVersion2 = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self mitigationAssetVersion];
    mitigationAssetVersion3 = [equalCopy mitigationAssetVersion];
    v23 = [mitigationAssetVersion2 isEqual:mitigationAssetVersion3];

    if (!v23)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v26 = (*&self->_has >> 1) & 1;
  if (v26 == ((equalCopy[44] >> 1) & 1))
  {
    if (!v26 || (speakerIdThreshold = self->_speakerIdThreshold, [equalCopy speakerIdThreshold], speakerIdThreshold == v28))
    {
      v24 = 1;
      goto LABEL_21;
    }
  }

LABEL_20:
  v24 = 0;
LABEL_21:

  return v24;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_results;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  asset = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self asset];

  if (asset)
  {
    asset2 = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self asset];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }

  mitigationAssetVersion = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self mitigationAssetVersion];

  if (mitigationAssetVersion)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
  }
}

- (void)setHasSpeakerIdThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addResults:(id)results
{
  resultsCopy = results;
  results = self->_results;
  v8 = resultsCopy;
  if (!results)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_results;
    self->_results = array;

    resultsCopy = v8;
    results = self->_results;
  }

  [(NSArray *)results addObject:resultsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = TTMSchemaTTMNeuralCombinerRequestEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self results:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(TTMSchemaTTMNeuralCombinerRequestEnded *)self setResults:v7];

  asset = [(TTMSchemaTTMNeuralCombinerRequestEnded *)self asset];
  v9 = [asset applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v9 suppressMessage];
  if (policyCopy)
  {
    [(TTMSchemaTTMNeuralCombinerRequestEnded *)self deleteAsset];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end