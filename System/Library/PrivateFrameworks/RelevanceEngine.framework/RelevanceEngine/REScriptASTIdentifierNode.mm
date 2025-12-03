@interface REScriptASTIdentifierNode
+ (id)parseBuffer:(id)buffer error:(id *)error;
- (NSString)name;
- (id)dependencies;
@end

@implementation REScriptASTIdentifierNode

+ (id)parseBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  if (REExpectTokenTypeInBuffer(bufferCopy, 6uLL, error))
  {
    v6 = [REScriptASTIdentifierNode alloc];
    currentToken = [bufferCopy currentToken];
    v8 = [(REScriptASTNode *)v6 initWithToken:currentToken];

    [bufferCopy next];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)name
{
  token = [(REScriptASTNode *)self token];
  value = [token value];

  return value;
}

- (id)dependencies
{
  v2 = MEMORY[0x277CBEB98];
  name = [(REScriptASTIdentifierNode *)self name];
  v4 = [v2 setWithObject:name];

  return v4;
}

@end