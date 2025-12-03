@interface AWDCFNetworkCacheMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasTotalBytesWritten:(BOOL)written;
- (void)writeTo:(id)to;
@end

@implementation AWDCFNetworkCacheMetrics

- (void)dealloc
{
  [(AWDCFNetworkCacheMetrics *)self setBundleID:0];
  v3.receiver = self;
  v3.super_class = AWDCFNetworkCacheMetrics;
  [(AWDCFNetworkCacheMetrics *)&v3 dealloc];
}

- (void)setHasTotalBytesWritten:(BOOL)written
{
  if (written)
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
  v3.super_class = AWDCFNetworkCacheMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCFNetworkCacheMetrics description](&v3, sel_description), -[AWDCFNetworkCacheMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalBytesWritten), @"totalBytesWritten"}];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [dictionary setObject:bundleID forKey:@"bundleID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    totalBytesWritten = self->_totalBytesWritten;
    PBDataWriterWriteUint64Field();
  }

  if (self->_bundleID)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 2) = self->_totalBytesWritten;
    *(to + 32) |= 2u;
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [to setBundleID:bundleID];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_totalBytesWritten;
    *(v5 + 32) |= 2u;
  }

  v6[3] = [(NSString *)self->_bundleID copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 32);
    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(equal + 32))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 32) & 2) == 0 || self->_totalBytesWritten != *(equal + 2))
      {
        goto LABEL_14;
      }
    }

    else if ((*(equal + 32) & 2) != 0)
    {
      goto LABEL_14;
    }

    bundleID = self->_bundleID;
    if (bundleID | *(equal + 3))
    {

      LOBYTE(v5) = [(NSString *)bundleID isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_bundleID hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761u * self->_totalBytesWritten;
  return v7 ^ v6 ^ [(NSString *)self->_bundleID hash:v3];
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 32);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 32);
  }

  if ((v3 & 2) != 0)
  {
    self->_totalBytesWritten = *(from + 2);
    *&self->_has |= 2u;
  }

  if (*(from + 3))
  {
    [(AWDCFNetworkCacheMetrics *)self setBundleID:?];
  }
}

@end