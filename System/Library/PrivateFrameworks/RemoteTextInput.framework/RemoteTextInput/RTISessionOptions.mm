@interface RTISessionOptions
+ (id)defaultBeginOptions;
+ (id)defaultEndOptions;
+ (id)defaultOptions;
- (BOOL)isEqual:(id)equal;
- (RTISessionOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTISessionOptions

+ (id)defaultBeginOptions
{
  v2 = objc_alloc_init(self);
  [v2 setAnimated:1];
  [v2 setOffscreenDirection:0];

  return v2;
}

+ (id)defaultOptions
{
  v2 = objc_alloc_init(self);
  [v2 setShouldResign:1];
  [v2 setAnimated:1];
  [v2 setOffscreenDirection:0];

  return v2;
}

+ (id)defaultEndOptions
{
  v2 = objc_alloc_init(self);
  [v2 setShouldResign:1];
  [v2 setAnimated:1];
  [v2 setOffscreenDirection:0];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeBool:self->_shouldResign forKey:@"shouldResign"];
  [coderCopy encodeBool:self->_animated forKey:@"animated"];
  [coderCopy encodeInteger:self->_offscreenDirection forKey:@"offscreenDirection"];
  [coderCopy encodeBool:self->_enhancedWindowingModeEnabled forKey:@"enhancedWindowingModeEnabled"];
}

- (RTISessionOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v7.receiver = self;
  v7.super_class = RTISessionOptions;
  v5 = [(RTISessionOptions *)&v7 init];
  if (v5)
  {
    v5->_shouldResign = [coderCopy decodeBoolForKey:@"shouldResign"];
    v5->_animated = [coderCopy decodeBoolForKey:@"animated"];
    v5->_offscreenDirection = [coderCopy decodeIntegerForKey:@"offscreenDirection"];
    v5->_enhancedWindowingModeEnabled = [coderCopy decodeBoolForKey:@"enhancedWindowingModeEnabled"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[RTISessionOptions allocWithZone:?]];
  *(result + 8) = self->_shouldResign;
  *(result + 9) = self->_animated;
  *(result + 2) = self->_offscreenDirection;
  *(result + 10) = self->_enhancedWindowingModeEnabled;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      shouldResign = [(RTISessionOptions *)self shouldResign];
      if (shouldResign == [(RTISessionOptions *)v5 shouldResign]&& (v7 = [(RTISessionOptions *)self animated], v7 == [(RTISessionOptions *)v5 animated]))
      {
        offscreenDirection = [(RTISessionOptions *)self offscreenDirection];
        v8 = offscreenDirection == [(RTISessionOptions *)v5 offscreenDirection];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  if ([(RTISessionOptions *)self shouldResign])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"; shouldResign = %@", v4];
  if ([(RTISessionOptions *)self animated])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"; animated = %@", v5];
  [v3 appendFormat:@"; offscreenDirection = %lu", -[RTISessionOptions offscreenDirection](self, "offscreenDirection")];
  if ([(RTISessionOptions *)self enhancedWindowingModeEnabled])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"; enhancedWindowingModeEnabled = %@", v6];

  return v3;
}

@end