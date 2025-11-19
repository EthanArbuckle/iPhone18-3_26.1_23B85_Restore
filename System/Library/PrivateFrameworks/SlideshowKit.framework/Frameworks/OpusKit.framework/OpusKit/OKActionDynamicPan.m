@interface OKActionDynamicPan
+ (void)setupJavascriptContext:(id)a3;
- (OKActionDynamicPan)init;
- (OKActionDynamicPan)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = OKActionDynamicPan;
  [(OKActionPan *)&v3 encodeWithCoder:a3];
}

- (OKActionDynamicPan)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKActionDynamicPan;
  return [(OKActionPan *)&v4 initWithCoder:a3];
}

+ (void)setupJavascriptContext:(id)a3
{
  v4 = objc_opt_class();

  [a3 setObject:v4 forKeyedSubscript:@"OKActionDynamicPan"];
}

@end