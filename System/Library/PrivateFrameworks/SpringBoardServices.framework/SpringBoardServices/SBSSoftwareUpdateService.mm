@interface SBSSoftwareUpdateService
- (int64_t)passcodePolicy;
- (void)setPasscodePolicy:(int64_t)policy;
@end

@implementation SBSSoftwareUpdateService

- (int64_t)passcodePolicy
{
  client = [(SBSAbstractSystemService *)self client];
  passcodePolicy = [client passcodePolicy];

  return passcodePolicy;
}

- (void)setPasscodePolicy:(int64_t)policy
{
  client = [(SBSAbstractSystemService *)self client];
  [client setPasscodePolicy:policy];
}

@end