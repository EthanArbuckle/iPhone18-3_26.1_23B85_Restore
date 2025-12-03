@interface SUOverlayTransition
+ (int64_t)transitionTypeFromString:(id)string;
- (SUOverlayTransition)init;
- (SUOverlayTransition)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUOverlayTransition

- (SUOverlayTransition)init
{
  v3.receiver = self;
  v3.super_class = SUOverlayTransition;
  result = [(SUOverlayTransition *)&v3 init];
  if (result)
  {
    result->_duration = 0.5;
  }

  return result;
}

- (SUOverlayTransition)initWithCoder:(id)coder
{
  v4 = [(SUOverlayTransition *)self init];
  if (v4)
  {
    [coder decodeDoubleForKey:@"duration"];
    v4->_duration = v5;
    v4->_type = [coder decodeIntegerForKey:@"type"];
  }

  return v4;
}

- (void)dealloc
{
  self->_sourceElement = 0;
  v3.receiver = self;
  v3.super_class = SUOverlayTransition;
  [(SUOverlayTransition *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 8) = self->_duration;
  *(v4 + 16) = self->_sourceElement;
  *(v4 + 24) = self->_type;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeDouble:@"duration" forKey:self->_duration];
  type = self->_type;

  [coder encodeInteger:type forKey:@"type"];
}

+ (int64_t)transitionTypeFromString:(id)string
{
  if ([string isEqualToString:@"flip"])
  {
    return 1;
  }

  if ([string isEqualToString:@"slide-from-right"])
  {
    return 2;
  }

  if ([string isEqualToString:@"slide-from-bottom"])
  {
    return 3;
  }

  return 0;
}

@end