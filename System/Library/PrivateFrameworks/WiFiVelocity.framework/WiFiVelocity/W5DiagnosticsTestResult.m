@interface W5DiagnosticsTestResult
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDiagnosticsTestResult:(id)a3;
- (W5DiagnosticsTestResult)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setInfo:(id)a3;
@end

@implementation W5DiagnosticsTestResult

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5DiagnosticsTestResult;
  [(W5DiagnosticsTestResult *)&v3 dealloc];
}

- (void)setConfiguration:(id)a3
{
  configuration = self->_configuration;
  if (configuration != a3)
  {

    self->_configuration = 0;
    if (a3)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
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

- (void)setInfo:(id)a3
{
  info = self->_info;
  if (info != a3)
  {

    self->_info = 0;
    if (a3)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
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

- (BOOL)conformsToProtocol:(id)a3
{
  v5.receiver = self;
  v5.super_class = W5DiagnosticsTestResult;
  if (-[W5DiagnosticsTestResult conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([a3 isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToDiagnosticsTestResult:(id)a3
{
  uuid = self->_uuid;
  v4 = [a3 uuid];

  return [(NSUUID *)uuid isEqual:v4];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5DiagnosticsTestResult *)self isEqualToDiagnosticsTestResult:a3];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_testID forKey:@"_testID"];
  [a3 encodeObject:self->_configuration forKey:@"_configuration"];
  [a3 encodeObject:self->_error forKey:@"_error"];
  [a3 encodeObject:self->_uuid forKey:@"_uuid"];
  [a3 encodeBool:self->_result forKey:@"_result"];
  [a3 encodeBool:self->_didPass forKey:@"_didPass"];
  [a3 encodeObject:self->_info forKey:@"_info"];
  [a3 encodeDouble:@"_testStarted" forKey:self->_testStarted];
  testCompleted = self->_testCompleted;

  [a3 encodeDouble:@"_testCompleted" forKey:testCompleted];
}

- (W5DiagnosticsTestResult)initWithCoder:(id)a3
{
  v25.receiver = self;
  v25.super_class = W5DiagnosticsTestResult;
  v4 = [(W5DiagnosticsTestResult *)&v25 init];
  if (v4)
  {
    v4->_testID = [a3 decodeIntegerForKey:@"_testID"];
    v4->_result = [a3 decodeBoolForKey:@"_result"];
    v4->_didPass = [a3 decodeBoolForKey:@"_didPass"];
    v4->_uuid = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_uuid", "copy"}];
    v4->_error = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_error", "copy"}];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v4->_configuration = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, v10, objc_opt_class(), 0), @"_configuration", "copy"}];
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
    v4->_info = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v24 forKey:{"setWithObjects:", v23, v22, v11, v12, v13, v14, v15, v16, v17, v18, objc_opt_class(), 0), @"_info", "copy"}];
    [a3 decodeDoubleForKey:@"_testStarted"];
    v4->_testStarted = v19;
    [a3 decodeDoubleForKey:@"_testCompleted"];
    v4->_testCompleted = v20;
  }

  return v4;
}

@end