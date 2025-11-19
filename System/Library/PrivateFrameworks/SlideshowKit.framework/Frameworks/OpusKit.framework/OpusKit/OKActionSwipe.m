@interface OKActionSwipe
+ (id)swipeActionWithLocation:(CGPoint)a3 direction:(unint64_t)a4 touchCount:(unint64_t)a5 context:(id)a6;
+ (void)setupJavascriptContext:(id)a3;
- (OKActionSwipe)init;
- (OKActionSwipe)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OKActionSwipe

+ (id)swipeActionWithLocation:(CGPoint)a3 direction:(unint64_t)a4 touchCount:(unint64_t)a5 context:(id)a6
{
  v7 = [[OKActionSwipe alloc] initWithLocation:a5 touchCount:a6 context:a3.x, a3.y];
  v7->_direction = a4;

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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = OKActionSwipe;
  [(OKAction *)&v5 encodeWithCoder:?];
  [a3 encodeInt32:LODWORD(self->_direction) forKey:@"direction"];
}

- (OKActionSwipe)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = OKActionSwipe;
  v4 = [(OKAction *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_direction = [a3 decodeInt32ForKey:@"direction"];
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)a3
{
  v4 = objc_opt_class();

  [a3 setObject:v4 forKeyedSubscript:@"OKActionSwipe"];
}

@end