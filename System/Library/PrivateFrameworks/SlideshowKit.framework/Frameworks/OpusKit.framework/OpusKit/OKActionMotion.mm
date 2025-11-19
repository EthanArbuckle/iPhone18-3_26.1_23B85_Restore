@interface OKActionMotion
+ (id)motionActionWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 rotationX:(double)a6 rotationY:(double)a7 rotationZ:(double)a8 context:(id)a9;
+ (id)motionActionWithState:(unint64_t)a3 rotationX:(double)a4 rotationY:(double)a5 rotationZ:(double)a6 context:(id)a7;
+ (void)setupJavascriptContext:(id)a3;
- (OKActionMotion)init;
- (OKActionMotion)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OKActionMotion

+ (id)motionActionWithState:(unint64_t)a3 rotationX:(double)a4 rotationY:(double)a5 rotationZ:(double)a6 context:(id)a7
{
  v11 = [OKActionMotion alloc];
  v12 = [(OKAction *)v11 initWithLocation:0 touchCount:a7 context:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v12[11] = a4;
  v12[12] = a5;
  v12[13] = a6;

  return v12;
}

+ (id)motionActionWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 rotationX:(double)a6 rotationY:(double)a7 rotationZ:(double)a8 context:(id)a9
{
  v12 = [[OKActionMotion alloc] initWithState:a3 location:a5 touchCount:a9 context:a4.x, a4.y];
  v12->_rotationX = a6;
  v12->_rotationY = a7;
  v12->_rotationZ = a8;

  return v12;
}

- (OKActionMotion)init
{
  v3.receiver = self;
  v3.super_class = OKActionMotion;
  result = [(OKAction *)&v3 init];
  if (result)
  {
    result->_rotationX = 0.0;
    result->_rotationY = 0.0;
    result->_rotationZ = 0.0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = OKActionMotion;
  [(OKAction *)&v8 encodeWithCoder:?];
  rotationX = self->_rotationX;
  if (rotationX != 0.0)
  {
    *&rotationX = rotationX;
    [a3 encodeFloat:@"rotationX" forKey:rotationX];
  }

  rotationY = self->_rotationY;
  if (rotationY != 0.0)
  {
    *&rotationY = rotationY;
    [a3 encodeFloat:@"rotationY" forKey:rotationY];
  }

  rotationZ = self->_rotationZ;
  if (rotationZ != 0.0)
  {
    *&rotationZ = rotationZ;
    [a3 encodeFloat:@"rotationZ" forKey:rotationZ];
  }
}

- (OKActionMotion)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = OKActionMotion;
  v4 = [(OKAction *)&v9 initWithCoder:?];
  if (v4)
  {
    [a3 decodeFloatForKey:@"rotationX"];
    v4->_rotationX = v5;
    [a3 decodeFloatForKey:@"rotationY"];
    v4->_rotationY = v6;
    [a3 decodeFloatForKey:@"rotationZ"];
    v4->_rotationZ = v7;
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)a3
{
  v4 = objc_opt_class();

  [a3 setObject:v4 forKeyedSubscript:@"OKActionMotion"];
}

@end