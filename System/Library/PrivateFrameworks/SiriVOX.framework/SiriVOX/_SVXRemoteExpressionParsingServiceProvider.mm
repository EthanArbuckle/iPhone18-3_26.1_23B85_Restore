@interface _SVXRemoteExpressionParsingServiceProvider
- (id)getWithAceHandler:(id)a3;
@end

@implementation _SVXRemoteExpressionParsingServiceProvider

- (id)getWithAceHandler:(id)a3
{
  v3 = a3;
  v4 = [[_SVXRemoteExpressionParsingService alloc] initWithAceHandler:v3];

  return v4;
}

@end