@interface ATXPBSpotlightSuggestionLayout
- (BOOL)isEqual:(id)a3;
- (double)scoresAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCollections:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBSpotlightSuggestionLayout

- (void)dealloc
{
  PBRepeatedDoubleClear();
  v3.receiver = self;
  v3.super_class = ATXPBSpotlightSuggestionLayout;
  [(ATXPBSpotlightSuggestionLayout *)&v3 dealloc];
}

- (void)addCollections:(id)a3
{
  v4 = a3;
  collections = self->_collections;
  v8 = v4;
  if (!collections)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_collections;
    self->_collections = v6;

    v4 = v8;
    collections = self->_collections;
  }

  [(NSMutableArray *)collections addObject:v4];
}

- (double)scoresAtIndex:(unint64_t)a3
{
  p_scores = &self->_scores;
  count = self->_scores.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_scores->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBSpotlightSuggestionLayout;
  v4 = [(ATXPBSpotlightSuggestionLayout *)&v8 description];
  v5 = [(ATXPBSpotlightSuggestionLayout *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uuidString = self->_uuidString;
  if (uuidString)
  {
    [v3 setObject:uuidString forKey:@"uuidString"];
  }

  if ([(NSMutableArray *)self->_collections count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_collections, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_collections;
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

    [v4 setObject:v6 forKey:@"collections"];
  }

  v13 = PBRepeatedDoubleNSArray();
  [v4 setObject:v13 forKey:@"scores"];

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_collections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  p_scores = &self->_scores;
  if (p_scores->count)
  {
    v12 = 0;
    do
    {
      v13 = p_scores->list[v12];
      PBDataWriterWriteDoubleField();
      ++v12;
    }

    while (v12 < p_scores->count);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v11 = a3;
  if (self->_uuidString)
  {
    [v11 setUuidString:?];
  }

  if ([(ATXPBSpotlightSuggestionLayout *)self collectionsCount])
  {
    [v11 clearCollections];
    v4 = [(ATXPBSpotlightSuggestionLayout *)self collectionsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXPBSpotlightSuggestionLayout *)self collectionsAtIndex:i];
        [v11 addCollections:v7];
      }
    }
  }

  if ([(ATXPBSpotlightSuggestionLayout *)self scoresCount])
  {
    [v11 clearScores];
    v8 = [(ATXPBSpotlightSuggestionLayout *)self scoresCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [(ATXPBSpotlightSuggestionLayout *)self scoresAtIndex:j];
        [v11 addScores:?];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuidString copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_collections;
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
        [v5 addCollections:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  PBRepeatedDoubleCopy();
  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((uuidString = self->_uuidString, !(uuidString | v4[5])) || -[NSString isEqual:](uuidString, "isEqual:")) && ((collections = self->_collections, !(collections | v4[4])) || -[NSMutableArray isEqual:](collections, "isEqual:")))
  {
    IsEqual = PBRepeatedDoubleIsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuidString hash];
  v4 = [(NSMutableArray *)self->_collections hash]^ v3;
  return v4 ^ PBRepeatedDoubleHash();
}

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 5))
  {
    [(ATXPBSpotlightSuggestionLayout *)self setUuidString:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(v4 + 4);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ATXPBSpotlightSuggestionLayout *)self addCollections:*(*(&v14 + 1) + 8 * i), v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v10 = [v4 scoresCount];
  if (v10)
  {
    v11 = v10;
    for (j = 0; j != v11; ++j)
    {
      [v4 scoresAtIndex:{j, v14}];
      [(ATXPBSpotlightSuggestionLayout *)self addScores:?];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end