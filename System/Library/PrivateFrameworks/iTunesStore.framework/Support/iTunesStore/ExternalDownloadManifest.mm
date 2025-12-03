@interface ExternalDownloadManifest
- (BOOL)_parsePropertyList:(id)list;
- (ExternalDownloadManifest)initWithPropertyList:(id)list;
- (ExternalDownloadManifest)initWithValidDownloads:(id)downloads invalidDownloads:(id)invalidDownloads;
- (void)dealloc;
@end

@implementation ExternalDownloadManifest

- (ExternalDownloadManifest)initWithPropertyList:(id)list
{
  v6.receiver = self;
  v6.super_class = ExternalDownloadManifest;
  v4 = [(ExternalDownloadManifest *)&v6 init];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![(ExternalDownloadManifest *)v4 _parsePropertyList:list])
    {

      return 0;
    }
  }

  return v4;
}

- (ExternalDownloadManifest)initWithValidDownloads:(id)downloads invalidDownloads:(id)invalidDownloads
{
  v8.receiver = self;
  v8.super_class = ExternalDownloadManifest;
  v6 = [(ExternalDownloadManifest *)&v8 init];
  if (v6)
  {
    v6->_invalidDownloads = [invalidDownloads copy];
    v6->_validDownloads = [downloads copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ExternalDownloadManifest;
  [(ExternalDownloadManifest *)&v3 dealloc];
}

- (BOOL)_parsePropertyList:(id)list
{
  v35 = objc_alloc_init(NSMutableArray);
  v34 = objc_alloc_init(NSMutableArray);
  v4 = [list objectForKey:@"items"];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    v8 = @"metadata";
    v9 = @"bundle-identifier";
    v36 = *v38;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = [v11 objectForKey:{v8, v31, v32}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 objectForKey:v9];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v13)
            {
              v14 = v8;
              v15 = v9;
              v16 = v4;
              v17 = [LSApplicationProxy applicationProxyForIdentifier:v13];
              isInstalled = [v17 isInstalled];
              v19 = [objc_msgSend(v17 "applicationType")];
              profileValidated = [v17 profileValidated];
              if (!isInstalled || (v19 & profileValidated & 1) != 0)
              {
                v28 = [[Download alloc] initWithExternalManifestDictionary:v11];
                if ([(Download *)v28 valueForProperty:@"download_state.download_error"])
                {
                  v29 = v35;
                }

                else
                {
                  v29 = v34;
                }

                [(NSArray *)v29 addObject:v28];

                v4 = v16;
                v9 = v15;
                v8 = v14;
                v7 = v36;
              }

              else
              {
                v21 = +[SSLogConfig sharedDaemonConfig];
                if (!v21)
                {
                  v21 = +[SSLogConfig sharedConfig];
                }

                shouldLog = [v21 shouldLog];
                if ([v21 shouldLogToDisk])
                {
                  v23 = shouldLog | 2;
                }

                else
                {
                  v23 = shouldLog;
                }

                if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_ERROR))
                {
                  v23 &= 2u;
                }

                v4 = v16;
                v9 = v15;
                v8 = v14;
                v7 = v36;
                if (v23)
                {
                  v24 = objc_opt_class();
                  v41 = 138412546;
                  v42 = v24;
                  v43 = 2112;
                  v44 = v13;
                  LODWORD(v32) = 22;
                  v31 = &v41;
                  v25 = _os_log_send_and_compose_impl();
                  if (v25)
                  {
                    v26 = v25;
                    v27 = [NSString stringWithCString:v25 encoding:4, &v41, v32];
                    free(v26);
                    v31 = v27;
                    SSFileLog();
                  }
                }
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v6);
  }

  self->_invalidDownloads = v35;
  self->_validDownloads = v34;
  return 1;
}

@end