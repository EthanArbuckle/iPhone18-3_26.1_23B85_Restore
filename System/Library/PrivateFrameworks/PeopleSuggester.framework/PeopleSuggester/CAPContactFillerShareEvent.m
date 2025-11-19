@interface CAPContactFillerShareEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addContactEvent:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CAPContactFillerShareEvent

- (void)addContactEvent:(id)a3
{
  v4 = a3;
  contactEvents = self->_contactEvents;
  v8 = v4;
  if (!contactEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contactEvents;
    self->_contactEvents = v6;

    v4 = v8;
    contactEvents = self->_contactEvents;
  }

  [(NSMutableArray *)contactEvents addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CAPContactFillerShareEvent;
  v4 = [(CAPContactFillerShareEvent *)&v8 description];
  v5 = [(CAPContactFillerShareEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_contactEvents count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_contactEvents, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_contactEvents;
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

          v10 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"contactEvent"];
  }

  userEvent = self->_userEvent;
  if (userEvent)
  {
    v12 = [(CAPContactFillerUserEvent *)userEvent dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"userEvent"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_contactEvents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (!self->_userEvent)
  {
    [CAPContactFillerShareEvent writeTo:];
  }

  PBDataWriterWriteSubmessage();

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if ([(CAPContactFillerShareEvent *)self contactEventsCount])
  {
    [v8 clearContactEvents];
    v4 = [(CAPContactFillerShareEvent *)self contactEventsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(CAPContactFillerShareEvent *)self contactEventAtIndex:i];
        [v8 addContactEvent:v7];
      }
    }
  }

  [v8 setUserEvent:self->_userEvent];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_contactEvents;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) copyWithZone:{a3, v16}];
        [v5 addContactEvent:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [(CAPContactFillerUserEvent *)self->_userEvent copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((contactEvents = self->_contactEvents, !(contactEvents | v4[1])) || -[NSMutableArray isEqual:](contactEvents, "isEqual:")))
  {
    userEvent = self->_userEvent;
    if (userEvent | v4[2])
    {
      v7 = [(CAPContactFillerUserEvent *)userEvent isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4[1];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CAPContactFillerShareEvent *)self addContactEvent:*(*(&v13 + 1) + 8 * i), v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  userEvent = self->_userEvent;
  v11 = v4[2];
  if (userEvent)
  {
    if (v11)
    {
      [(CAPContactFillerUserEvent *)userEvent mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(CAPContactFillerShareEvent *)self setUserEvent:?];
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end