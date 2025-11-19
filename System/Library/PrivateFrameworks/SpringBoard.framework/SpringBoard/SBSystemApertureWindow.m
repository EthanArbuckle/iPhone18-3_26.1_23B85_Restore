@interface SBSystemApertureWindow
- (void)setAutorotates:(BOOL)a3 forceUpdateInterfaceOrientation:(BOOL)a4;
@end

@implementation SBSystemApertureWindow

- (void)setAutorotates:(BOOL)a3 forceUpdateInterfaceOrientation:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = SBSystemApertureWindow;
  [(SBSystemApertureWindow *)&v4 setAutorotates:0 forceUpdateInterfaceOrientation:a4];
}

@end