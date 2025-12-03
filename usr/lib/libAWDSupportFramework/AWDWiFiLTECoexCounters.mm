@interface AWDWiFiLTECoexCounters
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiLTECoexCounters

- (void)dealloc
{
  [(AWDWiFiLTECoexCounters *)self setNoLTECoexBin:0];
  [(AWDWiFiLTECoexCounters *)self setLightLTECoexBin:0];
  [(AWDWiFiLTECoexCounters *)self setHeavyLTECoexBin:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiLTECoexCounters;
  [(AWDWiFiLTECoexCounters *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiLTECoexCounters;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiLTECoexCounters description](&v3, sel_description), -[AWDWiFiLTECoexCounters dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  noLTECoexBin = self->_noLTECoexBin;
  if (noLTECoexBin)
  {
    [dictionary setObject:-[AWDWiFiLTECoexBin dictionaryRepresentation](noLTECoexBin forKey:{"dictionaryRepresentation"), @"noLTECoexBin"}];
  }

  lightLTECoexBin = self->_lightLTECoexBin;
  if (lightLTECoexBin)
  {
    [dictionary setObject:-[AWDWiFiLTECoexBin dictionaryRepresentation](lightLTECoexBin forKey:{"dictionaryRepresentation"), @"lightLTECoexBin"}];
  }

  heavyLTECoexBin = self->_heavyLTECoexBin;
  if (heavyLTECoexBin)
  {
    [dictionary setObject:-[AWDWiFiLTECoexBin dictionaryRepresentation](heavyLTECoexBin forKey:{"dictionaryRepresentation"), @"heavyLTECoexBin"}];
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

  if (self->_noLTECoexBin)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_lightLTECoexBin)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_heavyLTECoexBin)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 40) |= 1u;
  }

  if (self->_noLTECoexBin)
  {
    [to setNoLTECoexBin:?];
  }

  if (self->_lightLTECoexBin)
  {
    [to setLightLTECoexBin:?];
  }

  if (self->_heavyLTECoexBin)
  {

    [to setHeavyLTECoexBin:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 40) |= 1u;
  }

  *(v6 + 32) = [(AWDWiFiLTECoexBin *)self->_noLTECoexBin copyWithZone:zone];
  *(v6 + 24) = [(AWDWiFiLTECoexBin *)self->_lightLTECoexBin copyWithZone:zone];

  *(v6 + 16) = [(AWDWiFiLTECoexBin *)self->_heavyLTECoexBin copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 40);
    if (*&self->_has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_13;
      }
    }

    else if (*(equal + 40))
    {
LABEL_13:
      LOBYTE(v5) = 0;
      return v5;
    }

    noLTECoexBin = self->_noLTECoexBin;
    if (!(noLTECoexBin | *(equal + 4)) || (v5 = [(AWDWiFiLTECoexBin *)noLTECoexBin isEqual:?]) != 0)
    {
      lightLTECoexBin = self->_lightLTECoexBin;
      if (!(lightLTECoexBin | *(equal + 3)) || (v5 = [(AWDWiFiLTECoexBin *)lightLTECoexBin isEqual:?]) != 0)
      {
        heavyLTECoexBin = self->_heavyLTECoexBin;
        if (heavyLTECoexBin | *(equal + 2))
        {

          LOBYTE(v5) = [(AWDWiFiLTECoexBin *)heavyLTECoexBin isEqual:?];
        }

        else
        {
          LOBYTE(v5) = 1;
        }
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

  v4 = [(AWDWiFiLTECoexBin *)self->_noLTECoexBin hash]^ v3;
  v5 = [(AWDWiFiLTECoexBin *)self->_lightLTECoexBin hash];
  return v4 ^ v5 ^ [(AWDWiFiLTECoexBin *)self->_heavyLTECoexBin hash];
}

- (void)mergeFrom:(id)from
{
  if (*(from + 40))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  noLTECoexBin = self->_noLTECoexBin;
  v6 = *(from + 4);
  if (noLTECoexBin)
  {
    if (v6)
    {
      [(AWDWiFiLTECoexBin *)noLTECoexBin mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(AWDWiFiLTECoexCounters *)self setNoLTECoexBin:?];
  }

  lightLTECoexBin = self->_lightLTECoexBin;
  v8 = *(from + 3);
  if (lightLTECoexBin)
  {
    if (v8)
    {
      [(AWDWiFiLTECoexBin *)lightLTECoexBin mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(AWDWiFiLTECoexCounters *)self setLightLTECoexBin:?];
  }

  heavyLTECoexBin = self->_heavyLTECoexBin;
  v10 = *(from + 2);
  if (heavyLTECoexBin)
  {
    if (v10)
    {

      [(AWDWiFiLTECoexBin *)heavyLTECoexBin mergeFrom:?];
    }
  }

  else if (v10)
  {

    [(AWDWiFiLTECoexCounters *)self setHeavyLTECoexBin:?];
  }
}

@end