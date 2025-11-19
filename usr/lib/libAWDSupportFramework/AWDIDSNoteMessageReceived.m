@interface AWDIDSNoteMessageReceived
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAccountType:(BOOL)a3;
- (void)setHasFromStorage:(BOOL)a3;
- (void)setHasServertimestamp:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSNoteMessageReceived

- (void)dealloc
{
  [(AWDIDSNoteMessageReceived *)self setServiceIdentifier:0];
  v3.receiver = self;
  v3.super_class = AWDIDSNoteMessageReceived;
  [(AWDIDSNoteMessageReceived *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasAccountType:(BOOL)a3
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

- (void)setHasFromStorage:(BOOL)a3
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

- (void)setHasServertimestamp:(BOOL)a3
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
  v3.super_class = AWDIDSNoteMessageReceived;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSNoteMessageReceived description](&v3, sel_description), -[AWDIDSNoteMessageReceived dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_accountType), @"accountType"}];
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_fromStorage), @"fromStorage"}];
  }

LABEL_5:
  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    [v3 setObject:serviceIdentifier forKey:@"serviceIdentifier"];
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_servertimestamp), @"servertimestamp"}];
    v6 = self->_has;
  }

  if (v6)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_localtimedelta), @"localtimedelta"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  accountType = self->_accountType;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    fromStorage = self->_fromStorage;
    PBDataWriterWriteBOOLField();
  }

LABEL_5:
  if (self->_serviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    servertimestamp = self->_servertimestamp;
    PBDataWriterWriteUint64Field();
    v6 = self->_has;
  }

  if (v6)
  {
    localtimedelta = self->_localtimedelta;

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 3) = self->_timestamp;
    *(a3 + 52) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 8) = self->_accountType;
  *(a3 + 52) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    *(a3 + 48) = self->_fromStorage;
    *(a3 + 52) |= 0x10u;
  }

LABEL_5:
  if (self->_serviceIdentifier)
  {
    [a3 setServiceIdentifier:?];
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    *(a3 + 2) = self->_servertimestamp;
    *(a3 + 52) |= 2u;
    v6 = self->_has;
  }

  if (v6)
  {
    *(a3 + 1) = self->_localtimedelta;
    *(a3 + 52) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 52) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_accountType;
  *(v5 + 52) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    *(v5 + 48) = self->_fromStorage;
    *(v5 + 52) |= 0x10u;
  }

LABEL_5:

  *(v6 + 40) = [(NSString *)self->_serviceIdentifier copyWithZone:a3];
  v8 = self->_has;
  if ((v8 & 2) != 0)
  {
    *(v6 + 16) = self->_servertimestamp;
    *(v6 + 52) |= 2u;
    v8 = self->_has;
  }

  if (v8)
  {
    *(v6 + 8) = self->_localtimedelta;
    *(v6 + 52) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 52);
  if ((has & 4) != 0)
  {
    if ((*(a3 + 52) & 4) == 0 || self->_timestamp != *(a3 + 3))
    {
      goto LABEL_31;
    }
  }

  else if ((*(a3 + 52) & 4) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(a3 + 52) & 8) == 0 || self->_accountType != *(a3 + 8))
    {
      goto LABEL_31;
    }
  }

  else if ((*(a3 + 52) & 8) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(a3 + 52) & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 52) & 0x10) == 0)
  {
    goto LABEL_31;
  }

  v9 = *(a3 + 48);
  if (self->_fromStorage)
  {
    if ((*(a3 + 48) & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_14;
  }

  if (*(a3 + 48))
  {
    goto LABEL_31;
  }

LABEL_14:
  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier | *(a3 + 5))
  {
    v5 = [(NSString *)serviceIdentifier isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(a3 + 52) & 2) == 0 || self->_servertimestamp != *(a3 + 2))
    {
      goto LABEL_31;
    }
  }

  else if ((*(a3 + 52) & 2) != 0)
  {
    goto LABEL_31;
  }

  LOBYTE(v5) = (*(a3 + 52) & 1) == 0;
  if (has)
  {
    if ((*(a3 + 52) & 1) == 0 || self->_localtimedelta != *(a3 + 1))
    {
      goto LABEL_31;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_accountType;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_fromStorage;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSString *)self->_serviceIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761u * self->_servertimestamp;
    if (*&self->_has)
    {
      goto LABEL_10;
    }

LABEL_12:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v6;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v8 = 2654435761u * self->_localtimedelta;
  return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 52);
  if ((v5 & 4) != 0)
  {
    self->_timestamp = *(a3 + 3);
    *&self->_has |= 4u;
    v5 = *(a3 + 52);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a3 + 52) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_accountType = *(a3 + 8);
  *&self->_has |= 8u;
  if ((*(a3 + 52) & 0x10) != 0)
  {
LABEL_4:
    self->_fromStorage = *(a3 + 48);
    *&self->_has |= 0x10u;
  }

LABEL_5:
  if (*(a3 + 5))
  {
    [(AWDIDSNoteMessageReceived *)self setServiceIdentifier:?];
  }

  v6 = *(a3 + 52);
  if ((v6 & 2) != 0)
  {
    self->_servertimestamp = *(a3 + 2);
    *&self->_has |= 2u;
    v6 = *(a3 + 52);
  }

  if (v6)
  {
    self->_localtimedelta = *(a3 + 1);
    *&self->_has |= 1u;
  }
}

@end