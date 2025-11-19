@interface CSLUIPBUIPluginTriggerRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDictionary:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSLUIPBUIPluginTriggerRequest

- (void)addDictionary:(id)a3
{
  v4 = a3;
  dictionarys = self->_dictionarys;
  v8 = v4;
  if (!dictionarys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_dictionarys;
    self->_dictionarys = v6;

    v4 = v8;
    dictionarys = self->_dictionarys;
  }

  [(NSMutableArray *)dictionarys addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CSLUIPBUIPluginTriggerRequest;
  v4 = [(CSLUIPBUIPluginTriggerRequest *)&v8 description];
  v5 = [(CSLUIPBUIPluginTriggerRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  if ([(NSMutableArray *)self->_dictionarys count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_dictionarys, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_dictionarys;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"dictionary"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:self->_reason];
    [v4 setObject:v13 forKey:@"reason"];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_dictionarys;
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
    reason = self->_reason;
    PBDataWriterWriteInt32Field();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_name)
  {
    [v8 setName:?];
  }

  if ([(CSLUIPBUIPluginTriggerRequest *)self dictionarysCount])
  {
    [v8 clearDictionarys];
    v4 = [(CSLUIPBUIPluginTriggerRequest *)self dictionarysCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(CSLUIPBUIPluginTriggerRequest *)self dictionaryAtIndex:i];
        [v8 addDictionary:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(v8 + 6) = self->_reason;
    *(v8 + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_dictionarys;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{a3, v16}];
        [v5 addDictionary:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 24) = self->_reason;
    *(v5 + 28) |= 1u;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  name = self->_name;
  if (name | *(v4 + 2))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_10;
    }
  }

  dictionarys = self->_dictionarys;
  if (dictionarys | *(v4 + 1))
  {
    if (![(NSMutableArray *)dictionarys isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) != 0 && self->_reason == *(v4 + 6))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSMutableArray *)self->_dictionarys hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_reason;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(CSLUIPBUIPluginTriggerRequest *)self setName:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 1);
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

        [(CSLUIPBUIPluginTriggerRequest *)self addDictionary:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(v4 + 28))
  {
    self->_reason = *(v4 + 6);
    *&self->_has |= 1u;
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end