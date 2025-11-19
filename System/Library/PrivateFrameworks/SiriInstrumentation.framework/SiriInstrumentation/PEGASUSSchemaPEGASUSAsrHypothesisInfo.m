@interface PEGASUSSchemaPEGASUSAsrHypothesisInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAsrHypothesisInfo)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSAsrHypothesisInfo)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCorrections:(id)a3;
- (void)setHasSelectedAsAlternateSuggestion:(BOOL)a3;
- (void)setHasSelectedAsPrimaryResponse:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSAsrHypothesisInfo

- (PEGASUSSchemaPEGASUSAsrHypothesisInfo)initWithDictionary:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = PEGASUSSchemaPEGASUSAsrHypothesisInfo;
  v5 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"postItnUtterance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)v5 setPostItnUtterance:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"idx"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PEGASUSSchemaPEGASUSAsrHypothesisIdx alloc] initWithDictionary:v8];
      [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)v5 setIdx:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)v5 setScore:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"selectedAsPrimaryResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAsrHypothesisInfo setSelectedAsPrimaryResponse:](v5, "setSelectedAsPrimaryResponse:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"selectedAsAlternateSuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAsrHypothesisInfo setSelectedAsAlternateSuggestion:](v5, "setSelectedAsAlternateSuggestion:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"corrections"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v12;
      v24 = v11;
      v25 = v10;
      v26 = v6;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v28;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v27 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[PEGASUSSchemaPEGASUSCorrectionInfo alloc] initWithDictionary:v19];
              [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)v5 addCorrections:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v16);
      }

      v6 = v26;
      v11 = v24;
      v10 = v25;
      v12 = v23;
    }

    v21 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAsrHypothesisInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_corrections count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = self->_corrections;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"corrections"];
  }

  if (self->_idx)
  {
    v12 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self idx];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"idx"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"idx"];
    }
  }

  if (self->_postItnUtterance)
  {
    v15 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self postItnUtterance];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"postItnUtterance"];
  }

  has = self->_has;
  if (has)
  {
    v20 = MEMORY[0x1E696AD98];
    [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self score];
    v21 = [v20 numberWithFloat:?];
    [v3 setObject:v21 forKeyedSubscript:@"score"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_22:
      if ((has & 2) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_22;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSAsrHypothesisInfo selectedAsAlternateSuggestion](self, "selectedAsAlternateSuggestion", v23)}];
  [v3 setObject:v22 forKeyedSubscript:@"selectedAsAlternateSuggestion"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_23:
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSAsrHypothesisInfo selectedAsPrimaryResponse](self, "selectedAsPrimaryResponse", v23)}];
    [v3 setObject:v18 forKeyedSubscript:@"selectedAsPrimaryResponse"];
  }

LABEL_24:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v23];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_postItnUtterance hash];
  v4 = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self->_idx hash];
  if (*&self->_has)
  {
    score = self->_score;
    if (score >= 0.0)
    {
      v9 = score;
    }

    else
    {
      v9 = -score;
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

  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_selectedAsPrimaryResponse;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v13 = 0;
    return v4 ^ v3 ^ v7 ^ v12 ^ v13 ^ [(NSArray *)self->_corrections hash];
  }

  v12 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v13 = 2654435761 * self->_selectedAsAlternateSuggestion;
  return v4 ^ v3 ^ v7 ^ v12 ^ v13 ^ [(NSArray *)self->_corrections hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self postItnUtterance];
  v6 = [v4 postItnUtterance];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_27;
  }

  v7 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self postItnUtterance];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self postItnUtterance];
    v10 = [v4 postItnUtterance];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self idx];
  v6 = [v4 idx];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_27;
  }

  v12 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self idx];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self idx];
    v15 = [v4 idx];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = v4[40];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_28;
  }

  if (*&has)
  {
    score = self->_score;
    [v4 score];
    if (score != v20)
    {
      goto LABEL_28;
    }

    has = self->_has;
    v18 = v4[40];
  }

  v21 = (*&has >> 1) & 1;
  if (v21 != ((v18 >> 1) & 1))
  {
    goto LABEL_28;
  }

  if (v21)
  {
    selectedAsPrimaryResponse = self->_selectedAsPrimaryResponse;
    if (selectedAsPrimaryResponse != [v4 selectedAsPrimaryResponse])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v18 = v4[40];
  }

  v23 = (*&has >> 2) & 1;
  if (v23 != ((v18 >> 2) & 1))
  {
    goto LABEL_28;
  }

  if (v23)
  {
    selectedAsAlternateSuggestion = self->_selectedAsAlternateSuggestion;
    if (selectedAsAlternateSuggestion != [v4 selectedAsAlternateSuggestion])
    {
      goto LABEL_28;
    }
  }

  v5 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self corrections];
  v6 = [v4 corrections];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_27:

    goto LABEL_28;
  }

  v25 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self corrections];
  if (!v25)
  {

LABEL_31:
    v30 = 1;
    goto LABEL_29;
  }

  v26 = v25;
  v27 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self corrections];
  v28 = [v4 corrections];
  v29 = [v27 isEqual:v28];

  if (v29)
  {
    goto LABEL_31;
  }

LABEL_28:
  v30 = 0;
LABEL_29:

  return v30;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self postItnUtterance];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self idx];

  if (v6)
  {
    v7 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self idx];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_corrections;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)addCorrections:(id)a3
{
  v4 = a3;
  corrections = self->_corrections;
  v8 = v4;
  if (!corrections)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_corrections;
    self->_corrections = v6;

    v4 = v8;
    corrections = self->_corrections;
  }

  [(NSArray *)corrections addObject:v4];
}

- (void)setHasSelectedAsAlternateSuggestion:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSelectedAsPrimaryResponse:(BOOL)a3
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
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSAsrHypothesisInfo;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self deletePostItnUtterance];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self deletePostItnUtterance];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self deletePostItnUtterance];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self deletePostItnUtterance];
  }

  if ([v4 isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self deletePostItnUtterance];
  }

  v6 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self idx];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self deleteIdx];
  }

  v9 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self corrections];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self setCorrections:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end