@interface WFSiriAppProtectionResponse
- (WFSiriAppProtectionResponse)initWithCoder:(id)coder;
- (WFSiriAppProtectionResponse)initWithDidUnlock:(BOOL)unlock andError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriAppProtectionResponse

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFSiriAppProtectionResponse;
  coderCopy = coder;
  [(WFSiriActionResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[WFSiriAppProtectionResponse didUnlock](self forKey:{"didUnlock", v5.receiver, v5.super_class), @"didUnlock"}];
}

- (WFSiriAppProtectionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFSiriAppProtectionResponse;
  v5 = [(WFSiriActionResponse *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_didUnlock = [coderCopy decodeBoolForKey:@"didUnlock"];
    v6 = v5;
  }

  return v5;
}

- (WFSiriAppProtectionResponse)initWithDidUnlock:(BOOL)unlock andError:(id)error
{
  v9.receiver = self;
  v9.super_class = WFSiriAppProtectionResponse;
  v5 = [(WFSiriActionResponse *)&v9 initWithError:error];
  v6 = v5;
  if (v5)
  {
    v5->_didUnlock = unlock;
    v7 = v5;
  }

  return v6;
}

@end