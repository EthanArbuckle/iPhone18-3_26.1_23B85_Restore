@interface SIRINLUINTERNALRewriteUtterance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAsrUtteranceTokens:(id)tokens;
- (void)addNluInternalTokens:(id)tokens;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALRewriteUtterance

- (void)mergeFrom:(id)from
{
  v28 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  asrId = self->_asrId;
  v6 = *(fromCopy + 2);
  if (asrId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)asrId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALRewriteUtterance *)self setAsrId:?];
  }

  if (*(fromCopy + 5))
  {
    [(SIRINLUINTERNALRewriteUtterance *)self setUtterance:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(fromCopy + 3);
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

        [(SIRINLUINTERNALRewriteUtterance *)self addAsrUtteranceTokens:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 48))
  {
    self->_confidence = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(fromCopy + 4);
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

        [(SIRINLUINTERNALRewriteUtterance *)self addNluInternalTokens:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_asrId hash];
  v4 = [(NSString *)self->_utterance hash];
  v5 = [(NSMutableArray *)self->_asrUtteranceTokens hash];
  if (*&self->_has)
  {
    confidence = self->_confidence;
    if (confidence < 0.0)
    {
      confidence = -confidence;
    }

    *v6.i64 = floor(confidence + 0.5);
    v10 = (confidence - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ [(NSMutableArray *)self->_nluInternalTokens hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  asrId = self->_asrId;
  if (asrId | *(equalCopy + 2))
  {
    if (![(SIRINLUEXTERNALUUID *)asrId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  utterance = self->_utterance;
  if (utterance | *(equalCopy + 5))
  {
    if (![(NSString *)utterance isEqual:?])
    {
      goto LABEL_15;
    }
  }

  asrUtteranceTokens = self->_asrUtteranceTokens;
  if (asrUtteranceTokens | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)asrUtteranceTokens isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_confidence != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  nluInternalTokens = self->_nluInternalTokens;
  if (nluInternalTokens | *(equalCopy + 4))
  {
    v10 = [(NSMutableArray *)nluInternalTokens isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_asrId copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_utterance copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_asrUtteranceTokens;
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

        v15 = [*(*(&v28 + 1) + 8 * v14) copyWithZone:zone];
        [v5 addAsrUtteranceTokens:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v12);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_confidence;
    *(v5 + 48) |= 1u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = self->_nluInternalTokens;
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

        v21 = [*(*(&v24 + 1) + 8 * v20) copyWithZone:{zone, v24}];
        [v5 addNluInternalTokens:v21];

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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_asrId)
  {
    [toCopy setAsrId:?];
  }

  if (self->_utterance)
  {
    [toCopy setUtterance:?];
  }

  if ([(SIRINLUINTERNALRewriteUtterance *)self asrUtteranceTokensCount])
  {
    [toCopy clearAsrUtteranceTokens];
    asrUtteranceTokensCount = [(SIRINLUINTERNALRewriteUtterance *)self asrUtteranceTokensCount];
    if (asrUtteranceTokensCount)
    {
      v5 = asrUtteranceTokensCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALRewriteUtterance *)self asrUtteranceTokensAtIndex:i];
        [toCopy addAsrUtteranceTokens:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_confidence;
    *(toCopy + 48) |= 1u;
  }

  if ([(SIRINLUINTERNALRewriteUtterance *)self nluInternalTokensCount])
  {
    [toCopy clearNluInternalTokens];
    nluInternalTokensCount = [(SIRINLUINTERNALRewriteUtterance *)self nluInternalTokensCount];
    if (nluInternalTokensCount)
    {
      v9 = nluInternalTokensCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUINTERNALRewriteUtterance *)self nluInternalTokensAtIndex:j];
        [toCopy addNluInternalTokens:v11];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
  v5 = self->_asrUtteranceTokens;
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

  if (*&self->_has)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_nluInternalTokens;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  asrId = self->_asrId;
  if (asrId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)asrId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"asr_id"];
  }

  utterance = self->_utterance;
  if (utterance)
  {
    [dictionary setObject:utterance forKey:@"utterance"];
  }

  if ([(NSMutableArray *)self->_asrUtteranceTokens count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_asrUtteranceTokens, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = self->_asrUtteranceTokens;
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

          dictionaryRepresentation2 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation2];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"asr_utterance_tokens"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
    [dictionary setObject:v14 forKey:@"confidence"];
  }

  if ([(NSMutableArray *)self->_nluInternalTokens count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_nluInternalTokens, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = self->_nluInternalTokens;
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

          dictionaryRepresentation3 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation3];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }

    [dictionary setObject:v15 forKey:@"nlu_internal_tokens"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALRewriteUtterance;
  v4 = [(SIRINLUINTERNALRewriteUtterance *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALRewriteUtterance *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addNluInternalTokens:(id)tokens
{
  tokensCopy = tokens;
  nluInternalTokens = self->_nluInternalTokens;
  v8 = tokensCopy;
  if (!nluInternalTokens)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_nluInternalTokens;
    self->_nluInternalTokens = v6;

    tokensCopy = v8;
    nluInternalTokens = self->_nluInternalTokens;
  }

  [(NSMutableArray *)nluInternalTokens addObject:tokensCopy];
}

- (void)addAsrUtteranceTokens:(id)tokens
{
  tokensCopy = tokens;
  asrUtteranceTokens = self->_asrUtteranceTokens;
  v8 = tokensCopy;
  if (!asrUtteranceTokens)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_asrUtteranceTokens;
    self->_asrUtteranceTokens = v6;

    tokensCopy = v8;
    asrUtteranceTokens = self->_asrUtteranceTokens;
  }

  [(NSMutableArray *)asrUtteranceTokens addObject:tokensCopy];
}

@end