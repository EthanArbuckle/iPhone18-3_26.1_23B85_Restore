@interface PXOverlayBadgeUIViewTile
- (PXOverlayBadgeUIViewTile)initWithFrame:(CGRect)frame;
- (void)_setBadgeOptions:(unint64_t)options;
- (void)_updateBadgeViewIfNeeded;
- (void)becomeReusable;
- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareForReuse;
- (void)setBadgeManager:(id)manager;
- (void)setImageRequester:(id)requester;
@end

@implementation PXOverlayBadgeUIViewTile

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (PXImageRequesterObserverContext_155372 == context)
  {
    changeCopy = change;
    observableCopy = observable;
    imageRequester = [(PXOverlayBadgeUIViewTile *)self imageRequester];

    if (imageRequester == observableCopy)
    {

      if ((changeCopy & 0x15) != 0)
      {

        [(PXOverlayBadgeUIViewTile *)self _invalidateBadgeView];
      }
    }

    else
    {
    }
  }
}

- (void)_updateBadgeViewIfNeeded
{
  if (self->_needsUpdateFlags.badgeView)
  {
    v17 = v2;
    v18 = v3;
    _badgeView = [(PXOverlayBadgeUIViewTile *)self _badgeView];
    imageRequester = [(PXOverlayBadgeUIViewTile *)self imageRequester];
    v7 = imageRequester;
    if (imageRequester)
    {
      image = [imageRequester image];
      if (image)
      {
        isInCloud = 0;
      }

      else
      {
        isInCloud = [v7 isInCloud];
      }

      asset = [v7 asset];
      v15 = 0u;
      v16 = 0u;
      badgeManager = [(PXOverlayBadgeUIViewTile *)self badgeManager];
      v12 = badgeManager;
      if (badgeManager)
      {
        [badgeManager badgeInfoForAsset:asset inCollection:0 options:0];
      }

      else
      {
        v15 = 0u;
        v16 = 0u;
      }

      if (([(PXOverlayBadgeUIViewTile *)self _badgeOptions]& 2) == 0)
      {
        *&v15 = 0;
      }

      if (isInCloud)
      {
        *&v15 = v15 | 0x20;
      }

      v13 = v15;
      v14 = v16;
      [_badgeView setBadgeInfo:&v13];
      v13 = v15;
      v14 = v16;
      PXAssetBadgeInfoIsNull();
    }

    [_badgeView setHidden:1];
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PXOverlayBadgeUIViewTile;
  [(PXOverlayBadgeUIViewTile *)&v15 layoutSubviews];
  [(PXOverlayBadgeUIViewTile *)self _updateBadgeViewIfNeeded];
  [(PXOverlayBadgeUIViewTile *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [PXUIAssetBadgeView preferredHeightForStyle:1];
  v12 = v11;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  v13 = CGRectGetMaxY(v16) - v12;
  _badgeView = [(PXOverlayBadgeUIViewTile *)self _badgeView];
  [_badgeView setFrame:{v4, v13, v8, v12}];
}

- (void)_setBadgeOptions:(unint64_t)options
{
  if (self->__badgeOptions != options)
  {
    self->__badgeOptions = options;
    [(PXOverlayBadgeUIViewTile *)self _invalidateBadgeView];
  }
}

- (void)setBadgeManager:(id)manager
{
  managerCopy = manager;
  if (self->_badgeManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_badgeManager, manager);
    [(PXOverlayBadgeUIViewTile *)self _invalidateBadgeView];
    managerCopy = v6;
  }
}

- (void)setImageRequester:(id)requester
{
  requesterCopy = requester;
  imageRequester = self->_imageRequester;
  if (imageRequester != requesterCopy)
  {
    v7 = requesterCopy;
    [(PXImageRequester *)imageRequester unregisterChangeObserver:self context:PXImageRequesterObserverContext_155372];
    objc_storeStrong(&self->_imageRequester, requester);
    [(PXImageRequester *)v7 registerChangeObserver:self context:PXImageRequesterObserverContext_155372];
    [(PXOverlayBadgeUIViewTile *)self _invalidateBadgeView];
    requesterCopy = v7;
  }
}

- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data
{
  if (data)
  {
    badgeOptions = [data badgeOptions];
  }

  else
  {
    badgeOptions = 0;
  }

  [(PXOverlayBadgeUIViewTile *)self _setBadgeOptions:badgeOptions];

  [(PXOverlayBadgeUIViewTile *)self layoutIfNeeded];
}

- (void)prepareForReuse
{
  view = [(PXOverlayBadgeUIViewTile *)self view];
  [view setHidden:0];
}

- (void)becomeReusable
{
  view = [(PXOverlayBadgeUIViewTile *)self view];
  [view setHidden:1];

  [(PXOverlayBadgeUIViewTile *)self setImageRequester:0];
}

- (PXOverlayBadgeUIViewTile)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = PXOverlayBadgeUIViewTile;
  v3 = [(PXOverlayBadgeUIViewTile *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXOverlayBadgeUIViewTile *)v3 setUserInteractionEnabled:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PXOverlayBadgeUIViewTile *)v4 setBackgroundColor:clearColor];

    v6 = [PXUIAssetBadgeView alloc];
    [(PXOverlayBadgeUIViewTile *)v4 bounds];
    v7 = [(PXUIAssetBadgeView *)v6 initWithFrame:?];
    badgeView = v4->__badgeView;
    v4->__badgeView = v7;

    [(PXUIAssetBadgeView *)v4->__badgeView setStyle:1];
    [(PXUIAssetBadgeView *)v4->__badgeView setHidden:1];
    [(PXOverlayBadgeUIViewTile *)v4 addSubview:v4->__badgeView];
    layer = [(PXOverlayBadgeUIViewTile *)v4 layer];
    [layer setAllowsGroupOpacity:0];
  }

  return v4;
}

@end