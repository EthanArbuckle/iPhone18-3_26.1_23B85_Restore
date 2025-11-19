@interface SIRINLUINTERNALITFMITFMParserResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addHypotheses:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasClassificationLabel:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALITFMITFMParserResponse

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 36);
  if ((v6 & 2) != 0)
  {
    self->_classificationLabel = *(v4 + 32);
    *&self->_has |= 2u;
    v6 = *(v4 + 36);
  }

  if (v6)
  {
    self->_classificationProbability = *(v4 + 2);
    *&self->_has |= 1u;
  }

  parser = self->_parser;
  v8 = *(v5 + 3);
  if (parser)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALParser *)parser mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUINTERNALITFMITFMParserResponse *)self setParser:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v5 + 2);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(SIRINLUINTERNALITFMITFMParserResponse *)self addHypotheses:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_classificationLabel;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  classificationProbability = self->_classificationProbability;
  if (classificationProbability < 0.0)
  {
    classificationProbability = -classificationProbability;
  }

  *v2.i32 = floorf(classificationProbability + 0.5);
  v7 = (classificationProbability - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v9 = 2654435761u * *vbslq_s8(v8, v3, v2).i32;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabsf(v7);
  }

LABEL_9:
  v10 = v9 ^ v5 ^ [(SIRINLUEXTERNALParser *)self->_parser hash];
  return v10 ^ [(NSMutableArray *)self->_hypotheses hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 36);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_18;
  }

  v6 = *(v4 + 32);
  if (self->_classificationLabel)
  {
    if ((*(v4 + 32) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_18;
  }

LABEL_4:
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_classificationProbability != *(v4 + 2))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_18;
  }

  parser = self->_parser;
  if (parser | *(v4 + 3) && ![(SIRINLUEXTERNALParser *)parser isEqual:?])
  {
    goto LABEL_18;
  }

  hypotheses = self->_hypotheses;
  if (hypotheses | *(v4 + 2))
  {
    v9 = [(NSMutableArray *)hypotheses isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_classificationLabel;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_classificationProbability;
    *(v5 + 36) |= 1u;
  }

  v8 = [(SIRINLUEXTERNALParser *)self->_parser copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_hypotheses;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{a3, v18}];
        [v6 addHypotheses:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[32] = self->_classificationLabel;
    v4[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 2) = LODWORD(self->_classificationProbability);
    v4[36] |= 1u;
  }

  v10 = v4;
  if (self->_parser)
  {
    [v4 setParser:?];
  }

  if ([(SIRINLUINTERNALITFMITFMParserResponse *)self hypothesesCount])
  {
    [v10 clearHypotheses];
    v6 = [(SIRINLUINTERNALITFMITFMParserResponse *)self hypothesesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(SIRINLUINTERNALITFMITFMParserResponse *)self hypothesesAtIndex:i];
        [v10 addHypotheses:v9];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    classificationLabel = self->_classificationLabel;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    classificationProbability = self->_classificationProbability;
    PBDataWriterWriteFloatField();
  }

  if (self->_parser)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_hypotheses;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_classificationLabel];
    [v3 setObject:v6 forKey:@"classification_label"];

    has = self->_has;
  }

  if (has)
  {
    *&v4 = self->_classificationProbability;
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v3 setObject:v7 forKey:@"classification_probability"];
  }

  parser = self->_parser;
  if (parser)
  {
    v9 = [(SIRINLUEXTERNALParser *)parser dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"parser"];
  }

  if ([(NSMutableArray *)self->_hypotheses count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_hypotheses, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_hypotheses;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"hypotheses"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALITFMITFMParserResponse;
  v4 = [(SIRINLUINTERNALITFMITFMParserResponse *)&v8 description];
  v5 = [(SIRINLUINTERNALITFMITFMParserResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addHypotheses:(id)a3
{
  v4 = a3;
  hypotheses = self->_hypotheses;
  v8 = v4;
  if (!hypotheses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_hypotheses;
    self->_hypotheses = v6;

    v4 = v8;
    hypotheses = self->_hypotheses;
  }

  [(NSMutableArray *)hypotheses addObject:v4];
}

- (void)setHasClassificationLabel:(BOOL)a3
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

@end