@interface ACTTouchEvent
- (ACTTouchEvent)initWithTouchEvent:(id)a3;
- (id)description;
- (void)applyWithTyper:(id)a3 log:(id)a4;
@end

@implementation ACTTouchEvent

- (void)applyWithTyper:(id)a3 log:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ACTTouchEvent *)self touchEvent];
  v8 = [v9 _performTouchEvent:v7 typingLog:v6];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ACTTouchEvent *)self touchEvent];
  v7 = [v3 stringWithFormat:@"<%@: touchEvent=%@>", v5, v6];

  return v7;
}

- (ACTTouchEvent)initWithTouchEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ACTTouchEvent;
  v6 = [(ACTTouchEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_touchEvent, a3);
  }

  return v7;
}

@end