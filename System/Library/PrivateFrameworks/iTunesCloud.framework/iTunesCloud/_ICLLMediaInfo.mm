@interface _ICLLMediaInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _ICLLMediaInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((mediaType = self->_mediaType, !(mediaType | equalCopy[1])) || -[NSString isEqual:](mediaType, "isEqual:")))
  {
    playParams = self->_playParams;
    if (playParams | equalCopy[2])
    {
      v7 = [(NSString *)playParams isEqual:?];
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
  v6 = [(NSString *)self->_mediaType copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_playParams copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_mediaType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_playParams)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  mediaType = self->_mediaType;
  if (mediaType)
  {
    [dictionary setObject:mediaType forKey:@"mediaType"];
  }

  playParams = self->_playParams;
  if (playParams)
  {
    [v4 setObject:playParams forKey:@"playParams"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLMediaInfo;
  v4 = [(_ICLLMediaInfo *)&v8 description];
  dictionaryRepresentation = [(_ICLLMediaInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end