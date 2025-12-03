@interface PCPPredictedContextAnalytics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addRolledLoiAnalyticsDictionary:(id)dictionary;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCPPredictedContextAnalytics

- (void)addRolledLoiAnalyticsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  rolledLoiAnalyticsDictionarys = self->_rolledLoiAnalyticsDictionarys;
  v8 = dictionaryCopy;
  if (!rolledLoiAnalyticsDictionarys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rolledLoiAnalyticsDictionarys;
    self->_rolledLoiAnalyticsDictionarys = v6;

    dictionaryCopy = v8;
    rolledLoiAnalyticsDictionarys = self->_rolledLoiAnalyticsDictionarys;
  }

  [(NSMutableArray *)rolledLoiAnalyticsDictionarys addObject:dictionaryCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPPredictedContextAnalytics;
  v4 = [(PCPPredictedContextAnalytics *)&v8 description];
  dictionaryRepresentation = [(PCPPredictedContextAnalytics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_rolledLoiAnalyticsDictionarys count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_rolledLoiAnalyticsDictionarys, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_rolledLoiAnalyticsDictionarys;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"rolledLoiAnalyticsDictionary"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_rolledLoiAnalyticsDictionarys;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(PCPPredictedContextAnalytics *)self rolledLoiAnalyticsDictionarysCount])
  {
    [toCopy clearRolledLoiAnalyticsDictionarys];
    rolledLoiAnalyticsDictionarysCount = [(PCPPredictedContextAnalytics *)self rolledLoiAnalyticsDictionarysCount];
    if (rolledLoiAnalyticsDictionarysCount)
    {
      v5 = rolledLoiAnalyticsDictionarysCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PCPPredictedContextAnalytics *)self rolledLoiAnalyticsDictionaryAtIndex:i];
        [toCopy addRolledLoiAnalyticsDictionary:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_rolledLoiAnalyticsDictionarys;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{zone, v14}];
        [v5 addRolledLoiAnalyticsDictionary:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    rolledLoiAnalyticsDictionarys = self->_rolledLoiAnalyticsDictionarys;
    if (rolledLoiAnalyticsDictionarys | equalCopy[1])
    {
      v6 = [(NSMutableArray *)rolledLoiAnalyticsDictionarys isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(from + 1);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PCPPredictedContextAnalytics *)self addRolledLoiAnalyticsDictionary:*(*(&v10 + 1) + 8 * v8++), v10];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end