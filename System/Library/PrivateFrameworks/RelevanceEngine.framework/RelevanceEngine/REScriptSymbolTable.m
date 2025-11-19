@interface REScriptSymbolTable
- (BOOL)define:(id)a3 type:(unint64_t)a4 options:(id)a5 error:(id *)a6;
- (BOOL)setNodeValue:(id)a3 forDefinition:(id)a4 error:(id *)a5;
- (BOOL)setObjectValue:(id)a3 forDefinition:(id)a4 error:(id *)a5;
- (BOOL)typeForDefinition:(id)a3 type:(unint64_t *)a4;
- (REScriptSymbolTable)initWithParentScope:(id)a3;
- (id)nodeValueForDefinition:(id)a3;
- (id)objectValueForDefinition:(id)a3;
- (void)_enumerateObjectsOfType:(unint64_t)a3 usingBlock:(id)a4;
@end

@implementation REScriptSymbolTable

- (REScriptSymbolTable)initWithParentScope:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = REScriptSymbolTable;
  v5 = [(REScriptSymbolTable *)&v18 init];
  if (v5)
  {
    v6 = v4;
    v4 = v6;
    if (v6)
    {
      v13 = v6;
      while (v13 != v5)
      {
        v14 = v13[1];

        v13 = v14;
        if (!v14)
        {
          goto LABEL_9;
        }
      }

      RERaiseInternalException(*MEMORY[0x277CBE660], @"Table cannot be it's own parent", v7, v8, v9, v10, v11, v12, v18.receiver);

      v4 = 0;
    }

    else
    {
      v13 = 0;
    }

LABEL_9:
    objc_storeStrong(&v5->_parentTable, v4);
    v15 = [MEMORY[0x277CBEB38] dictionary];
    definitions = v5->_definitions;
    v5->_definitions = v15;
  }

  return v5;
}

- (BOOL)define:(id)a3 type:(unint64_t)a4 options:(id)a5 error:(id *)a6
{
  v25[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = MEMORY[0x277CBEC10];
  if (a5)
  {
    v11 = a5;
  }

  v12 = v11;
  v13 = [v10 value];
  v14 = [(NSMutableDictionary *)self->_definitions objectForKeyedSubscript:v13];
  v15 = v14;
  if (v14)
  {
    if (a6)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = [(_RESymbolDefinition *)v14 name];
      v18 = [v16 stringWithFormat:@"Symbol %@ already defined.", v17];

      v24 = @"REErrorTokenKey";
      v19 = [(_RESymbolDefinition *)v15 token];
      v25[0] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      *a6 = RECreateErrorWithCodeMessageAndUseInfo(206, v18, v20);
    }

    v21 = v15;
  }

  else
  {
    v21 = [[_RESymbolDefinition alloc] initWithToken:v10 type:a4 options:v12];
    [(NSMutableDictionary *)self->_definitions setObject:v21 forKeyedSubscript:v13];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v15 == 0;
}

- (BOOL)setNodeValue:(id)a3 forDefinition:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_definitions objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 value];

    if (!v12)
    {
      [v11 setValue:v8];
      LOBYTE(a5) = 1;
      goto LABEL_9;
    }

    if (a5)
    {
      v18 = @"REErrorTokenKey";
      v13 = [v11 value];
      v14 = [v13 token];
      v19[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *a5 = RECreateErrorWithCodeAndUseInfo(208, v15);

LABEL_7:
      LOBYTE(a5) = 0;
    }
  }

  else if (a5)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Symbol %@ not defined.", v9];
    *a5 = RECreateErrorWithCodeAndMessage(207, v13);
    goto LABEL_7;
  }

LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
  return a5;
}

- (BOOL)setObjectValue:(id)a3 forDefinition:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_definitions objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectValue];

    if (!v12)
    {
      [v11 setObjectValue:v8];
      LOBYTE(a5) = 1;
      goto LABEL_9;
    }

    if (a5)
    {
      v18 = @"REErrorTokenKey";
      v13 = [v11 value];
      v14 = [v13 token];
      v19[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *a5 = RECreateErrorWithCodeAndUseInfo(208, v15);

LABEL_7:
      LOBYTE(a5) = 0;
    }
  }

  else if (a5)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Symbol %@ not defined.", v9];
    *a5 = RECreateErrorWithCodeAndMessage(207, v13);
    goto LABEL_7;
  }

LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
  return a5;
}

- (BOOL)typeForDefinition:(id)a3 type:(unint64_t *)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_definitions objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      *a4 = [v7 type];
    }

    v9 = 1;
  }

  else
  {
    parentTable = self->_parentTable;
    if (parentTable)
    {
      v9 = [(REScriptSymbolTable *)parentTable typeForDefinition:v6 type:a4];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)objectValueForDefinition:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_definitions objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectValue];
LABEL_5:
    v9 = v7;
    goto LABEL_6;
  }

  parentTable = self->_parentTable;
  if (parentTable)
  {
    v7 = [(REScriptSymbolTable *)parentTable objectValueForDefinition:v4];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)nodeValueForDefinition:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_definitions objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 value];
LABEL_5:
    v9 = v7;
    goto LABEL_6;
  }

  parentTable = self->_parentTable;
  if (parentTable)
  {
    v7 = [(REScriptSymbolTable *)parentTable nodeValueForDefinition:v4];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)_enumerateObjectsOfType:(unint64_t)a3 usingBlock:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(REDependencyGraph);
    definitions = self->_definitions;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58__REScriptSymbolTable__enumerateObjectsOfType_usingBlock___block_invoke;
    v29[3] = &unk_2785FB998;
    v9 = v7;
    v30 = v9;
    [(NSMutableDictionary *)definitions enumerateKeysAndObjectsUsingBlock:v29];
    v10 = self->_definitions;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __58__REScriptSymbolTable__enumerateObjectsOfType_usingBlock___block_invoke_2;
    v27[3] = &unk_2785FB9C0;
    v27[4] = self;
    v11 = v9;
    v28 = v11;
    [(NSMutableDictionary *)v10 enumerateKeysAndObjectsUsingBlock:v27];
    v22 = v11;
    v12 = [(REDependencyGraph *)v11 topologicalSortedItems];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if ([v17 type] == a3)
          {
            v18 = [v17 name];
            v19 = [v17 options];
            v20 = [v17 value];
            v6[2](v6, v18, v19, v20);
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v14);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __58__REScriptSymbolTable__enumerateObjectsOfType_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 value];
  v8 = [v7 dependencies];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (([v5 isEqualToString:v13] & 1) == 0)
        {
          v14 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v13];
          if (v14)
          {
            [*(a1 + 40) markItem:v6 dependentOnItem:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end