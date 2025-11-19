@interface _ICLLReactionCommand
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLReactionCommand

- (unint64_t)hash
{
  v3 = [(NSString *)self->_reactionId hash];
  v4 = [(NSString *)self->_reaction hash]^ v3;
  return v4 ^ [(NSString *)self->_itemId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((reactionId = self->_reactionId, !(reactionId | v4[3])) || -[NSString isEqual:](reactionId, "isEqual:")) && ((reaction = self->_reaction, !(reaction | v4[2])) || -[NSString isEqual:](reaction, "isEqual:")))
  {
    itemId = self->_itemId;
    if (itemId | v4[1])
    {
      v8 = [(NSString *)itemId isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_reactionId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_reaction copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_itemId copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_reactionId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_reaction)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_itemId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  reactionId = self->_reactionId;
  if (reactionId)
  {
    [v3 setObject:reactionId forKey:@"reactionId"];
  }

  reaction = self->_reaction;
  if (reaction)
  {
    [v4 setObject:reaction forKey:@"reaction"];
  }

  itemId = self->_itemId;
  if (itemId)
  {
    [v4 setObject:itemId forKey:@"itemId"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLReactionCommand;
  v4 = [(_ICLLReactionCommand *)&v8 description];
  v5 = [(_ICLLReactionCommand *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end