@interface OKActionMotion
+ (id)motionActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count rotationX:(double)x rotationY:(double)y rotationZ:(double)z context:(id)context;
+ (id)motionActionWithState:(unint64_t)state rotationX:(double)x rotationY:(double)y rotationZ:(double)z context:(id)context;
+ (void)setupJavascriptContext:(id)context;
- (OKActionMotion)init;
- (OKActionMotion)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OKActionMotion

+ (id)motionActionWithState:(unint64_t)state rotationX:(double)x rotationY:(double)y rotationZ:(double)z context:(id)context
{
  v11 = [OKActionMotion alloc];
  v12 = [(OKAction *)v11 initWithLocation:0 touchCount:context context:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v12[11] = x;
  v12[12] = y;
  v12[13] = z;

  return v12;
}

+ (id)motionActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count rotationX:(double)x rotationY:(double)y rotationZ:(double)z context:(id)context
{
  v12 = [[OKActionMotion alloc] initWithState:state location:count touchCount:context context:location.x, location.y];
  v12->_rotationX = x;
  v12->_rotationY = y;
  v12->_rotationZ = z;

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

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = OKActionMotion;
  [(OKAction *)&v8 encodeWithCoder:?];
  rotationX = self->_rotationX;
  if (rotationX != 0.0)
  {
    *&rotationX = rotationX;
    [coder encodeFloat:@"rotationX" forKey:rotationX];
  }

  rotationY = self->_rotationY;
  if (rotationY != 0.0)
  {
    *&rotationY = rotationY;
    [coder encodeFloat:@"rotationY" forKey:rotationY];
  }

  rotationZ = self->_rotationZ;
  if (rotationZ != 0.0)
  {
    *&rotationZ = rotationZ;
    [coder encodeFloat:@"rotationZ" forKey:rotationZ];
  }
}

- (OKActionMotion)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = OKActionMotion;
  v4 = [(OKAction *)&v9 initWithCoder:?];
  if (v4)
  {
    [coder decodeFloatForKey:@"rotationX"];
    v4->_rotationX = v5;
    [coder decodeFloatForKey:@"rotationY"];
    v4->_rotationY = v6;
    [coder decodeFloatForKey:@"rotationZ"];
    v4->_rotationZ = v7;
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)context
{
  v4 = objc_opt_class();

  [context setObject:v4 forKeyedSubscript:@"OKActionMotion"];
}

@end