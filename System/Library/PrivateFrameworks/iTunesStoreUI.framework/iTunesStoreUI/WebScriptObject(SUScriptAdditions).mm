@interface WebScriptObject(SUScriptAdditions)
- (id)copyArrayOrDictionaryWithContext:()SUScriptAdditions;
- (id)copyArrayValueWithValidator:()SUScriptAdditions context:;
- (id)copyValuesForKeys:()SUScriptAdditions;
- (uint64_t)copyDate;
- (uint64_t)copyJSONDataWithContext:()SUScriptAdditions;
@end

@implementation WebScriptObject(SUScriptAdditions)

- (id)copyArrayValueWithValidator:()SUScriptAdditions context:
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [self webScriptValueAtIndex:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 1;
    while (!a3 || (a3(v8, a4) & 1) != 0)
    {
      [v7 addObject:v8];
      v8 = [self webScriptValueAtIndex:v9];
      objc_opt_class();
      v9 = (v9 + 1);
      if (objc_opt_isKindOfClass())
      {
        return v7;
      }
    }

    return 0;
  }

  return v7;
}

- (id)copyArrayOrDictionaryWithContext:()SUScriptAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = [self copyJSONDataWithContext:?];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v12 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v1 options:0 error:&v12];
  if (!v3)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v8 = objc_opt_class();
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v12;
      LODWORD(v11) = 22;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v13, v11}];
        free(v10);
        SSFileLog();
      }
    }
  }

  return v3;
}

- (uint64_t)copyDate
{
  v1 = [objc_msgSend(self "JSValue")];

  return [v1 copy];
}

- (uint64_t)copyJSONDataWithContext:()SUScriptAdditions
{
  jSObject = [self JSObject];
  v5 = 0;
  if (a3)
  {
    v6 = jSObject;
    if (jSObject)
    {
      v7 = JSStringCreateWithCFString(@"JSON.stringify(this);");
      if (v7)
      {
        v8 = v7;
        v9 = JSEvaluateScript(a3, v7, v6, 0, 0, 0);
        if (v9 && (v10 = JSValueToStringCopy(a3, v9, 0)) != 0)
        {
          v11 = v10;
          v12 = objc_alloc(MEMORY[0x1E695DEF0]);
          CharactersPtr = JSStringGetCharactersPtr(v11);
          v5 = [v12 initWithBytes:CharactersPtr length:2 * JSStringGetLength(v11)];
          JSStringRelease(v11);
        }

        else
        {
          v5 = 0;
        }

        JSStringRelease(v8);
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

- (id)copyValuesForKeys:()SUScriptAdditions
{
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = &a9;
  if (a3)
  {
    do
    {
      v12 = [self safeValueForKey:a3];
      if (v12)
      {
        [v11 setObject:v12 forKey:a3];
      }

      v13 = v15++;
      a3 = *v13;
    }

    while (*v13);
  }

  return v11;
}

@end