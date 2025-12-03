@interface _ICLLPlaybackControlSettingsQuery
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _ICLLPlaybackControlSettingsQuery

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    settings = self->_settings;
    if (settings | equalCopy[1])
    {
      v6 = [(_ICLLPlaybackControlSettings *)settings isEqual:?];
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
  v6 = [(_ICLLPlaybackControlSettings *)self->_settings copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)writeTo:(id)to
{
  if (self->_settings)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  settings = self->_settings;
  if (settings)
  {
    dictionaryRepresentation = [(_ICLLPlaybackControlSettings *)settings dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"settings"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLPlaybackControlSettingsQuery;
  v4 = [(_ICLLPlaybackControlSettingsQuery *)&v8 description];
  dictionaryRepresentation = [(_ICLLPlaybackControlSettingsQuery *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end