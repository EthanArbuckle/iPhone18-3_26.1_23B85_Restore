@interface REScriptASTLiteralNode
+ (id)parseBuffer:(id)a3 error:(id *)a4;
@end

@implementation REScriptASTLiteralNode

+ (id)parseBuffer:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_283BBDA40];
  v7 = [v5 currentToken];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "type")}];
  v9 = [v6 containsObject:v8];

  if (v9)
  {
    v10 = [REScriptASTLiteralNode alloc];
    v11 = [v5 currentToken];
    a4 = [(REScriptASTNode *)v10 initWithToken:v11];

    [v5 next];
  }

  else if (a4)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [v7 value];
    v14 = [v12 stringWithFormat:@"Unexpected token %@ found. Expecting literal token.", v13];

    v18 = @"REErrorTokenKey";
    v19[0] = v7;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a4 = RECreateErrorWithCodeMessageAndUseInfo(204, v14, v15);

    a4 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return a4;
}

@end