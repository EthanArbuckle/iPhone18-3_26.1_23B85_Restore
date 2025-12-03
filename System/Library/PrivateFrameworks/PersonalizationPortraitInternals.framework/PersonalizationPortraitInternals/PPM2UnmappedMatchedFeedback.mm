@interface PPM2UnmappedMatchedFeedback
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PPM2UnmappedMatchedFeedback

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(PPM2UnmappedMatchedFeedback *)self setClientId:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(PPM2UnmappedMatchedFeedback *)self setMappingId:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(PPM2UnmappedMatchedFeedback *)self setActiveTreatments:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientId hash];
  v4 = [(NSString *)self->_mappingId hash]^ v3;
  return v4 ^ [(NSString *)self->_activeTreatments hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((clientId = self->_clientId, !(clientId | equalCopy[2])) || -[NSString isEqual:](clientId, "isEqual:")) && ((mappingId = self->_mappingId, !(mappingId | equalCopy[3])) || -[NSString isEqual:](mappingId, "isEqual:")))
  {
    activeTreatments = self->_activeTreatments;
    if (activeTreatments | equalCopy[1])
    {
      v8 = [(NSString *)activeTreatments isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_mappingId copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_activeTreatments copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_clientId)
  {
    [toCopy setClientId:?];
    toCopy = v5;
  }

  if (self->_mappingId)
  {
    [v5 setMappingId:?];
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
  v5 = toCopy;
  if (self->_clientId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_mappingId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  clientId = self->_clientId;
  if (clientId)
  {
    [dictionary setObject:clientId forKey:@"clientId"];
  }

  mappingId = self->_mappingId;
  if (mappingId)
  {
    [v4 setObject:mappingId forKey:@"mappingId"];
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [v4 setObject:activeTreatments forKey:@"activeTreatments"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2UnmappedMatchedFeedback;
  v4 = [(PPM2UnmappedMatchedFeedback *)&v8 description];
  dictionaryRepresentation = [(PPM2UnmappedMatchedFeedback *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end