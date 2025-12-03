@interface PPPBFeedbackMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsMapped:(BOOL)mapped;
- (void)writeTo:(id)to;
@end

@implementation PPPBFeedbackMetadata

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PPPBFeedbackMetadata *)self setClientBundleId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(PPPBFeedbackMetadata *)self setClientIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(PPPBFeedbackMetadata *)self setMappingId:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 44);
  if (v5)
  {
    self->_unixTimestampSec = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 44);
  }

  if ((v5 & 2) != 0)
  {
    self->_isMapped = *(fromCopy + 40);
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientBundleId hash];
  v4 = [(NSString *)self->_clientIdentifier hash];
  v5 = [(NSString *)self->_mappingId hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_unixTimestampSec;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_isMapped;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  clientBundleId = self->_clientBundleId;
  if (clientBundleId | *(equalCopy + 2))
  {
    if (![(NSString *)clientBundleId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)clientIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  mappingId = self->_mappingId;
  if (mappingId | *(equalCopy + 4))
  {
    if (![(NSString *)mappingId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_unixTimestampSec != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_15;
  }

  v8 = (*(equalCopy + 44) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0)
    {
LABEL_15:
      v8 = 0;
      goto LABEL_16;
    }

    if (self->_isMapped)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_15;
    }

    v8 = 1;
  }

LABEL_16:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientBundleId copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_clientIdentifier copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_mappingId copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_unixTimestampSec;
    *(v5 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_isMapped;
    *(v5 + 44) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_clientBundleId)
  {
    [toCopy setClientBundleId:?];
    toCopy = v6;
  }

  if (self->_clientIdentifier)
  {
    [v6 setClientIdentifier:?];
    toCopy = v6;
  }

  if (self->_mappingId)
  {
    [v6 setMappingId:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_unixTimestampSec;
    *(toCopy + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 40) = self->_isMapped;
    *(toCopy + 44) |= 2u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_clientBundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_mappingId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    unixTimestampSec = self->_unixTimestampSec;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isMapped = self->_isMapped;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  clientBundleId = self->_clientBundleId;
  if (clientBundleId)
  {
    [dictionary setObject:clientBundleId forKey:@"clientBundleId"];
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [v4 setObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  mappingId = self->_mappingId;
  if (mappingId)
  {
    [v4 setObject:mappingId forKey:@"mappingId"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_unixTimestampSec];
    [v4 setObject:v9 forKey:@"unixTimestampSec"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMapped];
    [v4 setObject:v10 forKey:@"isMapped"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBFeedbackMetadata;
  v4 = [(PPPBFeedbackMetadata *)&v8 description];
  dictionaryRepresentation = [(PPPBFeedbackMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasIsMapped:(BOOL)mapped
{
  if (mapped)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end