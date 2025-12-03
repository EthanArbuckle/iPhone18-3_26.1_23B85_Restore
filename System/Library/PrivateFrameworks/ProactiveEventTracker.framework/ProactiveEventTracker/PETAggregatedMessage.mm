@interface PETAggregatedMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PETAggregatedMessage

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  key = self->_key;
  v6 = *(fromCopy + 3);
  v9 = fromCopy;
  if (key)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PETAggregationKey *)key mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PETAggregatedMessage *)self setKey:?];
  }

  fromCopy = v9;
LABEL_7:
  if (*(fromCopy + 32))
  {
    self->_count = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  distribution = self->_distribution;
  v8 = *(fromCopy + 2);
  if (distribution)
  {
    if (v8)
    {
      [(PETDistribution *)distribution mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PETAggregatedMessage *)self setDistribution:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(PETAggregationKey *)self->_key hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_count;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(PETDistribution *)self->_distribution hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  key = self->_key;
  if (key | *(equalCopy + 3))
  {
    if (![(PETAggregationKey *)key isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_count != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  distribution = self->_distribution;
  if (distribution | *(equalCopy + 2))
  {
    v8 = [(PETDistribution *)distribution isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PETAggregationKey *)self->_key copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_count;
    *(v5 + 32) |= 1u;
  }

  v8 = [(PETDistribution *)self->_distribution copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_count;
    *(toCopy + 32) |= 1u;
  }

  if (self->_distribution)
  {
    [v5 setDistribution:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    count = self->_count;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_distribution)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  key = self->_key;
  if (key)
  {
    dictionaryRepresentation = [(PETAggregationKey *)key dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"key"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_count];
    [dictionary setObject:v6 forKey:@"count"];
  }

  distribution = self->_distribution;
  if (distribution)
  {
    dictionaryRepresentation2 = [(PETDistribution *)distribution dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"distribution"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PETAggregatedMessage;
  v4 = [(PETAggregatedMessage *)&v8 description];
  dictionaryRepresentation = [(PETAggregatedMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end