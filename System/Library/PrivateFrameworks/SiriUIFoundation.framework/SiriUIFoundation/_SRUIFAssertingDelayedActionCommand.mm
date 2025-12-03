@interface _SRUIFAssertingDelayedActionCommand
- (_SRUIFAssertingDelayedActionCommand)initWithCommand:(id)command assertion:(id)assertion;
@end

@implementation _SRUIFAssertingDelayedActionCommand

- (_SRUIFAssertingDelayedActionCommand)initWithCommand:(id)command assertion:(id)assertion
{
  commandCopy = command;
  assertionCopy = assertion;
  v12.receiver = self;
  v12.super_class = _SRUIFAssertingDelayedActionCommand;
  v9 = [(_SRUIFAssertingDelayedActionCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_command, command);
    objc_storeStrong(&v10->_assertion, assertion);
  }

  return v10;
}

@end