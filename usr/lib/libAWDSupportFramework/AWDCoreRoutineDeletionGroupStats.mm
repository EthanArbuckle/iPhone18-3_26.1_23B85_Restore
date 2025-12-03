@interface AWDCoreRoutineDeletionGroupStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRecords:(id)records;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasOldestRecordAgeInDays:(BOOL)days;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineDeletionGroupStats

- (void)dealloc
{
  [(AWDCoreRoutineDeletionGroupStats *)self setRecords:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineDeletionGroupStats;
  [(AWDCoreRoutineDeletionGroupStats *)&v3 dealloc];
}

- (void)setHasOldestRecordAgeInDays:(BOOL)days
{
  if (days)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addRecords:(id)records
{
  records = self->_records;
  if (!records)
  {
    records = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_records = records;
  }

  [(NSMutableArray *)records addObject:records];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineDeletionGroupStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineDeletionGroupStats description](&v3, sel_description), -[AWDCoreRoutineDeletionGroupStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_itemType), @"itemType"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_oldestRecordAgeInDays), @"oldestRecordAgeInDays"}];
  }

  if ([(NSMutableArray *)self->_records count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_records, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    records = self->_records;
    v7 = [(NSMutableArray *)records countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(records);
          }

          [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)records countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"records"];
  }

  v11 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (has)
  {
    itemType = self->_itemType;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    oldestRecordAgeInDays = self->_oldestRecordAgeInDays;
    PBDataWriterWriteUint32Field();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  records = self->_records;
  v8 = [(NSMutableArray *)records countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(records);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)records countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 2) = self->_itemType;
    *(to + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 3) = self->_oldestRecordAgeInDays;
    *(to + 24) |= 2u;
  }

  if ([(AWDCoreRoutineDeletionGroupStats *)self recordsCount])
  {
    [to clearRecords];
    recordsCount = [(AWDCoreRoutineDeletionGroupStats *)self recordsCount];
    if (recordsCount)
    {
      v7 = recordsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addRecords:{-[AWDCoreRoutineDeletionGroupStats recordsAtIndex:](self, "recordsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_itemType;
    *(v5 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 12) = self->_oldestRecordAgeInDays;
    *(v5 + 24) |= 2u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  records = self->_records;
  v9 = [(NSMutableArray *)records countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(records);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:zone];
        [v6 addRecords:v13];
      }

      v10 = [(NSMutableArray *)records countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 24);
    if (*&self->_has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_itemType != *(equal + 2))
      {
        goto LABEL_14;
      }
    }

    else if (*(equal + 24))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 24) & 2) == 0 || self->_oldestRecordAgeInDays != *(equal + 3))
      {
        goto LABEL_14;
      }
    }

    else if ((*(equal + 24) & 2) != 0)
    {
      goto LABEL_14;
    }

    records = self->_records;
    if (records | *(equal + 2))
    {

      LOBYTE(v5) = [(NSMutableArray *)records isEqual:?];
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
    v6 = 2654435761 * self->_itemType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSMutableArray *)self->_records hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_oldestRecordAgeInDays;
  return v7 ^ v6 ^ [(NSMutableArray *)self->_records hash:v3];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(from + 24);
  if (v4)
  {
    self->_itemType = *(from + 2);
    *&self->_has |= 1u;
    v4 = *(from + 24);
  }

  if ((v4 & 2) != 0)
  {
    self->_oldestRecordAgeInDays = *(from + 3);
    *&self->_has |= 2u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(from + 2);
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

        [(AWDCoreRoutineDeletionGroupStats *)self addRecords:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

@end