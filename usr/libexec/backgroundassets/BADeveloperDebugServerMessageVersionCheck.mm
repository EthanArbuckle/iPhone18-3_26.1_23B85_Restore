@interface BADeveloperDebugServerMessageVersionCheck
- (BADeveloperDebugServerMessageVersionCheck)initWithCoder:(id)coder;
- (BADeveloperDebugServerMessageVersionCheck)initWithVersionAllowed:(BOOL)allowed failureExplanation:(id)explanation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BADeveloperDebugServerMessageVersionCheck

- (BADeveloperDebugServerMessageVersionCheck)initWithVersionAllowed:(BOOL)allowed failureExplanation:(id)explanation
{
  explanationCopy = explanation;
  v11.receiver = self;
  v11.super_class = BADeveloperDebugServerMessageVersionCheck;
  v8 = [(BADeveloperDebugServerMessage *)&v11 initWithMessageOperation:1];
  v9 = v8;
  if (v8)
  {
    v8->_versionAllowed = allowed;
    objc_storeStrong(&v8->_failureReason, explanation);
  }

  return v9;
}

- (BADeveloperDebugServerMessageVersionCheck)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BADeveloperDebugServerMessageVersionCheck;
  v5 = [(BADeveloperDebugServerMessage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_versionAllowed = [coderCopy decodeBoolForKey:@"BAServerVersionSupported"];
    if ([coderCopy containsValueForKey:@"BAFailureReason"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BAFailureReason"];
      failureReason = v5->_failureReason;
      v5->_failureReason = v6;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BADeveloperDebugServerMessageVersionCheck;
  [(BADeveloperDebugServerMessage *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[BADeveloperDebugServerMessageVersionCheck versionAllowed](self forKey:{"versionAllowed"), @"BAServerVersionSupported"}];
  failureReason = [(BADeveloperDebugServerMessageVersionCheck *)self failureReason];

  if (failureReason)
  {
    failureReason2 = [(BADeveloperDebugServerMessageVersionCheck *)self failureReason];
    [coderCopy encodeObject:failureReason2 forKey:@"BAFailureReason"];
  }
}

@end