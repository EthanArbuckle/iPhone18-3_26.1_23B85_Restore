@interface REScriptASTNodeEnumerator
- (BOOL)buildSymbolTableWithError:(id *)error;
- (REScriptASTNodeEnumerator)initWithRootNodes:(id)nodes symbolTable:(id)table;
@end

@implementation REScriptASTNodeEnumerator

- (REScriptASTNodeEnumerator)initWithRootNodes:(id)nodes symbolTable:(id)table
{
  nodesCopy = nodes;
  tableCopy = table;
  v12.receiver = self;
  v12.super_class = REScriptASTNodeEnumerator;
  v9 = [(REScriptASTNodeEnumerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nodes, nodes);
    objc_storeStrong(&v10->_table, table);
  }

  return v10;
}

- (BOOL)buildSymbolTableWithError:(id *)error
{
  v80 = *MEMORY[0x277D85DE8];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = self->_nodes;
  v62 = [(NSArray *)obj countByEnumeratingWithState:&v65 objects:v79 count:16];
  if (!v62)
  {
    v50 = 1;
    goto LABEL_54;
  }

  v63 = *v66;
  while (2)
  {
    for (i = 0; i != v62; ++i)
    {
      if (*v66 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v65 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        type = [v7 type];
        v8Type = [type type];

        v10 = v8Type - 13;
        if ((v8Type - 13) > 2)
        {
          goto LABEL_52;
        }

        table = self->_table;
        name = [v7 name];
        v77 = @"REScriptSymbolRuleTypeKey";
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v78 = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        LODWORD(table) = [(REScriptSymbolTable *)table define:name type:1 options:v14 error:error];

        if (!table)
        {
          goto LABEL_52;
        }

        v15 = self->_table;
        name2 = [v7 name];
        value = [name2 value];
        LOBYTE(v15) = [(REScriptSymbolTable *)v15 setNodeValue:v7 forDefinition:value error:error];

        if ((v15 & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v6;
          options = [v18 options];
          binaryExpressions = REValidatedFeatureOptionsDictionary(options, error);

          if (!binaryExpressions)
          {
            goto LABEL_51;
          }

          v21 = self->_table;
          name3 = [v18 name];
          LODWORD(v21) = [(REScriptSymbolTable *)v21 define:name3 type:0 options:binaryExpressions error:error];

          if (!v21)
          {
            goto LABEL_51;
          }

          value2 = [v18 value];
          if (!value2)
          {

LABEL_26:
            continue;
          }

          v24 = self->_table;
          name4 = [v18 name];
          value3 = [name4 value];
          LOBYTE(v24) = [(REScriptSymbolTable *)v24 setNodeValue:value2 forDefinition:value3 error:error];

          if ((v24 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v6;
            v28 = self->_table;
            name5 = [v27 name];
            v75 = @"REScriptSymbolValueTypeKey";
            type2 = [v27 type];
            value4 = [type2 value];
            v76 = value4;
            v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
            LODWORD(v28) = [(REScriptSymbolTable *)v28 define:name5 type:3 options:v32 error:error];

            if (!v28)
            {
              goto LABEL_52;
            }

            value5 = [v27 value];
            if (!value5)
            {
              goto LABEL_26;
            }

            v34 = value5;
            v35 = self->_table;
            name6 = [v27 name];
            value6 = [name6 value];
            LOBYTE(v35) = [(REScriptSymbolTable *)v35 setNodeValue:v34 forDefinition:value6 error:error];

            if ((v35 & 1) == 0)
            {
              goto LABEL_53;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = v6;
              binaryExpressions = [v38 binaryExpressions];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                expressions = [binaryExpressions expressions];
                firstObject = [expressions firstObject];
              }

              else
              {
                firstObject = binaryExpressions;
              }

              prefixExpression = [v38 prefixExpression];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

LABEL_44:
                if (error)
                {
                  value7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected top level expression."];
                  v69 = @"REErrorTokenKey";
                  binaryExpressions2 = [v38 binaryExpressions];
                  v70 = binaryExpressions2;
                  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
                  *error = RECreateErrorWithCodeMessageAndUseInfo(209, value7, v58);

                  goto LABEL_49;
                }

                goto LABEL_50;
              }

              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                goto LABEL_44;
              }

              prefixExpression2 = [v38 prefixExpression];
              token = [prefixExpression2 token];
              value7 = [token value];

              v64 = 0;
              if (![(REScriptSymbolTable *)self->_table typeForDefinition:value7 type:&v64])
              {
                if (error)
                {
                  v73 = @"REErrorTokenKey";
                  prefixExpression3 = [v38 prefixExpression];
                  token2 = [prefixExpression3 token];
                  v74 = token2;
                  v54Token = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
                  *error = RECreateErrorWithCodeAndUseInfo(207, v54Token);
LABEL_48:
                }

LABEL_49:

LABEL_50:
LABEL_51:

LABEL_52:
LABEL_53:
                v50 = 0;
                goto LABEL_54;
              }

              binaryOperator = [firstObject binaryOperator];
              type3 = [binaryOperator type];

              if (v64 == 3)
              {
                if (type3 - 29 >= 2)
                {
                  goto LABEL_41;
                }
              }

              else if (v64 || type3 != 30)
              {
LABEL_41:
                if (error)
                {
                  v51 = MEMORY[0x277CCACA8];
                  v52 = REDescriptionForTokenType(type3);
                  prefixExpression3 = [v51 stringWithFormat:@"Invalid operator %@. Expecting assignment operator. Did you mean to use <-?", v52];

                  v71 = @"REErrorTokenKey";
                  token2 = [firstObject expression];
                  v54Token = [token2 token];
                  v72 = v54Token;
                  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
                  *error = RECreateErrorWithCodeMessageAndUseInfo(204, prefixExpression3, v56);

                  goto LABEL_48;
                }

                goto LABEL_49;
              }

              v48 = self->_table;
              binaryExpressions3 = [v38 binaryExpressions];
              LOBYTE(v48) = [(REScriptSymbolTable *)v48 setNodeValue:binaryExpressions3 forDefinition:value7 error:error];

              if ((v48 & 1) == 0)
              {
                goto LABEL_53;
              }
            }
          }
        }
      }
    }

    v50 = 1;
    v62 = [(NSArray *)obj countByEnumeratingWithState:&v65 objects:v79 count:16];
    if (v62)
    {
      continue;
    }

    break;
  }

LABEL_54:

  v59 = *MEMORY[0x277D85DE8];
  return v50;
}

@end