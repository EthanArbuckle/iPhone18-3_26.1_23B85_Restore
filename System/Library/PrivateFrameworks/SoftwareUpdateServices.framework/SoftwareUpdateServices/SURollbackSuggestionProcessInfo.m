@interface SURollbackSuggestionProcessInfo
- (NSString)processName;
- (SURollbackSuggestionProcessInfo)initWithCoder:(id)a3;
- (SURollbackSuggestionProcessInfo)initWithProcessID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SURollbackSuggestionProcessInfo

- (SURollbackSuggestionProcessInfo)initWithProcessID:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SURollbackSuggestionProcessInfo;
  v6 = [(SURollbackSuggestionProcessInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processID, a3);
    processName = v7->_processName;
    v7->_processName = 0;

    rollbackSuggestionError = v7->_rollbackSuggestionError;
    v7->_rollbackSuggestionError = 0;
  }

  return v7;
}

- (NSString)processName
{
  processName = self->_processName;
  if (processName)
  {
    goto LABEL_2;
  }

  if (!self->_processID)
  {
    processName = 0;
LABEL_2:
    v3 = processName;
    goto LABEL_3;
  }

  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
  if (!v6)
  {
    processName = self->_processName;
    goto LABEL_2;
  }

  v7 = v6;
  v3 = [v6 objectForInfoDictionaryKey:*MEMORY[0x277CBED30]];

LABEL_3:

  return v3;
}

- (SURollbackSuggestionProcessInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SURollbackSuggestionProcessInfo;
  v5 = [(SURollbackSuggestionProcessInfo *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProcessID"];
    [(SURollbackSuggestionProcessInfo *)v5 setProcessID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProcessName"];
    [(SURollbackSuggestionProcessInfo *)v5 setProcessName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RollbackSuggestionError"];
    [(SURollbackSuggestionProcessInfo *)v5 setRollbackSuggestionError:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SURollbackSuggestionProcessInfo *)self processID];
  [v4 encodeObject:v5 forKey:@"ProcessID"];

  v6 = [(SURollbackSuggestionProcessInfo *)self processName];
  [v4 encodeObject:v6 forKey:@"ProcessName"];

  v7 = [(SURollbackSuggestionProcessInfo *)self rollbackSuggestionError];
  [v4 encodeObject:v7 forKey:@"RollbackSuggestionError"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SURollbackSuggestionProcessInfo alloc];
  v5 = [(SURollbackSuggestionProcessInfo *)self processID];
  v6 = [(SURollbackSuggestionProcessInfo *)v4 initWithProcessID:v5];

  v7 = [(SURollbackSuggestionProcessInfo *)self processName];
  [(SURollbackSuggestionProcessInfo *)v6 setProcessName:v7];

  v8 = [(SURollbackSuggestionProcessInfo *)self rollbackSuggestionError];
  [(SURollbackSuggestionProcessInfo *)v6 setRollbackSuggestionError:v8];

  return v6;
}

@end