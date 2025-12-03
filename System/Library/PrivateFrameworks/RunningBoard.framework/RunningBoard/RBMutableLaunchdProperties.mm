@interface RBMutableLaunchdProperties
- (RBMutableLaunchdProperties)initWithProperties:(id)properties;
- (void)setExecutablePath:(id)path;
- (void)setJobLabel:(id)label;
- (void)setPath:(id)path;
- (void)setUnderlyingAssertion:(id)assertion;
@end

@implementation RBMutableLaunchdProperties

- (RBMutableLaunchdProperties)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v16.receiver = self;
  v16.super_class = RBMutableLaunchdProperties;
  v5 = [(RBMutableLaunchdProperties *)&v16 init];
  v6 = v5;
  if (propertiesCopy && v5)
  {
    v5->super._type = *(propertiesCopy + 1);
    v5->super._multiInstance = *(propertiesCopy + 28);
    v5->super._variableEUID = *(propertiesCopy + 29);
    v5->super._doesOverrideManagement = *(propertiesCopy + 48);
    v5->super._overrideManageFlags = *(propertiesCopy + 30);
    v7 = [*(propertiesCopy + 4) copy];
    jobLabel = v6->super._jobLabel;
    v6->super._jobLabel = v7;

    v9 = [*(propertiesCopy + 5) copy];
    executablePath = v6->super._executablePath;
    v6->super._executablePath = v9;

    v11 = [*(propertiesCopy + 2) copy];
    path = v6->super._path;
    v6->super._path = v11;

    v6->super._hostPid = *(propertiesCopy + 6);
    v13 = [*(propertiesCopy + 7) copy];
    underlyingAssertion = v6->super._underlyingAssertion;
    v6->super._underlyingAssertion = v13;

    objc_storeStrong(&v6->super._specifiedIdentity, *(propertiesCopy + 8));
  }

  return v6;
}

- (void)setJobLabel:(id)label
{
  v4 = [label copy];
  jobLabel = self->super._jobLabel;
  self->super._jobLabel = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setExecutablePath:(id)path
{
  v4 = [path copy];
  executablePath = self->super._executablePath;
  self->super._executablePath = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setPath:(id)path
{
  v4 = [path copy];
  path = self->super._path;
  self->super._path = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setUnderlyingAssertion:(id)assertion
{
  v4 = [assertion copy];
  underlyingAssertion = self->super._underlyingAssertion;
  self->super._underlyingAssertion = v4;

  MEMORY[0x2821F96F8]();
}

@end