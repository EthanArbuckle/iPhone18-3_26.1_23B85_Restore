@interface _SVXRemoteExpressionParsingServiceProvider
- (id)getWithAceHandler:(id)handler;
@end

@implementation _SVXRemoteExpressionParsingServiceProvider

- (id)getWithAceHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [[_SVXRemoteExpressionParsingService alloc] initWithAceHandler:handlerCopy];

  return v4;
}

@end