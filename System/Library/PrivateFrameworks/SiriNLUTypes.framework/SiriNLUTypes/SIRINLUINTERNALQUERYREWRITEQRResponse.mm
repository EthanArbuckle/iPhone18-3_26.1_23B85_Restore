@interface SIRINLUINTERNALQUERYREWRITEQRResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRepetitionType:(id)type;
- (int)repetitionType;
- (unint64_t)hash;
- (void)addQrHypotheses:(id)hypotheses;
- (void)addRewriteHypotheses:(id)hypotheses;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALQUERYREWRITEQRResponse

- (void)mergeFrom:(id)from
{
  v28 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  requestId = self->_requestId;
  v6 = *(fromCopy + 3);
  if (requestId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)requestId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self setRequestId:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(fromCopy + 1);
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

        [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self addQrHypotheses:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 40))
  {
    self->_repetitionType = *(fromCopy + 4);
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

        [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self addRewriteHypotheses:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_requestId hash];
  v4 = [(NSMutableArray *)self->_qrHypotheses hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_repetitionType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_rewriteHypotheses hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  requestId = self->_requestId;
  if (requestId | *(equalCopy + 3))
  {
    if (![(SIRINLUEXTERNALUUID *)requestId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  qrHypotheses = self->_qrHypotheses;
  if (qrHypotheses | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)qrHypotheses isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_repetitionType != *(equalCopy + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  rewriteHypotheses = self->_rewriteHypotheses;
  if (rewriteHypotheses | *(equalCopy + 4))
  {
    v9 = [(NSMutableArray *)rewriteHypotheses isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_qrHypotheses;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v26 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addQrHypotheses:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 16) = self->_repetitionType;
    *(v5 + 40) |= 1u;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_rewriteHypotheses;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * v18) copyWithZone:{zone, v22}];
        [v5 addRewriteHypotheses:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
  }

  if ([(SIRINLUINTERNALQUERYREWRITEQRResponse *)self qrHypothesesCount])
  {
    [toCopy clearQrHypotheses];
    qrHypothesesCount = [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self qrHypothesesCount];
    if (qrHypothesesCount)
    {
      v5 = qrHypothesesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self qrHypothesesAtIndex:i];
        [toCopy addQrHypotheses:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_repetitionType;
    *(toCopy + 40) |= 1u;
  }

  if ([(SIRINLUINTERNALQUERYREWRITEQRResponse *)self rewriteHypothesesCount])
  {
    [toCopy clearRewriteHypotheses];
    rewriteHypothesesCount = [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self rewriteHypothesesCount];
    if (rewriteHypothesesCount)
    {
      v9 = rewriteHypothesesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self rewriteHypothesesAtIndex:j];
        [toCopy addRewriteHypotheses:v11];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_qrHypotheses;
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
    repetitionType = self->_repetitionType;
    PBDataWriterWriteInt32Field();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_rewriteHypotheses;
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
  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request_id"];
  }

  if ([(NSMutableArray *)self->_qrHypotheses count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_qrHypotheses, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = self->_qrHypotheses;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"qr_hypotheses"];
  }

  if (*&self->_has)
  {
    repetitionType = self->_repetitionType;
    if (repetitionType >= 4)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_repetitionType];
    }

    else
    {
      v14 = off_1E8327F80[repetitionType];
    }

    [dictionary setObject:v14 forKey:@"repetition_type"];
  }

  if ([(NSMutableArray *)self->_rewriteHypotheses count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_rewriteHypotheses, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = self->_rewriteHypotheses;
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

    [dictionary setObject:v15 forKey:@"rewrite_hypotheses"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALQUERYREWRITEQRResponse;
  v4 = [(SIRINLUINTERNALQUERYREWRITEQRResponse *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addRewriteHypotheses:(id)hypotheses
{
  hypothesesCopy = hypotheses;
  rewriteHypotheses = self->_rewriteHypotheses;
  v8 = hypothesesCopy;
  if (!rewriteHypotheses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rewriteHypotheses;
    self->_rewriteHypotheses = v6;

    hypothesesCopy = v8;
    rewriteHypotheses = self->_rewriteHypotheses;
  }

  [(NSMutableArray *)rewriteHypotheses addObject:hypothesesCopy];
}

- (int)StringAsRepetitionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"NOT_AVAILABLE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"NO_REPETITION"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PARTIAL_REPETITION"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"FULL_REPETITION"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)repetitionType
{
  if (*&self->_has)
  {
    return self->_repetitionType;
  }

  else
  {
    return 0;
  }
}

- (void)addQrHypotheses:(id)hypotheses
{
  hypothesesCopy = hypotheses;
  qrHypotheses = self->_qrHypotheses;
  v8 = hypothesesCopy;
  if (!qrHypotheses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_qrHypotheses;
    self->_qrHypotheses = v6;

    hypothesesCopy = v8;
    qrHypotheses = self->_qrHypotheses;
  }

  [(NSMutableArray *)qrHypotheses addObject:hypothesesCopy];
}

@end