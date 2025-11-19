@interface AWDCoreRoutineMagicalMomentsFeatureAddon
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  if (*&self->_has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_value), @"value"}];
  }

  return v4;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (self->_name)
  {
    [a3 setName:?];
  }

  if (*&self->_has)
  {
    *(a3 + 4) = self->_value;
    *(a3 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 8) = [(NSString *)self->_name copyWithZone:a3];
  if (*&self->_has)
  {
    *(v5 + 16) = self->_value;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    name = self->_name;
    if (!(name | *(a3 + 1)) || (v5 = [(NSString *)name isEqual:?]) != 0)
    {
      LOBYTE(v5) = (*(a3 + 20) & 1) == 0;
      if (*&self->_has)
      {
        LOBYTE(v5) = (*(a3 + 20) & 1) != 0 && self->_value == *(a3 + 4);
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(AWDCoreRoutineMagicalMomentsFeatureAddon *)self setName:?];
  }

  if (*(a3 + 20))
  {
    self->_value = *(a3 + 4);
    *&self->_has |= 1u;
  }
}

@end