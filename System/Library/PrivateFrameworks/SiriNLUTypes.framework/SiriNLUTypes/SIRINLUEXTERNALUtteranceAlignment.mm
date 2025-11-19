@interface SIRINLUEXTERNALUtteranceAlignment
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSpans:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNodeIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALUtteranceAlignment

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 24))
  {
    self->_asrHypothesisIndex = *(v4 + 2);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v4 + 2);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SIRINLUEXTERNALUtteranceAlignment *)self addSpans:*(*(&v12 + 1) + 8 * v10++), v12];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if ((v5[6] & 2) != 0)
  {
    self->_nodeIndex = v5[3];
    *&self->_has |= 2u;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_asrHypothesisIndex;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_spans hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_nodeIndex;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if (has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_asrHypothesisIndex != *(v4 + 2))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_14;
  }

  spans = self->_spans;
  if (spans | *(v4 + 2))
  {
    if (![(NSMutableArray *)spans isEqual:?])
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    has = self->_has;
    v6 = *(v4 + 24);
  }

  v8 = (v6 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_nodeIndex != *(v4 + 3))
    {
      goto LABEL_14;
    }

    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_asrHypothesisIndex;
    *(v5 + 24) |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_spans;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) copyWithZone:{a3, v15}];
        [v6 addSpans:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 12) = self->_nodeIndex;
    *(v6 + 24) |= 2u;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_asrHypothesisIndex;
    *(v4 + 24) |= 1u;
  }

  v9 = v4;
  if ([(SIRINLUEXTERNALUtteranceAlignment *)self spansCount])
  {
    [v9 clearSpans];
    v5 = [(SIRINLUEXTERNALUtteranceAlignment *)self spansCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SIRINLUEXTERNALUtteranceAlignment *)self spansAtIndex:i];
        [v9 addSpans:v8];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v9 + 3) = self->_nodeIndex;
    *(v9 + 24) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    asrHypothesisIndex = self->_asrHypothesisIndex;
    PBDataWriterWriteUint32Field();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_spans;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 2) != 0)
  {
    nodeIndex = self->_nodeIndex;
    PBDataWriterWriteUint32Field();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_asrHypothesisIndex];
    [v3 setObject:v4 forKey:@"asr_hypothesis_index"];
  }

  if ([(NSMutableArray *)self->_spans count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_spans, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_spans;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"spans"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_nodeIndex];
    [v3 setObject:v12 forKey:@"node_index"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUtteranceAlignment;
  v4 = [(SIRINLUEXTERNALUtteranceAlignment *)&v8 description];
  v5 = [(SIRINLUEXTERNALUtteranceAlignment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasNodeIndex:(BOOL)a3
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

- (void)addSpans:(id)a3
{
  v4 = a3;
  spans = self->_spans;
  v8 = v4;
  if (!spans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_spans;
    self->_spans = v6;

    v4 = v8;
    spans = self->_spans;
  }

  [(NSMutableArray *)spans addObject:v4];
}

@end