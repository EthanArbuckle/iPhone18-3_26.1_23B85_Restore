@interface PUScrubberTilingLayoutInvalidationContext
- (void)invalidateExpandedItem;
@end

@implementation PUScrubberTilingLayoutInvalidationContext

- (void)invalidateExpandedItem
{
  [(PUTilingLayoutInvalidationContext *)self invalidateAllTilesWithKind:@"PUTileKindItemContent"];
  [(PUTilingLayoutInvalidationContext *)self invalidateContentBounds];
  self->_invalidatedExpandedItem = 1;
}

@end