@interface OKActionSwipe
+ (id)swipeActionWithLocation:(CGPoint)location direction:(unint64_t)direction touchCount:(unint64_t)count context:(id)context;
+ (void)setupJavascriptContext:(id)context;
- (OKActionSwipe)init;
- (OKActionSwipe)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OKActionSwipe

+ (id)swipeActionWithLocation:(CGPoint)location direction:(unint64_t)direction touchCount:(unint64_t)count context:(id)context
{
  v7 = [[OKActionSwipe alloc] initWithLocation:count touchCount:context context:location.x, location.y];
  v7->_direction = direction;

  return v7;
}

- (OKActionSwipe)init
{
  v5.receiver = self;
  v5.super_class = OKActionSwipe;
  v2 = [(OKAction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_direction = 1;
    [(OKAction *)v2 setIsInstantaneous:1];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = OKActionSwipe;
  [(OKAction *)&v5 encodeWithCoder:?];
  [coder encodeInt32:LODWORD(self->_direction) forKey:@"direction"];
}

- (OKActionSwipe)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = OKActionSwipe;
  v4 = [(OKAction *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_direction = [coder decodeInt32ForKey:@"direction"];
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)context
{
  v4 = objc_opt_class();

  [context setObject:v4 forKeyedSubscript:@"OKActionSwipe"];
}

@end