@interface PFJSONDebugDumpConverter
- (PFJSONDebugDumpConverter)initWithUnknownTypeHandler:(id)a3;
- (id)JSONCompatibleObjectForObject:(id)a3;
- (id)JSONForObject:(id)a3 error:(id *)a4;
- (id)unknownObjectTypePlaceholderForObject:(id)a3;
@end

@implementation PFJSONDebugDumpConverter

- (id)unknownObjectTypePlaceholderForObject:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"UnknownObjectDescription";
  v3 = a3;
  v4 = [v3 description];
  v9[1] = @"ClassName";
  v10[0] = v4;
  v5 = objc_opt_class();

  v6 = NSStringFromClass(v5);
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)JSONCompatibleObjectForObject:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
LABEL_3:
    v6 = v5;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(PFJSONDebugDumpConverter *)self JSONCompatibleObjectForObject:*(*(&v28 + 1) + 8 * i)];
          [(__CFString *)v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v9);
    }

LABEL_12:

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __58__PFJSONDebugDumpConverter_JSONCompatibleObjectForObject___block_invoke;
    v25[3] = &unk_1E7B64838;
    v14 = v13;
    v26 = v14;
    v27 = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v25];
    v6 = v14;

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32[0] = @"NSDataLength";
    v15 = MEMORY[0x1E696AD98];
    v16 = v4;
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "length")}];
    v32[1] = @"NSData";
    v33[0] = v17;
    v18 = [v16 base64EncodedStringWithOptions:0];

    v33[1] = v18;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!v4)
      {
        v5 = [MEMORY[0x1E695DFB0] null];
        goto LABEL_3;
      }

      unknownTypeHandler = self->_unknownTypeHandler;
      if (!unknownTypeHandler || (unknownTypeHandler[2](unknownTypeHandler, v4), (v22 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v5 = [(PFJSONDebugDumpConverter *)self unknownObjectTypePlaceholderForObject:v4];
        goto LABEL_3;
      }

      v7 = v22;
      v6 = [(PFJSONDebugDumpConverter *)self JSONCompatibleObjectForObject:v22];
      goto LABEL_12;
    }

    v17 = v4;
    v19 = [v17 objCType];
    if (*v19 != 100 || v19[1])
    {
      goto LABEL_20;
    }

    [v17 doubleValue];
    v24 = __fpclassifyd(v23);
    if (v24 == 2)
    {
      v6 = @"(Unable to JSON-serialize FP_INFINITE float)";
      goto LABEL_21;
    }

    if (v24 == 1)
    {
      v6 = @"(Unable to JSON-serialize FP_NAN float)";
    }

    else
    {
LABEL_20:
      v6 = v17;
    }
  }

LABEL_21:

LABEL_22:

  return v6;
}

void __58__PFJSONDebugDumpConverter_JSONCompatibleObjectForObject___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 JSONCompatibleObjectForObject:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)JSONForObject:(id)a3 error:(id *)a4
{
  v6 = [(PFJSONDebugDumpConverter *)self JSONCompatibleObjectForObject:a3];
  if (v6 && ([MEMORY[0x1E695DFB0] null], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, (v8 & 1) == 0))
  {
    if ([(PFJSONDebugDumpConverter *)self enablePretty])
    {
      v10 = 9;
    }

    else
    {
      v10 = 8;
    }

    v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:v10 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PFJSONDebugDumpConverter)initWithUnknownTypeHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PFJSONDebugDumpConverter;
  v5 = [(PFJSONDebugDumpConverter *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1B8C64C40](v4);
    unknownTypeHandler = v5->_unknownTypeHandler;
    v5->_unknownTypeHandler = v6;

    v5->_enablePretty = 1;
  }

  return v5;
}

@end