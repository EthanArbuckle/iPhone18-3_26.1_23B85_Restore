@interface OKActionDynamicPan
+ (void)setupJavascriptContext:(id)context;
- (OKActionDynamicPan)init;
- (OKActionDynamicPan)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OKActionDynamicPan

- (OKActionDynamicPan)init
{
  v3.receiver = self;
  v3.super_class = OKActionDynamicPan;
  return [(OKActionPan *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKActionDynamicPan;
  [(OKActionPan *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = OKActionDynamicPan;
  [(OKActionPan *)&v3 encodeWithCoder:coder];
}

- (OKActionDynamicPan)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = OKActionDynamicPan;
  return [(OKActionPan *)&v4 initWithCoder:coder];
}

+ (void)setupJavascriptContext:(id)context
{
  v4 = objc_opt_class();

  [context setObject:v4 forKeyedSubscript:@"OKActionDynamicPan"];
}

@end