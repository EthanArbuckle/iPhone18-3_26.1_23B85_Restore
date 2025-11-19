@interface AWDCoreRoutinePersistenceMirroringAccountDevices
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addProfiles:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasTopDeviceClass:(BOOL)a3;
- (void)setHasTotalPlaces:(BOOL)a3;
- (void)setHasTotalTransitions:(BOOL)a3;
- (void)setHasTotalVisits:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutinePersistenceMirroringAccountDevices

- (void)dealloc
{
  [(AWDCoreRoutinePersistenceMirroringAccountDevices *)self setProfiles:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutinePersistenceMirroringAccountDevices;
  [(AWDCoreRoutinePersistenceMirroringAccountDevices *)&v3 dealloc];
}

- (void)addProfiles:(id)a3
{
  profiles = self->_profiles;
  if (!profiles)
  {
    profiles = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_profiles = profiles;
  }

  [(NSMutableArray *)profiles addObject:a3];
}

- (void)setHasTopDeviceClass:(BOOL)a3
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

- (void)setHasTotalVisits:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTotalPlaces:(BOOL)a3
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

- (void)setHasTotalTransitions:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutinePersistenceMirroringAccountDevices;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutinePersistenceMirroringAccountDevices description](&v3, sel_description), -[AWDCoreRoutinePersistenceMirroringAccountDevices dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ([(NSMutableArray *)self->_profiles count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_profiles, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    profiles = self->_profiles;
    v6 = [(NSMutableArray *)profiles countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(profiles);
          }

          [v4 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)profiles countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"profiles"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_topDeviceClass), @"topDeviceClass"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_14:
      if ((has & 4) == 0)
      {
        goto LABEL_15;
      }

LABEL_20:
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_totalPlaces), @"totalPlaces"}];
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_14;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_totalVisits), @"totalVisits"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((has & 8) != 0)
  {
LABEL_16:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_totalTransitions), @"totalTransitions"}];
  }

LABEL_17:
  v11 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  profiles = self->_profiles;
  v6 = [(NSMutableArray *)profiles countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(profiles);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)profiles countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    topDeviceClass = self->_topDeviceClass;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_12:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      totalPlaces = self->_totalPlaces;
      PBDataWriterWriteInt32Field();
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

  totalVisits = self->_totalVisits;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((has & 8) != 0)
  {
LABEL_14:
    totalTransitions = self->_totalTransitions;
    PBDataWriterWriteInt32Field();
  }

LABEL_15:
  v13 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 40) |= 1u;
  }

  if ([(AWDCoreRoutinePersistenceMirroringAccountDevices *)self profilesCount])
  {
    [a3 clearProfiles];
    v5 = [(AWDCoreRoutinePersistenceMirroringAccountDevices *)self profilesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addProfiles:{-[AWDCoreRoutinePersistenceMirroringAccountDevices profilesAtIndex:](self, "profilesAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 6) = self->_topDeviceClass;
    *(a3 + 40) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_9:
      if ((has & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_9;
  }

  *(a3 + 9) = self->_totalVisits;
  *(a3 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_15:
  *(a3 + 7) = self->_totalPlaces;
  *(a3 + 40) |= 4u;
  if ((*&self->_has & 8) == 0)
  {
    return;
  }

LABEL_11:
  *(a3 + 8) = self->_totalTransitions;
  *(a3 + 40) |= 8u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 40) |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  profiles = self->_profiles;
  v8 = [(NSMutableArray *)profiles countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(profiles);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) copyWithZone:a3];
        [v6 addProfiles:v12];
      }

      v9 = [(NSMutableArray *)profiles countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 24) = self->_topDeviceClass;
    *(v6 + 40) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_12:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      *(v6 + 28) = self->_totalPlaces;
      *(v6 + 40) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

  *(v6 + 36) = self->_totalVisits;
  *(v6 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((has & 8) != 0)
  {
LABEL_14:
    *(v6 + 32) = self->_totalTransitions;
    *(v6 + 40) |= 8u;
  }

LABEL_15:
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 40);
    if (has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_29;
      }
    }

    else if (*(a3 + 40))
    {
LABEL_29:
      LOBYTE(v5) = 0;
      return v5;
    }

    profiles = self->_profiles;
    if (profiles | *(a3 + 2))
    {
      v5 = [(NSMutableArray *)profiles isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(a3 + 40) & 2) == 0 || self->_topDeviceClass != *(a3 + 6))
      {
        goto LABEL_29;
      }
    }

    else if ((*(a3 + 40) & 2) != 0)
    {
      goto LABEL_29;
    }

    if ((has & 0x10) != 0)
    {
      if ((*(a3 + 40) & 0x10) == 0 || self->_totalVisits != *(a3 + 9))
      {
        goto LABEL_29;
      }
    }

    else if ((*(a3 + 40) & 0x10) != 0)
    {
      goto LABEL_29;
    }

    if ((has & 4) != 0)
    {
      if ((*(a3 + 40) & 4) == 0 || self->_totalPlaces != *(a3 + 7))
      {
        goto LABEL_29;
      }
    }

    else if ((*(a3 + 40) & 4) != 0)
    {
      goto LABEL_29;
    }

    LOBYTE(v5) = (*(a3 + 40) & 8) == 0;
    if ((has & 8) != 0)
    {
      if ((*(a3 + 40) & 8) == 0 || self->_totalTransitions != *(a3 + 8))
      {
        goto LABEL_29;
      }

      LOBYTE(v5) = 1;
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

  v4 = [(NSMutableArray *)self->_profiles hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_topDeviceClass;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_totalVisits;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761 * self->_totalPlaces;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761 * self->_totalTransitions;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(a3 + 40))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a3 + 2);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        [(AWDCoreRoutinePersistenceMirroringAccountDevices *)self addProfiles:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *(a3 + 40);
  if ((v10 & 2) != 0)
  {
    self->_topDeviceClass = *(a3 + 6);
    *&self->_has |= 2u;
    v10 = *(a3 + 40);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      self->_totalPlaces = *(a3 + 7);
      *&self->_has |= 4u;
      if ((*(a3 + 40) & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a3 + 40) & 0x10) == 0)
  {
    goto LABEL_12;
  }

  self->_totalVisits = *(a3 + 9);
  *&self->_has |= 0x10u;
  v10 = *(a3 + 40);
  if ((v10 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v10 & 8) != 0)
  {
LABEL_14:
    self->_totalTransitions = *(a3 + 8);
    *&self->_has |= 8u;
  }

LABEL_15:
  v11 = *MEMORY[0x29EDCA608];
}

@end