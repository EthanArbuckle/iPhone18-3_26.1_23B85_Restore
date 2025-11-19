@interface _ICLLCurrentItemTransitionCommand
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLCurrentItemTransitionCommand

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((transitionItemId = self->_transitionItemId, !(transitionItemId | v4[2])) || -[NSString isEqual:](transitionItemId, "isEqual:")))
  {
    previousItemId = self->_previousItemId;
    if (previousItemId | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_transitionItemId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_previousItemId copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transitionItemId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_previousItemId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  transitionItemId = self->_transitionItemId;
  if (transitionItemId)
  {
    [v3 setObject:transitionItemId forKey:@"transitionItemId"];
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
  v8.super_class = _ICLLCurrentItemTransitionCommand;
  v4 = [(_ICLLCurrentItemTransitionCommand *)&v8 description];
  v5 = [(_ICLLCurrentItemTransitionCommand *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end