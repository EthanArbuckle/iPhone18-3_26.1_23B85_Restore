@interface OKActionKeyPressed
+ (id)keyPressedActionWithKey:(id)a3 atTime:(double)a4 isKeyUp:(BOOL)a5 withLocation:(CGPoint)a6 context:(id)a7;
+ (void)setupJavascriptContext:(id)a3;
- (OKActionKeyPressed)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OKActionKeyPressed

+ (id)keyPressedActionWithKey:(id)a3 atTime:(double)a4 isKeyUp:(BOOL)a5 withLocation:(CGPoint)a6 context:(id)a7
{
  v10 = [[OKActionKeyPressed alloc] initWithLocation:1 touchCount:a7 context:a6.x, a6.y];
  v10->keyPressed = a3;
  v10->timestamp = a4;
  v10->isKeyUp = a5;
  [(OKAction *)v10 setIsInstantaneous:1];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = OKActionKeyPressed;
  [(OKAction *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->keyPressed forKey:@"keyPressed"];
  [a3 encodeDouble:@"timestamp" forKey:self->timestamp];
  [a3 encodeBool:self->isKeyUp forKey:@"isKeyUp"];
}

- (OKActionKeyPressed)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = OKActionKeyPressed;
  v4 = [(OKAction *)&v7 initWithCoder:?];
  if (v4)
  {
    v4->keyPressed = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"keyPressed"];
    [a3 decodeDoubleForKey:@"timestamp"];
    v4->timestamp = v5;
    v4->isKeyUp = [a3 decodeBoolForKey:@"isKeyUp"];
    [(OKAction *)v4 setIsInstantaneous:1];
  }

  return v4;
}

- (void)dealloc
{
  keyPressed = self->keyPressed;
  if (keyPressed)
  {

    self->keyPressed = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionKeyPressed;
  [(OKAction *)&v4 dealloc];
}

+ (void)setupJavascriptContext:(id)a3
{
  v4 = objc_opt_class();

  [a3 setObject:v4 forKeyedSubscript:@"OKActionKeyPressed"];
}

@end