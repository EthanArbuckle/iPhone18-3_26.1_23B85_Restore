@interface SIRINLUEXTERNALAsrHypothesis
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAsrTokens:(id)a3;
- (void)addRewrittenUtterances:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALAsrHypothesis

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  idA = self->_idA;
  v6 = *(v4 + 3);
  if (idA)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)idA mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALAsrHypothesis *)self setIdA:?];
  }

  if (*(v4 + 5))
  {
    [(SIRINLUEXTERNALAsrHypothesis *)self setUtterance:?];
  }

  if (*(v4 + 48))
  {
    self->_probability = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUEXTERNALAsrHypothesis *)self addAsrTokens:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(v4 + 4);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUEXTERNALAsrHypothesis *)self addRewrittenUtterances:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_idA hash];
  v4 = [(NSString *)self->_utterance hash];
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

  v11 = v4 ^ v3 ^ v7 ^ [(NSMutableArray *)self->_asrTokens hash];
  return v11 ^ [(NSMutableArray *)self->_rewrittenUtterances hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  idA = self->_idA;
  if (idA | *(v4 + 3))
  {
    if (![(SIRINLUEXTERNALUUID *)idA isEqual:?])
    {
      goto LABEL_15;
    }
  }

  utterance = self->_utterance;
  if (utterance | *(v4 + 5))
  {
    if (![(NSString *)utterance isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v7 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_probability != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  asrTokens = self->_asrTokens;
  if (asrTokens | *(v4 + 2) && ![(NSMutableArray *)asrTokens isEqual:?])
  {
    goto LABEL_15;
  }

  rewrittenUtterances = self->_rewrittenUtterances;
  if (rewrittenUtterances | *(v4 + 4))
  {
    v10 = [(NSMutableArray *)rewrittenUtterances isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_idA copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_utterance copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_probability;
    *(v5 + 48) |= 1u;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_asrTokens;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v28 + 1) + 8 * v14) copyWithZone:a3];
        [v5 addAsrTokens:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v12);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = self->_rewrittenUtterances;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v24 + 1) + 8 * v20) copyWithZone:{a3, v24}];
        [v5 addRewrittenUtterances:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (self->_idA)
  {
    [v4 setIdA:?];
    v4 = v13;
  }

  if (self->_utterance)
  {
    [v13 setUtterance:?];
    v4 = v13;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_probability;
    *(v4 + 48) |= 1u;
  }

  if ([(SIRINLUEXTERNALAsrHypothesis *)self asrTokensCount])
  {
    [v13 clearAsrTokens];
    v5 = [(SIRINLUEXTERNALAsrHypothesis *)self asrTokensCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SIRINLUEXTERNALAsrHypothesis *)self asrTokensAtIndex:i];
        [v13 addAsrTokens:v8];
      }
    }
  }

  if ([(SIRINLUEXTERNALAsrHypothesis *)self rewrittenUtterancesCount])
  {
    [v13 clearRewrittenUtterances];
    v9 = [(SIRINLUEXTERNALAsrHypothesis *)self rewrittenUtterancesCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(SIRINLUEXTERNALAsrHypothesis *)self rewrittenUtterancesAtIndex:j];
        [v13 addRewrittenUtterances:v12];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_idA)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    probability = self->_probability;
    PBDataWriterWriteDoubleField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_asrTokens;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_rewrittenUtterances;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  idA = self->_idA;
  if (idA)
  {
    v5 = [(SIRINLUEXTERNALUUID *)idA dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"id_a"];
  }

  utterance = self->_utterance;
  if (utterance)
  {
    [v3 setObject:utterance forKey:@"utterance"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_probability];
    [v3 setObject:v7 forKey:@"probability"];
  }

  if ([(NSMutableArray *)self->_asrTokens count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_asrTokens, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = self->_asrTokens;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"asr_tokens"];
  }

  if ([(NSMutableArray *)self->_rewrittenUtterances count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_rewrittenUtterances, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = self->_rewrittenUtterances;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKey:@"rewritten_utterances"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALAsrHypothesis;
  v4 = [(SIRINLUEXTERNALAsrHypothesis *)&v8 description];
  v5 = [(SIRINLUEXTERNALAsrHypothesis *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addRewrittenUtterances:(id)a3
{
  v4 = a3;
  rewrittenUtterances = self->_rewrittenUtterances;
  v8 = v4;
  if (!rewrittenUtterances)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rewrittenUtterances;
    self->_rewrittenUtterances = v6;

    v4 = v8;
    rewrittenUtterances = self->_rewrittenUtterances;
  }

  [(NSMutableArray *)rewrittenUtterances addObject:v4];
}

- (void)addAsrTokens:(id)a3
{
  v4 = a3;
  asrTokens = self->_asrTokens;
  v8 = v4;
  if (!asrTokens)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_asrTokens;
    self->_asrTokens = v6;

    v4 = v8;
    asrTokens = self->_asrTokens;
  }

  [(NSMutableArray *)asrTokens addObject:v4];
}

@end