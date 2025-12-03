@interface AWDWifiAwdlServiceRecord
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasOpcode:(BOOL)opcode;
- (void)setHasServiceId:(BOOL)id;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDWifiAwdlServiceRecord

- (void)dealloc
{
  [(AWDWifiAwdlServiceRecord *)self setServiceKey:0];
  v3.receiver = self;
  v3.super_class = AWDWifiAwdlServiceRecord;
  [(AWDWifiAwdlServiceRecord *)&v3 dealloc];
}

- (void)setHasOpcode:(BOOL)opcode
{
  if (opcode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasServiceId:(BOOL)id
{
  if (id)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_opcode), @"opcode"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_type), @"type"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_serviceId), @"serviceId"}];
  if (*&self->_has)
  {
LABEL_5:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
  }

LABEL_6:
  serviceKey = self->_serviceKey;
  if (serviceKey)
  {
    [dictionary setObject:serviceKey forKey:@"serviceKey"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 4) = self->_opcode;
    *(to + 36) |= 2u;
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

  *(to + 8) = self->_type;
  *(to + 36) |= 8u;
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
  *(to + 5) = self->_serviceId;
  *(to + 36) |= 4u;
  if (*&self->_has)
  {
LABEL_5:
    *(to + 1) = self->_duration;
    *(to + 36) |= 1u;
  }

LABEL_6:
  serviceKey = self->_serviceKey;
  if (serviceKey)
  {
    [to setServiceKey:serviceKey];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v6[3] = [(NSData *)self->_serviceKey copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 36);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 36) & 2) == 0 || self->_opcode != *(equal + 4))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 36) & 2) != 0)
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 36) & 8) == 0 || self->_type != *(equal + 8))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 36) & 8) != 0)
    {
      goto LABEL_24;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 36) & 4) == 0 || self->_serviceId != *(equal + 5))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 36) & 4) != 0)
    {
      goto LABEL_24;
    }

    if (*&self->_has)
    {
      if ((*(equal + 36) & 1) == 0 || self->_duration != *(equal + 1))
      {
        goto LABEL_24;
      }
    }

    else if (*(equal + 36))
    {
      goto LABEL_24;
    }

    serviceKey = self->_serviceKey;
    if (serviceKey | *(equal + 3))
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

- (void)mergeFrom:(id)from
{
  v3 = *(from + 36);
  if ((v3 & 2) != 0)
  {
    self->_opcode = *(from + 4);
    *&self->_has |= 2u;
    v3 = *(from + 36);
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

  else if ((*(from + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_type = *(from + 8);
  *&self->_has |= 8u;
  v3 = *(from + 36);
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
  self->_serviceId = *(from + 5);
  *&self->_has |= 4u;
  if (*(from + 36))
  {
LABEL_5:
    self->_duration = *(from + 1);
    *&self->_has |= 1u;
  }

LABEL_6:
  if (*(from + 3))
  {
    [(AWDWifiAwdlServiceRecord *)self setServiceKey:?];
  }
}

@end