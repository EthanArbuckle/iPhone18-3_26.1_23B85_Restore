@interface ICIAMApplicationMessageSyncCommand
- (BOOL)isEqual:(id)equal;
- (id)commandTypeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCommandType:(id)type;
- (int)commandType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCommandType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ICIAMApplicationMessageSyncCommand

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[7] & 2) != 0)
  {
    self->_commandType = fromCopy[6];
    *&self->_has |= 2u;
  }

  applicationMessage = self->_applicationMessage;
  v7 = *(v5 + 2);
  if (applicationMessage)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    applicationMessage = [(ICIAMApplicationMessage *)applicationMessage mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    applicationMessage = [(ICIAMApplicationMessageSyncCommand *)self setApplicationMessage:?];
  }

  v5 = v8;
LABEL_9:
  if (v5[7])
  {
    self->_commandSerialNumber = *(v5 + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](applicationMessage, v5);
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_commandType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ICIAMApplicationMessage *)self->_applicationMessage hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_commandSerialNumber;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(equalCopy + 28);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_commandType != *(equalCopy + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_14;
  }

  applicationMessage = self->_applicationMessage;
  if (applicationMessage | *(equalCopy + 2))
  {
    if (![(ICIAMApplicationMessage *)applicationMessage isEqual:?])
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    has = self->_has;
    v6 = *(equalCopy + 28);
  }

  v8 = (v6 & 1) == 0;
  if (has)
  {
    if ((v6 & 1) == 0 || self->_commandSerialNumber != *(equalCopy + 1))
    {
      goto LABEL_14;
    }

    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_commandType;
    *(v5 + 28) |= 2u;
  }

  v7 = [(ICIAMApplicationMessage *)self->_applicationMessage copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_commandSerialNumber;
    *(v6 + 28) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[6] = self->_commandType;
    *(toCopy + 28) |= 2u;
  }

  if (self->_applicationMessage)
  {
    v5 = toCopy;
    [toCopy setApplicationMessage:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_commandSerialNumber;
    *(toCopy + 28) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_applicationMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    commandType = self->_commandType;
    if (commandType >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_commandType];
    }

    else
    {
      v5 = off_1E7BF4E98[commandType];
    }

    [dictionary setObject:v5 forKey:@"commandType"];
  }

  applicationMessage = self->_applicationMessage;
  if (applicationMessage)
  {
    dictionaryRepresentation = [(ICIAMApplicationMessage *)applicationMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"applicationMessage"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_commandSerialNumber];
    [dictionary setObject:v8 forKey:@"commandSerialNumber"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMApplicationMessageSyncCommand;
  v4 = [(ICIAMApplicationMessageSyncCommand *)&v8 description];
  dictionaryRepresentation = [(ICIAMApplicationMessageSyncCommand *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsCommandType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Add"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Remove"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"RemoveAll"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Reset"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)commandTypeAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E7BF4E98[string];
  }

  return v4;
}

- (void)setHasCommandType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)commandType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_commandType;
  }

  else
  {
    return 0;
  }
}

@end