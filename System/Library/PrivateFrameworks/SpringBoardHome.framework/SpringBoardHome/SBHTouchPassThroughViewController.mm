@interface SBHTouchPassThroughViewController
- (void)loadView;
@end

@implementation SBHTouchPassThroughViewController

- (void)loadView
{
  v3 = [SBHTouchPassThroughView alloc];
  v4 = [(SBHTouchPassThroughView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(SBHTouchPassThroughView *)v4 setOpaque:0];
  [(SBHTouchPassThroughViewController *)self setView:v4];
}

@end