@interface REScriptASTNode
- (REScriptASTNode)initWithToken:(id)token;
@end

@implementation REScriptASTNode

- (REScriptASTNode)initWithToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = REScriptASTNode;
  v6 = [(REScriptASTNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_token, token);
  }

  return v7;
}

@end