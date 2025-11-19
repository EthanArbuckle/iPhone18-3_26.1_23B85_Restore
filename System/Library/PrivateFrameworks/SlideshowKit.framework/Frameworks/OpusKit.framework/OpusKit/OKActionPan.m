@interface OKActionPan
+ (id)panActionWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 translation:(CGPoint)a6 velocity:(CGPoint)a7 direction:(unint64_t)a8 context:(id)a9;
+ (void)setupJavascriptContext:(id)a3;
- (CGPoint)translation;
- (CGPoint)velocity;
- (OKActionPan)init;
- (OKActionPan)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OKActionPan

+ (id)panActionWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 translation:(CGPoint)a6 velocity:(CGPoint)a7 direction:(unint64_t)a8 context:(id)a9
{
  y = a7.y;
  x = a7.x;
  v12 = a6.y;
  v13 = a6.x;
  v14 = [[OKActionPan alloc] initWithState:a3 location:a5 touchCount:a9 context:a4.x, a4.y];
  [(OKActionPan *)v14 setTranslation:v13, v12];
  [(OKActionPan *)v14 setVelocity:x, y];
  [(OKActionPan *)v14 setDirection:a8];

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

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = OKActionPan;
  [(OKAction *)&v9 encodeWithCoder:?];
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  if (self->_translation.x != *MEMORY[0x277CBF348] || self->_translation.y != v6)
  {
    [a3 encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGPoint:"), @"translation"}];
  }

  if (self->_velocity.x != v5 || self->_velocity.y != v6)
  {
    [a3 encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGPoint:"), @"velocity"}];
  }

  [a3 encodeInt32:LODWORD(self->_direction) forKey:@"direction"];
}

- (OKActionPan)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = OKActionPan;
  v4 = [(OKAction *)&v12 initWithCoder:?];
  if (v4)
  {
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"translation"];
    if (v5)
    {
      [v5 CGPointValue];
      v4->_translation.x = v6;
      v4->_translation.y = v7;
    }

    v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"velocity"];
    if (v8)
    {
      [v8 CGPointValue];
      v4->_velocity.x = v9;
      v4->_velocity.y = v10;
    }

    v4->_direction = [a3 decodeInt32ForKey:@"direction"];
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)a3
{
  v4 = objc_opt_class();

  [a3 setObject:v4 forKeyedSubscript:@"OKActionPan"];
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