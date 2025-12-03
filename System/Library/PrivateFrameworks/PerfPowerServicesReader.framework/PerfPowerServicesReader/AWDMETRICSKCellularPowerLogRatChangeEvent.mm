@interface AWDMETRICSKCellularPowerLogRatChangeEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEvent:(id)event;
- (int)event;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEvent:(BOOL)event;
- (void)setHasIsDataPreferred:(BOOL)preferred;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogRatChangeEvent

- (int)event
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_event;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEvent:(BOOL)event
{
  if (event)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isEqualToString:@"START_2G_TO_2G"])
  {
    v4 = 0;
  }

  else if ([eventCopy isEqualToString:@"START_2G_TO_3G"])
  {
    v4 = 4;
  }

  else if ([eventCopy isEqualToString:@"START_2G_TO_LTE"])
  {
    v4 = 8;
  }

  else if ([eventCopy isEqualToString:@"START_3G_TO_2G"])
  {
    v4 = 32;
  }

  else if ([eventCopy isEqualToString:@"START_3G_TO_3G"])
  {
    v4 = 36;
  }

  else if ([eventCopy isEqualToString:@"START_3G_TO_LTE"])
  {
    v4 = 40;
  }

  else if ([eventCopy isEqualToString:@"START_LTE_TO_2G"])
  {
    v4 = 64;
  }

  else if ([eventCopy isEqualToString:@"START_LTE_TO_3G"])
  {
    v4 = 68;
  }

  else if ([eventCopy isEqualToString:@"START_LTE_TO_LTE"])
  {
    v4 = 72;
  }

  else if ([eventCopy isEqualToString:@"START_LTE_TO_NR"])
  {
    v4 = 76;
  }

  else if ([eventCopy isEqualToString:@"START_NR_TO_LTE"])
  {
    v4 = 104;
  }

  else if ([eventCopy isEqualToString:@"START_NR_TO_NR"])
  {
    v4 = 108;
  }

  else if ([eventCopy isEqualToString:@"SUCCESS_2G_TO_2G"])
  {
    v4 = 1;
  }

  else if ([eventCopy isEqualToString:@"SUCCESS_2G_TO_3G"])
  {
    v4 = 5;
  }

  else if ([eventCopy isEqualToString:@"SUCCESS_2G_TO_LTE"])
  {
    v4 = 9;
  }

  else if ([eventCopy isEqualToString:@"SUCCESS_3G_TO_2G"])
  {
    v4 = 33;
  }

  else if ([eventCopy isEqualToString:@"SUCCESS_3G_TO_3G"])
  {
    v4 = 37;
  }

  else if ([eventCopy isEqualToString:@"SUCCESS_3G_TO_LTE"])
  {
    v4 = 41;
  }

  else if ([eventCopy isEqualToString:@"SUCCESS_LTE_TO_2G"])
  {
    v4 = 65;
  }

  else if ([eventCopy isEqualToString:@"SUCCESS_LTE_TO_3G"])
  {
    v4 = 69;
  }

  else if ([eventCopy isEqualToString:@"SUCCESS_LTE_TO_LTE"])
  {
    v4 = 73;
  }

  else if ([eventCopy isEqualToString:@"SUCCESS_LTE_TO_NR"])
  {
    v4 = 77;
  }

  else if ([eventCopy isEqualToString:@"SUCCESS_NR_TO_LTE"])
  {
    v4 = 105;
  }

  else if ([eventCopy isEqualToString:@"SUCCESS_NR_TO_NR"])
  {
    v4 = 109;
  }

  else if ([eventCopy isEqualToString:@"FAIL_2G_TO_2G"])
  {
    v4 = 2;
  }

  else if ([eventCopy isEqualToString:@"FAIL_2G_TO_3G"])
  {
    v4 = 6;
  }

  else if ([eventCopy isEqualToString:@"FAIL_2G_TO_LTE"])
  {
    v4 = 10;
  }

  else if ([eventCopy isEqualToString:@"FAIL_3G_TO_2G"])
  {
    v4 = 34;
  }

  else if ([eventCopy isEqualToString:@"FAIL_3G_TO_3G"])
  {
    v4 = 38;
  }

  else if ([eventCopy isEqualToString:@"FAIL_3G_TO_LTE"])
  {
    v4 = 42;
  }

  else if ([eventCopy isEqualToString:@"FAIL_LTE_TO_2G"])
  {
    v4 = 66;
  }

  else if ([eventCopy isEqualToString:@"FAIL_LTE_TO_3G"])
  {
    v4 = 70;
  }

  else if ([eventCopy isEqualToString:@"FAIL_LTE_TO_LTE"])
  {
    v4 = 74;
  }

  else if ([eventCopy isEqualToString:@"FAIL_LTE_TO_NR"])
  {
    v4 = 78;
  }

  else if ([eventCopy isEqualToString:@"FAIL_NR_TO_LTE"])
  {
    v4 = 106;
  }

  else if ([eventCopy isEqualToString:@"FAIL_NR_TO_NR"])
  {
    v4 = 110;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSubsId:(BOOL)id
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

- (void)setHasIsDataPreferred:(BOOL)preferred
{
  if (preferred)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogRatChangeEvent;
  v4 = [(AWDMETRICSKCellularPowerLogRatChangeEvent *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogRatChangeEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_72;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  event = self->_event;
  if (event > 63)
  {
    if (event > 75)
    {
      if (event <= 104)
      {
        if (event <= 77)
        {
          if (event == 76)
          {
            v9 = @"START_LTE_TO_NR";
          }

          else
          {
            v9 = @"SUCCESS_LTE_TO_NR";
          }

          goto LABEL_71;
        }

        if (event == 78)
        {
          v9 = @"FAIL_LTE_TO_NR";
          goto LABEL_71;
        }

        if (event == 104)
        {
          v9 = @"START_NR_TO_LTE";
          goto LABEL_71;
        }
      }

      else if (event <= 107)
      {
        if (event == 105)
        {
          v9 = @"SUCCESS_NR_TO_LTE";
          goto LABEL_71;
        }

        if (event == 106)
        {
          v9 = @"FAIL_NR_TO_LTE";
          goto LABEL_71;
        }
      }

      else
      {
        switch(event)
        {
          case 'l':
            v9 = @"START_NR_TO_NR";
            goto LABEL_71;
          case 'm':
            v9 = @"SUCCESS_NR_TO_NR";
            goto LABEL_71;
          case 'n':
            v9 = @"FAIL_NR_TO_NR";
            goto LABEL_71;
        }
      }
    }

    else if (event <= 68)
    {
      if (event <= 65)
      {
        if (event == 64)
        {
          v9 = @"START_LTE_TO_2G";
        }

        else
        {
          v9 = @"SUCCESS_LTE_TO_2G";
        }

        goto LABEL_71;
      }

      if (event == 66)
      {
        v9 = @"FAIL_LTE_TO_2G";
        goto LABEL_71;
      }

      if (event == 68)
      {
        v9 = @"START_LTE_TO_3G";
        goto LABEL_71;
      }
    }

    else if (event <= 71)
    {
      if (event == 69)
      {
        v9 = @"SUCCESS_LTE_TO_3G";
        goto LABEL_71;
      }

      if (event == 70)
      {
        v9 = @"FAIL_LTE_TO_3G";
        goto LABEL_71;
      }
    }

    else
    {
      switch(event)
      {
        case 'H':
          v9 = @"START_LTE_TO_LTE";
          goto LABEL_71;
        case 'I':
          v9 = @"SUCCESS_LTE_TO_LTE";
          goto LABEL_71;
        case 'J':
          v9 = @"FAIL_LTE_TO_LTE";
          goto LABEL_71;
      }
    }

LABEL_70:
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_event];
    goto LABEL_71;
  }

  v9 = @"START_2G_TO_2G";
  v10 = self->_event;
  switch(event)
  {
    case 0:
      break;
    case 1:
      v9 = @"SUCCESS_2G_TO_2G";
      break;
    case 2:
      v9 = @"FAIL_2G_TO_2G";
      break;
    case 4:
      v9 = @"START_2G_TO_3G";
      break;
    case 5:
      v9 = @"SUCCESS_2G_TO_3G";
      break;
    case 6:
      v9 = @"FAIL_2G_TO_3G";
      break;
    case 8:
      v9 = @"START_2G_TO_LTE";
      break;
    case 9:
      v9 = @"SUCCESS_2G_TO_LTE";
      break;
    case 10:
      v9 = @"FAIL_2G_TO_LTE";
      break;
    case 32:
      v9 = @"START_3G_TO_2G";
      break;
    case 33:
      v9 = @"SUCCESS_3G_TO_2G";
      break;
    case 34:
      v9 = @"FAIL_3G_TO_2G";
      break;
    case 36:
      v9 = @"START_3G_TO_3G";
      break;
    case 37:
      v9 = @"SUCCESS_3G_TO_3G";
      break;
    case 38:
      v9 = @"FAIL_3G_TO_3G";
      break;
    case 40:
      v9 = @"START_3G_TO_LTE";
      break;
    case 41:
      v9 = @"SUCCESS_3G_TO_LTE";
      break;
    case 42:
      v9 = @"FAIL_3G_TO_LTE";
      break;
    default:
      goto LABEL_70;
  }

LABEL_71:
  [dictionary setObject:v9 forKey:@"event"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_72:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [dictionary setObject:v11 forKey:@"subs_id"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDataPreferred];
    [dictionary setObject:v5 forKey:@"is_data_preferred"];
  }

LABEL_6:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  event = self->_event;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 4) = self->_event;
  *(toCopy + 28) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(toCopy + 5) = self->_subsId;
  *(toCopy + 28) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(toCopy + 24) = self->_isDataPreferred;
    *(toCopy + 28) |= 8u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_event;
  *(result + 28) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 5) = self->_subsId;
  *(result + 28) |= 4u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 24) = self->_isDataPreferred;
  *(result + 28) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_event != *(equalCopy + 4))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_subsId != *(equalCopy + 5))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
    goto LABEL_19;
  }

  v5 = (*(equalCopy + 28) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 28) & 8) == 0)
    {
LABEL_19:
      v5 = 0;
      goto LABEL_20;
    }

    if (self->_isDataPreferred)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_19;
    }

    v5 = 1;
  }

LABEL_20:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_event;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_subsId;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_isDataPreferred;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_event = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_subsId = *(fromCopy + 5);
  *&self->_has |= 4u;
  if ((*(fromCopy + 28) & 8) != 0)
  {
LABEL_5:
    self->_isDataPreferred = *(fromCopy + 24);
    *&self->_has |= 8u;
  }

LABEL_6:
}

@end