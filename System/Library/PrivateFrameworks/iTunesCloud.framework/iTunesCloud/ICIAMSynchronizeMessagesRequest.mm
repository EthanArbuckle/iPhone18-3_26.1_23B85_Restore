@interface ICIAMSynchronizeMessagesRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasActiveCommandsOnly:(BOOL)only;
- (void)setHasDSID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation ICIAMSynchronizeMessagesRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_commandSerialNumber = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_dSID = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(ICIAMSynchronizeMessagesRequest *)self setDeviceID:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 36) & 4) != 0)
  {
    self->_activeCommandsOnly = *(fromCopy + 32);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_commandSerialNumber != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_dSID != *(equalCopy + 2))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_17;
  }

  deviceID = self->_deviceID;
  if (deviceID | *(equalCopy + 3))
  {
    if (![(NSString *)deviceID isEqual:?])
    {
      goto LABEL_17;
    }

    has = self->_has;
    v6 = *(equalCopy + 36);
  }

  v8 = (v6 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v6 & 4) != 0)
    {
      if (self->_activeCommandsOnly)
      {
        if ((*(equalCopy + 32) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (*(equalCopy + 32))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSString *)self->_deviceID copyWithZone:zone];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 32) = self->_activeCommandsOnly;
    *(v6 + 36) |= 4u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_commandSerialNumber;
    *(toCopy + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[2] = self->_dSID;
    *(toCopy + 36) |= 2u;
  }

  if (self->_deviceID)
  {
    v6 = toCopy;
    [toCopy setDeviceID:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 32) = self->_activeCommandsOnly;
    *(toCopy + 36) |= 4u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_commandSerialNumber];
    [dictionary setObject:v5 forKey:@"commandSerialNumber"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_dSID];
    [dictionary setObject:v6 forKey:@"DSID"];
  }

  deviceID = self->_deviceID;
  if (deviceID)
  {
    [dictionary setObject:deviceID forKey:@"deviceID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_activeCommandsOnly];
    [dictionary setObject:v8 forKey:@"activeCommandsOnly"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMSynchronizeMessagesRequest;
  v4 = [(ICIAMSynchronizeMessagesRequest *)&v8 description];
  dictionaryRepresentation = [(ICIAMSynchronizeMessagesRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasActiveCommandsOnly:(BOOL)only
{
  if (only)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDSID:(BOOL)d
{
  if (d)
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