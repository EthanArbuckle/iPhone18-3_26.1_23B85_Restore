@interface AWDVisualVoicemailTranscriptionStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConfidencelevel:(BOOL)confidencelevel;
- (void)setHasResult:(BOOL)result;
- (void)setHasSubsid:(BOOL)subsid;
- (void)writeTo:(id)to;
@end

@implementation AWDVisualVoicemailTranscriptionStats

- (void)setHasResult:(BOOL)result
{
  if (result)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSubsid:(BOOL)subsid
{
  if (subsid)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasConfidencelevel:(BOOL)confidencelevel
{
  if (confidencelevel)
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
  dictionaryRepresentation = [(AWDVisualVoicemailTranscriptionStats *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v10 = toCopy;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v10;
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
  toCopy = v10;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    subsid = self->_subsid;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
  }

LABEL_5:
  if (self->_mcc)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_mnc)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    confidencelevel = self->_confidencelevel;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 56) |= 1u;
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

  *(toCopy + 52) = self->_result;
  *(toCopy + 56) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(toCopy + 12) = self->_subsid;
    *(toCopy + 56) |= 4u;
  }

LABEL_5:
  v6 = toCopy;
  if (self->_mcc)
  {
    [toCopy setMcc:?];
    toCopy = v6;
  }

  if (self->_mnc)
  {
    [v6 setMnc:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 4) = self->_confidencelevel;
    *(toCopy + 56) |= 2u;
  }

  if (self->_language)
  {
    [v6 setLanguage:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(NSString *)self->_mcc copyWithZone:zone];
  v9 = v6[4];
  v6[4] = v8;

  v10 = [(NSString *)self->_mnc copyWithZone:zone];
  v11 = v6[5];
  v6[5] = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 4) = self->_confidencelevel;
    *(v6 + 56) |= 2u;
  }

  v12 = [(NSString *)self->_language copyWithZone:zone];
  v13 = v6[3];
  v6[3] = v12;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  v5 = *(equalCopy + 56);
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 56) & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_31:
    v11 = 0;
    goto LABEL_32;
  }

  if ((*(equalCopy + 56) & 8) == 0)
  {
    goto LABEL_31;
  }

  v6 = *(equalCopy + 52);
  if (self->_result)
  {
    if ((*(equalCopy + 52) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_31;
  }

LABEL_9:
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_subsid != *(equalCopy + 12))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_31;
  }

  mcc = self->_mcc;
  if (mcc | *(equalCopy + 4) && ![(NSString *)mcc isEqual:?])
  {
    goto LABEL_31;
  }

  mnc = self->_mnc;
  if (mnc | *(equalCopy + 5))
  {
    if (![(NSString *)mnc isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v9 = *(equalCopy + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_confidencelevel != *(equalCopy + 4))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_31;
  }

  language = self->_language;
  if (language | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 56);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 56);
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

  else if ((*(fromCopy + 56) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_result = *(fromCopy + 52);
  *&self->_has |= 8u;
  if ((*(fromCopy + 56) & 4) != 0)
  {
LABEL_4:
    self->_subsid = *(fromCopy + 12);
    *&self->_has |= 4u;
  }

LABEL_5:
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(AWDVisualVoicemailTranscriptionStats *)self setMcc:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(AWDVisualVoicemailTranscriptionStats *)self setMnc:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 56) & 2) != 0)
  {
    self->_confidencelevel = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 3))
  {
    [(AWDVisualVoicemailTranscriptionStats *)self setLanguage:?];
    fromCopy = v6;
  }
}

@end