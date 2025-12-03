@interface SIRINLUINTERNALContextRule
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSdaComparisonMode:(id)mode;
- (int)sdaComparisonMode;
- (unint64_t)hash;
- (void)addMatchingSpans:(id)spans;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasApplyToPromptScenarios:(BOOL)scenarios;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALContextRule

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  turnContext = self->_turnContext;
  v6 = *(fromCopy + 3);
  if (turnContext)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALTurnContext *)turnContext mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALContextRule *)self setTurnContext:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(fromCopy + 1);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUINTERNALContextRule *)self addMatchingSpans:*(*(&v14 + 1) + 8 * i), v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *(fromCopy + 36);
  if ((v12 & 2) != 0)
  {
    self->_applyToPromptScenarios = *(fromCopy + 32);
    *&self->_has |= 2u;
    v12 = *(fromCopy + 36);
  }

  if (v12)
  {
    self->_sdaComparisonMode = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALTurnContext *)self->_turnContext hash];
  v4 = [(NSMutableArray *)self->_matchingSpans hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_applyToPromptScenarios;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_sdaComparisonMode;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  turnContext = self->_turnContext;
  if (turnContext | *(equalCopy + 3))
  {
    if (![(SIRINLUEXTERNALTurnContext *)turnContext isEqual:?])
    {
      goto LABEL_13;
    }
  }

  matchingSpans = self->_matchingSpans;
  if (matchingSpans | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)matchingSpans isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_13;
    }

    v9 = *(equalCopy + 32);
    if (self->_applyToPromptScenarios)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_13;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_13;
  }

  v7 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) != 0 && self->_sdaComparisonMode == *(equalCopy + 4))
    {
      v7 = 1;
      goto LABEL_14;
    }

LABEL_13:
    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALTurnContext *)self->_turnContext copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_matchingSpans;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{zone, v17}];
        [v5 addMatchingSpans:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_applyToPromptScenarios;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_sdaComparisonMode;
    *(v5 + 36) |= 1u;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_turnContext)
  {
    [toCopy setTurnContext:?];
  }

  if ([(SIRINLUINTERNALContextRule *)self matchingSpansCount])
  {
    [toCopy clearMatchingSpans];
    matchingSpansCount = [(SIRINLUINTERNALContextRule *)self matchingSpansCount];
    if (matchingSpansCount)
    {
      v5 = matchingSpansCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALContextRule *)self matchingSpansAtIndex:i];
        [toCopy addMatchingSpans:v7];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 32) = self->_applyToPromptScenarios;
    *(toCopy + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 4) = self->_sdaComparisonMode;
    *(toCopy + 36) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_turnContext)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_matchingSpans;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    applyToPromptScenarios = self->_applyToPromptScenarios;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    sdaComparisonMode = self->_sdaComparisonMode;
    PBDataWriterWriteInt32Field();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  turnContext = self->_turnContext;
  if (turnContext)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALTurnContext *)turnContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"turn_context"];
  }

  if ([(NSMutableArray *)self->_matchingSpans count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_matchingSpans, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_matchingSpans;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"matching_spans"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_applyToPromptScenarios];
    [dictionary setObject:v14 forKey:@"apply_to_prompt_scenarios"];

    has = self->_has;
  }

  if (has)
  {
    sdaComparisonMode = self->_sdaComparisonMode;
    if (sdaComparisonMode)
    {
      if (sdaComparisonMode == 1)
      {
        v16 = @"COMPARISON_MODE_DEEP";
      }

      else
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_sdaComparisonMode];
      }
    }

    else
    {
      v16 = @"COMPARISON_MODE_SHALLOW";
    }

    [dictionary setObject:v16 forKey:@"sda_comparison_mode"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALContextRule;
  v4 = [(SIRINLUINTERNALContextRule *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALContextRule *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsSdaComparisonMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"COMPARISON_MODE_SHALLOW"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [modeCopy isEqualToString:@"COMPARISON_MODE_DEEP"];
  }

  return v4;
}

- (int)sdaComparisonMode
{
  if (*&self->_has)
  {
    return self->_sdaComparisonMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasApplyToPromptScenarios:(BOOL)scenarios
{
  if (scenarios)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addMatchingSpans:(id)spans
{
  spansCopy = spans;
  matchingSpans = self->_matchingSpans;
  v8 = spansCopy;
  if (!matchingSpans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_matchingSpans;
    self->_matchingSpans = v6;

    spansCopy = v8;
    matchingSpans = self->_matchingSpans;
  }

  [(NSMutableArray *)matchingSpans addObject:spansCopy];
}

@end