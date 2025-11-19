@interface AWDCoreRoutineModelVisitCount
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addVisits:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineModelVisitCount

- (void)dealloc
{
  [(AWDCoreRoutineModelVisitCount *)self setVisits:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineModelVisitCount;
  [(AWDCoreRoutineModelVisitCount *)&v3 dealloc];
}

- (void)setHasCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addVisits:(id)a3
{
  visits = self->_visits;
  if (!visits)
  {
    visits = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_visits = visits;
  }

  [(NSMutableArray *)visits addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineModelVisitCount;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineModelVisitCount description](&v3, sel_description), -[AWDCoreRoutineModelVisitCount dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_count), @"count"}];
  }

  if ([(NSMutableArray *)self->_visits count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_visits, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    visits = self->_visits;
    v7 = [(NSMutableArray *)visits countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(visits);
          }

          [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)visits countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"visits"];
  }

  v11 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    count = self->_count;
    PBDataWriterWriteUint32Field();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  visits = self->_visits;
  v8 = [(NSMutableArray *)visits countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(visits);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)visits countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(a3 + 4) = self->_count;
    *(a3 + 32) |= 2u;
  }

  if ([(AWDCoreRoutineModelVisitCount *)self visitsCount])
  {
    [a3 clearVisits];
    v6 = [(AWDCoreRoutineModelVisitCount *)self visitsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addVisits:{-[AWDCoreRoutineModelVisitCount visitsAtIndex:](self, "visitsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_count;
    *(v5 + 32) |= 2u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  visits = self->_visits;
  v9 = [(NSMutableArray *)visits countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(visits);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:a3];
        [v6 addVisits:v13];
      }

      v10 = [(NSMutableArray *)visits countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 32);
    if (*&self->_has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(a3 + 32))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 32) & 2) == 0 || self->_count != *(a3 + 4))
      {
        goto LABEL_14;
      }
    }

    else if ((*(a3 + 32) & 2) != 0)
    {
      goto LABEL_14;
    }

    visits = self->_visits;
    if (visits | *(a3 + 3))
    {

      LOBYTE(v5) = [(NSMutableArray *)visits isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSMutableArray *)self->_visits hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_count;
  return v7 ^ v6 ^ [(NSMutableArray *)self->_visits hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a3 + 32);
  if (v4)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v4 = *(a3 + 32);
  }

  if ((v4 & 2) != 0)
  {
    self->_count = *(a3 + 4);
    *&self->_has |= 2u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a3 + 3);
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

        [(AWDCoreRoutineModelVisitCount *)self addVisits:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

@end