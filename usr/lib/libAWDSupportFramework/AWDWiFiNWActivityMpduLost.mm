@interface AWDWiFiNWActivityMpduLost
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  bALost = self->_bALost;
  if (bALost)
  {
    [v3 setObject:-[AWDWiFiNWActivityMpduWME dictionaryRepresentation](bALost forKey:{"dictionaryRepresentation"), @"BALost"}];
  }

  nonBALost = self->_nonBALost;
  if (nonBALost)
  {
    [v3 setObject:-[AWDWiFiNWActivityMpduWME dictionaryRepresentation](nonBALost forKey:{"dictionaryRepresentation"), @"nonBALost"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (self->_bALost)
  {
    [a3 setBALost:?];
  }

  if (self->_nonBALost)
  {

    [a3 setNonBALost:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  v5[1] = [(AWDWiFiNWActivityMpduWME *)self->_bALost copyWithZone:a3];
  v5[2] = [(AWDWiFiNWActivityMpduWME *)self->_nonBALost copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    bALost = self->_bALost;
    if (!(bALost | *(a3 + 1)) || (v5 = [(AWDWiFiNWActivityMpduWME *)bALost isEqual:?]) != 0)
    {
      nonBALost = self->_nonBALost;
      if (nonBALost | *(a3 + 2))
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

- (void)mergeFrom:(id)a3
{
  bALost = self->_bALost;
  v6 = *(a3 + 1);
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
  v8 = *(a3 + 2);
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