@interface AWDSpringBoardAppBrightness
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSpringBoardAppBrightness

- (void)dealloc
{
  [(AWDSpringBoardAppBrightness *)self setAppBundleID:0];
  v3.receiver = self;
  v3.super_class = AWDSpringBoardAppBrightness;
  [(AWDSpringBoardAppBrightness *)&v3 dealloc];
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

- (void)setHasDuration:(BOOL)a3
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
  v3.super_class = AWDSpringBoardAppBrightness;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSpringBoardAppBrightness description](&v3, sel_description), -[AWDSpringBoardAppBrightness dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  appBundleID = self->_appBundleID;
  if (appBundleID)
  {
    [v3 setObject:appBundleID forKey:@"appBundleID"];
  }

  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_brightness), @"brightness"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if ((*&self->_has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_appBundleID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    brightness = self->_brightness;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    duration = self->_duration;

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 4) != 0)
  {
    *(a3 + 3) = self->_timestamp;
    *(a3 + 40) |= 4u;
  }

  if (self->_appBundleID)
  {
    [a3 setAppBundleID:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_brightness;
    *(a3 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_duration;
    *(a3 + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 40) |= 4u;
  }

  *(v6 + 32) = [(NSString *)self->_appBundleID copyWithZone:a3];
  has = self->_has;
  if (has)
  {
    *(v6 + 8) = self->_brightness;
    *(v6 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_duration;
    *(v6 + 40) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 40);
    if ((has & 4) != 0)
    {
      if ((*(a3 + 40) & 4) == 0 || self->_timestamp != *(a3 + 3))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 40) & 4) != 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    appBundleID = self->_appBundleID;
    if (appBundleID | *(a3 + 4))
    {
      v5 = [(NSString *)appBundleID isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if (has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_brightness != *(a3 + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(a3 + 40))
    {
      goto LABEL_19;
    }

    LOBYTE(v5) = (*(a3 + 40) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(a3 + 40) & 2) == 0 || self->_duration != *(a3 + 2))
      {
        goto LABEL_19;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_appBundleID hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_brightness;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761u * self->_duration;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 40) & 4) != 0)
  {
    self->_timestamp = *(a3 + 3);
    *&self->_has |= 4u;
  }

  if (*(a3 + 4))
  {
    [(AWDSpringBoardAppBrightness *)self setAppBundleID:?];
  }

  v5 = *(a3 + 40);
  if (v5)
  {
    self->_brightness = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 40);
  }

  if ((v5 & 2) != 0)
  {
    self->_duration = *(a3 + 2);
    *&self->_has |= 2u;
  }
}

@end