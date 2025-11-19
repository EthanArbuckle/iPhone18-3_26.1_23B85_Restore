@interface REScriptProcessor
+ (id)_sharedSystemTable;
+ (id)processorWithPath:(id)a3;
+ (id)processorWithSource:(id)a3;
- (REScriptProcessor)initWithScriptBuffer:(id)a3 path:(id)a4;
- (id)featuresWithNames:(id)a3;
- (void)_encounteredError:(id)a3;
- (void)_process;
@end

@implementation REScriptProcessor

+ (id)processorWithSource:(id)a3
{
  v4 = a3;
  v5 = [[REStringScriptBuffer alloc] initWithString:v4];

  v6 = [[a1 alloc] initWithScriptBuffer:v5 path:0];

  return v6;
}

+ (id)processorWithPath:(id)a3
{
  v4 = [a3 stringByExpandingTildeInPath];
  v5 = [v4 stringByStandardizingPath];

  os_unfair_lock_lock(&REScriptProcessorLock);
  if (REScriptProcessorCache_onceToken != -1)
  {
    +[REScriptProcessor processorWithPath:];
  }

  v6 = [REScriptProcessorCache_Cache objectForKeyedSubscript:v5];
  os_unfair_lock_unlock(&REScriptProcessorLock);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v19 = 0;
    v8 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v5 encoding:4 error:&v19];
    v15 = v19;
    if (v8)
    {
      v16 = [[REStringScriptBuffer alloc] initWithString:v8];
      v17 = [[a1 alloc] initWithScriptBuffer:v16 path:v5];
      os_unfair_lock_lock(&REScriptProcessorLock);
      if (REScriptProcessorCache_onceToken != -1)
      {
        +[REScriptProcessor processorWithPath:];
      }

      [REScriptProcessorCache_Cache setObject:v17 forKeyedSubscript:v5];
      os_unfair_lock_unlock(&REScriptProcessorLock);
      v7 = v17;
    }

    else
    {
      RERaiseInternalException(*MEMORY[0x277CBE660], @"Unable to load script at path: %@ Error: %@", v9, v10, v11, v12, v13, v14, v5);
      v7 = 0;
    }
  }

  return v7;
}

- (REScriptProcessor)initWithScriptBuffer:(id)a3 path:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = REScriptProcessor;
  v9 = [(REScriptProcessor *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, a4);
    objc_storeStrong(&v10->_buffer, a3);
    v11 = [[REScriptTokenizer alloc] initWithScriptBuffer:v7];
    tokenizer = v10->_tokenizer;
    v10->_tokenizer = v11;

    [(REScriptTokenizer *)v10->_tokenizer setDelegate:v10];
    v13 = [[REStandardizedTokenBuffer alloc] initWithTokenBuffer:v10->_tokenizer];
    v14 = [[RETokenStack alloc] initWithTokenBuffer:v13];
    tokenStack = v10->_tokenStack;
    v10->_tokenStack = v14;

    v16 = [[REScriptParser alloc] initWithBacktrackingBuffer:v10->_tokenStack];
    parser = v10->_parser;
    v10->_parser = v16;

    [(REScriptParser *)v10->_parser setDelegate:v10];
    [(REScriptProcessor *)v10 _process];
  }

  return v10;
}

- (id)featuresWithNames:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  table = self->_table;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__REScriptProcessor_featuresWithNames___block_invoke;
  v11[3] = &unk_2785FD208;
  v12 = v4;
  v13 = self;
  v14 = v5;
  v7 = v5;
  v8 = v4;
  [(REScriptSymbolTable *)table enumerateFeatures:v11];
  v9 = [v7 copy];

  return v9;
}

void __39__REScriptProcessor_featuresWithNames___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (!v9 || [v9 containsObject:v11])
  {
    v10 = [*(*(a1 + 40) + 48) objectValueForDefinition:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 48) addObject:v10];
    }
  }
}

+ (id)_sharedSystemTable
{
  if (_sharedSystemTable_onceToken != -1)
  {
    +[REScriptProcessor _sharedSystemTable];
  }

  v3 = _sharedSystemTable_Table;

  return v3;
}

