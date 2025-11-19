@interface REScriptASTIdentifierNode
+ (id)parseBuffer:(id)a3 error:(id *)a4;
- (NSString)name;
- (id)dependencies;
@end

@implementation REScriptASTIdentifierNode

+ (id)parseBuffer:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (REExpectTokenTypeInBuffer(v5, 6uLL, a4))
  {
    v6 = [REScriptASTIdentifierNode alloc];
    v7 = [v5 currentToken];
    v8 = [(REScriptASTNode *)v6 initWithToken:v7];

    [v5 next];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)name
{
  v2 = [(REScriptASTNode *)self token];
  v3 = [v2 value];

  return v3;
}

- (id)dependencies
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(REScriptASTIdentifierNode *)self name];
  v4 = [v2 setWithObject:v3];

  return v4;
}

@end