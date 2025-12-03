@interface AWDCoreRoutineLMPScoreBoard
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInstances:(id)instances;
- (void)addSecondaryInstances:(id)instances;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineLMPScoreBoard

- (void)dealloc
{
  [(AWDCoreRoutineLMPScoreBoard *)self setInstances:0];
  [(AWDCoreRoutineLMPScoreBoard *)self setSecondaryInstances:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLMPScoreBoard;
  [(AWDCoreRoutineLMPScoreBoard *)&v3 dealloc];
}

- (void)addInstances:(id)instances
{
  instances = self->_instances;
  if (!instances)
  {
    instances = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_instances = instances;
  }

  [(NSMutableArray *)instances addObject:instances];
}

- (void)addSecondaryInstances:(id)instances
{
  secondaryInstances = self->_secondaryInstances;
  if (!secondaryInstances)
  {
    secondaryInstances = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_secondaryInstances = secondaryInstances;
  }

  [(NSMutableArray *)secondaryInstances addObject:instances];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLMPScoreBoard;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLMPScoreBoard description](&v3, sel_description), -[AWDCoreRoutineLMPScoreBoard dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ([(NSMutableArray *)self->_instances count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_instances, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    instances = self->_instances;
    v6 = [(NSMutableArray *)instances countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(instances);
          }

          [v4 addObject:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)instances countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"instances"];
  }

  if ([(NSMutableArray *)self->_secondaryInstances count])
  {
    v10 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_secondaryInstances, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    secondaryInstances = self->_secondaryInstances;
    v12 = [(NSMutableArray *)secondaryInstances countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(secondaryInstances);
          }

          [v10 addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v13 = [(NSMutableArray *)secondaryInstances countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"secondary_instances"];
  }

  v16 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  instances = self->_instances;
  v6 = [(NSMutableArray *)instances countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(instances);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)instances countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  secondaryInstances = self->_secondaryInstances;
  v12 = [(NSMutableArray *)secondaryInstances countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(secondaryInstances);
        }

        v16 = *(*(&v18 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)secondaryInstances countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
  }

  if ([(AWDCoreRoutineLMPScoreBoard *)self instancesCount])
  {
    [to clearInstances];
    instancesCount = [(AWDCoreRoutineLMPScoreBoard *)self instancesCount];
    if (instancesCount)
    {
      v6 = instancesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addInstances:{-[AWDCoreRoutineLMPScoreBoard instancesAtIndex:](self, "instancesAtIndex:", i)}];
      }
    }
  }

  if ([(AWDCoreRoutineLMPScoreBoard *)self secondaryInstancesCount])
  {
    [to clearSecondaryInstances];
    secondaryInstancesCount = [(AWDCoreRoutineLMPScoreBoard *)self secondaryInstancesCount];
    if (secondaryInstancesCount)
    {
      v9 = secondaryInstancesCount;
      for (j = 0; j != v9; ++j)
      {
        [to addSecondaryInstances:{-[AWDCoreRoutineLMPScoreBoard secondaryInstancesAtIndex:](self, "secondaryInstancesAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  instances = self->_instances;
  v8 = [(NSMutableArray *)instances countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(instances);
        }

        v12 = [*(*(&v25 + 1) + 8 * i) copyWithZone:zone];
        [v6 addInstances:v12];
      }

      v9 = [(NSMutableArray *)instances countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  secondaryInstances = self->_secondaryInstances;
  v14 = [(NSMutableArray *)secondaryInstances countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(secondaryInstances);
        }

        v18 = [*(*(&v21 + 1) + 8 * j) copyWithZone:zone];
        [v6 addSecondaryInstances:v18];
      }

      v15 = [(NSMutableArray *)secondaryInstances countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 32);
    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_11;
      }
    }

    else if (*(equal + 32))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    instances = self->_instances;
    if (!(instances | *(equal + 2)) || (v5 = [(NSMutableArray *)instances isEqual:?]) != 0)
    {
      secondaryInstances = self->_secondaryInstances;
      if (secondaryInstances | *(equal + 3))
      {

        LOBYTE(v5) = [(NSMutableArray *)secondaryInstances isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_instances hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_secondaryInstances hash];
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x29EDCA608];
  if (*(from + 32))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(from + 2);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDCoreRoutineLMPScoreBoard *)self addInstances:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(from + 3);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AWDCoreRoutineLMPScoreBoard *)self addSecondaryInstances:*(*(&v16 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x29EDCA608];
}

@end