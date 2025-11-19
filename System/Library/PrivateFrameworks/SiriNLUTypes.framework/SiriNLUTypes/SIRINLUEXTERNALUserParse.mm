@interface SIRINLUEXTERNALUserParse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addUserDialogActs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasProbability:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALUserParse

- (void)mergeFrom:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  idA = self->_idA;
  v6 = *(v4 + 4);
  if (idA)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)idA mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALUserParse *)self setIdA:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = *(v4 + 8);
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUEXTERNALUserParse *)self addUserDialogActs:*(*(&v19 + 1) + 8 * i), v19];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  if ((*(v4 + 72) & 2) != 0)
  {
    self->_probability = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 6))
  {
    [(SIRINLUEXTERNALUserParse *)self setParserId:?];
  }

  repetitionResult = self->_repetitionResult;
  v13 = *(v4 + 7);
  if (repetitionResult)
  {
    if (v13)
    {
      [(SIRINLUEXTERNALRepetitionResult *)repetitionResult mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(SIRINLUEXTERNALUserParse *)self setRepetitionResult:?];
  }

  parser = self->_parser;
  v15 = *(v4 + 5);
  if (parser)
  {
    if (v15)
    {
      [(SIRINLUEXTERNALParser *)parser mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(SIRINLUEXTERNALUserParse *)self setParser:?];
  }

  if (*(v4 + 72))
  {
    self->_comparableProbability = *(v4 + 1);
    *&self->_has |= 1u;
  }

  correctionOutcome = self->_correctionOutcome;
  v17 = *(v4 + 3);
  if (correctionOutcome)
  {
    if (v17)
    {
      [(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcome mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(SIRINLUEXTERNALUserParse *)self setCorrectionOutcome:?];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_idA hash];
  v4 = [(NSMutableArray *)self->_userDialogActs hash];
  if ((*&self->_has & 2) != 0)
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

  v11 = [(NSString *)self->_parserId hash];
  v12 = [(SIRINLUEXTERNALRepetitionResult *)self->_repetitionResult hash];
  v13 = [(SIRINLUEXTERNALParser *)self->_parser hash];
  if (*&self->_has)
  {
    comparableProbability = self->_comparableProbability;
    if (comparableProbability < 0.0)
    {
      comparableProbability = -comparableProbability;
    }

    *v14.i64 = floor(comparableProbability + 0.5);
    v18 = (comparableProbability - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v15, v14).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v13 ^ v16 ^ [(SIRINLUEXTERNALCorrectionOutcome *)self->_correctionOutcome hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  idA = self->_idA;
  if (idA | *(v4 + 4))
  {
    if (![(SIRINLUEXTERNALUUID *)idA isEqual:?])
    {
      goto LABEL_24;
    }
  }

  userDialogActs = self->_userDialogActs;
  if (userDialogActs | *(v4 + 8))
  {
    if (![(NSMutableArray *)userDialogActs isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v7 = *(v4 + 72);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 72) & 2) == 0 || self->_probability != *(v4 + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 72) & 2) != 0)
  {
LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  parserId = self->_parserId;
  if (parserId | *(v4 + 6) && ![(NSString *)parserId isEqual:?])
  {
    goto LABEL_24;
  }

  repetitionResult = self->_repetitionResult;
  if (repetitionResult | *(v4 + 7))
  {
    if (![(SIRINLUEXTERNALRepetitionResult *)repetitionResult isEqual:?])
    {
      goto LABEL_24;
    }
  }

  parser = self->_parser;
  if (parser | *(v4 + 5))
  {
    if (![(SIRINLUEXTERNALParser *)parser isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v11 = *(v4 + 72);
  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_comparableProbability != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_24;
  }

  correctionOutcome = self->_correctionOutcome;
  if (correctionOutcome | *(v4 + 3))
  {
    v13 = [(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcome isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_25:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_idA copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = self->_userDialogActs;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v24 + 1) + 8 * v12) copyWithZone:{a3, v24}];
        [v5 addUserDialogActs:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_probability;
    *(v5 + 72) |= 2u;
  }

  v14 = [(NSString *)self->_parserId copyWithZone:a3, v24];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(SIRINLUEXTERNALRepetitionResult *)self->_repetitionResult copyWithZone:a3];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v18 = [(SIRINLUEXTERNALParser *)self->_parser copyWithZone:a3];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_comparableProbability;
    *(v5 + 72) |= 1u;
  }

  v20 = [(SIRINLUEXTERNALCorrectionOutcome *)self->_correctionOutcome copyWithZone:a3];
  v21 = *(v5 + 24);
  *(v5 + 24) = v20;

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_idA)
  {
    [v9 setIdA:?];
  }

  if ([(SIRINLUEXTERNALUserParse *)self userDialogActsCount])
  {
    [v9 clearUserDialogActs];
    v4 = [(SIRINLUEXTERNALUserParse *)self userDialogActsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALUserParse *)self userDialogActsAtIndex:i];
        [v9 addUserDialogActs:v7];
      }
    }
  }

  v8 = v9;
  if ((*&self->_has & 2) != 0)
  {
    *(v9 + 2) = *&self->_probability;
    *(v9 + 72) |= 2u;
  }

  if (self->_parserId)
  {
    [v9 setParserId:?];
    v8 = v9;
  }

  if (self->_repetitionResult)
  {
    [v9 setRepetitionResult:?];
    v8 = v9;
  }

  if (self->_parser)
  {
    [v9 setParser:?];
    v8 = v9;
  }

  if (*&self->_has)
  {
    v8[1] = *&self->_comparableProbability;
    *(v8 + 72) |= 1u;
  }

  if (self->_correctionOutcome)
  {
    [v9 setCorrectionOutcome:?];
    v8 = v9;
  }
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_idA)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_userDialogActs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ((*&self->_has & 2) != 0)
  {
    probability = self->_probability;
    PBDataWriterWriteDoubleField();
  }

  if (self->_parserId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_repetitionResult)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_parser)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    comparableProbability = self->_comparableProbability;
    PBDataWriterWriteDoubleField();
  }

  if (self->_correctionOutcome)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  idA = self->_idA;
  if (idA)
  {
    v5 = [(SIRINLUEXTERNALUUID *)idA dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"id_a"];
  }

  if ([(NSMutableArray *)self->_userDialogActs count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_userDialogActs, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = self->_userDialogActs;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"user_dialog_acts"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_probability];
    [v3 setObject:v13 forKey:@"probability"];
  }

  parserId = self->_parserId;
  if (parserId)
  {
    [v3 setObject:parserId forKey:@"parser_id"];
  }

  repetitionResult = self->_repetitionResult;
  if (repetitionResult)
  {
    v16 = [(SIRINLUEXTERNALRepetitionResult *)repetitionResult dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"repetition_result"];
  }

  parser = self->_parser;
  if (parser)
  {
    v18 = [(SIRINLUEXTERNALParser *)parser dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"parser"];
  }

  if (*&self->_has)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_comparableProbability];
    [v3 setObject:v19 forKey:@"comparable_probability"];
  }

  correctionOutcome = self->_correctionOutcome;
  if (correctionOutcome)
  {
    v21 = [(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcome dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"correction_outcome"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUserParse;
  v4 = [(SIRINLUEXTERNALUserParse *)&v8 description];
  v5 = [(SIRINLUEXTERNALUserParse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasProbability:(BOOL)a3
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
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_userDialogActs;
    self->_userDialogActs = v6;

    v4 = v8;
    userDialogActs = self->_userDialogActs;
  }

  [(NSMutableArray *)userDialogActs addObject:v4];
}

@end