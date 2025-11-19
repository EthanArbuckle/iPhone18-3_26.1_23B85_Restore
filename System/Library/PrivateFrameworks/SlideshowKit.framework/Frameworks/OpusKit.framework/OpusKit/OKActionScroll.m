@interface OKActionScroll
+ (id)scrollWith:(CGPoint)a3;
+ (void)setupJavascriptContext:(id)a3;
- (OKActionScroll)init;
- (OKActionScroll)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OKActionScroll

+ (id)scrollWith:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [OKActionScroll alloc];
  v6 = -[OKAction initWithLocation:touchCount:context:](v5, "initWithLocation:touchCount:context:", 1, [MEMORY[0x277CBEB38] dictionary], x, y);

  return v6;
}

- (OKActionScroll)init
{
  v3.receiver = self;
  v3.super_class = OKActionScroll;
  return [(OKAction *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = OKActionScroll;
  [(OKAction *)&v3 encodeWithCoder:a3];
}

- (OKActionScroll)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKActionScroll;
  return [(OKAction *)&v4 initWithCoder:a3];
}

+ (void)setupJavascriptContext:(id)a3
{
  v4 = objc_opt_class();

  [a3 setObject:v4 forKeyedSubscript:@"OKActionScroll"];
}

@end