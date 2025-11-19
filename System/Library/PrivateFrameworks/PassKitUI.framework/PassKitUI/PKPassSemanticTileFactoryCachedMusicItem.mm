@interface PKPassSemanticTileFactoryCachedMusicItem
- (BOOL)beginContentAccess;
- (PKPassSemanticTileFactoryCachedMusicItem)initWithMusicLookupItem:(id)a3;
- (void)discardContentIfPossible;
@end

@implementation PKPassSemanticTileFactoryCachedMusicItem

- (PKPassSemanticTileFactoryCachedMusicItem)initWithMusicLookupItem:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PKPassSemanticTileFactoryCachedMusicItem;
    v6 = [(PKPassSemanticTileFactoryCachedMusicItem *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_musicItem, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
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