@interface AWDCoreRoutineDeletionStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addGroups:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDeleteType:(BOOL)a3;
- (void)setHasSyncEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineDeletionStats

- (void)dealloc
{
  [(AWDCoreRoutineDeletionStats *)self setGroups:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineDeletionStats;
  [(AWDCoreRoutineDeletionStats *)&v3 dealloc];
}

- (void)setHasSyncEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDeleteType:(BOOL)a3
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

- (void)addGroups:(id)a3
{
  groups = self->_groups;
  if (!groups)
  {
    groups = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_groups = groups;
  }

  [(NSMutableArray *)groups addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineDeletionStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineDeletionStats description](&v3, sel_description), -[AWDCoreRoutineDeletionStats dictionaryRepresentation](self, "dictionaryRepresentation")];
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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_syncEnabled), @"syncEnabled"}];
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_deleteType), @"deleteType"}];
  }

LABEL_5:
  if ([(NSMutableArray *)self->_groups count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_groups, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    groups = self->_groups;
    v7 = [(NSMutableArray *)groups countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(groups);
          }

          [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)groups countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"groups"];
  }

  v11 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  syncEnabled = self->_syncEnabled;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    deleteType = self->_deleteType;
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  groups = self->_groups;
  v7 = [(NSMutableArray *)groups countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(groups);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)groups countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    *(a3 + 32) = self->_syncEnabled;
    *(a3 + 36) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(a3 + 1) = self->_timestamp;
  *(a3 + 36) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(a3 + 4) = self->_deleteType;
    *(a3 + 36) |= 2u;
  }

LABEL_5:
  if ([(AWDCoreRoutineDeletionStats *)self groupsCount])
  {
    [a3 clearGroups];
    v6 = [(AWDCoreRoutineDeletionStats *)self groupsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addGroups:{-[AWDCoreRoutineDeletionStats groupsAtIndex:](self, "groupsAtIndex:", i)}];
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
    *(v5 + 36) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_syncEnabled;
  *(v5 + 36) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_deleteType;
    *(v5 + 36) |= 2u;
  }

LABEL_5:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  groups = self->_groups;
  v9 = [(NSMutableArray *)groups countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(groups);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:a3];
        [v6 addGroups:v13];
      }

      v10 = [(NSMutableArray *)groups countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  v6 = *(a3 + 36);
  if (*&self->_has)
  {
    if ((*(a3 + 36) & 1) == 0 || self->_timestamp != *(a3 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(a3 + 36))
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(a3 + 36) & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 36) & 4) == 0)
  {
    goto LABEL_21;
  }

  v7 = *(a3 + 32);
  if (self->_syncEnabled)
  {
    if ((*(a3 + 32) & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  if (*(a3 + 32))
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(a3 + 36) & 2) == 0 || self->_deleteType != *(a3 + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(a3 + 36) & 2) != 0)
  {
    goto LABEL_21;
  }

  groups = self->_groups;
  if (groups | *(a3 + 3))
  {

    LOBYTE(v5) = [(NSMutableArray *)groups isEqual:?];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSMutableArray *)self->_groups hash:v3];
  }

  v6 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_syncEnabled;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_deleteType;
  return v7 ^ v6 ^ v8 ^ [(NSMutableArray *)self->_groups hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a3 + 36);
  if (v4)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v4 = *(a3 + 36);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a3 + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_syncEnabled = *(a3 + 32);
  *&self->_has |= 4u;
  if ((*(a3 + 36) & 2) != 0)
  {
LABEL_4:
    self->_deleteType = *(a3 + 4);
    *&self->_has |= 2u;
  }

LABEL_5:
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

        [(AWDCoreRoutineDeletionStats *)self addGroups:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

@end