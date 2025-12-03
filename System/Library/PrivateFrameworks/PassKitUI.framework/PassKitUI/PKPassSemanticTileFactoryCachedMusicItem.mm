@interface PKPassSemanticTileFactoryCachedMusicItem
- (BOOL)beginContentAccess;
- (PKPassSemanticTileFactoryCachedMusicItem)initWithMusicLookupItem:(id)item;
- (void)discardContentIfPossible;
@end

@implementation PKPassSemanticTileFactoryCachedMusicItem

- (PKPassSemanticTileFactoryCachedMusicItem)initWithMusicLookupItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v10.receiver = self;
    v10.super_class = PKPassSemanticTileFactoryCachedMusicItem;
    v6 = [(PKPassSemanticTileFactoryCachedMusicItem *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_musicItem, item);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)beginContentAccess
{
  v2 = self->_musicItem != 0;
  self->_contentBeingAcccessed = v2;
  return v2;
}

- (void)discardContentIfPossible
{
  musicItem = self->_musicItem;
  self->_musicItem = 0;
}

@end