@interface VUIDeviceMediaLibrary
- (void)updateProgressWithCompletionHandler:(id)handler;
@end

@implementation VUIDeviceMediaLibrary

- (void)updateProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = handlerCopy;
  if (!handlerCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"completionHandler"}];
    handlerCopy = 0;
  }

  (*(handlerCopy + 2))(1.0);
}

@end