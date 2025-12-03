@interface TIKeyboardInteractionProtocolEventChangingContextWithTrigger
- (TIKeyboardInteractionProtocolEventChangingContextWithTrigger)initWithCoder:(id)coder;
- (TIKeyboardInteractionProtocolEventChangingContextWithTrigger)initWithContextChangeTrigger:(id)trigger;
@end

@implementation TIKeyboardInteractionProtocolEventChangingContextWithTrigger

- (TIKeyboardInteractionProtocolEventChangingContextWithTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventChangingContextWithTrigger;
  v5 = [(TIKeyboardInteractionProtocolEventChangingContextWithTrigger *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextChangeTrigger"];
    contextChangeTrigger = v5->_contextChangeTrigger;
    v5->_contextChangeTrigger = v6;
  }

  return v5;
}

- (TIKeyboardInteractionProtocolEventChangingContextWithTrigger)initWithContextChangeTrigger:(id)trigger
{
  triggerCopy = trigger;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventChangingContextWithTrigger;
  v6 = [(TIKeyboardInteractionProtocolEventChangingContextWithTrigger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextChangeTrigger, trigger);
  }

  return v7;
}

@end