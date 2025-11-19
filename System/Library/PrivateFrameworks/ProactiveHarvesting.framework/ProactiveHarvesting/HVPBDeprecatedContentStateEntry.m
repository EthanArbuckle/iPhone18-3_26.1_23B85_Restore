@interface HVPBDeprecatedContentStateEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HVPBDeprecatedContentStateEntry

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(HVPBDeprecatedContentStateEntry *)self setUniqueId:?];
    v4 = v7;
  }

  state = self->_state;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((uniqueId = self->_uniqueId, !(uniqueId | v4[2])) || -[NSString isEqual:](uniqueId, "isEqual:")))
  {
    state = self->_state;
    if (state | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HVPBContentState *)self->_state copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uniqueId)
  {
    [v4 setUniqueId:?];
    v4 = v5;
  }

  if (self->_state)
  {
    [v5 setState:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_state)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [v3 setObject:uniqueId forKey:@"uniqueId"];
  }

  state = self->_state;
  if (state)
  {
    v7 = [(HVPBContentState *)state dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"state"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HVPBDeprecatedContentStateEntry;
  v4 = [(HVPBDeprecatedContentStateEntry *)&v8 description];
  v5 = [(HVPBDeprecatedContentStateEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end