@interface OKActionTap
+ (id)tapActionWithLocation:(CGPoint)location tapCount:(unint64_t)count touchCount:(unint64_t)touchCount context:(id)context;
+ (void)setupJavascriptContext:(id)context;
- (OKActionTap)init;
- (OKActionTap)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OKActionTap

+ (id)tapActionWithLocation:(CGPoint)location tapCount:(unint64_t)count touchCount:(unint64_t)touchCount context:(id)context
{
  v7 = [[OKActionTap alloc] initWithLocation:touchCount touchCount:context context:location.x, location.y];
  v7->_tapCount = count;

  return v7;
}

- (OKActionTap)init
{
  v5.receiver = self;
  v5.super_class = OKActionTap;
  v2 = [(OKAction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_tapCount = 0;
    [(OKAction *)v2 setIsInstantaneous:1];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = OKActionTap;
  [(OKAction *)&v5 encodeWithCoder:?];
  [coder encodeInt32:LODWORD(self->_tapCount) forKey:@"tapCount"];
}

- (OKActionTap)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = OKActionTap;
  v4 = [(OKAction *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_tapCount = [coder decodeInt32ForKey:@"tapCount"];
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)context
{
  v4 = objc_opt_class();

  [context setObject:v4 forKeyedSubscript:@"OKActionTap"];
}

@end