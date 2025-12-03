@interface SBCaptureApplicationTerminationInfo
+ (id)__buildVersion;
- (BOOL)isEqual:(id)equal;
- (SBCaptureApplicationTerminationInfo)initWithCoder:(id)coder;
- (SBCaptureApplicationTerminationInfo)initWithProcessName:(id)name terminationReason:(id)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBCaptureApplicationTerminationInfo

+ (id)__buildVersion
{
  v2 = _CFCopySystemVersionDictionaryValue();

  return v2;
}

- (SBCaptureApplicationTerminationInfo)initWithProcessName:(id)name terminationReason:(id)reason
{
  nameCopy = name;
  reasonCopy = reason;
  v14.receiver = self;
  v14.super_class = SBCaptureApplicationTerminationInfo;
  v9 = [(SBCaptureApplicationTerminationInfo *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_processName, name);
    __buildVersion = [objc_opt_class() __buildVersion];
    buildVersion = v10->_buildVersion;
    v10->_buildVersion = __buildVersion;

    objc_storeStrong(&v10->_terminationReason, reason);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [MEMORY[0x277CF0C20] builderWithObject:self ofExpectedClass:objc_opt_class()];
  processName = [(SBCaptureApplicationTerminationInfo *)self processName];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __47__SBCaptureApplicationTerminationInfo_isEqual___block_invoke;
  v24[3] = &unk_2783A91C8;
  v11 = v8;
  v25 = v11;
  v12 = [v9 appendString:processName counterpart:v24];

  buildVersion = [(SBCaptureApplicationTerminationInfo *)self buildVersion];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __47__SBCaptureApplicationTerminationInfo_isEqual___block_invoke_2;
  v22[3] = &unk_2783A91C8;
  v14 = v11;
  v23 = v14;
  v15 = [v9 appendString:buildVersion counterpart:v22];

  terminationReason = [(SBCaptureApplicationTerminationInfo *)self terminationReason];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__SBCaptureApplicationTerminationInfo_isEqual___block_invoke_3;
  v20[3] = &unk_2783A91C8;
  v21 = v14;
  v17 = v14;
  v18 = [v9 appendString:terminationReason counterpart:v20];

  LOBYTE(terminationReason) = [v9 isEqual];
  return terminationReason;
}

- (SBCaptureApplicationTerminationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processName"];
  processName = self->_processName;
  self->_processName = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buildVersion"];
  buildVersion = self->_buildVersion;
  self->_buildVersion = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"terminationReason"];

  terminationReason = self->_terminationReason;
  self->_terminationReason = v9;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  processName = self->_processName;
  coderCopy = coder;
  [coderCopy encodeObject:processName forKey:@"processName"];
  [coderCopy encodeObject:self->_buildVersion forKey:@"buildVersion"];
  [coderCopy encodeObject:self->_terminationReason forKey:@"terminationReason"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  objc_storeStrong(v4 + 1, self->_processName);
  objc_storeStrong(v4 + 2, self->_buildVersion);
  objc_storeStrong(v4 + 3, self->_terminationReason);
  return v4;
}

@end