@interface _PXVisualDiagnosticsDrawTextConfiguration
- (CGPoint)relativePosition;
- (_PXVisualDiagnosticsDrawTextConfiguration)init;
@end

@implementation _PXVisualDiagnosticsDrawTextConfiguration

- (CGPoint)relativePosition
{
  x = self->_relativePosition.x;
  y = self->_relativePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_PXVisualDiagnosticsDrawTextConfiguration)init
{
  v3.receiver = self;
  v3.super_class = _PXVisualDiagnosticsDrawTextConfiguration;
  result = [(_PXVisualDiagnosticsDrawTextConfiguration *)&v3 init];
  if (result)
  {
    result->_relativePosition = *MEMORY[0x1E695EFF8];
  }

  return result;
}

@end