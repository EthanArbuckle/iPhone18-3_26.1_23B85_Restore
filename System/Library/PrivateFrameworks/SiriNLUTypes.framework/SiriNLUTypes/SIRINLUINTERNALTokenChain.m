@interface SIRINLUINTERNALTokenChain
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTokens:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALTokenChain

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(SIRINLUINTERNALTokenChain *)self setStringValue:?];
  }

  if (*(v4 + 1))
  {
    [(SIRINLUINTERNALTokenChain *)self setLocale:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 3);
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

        [(SIRINLUINTERNALTokenChain *)self addTokens:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stringValue hash];
  v4 = [(NSString *)self->_locale hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_tokens hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((stringValue = self->_stringValue, !(stringValue | v4[2])) || -[NSString isEqual:](stringValue, "isEqual:")) && ((locale = self->_locale, !(locale | v4[1])) || -[NSString isEqual:](locale, "isEqual:")))
  {
    tokens = self->_tokens;
    if (tokens | v4[3])
    {
      v8 = [(NSMutableArray *)tokens isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_stringValue copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_locale copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_tokens;
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

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{a3, v18}];
        [v5 addTokens:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_stringValue)
  {
    [v8 setStringValue:?];
  }

  if (self->_locale)
  {
    [v8 setLocale:?];
  }

  if ([(SIRINLUINTERNALTokenChain *)self tokensCount])
  {
    [v8 clearTokens];
    v4 = [(SIRINLUINTERNALTokenChain *)self tokensCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALTokenChain *)self tokensAtIndex:i];
        [v8 addTokens:v7];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_tokens;
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
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v3 setObject:stringValue forKey:@"string_value"];
  }

  locale = self->_locale;
  if (locale)
  {
    [v4 setObject:locale forKey:@"locale"];
  }

  if ([(NSMutableArray *)self->_tokens count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_tokens, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_tokens;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"tokens"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALTokenChain;
  v4 = [(SIRINLUINTERNALTokenChain *)&v8 description];
  v5 = [(SIRINLUINTERNALTokenChain *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addTokens:(id)a3
{
  v4 = a3;
  tokens = self->_tokens;
  v8 = v4;
  if (!tokens)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_tokens;
    self->_tokens = v6;

    v4 = v8;
    tokens = self->_tokens;
  }

  [(NSMutableArray *)tokens addObject:v4];
}

@end