void __39__REScriptProcessor__sharedSystemTable__block_invoke()
{
  v51[1] = *MEMORY[0x277D85DE8];
  v0 = [[REScriptSymbolTable alloc] initWithParentScope:0];
  v1 = _sharedSystemTable_Table;
  _sharedSystemTable_Table = v0;

  v2 = _sharedSystemTable_Table;
  v3 = [[REScriptToken alloc] initWithValue:@"float" type:6 line:-1 column:-1];
  v51[0] = @"REScriptSymbolValueTypeKey";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  *dst = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:dst forKeys:v51 count:1];
  [v2 define:v3 type:2 options:v5 error:0];

  v6 = _sharedSystemTable_Table;
  v7 = [[REScriptToken alloc] initWithValue:@"int" type:6 line:-1 column:-1];
  v51[0] = @"REScriptSymbolValueTypeKey";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  *dst = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:dst forKeys:v51 count:1];
  [v6 define:v7 type:2 options:v9 error:0];

  v10 = _sharedSystemTable_Table;
  v11 = [[REScriptToken alloc] initWithValue:@"string" type:6 line:-1 column:-1];
  v51[0] = @"REScriptSymbolValueTypeKey";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
  *dst = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:dst forKeys:v51 count:1];
  [v10 define:v11 type:2 options:v13 error:0];

  v14 = _sharedSystemTable_Table;
  v15 = [[REScriptToken alloc] initWithValue:@"BOOL" type:6 line:-1 column:-1];
  v51[0] = @"REScriptSymbolValueTypeKey";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  *dst = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:dst forKeys:v51 count:1];
  [v14 define:v15 type:2 options:v17 error:0];

  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v18 = +[REFeatureTransformer featureTransformerClasses];
  v19 = [v18 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v45;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v44 + 1) + 8 * i);
        v24 = [v23 functionName];
        if (v24)
        {
          v25 = [[REScriptToken alloc] initWithValue:v24 type:6 line:-1 column:-1];
          [_sharedSystemTable_Table define:v25 type:4 options:0 error:0];
          [_sharedSystemTable_Table setObjectValue:v23 forDefinition:v24 error:0];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v20);
  }

  v26 = objc_opt_class();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v27 = +[REFeature systemFeatureNames];
  v28 = [v27 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v41;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v40 + 1) + 8 * j);
        v33 = [v32 stringByAppendingString:@"Feature"];
        v34 = NSSelectorFromString(v33);
        ClassMethod = class_getClassMethod(v26, v34);
        if (ClassMethod)
        {
          v36 = ClassMethod;
          if (method_getNumberOfArguments(ClassMethod) == 2)
          {
            method_getReturnType(v36, dst, 0xAuLL);
            if (dst[0] == 64)
            {
              v37 = ([(objc_class *)v26 methodForSelector:v34])(v26, v34);
              if (v37 && (objc_opt_isKindOfClass() & 1) != 0)
              {
                v38 = [[REScriptToken alloc] initWithValue:v32 type:6 line:-1 column:-1];
                [_sharedSystemTable_Table define:v38 type:0 options:0 error:0];
                [_sharedSystemTable_Table setObjectValue:v37 forDefinition:v32 error:0];
              }
            }
          }
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v29);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_process
{
  v3 = [REScriptSymbolTable alloc];
  v4 = [objc_opt_class() _sharedSystemTable];
  v5 = [(REScriptSymbolTable *)v3 initWithParentScope:v4];
  table = self->_table;
  self->_table = v5;

  v7 = [(REScriptParser *)self->_parser parse];
  v8 = [[REScriptASTNodeEnumerator alloc] initWithRootNodes:v7 symbolTable:self->_table];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__25;
  v22 = __Block_byref_object_dispose__25;
  v23 = 0;
  obj = 0;
  v9 = [(REScriptASTNodeEnumerator *)v8 buildSymbolTableWithError:&obj];
  objc_storeStrong(&v23, obj);
  if (v9)
  {
    v10 = [(REScriptASTObjectBuilder *)[REScriptASTFeatureBuilder alloc] initWithTable:self->_table];
    v11 = self->_table;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __29__REScriptProcessor__process__block_invoke;
    v13[3] = &unk_2785FD230;
    v12 = v10;
    v15 = self;
    v16 = &v18;
    v14 = v12;
    [(REScriptSymbolTable *)v11 enumerateFeatures:v13];
  }

  else
  {
    [(REScriptProcessor *)self _encounteredError:v19[5]];
  }

  _Block_object_dispose(&v18, 8);
}

