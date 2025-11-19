@interface NLXSchemaCDMUserParse
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMUserParse)initWithDictionary:(id)a3;
- (NLXSchemaCDMUserParse)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addUserDialogActs:(id)a3;
- (void)setHasComparableProbability:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMUserParse

- (NLXSchemaCDMUserParse)initWithDictionary:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = NLXSchemaCDMUserParse;
  v5 = [(NLXSchemaCDMUserParse *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"id"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMUserParse *)v5 setId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"userDialogActs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v6;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v28;
        do
        {
          v13 = 0;
          do
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v27 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[NLXSchemaCDMUserDialogAct alloc] initWithDictionary:v14];
              [(NLXSchemaCDMUserParse *)v5 addUserDialogActs:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v11);
      }

      v6 = v26;
    }

    v16 = [v4 objectForKeyedSubscript:@"probability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 doubleValue];
      [(NLXSchemaCDMUserParse *)v5 setProbability:?];
    }

    v17 = [v4 objectForKeyedSubscript:@"repetitionResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[NLXSchemaCDMRepetitionResult alloc] initWithDictionary:v17];
      [(NLXSchemaCDMUserParse *)v5 setRepetitionResult:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"parser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[NLXSchemaCDMParser alloc] initWithDictionary:v19];
      [(NLXSchemaCDMUserParse *)v5 setParser:v20];
    }

    v21 = [v4 objectForKeyedSubscript:@"comparableProbability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v21 doubleValue];
      [(NLXSchemaCDMUserParse *)v5 setComparableProbability:?];
    }

    v22 = [v4 objectForKeyedSubscript:@"correctionOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[NLXSchemaCDMCorrectionOutcome alloc] initWithDictionary:v22];
      [(NLXSchemaCDMUserParse *)v5 setCorrectionOutcome:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (NLXSchemaCDMUserParse)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMUserParse *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMUserParse *)self dictionaryRepresentation];
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
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(NLXSchemaCDMUserParse *)self comparableProbability];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"comparableProbability"];
  }

  if (self->_correctionOutcome)
  {
    v6 = [(NLXSchemaCDMUserParse *)self correctionOutcome];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"correctionOutcome"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"correctionOutcome"];
    }
  }

  if (self->_id)
  {
    v9 = [(NLXSchemaCDMUserParse *)self id];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"id"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"id"];
    }
  }

  if (self->_parser)
  {
    v12 = [(NLXSchemaCDMUserParse *)self parser];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"parser"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"parser"];
    }
  }

  if (*&self->_has)
  {
    v15 = MEMORY[0x1E696AD98];
    [(NLXSchemaCDMUserParse *)self probability];
    v16 = [v15 numberWithDouble:?];
    [v3 setObject:v16 forKeyedSubscript:@"probability"];
  }

  if (self->_repetitionResult)
  {
    v17 = [(NLXSchemaCDMUserParse *)self repetitionResult];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"repetitionResult"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"repetitionResult"];
    }
  }

  if ([(NSArray *)self->_userDialogActs count])
  {
    v20 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = self->_userDialogActs;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          if (v26)
          {
            [v20 addObject:v26];
          }

          else
          {
            v27 = [MEMORY[0x1E695DFB0] null];
            [v20 addObject:v27];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKeyedSubscript:@"userDialogActs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v29];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_id hash];
  v4 = [(NSArray *)self->_userDialogActs hash];
  if (*&self->_has)
  {
    probability = self->_probability;
    if (probability < 0.0)
    {
      probability = -probability;
    }

    *v5.i64 = floor(probability + 0.5);
    v9 = (probability - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = [(NLXSchemaCDMRepetitionResult *)self->_repetitionResult hash];
  v12 = [(NLXSchemaCDMParser *)self->_parser hash];
  if ((*&self->_has & 2) != 0)
  {
    comparableProbability = self->_comparableProbability;
    if (comparableProbability < 0.0)
    {
      comparableProbability = -comparableProbability;
    }

    *v13.i64 = floor(comparableProbability + 0.5);
    v17 = (comparableProbability - *v13.i64) * 1.84467441e19;
    *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v14, v13).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v15 ^ [(NLXSchemaCDMCorrectionOutcome *)self->_correctionOutcome hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  v5 = [(NLXSchemaCDMUserParse *)self id];
  v6 = [v4 id];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v7 = [(NLXSchemaCDMUserParse *)self id];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaCDMUserParse *)self id];
    v10 = [v4 id];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMUserParse *)self userDialogActs];
  v6 = [v4 userDialogActs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v12 = [(NLXSchemaCDMUserParse *)self userDialogActs];
  if (v12)
  {
    v13 = v12;
    v14 = [(NLXSchemaCDMUserParse *)self userDialogActs];
    v15 = [v4 userDialogActs];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[64] & 1))
  {
    goto LABEL_33;
  }

  if (*&self->_has)
  {
    probability = self->_probability;
    [v4 probability];
    if (probability != v18)
    {
      goto LABEL_33;
    }
  }

  v5 = [(NLXSchemaCDMUserParse *)self repetitionResult];
  v6 = [v4 repetitionResult];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v19 = [(NLXSchemaCDMUserParse *)self repetitionResult];
  if (v19)
  {
    v20 = v19;
    v21 = [(NLXSchemaCDMUserParse *)self repetitionResult];
    v22 = [v4 repetitionResult];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMUserParse *)self parser];
  v6 = [v4 parser];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v24 = [(NLXSchemaCDMUserParse *)self parser];
  if (v24)
  {
    v25 = v24;
    v26 = [(NLXSchemaCDMUserParse *)self parser];
    v27 = [v4 parser];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v29 = (*&self->_has >> 1) & 1;
  if (v29 != ((v4[64] >> 1) & 1))
  {
    goto LABEL_33;
  }

  if (v29)
  {
    comparableProbability = self->_comparableProbability;
    [v4 comparableProbability];
    if (comparableProbability != v31)
    {
      goto LABEL_33;
    }
  }

  v5 = [(NLXSchemaCDMUserParse *)self correctionOutcome];
  v6 = [v4 correctionOutcome];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(NLXSchemaCDMUserParse *)self correctionOutcome];
    if (!v32)
    {

LABEL_36:
      v37 = 1;
      goto LABEL_34;
    }

    v33 = v32;
    v34 = [(NLXSchemaCDMUserParse *)self correctionOutcome];
    v35 = [v4 correctionOutcome];
    v36 = [v34 isEqual:v35];

    if (v36)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_32:
  }

