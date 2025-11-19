@interface INFERENCESchemaINFERENCEBackgroundContactSignalSet
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEBackgroundContactSignalSet)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEBackgroundContactSignalSet)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addHandlesWithBgPrivacySignals:(id)a3;
- (void)setHasPeopleSuggesterScoreSumForContact:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEBackgroundContactSignalSet

- (INFERENCESchemaINFERENCEBackgroundContactSignalSet)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = INFERENCESchemaINFERENCEBackgroundContactSignalSet;
  v5 = [(INFERENCESchemaINFERENCEBackgroundContactSignalSet *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isMatchWithRelationName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEBackgroundContactSignalSet setIsMatchWithRelationName:](v5, "setIsMatchWithRelationName:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"peopleSuggesterScoreSumForContact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(INFERENCESchemaINFERENCEBackgroundContactSignalSet *)v5 setPeopleSuggesterScoreSumForContact:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"handlesWithBgPrivacySignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v7;
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet alloc] initWithDictionary:v14];
              [(INFERENCESchemaINFERENCEBackgroundContactSignalSet *)v5 addHandlesWithBgPrivacySignals:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v7 = v18;
      v6 = v19;
    }

    v16 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEBackgroundContactSignalSet)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEBackgroundContactSignalSet *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEBackgroundContactSignalSet *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_handlesWithBgPrivacySignals count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_handlesWithBgPrivacySignals;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"handlesWithBgPrivacySignals"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEBackgroundContactSignalSet isMatchWithRelationName](self, "isMatchWithRelationName")}];
    [v3 setObject:v13 forKeyedSubscript:@"isMatchWithRelationName"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEBackgroundContactSignalSet *)self peopleSuggesterScoreSumForContact];
    v15 = [v14 numberWithFloat:?];
    [v3 setObject:v15 forKeyedSubscript:@"peopleSuggesterScoreSumForContact"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v17];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_isMatchWithRelationName;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v13 = 0;
    return v13 ^ v8 ^ [(NSArray *)self->_handlesWithBgPrivacySignals hash:v3];
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  peopleSuggesterScoreSumForContact = self->_peopleSuggesterScoreSumForContact;
  if (peopleSuggesterScoreSumForContact >= 0.0)
  {
    v10 = peopleSuggesterScoreSumForContact;
  }

  else
  {
    v10 = -peopleSuggesterScoreSumForContact;
  }

  *v6.i64 = floor(v10 + 0.5);
  v11 = (v10 - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v7, v6).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

  return v13 ^ v8 ^ [(NSArray *)self->_handlesWithBgPrivacySignals hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    isMatchWithRelationName = self->_isMatchWithRelationName;
    if (isMatchWithRelationName != [v4 isMatchWithRelationName])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (peopleSuggesterScoreSumForContact = self->_peopleSuggesterScoreSumForContact, [v4 peopleSuggesterScoreSumForContact], peopleSuggesterScoreSumForContact == v10))
    {
      v11 = [(INFERENCESchemaINFERENCEBackgroundContactSignalSet *)self handlesWithBgPrivacySignals];
      v12 = [v4 handlesWithBgPrivacySignals];
      v13 = v12;
      if ((v11 != 0) != (v12 == 0))
      {
        v14 = [(INFERENCESchemaINFERENCEBackgroundContactSignalSet *)self handlesWithBgPrivacySignals];
        if (!v14)
        {

LABEL_17:
          v19 = 1;
          goto LABEL_15;
        }

        v15 = v14;
        v16 = [(INFERENCESchemaINFERENCEBackgroundContactSignalSet *)self handlesWithBgPrivacySignals];
        v17 = [v4 handlesWithBgPrivacySignals];
        v18 = [v16 isEqual:v17];

        if (v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_handlesWithBgPrivacySignals;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addHandlesWithBgPrivacySignals:(id)a3
{
  v4 = a3;
  handlesWithBgPrivacySignals = self->_handlesWithBgPrivacySignals;
  v8 = v4;
  if (!handlesWithBgPrivacySignals)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_handlesWithBgPrivacySignals;
    self->_handlesWithBgPrivacySignals = v6;

    v4 = v8;
    handlesWithBgPrivacySignals = self->_handlesWithBgPrivacySignals;
  }

  [(NSArray *)handlesWithBgPrivacySignals addObject:v4];
}

- (void)setHasPeopleSuggesterScoreSumForContact:(BOOL)a3
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
  v9.super_class = INFERENCESchemaINFERENCEBackgroundContactSignalSet;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEBackgroundContactSignalSet *)self handlesWithBgPrivacySignals:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(INFERENCESchemaINFERENCEBackgroundContactSignalSet *)self setHandlesWithBgPrivacySignals:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end