@interface _ICLLPlaybackControlSettingsCommand
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLPlaybackControlSettingsCommand

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    settings = self->_settings;
    if (settings | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_ICLLPlaybackControlSettings *)self->_settings copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)writeTo:(id)a3
{
  if (self->_settings)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  settings = self->_settings;
  if (settings)
  {
    v5 = [(_ICLLPlaybackControlSettings *)settings dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"settings"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLPlaybackControlSettingsCommand;
  v4 = [(_ICLLPlaybackControlSettingsCommand *)&v8 description];
  v5 = [(_ICLLPlaybackControlSettingsCommand *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end