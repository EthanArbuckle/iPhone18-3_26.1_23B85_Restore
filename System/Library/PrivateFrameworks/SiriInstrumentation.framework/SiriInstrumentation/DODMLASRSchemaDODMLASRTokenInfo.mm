@interface DODMLASRSchemaDODMLASRTokenInfo
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRTokenInfo)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRTokenInfo)initWithJSON:(id)n;
- (NSData)jsonData;
- (float)languageModelCostsAtIndex:(unint64_t)index;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (unsigned)numBackoffsAtIndex:(unint64_t)index;
- (void)addLanguageModelCosts:(float)costs;
- (void)addNumBackoffs:(unsigned int)backoffs;
- (void)setHasSilenceAcousticCost:(BOOL)cost;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRTokenInfo

- (DODMLASRSchemaDODMLASRTokenInfo)initWithDictionary:(id)dictionary
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = DODMLASRSchemaDODMLASRTokenInfo;
  v5 = [(DODMLASRSchemaDODMLASRTokenInfo *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"token"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSchemaASRToken alloc] initWithDictionary:v6];
      [(DODMLASRSchemaDODMLASRTokenInfo *)v5 setToken:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"acousticCost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(DODMLASRSchemaDODMLASRTokenInfo *)v5 setAcousticCost:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"silenceAcousticCost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(DODMLASRSchemaDODMLASRTokenInfo *)v5 setSilenceAcousticCost:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"numBackoffs"];
    objc_opt_class();
    v27 = v9;
    v28 = v8;
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v34;
        do
        {
          v15 = 0;
          do
          {
            if (*v34 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v33 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[DODMLASRSchemaDODMLASRTokenInfo addNumBackoffs:](v5, "addNumBackoffs:", [v16 unsignedIntValue]);
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v13);
      }

      v9 = v27;
      v8 = v28;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"languageModelCosts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v6;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          v22 = 0;
          do
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v29 + 1) + 8 * v22);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v23 floatValue];
              [(DODMLASRSchemaDODMLASRTokenInfo *)v5 addLanguageModelCosts:?];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v20);
      }

      v6 = v26;
      v9 = v27;
      v8 = v28;
    }

    v24 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRTokenInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRTokenInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRTokenInfo *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = MEMORY[0x1E696AD98];
    [(DODMLASRSchemaDODMLASRTokenInfo *)self acousticCost];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"acousticCost"];
  }

  if ([(NSArray *)self->_languageModelCosts count])
  {
    languageModelCosts = [(DODMLASRSchemaDODMLASRTokenInfo *)self languageModelCosts];
    v7 = [languageModelCosts copy];
    [dictionary setObject:v7 forKeyedSubscript:@"languageModelCosts"];
  }

  if ([(NSArray *)self->_numBackoffs count])
  {
    numBackoffs = [(DODMLASRSchemaDODMLASRTokenInfo *)self numBackoffs];
    v9 = [numBackoffs copy];
    [dictionary setObject:v9 forKeyedSubscript:@"numBackoffs"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(DODMLASRSchemaDODMLASRTokenInfo *)self silenceAcousticCost];
    v11 = [v10 numberWithFloat:?];
    [dictionary setObject:v11 forKeyedSubscript:@"silenceAcousticCost"];
  }

  if (self->_token)
  {
    token = [(DODMLASRSchemaDODMLASRTokenInfo *)self token];
    dictionaryRepresentation = [token dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"token"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"token"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ASRSchemaASRToken *)self->_token hash];
  if (*&self->_has)
  {
    acousticCost = self->_acousticCost;
    if (acousticCost >= 0.0)
    {
      v8 = acousticCost;
    }

    else
    {
      v8 = -acousticCost;
    }

    *v4.i64 = floor(v8 + 0.5);
    v9 = (v8 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v6 += v9;
      }
    }

    else
    {
      v6 -= fabs(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    silenceAcousticCost = self->_silenceAcousticCost;
    if (silenceAcousticCost >= 0.0)
    {
      v13 = silenceAcousticCost;
    }

    else
    {
      v13 = -silenceAcousticCost;
    }

    *v4.i64 = floor(v13 + 0.5);
    v14 = (v13 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v5, v4).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v11 += v14;
      }
    }

    else
    {
      v11 -= fabs(v14);
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = v6 ^ v3 ^ v11 ^ [(NSArray *)self->_numBackoffs hash];
  return v16 ^ [(NSArray *)self->_languageModelCosts hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  token = [(DODMLASRSchemaDODMLASRTokenInfo *)self token];
  token2 = [equalCopy token];
  if ((token != 0) == (token2 == 0))
  {
    goto LABEL_23;
  }

  token3 = [(DODMLASRSchemaDODMLASRTokenInfo *)self token];
  if (token3)
  {
    v8 = token3;
    token4 = [(DODMLASRSchemaDODMLASRTokenInfo *)self token];
    token5 = [equalCopy token];
    v11 = [token4 isEqual:token5];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    acousticCost = self->_acousticCost;
    [equalCopy acousticCost];
    if (acousticCost != v15)
    {
      goto LABEL_24;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v13 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v16)
  {
    silenceAcousticCost = self->_silenceAcousticCost;
    [equalCopy silenceAcousticCost];
    if (silenceAcousticCost != v18)
    {
      goto LABEL_24;
    }
  }

  token = [(DODMLASRSchemaDODMLASRTokenInfo *)self numBackoffs];
  token2 = [equalCopy numBackoffs];
  if ((token != 0) == (token2 == 0))
  {
    goto LABEL_23;
  }

  numBackoffs = [(DODMLASRSchemaDODMLASRTokenInfo *)self numBackoffs];
  if (numBackoffs)
  {
    v20 = numBackoffs;
    numBackoffs2 = [(DODMLASRSchemaDODMLASRTokenInfo *)self numBackoffs];
    numBackoffs3 = [equalCopy numBackoffs];
    v23 = [numBackoffs2 isEqual:numBackoffs3];

    if (!v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  token = [(DODMLASRSchemaDODMLASRTokenInfo *)self languageModelCosts];
  token2 = [equalCopy languageModelCosts];
  if ((token != 0) == (token2 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  languageModelCosts = [(DODMLASRSchemaDODMLASRTokenInfo *)self languageModelCosts];
  if (!languageModelCosts)
  {

LABEL_27:
    v29 = 1;
    goto LABEL_25;
  }

  v25 = languageModelCosts;
  languageModelCosts2 = [(DODMLASRSchemaDODMLASRTokenInfo *)self languageModelCosts];
  languageModelCosts3 = [equalCopy languageModelCosts];
  v28 = [languageModelCosts2 isEqual:languageModelCosts3];

  if (v28)
  {
    goto LABEL_27;
  }

LABEL_24:
  v29 = 0;
LABEL_25:

  return v29;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  token = [(DODMLASRSchemaDODMLASRTokenInfo *)self token];

  if (token)
  {
    token2 = [(DODMLASRSchemaDODMLASRTokenInfo *)self token];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_numBackoffs;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v22 + 1) + 8 * i) unsignedIntValue];
        PBDataWriterWriteUint32Field();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = self->_languageModelCosts;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * j) floatValue];
        PBDataWriterWriteFloatField();
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (float)languageModelCostsAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_languageModelCosts objectAtIndexedSubscript:index];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addLanguageModelCosts:(float)costs
{
  languageModelCosts = self->_languageModelCosts;
  if (!languageModelCosts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_languageModelCosts;
    self->_languageModelCosts = array;

    languageModelCosts = self->_languageModelCosts;
  }

  *&v8 = costs;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)languageModelCosts addObject:v9];
}

- (unsigned)numBackoffsAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_numBackoffs objectAtIndexedSubscript:index];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)addNumBackoffs:(unsigned int)backoffs
{
  v3 = *&backoffs;
  numBackoffs = self->_numBackoffs;
  if (!numBackoffs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_numBackoffs;
    self->_numBackoffs = array;

    numBackoffs = self->_numBackoffs;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)numBackoffs addObject:v8];
}

- (void)setHasSilenceAcousticCost:(BOOL)cost
{
  if (cost)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = DODMLASRSchemaDODMLASRTokenInfo;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DODMLASRSchemaDODMLASRTokenInfo *)self token:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(DODMLASRSchemaDODMLASRTokenInfo *)self deleteToken];
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