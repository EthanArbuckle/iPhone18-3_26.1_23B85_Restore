@interface VTUIProximityView
- (BOOL)_shouldUsePhoneLandscapeLayoutForSize:(CGSize)size;
- (void)updateContainerConstraintsForOrientationChangeToSize:(CGSize)size;
@end

@implementation VTUIProximityView

- (BOOL)_shouldUsePhoneLandscapeLayoutForSize:(CGSize)size
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  windows = [mEMORY[0x277D75128] windows];
  firstObject = [windows firstObject];
  windowScene = [firstObject windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  v8 = +[MGWrapper sharedMGWrapper];
  LOBYTE(windows) = [v8 isDeviceIPad];

  return ((interfaceOrientation - 3) < 2) & (windows ^ 1);
}

- (void)updateContainerConstraintsForOrientationChangeToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = MEMORY[0x277CCAAD0];
  viewConstraints = [(VTUIProximityView *)self viewConstraints];
  [v6 deactivateConstraints:viewConstraints];

  [(VTUIProximityView *)self _setupConstraintsToSize:width, height];

  [(VTUIProximityView *)self layoutIfNeeded];
}

@end