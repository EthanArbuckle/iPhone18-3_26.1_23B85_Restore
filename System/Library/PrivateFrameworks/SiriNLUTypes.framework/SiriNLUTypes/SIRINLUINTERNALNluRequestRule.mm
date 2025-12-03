@interface SIRINLUINTERNALNluRequestRule
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTurnInputRules:(id)rules;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALNluRequestRule

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(SIRINLUINTERNALNluRequestRule *)self setIdA:?];
  }

  if (*(fromCopy + 3))
  {
    [(SIRINLUINTERNALNluRequestRule *)self setLocaleId:?];
  }

  if (*(fromCopy + 1))
  {
    [(SIRINLUINTERNALNluRequestRule *)self setDeviceType:?];
  }

  if (*(fromCopy + 5))
  {
    [(SIRINLUINTERNALNluRequestRule *)self setUserInterfaceIdiom:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 4);
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

        [(SIRINLUINTERNALNluRequestRule *)self addTurnInputRules:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_idA hash];
  v4 = [(NSString *)self->_localeId hash]^ v3;
  v5 = [(NSString *)self->_deviceType hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_userInterfaceIdiom hash];
  return v6 ^ [(NSMutableArray *)self->_turnInputRules hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((idA = self->_idA, !(idA | equalCopy[2])) || -[NSString isEqual:](idA, "isEqual:")) && ((localeId = self->_localeId, !(localeId | equalCopy[3])) || -[NSString isEqual:](localeId, "isEqual:")) && ((deviceType = self->_deviceType, !(deviceType | equalCopy[1])) || -[NSString isEqual:](deviceType, "isEqual:")) && ((userInterfaceIdiom = self->_userInterfaceIdiom, !(userInterfaceIdiom | equalCopy[5])) || -[NSString isEqual:](userInterfaceIdiom, "isEqual:")))
  {
    turnInputRules = self->_turnInputRules;
    if (turnInputRules | equalCopy[4])
    {
      v10 = [(NSMutableArray *)turnInputRules isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_idA copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_localeId copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_deviceType copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_userInterfaceIdiom copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_turnInputRules;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
        [v5 addTurnInputRules:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_idA)
  {
    [toCopy setIdA:?];
  }

  if (self->_localeId)
  {
    [toCopy setLocaleId:?];
  }

  if (self->_deviceType)
  {
    [toCopy setDeviceType:?];
  }

  if (self->_userInterfaceIdiom)
  {
    [toCopy setUserInterfaceIdiom:?];
  }

  if ([(SIRINLUINTERNALNluRequestRule *)self turnInputRulesCount])
  {
    [toCopy clearTurnInputRules];
    turnInputRulesCount = [(SIRINLUINTERNALNluRequestRule *)self turnInputRulesCount];
    if (turnInputRulesCount)
    {
      v5 = turnInputRulesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALNluRequestRule *)self turnInputRulesAtIndex:i];
        [toCopy addTurnInputRules:v7];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_idA)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localeId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userInterfaceIdiom)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_turnInputRules;
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

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  idA = self->_idA;
  if (idA)
  {
    [dictionary setObject:idA forKey:@"id_a"];
  }

  localeId = self->_localeId;
  if (localeId)
  {
    [v4 setObject:localeId forKey:@"locale_id"];
  }

  deviceType = self->_deviceType;
  if (deviceType)
  {
    [v4 setObject:deviceType forKey:@"device_type"];
  }

  userInterfaceIdiom = self->_userInterfaceIdiom;
  if (userInterfaceIdiom)
  {
    [v4 setObject:userInterfaceIdiom forKey:@"user_interface_idiom"];
  }

  if ([(NSMutableArray *)self->_turnInputRules count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_turnInputRules, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_turnInputRules;
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

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"turn_input_rules"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALNluRequestRule;
  v4 = [(SIRINLUINTERNALNluRequestRule *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALNluRequestRule *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addTurnInputRules:(id)rules
{
  rulesCopy = rules;
  turnInputRules = self->_turnInputRules;
  v8 = rulesCopy;
  if (!turnInputRules)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_turnInputRules;
    self->_turnInputRules = v6;

    rulesCopy = v8;
    turnInputRules = self->_turnInputRules;
  }

  [(NSMutableArray *)turnInputRules addObject:rulesCopy];
}

@end