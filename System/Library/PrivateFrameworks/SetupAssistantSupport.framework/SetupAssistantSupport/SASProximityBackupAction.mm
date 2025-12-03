@interface SASProximityBackupAction
+ (id)actionFromDictionary:(id)dictionary;
- (id)requestPayload;
@end

@implementation SASProximityBackupAction

+ (id)actionFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(SASProximityBackupAction);
  v5 = [dictionaryCopy objectForKeyedSubscript:@"shouldStartBackup"];
  -[SASProximityBackupAction setShouldStartBackup:](v4, "setShouldStartBackup:", [v5 BOOLValue]);

  v6 = [dictionaryCopy objectForKeyedSubscript:@"finishedBackup"];
  -[SASProximityBackupAction setFinishedBackup:](v4, "setFinishedBackup:", [v6 BOOLValue]);

  v7 = [dictionaryCopy objectForKeyedSubscript:@"errorDomain"];

  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"errorDomain"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    v11 = [v8 errorWithDomain:v9 code:objc_msgSend(v10 userInfo:{"integerValue"), 0}];
    [(SASProximityBackupAction *)v4 setError:v11];
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"percentComplete"];
  [v12 doubleValue];
  [(SASProximityBackupAction *)v4 setPercentComplete:?];

  v13 = [dictionaryCopy objectForKeyedSubscript:@"timeRemaining"];
  -[SASProximityBackupAction setTimeRemaining:](v4, "setTimeRemaining:", [v13 unsignedIntegerValue]);

  v14 = [dictionaryCopy objectForKeyedSubscript:@"completionDate"];
  [(SASProximityBackupAction *)v4 setCompletionDate:v14];

  return v4;
}

- (id)requestPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[SASProximityBackupAction shouldStartBackup](self, "shouldStartBackup")}];
  [v3 setObject:v4 forKeyedSubscript:@"shouldStartBackup"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SASProximityBackupAction finishedBackup](self, "finishedBackup")}];
  [v3 setObject:v5 forKeyedSubscript:@"finishedBackup"];

  error = [(SASProximityBackupAction *)self error];

  if (error)
  {
    error2 = [(SASProximityBackupAction *)self error];
    domain = [error2 domain];
    [v3 setObject:domain forKeyedSubscript:@"errorDomain"];

    v9 = MEMORY[0x277CCABB0];
    error3 = [(SASProximityBackupAction *)self error];
    v11 = [v9 numberWithInteger:{objc_msgSend(error3, "code")}];
    [v3 setObject:v11 forKeyedSubscript:@"errorCode"];
  }

  v12 = MEMORY[0x277CCABB0];
  [(SASProximityBackupAction *)self percentComplete];
  v13 = [v12 numberWithDouble:?];
  [v3 setObject:v13 forKeyedSubscript:@"percentComplete"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SASProximityBackupAction timeRemaining](self, "timeRemaining")}];
  [v3 setObject:v14 forKeyedSubscript:@"timeRemaining"];

  completionDate = [(SASProximityBackupAction *)self completionDate];
  [v3 setObject:completionDate forKeyedSubscript:@"completionDate"];

  return v3;
}

@end