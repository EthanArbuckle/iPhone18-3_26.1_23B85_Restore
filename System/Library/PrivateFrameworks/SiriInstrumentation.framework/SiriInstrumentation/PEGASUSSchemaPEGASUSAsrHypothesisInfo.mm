@interface PEGASUSSchemaPEGASUSAsrHypothesisInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAsrHypothesisInfo)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSAsrHypothesisInfo)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCorrections:(id)corrections;
- (void)setHasSelectedAsAlternateSuggestion:(BOOL)suggestion;
- (void)setHasSelectedAsPrimaryResponse:(BOOL)response;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSAsrHypothesisInfo

- (PEGASUSSchemaPEGASUSAsrHypothesisInfo)initWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = PEGASUSSchemaPEGASUSAsrHypothesisInfo;
  v5 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"postItnUtterance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)v5 setPostItnUtterance:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"idx"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PEGASUSSchemaPEGASUSAsrHypothesisIdx alloc] initWithDictionary:v8];
      [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)v5 setIdx:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)v5 setScore:?];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"selectedAsPrimaryResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAsrHypothesisInfo setSelectedAsPrimaryResponse:](v5, "setSelectedAsPrimaryResponse:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"selectedAsAlternateSuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAsrHypothesisInfo setSelectedAsAlternateSuggestion:](v5, "setSelectedAsAlternateSuggestion:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"corrections"];
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

- (PEGASUSSchemaPEGASUSAsrHypothesisInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_corrections count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"corrections"];
  }

  if (self->_idx)
  {
    v12 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self idx];
    dictionaryRepresentation2 = [v12 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"idx"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"idx"];
    }
  }

  if (self->_postItnUtterance)
  {
    postItnUtterance = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self postItnUtterance];
    v16 = [postItnUtterance copy];
    [dictionary setObject:v16 forKeyedSubscript:@"postItnUtterance"];
  }

  has = self->_has;
  if (has)
  {
    v20 = MEMORY[0x1E696AD98];
    [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self score];
    v21 = [v20 numberWithFloat:?];
    [dictionary setObject:v21 forKeyedSubscript:@"score"];

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
  [dictionary setObject:v22 forKeyedSubscript:@"selectedAsAlternateSuggestion"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_23:
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSAsrHypothesisInfo selectedAsPrimaryResponse](self, "selectedAsPrimaryResponse", v23)}];
    [dictionary setObject:v18 forKeyedSubscript:@"selectedAsPrimaryResponse"];
  }

LABEL_24:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v23];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  postItnUtterance = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self postItnUtterance];
  postItnUtterance2 = [equalCopy postItnUtterance];
  if ((postItnUtterance != 0) == (postItnUtterance2 == 0))
  {
    goto LABEL_27;
  }

  postItnUtterance3 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self postItnUtterance];
  if (postItnUtterance3)
  {
    v8 = postItnUtterance3;
    postItnUtterance4 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self postItnUtterance];
    postItnUtterance5 = [equalCopy postItnUtterance];
    v11 = [postItnUtterance4 isEqual:postItnUtterance5];

    if (!v11)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  postItnUtterance = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self idx];
  postItnUtterance2 = [equalCopy idx];
  if ((postItnUtterance != 0) == (postItnUtterance2 == 0))
  {
    goto LABEL_27;
  }

  v12 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self idx];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self idx];
    v15 = [equalCopy idx];
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
  v18 = equalCopy[40];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_28;
  }

  if (*&has)
  {
    score = self->_score;
    [equalCopy score];
    if (score != v20)
    {
      goto LABEL_28;
    }

    has = self->_has;
    v18 = equalCopy[40];
  }

  v21 = (*&has >> 1) & 1;
  if (v21 != ((v18 >> 1) & 1))
  {
    goto LABEL_28;
  }

  if (v21)
  {
    selectedAsPrimaryResponse = self->_selectedAsPrimaryResponse;
    if (selectedAsPrimaryResponse != [equalCopy selectedAsPrimaryResponse])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v18 = equalCopy[40];
  }

  v23 = (*&has >> 2) & 1;
  if (v23 != ((v18 >> 2) & 1))
  {
    goto LABEL_28;
  }

  if (v23)
  {
    selectedAsAlternateSuggestion = self->_selectedAsAlternateSuggestion;
    if (selectedAsAlternateSuggestion != [equalCopy selectedAsAlternateSuggestion])
    {
      goto LABEL_28;
    }
  }

  postItnUtterance = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self corrections];
  postItnUtterance2 = [equalCopy corrections];
  if ((postItnUtterance != 0) == (postItnUtterance2 == 0))
  {
LABEL_27:

    goto LABEL_28;
  }

  corrections = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self corrections];
  if (!corrections)
  {

LABEL_31:
    v30 = 1;
    goto LABEL_29;
  }

  v26 = corrections;
  corrections2 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self corrections];
  corrections3 = [equalCopy corrections];
  v29 = [corrections2 isEqual:corrections3];

  if (v29)
  {
    goto LABEL_31;
  }

LABEL_28:
  v30 = 0;
LABEL_29:

  return v30;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  postItnUtterance = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self postItnUtterance];

  if (postItnUtterance)
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

- (void)addCorrections:(id)corrections
{
  correctionsCopy = corrections;
  corrections = self->_corrections;
  v8 = correctionsCopy;
  if (!corrections)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_corrections;
    self->_corrections = array;

    correctionsCopy = v8;
    corrections = self->_corrections;
  }

  [(NSArray *)corrections addObject:correctionsCopy];
}

- (void)setHasSelectedAsAlternateSuggestion:(BOOL)suggestion
{
  if (suggestion)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSelectedAsPrimaryResponse:(BOOL)response
{
  if (response)
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
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSAsrHypothesisInfo;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self deletePostItnUtterance];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self deletePostItnUtterance];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self deletePostItnUtterance];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self deletePostItnUtterance];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self deletePostItnUtterance];
  }

  v6 = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self idx];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self deleteIdx];
  }

  corrections = [(PEGASUSSchemaPEGASUSAsrHypothesisInfo *)self corrections];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:corrections underConditions:policyCopy];
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