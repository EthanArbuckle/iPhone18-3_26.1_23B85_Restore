@interface _ICLLCurrentItemTransitionAction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _ICLLCurrentItemTransitionAction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((transitionItemId = self->_transitionItemId, !(transitionItemId | equalCopy[2])) || -[NSString isEqual:](transitionItemId, "isEqual:")))
  {
    previousItemId = self->_previousItemId;
    if (previousItemId | equalCopy[1])
    {
      v7 = [(NSString *)previousItemId isEqual:?];
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
  v6 = [(NSString *)self->_transitionItemId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_previousItemId copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_transitionItemId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_previousItemId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  transitionItemId = self->_transitionItemId;
  if (transitionItemId)
  {
    [dictionary setObject:transitionItemId forKey:@"transitionItemId"];
  }

  previousItemId = self->_previousItemId;
  if (previousItemId)
  {
    [v4 setObject:previousItemId forKey:@"previousItemId"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLCurrentItemTransitionAction;
  v4 = [(_ICLLCurrentItemTransitionAction *)&v8 description];
  dictionaryRepresentation = [(_ICLLCurrentItemTransitionAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end