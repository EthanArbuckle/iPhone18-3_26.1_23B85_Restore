@interface ICIAMSynchronizeMessagesRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasActiveCommandsOnly:(BOOL)a3;
- (void)setHasDSID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ICIAMSynchronizeMessagesRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if (v5)
  {
    self->_commandSerialNumber = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_dSID = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 3))
  {
    v6 = v4;
    [(ICIAMSynchronizeMessagesRequest *)self setDeviceID:?];
    v4 = v6;
  }

  if ((*(v4 + 36) & 4) != 0)
  {
    self->_activeCommandsOnly = *(v4 + 32);
    *&self->_has |= 4u;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_commandSerialNumber;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_dSID;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_deviceID hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_activeCommandsOnly;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(v4 + 36);
  if (has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_commandSerialNumber != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_dSID != *(v4 + 2))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_17;
  }

  deviceID = self->_deviceID;
  if (deviceID | *(v4 + 3))
  {
    if (![(NSString *)deviceID isEqual:?])
    {
      goto LABEL_17;
    }

    has = self->_has;
    v6 = *(v4 + 36);
  }

  v8 = (v6 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v6 & 4) != 0)
    {
      if (self->_activeCommandsOnly)
      {
        if ((*(v4 + 32) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (*(v4 + 32))
      {
        goto LABEL_17;
      }

      v8 = 1;
      goto LABEL_18;
    }

LABEL_17:
    v8 = 0;
  }

LABEL_18:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_commandSerialNumber;
    *(v5 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_dSID;
    *(v5 + 36) |= 2u;
  }

  v8 = [(NSString *)self->_deviceID copyWithZone:a3];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 32) = self->_activeCommandsOnly;
    *(v6 + 36) |= 4u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_commandSerialNumber;
    *(v4 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[2] = self->_dSID;
    *(v4 + 36) |= 2u;
  }

  if (self->_deviceID)
  {
    v6 = v4;
    [v4 setDeviceID:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 32) = self->_activeCommandsOnly;
    *(v4 + 36) |= 4u;
  }
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_deviceID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_commandSerialNumber];
    [v3 setObject:v5 forKey:@"commandSerialNumber"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_dSID];
    [v3 setObject:v6 forKey:@"DSID"];
  }

  deviceID = self->_deviceID;
  if (deviceID)
  {
    [v3 setObject:deviceID forKey:@"deviceID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_activeCommandsOnly];
    [v3 setObject:v8 forKey:@"activeCommandsOnly"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMSynchronizeMessagesRequest;
  v4 = [(ICIAMSynchronizeMessagesRequest *)&v8 description];
  v5 = [(ICIAMSynchronizeMessagesRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasActiveCommandsOnly:(BOOL)a3
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

- (void)setHasDSID:(BOOL)a3
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

@end