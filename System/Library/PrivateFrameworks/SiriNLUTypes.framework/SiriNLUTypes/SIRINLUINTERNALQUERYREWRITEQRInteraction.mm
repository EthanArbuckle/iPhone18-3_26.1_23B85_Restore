@interface SIRINLUINTERNALQUERYREWRITEQRInteraction
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addOriginalUtterances:(id)utterances;
- (void)addSiriResponse:(id)response;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTap2edit:(BOOL)tap2edit;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALQUERYREWRITEQRInteraction

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(fromCopy + 3);
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

        [(SIRINLUINTERNALQUERYREWRITEQRInteraction *)self addOriginalUtterances:*(*(&v21 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = *(fromCopy + 4);
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

        [(SIRINLUINTERNALQUERYREWRITEQRInteraction *)self addSiriResponse:*(*(&v17 + 1) + 8 * j), v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 2))
  {
    [(SIRINLUINTERNALQUERYREWRITEQRInteraction *)self setLocale:?];
  }

  v15 = *(fromCopy + 44);
  if ((v15 & 2) != 0)
  {
    self->_tap2edit = *(fromCopy + 40);
    *&self->_has |= 2u;
    v15 = *(fromCopy + 44);
  }

  if (v15)
  {
    self->_startTimestamp = *(fromCopy + 1);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  originalUtterances = self->_originalUtterances;
  if (originalUtterances | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)originalUtterances isEqual:?])
    {
      goto LABEL_15;
    }
  }

  siriResponses = self->_siriResponses;
  if (siriResponses | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)siriResponses isEqual:?])
    {
      goto LABEL_15;
    }
  }

  locale = self->_locale;
  if (locale | *(equalCopy + 2))
  {
    if (![(NSString *)locale isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0)
    {
      goto LABEL_15;
    }

    v10 = *(equalCopy + 40);
    if (self->_tap2edit)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_15;
  }

  v8 = (*(equalCopy + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) != 0 && self->_startTimestamp == *(equalCopy + 1))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

        v11 = [*(*(&v27 + 1) + 8 * i) copyWithZone:zone];
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

        v17 = [*(*(&v23 + 1) + 8 * j) copyWithZone:{zone, v23}];
        [v5 addSiriResponse:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_locale copyWithZone:zone];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(SIRINLUINTERNALQUERYREWRITEQRInteraction *)self originalUtterancesCount])
  {
    [toCopy clearOriginalUtterances];
    originalUtterancesCount = [(SIRINLUINTERNALQUERYREWRITEQRInteraction *)self originalUtterancesCount];
    if (originalUtterancesCount)
    {
      v5 = originalUtterancesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALQUERYREWRITEQRInteraction *)self originalUtterancesAtIndex:i];
        [toCopy addOriginalUtterances:v7];
      }
    }
  }

  if ([(SIRINLUINTERNALQUERYREWRITEQRInteraction *)self siriResponsesCount])
  {
    [toCopy clearSiriResponses];
    siriResponsesCount = [(SIRINLUINTERNALQUERYREWRITEQRInteraction *)self siriResponsesCount];
    if (siriResponsesCount)
    {
      v9 = siriResponsesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUINTERNALQUERYREWRITEQRInteraction *)self siriResponseAtIndex:j];
        [toCopy addSiriResponse:v11];
      }
    }
  }

  if (self->_locale)
  {
    [toCopy setLocale:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 40) = self->_tap2edit;
    *(toCopy + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_startTimestamp;
    *(toCopy + 44) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

          dictionaryRepresentation = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"original_utterances"];
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

          dictionaryRepresentation2 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"siri_response"];
  }

  locale = self->_locale;
  if (locale)
  {
    [dictionary setObject:locale forKey:@"locale"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_tap2edit];
    [dictionary setObject:v20 forKey:@"tap2edit"];

    has = self->_has;
  }

  if (has)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_startTimestamp];
    [dictionary setObject:v21 forKey:@"start_timestamp"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALQUERYREWRITEQRInteraction;
  v4 = [(SIRINLUINTERNALQUERYREWRITEQRInteraction *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALQUERYREWRITEQRInteraction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasTap2edit:(BOOL)tap2edit
{
  if (tap2edit)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addSiriResponse:(id)response
{
  responseCopy = response;
  siriResponses = self->_siriResponses;
  v8 = responseCopy;
  if (!siriResponses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_siriResponses;
    self->_siriResponses = v6;

    responseCopy = v8;
    siriResponses = self->_siriResponses;
  }

  [(NSMutableArray *)siriResponses addObject:responseCopy];
}

- (void)addOriginalUtterances:(id)utterances
{
  utterancesCopy = utterances;
  originalUtterances = self->_originalUtterances;
  v8 = utterancesCopy;
  if (!originalUtterances)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_originalUtterances;
    self->_originalUtterances = v6;

    utterancesCopy = v8;
    originalUtterances = self->_originalUtterances;
  }

  [(NSMutableArray *)originalUtterances addObject:utterancesCopy];
}

+ (id)options
{
  if (options_once_17472 != -1)
  {
    dispatch_once(&options_once_17472, &__block_literal_global_17473);
  }

  v3 = options_sOptions_17474;

  return v3;
}

void __51__SIRINLUINTERNALQUERYREWRITEQRInteraction_options__block_invoke()
{
  v0 = options_sOptions_17474;
  options_sOptions_17474 = &unk_1F4896920;
}

@end