@interface AWDCoreRoutinePersistenceStoreMigrationDuration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasByteSize:(BOOL)size;
- (void)setHasDeviceClass:(BOOL)class;
- (void)setHasDidVacuum:(BOOL)vacuum;
- (void)setHasNextModelVersion:(BOOL)version;
- (void)setHasPreviousModelVersion:(BOOL)version;
- (void)setHasStoreType:(BOOL)type;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutinePersistenceStoreMigrationDuration

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasStoreType:(BOOL)type
{
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasDidVacuum:(BOOL)vacuum
{
  if (vacuum)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasDeviceClass:(BOOL)class
{
  if (class)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPreviousModelVersion:(BOOL)version
{
  if (version)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasNextModelVersion:(BOOL)version
{
  if (version)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasByteSize:(BOOL)size
{
  if (size)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutinePersistenceStoreMigrationDuration;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutinePersistenceStoreMigrationDuration description](&v3, sel_description), -[AWDCoreRoutinePersistenceStoreMigrationDuration dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_storeType), @"storeType"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", self->_migrationTimeInterval), @"migrationTimeInterval"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_didVacuum), @"didVacuum"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_deviceClass), @"deviceClass"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_nextModelVersion), @"nextModelVersion"}];
    if ((*&self->_has & 4) == 0)
    {
      return dictionary;
    }

    goto LABEL_9;
  }

LABEL_16:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_previousModelVersion), @"previousModelVersion"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((has & 4) != 0)
  {
LABEL_9:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_byteSize), @"byteSize"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  storeType = self->_storeType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  migrationTimeInterval = self->_migrationTimeInterval;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  didVacuum = self->_didVacuum;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  deviceClass = self->_deviceClass;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    nextModelVersion = self->_nextModelVersion;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  previousModelVersion = self->_previousModelVersion;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_17:
  byteSize = self->_byteSize;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 48) |= 2u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(to + 10) = self->_storeType;
  *(to + 48) |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(to + 1) = *&self->_migrationTimeInterval;
  *(to + 48) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(to + 44) = self->_didVacuum;
  *(to + 48) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(to + 7) = self->_deviceClass;
  *(to + 48) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 9) = self->_previousModelVersion;
  *(to + 48) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      return;
    }

LABEL_17:
    *(to + 6) = self->_byteSize;
    *(to + 48) |= 4u;
    return;
  }

LABEL_16:
  *(to + 8) = self->_nextModelVersion;
  *(to + 48) |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_17;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 48) |= 2u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 10) = self->_storeType;
  *(result + 48) |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 1) = *&self->_migrationTimeInterval;
  *(result + 48) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 44) = self->_didVacuum;
  *(result + 48) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 7) = self->_deviceClass;
  *(result + 48) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 9) = self->_previousModelVersion;
  *(result + 48) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 8) = self->_nextModelVersion;
  *(result + 48) |= 0x10u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 6) = self->_byteSize;
  *(result + 48) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 48) & 2) == 0 || self->_timestamp != *(equal + 2))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equal + 48) & 2) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equal + 48) & 0x40) == 0 || self->_storeType != *(equal + 10))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equal + 48) & 0x40) != 0)
  {
    goto LABEL_44;
  }

  if (*&self->_has)
  {
    if ((*(equal + 48) & 1) == 0 || self->_migrationTimeInterval != *(equal + 1))
    {
      goto LABEL_44;
    }
  }

  else if (*(equal + 48))
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(equal + 48) & 0x80) != 0)
    {
      v6 = *(equal + 44);
      if (self->_didVacuum)
      {
        if ((*(equal + 44) & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else if (*(equal + 44))
      {
        goto LABEL_44;
      }

      goto LABEL_19;
    }

LABEL_44:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 48) & 0x80) != 0)
  {
    goto LABEL_44;
  }

LABEL_19:
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equal + 48) & 8) == 0 || self->_deviceClass != *(equal + 7))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equal + 48) & 8) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equal + 48) & 0x20) == 0 || self->_previousModelVersion != *(equal + 9))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equal + 48) & 0x20) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equal + 48) & 0x10) == 0 || self->_nextModelVersion != *(equal + 8))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equal + 48) & 0x10) != 0)
  {
    goto LABEL_44;
  }

  LOBYTE(v5) = (*(equal + 48) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equal + 48) & 4) == 0 || self->_byteSize != *(equal + 6))
    {
      goto LABEL_44;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v4 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = 2654435761 * self->_storeType;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  migrationTimeInterval = self->_migrationTimeInterval;
  if (migrationTimeInterval < 0.0)
  {
    migrationTimeInterval = -migrationTimeInterval;
  }

  *v2.i64 = floor(migrationTimeInterval + 0.5);
  v7 = (migrationTimeInterval - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_11:
  if ((*&self->_has & 0x80) != 0)
  {
    v10 = 2654435761 * self->_didVacuum;
    if ((*&self->_has & 8) == 0)
    {
LABEL_13:
      v11 = 0;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v10 = 0;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_13;
    }
  }

  v11 = 2654435761 * self->_deviceClass;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_14:
    v12 = 2654435761 * self->_previousModelVersion;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    v13 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    v14 = 0;
    return v5 ^ v4 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_19:
  v12 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = 2654435761 * self->_nextModelVersion;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  v14 = 2654435761 * self->_byteSize;
  return v5 ^ v4 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 48);
  if ((v3 & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
    v3 = *(from + 48);
    if ((v3 & 0x40) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(from + 48) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_storeType = *(from + 10);
  *&self->_has |= 0x40u;
  v3 = *(from + 48);
  if ((v3 & 1) == 0)
  {
LABEL_4:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_migrationTimeInterval = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 48);
  if ((v3 & 0x80) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_didVacuum = *(from + 44);
  *&self->_has |= 0x80u;
  v3 = *(from + 48);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_deviceClass = *(from + 7);
  *&self->_has |= 8u;
  v3 = *(from + 48);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_previousModelVersion = *(from + 9);
  *&self->_has |= 0x20u;
  v3 = *(from + 48);
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 4) == 0)
    {
      return;
    }

LABEL_17:
    self->_byteSize = *(from + 6);
    *&self->_has |= 4u;
    return;
  }

LABEL_16:
  self->_nextModelVersion = *(from + 8);
  *&self->_has |= 0x10u;
  if ((*(from + 48) & 4) != 0)
  {
    goto LABEL_17;
  }
}

@end