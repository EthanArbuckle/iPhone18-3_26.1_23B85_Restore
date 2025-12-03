@interface AWDCoreRoutineHeroAppSuggestionInstance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasInstalled:(BOOL)installed;
- (void)setHasLat:(BOOL)lat;
- (void)setHasLon:(BOOL)lon;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineHeroAppSuggestionInstance

- (void)dealloc
{
  [(AWDCoreRoutineHeroAppSuggestionInstance *)self setSuggestionId:0];
  [(AWDCoreRoutineHeroAppSuggestionInstance *)self setBundleId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineHeroAppSuggestionInstance;
  [(AWDCoreRoutineHeroAppSuggestionInstance *)&v3 dealloc];
}

- (void)setHasLat:(BOOL)lat
{
  if (lat)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasLon:(BOOL)lon
{
  if (lon)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasInstalled:(BOOL)installed
{
  if (installed)
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
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineHeroAppSuggestionInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineHeroAppSuggestionInstance description](&v3, sel_description), -[AWDCoreRoutineHeroAppSuggestionInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  suggestionId = self->_suggestionId;
  if (suggestionId)
  {
    [dictionary setObject:suggestionId forKey:@"suggestionId"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_lon), @"lon"}];
    if ((*&self->_has & 8) == 0)
    {
      return dictionary;
    }

    goto LABEL_10;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_lat), @"lat"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((has & 8) != 0)
  {
LABEL_10:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_installed), @"installed"}];
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

  if (self->_suggestionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    lat = self->_lat;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  installed = self->_installed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_13:
  lon = self->_lon;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 44) |= 1u;
  }

  if (self->_suggestionId)
  {
    [to setSuggestionId:?];
  }

  if (self->_bundleId)
  {
    [to setBundleId:?];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(to + 40) = self->_installed;
    *(to + 44) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 4) == 0)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  *(to + 6) = self->_lat;
  *(to + 44) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_10:
  *(to + 7) = self->_lon;
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

  *(v6 + 32) = [(NSString *)self->_suggestionId copyWithZone:zone];
  *(v6 + 16) = [(NSString *)self->_bundleId copyWithZone:zone];
  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 24) = self->_lat;
    *(v6 + 44) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 40) = self->_installed;
  *(v6 + 44) |= 8u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 4) != 0)
  {
LABEL_6:
    *(v6 + 28) = self->_lon;
    *(v6 + 44) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 44);
    if (*&self->_has)
    {
      if ((*(equal + 44) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_27;
      }
    }

    else if (*(equal + 44))
    {
      goto LABEL_27;
    }

    suggestionId = self->_suggestionId;
    if (!(suggestionId | *(equal + 4)) || (v5 = [(NSString *)suggestionId isEqual:?]) != 0)
    {
      bundleId = self->_bundleId;
      if (!(bundleId | *(equal + 2)) || (v5 = [(NSString *)bundleId isEqual:?]) != 0)
      {
        if ((*&self->_has & 8) != 0)
        {
          if ((*(equal + 44) & 8) != 0)
          {
            v9 = *(equal + 40);
            if (self->_installed)
            {
              if ((*(equal + 40) & 1) == 0)
              {
                goto LABEL_27;
              }

              goto LABEL_13;
            }

            if ((*(equal + 40) & 1) == 0)
            {
LABEL_13:
              if ((*&self->_has & 2) != 0)
              {
                if ((*(equal + 44) & 2) == 0 || self->_lat != *(equal + 6))
                {
                  goto LABEL_27;
                }
              }

              else if ((*(equal + 44) & 2) != 0)
              {
                goto LABEL_27;
              }

              LOBYTE(v5) = (*(equal + 44) & 4) == 0;
              if ((*&self->_has & 4) != 0)
              {
                if ((*(equal + 44) & 4) == 0 || self->_lon != *(equal + 7))
                {
                  goto LABEL_27;
                }

                LOBYTE(v5) = 1;
              }

              return v5;
            }
          }
        }

        else if ((*(equal + 44) & 8) == 0)
        {
          goto LABEL_13;
        }

LABEL_27:
        LOBYTE(v5) = 0;
      }
    }
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

  v4 = [(NSString *)self->_suggestionId hash];
  v5 = [(NSString *)self->_bundleId hash];
  if ((*&self->_has & 8) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v6 = 2654435761 * self->_installed;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = 2654435761 * self->_lat;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = 2654435761 * self->_lon;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 44))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 4))
  {
    [(AWDCoreRoutineHeroAppSuggestionInstance *)self setSuggestionId:?];
  }

  if (*(from + 2))
  {
    [(AWDCoreRoutineHeroAppSuggestionInstance *)self setBundleId:?];
  }

  v5 = *(from + 44);
  if ((v5 & 8) != 0)
  {
    self->_installed = *(from + 40);
    *&self->_has |= 8u;
    v5 = *(from + 44);
    if ((v5 & 2) == 0)
    {
LABEL_9:
      if ((v5 & 4) == 0)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if ((*(from + 44) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_lat = *(from + 6);
  *&self->_has |= 2u;
  if ((*(from + 44) & 4) == 0)
  {
    return;
  }

LABEL_10:
  self->_lon = *(from + 7);
  *&self->_has |= 4u;
}

@end