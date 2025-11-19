@interface SUCoreEventReporterActive
- (BOOL)isEqual:(id)a3;
- (SUCoreEventReporterActive)initWithCoder:(id)a3;
- (SUCoreEventReporterActive)initWithServerURL:(id)a3;
- (id)copy;
- (id)description;
- (id)initFromArchivedData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreEventReporterActive

- (SUCoreEventReporterActive)initWithServerURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUCoreEventReporterActive;
  v6 = [(SUCoreEventReporterActive *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverURL, a3);
    v7->_discoveredCancelingCount = 0;
    *&v7->_attemptedSendCount = 0u;
    *&v7->_discoveredRunningCount = 0u;
  }

  return v7;
}

- (SUCoreEventReporterActive)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUCoreEventReporterActive;
  v5 = [(SUCoreEventReporterActive *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServerURL"];
    serverURL = v5->_serverURL;
    v5->_serverURL = v6;

    v5->_attemptedSendCount = [v4 decodeIntegerForKey:@"AttemptedSendCount"];
    v5->_failedSendCount = [v4 decodeIntegerForKey:@"FailedSendCount"];
    v5->_discoveredRunningCount = [v4 decodeIntegerForKey:@"DiscoveredRunningCount"];
    v5->_discoveredSuspendedCount = [v4 decodeIntegerForKey:@"DiscoveredSuspendedCount"];
    v5->_discoveredCancelingCount = [v4 decodeIntegerForKey:@"DiscoveredCancelingCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(SUCoreEventReporterActive *)self serverURL];
  [v5 encodeObject:v4 forKey:@"ServerURL"];

  [v5 encodeInteger:-[SUCoreEventReporterActive attemptedSendCount](self forKey:{"attemptedSendCount"), @"AttemptedSendCount"}];
  [v5 encodeInteger:-[SUCoreEventReporterActive failedSendCount](self forKey:{"failedSendCount"), @"FailedSendCount"}];
  [v5 encodeInteger:-[SUCoreEventReporterActive discoveredRunningCount](self forKey:{"discoveredRunningCount"), @"DiscoveredRunningCount"}];
  [v5 encodeInteger:-[SUCoreEventReporterActive discoveredSuspendedCount](self forKey:{"discoveredSuspendedCount"), @"DiscoveredSuspendedCount"}];
  [v5 encodeInteger:-[SUCoreEventReporterActive discoveredCancelingCount](self forKey:{"discoveredCancelingCount"), @"DiscoveredCancelingCount"}];
}

- (id)copy
{
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (id)initFromArchivedData:(id)a3
{
  v4 = MEMORY[0x1E696ACD0];
  v5 = a3;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:0];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUCoreEventReporterActive *)self serverURL];
      v7 = [(SUCoreEventReporterActive *)v5 serverURL];
      if ([SUCore objectIsEqual:v6 to:v7]&& (v8 = [(SUCoreEventReporterActive *)v5 attemptedSendCount], v8 == [(SUCoreEventReporterActive *)self attemptedSendCount]) && (v9 = [(SUCoreEventReporterActive *)v5 failedSendCount], v9 == [(SUCoreEventReporterActive *)self failedSendCount]) && (v10 = [(SUCoreEventReporterActive *)v5 discoveredRunningCount], v10 == [(SUCoreEventReporterActive *)self discoveredRunningCount]) && (v11 = [(SUCoreEventReporterActive *)v5 discoveredSuspendedCount], v11 == [(SUCoreEventReporterActive *)self discoveredSuspendedCount]))
      {
        v12 = [(SUCoreEventReporterActive *)v5 discoveredCancelingCount];
        v13 = v12 == [(SUCoreEventReporterActive *)self discoveredCancelingCount];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SUCoreEventReporterActive *)self serverURL];
  if (v4)
  {
    v5 = [(SUCoreEventReporterActive *)self serverURL];
  }

  else
  {
    v5 = @"DEFAULT";
  }

  v6 = [v3 initWithFormat:@"serverURL:%@ attemptedSendCount:%d failedSendCount:%d discoveredRunningCount:%d discoveredSuspendedCount:%d discoveredCancelingCount:%d", v5, -[SUCoreEventReporterActive attemptedSendCount](self, "attemptedSendCount"), -[SUCoreEventReporterActive failedSendCount](self, "failedSendCount"), -[SUCoreEventReporterActive discoveredRunningCount](self, "discoveredRunningCount"), -[SUCoreEventReporterActive discoveredSuspendedCount](self, "discoveredSuspendedCount"), -[SUCoreEventReporterActive discoveredCancelingCount](self, "discoveredCancelingCount")];
  if (v4)
  {
  }

  return v6;
}

@end