@interface SBWorkspaceCoverSheetFlyInContext
- (SBWorkspaceCoverSheetFlyInContext)initWithProgress:(double)progress velocity:(double)velocity supportsBlur:(BOOL)blur;
@end

@implementation SBWorkspaceCoverSheetFlyInContext

- (SBWorkspaceCoverSheetFlyInContext)initWithProgress:(double)progress velocity:(double)velocity supportsBlur:(BOOL)blur
{
  v9.receiver = self;
  v9.super_class = SBWorkspaceCoverSheetFlyInContext;
  result = [(SBWorkspaceCoverSheetFlyInContext *)&v9 init];
  if (result)
  {
    result->_progress = progress;
    result->_velocity = velocity;
    result->_supportsBlur = blur;
  }

  return result;
}

@end