@interface PPM2ExperimentDeployed
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PPM2ExperimentDeployed

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[8])
  {
    self->_delay = fromCopy[4];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(PPM2ExperimentDeployed *)self setNamespaceName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(PPM2ExperimentDeployed *)self setActiveTreatments:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_delay;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_namespaceName hash]^ v3;
  return v4 ^ [(NSString *)self->_activeTreatments hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_delay != *(equalCopy + 4))
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

  namespaceName = self->_namespaceName;
  if (namespaceName | *(equalCopy + 3) && ![(NSString *)namespaceName isEqual:?])
  {
    goto LABEL_11;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(equalCopy + 1))
  {
    v8 = [(NSString *)activeTreatments isEqual:?];
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
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_delay;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_namespaceName copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_activeTreatments copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_delay;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_namespaceName)
  {
    [toCopy setNamespaceName:?];
    toCopy = v5;
  }

  if (self->_activeTreatments)
  {
    [v5 setActiveTreatments:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    delay = self->_delay;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_namespaceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_delay];
    [dictionary setObject:v4 forKey:@"delay"];
  }

  namespaceName = self->_namespaceName;
  if (namespaceName)
  {
    [dictionary setObject:namespaceName forKey:@"namespaceName"];
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [dictionary setObject:activeTreatments forKey:@"activeTreatments"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2ExperimentDeployed;
  v4 = [(PPM2ExperimentDeployed *)&v8 description];
  dictionaryRepresentation = [(PPM2ExperimentDeployed *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end