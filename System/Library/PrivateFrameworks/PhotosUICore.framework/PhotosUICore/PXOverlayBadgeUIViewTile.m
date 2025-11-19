@interface PXOverlayBadgeUIViewTile
- (PXOverlayBadgeUIViewTile)initWithFrame:(CGRect)a3;
- (void)_setBadgeOptions:(unint64_t)a3;
- (void)_updateBadgeViewIfNeeded;
- (void)becomeReusable;
- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)prepareForReuse;
- (void)setBadgeManager:(id)a3;
- (void)setImageRequester:(id)a3;
@end

@implementation PXOverlayBadgeUIViewTile

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (PXImageRequesterObserverContext_155372 == a5)
  {
    v5 = a4;
    v7 = a3;
    v8 = [(PXOverlayBadgeUIViewTile *)self imageRequester];

    if (v8 == v7)
    {

      if ((v5 & 0x15) != 0)
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
    v5 = [(PXOverlayBadgeUIViewTile *)self _badgeView];
    v6 = [(PXOverlayBadgeUIViewTile *)self imageRequester];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 image];
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = [v7 isInCloud];
      }

      v10 = [v7 asset];
      v15 = 0u;
      v16 = 0u;
      v11 = [(PXOverlayBadgeUIViewTile *)self badgeManager];
      v12 = v11;
      if (v11)
      {
        [v11 badgeInfoForAsset:v10 inCollection:0 options:0];
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

      if (v9)
      {
        *&v15 = v15 | 0x20;
      }

      v13 = v15;
      v14 = v16;
      [v5 setBadgeInfo:&v13];
      v13 = v15;
      v14 = v16;
      PXAssetBadgeInfoIsNull();
    }

    [v5 setHidden:1];
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
  v14 = [(PXOverlayBadgeUIViewTile *)self _badgeView];
  [v14 setFrame:{v4, v13, v8, v12}];
}

- (void)_setBadgeOptions:(unint64_t)a3
{
  if (self->__badgeOptions != a3)
  {
    self->__badgeOptions = a3;
    [(PXOverlayBadgeUIViewTile *)self _invalidateBadgeView];
  }
}

- (void)setBadgeManager:(id)a3
{
  v5 = a3;
  if (self->_badgeManager != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_badgeManager, a3);
    [(PXOverlayBadgeUIViewTile *)self _invalidateBadgeView];
    v5 = v6;
  }
}

- (void)setImageRequester:(id)a3
{
  v5 = a3;
  imageRequester = self->_imageRequester;
  if (imageRequester != v5)
  {
    v7 = v5;
    [(PXImageRequester *)imageRequester unregisterChangeObserver:self context:PXImageRequesterObserverContext_155372];
    objc_storeStrong(&self->_imageRequester, a3);
    [(PXImageRequester *)v7 registerChangeObserver:self context:PXImageRequesterObserverContext_155372];
    [(PXOverlayBadgeUIViewTile *)self _invalidateBadgeView];
    v5 = v7;
  }
}

- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4
{
  if (a4)
  {
    v5 = [a4 badgeOptions];
  }

  else
  {
    v5 = 0;
  }

  [(PXOverlayBadgeUIViewTile *)self _setBadgeOptions:v5];

  [(PXOverlayBadgeUIViewTile *)self layoutIfNeeded];
}

- (void)prepareForReuse
{
  v2 = [(PXOverlayBadgeUIViewTile *)self view];
  [v2 setHidden:0];
}

- (void)becomeReusable
{
  v3 = [(PXOverlayBadgeUIViewTile *)self view];
  [v3 setHidden:1];

  [(PXOverlayBadgeUIViewTile *)self setImageRequester:0];
}

- (PXOverlayBadgeUIViewTile)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = PXOverlayBadgeUIViewTile;
  v3 = [(PXOverlayBadgeUIViewTile *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXOverlayBadgeUIViewTile *)v3 setUserInteractionEnabled:0];
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(PXOverlayBadgeUIViewTile *)v4 setBackgroundColor:v5];

    v6 = [PXUIAssetBadgeView alloc];
    [(PXOverlayBadgeUIViewTile *)v4 bounds];
    v7 = [(PXUIAssetBadgeView *)v6 initWithFrame:?];
    badgeView = v4->__badgeView;
    v4->__badgeView = v7;

    [(PXUIAssetBadgeView *)v4->__badgeView setStyle:1];
    [(PXUIAssetBadgeView *)v4->__badgeView setHidden:1];
    [(PXOverlayBadgeUIViewTile *)v4 addSubview:v4->__badgeView];
    v9 = [(PXOverlayBadgeUIViewTile *)v4 layer];
    [v9 setAllowsGroupOpacity:0];
  }

  return v4;
}

@end