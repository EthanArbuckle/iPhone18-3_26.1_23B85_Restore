@interface AWDWiFiNWActivityHistogramBin
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

@implementation AWDWiFiNWActivityHistogramBin

- (void)dealloc
{
  [(AWDWiFiNWActivityHistogramBin *)self setBin:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityHistogramBin;
  [(AWDWiFiNWActivityHistogramBin *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityHistogramBin;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityHistogramBin description](&v3, sel_description), -[AWDWiFiNWActivityHistogramBin dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  bin = self->_bin;
  if (bin)
  {
    [dictionary setObject:bin forKey:@"bin"];
  }

  if (*&self->_has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_hits), @"hits"}];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_bin)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    hits = self->_hits;

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)to
{
  if (self->_bin)
  {
    [to setBin:?];
  }

  if (*&self->_has)
  {
    *(to + 1) = self->_hits;
    *(to + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 16) = [(NSString *)self->_bin copyWithZone:zone];
  if (*&self->_has)
  {
    *(v5 + 8) = self->_hits;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    bin = self->_bin;
    if (!(bin | *(equal + 2)) || (v5 = [(NSString *)bin isEqual:?]) != 0)
    {
      LOBYTE(v5) = (*(equal + 24) & 1) == 0;
      if (*&self->_has)
      {
        LOBYTE(v5) = (*(equal + 24) & 1) != 0 && self->_hits == *(equal + 1);
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bin hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_hits;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 2))
  {
    [(AWDWiFiNWActivityHistogramBin *)self setBin:?];
  }

  if (*(from + 24))
  {
    self->_hits = *(from + 1);
    *&self->_has |= 1u;
  }
}

@end