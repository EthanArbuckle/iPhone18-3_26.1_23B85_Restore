@interface OKActionKeyPressed
+ (id)keyPressedActionWithKey:(id)key atTime:(double)time isKeyUp:(BOOL)up withLocation:(CGPoint)location context:(id)context;
+ (void)setupJavascriptContext:(id)context;
- (OKActionKeyPressed)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OKActionKeyPressed

+ (id)keyPressedActionWithKey:(id)key atTime:(double)time isKeyUp:(BOOL)up withLocation:(CGPoint)location context:(id)context
{
  v10 = [[OKActionKeyPressed alloc] initWithLocation:1 touchCount:context context:location.x, location.y];
  v10->keyPressed = key;
  v10->timestamp = time;
  v10->isKeyUp = up;
  [(OKAction *)v10 setIsInstantaneous:1];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = OKActionKeyPressed;
  [(OKAction *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->keyPressed forKey:@"keyPressed"];
  [coder encodeDouble:@"timestamp" forKey:self->timestamp];
  [coder encodeBool:self->isKeyUp forKey:@"isKeyUp"];
}

- (OKActionKeyPressed)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = OKActionKeyPressed;
  v4 = [(OKAction *)&v7 initWithCoder:?];
  if (v4)
  {
    v4->keyPressed = [coder decodeObjectOfClass:objc_opt_class() forKey:@"keyPressed"];
    [coder decodeDoubleForKey:@"timestamp"];
    v4->timestamp = v5;
    v4->isKeyUp = [coder decodeBoolForKey:@"isKeyUp"];
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

+ (void)setupJavascriptContext:(id)context
{
  v4 = objc_opt_class();

  [context setObject:v4 forKeyedSubscript:@"OKActionKeyPressed"];
}

@end