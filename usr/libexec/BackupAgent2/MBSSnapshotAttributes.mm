@interface MBSSnapshotAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)backupReason;
- (int)backupType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasBackupType:(BOOL)a3;
- (void)setHasKeybagID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MBSSnapshotAttributes

- (void)dealloc
{
  [(MBSSnapshotAttributes *)self setDeviceName:0];
  [(MBSSnapshotAttributes *)self setProductVersion:0];
  [(MBSSnapshotAttributes *)self setBuildVersion:0];
  [(MBSSnapshotAttributes *)self setKeybagUUID:0];
  v3.receiver = self;
  v3.super_class = MBSSnapshotAttributes;
  [(MBSSnapshotAttributes *)&v3 dealloc];
}

- (void)setHasKeybagID:(BOOL)a3
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

- (int)backupReason
{
  if (*&self->_has)
  {
    return self->_backupReason;
  }

  else
  {
    return 0;
  }
}

- (int)backupType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_backupType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasBackupType:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = MBSSnapshotAttributes;
  return [NSString stringWithFormat:@"%@ %@", [(MBSSnapshotAttributes *)&v3 description], [(MBSSnapshotAttributes *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v3 setObject:deviceName forKey:@"deviceName"];
  }

  productVersion = self->_productVersion;
  if (productVersion)
  {
    [v4 setObject:productVersion forKey:@"productVersion"];
  }

  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v4 setObject:buildVersion forKey:@"buildVersion"];
  }

  if ((*&self->_has & 4) != 0)
  {
    [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_keybagID), @"keybagID"}];
  }

  keybagUUID = self->_keybagUUID;
  if (keybagUUID)
  {
    [v4 setObject:keybagUUID forKey:@"keybagUUID"];
  }

  has = self->_has;
  if (has)
  {
    backupReason = self->_backupReason;
    if (backupReason >= 3)
    {
      v11 = [NSString stringWithFormat:@"(unknown: %i)", self->_backupReason];
    }

    else
    {
      v11 = off_1000FD4D8[backupReason];
    }

    [v4 setObject:v11 forKey:@"backupReason"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    backupType = self->_backupType;
    if (backupType >= 3)
    {
      v13 = [NSString stringWithFormat:@"(unknown: %i)", self->_backupType];
    }

    else
    {
      v13 = off_1000FD4F0[backupType];
    }

    [v4 setObject:v13 forKey:@"backupType"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_productVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_buildVersion)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    keybagID = self->_keybagID;
    PBDataWriterWriteUint32Field();
  }

  if (self->_keybagUUID)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if (has)
  {
    backupReason = self->_backupReason;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    backupType = self->_backupType;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (self->_deviceName)
  {
    [a3 setDeviceName:?];
  }

  if (self->_productVersion)
  {
    [a3 setProductVersion:?];
  }

  if (self->_buildVersion)
  {
    [a3 setBuildVersion:?];
  }

  if ((*&self->_has & 4) != 0)
  {
    *(a3 + 8) = self->_keybagID;
    *(a3 + 56) |= 4u;
  }

  if (self->_keybagUUID)
  {
    [a3 setKeybagUUID:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 2) = self->_backupReason;
    *(a3 + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(a3 + 3) = self->_backupType;
    *(a3 + 56) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  v5[3] = [(NSString *)self->_deviceName copyWithZone:a3];
  v5[6] = [(NSString *)self->_productVersion copyWithZone:a3];

  v5[2] = [(NSString *)self->_buildVersion copyWithZone:a3];
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 8) = self->_keybagID;
    *(v5 + 56) |= 4u;
  }

  v5[5] = [(NSData *)self->_keybagUUID copyWithZone:a3];
  has = self->_has;
  if (has)
  {
    *(v5 + 2) = self->_backupReason;
    *(v5 + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 3) = self->_backupType;
    *(v5 + 56) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    deviceName = self->_deviceName;
    if (!(deviceName | *(a3 + 3)) || (v5 = [(NSString *)deviceName isEqual:?]) != 0)
    {
      productVersion = self->_productVersion;
      if (!(productVersion | *(a3 + 6)) || (v5 = [(NSString *)productVersion isEqual:?]) != 0)
      {
        buildVersion = self->_buildVersion;
        if (!(buildVersion | *(a3 + 2)) || (v5 = [(NSString *)buildVersion isEqual:?]) != 0)
        {
          has = self->_has;
          v10 = *(a3 + 56);
          if ((has & 4) != 0)
          {
            if ((*(a3 + 56) & 4) == 0 || self->_keybagID != *(a3 + 8))
            {
              goto LABEL_25;
            }
          }

          else if ((*(a3 + 56) & 4) != 0)
          {
LABEL_25:
            LOBYTE(v5) = 0;
            return v5;
          }

          keybagUUID = self->_keybagUUID;
          if (keybagUUID | *(a3 + 5))
          {
            v5 = [(NSData *)keybagUUID isEqual:?];
            if (!v5)
            {
              return v5;
            }

            has = self->_has;
          }

          if (has)
          {
            if ((*(a3 + 56) & 1) == 0 || self->_backupReason != *(a3 + 2))
            {
              goto LABEL_25;
            }
          }

          else if (*(a3 + 56))
          {
            goto LABEL_25;
          }

          LOBYTE(v5) = (*(a3 + 56) & 2) == 0;
          if ((has & 2) != 0)
          {
            if ((*(a3 + 56) & 2) == 0 || self->_backupType != *(a3 + 3))
            {
              goto LABEL_25;
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
  v3 = [(NSString *)self->_deviceName hash];
  v4 = [(NSString *)self->_productVersion hash];
  v5 = [(NSString *)self->_buildVersion hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_keybagID;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSData *)self->_keybagUUID hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_backupReason;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v9 = 2654435761 * self->_backupType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 3))
  {
    [(MBSSnapshotAttributes *)self setDeviceName:?];
  }

  if (*(a3 + 6))
  {
    [(MBSSnapshotAttributes *)self setProductVersion:?];
  }

  if (*(a3 + 2))
  {
    [(MBSSnapshotAttributes *)self setBuildVersion:?];
  }

  if ((*(a3 + 56) & 4) != 0)
  {
    self->_keybagID = *(a3 + 8);
    *&self->_has |= 4u;
  }

  if (*(a3 + 5))
  {
    [(MBSSnapshotAttributes *)self setKeybagUUID:?];
  }

  v5 = *(a3 + 56);
  if (v5)
  {
    self->_backupReason = *(a3 + 2);
    *&self->_has |= 1u;
    v5 = *(a3 + 56);
  }

  if ((v5 & 2) != 0)
  {
    self->_backupType = *(a3 + 3);
    *&self->_has |= 2u;
  }
}

@end