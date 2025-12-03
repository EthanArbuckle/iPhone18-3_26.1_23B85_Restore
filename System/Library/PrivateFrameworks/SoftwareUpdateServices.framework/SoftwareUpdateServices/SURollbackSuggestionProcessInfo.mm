@interface SURollbackSuggestionProcessInfo
- (NSString)processName;
- (SURollbackSuggestionProcessInfo)initWithCoder:(id)coder;
- (SURollbackSuggestionProcessInfo)initWithProcessID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SURollbackSuggestionProcessInfo

- (SURollbackSuggestionProcessInfo)initWithProcessID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = SURollbackSuggestionProcessInfo;
  v6 = [(SURollbackSuggestionProcessInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processID, d);
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

- (SURollbackSuggestionProcessInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SURollbackSuggestionProcessInfo;
  v5 = [(SURollbackSuggestionProcessInfo *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProcessID"];
    [(SURollbackSuggestionProcessInfo *)v5 setProcessID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProcessName"];
    [(SURollbackSuggestionProcessInfo *)v5 setProcessName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RollbackSuggestionError"];
    [(SURollbackSuggestionProcessInfo *)v5 setRollbackSuggestionError:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  processID = [(SURollbackSuggestionProcessInfo *)self processID];
  [coderCopy encodeObject:processID forKey:@"ProcessID"];

  processName = [(SURollbackSuggestionProcessInfo *)self processName];
  [coderCopy encodeObject:processName forKey:@"ProcessName"];

  rollbackSuggestionError = [(SURollbackSuggestionProcessInfo *)self rollbackSuggestionError];
  [coderCopy encodeObject:rollbackSuggestionError forKey:@"RollbackSuggestionError"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SURollbackSuggestionProcessInfo alloc];
  processID = [(SURollbackSuggestionProcessInfo *)self processID];
  v6 = [(SURollbackSuggestionProcessInfo *)v4 initWithProcessID:processID];

  processName = [(SURollbackSuggestionProcessInfo *)self processName];
  [(SURollbackSuggestionProcessInfo *)v6 setProcessName:processName];

  rollbackSuggestionError = [(SURollbackSuggestionProcessInfo *)self rollbackSuggestionError];
  [(SURollbackSuggestionProcessInfo *)v6 setRollbackSuggestionError:rollbackSuggestionError];

  return v6;
}

@end