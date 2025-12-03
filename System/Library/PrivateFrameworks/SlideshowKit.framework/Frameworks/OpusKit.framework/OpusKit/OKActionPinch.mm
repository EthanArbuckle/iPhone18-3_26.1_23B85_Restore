@interface OKActionPinch
+ (id)pinchActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count scale:(double)scale angle:(double)angle translation:(CGPoint)translation velocity:(double)velocity context:(id)self0;
+ (void)setupJavascriptContext:(id)context;
- (CGPoint)translation;
- (OKActionPinch)init;
- (OKActionPinch)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OKActionPinch

+ (id)pinchActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count scale:(double)scale angle:(double)angle translation:(CGPoint)translation velocity:(double)velocity context:(id)self0
{
  y = translation.y;
  x = translation.x;
  v15 = [[OKActionPinch alloc] initWithState:state location:count touchCount:context context:location.x, location.y];
  [(OKActionPinch *)v15 setScale:scale];
  [(OKActionPinch *)v15 setAngle:angle];
  [(OKActionPinch *)v15 setTranslation:x, y];
  [(OKActionPinch *)v15 setVelocity:velocity];

  return v15;
}

- (OKActionPinch)init
{
  v3.receiver = self;
  v3.super_class = OKActionPinch;
  result = [(OKAction *)&v3 init];
  if (result)
  {
    result->_scale = 1.0;
    result->_angle = 0.0;
    result->_translation = *MEMORY[0x277CBF348];
    result->_velocity = 0.0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKActionPinch;
  [(OKAction *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = OKActionPinch;
  [(OKAction *)&v6 encodeWithCoder:?];
  if (self->_translation.x != *MEMORY[0x277CBF348] || self->_translation.y != *(MEMORY[0x277CBF348] + 8))
  {
    [coder encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGPoint:"), @"translation"}];
  }

  [coder encodeDouble:@"scale" forKey:self->_scale];
  [coder encodeDouble:@"angle" forKey:self->_angle];
  [coder encodeDouble:@"velocity" forKey:self->_velocity];
}

- (OKActionPinch)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = OKActionPinch;
  v4 = [(OKAction *)&v12 initWithCoder:?];
  if (v4)
  {
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"translation"];
    if (v5)
    {
      [v5 CGPointValue];
      v4->_translation.x = v6;
      v4->_translation.y = v7;
    }

    [coder decodeDoubleForKey:@"scale"];
    v4->_scale = v8;
    [coder decodeDoubleForKey:@"angle"];
    v4->_angle = v9;
    [coder decodeDoubleForKey:@"velocity"];
    v4->_velocity = v10;
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)context
{
  v4 = objc_opt_class();

  [context setObject:v4 forKeyedSubscript:@"OKActionPinch"];
}

- (CGPoint)translation
{
  x = self->_translation.x;
  y = self->_translation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end