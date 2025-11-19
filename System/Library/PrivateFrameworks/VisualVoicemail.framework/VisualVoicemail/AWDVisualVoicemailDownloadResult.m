@interface AWDVisualVoicemailDownloadResult
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasResult:(BOOL)a3;
- (void)setHasSubsid:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDVisualVoicemailDownloadResult

- (void)setHasResult:(BOOL)a3
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

- (void)setHasSubsid:(BOOL)a3
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
  v7.receiver = self;
  v7.super_class = AWDVisualVoicemailDownloadResult;
  v3 = [(AWDVisualVoicemailDownloadResult *)&v7 description];
  v4 = [(AWDVisualVoicemailDownloadResult *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v9 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [NSNumber numberWithUnsignedInt:self->_result];
  [v3 setObject:v10 forKey:@"result"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [NSNumber numberWithUnsignedInt:self->_subsid];
    [v3 setObject:v5 forKey:@"subsid"];
  }

LABEL_5:
  mcc = self->_mcc;
  if (mcc)
  {
    [v3 setObject:mcc forKey:@"mcc"];
  }

  mnc = self->_mnc;
  if (mnc)
  {
    [v3 setObject:mnc forKey:@"mnc"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  result = self->_result;
  PBDataWriterWriteUint32Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    subsid = self->_subsid;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

LABEL_5:
  if (self->_mcc)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_mnc)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 40) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 8) = self->_result;
  *(v4 + 40) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v4 + 9) = self->_subsid;
    *(v4 + 40) |= 4u;
  }

LABEL_5:
  v6 = v4;
  if (self->_mcc)
  {
    [v4 setMcc:?];
    v4 = v6;
  }

  if (self->_mnc)
  {
    [v6 setMnc:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 8) = self->_result;
    *(v5 + 40) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v5[1] = self->_timestamp;
  *(v5 + 40) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 9) = self->_subsid;
    *(v5 + 40) |= 4u;
  }

LABEL_5:
  v8 = [(NSString *)self->_mcc copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  v10 = [(NSString *)self->_mnc copyWithZone:a3];
  v11 = v6[3];
  v6[3] = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_result != *(v4 + 8))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_subsid != *(v4 + 9))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_21;
  }

  mcc = self->_mcc;
  if (mcc | *(v4 + 2) && ![(NSString *)mcc isEqual:?])
  {
    goto LABEL_21;
  }

  mnc = self->_mnc;
  if (mnc | *(v4 + 3))
  {
    v8 = [(NSString *)mnc isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_22:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_result;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_subsid;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_mcc hash];
  return v6 ^ [(NSString *)self->_mnc hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_result = *(v4 + 8);
  *&self->_has |= 2u;
  if ((*(v4 + 40) & 4) != 0)
  {
LABEL_4:
    self->_subsid = *(v4 + 9);
    *&self->_has |= 4u;
  }

LABEL_5:
  v6 = v4;
  if (*(v4 + 2))
  {
    [(AWDVisualVoicemailDownloadResult *)self setMcc:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(AWDVisualVoicemailDownloadResult *)self setMnc:?];
    v4 = v6;
  }
}

@end