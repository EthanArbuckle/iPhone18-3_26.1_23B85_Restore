@interface SBFTouchPassThroughViewController
- (void)loadView;
@end

@implementation SBFTouchPassThroughViewController

- (void)loadView
{
  v3 = [SBFTouchPassThroughView alloc];
  v4 = [(SBFTouchPassThroughView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(SBFTouchPassThroughViewController *)self configureTouchPassThroughView:v4];
  [(SBFTouchPassThroughViewController *)self setView:v4];
}

@end