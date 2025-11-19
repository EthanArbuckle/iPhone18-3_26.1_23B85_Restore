@interface SBWorkspaceCoverSheetFlyInContext
- (SBWorkspaceCoverSheetFlyInContext)initWithProgress:(double)a3 velocity:(double)a4 supportsBlur:(BOOL)a5;
@end

@implementation SBWorkspaceCoverSheetFlyInContext

- (SBWorkspaceCoverSheetFlyInContext)initWithProgress:(double)a3 velocity:(double)a4 supportsBlur:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = SBWorkspaceCoverSheetFlyInContext;
  result = [(SBWorkspaceCoverSheetFlyInContext *)&v9 init];
  if (result)
  {
    result->_progress = a3;
    result->_velocity = a4;
    result->_supportsBlur = a5;
  }

  return result;
}

@end