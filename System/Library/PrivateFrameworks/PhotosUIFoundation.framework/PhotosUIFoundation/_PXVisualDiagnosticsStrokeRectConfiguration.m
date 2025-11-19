@interface _PXVisualDiagnosticsStrokeRectConfiguration
- (_PXVisualDiagnosticsStrokeRectConfiguration)init;
@end

@implementation _PXVisualDiagnosticsStrokeRectConfiguration

- (_PXVisualDiagnosticsStrokeRectConfiguration)init
{
  v6.receiver = self;
  v6.super_class = _PXVisualDiagnosticsStrokeRectConfiguration;
  v2 = [(_PXVisualDiagnosticsStrokeRectConfiguration *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] clearColor];
    strokeColor = v2->_strokeColor;
    v2->_strokeColor = v3;

    v2->_lineWidth = 1.0;
  }

  return v2;
}

@end