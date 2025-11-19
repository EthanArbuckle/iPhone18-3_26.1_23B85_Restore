@interface ICIAMApplicationMessageSyncCommand
- (BOOL)isEqual:(id)a3;
- (id)commandTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCommandType:(id)a3;
- (int)commandType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCommandType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ICIAMApplicationMessageSyncCommand

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[7] & 2) != 0)
  {
    self->_commandType = v4[6];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(v4 + 28);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_commandType != *(v4 + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_14;
  }

  applicationMessage = self->_applicationMessage;
  if (applicationMessage | *(v4 + 2))
  {
    if (![(ICIAMApplicationMessage *)applicationMessage isEqual:?])
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    has = self->_has;
    v6 = *(v4 + 28);
  }

  v8 = (v6 & 1) == 0;
  if (has)
  {
    if ((v6 & 1) == 0 || self->_commandSerialNumber != *(v4 + 1))
    {
      goto LABEL_14;
    }

    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_commandType;
    *(v5 + 28) |= 2u;
  }

  v7 = [(ICIAMApplicationMessage *)self->_applicationMessage copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_commandSerialNumber;
    *(v6 + 28) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[6] = self->_commandType;
    *(v4 + 28) |= 2u;
  }

  if (self->_applicationMessage)
  {
    v5 = v4;
    [v4 setApplicationMessage:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_commandSerialNumber;
    *(v4 + 28) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_applicationMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKey:@"commandType"];
  }

  applicationMessage = self->_applicationMessage;
  if (applicationMessage)
  {
    v7 = [(ICIAMApplicationMessage *)applicationMessage dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"applicationMessage"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_commandSerialNumber];
    [v3 setObject:v8 forKey:@"commandSerialNumber"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMApplicationMessageSyncCommand;
  v4 = [(ICIAMApplicationMessageSyncCommand *)&v8 description];
  v5 = [(ICIAMApplicationMessageSyncCommand *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsCommandType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Add"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Remove"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"RemoveAll"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Reset"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)commandTypeAsString:(int)a3
{
  if (a3 >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E7BF4E98[a3];
  }

  return v4;
}

- (void)setHasCommandType:(BOOL)a3
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