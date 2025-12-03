@interface OKActionLongPress
+ (id)longPressActionWithLocation:(CGPoint)location tapCount:(unint64_t)count touchCount:(unint64_t)touchCount pressDuration:(double)duration context:(id)context;
+ (void)setupJavascriptContext:(id)context;
- (OKActionLongPress)init;
- (OKActionLongPress)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OKActionLongPress

+ (id)longPressActionWithLocation:(CGPoint)location tapCount:(unint64_t)count touchCount:(unint64_t)touchCount pressDuration:(double)duration context:(id)context
{
  v9 = [[OKActionLongPress alloc] initWithLocation:touchCount touchCount:context context:location.x, location.y];
  [(OKActionLongPress *)v9 setTapCount:count];
  [(OKActionLongPress *)v9 setPressDuration:duration];

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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = OKActionLongPress;
  [(OKAction *)&v5 encodeWithCoder:?];
  [coder encodeInt32:LODWORD(self->_tapCount) forKey:@"tapCount"];
  [coder encodeDouble:@"pressDuration" forKey:self->_pressDuration];
}

- (OKActionLongPress)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = OKActionLongPress;
  v4 = [(OKAction *)&v7 initWithCoder:?];
  if (v4)
  {
    v4->_tapCount = [coder decodeInt32ForKey:@"tapCount"];
    [coder decodeDoubleForKey:@"pressDuration"];
    v4->_pressDuration = v5;
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)context
{
  v4 = objc_opt_class();

  [context setObject:v4 forKeyedSubscript:@"OKActionLongPress"];
}

@end