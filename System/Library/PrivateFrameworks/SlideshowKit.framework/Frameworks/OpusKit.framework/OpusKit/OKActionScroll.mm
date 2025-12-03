@interface OKActionScroll
+ (id)scrollWith:(CGPoint)with;
+ (void)setupJavascriptContext:(id)context;
- (OKActionScroll)init;
- (OKActionScroll)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OKActionScroll

+ (id)scrollWith:(CGPoint)with
{
  y = with.y;
  x = with.x;
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

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = OKActionScroll;
  [(OKAction *)&v3 encodeWithCoder:coder];
}

- (OKActionScroll)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = OKActionScroll;
  return [(OKAction *)&v4 initWithCoder:coder];
}

+ (void)setupJavascriptContext:(id)context
{
  v4 = objc_opt_class();

  [context setObject:v4 forKeyedSubscript:@"OKActionScroll"];
}

@end