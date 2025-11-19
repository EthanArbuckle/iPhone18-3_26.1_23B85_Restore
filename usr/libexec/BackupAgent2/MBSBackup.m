@interface MBSBackup
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSnapshot:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasQuotaUsed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MBSBackup

- (void)dealloc
{
  [(MBSBackup *)self setBackupUDID:0];
  [(MBSBackup *)self setSnapshots:0];
  [(MBSBackup *)self setAttributes:0];
  v3.receiver = self;
  v3.super_class = MBSBackup;
  [(MBSBackup *)&v3 dealloc];
}

- (void)setHasQuotaUsed:(BOOL)a3
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

- (void)addSnapshot:(id)a3
{
  snapshots = self->_snapshots;
  if (!snapshots)
  {
    snapshots = objc_alloc_init(NSMutableArray);
    self->_snapshots = snapshots;
  }

  [(NSMutableArray *)snapshots addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MBSBackup;
  return [NSString stringWithFormat:@"%@ %@", [(MBSBackup *)&v3 description], [(MBSBackup *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  backupUDID = self->_backupUDID;
  if (backupUDID)
  {
    [v3 setObject:backupUDID forKey:@"backupUDID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [v4 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", self->_quotaUsed), @"quotaUsed"}];
  }

  if ([(NSMutableArray *)self->_snapshots count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_snapshots, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    snapshots = self->_snapshots;
    v8 = [(NSMutableArray *)snapshots countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(snapshots);
          }

          [v6 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v9 = [(NSMutableArray *)snapshots countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"snapshot"];
  }

  attributes = self->_attributes;
  if (attributes)
  {
    [v4 setObject:-[MBSBackupAttributes dictionaryRepresentation](attributes forKey:{"dictionaryRepresentation"), @"attributes"}];
  }

  if (*&self->_has)
  {
    [v4 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", self->_keysLastModified), @"keysLastModified"}];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_backupUDID)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 2) != 0)
  {
    quotaUsed = self->_quotaUsed;
    PBDataWriterWriteUint64Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  snapshots = self->_snapshots;
  v6 = [(NSMutableArray *)snapshots countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(snapshots);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)snapshots countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_attributes)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    keysLastModified = self->_keysLastModified;
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  if (self->_backupUDID)
  {
    [a3 setBackupUDID:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 2) = self->_quotaUsed;
    *(a3 + 48) |= 2u;
  }

  if ([(MBSBackup *)self snapshotsCount])
  {
    [a3 clearSnapshots];
    v5 = [(MBSBackup *)self snapshotsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addSnapshot:{-[MBSBackup snapshotAtIndex:](self, "snapshotAtIndex:", i)}];
      }
    }
  }

  if (self->_attributes)
  {
    [a3 setAttributes:?];
  }

  if (*&self->_has)
  {
    *(a3 + 1) = self->_keysLastModified;
    *(a3 + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  v5[4] = [(NSData *)self->_backupUDID copyWithZone:a3];
  if ((*&self->_has & 2) != 0)
  {
    v5[2] = self->_quotaUsed;
    *(v5 + 48) |= 2u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  snapshots = self->_snapshots;
  v7 = [(NSMutableArray *)snapshots countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(snapshots);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) copyWithZone:a3];
        [v5 addSnapshot:v11];
      }

      v8 = [(NSMutableArray *)snapshots countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v5[3] = [(MBSBackupAttributes *)self->_attributes copyWithZone:a3];
  if (*&self->_has)
  {
    v5[1] = self->_keysLastModified;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    backupUDID = self->_backupUDID;
    if (!(backupUDID | *(a3 + 4)) || (v5 = [(NSData *)backupUDID isEqual:?]) != 0)
    {
      v7 = *(a3 + 48);
      if ((*&self->_has & 2) != 0)
      {
        if ((*(a3 + 48) & 2) == 0 || self->_quotaUsed != *(a3 + 2))
        {
          goto LABEL_17;
        }
      }

      else if ((*(a3 + 48) & 2) != 0)
      {
LABEL_17:
        LOBYTE(v5) = 0;
        return v5;
      }

      snapshots = self->_snapshots;
      if (!(snapshots | *(a3 + 5)) || (v5 = [(NSMutableArray *)snapshots isEqual:?]) != 0)
      {
        attributes = self->_attributes;
        if (!(attributes | *(a3 + 3)) || (v5 = [(MBSBackupAttributes *)attributes isEqual:?]) != 0)
        {
          LOBYTE(v5) = (*(a3 + 48) & 1) == 0;
          if (*&self->_has)
          {
            if ((*(a3 + 48) & 1) == 0 || self->_keysLastModified != *(a3 + 1))
            {
              goto LABEL_17;
            }

            LOBYTE(v5) = 1;
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_backupUDID hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761u * self->_quotaUsed;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSMutableArray *)self->_snapshots hash];
  v6 = [(MBSBackupAttributes *)self->_attributes hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_keysLastModified;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 4))
  {
    [(MBSBackup *)self setBackupUDID:?];
  }

  if ((*(a3 + 48) & 2) != 0)
  {
    self->_quotaUsed = *(a3 + 2);
    *&self->_has |= 2u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a3 + 5);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(MBSBackup *)self addSnapshot:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  attributes = self->_attributes;
  v11 = *(a3 + 3);
  if (attributes)
  {
    if (v11)
    {
      [(MBSBackupAttributes *)attributes mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(MBSBackup *)self setAttributes:?];
  }

  if (*(a3 + 48))
  {
    self->_keysLastModified = *(a3 + 1);
    *&self->_has |= 1u;
  }
}

@end