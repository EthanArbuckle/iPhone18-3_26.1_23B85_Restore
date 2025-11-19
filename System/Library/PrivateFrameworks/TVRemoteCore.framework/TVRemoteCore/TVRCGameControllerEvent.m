@interface TVRCGameControllerEvent
- (CGPoint)joystickLocation;
- (TVRCGameControllerEvent)initWithCoder:(id)a3;
- (id)_initWithTimestamp:(double)a3 isDown:(BOOL)a4 joystickLocation:(CGPoint)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCGameControllerEvent

- (TVRCGameControllerEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TVRCGameControllerEvent;
  v5 = [(TVRCGameControllerEvent *)&v10 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    v5->_down = [v4 decodeBoolForKey:@"down"];
    [v4 decodeDoubleForKey:@"joystickLocation.x"];
    v5->_joystickLocation.x = v7;
    [v4 decodeDoubleForKey:@"joystickLocation.y"];
    v5->_joystickLocation.y = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeDouble:@"timestamp" forKey:timestamp];
  [v5 encodeBool:self->_down forKey:@"down"];
  [v5 encodeDouble:@"joystickLocation.x" forKey:self->_joystickLocation.x];
  [v5 encodeDouble:@"joystickLocation.y" forKey:self->_joystickLocation.y];
}

- (id)_initWithTimestamp:(double)a3 isDown:(BOOL)a4 joystickLocation:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v10.receiver = self;
  v10.super_class = TVRCGameControllerEvent;
  result = [(TVRCGameControllerEvent *)&v10 init];
  if (result)
  {
    *(result + 8) = a4;
    *(result + 2) = a3;
    *(result + 3) = x;
    *(result + 4) = y;
  }

  return result;
}

- (CGPoint)joystickLocation
{
  x = self->_joystickLocation.x;
  y = self->_joystickLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end