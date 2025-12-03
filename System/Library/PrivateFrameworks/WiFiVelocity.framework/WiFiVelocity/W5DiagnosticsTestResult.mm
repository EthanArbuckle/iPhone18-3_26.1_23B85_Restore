@interface W5DiagnosticsTestResult
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDiagnosticsTestResult:(id)result;
- (W5DiagnosticsTestResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setConfiguration:(id)configuration;
- (void)setInfo:(id)info;
@end

@implementation W5DiagnosticsTestResult

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5DiagnosticsTestResult;
  [(W5DiagnosticsTestResult *)&v3 dealloc];
}

- (void)setConfiguration:(id)configuration
{
  configuration = self->_configuration;
  if (configuration != configuration)
  {

    self->_configuration = 0;
    if (configuration)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:configuration requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x277CCAAC8];
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        v11 = objc_opt_class();
        v12 = objc_opt_class();
        v13 = objc_opt_class();
        v14 = objc_opt_class();
        self->_configuration = [v8 unarchivedObjectOfClasses:objc_msgSend(v9 fromData:"setWithObjects:" error:{v10, v11, v12, v13, v14, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (void)setInfo:(id)info
{
  info = self->_info;
  if (info != info)
  {

    self->_info = 0;
    if (info)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:info requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v18 = MEMORY[0x277CBEB98];
        v19 = MEMORY[0x277CCAAC8];
        v17 = objc_opt_class();
        v16 = objc_opt_class();
        v8 = objc_opt_class();
        v9 = objc_opt_class();
        v10 = objc_opt_class();
        v11 = objc_opt_class();
        v12 = objc_opt_class();
        v13 = objc_opt_class();
        v14 = objc_opt_class();
        v15 = objc_opt_class();
        self->_info = [v19 unarchivedObjectOfClasses:objc_msgSend(v18 fromData:"setWithObjects:" error:{v17, v16, v8, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"Name: %@ (%ld)\n", W5DescriptionForDiagnosticsTestID(self->_testID), self->_testID];
  [v3 appendFormat:@"Description: %@\n", W5ExtendedDescriptionForDiagnosticsTestID(self->_testID)];
  if (self->_didPass)
  {
    v4 = @"Yes";
  }

  else
  {
    v4 = @"No";
  }

  [v3 appendFormat:@"Pass: %@\n", v4];
  if (self->_result)
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  [v3 appendFormat:@"Result: %@\n", v5];
  [v3 appendFormat:@"Error: %@\n", self->_error];
  [v3 appendFormat:@"UUID: %@\n", -[NSUUID UUIDString](self->_uuid, "UUIDString")];
  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v6 setDateStyle:0];
  [v6 setTimeStyle:2];
  [v6 setLocale:{objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale")}];
  [v3 appendFormat:@"Started: %@\n", objc_msgSend(v6, "stringFromDate:", objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", self->_testStarted))];
  [v3 appendFormat:@"Completed: %@\n", objc_msgSend(v6, "stringFromDate:", objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", self->_testCompleted))];
  [v3 appendFormat:@"Configuration: %@\n", self->_configuration];
  [v3 appendFormat:@"Info: %@\n", self->_info];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v5.receiver = self;
  v5.super_class = W5DiagnosticsTestResult;
  if (-[W5DiagnosticsTestResult conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([protocol isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [protocol isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToDiagnosticsTestResult:(id)result
{
  uuid = self->_uuid;
  uuid = [result uuid];

  return [(NSUUID *)uuid isEqual:uuid];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5DiagnosticsTestResult *)self isEqualToDiagnosticsTestResult:equal];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5DiagnosticsTestResult allocWithZone:?]];
  [(W5DiagnosticsTestResult *)v4 setUuid:self->_uuid];
  [(W5DiagnosticsTestResult *)v4 setTestID:self->_testID];
  [(W5DiagnosticsTestResult *)v4 setResult:self->_result];
  [(W5DiagnosticsTestResult *)v4 setDidPass:self->_didPass];
  [(W5DiagnosticsTestResult *)v4 setError:self->_error];
  [(W5DiagnosticsTestResult *)v4 setConfiguration:self->_configuration];
  [(W5DiagnosticsTestResult *)v4 setInfo:self->_info];
  [(W5DiagnosticsTestResult *)v4 setTestStarted:self->_testStarted];
  [(W5DiagnosticsTestResult *)v4 setTestCompleted:self->_testCompleted];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_testID forKey:@"_testID"];
  [coder encodeObject:self->_configuration forKey:@"_configuration"];
  [coder encodeObject:self->_error forKey:@"_error"];
  [coder encodeObject:self->_uuid forKey:@"_uuid"];
  [coder encodeBool:self->_result forKey:@"_result"];
  [coder encodeBool:self->_didPass forKey:@"_didPass"];
  [coder encodeObject:self->_info forKey:@"_info"];
  [coder encodeDouble:@"_testStarted" forKey:self->_testStarted];
  testCompleted = self->_testCompleted;

  [coder encodeDouble:@"_testCompleted" forKey:testCompleted];
}

- (W5DiagnosticsTestResult)initWithCoder:(id)coder
{
  v25.receiver = self;
  v25.super_class = W5DiagnosticsTestResult;
  v4 = [(W5DiagnosticsTestResult *)&v25 init];
  if (v4)
  {
    v4->_testID = [coder decodeIntegerForKey:@"_testID"];
    v4->_result = [coder decodeBoolForKey:@"_result"];
    v4->_didPass = [coder decodeBoolForKey:@"_didPass"];
    v4->_uuid = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_uuid", "copy"}];
    v4->_error = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_error", "copy"}];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v4->_configuration = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, v10, objc_opt_class(), 0), @"_configuration", "copy"}];
    v24 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v22 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v4->_info = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v24 forKey:{"setWithObjects:", v23, v22, v11, v12, v13, v14, v15, v16, v17, v18, objc_opt_class(), 0), @"_info", "copy"}];
    [coder decodeDoubleForKey:@"_testStarted"];
    v4->_testStarted = v19;
    [coder decodeDoubleForKey:@"_testCompleted"];
    v4->_testCompleted = v20;
  }

  return v4;
}

@end