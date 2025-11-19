@interface POWSTrustResponse
- (BOOL)isCredentialFault;
@end

@implementation POWSTrustResponse

- (BOOL)isCredentialFault
{
  if (![(POWSTrustResponse *)self isFault])
  {
    return 0;
  }

  v3 = [(POWSTrustResponse *)self faultSubCodeValue];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(POWSTrustResponse *)self securityExtensionPrefix];
  v6 = [v4 stringWithFormat:@"%@:FailedAuthentication", v5];
  if ([v3 isEqualToString:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(POWSTrustResponse *)self faultSubCodeValue];
    v7 = [v8 hasSuffix:@"FailedAuthentication"];
  }

  return v7;
}

@end