@interface AWDSafariCKBookmarksMigrationFinishedEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMigratorType:(id)a3;
- (int)StringAsResult:(id)a3;
- (int)migratorType;
- (int)result;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasMigratorType:(BOOL)a3;
- (void)setHasResult:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSafariCKBookmarksMigrationFinishedEvent

- (void)dealloc
{
  [(AWDSafariCKBookmarksMigrationFinishedEvent *)self setErrorDomain:0];
  [(AWDSafariCKBookmarksMigrationFinishedEvent *)self setErrorCode:0];
  v3.receiver = self;
  v3.super_class = AWDSafariCKBookmarksMigrationFinishedEvent;
  [(AWDSafariCKBookmarksMigrationFinishedEvent *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (int)migratorType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_migratorType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMigratorType:(BOOL)a3
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

- (int)StringAsMigratorType:(id)a3
{
  if ([a3 isEqualToString:@"PRIMARY_MIGRATOR"])
  {
    return 0;
  }

  else
  {
    return [a3 isEqualToString:@"SECONDARY_MIGRATOR"];
  }
}

- (int)result
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_result;
  }

  else
  {
    return 0;
  }
}

- (void)setHasResult:(BOOL)a3
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

- (int)StringAsResult:(id)a3
{
  if ([a3 isEqualToString:@"MIGRATION_SUCCESSFUL"])
  {
    return 0;
  }

  else
  {
    return [a3 isEqualToString:@"MIGRATION_FAILED"];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSafariCKBookmarksMigrationFinishedEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariCKBookmarksMigrationFinishedEvent description](&v3, sel_description), -[AWDSafariCKBookmarksMigrationFinishedEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  migratorType = self->_migratorType;
  if (migratorType)
  {
    if (migratorType == 1)
    {
      v6 = @"SECONDARY_MIGRATOR";
    }

    else
    {
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_migratorType];
    }
  }

  else
  {
    v6 = @"PRIMARY_MIGRATOR";
  }

  [v3 setObject:v6 forKey:@"migratorType"];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  v7 = self->_result;
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = @"MIGRATION_FAILED";
    }

    else
    {
      v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_result];
    }
  }

  else
  {
    v8 = @"MIGRATION_SUCCESSFUL";
  }

  [v3 setObject:v8 forKey:@"result"];
LABEL_20:
  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v3 setObject:errorDomain forKey:@"errorDomain"];
  }

  errorCode = self->_errorCode;
  if (errorCode)
  {
    [v3 setObject:errorCode forKey:@"errorCode"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  migratorType = self->_migratorType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_14:
  duration = self->_duration;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    result = self->_result;
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_errorCode)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 48) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 10) = self->_migratorType;
  *(a3 + 48) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_14:
  *(a3 + 1) = self->_duration;
  *(a3 + 48) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(a3 + 11) = self->_result;
    *(a3 + 48) |= 8u;
  }

LABEL_6:
  if (self->_errorDomain)
  {
    [a3 setErrorDomain:?];
  }

  if (self->_errorCode)
  {

    [a3 setErrorCode:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 48) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 8) = self->_duration;
      *(v5 + 48) |= 1u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_migratorType;
  *(v5 + 48) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 44) = self->_result;
    *(v5 + 48) |= 8u;
  }

LABEL_6:

  *(v6 + 32) = [(NSString *)self->_errorDomain copyWithZone:a3];
  *(v6 + 24) = [(NSString *)self->_errorCode copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 48);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 48) & 2) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_26;
      }
    }

    else if ((*(a3 + 48) & 2) != 0)
    {
LABEL_26:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 48) & 4) == 0 || self->_migratorType != *(a3 + 10))
      {
        goto LABEL_26;
      }
    }

    else if ((*(a3 + 48) & 4) != 0)
    {
      goto LABEL_26;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 48) & 1) == 0 || self->_duration != *(a3 + 1))
      {
        goto LABEL_26;
      }
    }

    else if (*(a3 + 48))
    {
      goto LABEL_26;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 48) & 8) == 0 || self->_result != *(a3 + 11))
      {
        goto LABEL_26;
      }
    }

    else if ((*(a3 + 48) & 8) != 0)
    {
      goto LABEL_26;
    }

    errorDomain = self->_errorDomain;
    if (!(errorDomain | *(a3 + 4)) || (v5 = [(NSString *)errorDomain isEqual:?]) != 0)
    {
      errorCode = self->_errorCode;
      if (errorCode | *(a3 + 3))
      {

        LOBYTE(v5) = [(NSString *)errorCode isEqual:?];
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
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_migratorType;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v6 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761u * self->_duration;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v6 = 2654435761 * self->_result;
LABEL_10:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_errorDomain hash];
  return v7 ^ [(NSString *)self->_errorCode hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 48);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
    v5 = *(a3 + 48);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a3 + 48) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_migratorType = *(a3 + 10);
  *&self->_has |= 4u;
  v5 = *(a3 + 48);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_14:
  self->_duration = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 48) & 8) != 0)
  {
LABEL_5:
    self->_result = *(a3 + 11);
    *&self->_has |= 8u;
  }

LABEL_6:
  if (*(a3 + 4))
  {
    [(AWDSafariCKBookmarksMigrationFinishedEvent *)self setErrorDomain:?];
  }

  if (*(a3 + 3))
  {

    [(AWDSafariCKBookmarksMigrationFinishedEvent *)self setErrorCode:?];
  }
}

@end