@interface VTUIProximityView
- (BOOL)_shouldUsePhoneLandscapeLayoutForSize:(CGSize)a3;
- (void)updateContainerConstraintsForOrientationChangeToSize:(CGSize)a3;
@end

@implementation VTUIProximityView

- (BOOL)_shouldUsePhoneLandscapeLayoutForSize:(CGSize)a3
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 windows];
  v5 = [v4 firstObject];
  v6 = [v5 windowScene];
  v7 = [v6 interfaceOrientation];

  v8 = +[MGWrapper sharedMGWrapper];
  LOBYTE(v4) = [v8 isDeviceIPad];

  return ((v7 - 3) < 2) & (v4 ^ 1);
}

- (void)updateContainerConstraintsForOrientationChangeToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = MEMORY[0x277CCAAD0];
  v7 = [(VTUIProximityView *)self viewConstraints];
  [v6 deactivateConstraints:v7];

  [(VTUIProximityView *)self _setupConstraintsToSize:width, height];

  [(VTUIProximityView *)self layoutIfNeeded];
}

@end