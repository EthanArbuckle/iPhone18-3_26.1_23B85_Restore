@interface ICIAMImpressionNode
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ICIAMImpressionNode

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(ICIAMImpressionNode *)self setImpressionType:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(ICIAMImpressionNode *)self setRecoAlgoId:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((impressionType = self->_impressionType, !(impressionType | equalCopy[1])) || -[NSString isEqual:](impressionType, "isEqual:")))
  {
    recoAlgoId = self->_recoAlgoId;
    if (recoAlgoId | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_impressionType copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_recoAlgoId copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_impressionType)
  {
    [toCopy setImpressionType:?];
    toCopy = v5;
  }

  if (self->_recoAlgoId)
  {
    [v5 setRecoAlgoId:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_impressionType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_recoAlgoId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  impressionType = self->_impressionType;
  if (impressionType)
  {
    [dictionary setObject:impressionType forKey:@"impressionType"];
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
  dictionaryRepresentation = [(ICIAMImpressionNode *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end