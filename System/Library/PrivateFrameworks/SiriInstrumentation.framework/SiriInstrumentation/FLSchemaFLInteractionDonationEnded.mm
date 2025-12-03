@interface FLSchemaFLInteractionDonationEnded
- (BOOL)isEqual:(id)equal;
- (FLSchemaFLInteractionDonationEnded)initWithDictionary:(id)dictionary;
- (FLSchemaFLInteractionDonationEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCandidates:(id)candidates;
- (void)setHasActionStatementId:(BOOL)id;
- (void)setHasDonationTime:(BOOL)time;
- (void)setHasDonationTrigger:(BOOL)trigger;
- (void)setHasWasTupleDonated:(BOOL)donated;
- (void)writeTo:(id)to;
@end

@implementation FLSchemaFLInteractionDonationEnded

- (FLSchemaFLInteractionDonationEnded)initWithDictionary:(id)dictionary
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = FLSchemaFLInteractionDonationEnded;
  v5 = [(FLSchemaFLInteractionDonationEnded *)&v38 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(FLSchemaFLInteractionDonationEnded *)v5 setAbsoluteTime:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"donationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(FLSchemaFLInteractionDonationEnded *)v5 setDonationTime:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ifSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(FLSchemaFLInteractionDonationEnded *)v5 setIfSessionId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"actionStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLInteractionDonationEnded setActionStatementId:](v5, "setActionStatementId:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"donationTrigger"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLInteractionDonationEnded setDonationTrigger:](v5, "setDonationTrigger:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"wasTupleDonated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLInteractionDonationEnded setWasTupleDonated:](v5, "setWasTupleDonated:", [v12 BOOLValue]);
    }

    v33 = v12;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"tuple"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[FLSchemaFLTupleInteraction alloc] initWithDictionary:v13];
      v15 = v13;
      v16 = v11;
      v17 = v14;
      [(FLSchemaFLInteractionDonationEnded *)v5 setTuple:v14];

      v11 = v16;
      v13 = v15;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"candidates"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v13;
      v29 = v11;
      v30 = v10;
      v31 = v7;
      v32 = v6;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v35;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v34 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[FLSchemaFLCandidateInteraction alloc] initWithDictionary:v24];
              [(FLSchemaFLInteractionDonationEnded *)v5 addCandidates:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v21);
      }

      v7 = v31;
      v6 = v32;
      v10 = v30;
      v13 = v28;
      v11 = v29;
    }

    v26 = v5;
  }

  return v5;
}

- (FLSchemaFLInteractionDonationEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLSchemaFLInteractionDonationEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLSchemaFLInteractionDonationEnded *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = MEMORY[0x1E696AD98];
    [(FLSchemaFLInteractionDonationEnded *)self absoluteTime];
    v6 = [v5 numberWithDouble:?];
    [dictionary setObject:v6 forKeyedSubscript:@"absoluteTime"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLSchemaFLInteractionDonationEnded actionStatementId](self, "actionStatementId")}];
    [dictionary setObject:v7 forKeyedSubscript:@"actionStatementId"];
  }

  if ([(NSArray *)self->_candidates count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = self->_candidates;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
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

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"candidates"];
  }

  v16 = self->_has;
  if ((v16 & 2) != 0)
  {
    v17 = MEMORY[0x1E696AD98];
    [(FLSchemaFLInteractionDonationEnded *)self donationTime];
    v18 = [v17 numberWithDouble:?];
    [dictionary setObject:v18 forKeyedSubscript:@"donationTime"];

    v16 = self->_has;
  }

  if ((v16 & 8) != 0)
  {
    v19 = [(FLSchemaFLInteractionDonationEnded *)self donationTrigger]- 1;
    if (v19 > 2)
    {
      v20 = @"FLTRIGGER_UNKNOWN";
    }

    else
    {
      v20 = off_1E78D6DA0[v19];
    }

    [dictionary setObject:v20 forKeyedSubscript:@"donationTrigger"];
  }

  if (self->_ifSessionId)
  {
    ifSessionId = [(FLSchemaFLInteractionDonationEnded *)self ifSessionId];
    dictionaryRepresentation2 = [ifSessionId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ifSessionId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ifSessionId"];
    }
  }

  if (self->_tuple)
  {
    tuple = [(FLSchemaFLInteractionDonationEnded *)self tuple];
    dictionaryRepresentation3 = [tuple dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"tuple"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"tuple"];
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLSchemaFLInteractionDonationEnded wasTupleDonated](self, "wasTupleDonated")}];
    [dictionary setObject:v27 forKeyedSubscript:@"wasTupleDonated"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    absoluteTime = self->_absoluteTime;
    if (absoluteTime < 0.0)
    {
      absoluteTime = -absoluteTime;
    }

    *v2.i64 = floor(absoluteTime + 0.5);
    v7 = (absoluteTime - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    donationTime = self->_donationTime;
    if (donationTime < 0.0)
    {
      donationTime = -donationTime;
    }

    *v2.i64 = floor(donationTime + 0.5);
    v11 = (donationTime - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = [(SISchemaUUID *)self->_ifSessionId hash];
  if ((*&self->_has & 4) == 0)
  {
    v14 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v15 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  v14 = 2654435761 * self->_actionStatementId;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v15 = 2654435761 * self->_donationTrigger;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  v16 = 2654435761 * self->_wasTupleDonated;
LABEL_24:
  v17 = v9 ^ v5 ^ v14 ^ v15 ^ v16 ^ v13;
  v18 = [(FLSchemaFLTupleInteraction *)self->_tuple hash];
  return v17 ^ v18 ^ [(NSArray *)self->_candidates hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  has = self->_has;
  v6 = equalCopy[64];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_35;
  }

  if (*&has)
  {
    absoluteTime = self->_absoluteTime;
    [equalCopy absoluteTime];
    if (absoluteTime != v8)
    {
      goto LABEL_35;
    }

    has = self->_has;
    v6 = equalCopy[64];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_35;
  }

  if (v9)
  {
    donationTime = self->_donationTime;
    [equalCopy donationTime];
    if (donationTime != v11)
    {
      goto LABEL_35;
    }
  }

  ifSessionId = [(FLSchemaFLInteractionDonationEnded *)self ifSessionId];
  ifSessionId2 = [equalCopy ifSessionId];
  if ((ifSessionId != 0) == (ifSessionId2 == 0))
  {
    goto LABEL_34;
  }

  ifSessionId3 = [(FLSchemaFLInteractionDonationEnded *)self ifSessionId];
  if (ifSessionId3)
  {
    v15 = ifSessionId3;
    ifSessionId4 = [(FLSchemaFLInteractionDonationEnded *)self ifSessionId];
    ifSessionId5 = [equalCopy ifSessionId];
    v18 = [ifSessionId4 isEqual:ifSessionId5];

    if (!v18)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v19 = self->_has;
  v20 = (*&v19 >> 2) & 1;
  v21 = equalCopy[64];
  if (v20 != ((v21 >> 2) & 1))
  {
    goto LABEL_35;
  }

  if (v20)
  {
    actionStatementId = self->_actionStatementId;
    if (actionStatementId != [equalCopy actionStatementId])
    {
      goto LABEL_35;
    }

    v19 = self->_has;
    v21 = equalCopy[64];
  }

  v23 = (*&v19 >> 3) & 1;
  if (v23 != ((v21 >> 3) & 1))
  {
    goto LABEL_35;
  }

  if (v23)
  {
    donationTrigger = self->_donationTrigger;
    if (donationTrigger != [equalCopy donationTrigger])
    {
      goto LABEL_35;
    }

    v19 = self->_has;
    v21 = equalCopy[64];
  }

  v25 = (*&v19 >> 4) & 1;
  if (v25 != ((v21 >> 4) & 1))
  {
    goto LABEL_35;
  }

  if (v25)
  {
    wasTupleDonated = self->_wasTupleDonated;
    if (wasTupleDonated != [equalCopy wasTupleDonated])
    {
      goto LABEL_35;
    }
  }

  ifSessionId = [(FLSchemaFLInteractionDonationEnded *)self tuple];
  ifSessionId2 = [equalCopy tuple];
  if ((ifSessionId != 0) == (ifSessionId2 == 0))
  {
    goto LABEL_34;
  }

  tuple = [(FLSchemaFLInteractionDonationEnded *)self tuple];
  if (tuple)
  {
    v28 = tuple;
    tuple2 = [(FLSchemaFLInteractionDonationEnded *)self tuple];
    tuple3 = [equalCopy tuple];
    v31 = [tuple2 isEqual:tuple3];

    if (!v31)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  ifSessionId = [(FLSchemaFLInteractionDonationEnded *)self candidates];
  ifSessionId2 = [equalCopy candidates];
  if ((ifSessionId != 0) == (ifSessionId2 == 0))
  {
LABEL_34:

    goto LABEL_35;
  }

  candidates = [(FLSchemaFLInteractionDonationEnded *)self candidates];
  if (!candidates)
  {

LABEL_38:
    v37 = 1;
    goto LABEL_36;
  }

  v33 = candidates;
  candidates2 = [(FLSchemaFLInteractionDonationEnded *)self candidates];
  candidates3 = [equalCopy candidates];
  v36 = [candidates2 isEqual:candidates3];

  if (v36)
  {
    goto LABEL_38;
  }

LABEL_35:
  v37 = 0;
LABEL_36:

  return v37;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  ifSessionId = [(FLSchemaFLInteractionDonationEnded *)self ifSessionId];

  if (ifSessionId)
  {
    ifSessionId2 = [(FLSchemaFLInteractionDonationEnded *)self ifSessionId];
    PBDataWriterWriteSubmessage();
  }

  v8 = self->_has;
  if ((v8 & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    v8 = self->_has;
    if ((v8 & 8) == 0)
    {
LABEL_9:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    PBDataWriterWriteBOOLField();
  }

LABEL_11:
  tuple = [(FLSchemaFLInteractionDonationEnded *)self tuple];

  if (tuple)
  {
    tuple2 = [(FLSchemaFLInteractionDonationEnded *)self tuple];
    PBDataWriterWriteSubmessage();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_candidates;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)addCandidates:(id)candidates
{
  candidatesCopy = candidates;
  candidates = self->_candidates;
  v8 = candidatesCopy;
  if (!candidates)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidates;
    self->_candidates = array;

    candidatesCopy = v8;
    candidates = self->_candidates;
  }

  [(NSArray *)candidates addObject:candidatesCopy];
}

- (void)setHasWasTupleDonated:(BOOL)donated
{
  if (donated)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasDonationTrigger:(BOOL)trigger
{
  if (trigger)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasActionStatementId:(BOOL)id
{
  if (id)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDonationTime:(BOOL)time
{
  if (time)
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
  v15.receiver = self;
  v15.super_class = FLSchemaFLInteractionDonationEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  ifSessionId = [(FLSchemaFLInteractionDonationEnded *)self ifSessionId];
  v7 = [ifSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLSchemaFLInteractionDonationEnded *)self deleteIfSessionId];
  }

  tuple = [(FLSchemaFLInteractionDonationEnded *)self tuple];
  v10 = [tuple applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLSchemaFLInteractionDonationEnded *)self deleteTuple];
  }

  candidates = [(FLSchemaFLInteractionDonationEnded *)self candidates];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:candidates underConditions:policyCopy];
  [(FLSchemaFLInteractionDonationEnded *)self setCandidates:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end