@interface SIRINLUINTERNALRewriteInteraction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addOriginalUtterances:(id)a3;
- (void)addSiriResponse:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTap2edit:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALRewriteInteraction

- (void)mergeFrom:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(v4 + 3);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SIRINLUINTERNALRewriteInteraction *)self addOriginalUtterances:*(*(&v21 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = *(v4 + 4);
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(SIRINLUINTERNALRewriteInteraction *)self addSiriResponse:*(*(&v17 + 1) + 8 * j), v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  if (*(v4 + 2))
  {
    [(SIRINLUINTERNALRewriteInteraction *)self setLocale:?];
  }

  v15 = *(v4 + 44);
  if ((v15 & 2) != 0)
  {
    self->_tap2edit = *(v4 + 40);
    *&self->_has |= 2u;
    v15 = *(v4 + 44);
  }

  if (v15)
  {
    self->_startTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_originalUtterances hash];
  v4 = [(NSMutableArray *)self->_siriResponses hash];
  v5 = [(NSString *)self->_locale hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_tap2edit;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761u * self->_startTimestamp;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  originalUtterances = self->_originalUtterances;
  if (originalUtterances | *(v4 + 3))
  {
    if (![(NSMutableArray *)originalUtterances isEqual:?])
    {
      goto LABEL_15;
    }
  }

  siriResponses = self->_siriResponses;
  if (siriResponses | *(v4 + 4))
  {
    if (![(NSMutableArray *)siriResponses isEqual:?])
    {
      goto LABEL_15;
    }
  }

  locale = self->_locale;
  if (locale | *(v4 + 2))
  {
    if (![(NSString *)locale isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0)
    {
      goto LABEL_15;
    }

    v10 = *(v4 + 40);
    if (self->_tap2edit)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_15;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_15;
  }

  v8 = (*(v4 + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) != 0 && self->_startTimestamp == *(v4 + 1))
    {
      v8 = 1;
      goto LABEL_16;
    }

LABEL_15:
    v8 = 0;
  }

LABEL_16:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_originalUtterances;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v27 + 1) + 8 * i) copyWithZone:a3];
        [v5 addOriginalUtterances:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = self->_siriResponses;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v23 + 1) + 8 * j) copyWithZone:{a3, v23}];
        [v5 addSiriResponse:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_locale copyWithZone:a3];
  v19 = *(v5 + 16);
  *(v5 + 16) = v18;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_tap2edit;
    *(v5 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_startTimestamp;
    *(v5 + 44) |= 1u;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v13 = a3;
  if ([(SIRINLUINTERNALRewriteInteraction *)self originalUtterancesCount])
  {
    [v13 clearOriginalUtterances];
    v4 = [(SIRINLUINTERNALRewriteInteraction *)self originalUtterancesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALRewriteInteraction *)self originalUtterancesAtIndex:i];
        [v13 addOriginalUtterances:v7];
      }
    }
  }

  if ([(SIRINLUINTERNALRewriteInteraction *)self siriResponsesCount])
  {
    [v13 clearSiriResponses];
    v8 = [(SIRINLUINTERNALRewriteInteraction *)self siriResponsesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUINTERNALRewriteInteraction *)self siriResponseAtIndex:j];
        [v13 addSiriResponse:v11];
      }
    }
  }

  if (self->_locale)
  {
    [v13 setLocale:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v13 + 40) = self->_tap2edit;
    *(v13 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v13 + 1) = self->_startTimestamp;
    *(v13 + 44) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_originalUtterances;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_siriResponses;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    tap2edit = self->_tap2edit;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    startTimestamp = self->_startTimestamp;
    PBDataWriterWriteUint64Field();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_originalUtterances count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_originalUtterances, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = self->_originalUtterances;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"original_utterances"];
  }

  if ([(NSMutableArray *)self->_siriResponses count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_siriResponses, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = self->_siriResponses;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"siri_response"];
  }

  locale = self->_locale;
  if (locale)
  {
    [v3 setObject:locale forKey:@"locale"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_tap2edit];
    [v3 setObject:v20 forKey:@"tap2edit"];

    has = self->_has;
  }

  if (has)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_startTimestamp];
    [v3 setObject:v21 forKey:@"start_timestamp"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALRewriteInteraction;
  v4 = [(SIRINLUINTERNALRewriteInteraction *)&v8 description];
  v5 = [(SIRINLUINTERNALRewriteInteraction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasTap2edit:(BOOL)a3
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

- (void)addSiriResponse:(id)a3
{
  v4 = a3;
  siriResponses = self->_siriResponses;
  v8 = v4;
  if (!siriResponses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_siriResponses;
    self->_siriResponses = v6;

    v4 = v8;
    siriResponses = self->_siriResponses;
  }

  [(NSMutableArray *)siriResponses addObject:v4];
}

- (void)addOriginalUtterances:(id)a3
{
  v4 = a3;
  originalUtterances = self->_originalUtterances;
  v8 = v4;
  if (!originalUtterances)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_originalUtterances;
    self->_originalUtterances = v6;

    v4 = v8;
    originalUtterances = self->_originalUtterances;
  }

  [(NSMutableArray *)originalUtterances addObject:v4];
}

@end