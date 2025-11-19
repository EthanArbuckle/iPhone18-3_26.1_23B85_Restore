@interface _PXVisualDiagnosticsFillRectConfiguration
- (_PXVisualDiagnosticsFillRectConfiguration)init;
@end

@implementation _PXVisualDiagnosticsFillRectConfiguration

- (_PXVisualDiagnosticsFillRectConfiguration)init
{
  v6.receiver = self;
  v6.super_class = _PXVisualDiagnosticsFillRectConfiguration;
  v2 = [(_PXVisualDiagnosticsFillRectConfiguration *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] clearColor];
    fillColor = v2->_fillColor;
    v2->_fillColor = v3;
  }

  return v2;
}

@end