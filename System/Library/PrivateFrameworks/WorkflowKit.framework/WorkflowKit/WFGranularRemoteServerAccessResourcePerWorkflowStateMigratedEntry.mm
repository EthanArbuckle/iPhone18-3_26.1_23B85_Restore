@interface WFGranularRemoteServerAccessResourcePerWorkflowStateMigratedEntry
- (WFGranularRemoteServerAccessResourcePerWorkflowStateMigratedEntry)initWithCoder:(id)coder;
@end

@implementation WFGranularRemoteServerAccessResourcePerWorkflowStateMigratedEntry

- (WFGranularRemoteServerAccessResourcePerWorkflowStateMigratedEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFGranularRemoteServerAccessResourcePerWorkflowStateMigratedEntry;
  v5 = [(WFGranularRemoteServerAccessResourcePerWorkflowStateMigratedEntry *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isAuthorized"];
    authorized = v5->authorized;
    v5->authorized = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"host"];
    host = v5->host;
    v5->host = v8;

    v10 = v5;
  }

  return v5;
}

@end