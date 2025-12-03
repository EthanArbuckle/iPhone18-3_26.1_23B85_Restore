@interface OKActionPan
+ (id)panActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count translation:(CGPoint)translation velocity:(CGPoint)velocity direction:(unint64_t)direction context:(id)context;
+ (void)setupJavascriptContext:(id)context;
- (CGPoint)translation;
- (CGPoint)velocity;
- (OKActionPan)init;
- (OKActionPan)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OKActionPan

+ (id)panActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count translation:(CGPoint)translation velocity:(CGPoint)velocity direction:(unint64_t)direction context:(id)context
{
  y = velocity.y;
  x = velocity.x;
  v12 = translation.y;
  v13 = translation.x;
  v14 = [[OKActionPan alloc] initWithState:state location:count touchCount:context context:location.x, location.y];
  [(OKActionPan *)v14 setTranslation:v13, v12];
  [(OKActionPan *)v14 setVelocity:x, y];
  [(OKActionPan *)v14 setDirection:direction];

  return v14;
}

- (OKActionPan)init
{
  v4.receiver = self;
  v4.super_class = OKActionPan;
  result = [(OKAction *)&v4 init];
  if (result)
  {
    v3 = *MEMORY[0x277CBF348];
    result->_translation = *MEMORY[0x277CBF348];
    result->_velocity = v3;
    result->_direction = 1;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKActionPan;
  [(OKAction *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = OKActionPan;
  [(OKAction *)&v9 encodeWithCoder:?];
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  if (self->_translation.x != *MEMORY[0x277CBF348] || self->_translation.y != v6)
  {
    [coder encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGPoint:"), @"translation"}];
  }

  if (self->_velocity.x != v5 || self->_velocity.y != v6)
  {
    [coder encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGPoint:"), @"velocity"}];
  }

  [coder encodeInt32:LODWORD(self->_direction) forKey:@"direction"];
}

- (OKActionPan)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = OKActionPan;
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

    v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"velocity"];
    if (v8)
    {
      [v8 CGPointValue];
      v4->_velocity.x = v9;
      v4->_velocity.y = v10;
    }

    v4->_direction = [coder decodeInt32ForKey:@"direction"];
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)context
{
  v4 = objc_opt_class();

  [context setObject:v4 forKeyedSubscript:@"OKActionPan"];
}

- (CGPoint)translation
{
  x = self->_translation.x;
  y = self->_translation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)velocity
{
  x = self->_velocity.x;
  y = self->_velocity.y;
  result.y = y;
  result.x = x;
  return result;
}

@end