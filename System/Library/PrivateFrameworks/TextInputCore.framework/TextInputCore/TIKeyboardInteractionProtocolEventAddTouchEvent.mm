@interface TIKeyboardInteractionProtocolEventAddTouchEvent
- (NSString)description;
- (TIKeyboardInteractionProtocolEventAddTouchEvent)initWithCoder:(id)a3;
- (TIKeyboardInteractionProtocolEventAddTouchEvent)initWithTouchEvent:(id)a3;
@end

@implementation TIKeyboardInteractionProtocolEventAddTouchEvent

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TIKeyboardTouchEvent *)self->_touchEvent shortDescription];
  v4 = [v2 stringWithFormat:@"<TouchEvent: %@>", v3];

  return v4;
}

- (TIKeyboardInteractionProtocolEventAddTouchEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventAddTouchEvent;
  v5 = [(TIKeyboardInteractionProtocolEventAddTouchEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"touchEvent"];
    touchEvent = v5->_touchEvent;
    v5->_touchEvent = v6;
  }

  return v5;
}

- (TIKeyboardInteractionProtocolEventAddTouchEvent)initWithTouchEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventAddTouchEvent;
  v6 = [(TIKeyboardInteractionProtocolEventAddTouchEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_touchEvent, a3);
  }

  return v7;
}

@end