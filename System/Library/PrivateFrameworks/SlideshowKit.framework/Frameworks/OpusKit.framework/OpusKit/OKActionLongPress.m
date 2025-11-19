@interface OKActionLongPress
+ (id)longPressActionWithLocation:(CGPoint)a3 tapCount:(unint64_t)a4 touchCount:(unint64_t)a5 pressDuration:(double)a6 context:(id)a7;
+ (void)setupJavascriptContext:(id)a3;
- (OKActionLongPress)init;
- (OKActionLongPress)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OKActionLongPress

+ (id)longPressActionWithLocation:(CGPoint)a3 tapCount:(unint64_t)a4 touchCount:(unint64_t)a5 pressDuration:(double)a6 context:(id)a7
{
  v9 = [[OKActionLongPress alloc] initWithLocation:a5 touchCount:a7 context:a3.x, a3.y];
  [(OKActionLongPress *)v9 setTapCount:a4];
  [(OKActionLongPress *)v9 setPressDuration:a6];

  return v9;
}

- (OKActionLongPress)init
{
  v5.receiver = self;
  v5.super_class = OKActionLongPress;
  v2 = [(OKAction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_tapCount = 0;
    v2->_pressDuration = 0.0;
    [(OKAction *)v2 setIsInstantaneous:1];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKActionLongPress;
  [(OKAction *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = OKActionLongPress;
  [(OKAction *)&v5 encodeWithCoder:?];
  [a3 encodeInt32:LODWORD(self->_tapCount) forKey:@"tapCount"];
  [a3 encodeDouble:@"pressDuration" forKey:self->_pressDuration];
}

- (OKActionLongPress)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = OKActionLongPress;
  v4 = [(OKAction *)&v7 initWithCoder:?];
  if (v4)
  {
    v4->_tapCount = [a3 decodeInt32ForKey:@"tapCount"];
    [a3 decodeDoubleForKey:@"pressDuration"];
    v4->_pressDuration = v5;
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)a3
{
  v4 = objc_opt_class();

  [a3 setObject:v4 forKeyedSubscript:@"OKActionLongPress"];
}

@end