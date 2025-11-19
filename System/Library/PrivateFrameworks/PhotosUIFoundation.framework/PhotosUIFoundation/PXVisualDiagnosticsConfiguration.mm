@interface PXVisualDiagnosticsConfiguration
- (CGSize)defaultPageSize;
- (PXVisualDiagnosticsConfiguration)init;
- (PXVisualDiagnosticsConfiguration)initWithRootProvider:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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
  v5 = [(PXVisualDiagnosticsConfiguration *)self name];
  v6 = [(PXVisualDiagnosticsConfiguration *)self rootProvider];
  v7 = [v3 initWithFormat:@"<%@ %p; name: %@, rootProvider: %@>", v4, self, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(PXVisualDiagnosticsConfiguration *)self rootProvider];
  v6 = [v4 initWithRootProvider:v5];

  [(PXVisualDiagnosticsConfiguration *)self defaultPageSize];
  [v6 setDefaultPageSize:?];
  v7 = [(PXVisualDiagnosticsConfiguration *)self name];
  [v6 setName:v7];

  return v6;
}

- (PXVisualDiagnosticsConfiguration)initWithRootProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXVisualDiagnosticsConfiguration;
  v6 = [(PXVisualDiagnosticsConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootProvider, a3);
    v7->_defaultPageSize = xmmword_1B4074F00;
  }

  return v7;
}

- (PXVisualDiagnosticsConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsConfiguration.m" lineNumber:18 description:{@"%s is not available as initializer", "-[PXVisualDiagnosticsConfiguration init]"}];

  abort();
}

@end