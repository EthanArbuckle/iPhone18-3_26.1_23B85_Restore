@interface SIRINLUINTERNALQUERYREWRITEQRUtterance
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAsrUtteranceTokens:(id)a3;
- (void)addUtteranceTokens:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALQUERYREWRITEQRUtterance

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  asrId = self->_asrId;
  v6 = *(v4 + 2);
  if (asrId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)asrId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALQUERYREWRITEQRUtterance *)self setAsrId:?];
  }

  if (*(v4 + 4))
  {
    [(SIRINLUINTERNALQUERYREWRITEQRUtterance *)self setUtterance:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(v4 + 5);
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

        [(SIRINLUINTERNALQUERYREWRITEQRUtterance *)self addUtteranceTokens:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(v4 + 3);
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

        [(SIRINLUINTERNALQUERYREWRITEQRUtterance *)self addAsrUtteranceTokens:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  if (*(v4 + 48))
  {
    self->_confidence = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_asrId hash];
  v4 = [(NSString *)self->_utterance hash];
  v5 = [(NSMutableArray *)self->_utteranceTokens hash];
  v6 = [(NSMutableArray *)self->_asrUtteranceTokens hash];
  if (*&self->_has)
  {
    confidence = self->_confidence;
    if (confidence < 0.0)
    {
      confidence = -confidence;
    }

    *v7.i64 = floor(confidence + 0.5);
    v11 = (confidence - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v8, v7).i64;
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

  return v4 ^ v3 ^ v5 ^ v6 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  asrId = self->_asrId;
  if (asrId | *(v4 + 2))
  {
    if (![(SIRINLUEXTERNALUUID *)asrId isEqual:?])
    {
      goto LABEL_14;
    }
  }

  utterance = self->_utterance;
  if (utterance | *(v4 + 4))
  {
    if (![(NSString *)utterance isEqual:?])
    {
      goto LABEL_14;
    }
  }

  utteranceTokens = self->_utteranceTokens;
  if (utteranceTokens | *(v4 + 5))
  {
    if (![(NSMutableArray *)utteranceTokens isEqual:?])
    {
      goto LABEL_14;
    }
  }

  asrUtteranceTokens = self->_asrUtteranceTokens;
  if (asrUtteranceTokens | *(v4 + 3))
  {
    if (![(NSMutableArray *)asrUtteranceTokens isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(v4 + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) != 0 && self->_confidence == *(v4 + 1))
    {
      v9 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_asrId copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_utterance copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_utteranceTokens;
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
        [v5 addUtteranceTokens:v15];

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
  v16 = self->_asrUtteranceTokens;
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
        [v5 addAsrUtteranceTokens:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_confidence;
    *(v5 + 48) |= 1u;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  if (self->_asrId)
  {
    [v12 setAsrId:?];
  }

  if (self->_utterance)
  {
    [v12 setUtterance:?];
  }

  if ([(SIRINLUINTERNALQUERYREWRITEQRUtterance *)self utteranceTokensCount])
  {
    [v12 clearUtteranceTokens];
    v4 = [(SIRINLUINTERNALQUERYREWRITEQRUtterance *)self utteranceTokensCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALQUERYREWRITEQRUtterance *)self utteranceTokensAtIndex:i];
        [v12 addUtteranceTokens:v7];
      }
    }
  }

  if ([(SIRINLUINTERNALQUERYREWRITEQRUtterance *)self asrUtteranceTokensCount])
  {
    [v12 clearAsrUtteranceTokens];
    v8 = [(SIRINLUINTERNALQUERYREWRITEQRUtterance *)self asrUtteranceTokensCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUINTERNALQUERYREWRITEQRUtterance *)self asrUtteranceTokensAtIndex:j];
        [v12 addAsrUtteranceTokens:v11];
      }
    }
  }

  if (*&self->_has)
  {
    *(v12 + 1) = *&self->_confidence;
    *(v12 + 48) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_asrId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_utteranceTokens;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_asrUtteranceTokens;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  if (*&self->_has)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  asrId = self->_asrId;
  if (asrId)
  {
    v5 = [(SIRINLUEXTERNALUUID *)asrId dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"asr_id"];
  }

  utterance = self->_utterance;
  if (utterance)
  {
    [v3 setObject:utterance forKey:@"utterance"];
  }

  if ([(NSMutableArray *)self->_utteranceTokens count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_utteranceTokens, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = self->_utteranceTokens;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"utterance_tokens"];
  }

  if ([(NSMutableArray *)self->_asrUtteranceTokens count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_asrUtteranceTokens, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = self->_asrUtteranceTokens;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"asr_utterance_tokens"];
  }

  if (*&self->_has)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
    [v3 setObject:v21 forKey:@"confidence"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALQUERYREWRITEQRUtterance;
  v4 = [(SIRINLUINTERNALQUERYREWRITEQRUtterance *)&v8 description];
  v5 = [(SIRINLUINTERNALQUERYREWRITEQRUtterance *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addAsrUtteranceTokens:(id)a3
{
  v4 = a3;
  asrUtteranceTokens = self->_asrUtteranceTokens;
  v8 = v4;
  if (!asrUtteranceTokens)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_asrUtteranceTokens;
    self->_asrUtteranceTokens = v6;

    v4 = v8;
    asrUtteranceTokens = self->_asrUtteranceTokens;
  }

  [(NSMutableArray *)asrUtteranceTokens addObject:v4];
}

- (void)addUtteranceTokens:(id)a3
{
  v4 = a3;
  utteranceTokens = self->_utteranceTokens;
  v8 = v4;
  if (!utteranceTokens)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_utteranceTokens;
    self->_utteranceTokens = v6;

    v4 = v8;
    utteranceTokens = self->_utteranceTokens;
  }

  [(NSMutableArray *)utteranceTokens addObject:v4];
}

+ (id)options
{
  if (options_once != -1)
  {
    dispatch_once(&options_once, &__block_literal_global);
  }

  v3 = options_sOptions;

  return v3;
}

void __49__SIRINLUINTERNALQUERYREWRITEQRUtterance_options__block_invoke()
{
  v0 = options_sOptions;
  options_sOptions = &unk_1F48968A8;
}

@end