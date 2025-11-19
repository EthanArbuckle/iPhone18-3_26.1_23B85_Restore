@interface SULoadSectionsOperation
- (BOOL)_loadSectionsFromCacheForVersion:(id)a3;
- (BOOL)_loadSectionsFromNetworkWithDictionary:(id)a3;
- (BOOL)shouldUseCache;
- (NSString)activeSectionVersionString;
- (SULoadSectionsOperation)init;
- (SULoadSectionsOperation)initWithClientInterface:(id)a3;
- (SUSectionsResponse)sectionsResponse;
- (id)_cachePathForVersion:(id)a3 create:(BOOL)a4;
- (void)_setSectionsResponse:(id)a3;
- (void)_writeSectionsResponseToCache:(id)a3 forVersion:(id)a4;
- (void)dealloc;
- (void)run;
- (void)setActiveSectionVersionString:(id)a3;
- (void)setShouldUseCache:(BOOL)a3;
@end

@implementation SULoadSectionsOperation

- (SULoadSectionsOperation)init
{
  v3 = +[SUClientDispatch clientInterface];

  return [(SULoadSectionsOperation *)self initWithClientInterface:v3];
}

- (SULoadSectionsOperation)initWithClientInterface:(id)a3
{
  v6.receiver = self;
  v6.super_class = SULoadSectionsOperation;
  v4 = [(SULoadSectionsOperation *)&v6 init];
  if (v4)
  {
    v4->_clientInterface = a3;
    v4->_shouldUseCache = 1;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SULoadSectionsOperation;
  [(SULoadSectionsOperation *)&v3 dealloc];
}

- (NSString)activeSectionVersionString
{
  [(SULoadSectionsOperation *)self lock];
  v3 = self->_activeSectionVersionString;
  [(SULoadSectionsOperation *)self unlock];
  return v3;
}

- (SUSectionsResponse)sectionsResponse
{
  [(SULoadSectionsOperation *)self lock];
  v3 = self->_sectionsResponse;
  [(SULoadSectionsOperation *)self unlock];
  return v3;
}

- (void)setActiveSectionVersionString:(id)a3
{
  [(SULoadSectionsOperation *)self lock];
  activeSectionVersionString = self->_activeSectionVersionString;
  if (activeSectionVersionString != a3)
  {

    self->_activeSectionVersionString = [a3 copy];
  }

  [(SULoadSectionsOperation *)self unlock];
}

- (void)setShouldUseCache:(BOOL)a3
{
  [(SULoadSectionsOperation *)self lock];
  self->_shouldUseCache = a3;

  [(SULoadSectionsOperation *)self unlock];
}

- (BOOL)shouldUseCache
{
  [(SULoadSectionsOperation *)self lock];
  shouldUseCache = self->_shouldUseCache;
  [(SULoadSectionsOperation *)self unlock];
  return shouldUseCache;
}

- (void)run
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v3 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  if (([(SULoadSectionsOperation *)self loadURLBagWithContext:v3 returningError:&v34]& 1) != 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = [MEMORY[0x1E69D4938] sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v8 = objc_opt_class();
      v35 = 138412546;
      v36 = v8;
      v37 = 2048;
      v38 = Current;
      LODWORD(v33) = 22;
      v31 = &v35;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v35, v33}];
        free(v10);
        v31 = v11;
        SSFileLog();
      }
    }

    v12 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69E47F8] sharedCache];
    objc_opt_class();
    v15 = (objc_opt_isKindOfClass() & 1) == 0 || (v13 = -[SUClientInterface clientIdentifier](self->_clientInterface, "clientIdentifier")) == 0 || (v14 = [v12 objectForKey:v13]) == 0 || -[SULoadSectionsOperation _loadSectionsFromNetworkWithDictionary:](self, "_loadSectionsFromNetworkWithDictionary:", v14);
    v23 = CFAbsoluteTimeGetCurrent();
    v24 = [MEMORY[0x1E69D4938] sharedConfig];
    v25 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 = v25 | 2;
    }

    else
    {
      v26 = v25;
    }

    if (!os_log_type_enabled([v24 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v26 &= 2u;
    }

    if (v26)
    {
      v27 = objc_opt_class();
      v35 = 138412802;
      v36 = v27;
      v37 = 2048;
      v38 = v23;
      v39 = 2048;
      v40 = v23 - Current;
      LODWORD(v33) = 32;
      v32 = &v35;
      v28 = _os_log_send_and_compose_impl();
      if (v28)
      {
        v29 = v28;
        v30 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, &v35, v33}];
        free(v29);
        v32 = v30;
        SSFileLog();
      }
    }
  }

  else
  {
    v16 = [MEMORY[0x1E69D4938] sharedConfig];
    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    if (!os_log_type_enabled([v16 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v19 = objc_opt_class();
      v35 = 138412290;
      v36 = v19;
      LODWORD(v33) = 12;
      v31 = &v35;
      v20 = _os_log_send_and_compose_impl();
      if (v20)
      {
        v21 = v20;
        v22 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v35, v33}];
        free(v21);
        v31 = v22;
        SSFileLog();
      }
    }

    [(SULoadSectionsOperation *)self setError:v34, v31];
    v15 = 0;
  }

  [(SULoadSectionsOperation *)self setSuccess:v15, v32];
}

