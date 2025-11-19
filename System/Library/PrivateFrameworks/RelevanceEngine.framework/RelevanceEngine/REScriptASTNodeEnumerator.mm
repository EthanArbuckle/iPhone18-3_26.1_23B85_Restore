@interface REScriptASTNodeEnumerator
- (BOOL)buildSymbolTableWithError:(id *)a3;
- (REScriptASTNodeEnumerator)initWithRootNodes:(id)a3 symbolTable:(id)a4;
@end

@implementation REScriptASTNodeEnumerator

- (REScriptASTNodeEnumerator)initWithRootNodes:(id)a3 symbolTable:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REScriptASTNodeEnumerator;
  v9 = [(REScriptASTNodeEnumerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nodes, a3);
    objc_storeStrong(&v10->_table, a4);
  }

  return v10;
}

- (BOOL)buildSymbolTableWithError:(id *)a3
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
        v8 = [v7 type];
        v9 = [v8 type];

        v10 = v9 - 13;
        if ((v9 - 13) > 2)
        {
          goto LABEL_52;
        }

        table = self->_table;
        v12 = [v7 name];
        v77 = @"REScriptSymbolRuleTypeKey";
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v78 = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        LODWORD(table) = [(REScriptSymbolTable *)table define:v12 type:1 options:v14 error:a3];

        if (!table)
        {
          goto LABEL_52;
        }

        v15 = self->_table;
        v16 = [v7 name];
        v17 = [v16 value];
        LOBYTE(v15) = [(REScriptSymbolTable *)v15 setNodeValue:v7 forDefinition:v17 error:a3];

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
          v19 = [v18 options];
          v20 = REValidatedFeatureOptionsDictionary(v19, a3);

          if (!v20)
          {
            goto LABEL_51;
          }

          v21 = self->_table;
          v22 = [v18 name];
          LODWORD(v21) = [(REScriptSymbolTable *)v21 define:v22 type:0 options:v20 error:a3];

          if (!v21)
          {
            goto LABEL_51;
          }

          v23 = [v18 value];
          if (!v23)
          {

LABEL_26:
            continue;
          }

          v24 = self->_table;
          v25 = [v18 name];
          v26 = [v25 value];
          LOBYTE(v24) = [(REScriptSymbolTable *)v24 setNodeValue:v23 forDefinition:v26 error:a3];

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
            v29 = [v27 name];
            v75 = @"REScriptSymbolValueTypeKey";
            v30 = [v27 type];
            v31 = [v30 value];
            v76 = v31;
            v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
            LODWORD(v28) = [(REScriptSymbolTable *)v28 define:v29 type:3 options:v32 error:a3];

            if (!v28)
            {
              goto LABEL_52;
            }

            v33 = [v27 value];
            if (!v33)
            {
              goto LABEL_26;
            }

            v34 = v33;
            v35 = self->_table;
            v36 = [v27 name];
            v37 = [v36 value];
            LOBYTE(v35) = [(REScriptSymbolTable *)v35 setNodeValue:v34 forDefinition:v37 error:a3];

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
              v20 = [v38 binaryExpressions];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v39 = [v20 expressions];
                v40 = [v39 firstObject];
              }

              else
              {
                v40 = v20;
              }

              v41 = [v38 prefixExpression];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

LABEL_44:
                if (a3)
                {
                  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected top level expression."];
                  v69 = @"REErrorTokenKey";
                  v57 = [v38 binaryExpressions];
                  v70 = v57;
                  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
                  *a3 = RECreateErrorWithCodeMessageAndUseInfo(209, v45, v58);

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

              v43 = [v38 prefixExpression];
              v44 = [v43 token];
              v45 = [v44 value];

              v64 = 0;
              if (![(REScriptSymbolTable *)self->_table typeForDefinition:v45 type:&v64])
              {
                if (a3)
                {
                  v73 = @"REErrorTokenKey";
                  v53 = [v38 prefixExpression];
                  v54 = [v53 token];
                  v74 = v54;
                  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
                  *a3 = RECreateErrorWithCodeAndUseInfo(207, v55);
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

              v46 = [v40 binaryOperator];
              v47 = [v46 type];

              if (v64 == 3)
              {
                if (v47 - 29 >= 2)
                {
                  goto LABEL_41;
                }
              }

              else if (v64 || v47 != 30)
              {
LABEL_41:
                if (a3)
                {
                  v51 = MEMORY[0x277CCACA8];
                  v52 = REDescriptionForTokenType(v47);
                  v53 = [v51 stringWithFormat:@"Invalid operator %@. Expecting assignment operator. Did you mean to use <-?", v52];

                  v71 = @"REErrorTokenKey";
                  v54 = [v40 expression];
                  v55 = [v54 token];
                  v72 = v55;
                  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
                  *a3 = RECreateErrorWithCodeMessageAndUseInfo(204, v53, v56);

                  goto LABEL_48;
                }

                goto LABEL_49;
              }

              v48 = self->_table;
              v49 = [v38 binaryExpressions];
              LOBYTE(v48) = [(REScriptSymbolTable *)v48 setNodeValue:v49 forDefinition:v45 error:a3];

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