@interface TIKeyboardInteractionProtocolEventAddTouchEvent
- (NSString)description;
- (TIKeyboardInteractionProtocolEventAddTouchEvent)initWithCoder:(id)coder;
- (TIKeyboardInteractionProtocolEventAddTouchEvent)initWithTouchEvent:(id)event;
@end

@implementation TIKeyboardInteractionProtocolEventAddTouchEvent

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  shortDescription = [(TIKeyboardTouchEvent *)self->_touchEvent shortDescription];
  v4 = [v2 stringWithFormat:@"<TouchEvent: %@>", shortDescription];

  return v4;
}

- (TIKeyboardInteractionProtocolEventAddTouchEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventAddTouchEvent;
  v5 = [(TIKeyboardInteractionProtocolEventAddTouchEvent *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"touchEvent"];
    touchEvent = v5->_touchEvent;
    v5->_touchEvent = v6;
  }

  return v5;
}

- (TIKeyboardInteractionProtocolEventAddTouchEvent)initWithTouchEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventAddTouchEvent;
  v6 = [(TIKeyboardInteractionProtocolEventAddTouchEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_touchEvent, event);
  }

  return v7;
}

@end