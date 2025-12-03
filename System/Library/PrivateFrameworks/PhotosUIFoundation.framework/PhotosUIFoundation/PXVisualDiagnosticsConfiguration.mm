@interface PXVisualDiagnosticsConfiguration
- (CGSize)defaultPageSize;
- (PXVisualDiagnosticsConfiguration)init;
- (PXVisualDiagnosticsConfiguration)initWithRootProvider:(id)provider;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PXVisualDiagnosticsConfiguration

- (CGSize)defaultPageSize
{
  width = self->_defaultPageSize.width;
  height = self->_defaultPageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  name = [(PXVisualDiagnosticsConfiguration *)self name];
  rootProvider = [(PXVisualDiagnosticsConfiguration *)self rootProvider];
  v7 = [v3 initWithFormat:@"<%@ %p; name: %@, rootProvider: %@>", v4, self, name, rootProvider];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  rootProvider = [(PXVisualDiagnosticsConfiguration *)self rootProvider];
  v6 = [v4 initWithRootProvider:rootProvider];

  [(PXVisualDiagnosticsConfiguration *)self defaultPageSize];
  [v6 setDefaultPageSize:?];
  name = [(PXVisualDiagnosticsConfiguration *)self name];
  [v6 setName:name];

  return v6;
}

- (PXVisualDiagnosticsConfiguration)initWithRootProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = PXVisualDiagnosticsConfiguration;
  v6 = [(PXVisualDiagnosticsConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootProvider, provider);
    v7->_defaultPageSize = xmmword_1B4074F00;
  }

  return v7;
}

- (PXVisualDiagnosticsConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsConfiguration.m" lineNumber:18 description:{@"%s is not available as initializer", "-[PXVisualDiagnosticsConfiguration init]"}];

  abort();
}

@end