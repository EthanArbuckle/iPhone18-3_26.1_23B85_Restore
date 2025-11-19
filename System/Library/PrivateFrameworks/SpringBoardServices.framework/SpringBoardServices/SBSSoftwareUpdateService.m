@interface SBSSoftwareUpdateService
- (int64_t)passcodePolicy;
- (void)setPasscodePolicy:(int64_t)a3;
@end

@implementation SBSSoftwareUpdateService

- (int64_t)passcodePolicy
{
  v2 = [(SBSAbstractSystemService *)self client];
  v3 = [v2 passcodePolicy];

  return v3;
}

- (void)setPasscodePolicy:(int64_t)a3
{
  v4 = [(SBSAbstractSystemService *)self client];
  [v4 setPasscodePolicy:a3];
}

@end