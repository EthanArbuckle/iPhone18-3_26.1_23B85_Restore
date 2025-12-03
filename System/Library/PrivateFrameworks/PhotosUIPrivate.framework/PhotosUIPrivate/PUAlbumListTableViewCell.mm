@interface PUAlbumListTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PUAlbumListTableViewCellDelegate)stateChangeDelegate;
- (void)willTransitionToState:(unint64_t)state;
@end

@implementation PUAlbumListTableViewCell

- (PUAlbumListTableViewCellDelegate)stateChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stateChangeDelegate);

  return WeakRetained;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v5 = [(PUAlbumListTableViewCell *)self viewWithTag:236897];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)willTransitionToState:(unint64_t)state
{
  v6.receiver = self;
  v6.super_class = PUAlbumListTableViewCell;
  [(PUAlbumListTableViewCell *)&v6 willTransitionToState:?];
  stateChangeDelegate = [(PUAlbumListTableViewCell *)self stateChangeDelegate];
  [stateChangeDelegate albumListTableViewCell:self willChangeState:state];
}

@end