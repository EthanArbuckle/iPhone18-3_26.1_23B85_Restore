@interface PPPBExperimentalGroup
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PPPBExperimentalGroup

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(PPPBExperimentalGroup *)self setExperimentId:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(PPPBExperimentalGroup *)self setAbGroupIdentifier:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((experimentId = self->_experimentId, !(experimentId | equalCopy[2])) || -[NSString isEqual:](experimentId, "isEqual:")))
  {
    abGroupIdentifier = self->_abGroupIdentifier;
    if (abGroupIdentifier | equalCopy[1])
    {
      v7 = [(NSString *)abGroupIdentifier isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_experimentId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_abGroupIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_experimentId)
  {
    [toCopy setExperimentId:?];
    toCopy = v5;
  }

  if (self->_abGroupIdentifier)
  {
    [v5 setAbGroupIdentifier:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_experimentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_abGroupIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  experimentId = self->_experimentId;
  if (experimentId)
  {
    [dictionary setObject:experimentId forKey:@"experimentId"];
  }

  abGroupIdentifier = self->_abGroupIdentifier;
  if (abGroupIdentifier)
  {
    [v4 setObject:abGroupIdentifier forKey:@"abGroupIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBExperimentalGroup;
  v4 = [(PPPBExperimentalGroup *)&v8 description];
  dictionaryRepresentation = [(PPPBExperimentalGroup *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end