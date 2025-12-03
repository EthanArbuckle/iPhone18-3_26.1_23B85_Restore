@interface AWDWiFiNWActivityMpduLost
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiNWActivityMpduLost

- (void)dealloc
{
  [(AWDWiFiNWActivityMpduLost *)self setBALost:0];
  [(AWDWiFiNWActivityMpduLost *)self setNonBALost:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityMpduLost;
  [(AWDWiFiNWActivityMpduLost *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityMpduLost;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityMpduLost description](&v3, sel_description), -[AWDWiFiNWActivityMpduLost dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  bALost = self->_bALost;
  if (bALost)
  {
    [dictionary setObject:-[AWDWiFiNWActivityMpduWME dictionaryRepresentation](bALost forKey:{"dictionaryRepresentation"), @"BALost"}];
  }

  nonBALost = self->_nonBALost;
  if (nonBALost)
  {
    [dictionary setObject:-[AWDWiFiNWActivityMpduWME dictionaryRepresentation](nonBALost forKey:{"dictionaryRepresentation"), @"nonBALost"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_bALost)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_nonBALost)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  if (self->_bALost)
  {
    [to setBALost:?];
  }

  if (self->_nonBALost)
  {

    [to setNonBALost:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  v5[1] = [(AWDWiFiNWActivityMpduWME *)self->_bALost copyWithZone:zone];
  v5[2] = [(AWDWiFiNWActivityMpduWME *)self->_nonBALost copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    bALost = self->_bALost;
    if (!(bALost | *(equal + 1)) || (v5 = [(AWDWiFiNWActivityMpduWME *)bALost isEqual:?]) != 0)
    {
      nonBALost = self->_nonBALost;
      if (nonBALost | *(equal + 2))
      {

        LOBYTE(v5) = [(AWDWiFiNWActivityMpduWME *)nonBALost isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (void)mergeFrom:(id)from
{
  bALost = self->_bALost;
  v6 = *(from + 1);
  if (bALost)
  {
    if (v6)
    {
      [(AWDWiFiNWActivityMpduWME *)bALost mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(AWDWiFiNWActivityMpduLost *)self setBALost:?];
  }

  nonBALost = self->_nonBALost;
  v8 = *(from + 2);
  if (nonBALost)
  {
    if (v8)
    {

      [(AWDWiFiNWActivityMpduWME *)nonBALost mergeFrom:?];
    }
  }

  else if (v8)
  {

    [(AWDWiFiNWActivityMpduLost *)self setNonBALost:?];
  }
}

@end