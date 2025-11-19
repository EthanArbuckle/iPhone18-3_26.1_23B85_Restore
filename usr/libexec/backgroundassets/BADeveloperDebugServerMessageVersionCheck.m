@interface BADeveloperDebugServerMessageVersionCheck
- (BADeveloperDebugServerMessageVersionCheck)initWithCoder:(id)a3;
- (BADeveloperDebugServerMessageVersionCheck)initWithVersionAllowed:(BOOL)a3 failureExplanation:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BADeveloperDebugServerMessageVersionCheck

- (BADeveloperDebugServerMessageVersionCheck)initWithVersionAllowed:(BOOL)a3 failureExplanation:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BADeveloperDebugServerMessageVersionCheck;
  v8 = [(BADeveloperDebugServerMessage *)&v11 initWithMessageOperation:1];
  v9 = v8;
  if (v8)
  {
    v8->_versionAllowed = a3;
    objc_storeStrong(&v8->_failureReason, a4);
  }

  return v9;
}

- (BADeveloperDebugServerMessageVersionCheck)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BADeveloperDebugServerMessageVersionCheck;
  v5 = [(BADeveloperDebugServerMessage *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_versionAllowed = [v4 decodeBoolForKey:@"BAServerVersionSupported"];
    if ([v4 containsValueForKey:@"BAFailureReason"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BAFailureReason"];
      failureReason = v5->_failureReason;
      v5->_failureReason = v6;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BADeveloperDebugServerMessageVersionCheck;
  [(BADeveloperDebugServerMessage *)&v7 encodeWithCoder:v4];
  [v4 encodeBool:-[BADeveloperDebugServerMessageVersionCheck versionAllowed](self forKey:{"versionAllowed"), @"BAServerVersionSupported"}];
  v5 = [(BADeveloperDebugServerMessageVersionCheck *)self failureReason];

  if (v5)
  {
    v6 = [(BADeveloperDebugServerMessageVersionCheck *)self failureReason];
    [v4 encodeObject:v6 forKey:@"BAFailureReason"];
  }
}

@end