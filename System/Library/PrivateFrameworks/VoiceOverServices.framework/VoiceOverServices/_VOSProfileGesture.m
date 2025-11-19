@interface _VOSProfileGesture
+ (id)profileGestureWithGesture:(id)a3;
+ (id)profileGestureWithStringValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_VOSProfileCommand)command;
- (_VOSProfileGesture)initWithCoder:(id)a3;
- (id)_initWithGesture:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _VOSProfileGesture

+ (id)profileGestureWithGesture:(id)a3
{
  v3 = a3;
  v4 = [[_VOSProfileGesture alloc] _initWithGesture:v3];

  return v4;
}

+ (id)profileGestureWithStringValue:(id)a3
{
  v4 = [VOSGesture gestureWithStringValue:a3];
  if (v4)
  {
    v5 = [a1 profileGestureWithGesture:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initWithGesture:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _VOSProfileGesture;
  v6 = [(_VOSProfileGesture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gesture, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_VOSProfileGesture *)self gesture];
  v7 = [v6 rawValue];
  v8 = [v3 stringWithFormat:@"%@<%p>: rawValue '%@'", v5, self, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 gesture];
    v6 = [(_VOSProfileGesture *)self gesture];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_VOSProfileGesture)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gesture"];

  v6 = [VOSGesture gestureWithStringValue:v5];
  if (!v6)
  {
    v6 = +[VOSGesture Invalid];
  }

  v7 = [(_VOSProfileGesture *)self _initWithGesture:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  gesture = self->_gesture;
  v4 = a3;
  v5 = [(VOSGesture *)gesture rawValue];
  [v4 encodeObject:v5 forKey:@"gesture"];
}

- (_VOSProfileCommand)command
{
  WeakRetained = objc_loadWeakRetained(&self->_command);

  return WeakRetained;
}

@end