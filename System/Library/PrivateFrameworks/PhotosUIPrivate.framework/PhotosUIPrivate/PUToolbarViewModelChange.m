@interface PUToolbarViewModelChange
- (BOOL)hasChanges;
@end

@implementation PUToolbarViewModelChange

- (BOOL)hasChanges
{
  v4.receiver = self;
  v4.super_class = PUToolbarViewModelChange;
  return [(PUViewModelChange *)&v4 hasChanges]|| [(PUToolbarViewModelChange *)self toolbarItemsChanged]|| [(PUToolbarViewModelChange *)self accessoryViewChanged]|| [(PUToolbarViewModelChange *)self accessoryViewTopOutsetChanged]|| [(PUToolbarViewModelChange *)self maximumHeightChanged];
}

@end