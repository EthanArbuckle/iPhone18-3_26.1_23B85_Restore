@interface HVPBDataSourceContentState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addDeferredContentStates:(id)a3;
- (void)addDeprecatedDeferredContentStates:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HVPBDataSourceContentState

- (void)mergeFrom:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v4[2];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HVPBDataSourceContentState *)self addDeprecatedDeferredContentStates:*(*(&v20 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v4[1];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(HVPBDataSourceContentState *)self addDeferredContentStates:*(*(&v16 + 1) + 8 * v14++), v16];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((deprecatedDeferredContentStates = self->_deprecatedDeferredContentStates, !(deprecatedDeferredContentStates | v4[2])) || -[NSMutableArray isEqual:](deprecatedDeferredContentStates, "isEqual:")))
  {
    deferredContentStates = self->_deferredContentStates;
    if (deferredContentStates | v4[1])
    {
      v7 = [(NSMutableArray *)deferredContentStates isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_deprecatedDeferredContentStates;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v24 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addDeprecatedDeferredContentStates:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_deferredContentStates;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{a3, v20}];
        [v5 addDeferredContentStates:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  if ([(HVPBDataSourceContentState *)self deprecatedDeferredContentStatesCount])
  {
    [v12 clearDeprecatedDeferredContentStates];
    v4 = [(HVPBDataSourceContentState *)self deprecatedDeferredContentStatesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HVPBDataSourceContentState *)self deprecatedDeferredContentStatesAtIndex:i];
        [v12 addDeprecatedDeferredContentStates:v7];
      }
    }
  }

  if ([(HVPBDataSourceContentState *)self deferredContentStatesCount])
  {
    [v12 clearDeferredContentStates];
    v8 = [(HVPBDataSourceContentState *)self deferredContentStatesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HVPBDataSourceContentState *)self deferredContentStatesAtIndex:j];
        [v12 addDeferredContentStates:v11];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_deprecatedDeferredContentStates;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_deferredContentStates;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
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

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_deprecatedDeferredContentStates count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_deprecatedDeferredContentStates, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = self->_deprecatedDeferredContentStates;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"deprecatedDeferredContentStates"];
  }

  if ([(NSMutableArray *)self->_deferredContentStates count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_deferredContentStates, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = self->_deferredContentStates;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v20 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"deferredContentStates"];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HVPBDataSourceContentState;
  v4 = [(HVPBDataSourceContentState *)&v8 description];
  v5 = [(HVPBDataSourceContentState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addDeferredContentStates:(id)a3
{
  v4 = a3;
  deferredContentStates = self->_deferredContentStates;
  v8 = v4;
  if (!deferredContentStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_deferredContentStates;
    self->_deferredContentStates = v6;

    v4 = v8;
    deferredContentStates = self->_deferredContentStates;
  }

  [(NSMutableArray *)deferredContentStates addObject:v4];
}

- (void)addDeprecatedDeferredContentStates:(id)a3
{
  v4 = a3;
  deprecatedDeferredContentStates = self->_deprecatedDeferredContentStates;
  v8 = v4;
  if (!deprecatedDeferredContentStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_deprecatedDeferredContentStates;
    self->_deprecatedDeferredContentStates = v6;

    v4 = v8;
    deprecatedDeferredContentStates = self->_deprecatedDeferredContentStates;
  }

  [(NSMutableArray *)deprecatedDeferredContentStates addObject:v4];
}

@end