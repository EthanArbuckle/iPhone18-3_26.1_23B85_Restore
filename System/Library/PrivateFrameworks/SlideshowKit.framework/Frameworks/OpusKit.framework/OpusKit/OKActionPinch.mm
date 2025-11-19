@interface OKActionPinch
+ (id)pinchActionWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 scale:(double)a6 angle:(double)a7 translation:(CGPoint)a8 velocity:(double)a9 context:(id)a10;
+ (void)setupJavascriptContext:(id)a3;
- (CGPoint)translation;
- (OKActionPinch)init;
- (OKActionPinch)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OKActionPinch

+ (id)pinchActionWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 scale:(double)a6 angle:(double)a7 translation:(CGPoint)a8 velocity:(double)a9 context:(id)a10
{
  y = a8.y;
  x = a8.x;
  v15 = [[OKActionPinch alloc] initWithState:a3 location:a5 touchCount:a10 context:a4.x, a4.y];
  [(OKActionPinch *)v15 setScale:a6];
  [(OKActionPinch *)v15 setAngle:a7];
  [(OKActionPinch *)v15 setTranslation:x, y];
  [(OKActionPinch *)v15 setVelocity:a9];

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

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = OKActionPinch;
  [(OKAction *)&v6 encodeWithCoder:?];
  if (self->_translation.x != *MEMORY[0x277CBF348] || self->_translation.y != *(MEMORY[0x277CBF348] + 8))
  {
    [a3 encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGPoint:"), @"translation"}];
  }

  [a3 encodeDouble:@"scale" forKey:self->_scale];
  [a3 encodeDouble:@"angle" forKey:self->_angle];
  [a3 encodeDouble:@"velocity" forKey:self->_velocity];
}

- (OKActionPinch)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = OKActionPinch;
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

    [a3 decodeDoubleForKey:@"scale"];
    v4->_scale = v8;
    [a3 decodeDoubleForKey:@"angle"];
    v4->_angle = v9;
    [a3 decodeDoubleForKey:@"velocity"];
    v4->_velocity = v10;
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)a3
{
  v4 = objc_opt_class();

  [a3 setObject:v4 forKeyedSubscript:@"OKActionPinch"];
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