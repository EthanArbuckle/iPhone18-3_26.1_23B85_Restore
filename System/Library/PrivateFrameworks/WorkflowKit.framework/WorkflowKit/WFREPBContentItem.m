@interface WFREPBContentItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEncodingType:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFREPBContentItem

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v5 = v4;
    [(WFREPBContentItem *)self setItem:?];
    v4 = v5;
  }

  self->_encodingType = v4[2];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((item = self->_item, !(item | *(v4 + 2))) || -[NSData isEqual:](item, "isEqual:")) && self->_encodingType == *(v4 + 2);

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_item copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_encodingType;
  return v5;
}

- (void)copyTo:(id)a3
{
  item = self->_item;
  v5 = a3;
  [v5 setItem:item];
  v5[2] = self->_encodingType;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_item)
  {
    __assert_rtn("[WFREPBContentItem writeTo:]", "WFREPBContentItem.m", 87, "nil != self->_item");
  }

  v6 = v4;
  PBDataWriterWriteDataField();
  encodingType = self->_encodingType;
  PBDataWriterWriteInt32Field();
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  item = self->_item;
  if (item)
  {
    [v3 setObject:item forKey:@"item"];
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
  v5 = [(WFREPBContentItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsEncodingType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"Protobuf"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"NSSecureCoding"])
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