@interface DODMLASRSchemaDODMLASRTokenInfo
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRTokenInfo)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASRTokenInfo)initWithJSON:(id)a3;
- (NSData)jsonData;
- (float)languageModelCostsAtIndex:(unint64_t)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (unsigned)numBackoffsAtIndex:(unint64_t)a3;
- (void)addLanguageModelCosts:(float)a3;
- (void)addNumBackoffs:(unsigned int)a3;
- (void)setHasSilenceAcousticCost:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASRTokenInfo

- (DODMLASRSchemaDODMLASRTokenInfo)initWithDictionary:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = DODMLASRSchemaDODMLASRTokenInfo;
  v5 = [(DODMLASRSchemaDODMLASRTokenInfo *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"token"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSchemaASRToken alloc] initWithDictionary:v6];
      [(DODMLASRSchemaDODMLASRTokenInfo *)v5 setToken:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"acousticCost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(DODMLASRSchemaDODMLASRTokenInfo *)v5 setAcousticCost:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"silenceAcousticCost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(DODMLASRSchemaDODMLASRTokenInfo *)v5 setSilenceAcousticCost:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"numBackoffs"];
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

    v17 = [v4 objectForKeyedSubscript:@"languageModelCosts"];
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

- (DODMLASRSchemaDODMLASRTokenInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRTokenInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASRTokenInfo *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = MEMORY[0x1E696AD98];
    [(DODMLASRSchemaDODMLASRTokenInfo *)self acousticCost];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"acousticCost"];
  }

  if ([(NSArray *)self->_languageModelCosts count])
  {
    v6 = [(DODMLASRSchemaDODMLASRTokenInfo *)self languageModelCosts];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"languageModelCosts"];
  }

  if ([(NSArray *)self->_numBackoffs count])
  {
    v8 = [(DODMLASRSchemaDODMLASRTokenInfo *)self numBackoffs];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"numBackoffs"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(DODMLASRSchemaDODMLASRTokenInfo *)self silenceAcousticCost];
    v11 = [v10 numberWithFloat:?];
    [v3 setObject:v11 forKeyedSubscript:@"silenceAcousticCost"];
  }

  if (self->_token)
  {
    v12 = [(DODMLASRSchemaDODMLASRTokenInfo *)self token];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"token"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"token"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = [(DODMLASRSchemaDODMLASRTokenInfo *)self token];
  v6 = [v4 token];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_23;
  }

  v7 = [(DODMLASRSchemaDODMLASRTokenInfo *)self token];
  if (v7)
  {
    v8 = v7;
    v9 = [(DODMLASRSchemaDODMLASRTokenInfo *)self token];
    v10 = [v4 token];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    acousticCost = self->_acousticCost;
    [v4 acousticCost];
    if (acousticCost != v15)
    {
      goto LABEL_24;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v13 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v16)
  {
    silenceAcousticCost = self->_silenceAcousticCost;
    [v4 silenceAcousticCost];
    if (silenceAcousticCost != v18)
    {
      goto LABEL_24;
    }
  }

  v5 = [(DODMLASRSchemaDODMLASRTokenInfo *)self numBackoffs];
  v6 = [v4 numBackoffs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_23;
  }

  v19 = [(DODMLASRSchemaDODMLASRTokenInfo *)self numBackoffs];
  if (v19)
  {
    v20 = v19;
    v21 = [(DODMLASRSchemaDODMLASRTokenInfo *)self numBackoffs];
    v22 = [v4 numBackoffs];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRTokenInfo *)self languageModelCosts];
  v6 = [v4 languageModelCosts];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  v24 = [(DODMLASRSchemaDODMLASRTokenInfo *)self languageModelCosts];
  if (!v24)
  {

LABEL_27:
    v29 = 1;
    goto LABEL_25;
  }

  v25 = v24;
  v26 = [(DODMLASRSchemaDODMLASRTokenInfo *)self languageModelCosts];
  v27 = [v4 languageModelCosts];
  v28 = [v26 isEqual:v27];

  if (v28)
  {
    goto LABEL_27;
  }

LABEL_24:
  v29 = 0;
LABEL_25:

  return v29;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(DODMLASRSchemaDODMLASRTokenInfo *)self token];

  if (v5)
  {
    v6 = [(DODMLASRSchemaDODMLASRTokenInfo *)self token];
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

- (float)languageModelCostsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_languageModelCosts objectAtIndexedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addLanguageModelCosts:(float)a3
{
  languageModelCosts = self->_languageModelCosts;
  if (!languageModelCosts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_languageModelCosts;
    self->_languageModelCosts = v6;

    languageModelCosts = self->_languageModelCosts;
  }

  *&v8 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)languageModelCosts addObject:v9];
}

- (unsigned)numBackoffsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_numBackoffs objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)addNumBackoffs:(unsigned int)a3
{
  v3 = *&a3;
  numBackoffs = self->_numBackoffs;
  if (!numBackoffs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_numBackoffs;
    self->_numBackoffs = v6;

    numBackoffs = self->_numBackoffs;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)numBackoffs addObject:v8];
}

- (void)setHasSilenceAcousticCost:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = DODMLASRSchemaDODMLASRTokenInfo;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(DODMLASRSchemaDODMLASRTokenInfo *)self token:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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