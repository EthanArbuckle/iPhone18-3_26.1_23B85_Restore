@interface ISJSONDataProvider
- (BOOL)parseData:(id)a3 returningError:(id *)a4;
- (ISJSONDataProvider)init;
@end

@implementation ISJSONDataProvider

- (ISJSONDataProvider)init
{
  __ISRecordSPIClassUsage(self);
  v4.receiver = self;
  v4.super_class = ISJSONDataProvider;
  return [(ISDataProvider *)&v4 init];
}

- (BOOL)parseData:(id)a3 returningError:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:-[ISJSONDataProvider parserOptions](self error:{"parserOptions"), &v16}];
  if (v6)
  {
    [(ISDataProvider *)self setOutput:v6];
  }

  else
  {
    v9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v9)
    {
      v9 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v12 = objc_opt_class();
      v17 = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v16;
      LODWORD(v15) = 22;
      v13 = _os_log_send_and_compose_impl();
      if (v13)
      {
        v14 = v13;
        [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, &v17, v15}];
        free(v14);
        SSFileLog();
      }
    }
  }

  if (a4)
  {
    *a4 = v16;
  }

  result = v6 != 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

@end