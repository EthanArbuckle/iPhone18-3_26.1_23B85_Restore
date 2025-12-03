@interface SBSystemApertureWindow
- (void)setAutorotates:(BOOL)autorotates forceUpdateInterfaceOrientation:(BOOL)orientation;
@end

@implementation SBSystemApertureWindow

- (void)setAutorotates:(BOOL)autorotates forceUpdateInterfaceOrientation:(BOOL)orientation
{
  v4.receiver = self;
  v4.super_class = SBSystemApertureWindow;
  [(SBSystemApertureWindow *)&v4 setAutorotates:0 forceUpdateInterfaceOrientation:orientation];
}

@end