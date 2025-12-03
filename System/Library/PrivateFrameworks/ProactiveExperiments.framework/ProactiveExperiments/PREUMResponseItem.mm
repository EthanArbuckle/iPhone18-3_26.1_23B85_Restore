@interface PREUMResponseItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsCustomResponse:(BOOL)response;
- (void)setHasIsRobotResponse:(BOOL)response;
- (void)setHasReplyTextId:(BOOL)id;
- (void)setHasResponseClassId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation PREUMResponseItem

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if (v5)
  {
    self->_modelId = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_responseClassId = *(fromCopy + 4);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 24);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_replyTextId = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 24);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_isCustomResponse = *(fromCopy + 20);
  *&self->_has |= 8u;
  if ((*(fromCopy + 24) & 0x10) != 0)
  {
LABEL_6:
    self->_isRobotResponse = *(fromCopy + 21);
    *&self->_has |= 0x10u;
  }

LABEL_7:
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_modelId;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_responseClassId;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_replyTextId;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_isCustomResponse;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_isRobotResponse;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_modelId != *(equalCopy + 2))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0 || self->_responseClassId != *(equalCopy + 4))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 24) & 4) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_replyTextId != *(equalCopy + 3))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 24) & 8) == 0)
    {
      goto LABEL_25;
    }

    v7 = *(equalCopy + 20);
    if (self->_isCustomResponse)
    {
      if ((*(equalCopy + 20) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (*(equalCopy + 20))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 24) & 8) != 0)
  {
    goto LABEL_25;
  }

  v5 = (*(equalCopy + 24) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 24) & 0x10) != 0)
    {
      if (self->_isRobotResponse)
      {
        if (*(equalCopy + 21))
        {
          goto LABEL_33;
        }
      }

      else if (!*(equalCopy + 21))
      {
LABEL_33:
        v5 = 1;
        goto LABEL_26;
      }
    }

LABEL_25:
    v5 = 0;
  }

LABEL_26:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_modelId;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_responseClassId;
  *(result + 24) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 3) = self->_replyTextId;
  *(result + 24) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 20) = self->_isCustomResponse;
  *(result + 24) |= 8u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 21) = self->_isRobotResponse;
  *(result + 24) |= 0x10u;
  return result;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_modelId;
    *(toCopy + 24) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[4] = self->_responseClassId;
  *(toCopy + 24) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  toCopy[3] = self->_replyTextId;
  *(toCopy + 24) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  *(toCopy + 20) = self->_isCustomResponse;
  *(toCopy + 24) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(toCopy + 21) = self->_isRobotResponse;
    *(toCopy + 24) |= 0x10u;
  }

LABEL_7:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    modelId = self->_modelId;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  responseClassId = self->_responseClassId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  replyTextId = self->_replyTextId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  isCustomResponse = self->_isCustomResponse;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    isRobotResponse = self->_isRobotResponse;
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_modelId];
    [dictionary setObject:v7 forKey:@"model_id"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_responseClassId];
  [dictionary setObject:v8 forKey:@"response_class_id"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_replyTextId];
  [dictionary setObject:v9 forKey:@"reply_text_id"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCustomResponse];
  [dictionary setObject:v10 forKey:@"is_custom_response"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isRobotResponse];
    [dictionary setObject:v5 forKey:@"is_robot_response"];
  }

LABEL_7:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PREUMResponseItem;
  v4 = [(PREUMResponseItem *)&v8 description];
  dictionaryRepresentation = [(PREUMResponseItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasIsRobotResponse:(BOOL)response
{
  if (response)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsCustomResponse:(BOOL)response
{
  if (response)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasReplyTextId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasResponseClassId:(BOOL)id
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

@end