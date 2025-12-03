@interface _VOSProfileGesture
+ (id)profileGestureWithGesture:(id)gesture;
+ (id)profileGestureWithStringValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (_VOSProfileCommand)command;
- (_VOSProfileGesture)initWithCoder:(id)coder;
- (id)_initWithGesture:(id)gesture;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _VOSProfileGesture

+ (id)profileGestureWithGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = [[_VOSProfileGesture alloc] _initWithGesture:gestureCopy];

  return v4;
}

+ (id)profileGestureWithStringValue:(id)value
{
  v4 = [VOSGesture gestureWithStringValue:value];
  if (v4)
  {
    v5 = [self profileGestureWithGesture:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initWithGesture:(id)gesture
{
  gestureCopy = gesture;
  v9.receiver = self;
  v9.super_class = _VOSProfileGesture;
  v6 = [(_VOSProfileGesture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gesture, gesture);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  gesture = [(_VOSProfileGesture *)self gesture];
  rawValue = [gesture rawValue];
  v8 = [v3 stringWithFormat:@"%@<%p>: rawValue '%@'", v5, self, rawValue];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    gesture = [equalCopy gesture];
    gesture2 = [(_VOSProfileGesture *)self gesture];
    v7 = [gesture isEqual:gesture2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_VOSProfileGesture)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gesture"];

  v6 = [VOSGesture gestureWithStringValue:v5];
  if (!v6)
  {
    v6 = +[VOSGesture Invalid];
  }

  v7 = [(_VOSProfileGesture *)self _initWithGesture:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  gesture = self->_gesture;
  coderCopy = coder;
  rawValue = [(VOSGesture *)gesture rawValue];
  [coderCopy encodeObject:rawValue forKey:@"gesture"];
}

- (_VOSProfileCommand)command
{
  WeakRetained = objc_loadWeakRetained(&self->_command);

  return WeakRetained;
}

@end