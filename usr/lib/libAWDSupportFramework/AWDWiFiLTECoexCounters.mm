@interface AWDWiFiLTECoexCounters
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  noLTECoexBin = self->_noLTECoexBin;
  if (noLTECoexBin)
  {
    [v3 setObject:-[AWDWiFiLTECoexBin dictionaryRepresentation](noLTECoexBin forKey:{"dictionaryRepresentation"), @"noLTECoexBin"}];
  }

  lightLTECoexBin = self->_lightLTECoexBin;
  if (lightLTECoexBin)
  {
    [v3 setObject:-[AWDWiFiLTECoexBin dictionaryRepresentation](lightLTECoexBin forKey:{"dictionaryRepresentation"), @"lightLTECoexBin"}];
  }

  heavyLTECoexBin = self->_heavyLTECoexBin;
  if (heavyLTECoexBin)
  {
    [v3 setObject:-[AWDWiFiLTECoexBin dictionaryRepresentation](heavyLTECoexBin forKey:{"dictionaryRepresentation"), @"heavyLTECoexBin"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 40) |= 1u;
  }

  if (self->_noLTECoexBin)
  {
    [a3 setNoLTECoexBin:?];
  }

  if (self->_lightLTECoexBin)
  {
    [a3 setLightLTECoexBin:?];
  }

  if (self->_heavyLTECoexBin)
  {

    [a3 setHeavyLTECoexBin:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 40) |= 1u;
  }

  *(v6 + 32) = [(AWDWiFiLTECoexBin *)self->_noLTECoexBin copyWithZone:a3];
  *(v6 + 24) = [(AWDWiFiLTECoexBin *)self->_lightLTECoexBin copyWithZone:a3];

  *(v6 + 16) = [(AWDWiFiLTECoexBin *)self->_heavyLTECoexBin copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 40);
    if (*&self->_has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_13;
      }
    }

    else if (*(a3 + 40))
    {
LABEL_13:
      LOBYTE(v5) = 0;
      return v5;
    }

    noLTECoexBin = self->_noLTECoexBin;
    if (!(noLTECoexBin | *(a3 + 4)) || (v5 = [(AWDWiFiLTECoexBin *)noLTECoexBin isEqual:?]) != 0)
    {
      lightLTECoexBin = self->_lightLTECoexBin;
      if (!(lightLTECoexBin | *(a3 + 3)) || (v5 = [(AWDWiFiLTECoexBin *)lightLTECoexBin isEqual:?]) != 0)
      {
        heavyLTECoexBin = self->_heavyLTECoexBin;
        if (heavyLTECoexBin | *(a3 + 2))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 40))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  noLTECoexBin = self->_noLTECoexBin;
  v6 = *(a3 + 4);
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
  v8 = *(a3 + 3);
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
  v10 = *(a3 + 2);
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