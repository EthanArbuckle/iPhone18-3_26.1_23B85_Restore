@interface VUIDeviceMediaLibrary
- (void)updateProgressWithCompletionHandler:(id)a3;
@end

@implementation VUIDeviceMediaLibrary

- (void)updateProgressWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"completionHandler"}];
    v3 = 0;
  }

  (*(v3 + 2))(1.0);
}

@end