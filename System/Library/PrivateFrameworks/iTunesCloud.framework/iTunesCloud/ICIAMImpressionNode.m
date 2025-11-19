@interface ICIAMImpressionNode
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ICIAMImpressionNode

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(ICIAMImpressionNode *)self setImpressionType:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(ICIAMImpressionNode *)self setRecoAlgoId:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((impressionType = self->_impressionType, !(impressionType | v4[1])) || -[NSString isEqual:](impressionType, "isEqual:")))
  {
    recoAlgoId = self->_recoAlgoId;
    if (recoAlgoId | v4[2])
    {
      v7 = [(NSString *)recoAlgoId isEqual:?];
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
  v6 = [(NSString *)self->_impressionType copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_recoAlgoId copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_impressionType)
  {
    [v4 setImpressionType:?];
    v4 = v5;
  }

  if (self->_recoAlgoId)
  {
    [v5 setRecoAlgoId:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_impressionType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_recoAlgoId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  impressionType = self->_impressionType;
  if (impressionType)
  {
    [v3 setObject:impressionType forKey:@"impressionType"];
  }

  recoAlgoId = self->_recoAlgoId;
  if (recoAlgoId)
  {
    [v4 setObject:recoAlgoId forKey:@"recoAlgoId"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMImpressionNode;
  v4 = [(ICIAMImpressionNode *)&v8 description];
  v5 = [(ICIAMImpressionNode *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end