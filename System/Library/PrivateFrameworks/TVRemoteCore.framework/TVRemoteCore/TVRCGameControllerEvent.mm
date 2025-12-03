@interface TVRCGameControllerEvent
- (CGPoint)joystickLocation;
- (TVRCGameControllerEvent)initWithCoder:(id)coder;
- (id)_initWithTimestamp:(double)timestamp isDown:(BOOL)down joystickLocation:(CGPoint)location;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCGameControllerEvent

- (TVRCGameControllerEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TVRCGameControllerEvent;
  v5 = [(TVRCGameControllerEvent *)&v10 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    v5->_down = [coderCopy decodeBoolForKey:@"down"];
    [coderCopy decodeDoubleForKey:@"joystickLocation.x"];
    v5->_joystickLocation.x = v7;
    [coderCopy decodeDoubleForKey:@"joystickLocation.y"];
    v5->_joystickLocation.y = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"timestamp" forKey:timestamp];
  [coderCopy encodeBool:self->_down forKey:@"down"];
  [coderCopy encodeDouble:@"joystickLocation.x" forKey:self->_joystickLocation.x];
  [coderCopy encodeDouble:@"joystickLocation.y" forKey:self->_joystickLocation.y];
}

- (id)_initWithTimestamp:(double)timestamp isDown:(BOOL)down joystickLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v10.receiver = self;
  v10.super_class = TVRCGameControllerEvent;
  result = [(TVRCGameControllerEvent *)&v10 init];
  if (result)
  {
    *(result + 8) = down;
    *(result + 2) = timestamp;
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