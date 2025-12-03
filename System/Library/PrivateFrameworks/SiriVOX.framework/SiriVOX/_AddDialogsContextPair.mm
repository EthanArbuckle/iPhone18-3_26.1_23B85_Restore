@interface _AddDialogsContextPair
- (_AddDialogsContextPair)initWithCommand:(id)command context:(id)context;
@end

@implementation _AddDialogsContextPair

- (_AddDialogsContextPair)initWithCommand:(id)command context:(id)context
{
  commandCopy = command;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = _AddDialogsContextPair;
  v9 = [(_AddDialogsContextPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_command, command);
    objc_storeStrong(&v10->_context, context);
  }

  return v10;
}

@end