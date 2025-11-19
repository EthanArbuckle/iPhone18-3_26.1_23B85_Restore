@interface STUserInteractionReportingStatusDomain
- (void)reportUserInteraction:(id)a3;
@end

@implementation STUserInteractionReportingStatusDomain

- (void)reportUserInteraction:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(STStatusDomain *)self isInvalidated])
  {
    v5 = STSystemStatusLogObservation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = [objc_opt_class() statusDomainName];
      v7 = STSystemStatusDescriptionForDomain(v6);
      v9 = 138543362;
      v10 = v7;
      _os_log_fault_impl(&dword_1DA9C2000, v5, OS_LOG_TYPE_FAULT, "%{public}@ domain attempted to report user interaction after being invalidated", &v9, 0xCu);
    }
  }

  else
  {
    v5 = [(STStatusDomain *)self serverHandle];
    -[NSObject reportUserInteraction:forClient:domain:](v5, "reportUserInteraction:forClient:domain:", v4, self, [objc_opt_class() statusDomainName]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end