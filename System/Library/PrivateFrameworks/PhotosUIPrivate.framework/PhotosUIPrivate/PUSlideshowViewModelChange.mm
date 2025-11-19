@interface PUSlideshowViewModelChange
- (BOOL)hasChanges;
@end

@implementation PUSlideshowViewModelChange

- (BOOL)hasChanges
{
  v4.receiver = self;
  v4.super_class = PUSlideshowViewModelChange;
  return [(PUViewModelChange *)&v4 hasChanges]|| [(PUSlideshowViewModelChange *)self currentStateDidChange]|| [(PUSlideshowViewModelChange *)self wantsChromeVisibleDidChange];
}

@end