- (id)_cachePathForVersion:(id)a3 create:(BOOL)a4
{
  v4 = a4;
  v6 = +[SUSectionsResponse sectionsCacheDirectory];
  if (!v6)
  {
    return 0;
  }

  v7 = [v6 stringByAppendingPathComponent:a3];
  if (v4 && ![MEMORY[0x1E696AC08] ensureDirectoryExists:v7])
  {
    return 0;
  }

  return v7;
}

- (BOOL)_loadSectionsFromCacheForVersion:(id)a3
{
  v4 = [(SULoadSectionsOperation *)self _cachePathForVersion:a3 create:0];
  if (!v4)
  {
    return 0;
  }

  v5 = [[SUSectionsResponse alloc] initWithClientInterface:self->_clientInterface cacheDirectory:v4];
  [(SULoadSectionsOperation *)self _setSectionsResponse:v5];
  v6 = v5 != 0;
  if (v5)
  {
    [SUSectionsResponse setLastCachedVersionIdentifier:[(SUSectionsResponse *)v5 versionString]];
  }

  return v6;
}

- (BOOL)_loadSectionsFromNetworkWithDictionary:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = [a3 objectForKey:@"version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v5 stringValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_9;
    }
  }

  if (!v5)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_11;
  }

  if ([(SULoadSectionsOperation *)self shouldUseCache])
  {
    v6 = 1;
    if ([(SULoadSectionsOperation *)self _loadSectionsFromCacheForVersion:v5])
    {
      return v6;
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_11:
  v7 = [MEMORY[0x1E69D4938] sharedConfig];
  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v44 = 138412290;
    v45 = objc_opt_class();
    LODWORD(v40) = 12;
    v38 = &v44;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v44, v40}];
      free(v11);
      v38 = v12;
      SSFileLog();
    }
  }

  v13 = [a3 objectForKey:{@"url", v38}];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v13];
    if (v14)
    {
      v15 = v14;
      v16 = [[SULoadNetworkSectionsOperation alloc] initWithURL:v14 clientInterface:self->_clientInterface];
      [(SULoadNetworkSectionsOperation *)v16 setExpectedVersionString:v5];
      v43 = 0;
      if (([(SULoadSectionsOperation *)self runSubOperation:v16 returningError:&v43]& 1) != 0)
      {
        v17 = [(SULoadNetworkSectionsOperation *)v16 sectionsResponse];
        v18 = [MEMORY[0x1E695E000] standardUserDefaults];
        v42 = [(SUSectionsResponse *)v17 versionString];
        if ([(NSString *)v42 isEqualToString:+[SUSectionsResponse lastCachedVersionIdentifier]])
        {
          v19 = [MEMORY[0x1E69D4938] sharedConfig];
          v20 = [v19 shouldLog];
          if ([v19 shouldLogToDisk])
          {
            v20 |= 2u;
          }

          if (os_log_type_enabled([v19 OSLogObject], OS_LOG_TYPE_DEBUG))
          {
            v21 = v20;
          }

          else
          {
            v21 = v20 & 2;
          }

          if (v21)
          {
            v22 = objc_opt_class();
            v44 = 138412290;
            v45 = v22;
            LODWORD(v40) = 12;
            v39 = &v44;
            v23 = _os_log_send_and_compose_impl();
            if (v23)
            {
              v24 = v23;
              v25 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v44, v40}];
              free(v24);
              v39 = v25;
              SSFileLog();
            }
          }

          [(SUSectionsResponse *)v17 setShouldResetUserOrdering:0, v39];
          v26 = v42;
        }

        else
        {
          v27 = [(SUSectionsResponse *)v17 shouldResetUserOrdering];
          v28 = [v18 stringForKey:@"SULastSectionsStoreFront"];
          v29 = [objc_msgSend(MEMORY[0x1E69D48B0] "currentDevice")];
          v41 = v29;
          if (v28 && ([v28 isEqualToString:v29] & 1) == 0)
          {
            v30 = [MEMORY[0x1E69D4938] sharedConfig];
            v31 = [v30 shouldLog];
            if ([v30 shouldLogToDisk])
            {
              v31 |= 2u;
            }

            if (os_log_type_enabled([v30 OSLogObject], OS_LOG_TYPE_DEBUG))
            {
              v32 = v31;
            }

            else
            {
              v32 = v31 & 2;
            }

            if (v32)
            {
              v33 = objc_opt_class();
              v44 = 138412290;
              v45 = v33;
              LODWORD(v40) = 12;
              v39 = &v44;
              v34 = _os_log_send_and_compose_impl();
              if (v34)
              {
                v35 = v34;
                v36 = [MEMORY[0x1E696AEC0] stringWithCString:v34 encoding:{4, &v44, v40}];
                free(v35);
                v39 = v36;
                SSFileLog();
              }
            }

            v27 = 1;
          }

          [(SUSectionsResponse *)v17 setShouldResetUserOrdering:v27, v39];
          v26 = v42;
          if (v42)
          {
            [SUSectionsResponse setLastCachedVersionIdentifier:v42];
          }

          if (v41)
          {
            [v18 setObject:v41 forKey:@"SULastSectionsStoreFront"];
          }

          [v18 synchronize];
        }

        [(SULoadSectionsOperation *)self _setSectionsResponse:v17];
        if ([(NSArray *)[(SUSectionsResponse *)v17 allSections] count])
        {
          if ((v6 & -[SUSectionsResponse isCacheable](v17, "isCacheable")) == 1 && (!v26 || [v5 isEqualToString:v26]))
          {
            [(SULoadSectionsOperation *)self _writeSectionsResponseToCache:v17 forVersion:v5];
          }

          LOBYTE(v6) = 1;
          goto LABEL_57;
        }
      }

      else
      {
        [(SULoadSectionsOperation *)self setError:v43];
      }

      LOBYTE(v6) = 0;
