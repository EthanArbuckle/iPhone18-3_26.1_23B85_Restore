@interface AWDSpringBoardAppBrightness
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDSpringBoardAppBrightness

- (void)dealloc
{
  [(AWDSpringBoardAppBrightness *)self setAppBundleID:0];
  v3.receiver = self;
  v3.super_class = AWDSpringBoardAppBrightness;
  [(AWDSpringBoardAppBrightness *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  appBundleID = self->_appBundleID;
  if (appBundleID)
  {
    [dictionary setObject:appBundleID forKey:@"appBundleID"];
  }

  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_brightness), @"brightness"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if ((*&self->_has & 4) != 0)
  {
    *(to + 3) = self->_timestamp;
    *(to + 40) |= 4u;
  }

  if (self->_appBundleID)
  {
    [to setAppBundleID:?];
  }

  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_brightness;
    *(to + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 2) = self->_duration;
    *(to + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 40) |= 4u;
  }

  *(v6 + 32) = [(NSString *)self->_appBundleID copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 40);
    if ((has & 4) != 0)
    {
      if ((*(equal + 40) & 4) == 0 || self->_timestamp != *(equal + 3))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 40) & 4) != 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    appBundleID = self->_appBundleID;
    if (appBundleID | *(equal + 4))
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
      if ((*(equal + 40) & 1) == 0 || self->_brightness != *(equal + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(equal + 40))
    {
      goto LABEL_19;
    }

    LOBYTE(v5) = (*(equal + 40) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(equal + 40) & 2) == 0 || self->_duration != *(equal + 2))
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

- (void)mergeFrom:(id)from
{
  if ((*(from + 40) & 4) != 0)
  {
    self->_timestamp = *(from + 3);
    *&self->_has |= 4u;
  }

  if (*(from + 4))
  {
    [(AWDSpringBoardAppBrightness *)self setAppBundleID:?];
  }

  v5 = *(from + 40);
  if (v5)
  {
    self->_brightness = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 40);
  }

  if ((v5 & 2) != 0)
  {
    self->_duration = *(from + 2);
    *&self->_has |= 2u;
  }
}

@end