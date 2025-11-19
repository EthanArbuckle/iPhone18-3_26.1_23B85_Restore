@interface ICIAMMessageAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)messageRemovalPolicyAsString:(int)a3;
- (int)StringAsMessageRemovalPolicy:(id)a3;
- (int)messageRemovalPolicy;
- (unint64_t)hash;
- (void)addActionParameters:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRequiresDelegate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ICIAMMessageAction

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 4))
  {
    [(ICIAMMessageAction *)self setIdentifier:?];
  }

  if (*(v4 + 3))
  {
    [(ICIAMMessageAction *)self setDisplayText:?];
  }

  if (*(v4 + 6))
  {
    [(ICIAMMessageAction *)self setURL:?];
  }

  if ((*(v4 + 60) & 2) != 0)
  {
    self->_requiresDelegate = *(v4 + 56);
    *&self->_has |= 2u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ICIAMMessageAction *)self addActionParameters:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  clickEvent = self->_clickEvent;
  v11 = *(v4 + 2);
  if (clickEvent)
  {
    if (v11)
    {
      [(ICIAMMetricEvent *)clickEvent mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(ICIAMMessageAction *)self setClickEvent:?];
  }

  if (*(v4 + 60))
  {
    self->_messageRemovalPolicy = *(v4 + 10);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_displayText hash];
  v5 = [(NSString *)self->_uRL hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_requiresDelegate;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSMutableArray *)self->_actionParameters hash];
  v8 = [(ICIAMMetricEvent *)self->_clickEvent hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_messageRemovalPolicy;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  displayText = self->_displayText;
  if (displayText | *(v4 + 3))
  {
    if (![(NSString *)displayText isEqual:?])
    {
      goto LABEL_19;
    }
  }

  uRL = self->_uRL;
  if (uRL | *(v4 + 6))
  {
    if (![(NSString *)uRL isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0)
    {
      goto LABEL_19;
    }

    if (self->_requiresDelegate)
    {
      if ((*(v4 + 56) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 56))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
    goto LABEL_19;
  }

  actionParameters = self->_actionParameters;
  if (actionParameters | *(v4 + 1) && ![(NSMutableArray *)actionParameters isEqual:?])
  {
    goto LABEL_19;
  }

  clickEvent = self->_clickEvent;
  if (clickEvent | *(v4 + 2))
  {
    if (![(ICIAMMetricEvent *)clickEvent isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = (*(v4 + 60) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) != 0 && self->_messageRemovalPolicy == *(v4 + 10))
    {
      v10 = 1;
      goto LABEL_20;
    }

LABEL_19:
    v10 = 0;
  }

LABEL_20:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_displayText copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_uRL copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 56) = self->_requiresDelegate;
    *(v5 + 60) |= 2u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_actionParameters;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v21 + 1) + 8 * v16) copyWithZone:{a3, v21}];
        [v5 addActionParameters:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [(ICIAMMetricEvent *)self->_clickEvent copyWithZone:a3];
  v19 = *(v5 + 16);
  *(v5 + 16) = v18;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_messageRemovalPolicy;
    *(v5 + 60) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v9;
  }

  if (self->_displayText)
  {
    [v9 setDisplayText:?];
    v4 = v9;
  }

  if (self->_uRL)
  {
    [v9 setURL:?];
    v4 = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[56] = self->_requiresDelegate;
    v4[60] |= 2u;
  }

  if ([(ICIAMMessageAction *)self actionParametersCount])
  {
    [v9 clearActionParameters];
    v5 = [(ICIAMMessageAction *)self actionParametersCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ICIAMMessageAction *)self actionParametersAtIndex:i];
        [v9 addActionParameters:v8];
      }
    }
  }

  if (self->_clickEvent)
  {
    [v9 setClickEvent:?];
  }

  if (*&self->_has)
  {
    *(v9 + 10) = self->_messageRemovalPolicy;
    v9[60] |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_displayText)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_uRL)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_actionParameters;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_clickEvent)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  displayText = self->_displayText;
  if (displayText)
  {
    [v4 setObject:displayText forKey:@"displayText"];
  }

  uRL = self->_uRL;
  if (uRL)
  {
    [v4 setObject:uRL forKey:@"URL"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresDelegate];
    [v4 setObject:v8 forKey:@"requiresDelegate"];
  }

  if ([(NSMutableArray *)self->_actionParameters count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_actionParameters, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = self->_actionParameters;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"actionParameters"];
  }

  clickEvent = self->_clickEvent;
  if (clickEvent)
  {
    v17 = [(ICIAMMetricEvent *)clickEvent dictionaryRepresentation];
    [v4 setObject:v17 forKey:@"clickEvent"];
  }

  if (*&self->_has)
  {
    messageRemovalPolicy = self->_messageRemovalPolicy;
    if (messageRemovalPolicy >= 3)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_messageRemovalPolicy];
    }

    else
    {
      v19 = off_1E7BF6220[messageRemovalPolicy];
    }

    [v4 setObject:v19 forKey:@"messageRemovalPolicy"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMMessageAction;
  v4 = [(ICIAMMessageAction *)&v8 description];
  v5 = [(ICIAMMessageAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsMessageRemovalPolicy:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Local"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Global"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)messageRemovalPolicyAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E7BF6220[a3];
  }

  return v4;
}

- (int)messageRemovalPolicy
{
  if (*&self->_has)
  {
    return self->_messageRemovalPolicy;
  }

  else
  {
    return 0;
  }
}

- (void)addActionParameters:(id)a3
{
  v4 = a3;
  actionParameters = self->_actionParameters;
  v8 = v4;
  if (!actionParameters)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_actionParameters;
    self->_actionParameters = v6;

    v4 = v8;
    actionParameters = self->_actionParameters;
  }

  [(NSMutableArray *)actionParameters addObject:v4];
}

- (void)setHasRequiresDelegate:(BOOL)a3
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