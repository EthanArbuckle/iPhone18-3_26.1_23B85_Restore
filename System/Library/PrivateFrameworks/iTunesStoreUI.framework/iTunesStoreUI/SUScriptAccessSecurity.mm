@interface SUScriptAccessSecurity
- (BOOL)_canAccessType:(id)a3 inFrame:(id)a4 error:(id *)a5;
- (BOOL)_canAccessType:(id)a3 withURL:(id)a4 inFrame:(id)a5 error:(id *)a6;
- (BOOL)_url:(id)a3 matchesExpressions:(id)a4;
- (BOOL)_urls:(id)a3 matchPatternStrings:(id)a4;
- (id)_accessDictionaryForType:(id)a3;
- (id)_copyResourceURLsForWebFrame:(id)a3;
@end

@implementation SUScriptAccessSecurity

- (id)_accessDictionaryForType:(id)a3
{
  v4 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v5 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69E47F8] "sharedCache")];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  result = 0;
  if (isKindOfClass)
  {
    v8 = [v5 objectForKey:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)_canAccessType:(id)a3 inFrame:(id)a4 error:(id *)a5
{
  if ([(SUScriptAccessSecurity *)self _accessDictionaryForType:a3])
  {
    v8 = [(SUScriptAccessSecurity *)self _copyResourceURLsForWebFrame:a4];
    v9 = [(SUScriptAccessSecurity *)self _urls:v8 matchPatternStrings:&unk_1F41EAA78];

    if (!a5)
    {
      return v9;
    }
  }

  else
  {
    v9 = 0;
    if (!a5)
    {
      return v9;
    }
  }

  if (!v9)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69D4C28] code:107 userInfo:0];
  }

  return v9;
}

- (BOOL)_canAccessType:(id)a3 withURL:(id)a4 inFrame:(id)a5 error:(id *)a6
{
  v9 = self;
  v21 = *MEMORY[0x1E69E9840];
  v10 = [(SUScriptAccessSecurity *)self _accessDictionaryForType:a3];
  if (!v10)
  {
    v14 = [MEMORY[0x1E69D4938] sharedConfig];
    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v19 = 138412290;
      v20 = objc_opt_class();
      LODWORD(v18) = 12;
      v9 = _os_log_send_and_compose_impl();
      if (!v9)
      {
        goto LABEL_13;
      }

      [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v19, v18}];
      free(v9);
      SSFileLog();
    }

LABEL_12:
    LOBYTE(v9) = 0;
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v10 objectForKey:@"request-patterns"];
  if (![v9 _urls:objc_msgSend(MEMORY[0x1E695DEC8] matchPatternStrings:{"arrayWithObjects:", a4, 0), v12}])
  {
    goto LABEL_12;
  }

  v13 = [v9 _copyResourceURLsForWebFrame:a5];
  LOBYTE(v9) = [v9 _urls:v13 matchPatternStrings:{objc_msgSend(v11, "objectForKey:", @"origin-patterns"}];

LABEL_13:
  if (a6 && (v9 & 1) == 0)
  {
    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69D4C28] code:107 userInfo:0];
  }

  return v9;
}

- (id)_copyResourceURLsForWebFrame:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a3 dataSource];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{objc_msgSend(objc_msgSend(v3, "mainResource"), "URL"), 0}];
  v5 = [v3 subresources];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) URL];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_url:(id)a3 matchesExpressions:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [a3 absoluteString];
  v6 = [v5 length];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(a4);
        }

        if ([*(*(&v12 + 1) + 8 * v10) rangeOfFirstMatchInString:v5 options:0 range:{0, v6}] != 0x7FFFFFFFFFFFFFFFLL)
        {
          LOBYTE(v7) = 1;
          return v7;
        }

        ++v10;
      }

      while (v8 != v10);
      v7 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v8 = v7;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v7;
}

- (BOOL)_urls:(id)a3 matchPatternStrings:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = [a4 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(a4);
          }

          v12 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:*(*(&v35 + 1) + 8 * i) options:1 error:0];
          if (v12)
          {
            v13 = v12;
            [v7 addObject:v12];
          }
        }

        v9 = [a4 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v9);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [a3 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v32;
      while (2)
      {
        v18 = 0;
        v19 = v16;
        v16 += v15;
        do
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(a3);
          }

          v20 = *(*(&v31 + 1) + 8 * v18);
          if (![(SUScriptAccessSecurity *)self _url:v20 matchesExpressions:v7])
          {
            v21 = [MEMORY[0x1E69D4938] sharedConfig];
            v22 = [v21 shouldLog];
            if ([v21 shouldLogToDisk])
            {
              v23 = v22 | 2;
            }

            else
            {
              v23 = v22;
            }

            if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_DEFAULT))
            {
              v23 &= 2u;
            }

            if (v23)
            {
              v24 = objc_opt_class();
              v39 = 138412546;
              v40 = v24;
              v41 = 2112;
              v42 = v20;
              LODWORD(v30) = 22;
              v29 = &v39;
              v25 = _os_log_send_and_compose_impl();
              if (v25)
              {
                v26 = v25;
                v27 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:{4, &v39, v30}];
                free(v26);
                v29 = v27;
                SSFileLog();
              }
            }

            v16 = v19;
            goto LABEL_31;
          }

          ++v19;
          ++v18;
        }

        while (v15 != v18);
        v15 = [a3 countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v16 = 0;
    }

LABEL_31:
  }

  else
  {
    v16 = 0;
  }

  return v16 == [a3 count];
}

@end