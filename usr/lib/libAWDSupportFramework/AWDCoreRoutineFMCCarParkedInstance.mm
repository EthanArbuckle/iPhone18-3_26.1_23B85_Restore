@interface AWDCoreRoutineFMCCarParkedInstance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasHorizontalAccuracy:(BOOL)accuracy;
- (void)setHasLocationType:(BOOL)type;
- (void)setHasQualityIndicator:(BOOL)indicator;
- (void)setHasTriggerTypes:(BOOL)types;
- (void)setHasUserAssistanceRequired:(BOOL)required;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineFMCCarParkedInstance

- (void)dealloc
{
  [(AWDCoreRoutineFMCCarParkedInstance *)self setParkingId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineFMCCarParkedInstance;
  [(AWDCoreRoutineFMCCarParkedInstance *)&v3 dealloc];
}

- (void)setHasTriggerTypes:(BOOL)types
{
  if (types)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasUserAssistanceRequired:(BOOL)required
{
  if (required)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasHorizontalAccuracy:(BOOL)accuracy
{
  if (accuracy)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasQualityIndicator:(BOOL)indicator
{
  if (indicator)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasLocationType:(BOOL)type
{
  if (type)
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
  v3.super_class = AWDCoreRoutineFMCCarParkedInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineFMCCarParkedInstance description](&v3, sel_description), -[AWDCoreRoutineFMCCarParkedInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  parkingId = self->_parkingId;
  if (parkingId)
  {
    [dictionary setObject:parkingId forKey:@"parkingId"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_triggerTypes), @"triggerTypes"}];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_userAssistanceRequired), @"userAssistanceRequired"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_qualityIndicator), @"qualityIndicator"}];
    if ((*&self->_has & 4) == 0)
    {
      return dictionary;
    }

    goto LABEL_10;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_horizontalAccuracy), @"horizontalAccuracy"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((has & 4) != 0)
  {
LABEL_10:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_locationType), @"locationType"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_parkingId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    triggerTypes = self->_triggerTypes;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_7;
  }

  userAssistanceRequired = self->_userAssistanceRequired;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    qualityIndicator = self->_qualityIndicator;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_13:
  horizontalAccuracy = self->_horizontalAccuracy;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_15:
  locationType = self->_locationType;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 44) |= 1u;
  }

  if (self->_parkingId)
  {
    [to setParkingId:?];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(to + 9) = self->_triggerTypes;
    *(to + 44) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_7;
  }

  *(to + 40) = self->_userAssistanceRequired;
  *(to + 44) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(to + 4) = self->_horizontalAccuracy;
  *(to + 44) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_15:
  *(to + 8) = self->_qualityIndicator;
  *(to + 44) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_10:
  *(to + 5) = self->_locationType;
  *(to + 44) |= 4u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 44) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_parkingId copyWithZone:zone];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v6 + 36) = self->_triggerTypes;
    *(v6 + 44) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 40) = self->_userAssistanceRequired;
  *(v6 + 44) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    *(v6 + 32) = self->_qualityIndicator;
    *(v6 + 44) |= 8u;
    if ((*&self->_has & 4) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

LABEL_12:
  *(v6 + 16) = self->_horizontalAccuracy;
  *(v6 + 44) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((has & 4) != 0)
  {
LABEL_8:
    *(v6 + 20) = self->_locationType;
    *(v6 + 44) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(equal + 44);
  if (has)
  {
    if ((*(equal + 44) & 1) == 0 || self->_timestamp != *(equal + 1))
    {
      goto LABEL_37;
    }
  }

  else if (*(equal + 44))
  {
    goto LABEL_37;
  }

  parkingId = self->_parkingId;
  if (parkingId | *(equal + 3))
  {
    v5 = [(NSString *)parkingId isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equal + 44) & 0x10) == 0 || self->_triggerTypes != *(equal + 9))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equal + 44) & 0x10) != 0)
  {
    goto LABEL_37;
  }

  if ((has & 0x20) != 0)
  {
    if ((*(equal + 44) & 0x20) != 0)
    {
      v9 = *(equal + 40);
      if (self->_userAssistanceRequired)
      {
        if ((*(equal + 40) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else if (*(equal + 40))
      {
        goto LABEL_37;
      }

      goto LABEL_17;
    }

LABEL_37:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 44) & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_17:
  if ((has & 2) != 0)
  {
    if ((*(equal + 44) & 2) == 0 || self->_horizontalAccuracy != *(equal + 4))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equal + 44) & 2) != 0)
  {
    goto LABEL_37;
  }

  if ((has & 8) != 0)
  {
    if ((*(equal + 44) & 8) == 0 || self->_qualityIndicator != *(equal + 8))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equal + 44) & 8) != 0)
  {
    goto LABEL_37;
  }

  LOBYTE(v5) = (*(equal + 44) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(equal + 44) & 4) == 0 || self->_locationType != *(equal + 5))
    {
      goto LABEL_37;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_parkingId hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v5 = 2654435761 * self->_triggerTypes;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_userAssistanceRequired;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_horizontalAccuracy;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = 2654435761 * self->_qualityIndicator;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = 2654435761 * self->_locationType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 44))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(AWDCoreRoutineFMCCarParkedInstance *)self setParkingId:?];
  }

  v5 = *(from + 44);
  if ((v5 & 0x10) != 0)
  {
    self->_triggerTypes = *(from + 9);
    *&self->_has |= 0x10u;
    v5 = *(from + 44);
    if ((v5 & 0x20) == 0)
    {
LABEL_7:
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*(from + 44) & 0x20) == 0)
  {
    goto LABEL_7;
  }

  self->_userAssistanceRequired = *(from + 40);
  *&self->_has |= 0x20u;
  v5 = *(from + 44);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_horizontalAccuracy = *(from + 4);
  *&self->_has |= 2u;
  v5 = *(from + 44);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_15:
  self->_qualityIndicator = *(from + 8);
  *&self->_has |= 8u;
  if ((*(from + 44) & 4) == 0)
  {
    return;
  }

LABEL_10:
  self->_locationType = *(from + 5);
  *&self->_has |= 4u;
}

@end