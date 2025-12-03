@interface _ICLLCurrentItemChangeCommand
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _ICLLCurrentItemChangeCommand

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    itemId = self->_itemId;
    if (itemId | equalCopy[1])
    {
      v6 = [(NSString *)itemId isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_itemId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)writeTo:(id)to
{
  if (self->_itemId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  itemId = self->_itemId;
  if (itemId)
  {
    [dictionary setObject:itemId forKey:@"itemId"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLCurrentItemChangeCommand;
  v4 = [(_ICLLCurrentItemChangeCommand *)&v8 description];
  dictionaryRepresentation = [(_ICLLCurrentItemChangeCommand *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end