@interface PPPBFeedbackMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsMapped:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPPBFeedbackMetadata

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(PPPBFeedbackMetadata *)self setClientBundleId:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(PPPBFeedbackMetadata *)self setClientIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(PPPBFeedbackMetadata *)self setMappingId:?];
    v4 = v6;
  }

  v5 = *(v4 + 44);
  if (v5)
  {
    self->_unixTimestampSec = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 44);
  }

  if ((v5 & 2) != 0)
  {
    self->_isMapped = *(v4 + 40);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  clientBundleId = self->_clientBundleId;
  if (clientBundleId | *(v4 + 2))
  {
    if (![(NSString *)clientBundleId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier | *(v4 + 3))
  {
    if (![(NSString *)clientIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  mappingId = self->_mappingId;
  if (mappingId | *(v4 + 4))
  {
    if (![(NSString *)mappingId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_unixTimestampSec != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_15;
  }

  v8 = (*(v4 + 44) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0)
    {
LABEL_15:
      v8 = 0;
      goto LABEL_16;
    }

    if (self->_isMapped)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_15;
    }

    v8 = 1;
  }

LABEL_16:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_clientBundleId copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_clientIdentifier copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_mappingId copyWithZone:a3];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_clientBundleId)
  {
    [v4 setClientBundleId:?];
    v4 = v6;
  }

  if (self->_clientIdentifier)
  {
    [v6 setClientIdentifier:?];
    v4 = v6;
  }

  if (self->_mappingId)
  {
    [v6 setMappingId:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_unixTimestampSec;
    *(v4 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 40) = self->_isMapped;
    *(v4 + 44) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_clientBundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_mappingId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    unixTimestampSec = self->_unixTimestampSec;
    PBDataWriterWriteUint64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isMapped = self->_isMapped;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  clientBundleId = self->_clientBundleId;
  if (clientBundleId)
  {
    [v3 setObject:clientBundleId forKey:@"clientBundleId"];
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
  v5 = [(PPPBFeedbackMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasIsMapped:(BOOL)a3
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

@end