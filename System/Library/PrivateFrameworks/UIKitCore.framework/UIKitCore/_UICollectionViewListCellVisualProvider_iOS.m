@interface _UICollectionViewListCellVisualProvider_iOS
- (void)configureFocusedFloatingContentView:(id)a3;
@end

@implementation _UICollectionViewListCellVisualProvider_iOS

- (void)configureFocusedFloatingContentView:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListCellVisualProvider.m" lineNumber:62 description:@"Floating Content View is not supported on iOS"];
}

@end