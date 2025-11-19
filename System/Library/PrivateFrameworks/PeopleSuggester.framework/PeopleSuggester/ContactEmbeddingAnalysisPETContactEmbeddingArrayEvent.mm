@interface ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContactEmbedding:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent

- (void)addContactEmbedding:(id)a3
{
  v4 = a3;
  contactEmbeddings = self->_contactEmbeddings;
  v8 = v4;
  if (!contactEmbeddings)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contactEmbeddings;
    self->_contactEmbeddings = v6;

    v4 = v8;
    contactEmbeddings = self->_contactEmbeddings;
  }

  [(NSMutableArray *)contactEmbeddings addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent;
  v4 = [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)&v8 description];
  v5 = [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  sessinobd = self->_sessinobd;
  if (sessinobd)
  {
    [v3 setObject:sessinobd forKey:@"sessinobd"];
  }

  userId = self->_userId;
  if (userId)
  {
    [v4 setObject:userId forKey:@"userId"];
  }

  if ([(NSMutableArray *)self->_contactEmbeddings count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_contactEmbeddings, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_contactEmbeddings;
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

    [v4 setObject:v7 forKey:@"contactEmbedding"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_sessinobd)
  {
    [ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_userId)
  {
    [ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent writeTo:];
  }

  PBDataWriterWriteStringField();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_contactEmbeddings;
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

- (void)copyTo:(id)a3
{
  v8 = a3;
  [v8 setSessinobd:self->_sessinobd];
  [v8 setUserId:self->_userId];
  if ([(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)self contactEmbeddingsCount])
  {
    [v8 clearContactEmbeddings];
    v4 = [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)self contactEmbeddingsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)self contactEmbeddingAtIndex:i];
        [v8 addContactEmbedding:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sessinobd copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_userId copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_contactEmbeddings;
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
        [v5 addContactEmbedding:v15];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((sessinobd = self->_sessinobd, !(sessinobd | v4[2])) || -[NSString isEqual:](sessinobd, "isEqual:")) && ((userId = self->_userId, !(userId | v4[3])) || -[NSString isEqual:](userId, "isEqual:")))
  {
    contactEmbeddings = self->_contactEmbeddings;
    if (contactEmbeddings | v4[1])
    {
      v8 = [(NSMutableArray *)contactEmbeddings isEqual:?];
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sessinobd hash];
  v4 = [(NSString *)self->_userId hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_contactEmbeddings hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)self setSessinobd:?];
  }

  if (*(v4 + 3))
  {
    [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)self setUserId:?];
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

        [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)self addContactEmbedding:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end