@interface SUCoreEventReporterActive
- (BOOL)isEqual:(id)equal;
- (SUCoreEventReporterActive)initWithCoder:(id)coder;
- (SUCoreEventReporterActive)initWithServerURL:(id)l;
- (id)copy;
- (id)description;
- (id)initFromArchivedData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCoreEventReporterActive

- (SUCoreEventReporterActive)initWithServerURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = SUCoreEventReporterActive;
  v6 = [(SUCoreEventReporterActive *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverURL, l);
    v7->_discoveredCancelingCount = 0;
    *&v7->_attemptedSendCount = 0u;
    *&v7->_discoveredRunningCount = 0u;
  }

  return v7;
}

- (SUCoreEventReporterActive)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUCoreEventReporterActive;
  v5 = [(SUCoreEventReporterActive *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServerURL"];
    serverURL = v5->_serverURL;
    v5->_serverURL = v6;

    v5->_attemptedSendCount = [coderCopy decodeIntegerForKey:@"AttemptedSendCount"];
    v5->_failedSendCount = [coderCopy decodeIntegerForKey:@"FailedSendCount"];
    v5->_discoveredRunningCount = [coderCopy decodeIntegerForKey:@"DiscoveredRunningCount"];
    v5->_discoveredSuspendedCount = [coderCopy decodeIntegerForKey:@"DiscoveredSuspendedCount"];
    v5->_discoveredCancelingCount = [coderCopy decodeIntegerForKey:@"DiscoveredCancelingCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serverURL = [(SUCoreEventReporterActive *)self serverURL];
  [coderCopy encodeObject:serverURL forKey:@"ServerURL"];

  [coderCopy encodeInteger:-[SUCoreEventReporterActive attemptedSendCount](self forKey:{"attemptedSendCount"), @"AttemptedSendCount"}];
  [coderCopy encodeInteger:-[SUCoreEventReporterActive failedSendCount](self forKey:{"failedSendCount"), @"FailedSendCount"}];
  [coderCopy encodeInteger:-[SUCoreEventReporterActive discoveredRunningCount](self forKey:{"discoveredRunningCount"), @"DiscoveredRunningCount"}];
  [coderCopy encodeInteger:-[SUCoreEventReporterActive discoveredSuspendedCount](self forKey:{"discoveredSuspendedCount"), @"DiscoveredSuspendedCount"}];
  [coderCopy encodeInteger:-[SUCoreEventReporterActive discoveredCancelingCount](self forKey:{"discoveredCancelingCount"), @"DiscoveredCancelingCount"}];
}

- (id)copy
{
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (id)initFromArchivedData:(id)data
{
  v4 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:0];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      serverURL = [(SUCoreEventReporterActive *)self serverURL];
      serverURL2 = [(SUCoreEventReporterActive *)v5 serverURL];
      if ([SUCore objectIsEqual:serverURL to:serverURL2]&& (v8 = [(SUCoreEventReporterActive *)v5 attemptedSendCount], v8 == [(SUCoreEventReporterActive *)self attemptedSendCount]) && (v9 = [(SUCoreEventReporterActive *)v5 failedSendCount], v9 == [(SUCoreEventReporterActive *)self failedSendCount]) && (v10 = [(SUCoreEventReporterActive *)v5 discoveredRunningCount], v10 == [(SUCoreEventReporterActive *)self discoveredRunningCount]) && (v11 = [(SUCoreEventReporterActive *)v5 discoveredSuspendedCount], v11 == [(SUCoreEventReporterActive *)self discoveredSuspendedCount]))
      {
        discoveredCancelingCount = [(SUCoreEventReporterActive *)v5 discoveredCancelingCount];
        v13 = discoveredCancelingCount == [(SUCoreEventReporterActive *)self discoveredCancelingCount];
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
  serverURL = [(SUCoreEventReporterActive *)self serverURL];
  if (serverURL)
  {
    serverURL2 = [(SUCoreEventReporterActive *)self serverURL];
  }

  else
  {
    serverURL2 = @"DEFAULT";
  }

  v6 = [v3 initWithFormat:@"serverURL:%@ attemptedSendCount:%d failedSendCount:%d discoveredRunningCount:%d discoveredSuspendedCount:%d discoveredCancelingCount:%d", serverURL2, -[SUCoreEventReporterActive attemptedSendCount](self, "attemptedSendCount"), -[SUCoreEventReporterActive failedSendCount](self, "failedSendCount"), -[SUCoreEventReporterActive discoveredRunningCount](self, "discoveredRunningCount"), -[SUCoreEventReporterActive discoveredSuspendedCount](self, "discoveredSuspendedCount"), -[SUCoreEventReporterActive discoveredCancelingCount](self, "discoveredCancelingCount")];
  if (serverURL)
  {
  }

  return v6;
}

@end