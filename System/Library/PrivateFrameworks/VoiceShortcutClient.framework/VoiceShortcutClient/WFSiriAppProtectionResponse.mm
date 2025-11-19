@interface WFSiriAppProtectionResponse
- (WFSiriAppProtectionResponse)initWithCoder:(id)a3;
- (WFSiriAppProtectionResponse)initWithDidUnlock:(BOOL)a3 andError:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSiriAppProtectionResponse

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFSiriAppProtectionResponse;
  v4 = a3;
  [(WFSiriActionResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[WFSiriAppProtectionResponse didUnlock](self forKey:{"didUnlock", v5.receiver, v5.super_class), @"didUnlock"}];
}

- (WFSiriAppProtectionResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFSiriAppProtectionResponse;
  v5 = [(WFSiriActionResponse *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_didUnlock = [v4 decodeBoolForKey:@"didUnlock"];
    v6 = v5;
  }

  return v5;
}

- (WFSiriAppProtectionResponse)initWithDidUnlock:(BOOL)a3 andError:(id)a4
{
  v9.receiver = self;
  v9.super_class = WFSiriAppProtectionResponse;
  v5 = [(WFSiriActionResponse *)&v9 initWithError:a4];
  v6 = v5;
  if (v5)
  {
    v5->_didUnlock = a3;
    v7 = v5;
  }

  return v6;
}

@end