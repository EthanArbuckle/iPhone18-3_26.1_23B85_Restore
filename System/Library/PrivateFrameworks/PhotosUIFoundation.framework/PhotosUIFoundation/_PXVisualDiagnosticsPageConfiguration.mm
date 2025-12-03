@interface _PXVisualDiagnosticsPageConfiguration
- (CGSize)pageSize;
- (_PXVisualDiagnosticsPageConfiguration)initWithConfiguration:(id)configuration;
@end

@implementation _PXVisualDiagnosticsPageConfiguration

- (CGSize)pageSize
{
  width = self->_pageSize.width;
  height = self->_pageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_PXVisualDiagnosticsPageConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = _PXVisualDiagnosticsPageConfiguration;
  v5 = [(_PXVisualDiagnosticsPageConfiguration *)&v9 init];
  if (v5)
  {
    [configurationCopy defaultPageSize];
    v5->_pageSize.width = v6;
    v5->_pageSize.height = v7;
  }

  return v5;
}

@end