@interface NLXSchemaCDMUserParse
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMUserParse)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMUserParse)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addUserDialogActs:(id)acts;
- (void)setHasComparableProbability:(BOOL)probability;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMUserParse

- (NLXSchemaCDMUserParse)initWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = NLXSchemaCDMUserParse;
  v5 = [(NLXSchemaCDMUserParse *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMUserParse *)v5 setId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"userDialogActs"];
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

    v16 = [dictionaryCopy objectForKeyedSubscript:@"probability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 doubleValue];
      [(NLXSchemaCDMUserParse *)v5 setProbability:?];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"repetitionResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[NLXSchemaCDMRepetitionResult alloc] initWithDictionary:v17];
      [(NLXSchemaCDMUserParse *)v5 setRepetitionResult:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"parser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[NLXSchemaCDMParser alloc] initWithDictionary:v19];
      [(NLXSchemaCDMUserParse *)v5 setParser:v20];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"comparableProbability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v21 doubleValue];
      [(NLXSchemaCDMUserParse *)v5 setComparableProbability:?];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"correctionOutcome"];
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

- (NLXSchemaCDMUserParse)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMUserParse *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMUserParse *)self dictionaryRepresentation];
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
  v34 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(NLXSchemaCDMUserParse *)self comparableProbability];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"comparableProbability"];
  }

  if (self->_correctionOutcome)
  {
    correctionOutcome = [(NLXSchemaCDMUserParse *)self correctionOutcome];
    dictionaryRepresentation = [correctionOutcome dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"correctionOutcome"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"correctionOutcome"];
    }
  }

  if (self->_id)
  {
    v9 = [(NLXSchemaCDMUserParse *)self id];
    dictionaryRepresentation2 = [v9 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"id"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"id"];
    }
  }

  if (self->_parser)
  {
    parser = [(NLXSchemaCDMUserParse *)self parser];
    dictionaryRepresentation3 = [parser dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"parser"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"parser"];
    }
  }

  if (*&self->_has)
  {
    v15 = MEMORY[0x1E696AD98];
    [(NLXSchemaCDMUserParse *)self probability];
    v16 = [v15 numberWithDouble:?];
    [dictionary setObject:v16 forKeyedSubscript:@"probability"];
  }

  if (self->_repetitionResult)
  {
    repetitionResult = [(NLXSchemaCDMUserParse *)self repetitionResult];
    dictionaryRepresentation4 = [repetitionResult dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"repetitionResult"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"repetitionResult"];
    }
  }

  if ([(NSArray *)self->_userDialogActs count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation5 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null5];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v23);
    }

    [dictionary setObject:array forKeyedSubscript:@"userDialogActs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v29];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  userDialogActs = [(NLXSchemaCDMUserParse *)self id];
  userDialogActs2 = [equalCopy id];
  if ((userDialogActs != 0) == (userDialogActs2 == 0))
  {
    goto LABEL_32;
  }

  v7 = [(NLXSchemaCDMUserParse *)self id];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaCDMUserParse *)self id];
    v10 = [equalCopy id];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  userDialogActs = [(NLXSchemaCDMUserParse *)self userDialogActs];
  userDialogActs2 = [equalCopy userDialogActs];
  if ((userDialogActs != 0) == (userDialogActs2 == 0))
  {
    goto LABEL_32;
  }

  userDialogActs3 = [(NLXSchemaCDMUserParse *)self userDialogActs];
  if (userDialogActs3)
  {
    v13 = userDialogActs3;
    userDialogActs4 = [(NLXSchemaCDMUserParse *)self userDialogActs];
    userDialogActs5 = [equalCopy userDialogActs];
    v16 = [userDialogActs4 isEqual:userDialogActs5];

    if (!v16)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[64] & 1))
  {
    goto LABEL_33;
  }

  if (*&self->_has)
  {
    probability = self->_probability;
    [equalCopy probability];
    if (probability != v18)
    {
      goto LABEL_33;
    }
  }

  userDialogActs = [(NLXSchemaCDMUserParse *)self repetitionResult];
  userDialogActs2 = [equalCopy repetitionResult];
  if ((userDialogActs != 0) == (userDialogActs2 == 0))
  {
    goto LABEL_32;
  }

  repetitionResult = [(NLXSchemaCDMUserParse *)self repetitionResult];
  if (repetitionResult)
  {
    v20 = repetitionResult;
    repetitionResult2 = [(NLXSchemaCDMUserParse *)self repetitionResult];
    repetitionResult3 = [equalCopy repetitionResult];
    v23 = [repetitionResult2 isEqual:repetitionResult3];

    if (!v23)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  userDialogActs = [(NLXSchemaCDMUserParse *)self parser];
  userDialogActs2 = [equalCopy parser];
  if ((userDialogActs != 0) == (userDialogActs2 == 0))
  {
    goto LABEL_32;
  }

  parser = [(NLXSchemaCDMUserParse *)self parser];
  if (parser)
  {
    v25 = parser;
    parser2 = [(NLXSchemaCDMUserParse *)self parser];
    parser3 = [equalCopy parser];
    v28 = [parser2 isEqual:parser3];

    if (!v28)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v29 = (*&self->_has >> 1) & 1;
  if (v29 != ((equalCopy[64] >> 1) & 1))
  {
    goto LABEL_33;
  }

  if (v29)
  {
    comparableProbability = self->_comparableProbability;
    [equalCopy comparableProbability];
    if (comparableProbability != v31)
    {
      goto LABEL_33;
    }
  }

  userDialogActs = [(NLXSchemaCDMUserParse *)self correctionOutcome];
  userDialogActs2 = [equalCopy correctionOutcome];
  if ((userDialogActs != 0) != (userDialogActs2 == 0))
  {
    correctionOutcome = [(NLXSchemaCDMUserParse *)self correctionOutcome];
    if (!correctionOutcome)
    {

LABEL_36:
      v37 = 1;
      goto LABEL_34;
    }

    v33 = correctionOutcome;
    correctionOutcome2 = [(NLXSchemaCDMUserParse *)self correctionOutcome];
    correctionOutcome3 = [equalCopy correctionOutcome];
    v36 = [correctionOutcome2 isEqual:correctionOutcome3];

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

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  repetitionResult = [(NLXSchemaCDMUserParse *)self repetitionResult];

  if (repetitionResult)
  {
    repetitionResult2 = [(NLXSchemaCDMUserParse *)self repetitionResult];
    PBDataWriterWriteSubmessage();
  }

  parser = [(NLXSchemaCDMUserParse *)self parser];

  if (parser)
  {
    parser2 = [(NLXSchemaCDMUserParse *)self parser];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  correctionOutcome = [(NLXSchemaCDMUserParse *)self correctionOutcome];

  if (correctionOutcome)
  {
    correctionOutcome2 = [(NLXSchemaCDMUserParse *)self correctionOutcome];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasComparableProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addUserDialogActs:(id)acts
{
  actsCopy = acts;
  userDialogActs = self->_userDialogActs;
  v8 = actsCopy;
  if (!userDialogActs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_userDialogActs;
    self->_userDialogActs = array;

    actsCopy = v8;
    userDialogActs = self->_userDialogActs;
  }

  [(NSArray *)userDialogActs addObject:actsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v21.receiver = self;
  v21.super_class = NLXSchemaCDMUserParse;
  v5 = [(SISchemaInstrumentationMessage *)&v21 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMUserParse *)self id];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMUserParse *)self deleteId];
  }

  userDialogActs = [(NLXSchemaCDMUserParse *)self userDialogActs];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:userDialogActs underConditions:policyCopy];
  [(NLXSchemaCDMUserParse *)self setUserDialogActs:v10];

  repetitionResult = [(NLXSchemaCDMUserParse *)self repetitionResult];
  v12 = [repetitionResult applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaCDMUserParse *)self deleteRepetitionResult];
  }

  parser = [(NLXSchemaCDMUserParse *)self parser];
  v15 = [parser applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v15 suppressMessage];

  if (suppressMessage3)
  {
    [(NLXSchemaCDMUserParse *)self deleteParser];
  }

  correctionOutcome = [(NLXSchemaCDMUserParse *)self correctionOutcome];
  v18 = [correctionOutcome applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v18 suppressMessage];

  if (suppressMessage4)
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