@interface _ICLLMediaInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLMediaInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((mediaType = self->_mediaType, !(mediaType | v4[1])) || -[NSString isEqual:](mediaType, "isEqual:")))
  {
    playParams = self->_playParams;
    if (playParams | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_mediaType copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_playParams copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_mediaType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_playParams)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  mediaType = self->_mediaType;
  if (mediaType)
  {
    [v3 setObject:mediaType forKey:@"mediaType"];
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
  v5 = [(_ICLLMediaInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end