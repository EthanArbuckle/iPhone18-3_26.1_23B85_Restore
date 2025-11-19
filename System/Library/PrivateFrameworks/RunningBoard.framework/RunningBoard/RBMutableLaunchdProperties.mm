@interface RBMutableLaunchdProperties
- (RBMutableLaunchdProperties)initWithProperties:(id)a3;
- (void)setExecutablePath:(id)a3;
- (void)setJobLabel:(id)a3;
- (void)setPath:(id)a3;
- (void)setUnderlyingAssertion:(id)a3;
@end

@implementation RBMutableLaunchdProperties

- (RBMutableLaunchdProperties)initWithProperties:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RBMutableLaunchdProperties;
  v5 = [(RBMutableLaunchdProperties *)&v16 init];
  v6 = v5;
  if (v4 && v5)
  {
    v5->super._type = *(v4 + 1);
    v5->super._multiInstance = *(v4 + 28);
    v5->super._variableEUID = *(v4 + 29);
    v5->super._doesOverrideManagement = *(v4 + 48);
    v5->super._overrideManageFlags = *(v4 + 30);
    v7 = [*(v4 + 4) copy];
    jobLabel = v6->super._jobLabel;
    v6->super._jobLabel = v7;

    v9 = [*(v4 + 5) copy];
    executablePath = v6->super._executablePath;
    v6->super._executablePath = v9;

    v11 = [*(v4 + 2) copy];
    path = v6->super._path;
    v6->super._path = v11;

    v6->super._hostPid = *(v4 + 6);
    v13 = [*(v4 + 7) copy];
    underlyingAssertion = v6->super._underlyingAssertion;
    v6->super._underlyingAssertion = v13;

    objc_storeStrong(&v6->super._specifiedIdentity, *(v4 + 8));
  }

  return v6;
}

- (void)setJobLabel:(id)a3
{
  v4 = [a3 copy];
  jobLabel = self->super._jobLabel;
  self->super._jobLabel = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setExecutablePath:(id)a3
{
  v4 = [a3 copy];
  executablePath = self->super._executablePath;
  self->super._executablePath = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setPath:(id)a3
{
  v4 = [a3 copy];
  path = self->super._path;
  self->super._path = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setUnderlyingAssertion:(id)a3
{
  v4 = [a3 copy];
  underlyingAssertion = self->super._underlyingAssertion;
  self->super._underlyingAssertion = v4;

  MEMORY[0x2821F96F8]();
}

@end