@interface NSObject(MainThreadMessaging)
- (void)mf_performOnewaySelectorInMainThread:()MainThreadMessaging withObject:withObject:;
@end

@implementation NSObject(MainThreadMessaging)

- (void)mf_performOnewaySelectorInMainThread:()MainThreadMessaging withObject:withObject:
{
  v12 = a4;
  v11 = a5;
  v8 = [a1 methodSignatureForSelector:a3];
  v9 = [v8 numberOfArguments];
  v10 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v8];
  [v10 retainArguments];
  [v10 setTarget:a1];
  [v10 setSelector:a3];
  if (v9 >= 3)
  {
    [v10 setArgument:&v12 atIndex:2];
    if (v9 != 3)
    {
      [v10 setArgument:&v11 atIndex:3];
    }
  }

  [v10 performSelectorOnMainThread:sel_invoke withObject:0 waitUntilDone:0];
}

@end