@interface WFREPBContentItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEncodingType:(id)type;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBContentItem

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(WFREPBContentItem *)self setItem:?];
    fromCopy = v5;
  }

  self->_encodingType = fromCopy[2];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((item = self->_item, !(item | *(equalCopy + 2))) || -[NSData isEqual:](item, "isEqual:")) && self->_encodingType == *(equalCopy + 2);

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_item copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_encodingType;
  return v5;
}

- (void)copyTo:(id)to
{
  item = self->_item;
  toCopy = to;
  [toCopy setItem:item];
  toCopy[2] = self->_encodingType;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_item)
  {
    __assert_rtn("[WFREPBContentItem writeTo:]", "WFREPBContentItem.m", 87, "nil != self->_item");
  }

  v6 = toCopy;
  PBDataWriterWriteDataField();
  encodingType = self->_encodingType;
  PBDataWriterWriteInt32Field();
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  item = self->_item;
  if (item)
  {
    [dictionary setObject:item forKey:@"item"];
  }

  encodingType = self->_encodingType;
  if (encodingType == 1)
  {
    v7 = @"Protobuf";
  }

  else if (encodingType == 2)
  {
    v7 = @"NSSecureCoding";
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_encodingType];
  }

  [v4 setObject:v7 forKey:@"encodingType"];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBContentItem;
  v4 = [(WFREPBContentItem *)&v8 description];
  dictionaryRepresentation = [(WFREPBContentItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsEncodingType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"Protobuf"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"NSSecureCoding"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

@end