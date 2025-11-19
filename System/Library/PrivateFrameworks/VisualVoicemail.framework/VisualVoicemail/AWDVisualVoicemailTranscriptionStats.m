@interface AWDVisualVoicemailTranscriptionStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConfidencelevel:(BOOL)a3;
- (void)setHasResult:(BOOL)a3;
- (void)setHasSubsid:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDVisualVoicemailTranscriptionStats

- (void)setHasResult:(BOOL)a3
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

- (void)setHasConfidencelevel:(BOOL)a3
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
  v7.receiver = self;
  v7.super_class = AWDVisualVoicemailTranscriptionStats;
  v3 = [(AWDVisualVoicemailTranscriptionStats *)&v7 description];
  v4 = [(AWDVisualVoicemailTranscriptionStats *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v11 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v11 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  v12 = [NSNumber numberWithBool:self->_result];
  [v3 setObject:v12 forKey:@"result"];

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

  if ((*&self->_has & 2) != 0)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_confidencelevel];
    [v3 setObject:v8 forKey:@"confidencelevel"];
  }

  language = self->_language;
  if (language)
  {
    [v3 setObject:language forKey:@"language"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v10 = v4;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v10;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  result = self->_result;
  PBDataWriterWriteBOOLField();
  v4 = v10;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    subsid = self->_subsid;
    PBDataWriterWriteUint32Field();
    v4 = v10;
  }

LABEL_5:
  if (self->_mcc)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_mnc)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    confidencelevel = self->_confidencelevel;
    PBDataWriterWriteUint32Field();
    v4 = v10;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 56) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  *(v4 + 52) = self->_result;
  *(v4 + 56) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v4 + 12) = self->_subsid;
    *(v4 + 56) |= 4u;
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

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 4) = self->_confidencelevel;
    *(v4 + 56) |= 2u;
  }

  if (self->_language)
  {
    [v6 setLanguage:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 56) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  *(v5 + 52) = self->_result;
  *(v5 + 56) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 12) = self->_subsid;
    *(v5 + 56) |= 4u;
  }

LABEL_5:
  v8 = [(NSString *)self->_mcc copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  v10 = [(NSString *)self->_mnc copyWithZone:a3];
  v11 = v6[5];
  v6[5] = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 4) = self->_confidencelevel;
    *(v6 + 56) |= 2u;
  }

  v12 = [(NSString *)self->_language copyWithZone:a3];
  v13 = v6[3];
  v6[3] = v12;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  v5 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(v4 + 56) & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_31:
    v11 = 0;
    goto LABEL_32;
  }

  if ((*(v4 + 56) & 8) == 0)
  {
    goto LABEL_31;
  }

  v6 = *(v4 + 52);
  if (self->_result)
  {
    if ((*(v4 + 52) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_31;
  }

LABEL_9:
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_subsid != *(v4 + 12))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_31;
  }

  mcc = self->_mcc;
  if (mcc | *(v4 + 4) && ![(NSString *)mcc isEqual:?])
  {
    goto LABEL_31;
  }

  mnc = self->_mnc;
  if (mnc | *(v4 + 5))
  {
    if (![(NSString *)mnc isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v9 = *(v4 + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_confidencelevel != *(v4 + 4))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_31;
  }

  language = self->_language;
  if (language | *(v4 + 3))
  {
    v11 = [(NSString *)language isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_32:

  return v11;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
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
  v4 = 2654435761 * self->_result;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_subsid;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSString *)self->_mcc hash];
  v7 = [(NSString *)self->_mnc hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_confidencelevel;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_language hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 56);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 56);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 56) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_result = *(v4 + 52);
  *&self->_has |= 8u;
  if ((*(v4 + 56) & 4) != 0)
  {
LABEL_4:
    self->_subsid = *(v4 + 12);
    *&self->_has |= 4u;
  }

LABEL_5:
  v6 = v4;
  if (*(v4 + 4))
  {
    [(AWDVisualVoicemailTranscriptionStats *)self setMcc:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(AWDVisualVoicemailTranscriptionStats *)self setMnc:?];
    v4 = v6;
  }

  if ((*(v4 + 56) & 2) != 0)
  {
    self->_confidencelevel = *(v4 + 4);
    *&self->_has |= 2u;
  }

  if (*(v4 + 3))
  {
    [(AWDVisualVoicemailTranscriptionStats *)self setLanguage:?];
    v4 = v6;
  }
}

@end