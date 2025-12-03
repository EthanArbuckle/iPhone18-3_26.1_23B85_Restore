@interface SASProximityPasscodeValidationAction
+ (id)actionFromDictionary:(id)dictionary;
- (id)requestPayload;
- (id)responsePayload;
- (void)setResponseFromData:(id)data;
@end

@implementation SASProximityPasscodeValidationAction

+ (id)actionFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(SASProximityPasscodeValidationAction);
  v5 = [dictionaryCopy objectForKeyedSubscript:@"passcode"];

  [(SASProximityPasscodeValidationAction *)v4 setPasscode:v5];

  return v4;
}

- (id)requestPayload
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"passcode";
  passcode = [(SASProximityPasscodeValidationAction *)self passcode];
  v7[0] = passcode;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)responsePayload
{
  v18[1] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  passcode = [(SASProximityPasscodeValidationAction *)self passcode];
  v5 = [mEMORY[0x277D262A0] unlockDeviceWithPasscode:passcode outError:0];

  v17 = @"success";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v18[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  v14 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v14];
  v9 = v14;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = +[SASLogging facility];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_22E4D7000, v11, OS_LOG_TYPE_DEFAULT, "Failed to archive response: %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setResponseFromData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAC8];
  v5 = MEMORY[0x277CBEB98];
  dataCopy = data;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v5 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v15 = 0;
  v10 = [v4 unarchivedObjectOfClasses:v9 fromData:dataCopy error:&v15];

  v11 = v15;
  if (!v10)
  {
    v12 = +[SASLogging facility];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_22E4D7000, v12, OS_LOG_TYPE_DEFAULT, "Failed to unarchive data: %@", buf, 0xCu);
    }
  }

  v13 = [v10 objectForKeyedSubscript:@"success"];
  -[SASProximityPasscodeValidationAction setPasscodeValid:](self, "setPasscodeValid:", [v13 BOOLValue]);

  v14 = *MEMORY[0x277D85DE8];
}

@end