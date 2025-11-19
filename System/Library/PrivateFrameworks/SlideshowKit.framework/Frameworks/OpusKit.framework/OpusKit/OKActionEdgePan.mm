@interface OKActionEdgePan
+ (void)setupJavascriptContext:(id)a3;
- (OKActionEdgePan)init;
- (OKActionEdgePan)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = OKActionEdgePan;
  [(OKActionPan *)&v3 encodeWithCoder:a3];
}

- (OKActionEdgePan)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKActionEdgePan;
  return [(OKActionPan *)&v4 initWithCoder:a3];
}

+ (void)setupJavascriptContext:(id)a3
{
  v4 = objc_opt_class();

  [a3 setObject:v4 forKeyedSubscript:@"OKActionEdgePan"];
}

@end