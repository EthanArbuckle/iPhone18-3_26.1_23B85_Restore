@interface SUOverlayTransition
+ (int64_t)transitionTypeFromString:(id)a3;
- (SUOverlayTransition)init;
- (SUOverlayTransition)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (SUOverlayTransition)initWithCoder:(id)a3
{
  v4 = [(SUOverlayTransition *)self init];
  if (v4)
  {
    [a3 decodeDoubleForKey:@"duration"];
    v4->_duration = v5;
    v4->_type = [a3 decodeIntegerForKey:@"type"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 8) = self->_duration;
  *(v4 + 16) = self->_sourceElement;
  *(v4 + 24) = self->_type;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeDouble:@"duration" forKey:self->_duration];
  type = self->_type;

  [a3 encodeInteger:type forKey:@"type"];
}

+ (int64_t)transitionTypeFromString:(id)a3
{
  if ([a3 isEqualToString:@"flip"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"slide-from-right"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"slide-from-bottom"])
  {
    return 3;
  }

  return 0;
}

@end