@interface PUVideoPlaceholderTileViewController
- (id)loadView;
@end

@implementation PUVideoPlaceholderTileViewController

- (id)loadView
{
  v2 = [[PHPlaceholderView alloc] initWithType:0];

  return v2;
}

@end