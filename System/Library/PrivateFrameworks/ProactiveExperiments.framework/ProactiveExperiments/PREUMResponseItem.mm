@interface PREUMResponseItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsCustomResponse:(BOOL)a3;
- (void)setHasIsRobotResponse:(BOOL)a3;
- (void)setHasReplyTextId:(BOOL)a3;
- (void)setHasResponseClassId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PREUMResponseItem

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    self->_modelId = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
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

  else if ((*(v4 + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_responseClassId = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 24);
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
  self->_replyTextId = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 24);
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
  self->_isCustomResponse = *(v4 + 20);
  *&self->_has |= 8u;
  if ((*(v4 + 24) & 0x10) != 0)
  {
LABEL_6:
    self->_isRobotResponse = *(v4 + 21);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_modelId != *(v4 + 2))
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_responseClassId != *(v4 + 4))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 24) & 4) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_replyTextId != *(v4 + 3))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 24) & 8) == 0)
    {
      goto LABEL_25;
    }

    v7 = *(v4 + 20);
    if (self->_isCustomResponse)
    {
      if ((*(v4 + 20) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (*(v4 + 20))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 24) & 8) != 0)
  {
    goto LABEL_25;
  }

  v5 = (*(v4 + 24) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 24) & 0x10) != 0)
    {
      if (self->_isRobotResponse)
      {
        if (*(v4 + 21))
        {
          goto LABEL_33;
        }
      }

      else if (!*(v4 + 21))
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

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_modelId;
    *(v4 + 24) |= 1u;
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

  v4[4] = self->_responseClassId;
  *(v4 + 24) |= 4u;
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
  v4[3] = self->_replyTextId;
  *(v4 + 24) |= 2u;
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
  *(v4 + 20) = self->_isCustomResponse;
  *(v4 + 24) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(v4 + 21) = self->_isRobotResponse;
    *(v4 + 24) |= 0x10u;
  }

LABEL_7:
}

- (void)writeTo:(id)a3
{
  v10 = a3;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_modelId];
    [v3 setObject:v7 forKey:@"model_id"];

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
  [v3 setObject:v8 forKey:@"response_class_id"];

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
  [v3 setObject:v9 forKey:@"reply_text_id"];

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
  [v3 setObject:v10 forKey:@"is_custom_response"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isRobotResponse];
    [v3 setObject:v5 forKey:@"is_robot_response"];
  }

LABEL_7:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PREUMResponseItem;
  v4 = [(PREUMResponseItem *)&v8 description];
  v5 = [(PREUMResponseItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasIsRobotResponse:(BOOL)a3
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

- (void)setHasIsCustomResponse:(BOOL)a3
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

- (void)setHasReplyTextId:(BOOL)a3
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

- (void)setHasResponseClassId:(BOOL)a3
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

@end