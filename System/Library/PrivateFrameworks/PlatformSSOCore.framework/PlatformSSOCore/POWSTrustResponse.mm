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

  faultSubCodeValue = [(POWSTrustResponse *)self faultSubCodeValue];
  v4 = MEMORY[0x277CCACA8];
  securityExtensionPrefix = [(POWSTrustResponse *)self securityExtensionPrefix];
  v6 = [v4 stringWithFormat:@"%@:FailedAuthentication", securityExtensionPrefix];
  if ([faultSubCodeValue isEqualToString:v6])
  {
    v7 = 1;
  }

  else
  {
    faultSubCodeValue2 = [(POWSTrustResponse *)self faultSubCodeValue];
    v7 = [faultSubCodeValue2 hasSuffix:@"FailedAuthentication"];
  }

  return v7;
}

@end