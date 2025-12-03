@interface PLQuery
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)logDescription;
- (unint64_t)hash;
- (void)addSingleQueries:(id)queries;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PLQuery

- (id)logDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  conjunction = [(PLQuery *)self conjunction];
  v7 = @"kPLQueryConjunction_OR";
  if (conjunction == 1)
  {
    v7 = @"kPLQueryConjunction_AND";
  }

  if (conjunction == 2)
  {
    v7 = @"kPLQueryConjunction_NOT";
  }

  v8 = v7;
  [v3 appendFormat:@"<%@: %p> { conjunction = %@;", v5, self, v8];

  if ([(PLQuery *)self hasFirst])
  {
    first = [(PLQuery *)self first];
    logDescription = [first logDescription];
    [v3 appendFormat:@" first = %@;", logDescription];
  }

  if ([(PLQuery *)self hasSecond])
  {
    second = [(PLQuery *)self second];
    logDescription2 = [second logDescription];
    [v3 appendFormat:@" second = %@;", logDescription2];
  }

  if ([(PLQuery *)self singleQueriesCount])
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    singleQueries = [(PLQuery *)self singleQueries];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __36__PLQuery_Utilities__logDescription__block_invoke;
    v18[3] = &unk_1E792FBA8;
    v19 = v13;
    v15 = v13;
    [singleQueries enumerateObjectsUsingBlock:v18];

    v16 = [v15 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" singles = (%@);", v16];
  }

  [v3 appendFormat:@"\n}"];

  return v3;
}

void __36__PLQuery_Utilities__logDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 logDescription];
  [v2 addObject:v3];
}

- (void)mergeFrom:(id)from
{
  v20 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[10])
  {
    self->_conjunction = fromCopy[2];
    *&self->_has |= 1u;
  }

  first = self->_first;
  v7 = *(v5 + 2);
  if (first)
  {
    if (v7)
    {
      [(PLQuery *)first mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PLQuery *)self setFirst:?];
  }

  second = self->_second;
  v9 = *(v5 + 3);
  if (second)
  {
    if (v9)
    {
      [(PLQuery *)second mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PLQuery *)self setSecond:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(v5 + 4);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PLQuery *)self addSingleQueries:*(*(&v15 + 1) + 8 * i), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_conjunction;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(PLQuery *)self->_first hash]^ v3;
  v5 = [(PLQuery *)self->_second hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_singleQueries hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_conjunction != *(equalCopy + 2))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  first = self->_first;
  if (first | *(equalCopy + 2) && ![(PLQuery *)first isEqual:?])
  {
    goto LABEL_13;
  }

  second = self->_second;
  if (second | *(equalCopy + 3))
  {
    if (![(PLQuery *)second isEqual:?])
    {
      goto LABEL_13;
    }
  }

  singleQueries = self->_singleQueries;
  if (singleQueries | *(equalCopy + 4))
  {
    v8 = [(NSMutableArray *)singleQueries isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_conjunction;
    *(v5 + 40) |= 1u;
  }

  v7 = [(PLQuery *)self->_first copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(PLQuery *)self->_second copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_singleQueries;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v18 + 1) + 8 * v15) copyWithZone:{zone, v18}];
        [v6 addSingleQueries:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_conjunction;
    *(toCopy + 40) |= 1u;
  }

  v9 = toCopy;
  if (self->_first)
  {
    [toCopy setFirst:?];
  }

  if (self->_second)
  {
    [v9 setSecond:?];
  }

  if ([(PLQuery *)self singleQueriesCount])
  {
    [v9 clearSingleQueries];
    singleQueriesCount = [(PLQuery *)self singleQueriesCount];
    if (singleQueriesCount)
    {
      v6 = singleQueriesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PLQuery *)self singleQueriesAtIndex:i];
        [v9 addSingleQueries:v8];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_first)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_second)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_singleQueries;
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
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_conjunction];
    [dictionary setObject:v4 forKey:@"conjunction"];
  }

  first = self->_first;
  if (first)
  {
    dictionaryRepresentation = [(PLQuery *)first dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"first"];
  }

  second = self->_second;
  if (second)
  {
    dictionaryRepresentation2 = [(PLQuery *)second dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"second"];
  }

  if ([(NSMutableArray *)self->_singleQueries count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_singleQueries, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_singleQueries;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation3 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation3];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [dictionary setObject:v9 forKey:@"singleQueries"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLQuery;
  v4 = [(PLQuery *)&v8 description];
  dictionaryRepresentation = [(PLQuery *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addSingleQueries:(id)queries
{
  queriesCopy = queries;
  singleQueries = self->_singleQueries;
  v8 = queriesCopy;
  if (!singleQueries)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_singleQueries;
    self->_singleQueries = v6;

    queriesCopy = v8;
    singleQueries = self->_singleQueries;
  }

  [(NSMutableArray *)singleQueries addObject:queriesCopy];
}

@end