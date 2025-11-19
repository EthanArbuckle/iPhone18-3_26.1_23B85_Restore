@interface PUBrowsingAnimatedImagePlayerChange
- (BOOL)hasChanges;
@end

@implementation PUBrowsingAnimatedImagePlayerChange

- (BOOL)hasChanges
{
  v4.receiver = self;
  v4.super_class = PUBrowsingAnimatedImagePlayerChange;
  return [(PUViewModelChange *)&v4 hasChanges]|| [(PUBrowsingAnimatedImagePlayerChange *)self animatedImageDidChange]|| [(PUBrowsingAnimatedImagePlayerChange *)self animatedImageLoadingAllowedDidChange];
}

@end