@interface AWDWifiAwdlServiceRecord
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasOpcode:(BOOL)a3;
- (void)setHasServiceId:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWifiAwdlServiceRecord

- (void)dealloc
{
  [(AWDWifiAwdlServiceRecord *)self setServiceKey:0];
  v3.receiver = self;
  v3.super_class = AWDWifiAwdlServiceRecord;
  [(AWDWifiAwdlServiceRecord *)&v3 dealloc];
}

- (void)setHasOpcode:(BOOL)a3
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

- (void)setHasType:(BOOL)a3
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

- (void)setHasServiceId:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWifiAwdlServiceRecord;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWifiAwdlServiceRecord description](&v3, sel_description), -[AWDWifiAwdlServiceRecord dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_opcode), @"opcode"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_type), @"type"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_serviceId), @"serviceId"}];
  if (*&self->_has)
  {
LABEL_5:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
  }

LABEL_6:
  serviceKey = self->_serviceKey;
  if (serviceKey)
  {
    [v3 setObject:serviceKey forKey:@"serviceKey"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    opcode = self->_opcode;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  serviceId = self->_serviceId;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_5:
    duration = self->_duration;
    PBDataWriterWriteUint64Field();
  }

LABEL_6:
  if (self->_serviceKey)
  {

    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 4) = self->_opcode;
    *(a3 + 36) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 8) = self->_type;
  *(a3 + 36) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  *(a3 + 5) = self->_serviceId;
  *(a3 + 36) |= 4u;
  if (*&self->_has)
  {
LABEL_5:
    *(a3 + 1) = self->_duration;
    *(a3 + 36) |= 1u;
  }

LABEL_6:
  serviceKey = self->_serviceKey;
  if (serviceKey)
  {
    [a3 setServiceKey:serviceKey];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_opcode;
    *(v5 + 36) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 20) = self->_serviceId;
      *(v5 + 36) |= 4u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_type;
  *(v5 + 36) |= 8u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    *(v5 + 8) = self->_duration;
    *(v5 + 36) |= 1u;
  }

LABEL_6:

  v6[3] = [(NSData *)self->_serviceKey copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 36);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 36) & 2) == 0 || self->_opcode != *(a3 + 4))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 36) & 2) != 0)
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 36) & 8) == 0 || self->_type != *(a3 + 8))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 36) & 8) != 0)
    {
      goto LABEL_24;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 36) & 4) == 0 || self->_serviceId != *(a3 + 5))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 36) & 4) != 0)
    {
      goto LABEL_24;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 36) & 1) == 0 || self->_duration != *(a3 + 1))
      {
        goto LABEL_24;
      }
    }

    else if (*(a3 + 36))
    {
      goto LABEL_24;
    }

    serviceKey = self->_serviceKey;
    if (serviceKey | *(a3 + 3))
    {

      LOBYTE(v5) = [(NSData *)serviceKey isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_opcode;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_type;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      return v7 ^ v6 ^ v8 ^ v9 ^ [(NSData *)self->_serviceKey hash:v3];
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761 * self->_serviceId;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761u * self->_duration;
  return v7 ^ v6 ^ v8 ^ v9 ^ [(NSData *)self->_serviceKey hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 36);
  if ((v3 & 2) != 0)
  {
    self->_opcode = *(a3 + 4);
    *&self->_has |= 2u;
    v3 = *(a3 + 36);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a3 + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_type = *(a3 + 8);
  *&self->_has |= 8u;
  v3 = *(a3 + 36);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  self->_serviceId = *(a3 + 5);
  *&self->_has |= 4u;
  if (*(a3 + 36))
  {
LABEL_5:
    self->_duration = *(a3 + 1);
    *&self->_has |= 1u;
  }

LABEL_6:
  if (*(a3 + 3))
  {
    [(AWDWifiAwdlServiceRecord *)self setServiceKey:?];
  }
}

@end