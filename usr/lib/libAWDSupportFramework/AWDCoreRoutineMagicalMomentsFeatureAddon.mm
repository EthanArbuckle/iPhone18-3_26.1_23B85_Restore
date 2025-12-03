@interface AWDCoreRoutineMagicalMomentsFeatureAddon
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineMagicalMomentsFeatureAddon

- (void)dealloc
{
  [(AWDCoreRoutineMagicalMomentsFeatureAddon *)self setName:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsFeatureAddon;
  [(AWDCoreRoutineMagicalMomentsFeatureAddon *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsFeatureAddon;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineMagicalMomentsFeatureAddon description](&v3, sel_description), -[AWDCoreRoutineMagicalMomentsFeatureAddon dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  if (*&self->_has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_value), @"value"}];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    value = self->_value;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (self->_name)
  {
    [to setName:?];
  }

  if (*&self->_has)
  {
    *(to + 4) = self->_value;
    *(to + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 8) = [(NSString *)self->_name copyWithZone:zone];
  if (*&self->_has)
  {
    *(v5 + 16) = self->_value;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    name = self->_name;
    if (!(name | *(equal + 1)) || (v5 = [(NSString *)name isEqual:?]) != 0)
    {
      LOBYTE(v5) = (*(equal + 20) & 1) == 0;
      if (*&self->_has)
      {
        LOBYTE(v5) = (*(equal + 20) & 1) != 0 && self->_value == *(equal + 4);
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_value;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(AWDCoreRoutineMagicalMomentsFeatureAddon *)self setName:?];
  }

  if (*(from + 20))
  {
    self->_value = *(from + 4);
    *&self->_has |= 1u;
  }
}

@end