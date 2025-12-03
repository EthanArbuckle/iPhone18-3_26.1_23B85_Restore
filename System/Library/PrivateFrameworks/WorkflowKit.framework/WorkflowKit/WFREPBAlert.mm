@interface WFREPBAlert
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPreferredStyle:(id)style;
- (int)preferredStyle;
- (unint64_t)hash;
- (void)addButtons:(id)buttons;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBAlert

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(WFREPBAlert *)self setTitle:?];
  }

  if (*(fromCopy + 2))
  {
    [(WFREPBAlert *)self setMessage:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(WFREPBAlert *)self addButtons:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 40))
  {
    self->_preferredStyle = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_message hash];
  v5 = [(NSMutableArray *)self->_buttons hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_preferredStyle;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  title = self->_title;
  if (title | *(equalCopy + 4))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_12;
    }
  }

  message = self->_message;
  if (message | *(equalCopy + 2))
  {
    if (![(NSString *)message isEqual:?])
    {
      goto LABEL_12;
    }
  }

  buttons = self->_buttons;
  if (buttons | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)buttons isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_preferredStyle == *(equalCopy + 6))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_message copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_buttons;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{zone, v18}];
        [v5 addButtons:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  if (*&self->_has)
  {
    *(v5 + 24) = self->_preferredStyle;
    *(v5 + 40) |= 1u;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_title)
  {
    [toCopy setTitle:?];
  }

  if (self->_message)
  {
    [toCopy setMessage:?];
  }

  if ([(WFREPBAlert *)self buttonsCount])
  {
    [toCopy clearButtons];
    buttonsCount = [(WFREPBAlert *)self buttonsCount];
    if (buttonsCount)
    {
      v5 = buttonsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(WFREPBAlert *)self buttonsAtIndex:i];
        [toCopy addButtons:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_preferredStyle;
    *(toCopy + 40) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_message)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_buttons;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    preferredStyle = self->_preferredStyle;
    PBDataWriterWriteInt32Field();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  message = self->_message;
  if (message)
  {
    [v4 setObject:message forKey:@"message"];
  }

  if ([(NSMutableArray *)self->_buttons count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_buttons, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_buttons;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"buttons"];
  }

  if (*&self->_has)
  {
    preferredStyle = self->_preferredStyle;
    if (preferredStyle == 1)
    {
      v15 = @"Alert";
    }

    else if (preferredStyle == 2)
    {
      v15 = @"Sheet";
    }

    else
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_preferredStyle];
    }

    [v4 setObject:v15 forKey:@"preferredStyle"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBAlert;
  v4 = [(WFREPBAlert *)&v8 description];
  dictionaryRepresentation = [(WFREPBAlert *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsPreferredStyle:(id)style
{
  styleCopy = style;
  v4 = 1;
  if (([styleCopy isEqualToString:@"Alert"] & 1) == 0)
  {
    if ([styleCopy isEqualToString:@"Sheet"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (int)preferredStyle
{
  if (*&self->_has)
  {
    return self->_preferredStyle;
  }

  else
  {
    return 1;
  }
}

- (void)addButtons:(id)buttons
{
  buttonsCopy = buttons;
  buttons = self->_buttons;
  v8 = buttonsCopy;
  if (!buttons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_buttons;
    self->_buttons = v6;

    buttonsCopy = v8;
    buttons = self->_buttons;
  }

  [(NSMutableArray *)buttons addObject:buttonsCopy];
}

@end