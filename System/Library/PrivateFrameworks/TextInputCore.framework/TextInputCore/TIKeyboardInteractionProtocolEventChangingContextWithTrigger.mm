@interface TIKeyboardInteractionProtocolEventChangingContextWithTrigger
- (TIKeyboardInteractionProtocolEventChangingContextWithTrigger)initWithCoder:(id)a3;
- (TIKeyboardInteractionProtocolEventChangingContextWithTrigger)initWithContextChangeTrigger:(id)a3;
@end

@implementation TIKeyboardInteractionProtocolEventChangingContextWithTrigger

- (TIKeyboardInteractionProtocolEventChangingContextWithTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventChangingContextWithTrigger;
  v5 = [(TIKeyboardInteractionProtocolEventChangingContextWithTrigger *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextChangeTrigger"];
    contextChangeTrigger = v5->_contextChangeTrigger;
    v5->_contextChangeTrigger = v6;
  }

  return v5;
}

- (TIKeyboardInteractionProtocolEventChangingContextWithTrigger)initWithContextChangeTrigger:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventChangingContextWithTrigger;
  v6 = [(TIKeyboardInteractionProtocolEventChangingContextWithTrigger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextChangeTrigger, a3);
  }

  return v7;
}

@end