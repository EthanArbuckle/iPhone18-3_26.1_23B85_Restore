@interface _PXVisualDiagnosticsTableColumn
- (_PXVisualDiagnosticsTableColumn)init;
@end

@implementation _PXVisualDiagnosticsTableColumn

- (_PXVisualDiagnosticsTableColumn)init
{
  v3.receiver = self;
  v3.super_class = _PXVisualDiagnosticsTableColumn;
  result = [(_PXVisualDiagnosticsTableColumn *)&v3 init];
  if (result)
  {
    result->_width = 100.0;
  }

  return result;
}

@end