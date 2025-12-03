@interface SASProximityInformationAction
- (SASProximityInformationAction)init;
- (id)responsePayload;
- (void)setResponseFromData:(id)data;
@end

@implementation SASProximityInformationAction

- (SASProximityInformationAction)init
{
  v5.receiver = self;
  v5.super_class = SASProximityInformationAction;
  v2 = [(SASProximityInformationAction *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(SASProximityInformation);
    [(SASProximityInformationAction *)v2 setInformation:v3];
  }

  return v2;
}

- (void)setResponseFromData:(id)data
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAC8];
  v5 = MEMORY[0x277CBEB98];
  dataCopy = data;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v5 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v22 = 0;
  v10 = [v4 unarchivedObjectOfClasses:v9 fromData:dataCopy error:&v22];

  v11 = v22;
  if (!v10)
  {
    v12 = +[SASLogging facility];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v11;
      _os_log_impl(&dword_22E4D7000, v12, OS_LOG_TYPE_DEFAULT, "Failed to unarchive information response payload: %@", buf, 0xCu);
    }
  }

  v13 = MEMORY[0x277CCAAC8];
  v14 = objc_opt_class();
  v15 = [v10 objectForKeyedSubscript:@"information"];
  v21 = v11;
  v16 = [v13 unarchivedObjectOfClass:v14 fromData:v15 error:&v21];
  v17 = v21;

  [(SASProximityInformationAction *)self setInformation:v16];
  information = [(SASProximityInformationAction *)self information];

  if (!information)
  {
    v19 = +[SASLogging facility];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_22E4D7000, v19, OS_LOG_TYPE_DEFAULT, "Failed to unarchive handshake: %@", buf, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)responsePayload
{
  v21 = *MEMORY[0x277D85DE8];
  information = [(SASProximityInformationAction *)self information];
  [information loadInformation];

  v4 = MEMORY[0x277CCAAB0];
  information2 = [(SASProximityInformationAction *)self information];
  v16 = 0;
  v6 = [v4 archivedDataWithRootObject:information2 requiringSecureCoding:1 error:&v16];
  v7 = v16;

  if (v6)
  {
    v17 = @"information";
    v18 = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v15 = v7;
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v15];
    v10 = v15;

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = +[SASLogging facility];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v10;
        _os_log_impl(&dword_22E4D7000, v12, OS_LOG_TYPE_DEFAULT, "Failed to archive information response payload: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = +[SASLogging facility];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_22E4D7000, v8, OS_LOG_TYPE_DEFAULT, "Failed to archive information: %@", buf, 0xCu);
    }

    v9 = 0;
    v10 = v7;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

@end