LABEL_33:
  v37 = 0;
LABEL_34:

  return v37;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NLXSchemaCDMUserParse *)self id];

  if (v5)
  {
    v6 = [(NLXSchemaCDMUserParse *)self id];
    PBDataWriterWriteSubmessage();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_userDialogActs;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  v12 = [(NLXSchemaCDMUserParse *)self repetitionResult];

  if (v12)
  {
    v13 = [(NLXSchemaCDMUserParse *)self repetitionResult];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(NLXSchemaCDMUserParse *)self parser];

  if (v14)
  {
    v15 = [(NLXSchemaCDMUserParse *)self parser];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  v16 = [(NLXSchemaCDMUserParse *)self correctionOutcome];

  if (v16)
  {
    v17 = [(NLXSchemaCDMUserParse *)self correctionOutcome];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasComparableProbability:(BOOL)a3
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

- (void)addUserDialogActs:(id)a3
{
  v4 = a3;
  userDialogActs = self->_userDialogActs;
  v8 = v4;
  if (!userDialogActs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_userDialogActs;
    self->_userDialogActs = v6;

    v4 = v8;
    userDialogActs = self->_userDialogActs;
  }

  [(NSArray *)userDialogActs addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NLXSchemaCDMUserParse;
  v5 = [(SISchemaInstrumentationMessage *)&v21 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMUserParse *)self id];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLXSchemaCDMUserParse *)self deleteId];
  }

  v9 = [(NLXSchemaCDMUserParse *)self userDialogActs];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(NLXSchemaCDMUserParse *)self setUserDialogActs:v10];

  v11 = [(NLXSchemaCDMUserParse *)self repetitionResult];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(NLXSchemaCDMUserParse *)self deleteRepetitionResult];
  }

  v14 = [(NLXSchemaCDMUserParse *)self parser];
  v15 = [v14 applySensitiveConditionsPolicy:v4];
  v16 = [v15 suppressMessage];

  if (v16)
  {
    [(NLXSchemaCDMUserParse *)self deleteParser];
  }

  v17 = [(NLXSchemaCDMUserParse *)self correctionOutcome];
  v18 = [v17 applySensitiveConditionsPolicy:v4];
  v19 = [v18 suppressMessage];

  if (v19)
  {
    [(NLXSchemaCDMUserParse *)self deleteCorrectionOutcome];
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