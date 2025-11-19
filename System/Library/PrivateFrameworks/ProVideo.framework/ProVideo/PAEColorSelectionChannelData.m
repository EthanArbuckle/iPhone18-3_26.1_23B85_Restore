@interface PAEColorSelectionChannelData
- (PAEColorSelectionChannelData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PAEColorSelectionChannelData

- (PAEColorSelectionChannelData)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = PAEColorSelectionChannelData;
  v4 = [(PAEColorSelectionChannelData *)&v11 init];
  if (v4)
  {
    v4->_mode = [a3 decodeIntForKey:@"mode"];
    v4->_state = [a3 decodeIntForKey:@"state"];
    v4->_action = [a3 decodeIntForKey:@"action"];
    v4->_style = [a3 decodeIntForKey:@"style"];
    [a3 decodeDoubleForKey:@"x"];
    v4->_x = v5;
    [a3 decodeDoubleForKey:@"y"];
    v4->_y = v6;
    [a3 decodeDoubleForKey:@"radius"];
    v4->_radius = v7;
    [a3 decodeDoubleForKey:@"radiusScale"];
    v4->_radiusScale = v8;
    [a3 decodeDoubleForKey:@"frame"];
    v4->_frame = v9;
    v4->_timeScale = [a3 decodeIntForKey:@"timeScale"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  mode = self->_mode;
  if (mode)
  {
    [a3 encodeInt:mode forKey:@"mode"];
  }

  state = self->_state;
  if (state)
  {
    [a3 encodeInt:state forKey:@"state"];
    v7 = self->_state;
    if (v7)
    {
      if (v7 != 3)
      {
        action = self->_action;
        if (action)
        {
          [a3 encodeInt:action forKey:@"action"];
        }

        if (self->_x != 0.0)
        {
          [a3 encodeDouble:@"x" forKey:?];
        }

        if (self->_y != 0.0)
        {
          [a3 encodeDouble:@"y" forKey:?];
        }

        if (self->_radius != 0.0)
        {
          [a3 encodeDouble:@"radius" forKey:?];
        }

        if (self->_radiusScale != 0.0)
        {
          [a3 encodeDouble:@"radiusScale" forKey:?];
        }
      }
    }
  }

  if (self->_frame != 0.0)
  {
    [a3 encodeDouble:@"frame" forKey:?];
  }

  timeScale = self->_timeScale;
  if (timeScale)
  {
    [a3 encodeInt:timeScale forKey:@"timeScale"];
  }

  if (self->_style)
  {

    [a3 encodeInt:? forKey:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
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