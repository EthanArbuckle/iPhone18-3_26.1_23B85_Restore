@interface SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)addPreviousTurns:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4[7])
  {
    self->_type = v4[6];
    *&self->_has |= 1u;
  }

  currentTurn = self->_currentTurn;
  v7 = *(v5 + 1);
  if (currentTurn)
  {
    if (v7)
    {
      [(SIRINLUEXTERNALTurnInput *)currentTurn mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)self setCurrentTurn:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(v5 + 2);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)self addPreviousTurns:*(*(&v14 + 1) + 8 * i), v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SIRINLUEXTERNALTurnInput *)self->_currentTurn hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_previousTurns hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_type != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  currentTurn = self->_currentTurn;
  if (currentTurn | *(v4 + 1) && ![(SIRINLUEXTERNALTurnInput *)currentTurn isEqual:?])
  {
    goto LABEL_11;
  }

  previousTurns = self->_previousTurns;
  if (previousTurns | *(v4 + 2))
  {
    v8 = [(NSMutableArray *)previousTurns isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_type;
    *(v5 + 28) |= 1u;
  }

  v7 = [(SIRINLUEXTERNALTurnInput *)self->_currentTurn copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_previousTurns;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * v13) copyWithZone:{a3, v17}];
        [v6 addPreviousTurns:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_type;
    *(v4 + 28) |= 1u;
  }

  v9 = v4;
  if (self->_currentTurn)
  {
    [v4 setCurrentTurn:?];
  }

  if ([(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)self previousTurnsCount])
  {
    [v9 clearPreviousTurns];
    v5 = [(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)self previousTurnsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)self previousTurnsAtIndex:i];
        [v9 addPreviousTurns:v8];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_currentTurn)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_previousTurns;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_1E8328050[type];
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  currentTurn = self->_currentTurn;
  if (currentTurn)
  {
    v7 = [(SIRINLUEXTERNALTurnInput *)currentTurn dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"current_turn"];
  }

  if ([(NSMutableArray *)self->_previousTurns count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_previousTurns, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_previousTurns;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"previous_turns"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle;
  v4 = [(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)&v8 description];
  v5 = [(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addPreviousTurns:(id)a3
{
  v4 = a3;
  previousTurns = self->_previousTurns;
  v8 = v4;
  if (!previousTurns)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_previousTurns;
    self->_previousTurns = v6;

    v4 = v8;
    previousTurns = self->_previousTurns;
  }

  [(NSMutableArray *)previousTurns addObject:v4];
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"REFORM_TYPE_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CORRECTION_BY_REPETITION"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"REFERENCE_RESOLUTION"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TAP_TO_EDIT"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

@end