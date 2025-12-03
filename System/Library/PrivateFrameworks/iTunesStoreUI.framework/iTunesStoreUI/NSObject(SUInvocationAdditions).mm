@interface NSObject(SUInvocationAdditions)
- (SUResponderChainInvocationRecorder)responderChainProxy:()SUInvocationAdditions;
@end

@implementation NSObject(SUInvocationAdditions)

- (SUResponderChainInvocationRecorder)responderChainProxy:()SUInvocationAdditions
{
  v3 = [[SUResponderChainInvocationRecorder alloc] initWithTarget:self protocol:a3];

  return v3;
}

@end