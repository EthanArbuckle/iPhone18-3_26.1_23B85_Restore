@interface PETAggregatedMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PETAggregatedMessage

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  key = self->_key;
  v6 = *(v4 + 3);
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  if (*(v4 + 32))
  {
    self->_count = *(v4 + 2);
    *&self->_has |= 1u;
  }

  distribution = self->_distribution;
  v8 = *(v4 + 2);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  key = self->_key;
  if (key | *(v4 + 3))
  {
    if (![(PETAggregationKey *)key isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_count != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  distribution = self->_distribution;
  if (distribution | *(v4 + 2))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PETAggregationKey *)self->_key copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_count;
    *(v5 + 32) |= 1u;
  }

  v8 = [(PETDistribution *)self->_distribution copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_count;
    *(v4 + 32) |= 1u;
  }

  if (self->_distribution)
  {
    [v5 setDistribution:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_key)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    count = self->_count;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_distribution)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  key = self->_key;
  if (key)
  {
    v5 = [(PETAggregationKey *)key dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"key"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_count];
    [v3 setObject:v6 forKey:@"count"];
  }

  distribution = self->_distribution;
  if (distribution)
  {
    v8 = [(PETDistribution *)distribution dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"distribution"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PETAggregatedMessage;
  v4 = [(PETAggregatedMessage *)&v8 description];
  v5 = [(PETAggregatedMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end