@interface SBPBAppLayoutList
+ (uint64_t)applayoutsType;
- (BOOL)isEqual:(id)a3;
- (id)applayoutsAtIndex:(id *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)applayouts;
- (uint64_t)applayoutsCount;
- (uint64_t)clearApplayouts;
- (void)addApplayouts:(uint64_t)a1;
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setApplayouts:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation SBPBAppLayoutList

+ (uint64_t)applayoutsType
{
  objc_opt_self();

  return objc_opt_class();
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SBPBAppLayoutList;
  v4 = [(SBPBAppLayoutList *)&v8 description];
  v5 = [(SBPBAppLayoutList *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_applayouts count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_applayouts, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_applayouts;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

          v10 = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"applayouts"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_applayouts;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_applayouts;
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

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{a3, v13}];
        [(SBPBAppLayoutList *)v5 addApplayouts:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    applayouts = self->_applayouts;
    if (applayouts | v4[1])
    {
      v6 = [(NSMutableArray *)applayouts isEqual:?];
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

- (uint64_t)clearApplayouts
{
  if (result)
  {
    return [*(result + 8) removeAllObjects];
  }

  return result;
}

- (void)addApplayouts:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v7 = v3;
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = *(a1 + 8);
      *(a1 + 8) = v5;

      v4 = *(a1 + 8);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

- (uint64_t)applayoutsCount
{
  if (result)
  {
    return [*(result + 8) count];
  }

  return result;
}

- (id)applayoutsAtIndex:(id *)a1
{
  if (a1)
  {
    a1 = [a1[1] objectAtIndex:a2];
    v2 = vars8;
  }

  return a1;
}

- (void)copyTo:(uint64_t)a1
{
  v7 = a2;
  if (a1 && [*(a1 + 8) count])
  {
    if (v7)
    {
      [v7[1] removeAllObjects];
    }

    v3 = [*(a1 + 8) count];
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
        v6 = [*(a1 + 8) objectAtIndex:i];
        [(SBPBAppLayoutList *)v7 addApplayouts:v6];
      }
    }
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(a2 + 8);
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(SBPBAppLayoutList *)a1 addApplayouts:?];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (uint64_t)applayouts
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (void)setApplayouts:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

@end