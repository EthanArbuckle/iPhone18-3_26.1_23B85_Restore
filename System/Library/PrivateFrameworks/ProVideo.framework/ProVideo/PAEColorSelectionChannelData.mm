@interface PAEColorSelectionChannelData
- (PAEColorSelectionChannelData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PAEColorSelectionChannelData

- (PAEColorSelectionChannelData)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = PAEColorSelectionChannelData;
  v4 = [(PAEColorSelectionChannelData *)&v11 init];
  if (v4)
  {
    v4->_mode = [coder decodeIntForKey:@"mode"];
    v4->_state = [coder decodeIntForKey:@"state"];
    v4->_action = [coder decodeIntForKey:@"action"];
    v4->_style = [coder decodeIntForKey:@"style"];
    [coder decodeDoubleForKey:@"x"];
    v4->_x = v5;
    [coder decodeDoubleForKey:@"y"];
    v4->_y = v6;
    [coder decodeDoubleForKey:@"radius"];
    v4->_radius = v7;
    [coder decodeDoubleForKey:@"radiusScale"];
    v4->_radiusScale = v8;
    [coder decodeDoubleForKey:@"frame"];
    v4->_frame = v9;
    v4->_timeScale = [coder decodeIntForKey:@"timeScale"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  mode = self->_mode;
  if (mode)
  {
    [coder encodeInt:mode forKey:@"mode"];
  }

  state = self->_state;
  if (state)
  {
    [coder encodeInt:state forKey:@"state"];
    v7 = self->_state;
    if (v7)
    {
      if (v7 != 3)
      {
        action = self->_action;
        if (action)
        {
          [coder encodeInt:action forKey:@"action"];
        }

        if (self->_x != 0.0)
        {
          [coder encodeDouble:@"x" forKey:?];
        }

        if (self->_y != 0.0)
        {
          [coder encodeDouble:@"y" forKey:?];
        }

        if (self->_radius != 0.0)
        {
          [coder encodeDouble:@"radius" forKey:?];
        }

        if (self->_radiusScale != 0.0)
        {
          [coder encodeDouble:@"radiusScale" forKey:?];
        }
      }
    }
  }

  if (self->_frame != 0.0)
  {
    [coder encodeDouble:@"frame" forKey:?];
  }

  timeScale = self->_timeScale;
  if (timeScale)
  {
    [coder encodeInt:timeScale forKey:@"timeScale"];
  }

  if (self->_style)
  {

    [coder encodeInt:? forKey:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 2) = self->_mode;
    *(result + 3) = self->_state;
    *(result + 4) = self->_action;
    *(result + 5) = self->_style;
    *(result + 3) = *&self->_x;
    *(result + 4) = *&self->_y;
    *(result + 5) = *&self->_radius;
    *(result + 6) = *&self->_radiusScale;
    *(result + 7) = *&self->_frame;
    *(result + 16) = self->_timeScale;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> mode=%x, state=%x, action=%x, style=%x, x=%.3f, y=%.3f, radius=%.3f, radiusScale=%.3f, frame=%.3f, timeScale=%d", NSStringFromClass(v4), self, self->_mode, self->_state, self->_action, self->_style, *&self->_x, *&self->_y, *&self->_radius, *&self->_radiusScale, *&self->_frame, self->_timeScale];
}

@end