LABEL_57:

      return v6;
    }
  }

  LOBYTE(v6) = 0;
  return v6;
}

- (void)_setSectionsResponse:(id)a3
{
  [(SULoadSectionsOperation *)self lock];
  sectionsResponse = self->_sectionsResponse;
  if (sectionsResponse != a3)
  {

    self->_sectionsResponse = a3;
  }

  [(SULoadSectionsOperation *)self unlock];
}

- (void)_writeSectionsResponseToCache:(id)a3 forVersion:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v26 = self;
  v6 = [(SULoadSectionsOperation *)self activeSectionVersionString];
  v7 = +[SUSectionsResponse sectionsCacheDirectory];
  v27 = v5;
  v8 = [v5 contentsOfDirectoryAtPath:v7 error:0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        if (([v13 isEqualToString:v6] & 1) == 0)
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

          if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_DEBUG))
          {
            v16 &= 2u;
          }

          if (v16)
          {
            v17 = objc_opt_class();
            v32 = 138412546;
            v33 = v17;
            v34 = 2112;
            v35 = v13;
            LODWORD(v23) = 22;
            v22 = &v32;
            v18 = _os_log_send_and_compose_impl();
            if (v18)
            {
              v19 = v18;
              v20 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v32, v23}];
              free(v19);
              v22 = v20;
              SSFileLog();
            }
          }

          [v27 removeItemAtPath:objc_msgSend(v7 error:{"stringByAppendingPathComponent:", v13, v22), 0}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v10);
  }

  v21 = [(SULoadSectionsOperation *)v26 _cachePathForVersion:a4 create:1];
  if (v21)
  {
    [a3 writeToCacheDirectory:v21 error:0];
  }
}

@end