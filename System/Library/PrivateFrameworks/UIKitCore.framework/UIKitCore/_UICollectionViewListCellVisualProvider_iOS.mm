@interface _UICollectionViewListCellVisualProvider_iOS
- (void)configureFocusedFloatingContentView:(id)view;
@end

@implementation _UICollectionViewListCellVisualProvider_iOS

- (void)configureFocusedFloatingContentView:(id)view
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewListCellVisualProvider.m" lineNumber:62 description:@"Floating Content View is not supported on iOS"];
}

@end