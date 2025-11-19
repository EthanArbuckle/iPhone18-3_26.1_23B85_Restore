@interface REScriptASTNode
- (REScriptASTNode)initWithToken:(id)a3;
@end

@implementation REScriptASTNode

- (REScriptASTNode)initWithToken:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REScriptASTNode;
  v6 = [(REScriptASTNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_token, a3);
  }

  return v7;
}

@end