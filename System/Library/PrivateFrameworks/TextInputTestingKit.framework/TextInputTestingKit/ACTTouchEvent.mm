@interface ACTTouchEvent
- (ACTTouchEvent)initWithTouchEvent:(id)event;
- (id)description;
- (void)applyWithTyper:(id)typer log:(id)log;
@end

@implementation ACTTouchEvent

- (void)applyWithTyper:(id)typer log:(id)log
{
  typerCopy = typer;
  logCopy = log;
  touchEvent = [(ACTTouchEvent *)self touchEvent];
  v8 = [typerCopy _performTouchEvent:touchEvent typingLog:logCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  touchEvent = [(ACTTouchEvent *)self touchEvent];
  v7 = [v3 stringWithFormat:@"<%@: touchEvent=%@>", v5, touchEvent];

  return v7;
}

- (ACTTouchEvent)initWithTouchEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = ACTTouchEvent;
  v6 = [(ACTTouchEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_touchEvent, event);
  }

  return v7;
}

@end