void __29__REScriptProcessor__process__block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = a1 + 6;
    v11 = a1[4];
    v12 = *(a1[6] + 8);
    obj = *(v12 + 40);
    v13 = [v11 buildObjectWithNode:v9 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    if (!v13)
    {
      v14 = a1 + 5;
LABEL_8:
      [*v14 _encounteredError:*(*(*v10 + 8) + 40)];
      goto LABEL_9;
    }
  }

  else
  {
    v15 = [v8 objectForKeyedSubscript:@"REScriptSymbolFeatureTypeKey"];
    v16 = v15;
    v17 = &unk_283BBD668;
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;

    v19 = [v18 unsignedIntegerValue];
    v13 = [REFeature featureWithName:v7 featureType:v19];
  }

  v20 = a1[5];
  v14 = a1 + 5;
  v21 = *(v20 + 48);
  v10 = v14 + 1;
  v22 = *(v14[1] + 8);
  v24 = *(v22 + 40);
  v23 = [v21 setObjectValue:v13 forDefinition:v7 error:&v24];
  objc_storeStrong((v22 + 40), v24);
  if ((v23 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_encounteredError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"REErrorTokenKey"];

    if (v7)
    {
      v8 = [MEMORY[0x277CCAB68] string];
      [v8 appendString:@"Encountered error while parsing source\n"];
      if (self->_path)
      {
        [v8 appendString:?];
        [v8 appendString:@"\n"];
      }

      [v8 appendString:@"\n"];
      v9 = [v7 line];
      v10 = 2;
      if (v9 > 2)
      {
        v10 = v9;
      }

      v11 = v10 - 2;
      v12 = [v7 line];
      if (v11 > v12)
      {
        goto LABEL_25;
      }

      v34 = v5;
      v13 = 0;
      v14 = v12 + 1;
      do
      {
        v15 = [(REScriptBuffer *)self->_buffer contentForLine:v11];
        if (v15)
        {
          v16 = v11 + 1;
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu: ", v11 + 1];
          [v8 appendFormat:@"%@%@\n", v17, v15];
          if (v11 == [v7 line])
          {
            v18 = [v17 length];
            if ([v7 column] + v18)
            {
              v19 = 0;
              do
              {
                [v8 appendString:@" "];
                ++v19;
                v20 = [v17 length];
              }

              while (v19 < [v7 column] + v20);
            }

            if ([v7 length] <= 1)
            {
              v21 = @"^";
            }

            else
            {
              v21 = @"~";
            }

            if ([v7 length])
            {
              v22 = 0;
              do
              {
                [v8 appendString:v21];
                ++v22;
              }

              while (v22 < [v7 length]);
            }

            [v8 appendString:@"\n"];
            v23 = [v34 localizedDescription];
            [v8 appendString:v23];

            [v8 appendString:@"\n\n"];
            v13 = 1;
          }

          v11 = v16;
        }

        else
        {
          ++v11;
        }
      }

      while (v11 != v14);
      v5 = v34;
      if ((v13 & 1) == 0)
      {
LABEL_25:
        [v8 appendString:@"\n"];
        v24 = [v5 localizedDescription];
        [v8 appendString:v24];

        [v8 appendString:@"\n"];
      }

      if (_fetchedInternalBuildOnceToken_7 != -1)
      {
        [REScriptProcessor _encounteredError:];
      }

      if (_isInternalDevice_7 == 1)
      {
        v25 = RELogForDomain(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [(REScriptProcessor *)v8 _encounteredError:v25];
        }

        REStoreLogFileForTask(v8, @"Script");
      }
    }

    v26 = *MEMORY[0x277CBE658];
    v27 = [v5 localizedDescription];
    RERaiseInternalException(v26, @"%@", v28, v29, v30, v31, v32, v33, v27);
  }
}

uint64_t __39__REScriptProcessor__encounteredError___block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_7 = result;
  return result;
}

- (void)_encounteredError:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end