@interface HVPBDeprecatedContentStateEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HVPBDeprecatedContentStateEntry

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(HVPBDeprecatedContentStateEntry *)self setUniqueId:?];
    fromCopy = v7;
  }

  state = self->_state;
  v6 = fromCopy[1];
  if (state)
  {
    if (v6)
    {
      [(HVPBContentState *)state mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HVPBDeprecatedContentStateEntry *)self setState:?];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((uniqueId = self->_uniqueId, !(uniqueId | equalCopy[2])) || -[NSString isEqual:](uniqueId, "isEqual:")))
  {
    state = self->_state;
    if (state | equalCopy[1])
    {
      v7 = [(HVPBContentState *)state isEqual:?];
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
  v6 = [(NSString *)self->_uniqueId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HVPBContentState *)self->_state copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uniqueId)
  {
    [toCopy setUniqueId:?];
    toCopy = v5;
  }

  if (self->_state)
  {
    [v5 setState:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_state)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [dictionary setObject:uniqueId forKey:@"uniqueId"];
  }

  state = self->_state;
  if (state)
  {
    dictionaryRepresentation = [(HVPBContentState *)state dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"state"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HVPBDeprecatedContentStateEntry;
  v4 = [(HVPBDeprecatedContentStateEntry *)&v8 description];
  dictionaryRepresentation = [(HVPBDeprecatedContentStateEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end