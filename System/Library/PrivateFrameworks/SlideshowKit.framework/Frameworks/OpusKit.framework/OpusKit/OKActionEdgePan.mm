@interface OKActionEdgePan
+ (void)setupJavascriptContext:(id)context;
- (OKActionEdgePan)init;
- (OKActionEdgePan)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OKActionEdgePan

- (OKActionEdgePan)init
{
  v3.receiver = self;
  v3.super_class = OKActionEdgePan;
  return [(OKActionPan *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKActionEdgePan;
  [(OKActionPan *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = OKActionEdgePan;
  [(OKActionPan *)&v3 encodeWithCoder:coder];
}

- (OKActionEdgePan)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = OKActionEdgePan;
  return [(OKActionPan *)&v4 initWithCoder:coder];
}

+ (void)setupJavascriptContext:(id)context
{
  v4 = objc_opt_class();

  [context setObject:v4 forKeyedSubscript:@"OKActionEdgePan"];
}

@end