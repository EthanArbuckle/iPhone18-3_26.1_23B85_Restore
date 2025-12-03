@interface REScriptSymbolTable
- (BOOL)define:(id)define type:(unint64_t)type options:(id)options error:(id *)error;
- (BOOL)setNodeValue:(id)value forDefinition:(id)definition error:(id *)error;
- (BOOL)setObjectValue:(id)value forDefinition:(id)definition error:(id *)error;
- (BOOL)typeForDefinition:(id)definition type:(unint64_t *)type;
- (REScriptSymbolTable)initWithParentScope:(id)scope;
- (id)nodeValueForDefinition:(id)definition;
- (id)objectValueForDefinition:(id)definition;
- (void)_enumerateObjectsOfType:(unint64_t)type usingBlock:(id)block;
@end

@implementation REScriptSymbolTable

- (REScriptSymbolTable)initWithParentScope:(id)scope
{
  scopeCopy = scope;
  v18.receiver = self;
  v18.super_class = REScriptSymbolTable;
  v5 = [(REScriptSymbolTable *)&v18 init];
  if (v5)
  {
    v6 = scopeCopy;
    scopeCopy = v6;
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

      scopeCopy = 0;
    }

    else
    {
      v13 = 0;
    }

LABEL_9:
    objc_storeStrong(&v5->_parentTable, scopeCopy);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    definitions = v5->_definitions;
    v5->_definitions = dictionary;
  }

  return v5;
}

- (BOOL)define:(id)define type:(unint64_t)type options:(id)options error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  defineCopy = define;
  optionsCopy = MEMORY[0x277CBEC10];
  if (options)
  {
    optionsCopy = options;
  }

  v12 = optionsCopy;
  value = [defineCopy value];
  v14 = [(NSMutableDictionary *)self->_definitions objectForKeyedSubscript:value];
  v15 = v14;
  if (v14)
  {
    if (error)
    {
      v16 = MEMORY[0x277CCACA8];
      name = [(_RESymbolDefinition *)v14 name];
      v18 = [v16 stringWithFormat:@"Symbol %@ already defined.", name];

      v24 = @"REErrorTokenKey";
      token = [(_RESymbolDefinition *)v15 token];
      v25[0] = token;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      *error = RECreateErrorWithCodeMessageAndUseInfo(206, v18, v20);
    }

    v21 = v15;
  }

  else
  {
    v21 = [[_RESymbolDefinition alloc] initWithToken:defineCopy type:type options:v12];
    [(NSMutableDictionary *)self->_definitions setObject:v21 forKeyedSubscript:value];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v15 == 0;
}

- (BOOL)setNodeValue:(id)value forDefinition:(id)definition error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  definitionCopy = definition;
  v10 = [(NSMutableDictionary *)self->_definitions objectForKeyedSubscript:definitionCopy];
  v11 = v10;
  if (v10)
  {
    value = [v10 value];

    if (!value)
    {
      [v11 setValue:valueCopy];
      LOBYTE(error) = 1;
      goto LABEL_9;
    }

    if (error)
    {
      v18 = @"REErrorTokenKey";
      value2 = [v11 value];
      token = [value2 token];
      v19[0] = token;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *error = RECreateErrorWithCodeAndUseInfo(208, v15);

LABEL_7:
      LOBYTE(error) = 0;
    }
  }

  else if (error)
  {
    value2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Symbol %@ not defined.", definitionCopy];
    *error = RECreateErrorWithCodeAndMessage(207, value2);
    goto LABEL_7;
  }

LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)setObjectValue:(id)value forDefinition:(id)definition error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  definitionCopy = definition;
  v10 = [(NSMutableDictionary *)self->_definitions objectForKeyedSubscript:definitionCopy];
  v11 = v10;
  if (v10)
  {
    objectValue = [v10 objectValue];

    if (!objectValue)
    {
      [v11 setObjectValue:valueCopy];
      LOBYTE(error) = 1;
      goto LABEL_9;
    }

    if (error)
    {
      v18 = @"REErrorTokenKey";
      value = [v11 value];
      token = [value token];
      v19[0] = token;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *error = RECreateErrorWithCodeAndUseInfo(208, v15);

LABEL_7:
      LOBYTE(error) = 0;
    }
  }

  else if (error)
  {
    value = [MEMORY[0x277CCACA8] stringWithFormat:@"Symbol %@ not defined.", definitionCopy];
    *error = RECreateErrorWithCodeAndMessage(207, value);
    goto LABEL_7;
  }

LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)typeForDefinition:(id)definition type:(unint64_t *)type
{
  definitionCopy = definition;
  v7 = [(NSMutableDictionary *)self->_definitions objectForKeyedSubscript:definitionCopy];
  v8 = v7;
  if (v7)
  {
    if (type)
    {
      *type = [v7 type];
    }

    v9 = 1;
  }

  else
  {
    parentTable = self->_parentTable;
    if (parentTable)
    {
      v9 = [(REScriptSymbolTable *)parentTable typeForDefinition:definitionCopy type:type];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)objectValueForDefinition:(id)definition
{
  definitionCopy = definition;
  v5 = [(NSMutableDictionary *)self->_definitions objectForKeyedSubscript:definitionCopy];
  v6 = v5;
  if (v5)
  {
    objectValue = [v5 objectValue];
LABEL_5:
    v9 = objectValue;
    goto LABEL_6;
  }

  parentTable = self->_parentTable;
  if (parentTable)
  {
    objectValue = [(REScriptSymbolTable *)parentTable objectValueForDefinition:definitionCopy];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)nodeValueForDefinition:(id)definition
{
  definitionCopy = definition;
  v5 = [(NSMutableDictionary *)self->_definitions objectForKeyedSubscript:definitionCopy];
  v6 = v5;
  if (v5)
  {
    value = [v5 value];
LABEL_5:
    v9 = value;
    goto LABEL_6;
  }

  parentTable = self->_parentTable;
  if (parentTable)
  {
    value = [(REScriptSymbolTable *)parentTable nodeValueForDefinition:definitionCopy];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)_enumerateObjectsOfType:(unint64_t)type usingBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
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
    topologicalSortedItems = [(REDependencyGraph *)v11 topologicalSortedItems];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [topologicalSortedItems countByEnumeratingWithState:&v23 objects:v31 count:16];
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
            objc_enumerationMutation(topologicalSortedItems);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if ([v17 type] == type)
          {
            name = [v17 name];
            options = [v17 options];
            value = [v17 value];
            blockCopy[2](blockCopy, name, options, value);
          }
        }

        v14 = [topologicalSortedItems countByEnumeratingWithState:&v23 objects:v31 count:16];
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