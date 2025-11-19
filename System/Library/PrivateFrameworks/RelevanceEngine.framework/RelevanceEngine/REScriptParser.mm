@interface REScriptParser
- (REScriptParser)initWithBacktrackingBuffer:(id)a3;
- (REScriptParserDelegate)delegate;
- (id)parse;
@end

@implementation REScriptParser

- (REScriptParser)initWithBacktrackingBuffer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REScriptParser;
  v6 = [(REScriptParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_buffer, a3);
  }

  return v7;
}

- (id)parse
{
  v3 = [MEMORY[0x277CBEB18] array];
  if (([(REBacktrackingTokenBuffer *)self->_buffer isEmpty]& 1) == 0)
  {
    while (1)
    {
      v4 = [(REBacktrackingTokenBuffer *)self->_buffer currentToken];
      v5 = [v4 type];

      if ((v5 - 13) < 3)
      {
        break;
      }

      if (v5 == 12)
      {
        buffer = self->_buffer;
        v19 = 0;
        v7 = [REScriptASTFeatureNode parseBuffer:buffer error:&v19];
        v8 = v19;
LABEL_6:
        v10 = v8;
        if (!v7)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }

      v11 = self->_buffer;
      v18 = 0;
      v7 = [REScriptASTDeclarationNode parseBuffer:v11 error:&v18];
      v10 = v18;
      if (!v7)
      {
        v12 = self->_buffer;
        v17 = v10;
        v7 = [REScriptASTExpressionNode parseBuffer:v12 error:&v17];
        v13 = v17;

        v10 = v13;
        if (!v7)
        {
LABEL_11:
          v14 = [(REScriptParser *)self delegate];
          [v14 parser:self didEncouterParserError:v10];

          goto LABEL_12;
        }
      }

LABEL_7:
      [v3 addObject:v7];

      if ([(REBacktrackingTokenBuffer *)self->_buffer isEmpty])
      {
        goto LABEL_12;
      }
    }

    v6 = self->_buffer;
    v20 = 0;
    v7 = [REScriptASTRuleNode parseBuffer:v6 error:&v20];
    v8 = v20;
    goto LABEL_6;
  }

LABEL_12:
  v15 = [v3 copy];

  return v15;
}

- (REScriptParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end