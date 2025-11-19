@interface OKActionTap
+ (id)tapActionWithLocation:(CGPoint)a3 tapCount:(unint64_t)a4 touchCount:(unint64_t)a5 context:(id)a6;
+ (void)setupJavascriptContext:(id)a3;
- (OKActionTap)init;
- (OKActionTap)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OKActionTap

+ (id)tapActionWithLocation:(CGPoint)a3 tapCount:(unint64_t)a4 touchCount:(unint64_t)a5 context:(id)a6
{
  v7 = [[OKActionTap alloc] initWithLocation:a5 touchCount:a6 context:a3.x, a3.y];
  v7->_tapCount = a4;

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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = OKActionTap;
  [(OKAction *)&v5 encodeWithCoder:?];
  [a3 encodeInt32:LODWORD(self->_tapCount) forKey:@"tapCount"];
}

- (OKActionTap)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = OKActionTap;
  v4 = [(OKAction *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_tapCount = [a3 decodeInt32ForKey:@"tapCount"];
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)a3
{
  v4 = objc_opt_class();

  [a3 setObject:v4 forKeyedSubscript:@"OKActionTap"];
}

@end