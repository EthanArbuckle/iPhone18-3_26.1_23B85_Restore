@interface PUPlayheadTileViewController
- (id)loadView;
@end

@implementation PUPlayheadTileViewController

- (id)loadView
{
  v2 = [PUPlayheadView alloc];
  v3 = [(PUPlayheadView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v3;
}

@end