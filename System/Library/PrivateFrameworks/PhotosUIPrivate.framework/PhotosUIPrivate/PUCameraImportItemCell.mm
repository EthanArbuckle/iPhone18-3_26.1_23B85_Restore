@interface PUCameraImportItemCell
- (BOOL)shouldBeginGestureForPoint:(CGPoint)point;
- (CGRect)_filledPhotosRectForImage:(id)image;
- (CGRect)scaledDisplayRect;
- (PUCameraImportItemCell)initWithFrame:(CGRect)frame;
- (PUCameraImportItemCellDelegate)delegate;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (void)_enterOneUpAction;
- (void)_fetchThumbnailReady;
- (void)_selectAction;
- (void)accessibilityElementDidBecomeFocused;
- (void)cancelThumbnailLoadIfActive;
- (void)clearImage;
- (void)dealloc;
- (void)handleTapGesture:(id)gesture;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareForReuse;
- (void)refreshThumbnail;
- (void)setCachedImage:(id)image isPlaceholder:(BOOL)placeholder;
- (void)setPhotoImage:(id)image withSize:(CGSize)size fillMode:(int64_t)mode videoDuration:(double)duration isPlaceholder:(BOOL)placeholder;
- (void)setRepresentedImportItem:(id)item;
- (void)showActivityBadge:(BOOL)badge;
- (void)updateBadgeUIIfNeeded;
- (void)updateDebugLabel:(id)label;
@end

@implementation PUCameraImportItemCell

- (CGRect)scaledDisplayRect
{
  x = self->_scaledDisplayRect.origin.x;
  y = self->_scaledDisplayRect.origin.y;
  width = self->_scaledDisplayRect.size.width;
  height = self->_scaledDisplayRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PUCameraImportItemCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateDebugLabel:(id)label
{
  labelCopy = label;
  v10 = labelCopy;
  if (labelCopy)
  {
    v5 = labelCopy;
    if (!self->_debugTextField)
    {
      v6 = objc_alloc(MEMORY[0x1E69DD0B0]);
      v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      debugTextField = self->_debugTextField;
      self->_debugTextField = v7;

      [(UITextField *)self->_debugTextField setTextAlignment:1];
      [(UITextField *)self->_debugTextField setAdjustsFontSizeToFitWidth:1];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(UITextField *)self->_debugTextField setBackgroundColor:whiteColor];

      [(UITextField *)self->_debugTextField setEnabled:0];
      [(PUCameraImportItemCell *)self addSubview:self->_debugTextField];
      [(PUCameraImportItemCell *)self setNeedsLayout];
      labelCopy = v10;
      v5 = v10;
    }
  }

  else
  {
    v5 = &stru_1F2AC6818;
  }

  [(UITextField *)self->_debugTextField setHidden:[(__CFString *)labelCopy length]== 0];
  [(UITextField *)self->_debugTextField setText:v5];
}

- (id)accessibilityCustomActions
{
  v22[2] = *MEMORY[0x1E69E9840];
  representedImportItem = [(PUCameraImportItemCell *)self representedImportItem];
  [representedImportItem isSelected];
  v4 = PLLocalizedFrameworkString();

  v5 = [objc_alloc(MEMORY[0x1E69DC5E8]) initWithName:v4 target:self selector:sel__selectAction];
  representedImportItem2 = [(PUCameraImportItemCell *)self representedImportItem];
  isMediaAsset = [representedImportItem2 isMediaAsset];

  if (isMediaAsset)
  {
    v8 = PLLocalizedFrameworkString();

    v9 = [objc_alloc(MEMORY[0x1E69DC5E8]) initWithName:v8 target:self selector:sel__enterOneUpAction];
    representedImportItem3 = [(PUCameraImportItemCell *)self representedImportItem];
    isSelectable = [representedImportItem3 isSelectable];

    if (isSelectable)
    {
      v22[0] = v9;
      v22[1] = v5;
      v12 = MEMORY[0x1E695DEC8];
      v13 = v22;
      v14 = 2;
    }

    else
    {
      v21 = v9;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v21;
      v14 = 1;
    }

    v18 = [v12 arrayWithObjects:v13 count:v14];

    v4 = v8;
  }

  else
  {
    representedImportItem4 = [(PUCameraImportItemCell *)self representedImportItem];
    kind = [representedImportItem4 kind];
    v17 = [kind isEqualToString:*MEMORY[0x1E69C4080]];

    if (v17)
    {
      v20 = v5;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (void)accessibilityElementDidBecomeFocused
{
  superview = [(PUCameraImportItemCell *)self superview];
  v3 = [superview indexPathForCell:self];
  [superview scrollToItemAtIndexPath:v3 atScrollPosition:18 animated:0];

  UIAccessibilityPostNotification(*MEMORY[0x1E69DD8E8], self);
}

- (id)accessibilityLabel
{
  representedImportItem = [(PUCameraImportItemCell *)self representedImportItem];
  accessibilityLabel = [representedImportItem accessibilityLabel];

  return accessibilityLabel;
}

- (void)_selectAction
{
  delegate = [(PUCameraImportItemCell *)self delegate];
  [delegate handleTouchEvent:0 forCell:self];
}

- (void)_enterOneUpAction
{
  delegate = [(PUCameraImportItemCell *)self delegate];
  [delegate handleTouchEvent:1 forCell:self];
}

- (void)handleTapGesture:(id)gesture
{
  p_badgeTapZone = &self->_badgeTapZone;
  [gesture locationInView:self];
  v10.x = v5;
  v10.y = v6;
  if (CGRectContainsPoint(*p_badgeTapZone, v10) && [(PUCameraImportItemCell *)self selectable])
  {
    representedImportItem = [(PUCameraImportItemCell *)self representedImportItem];
    state = [representedImportItem state];

    if (state != 1)
    {

      [(PUCameraImportItemCell *)self _selectAction];
    }
  }

  else
  {

    [(PUCameraImportItemCell *)self _enterOneUpAction];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v22 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCameraImportItemCell.m" lineNumber:330 description:@"Expecting main thread only for cell signals"];
  }

  v9 = _importGridLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315394;
    v19 = "[PUCameraImportItemCell observable:didChange:context:]";
    v20 = 2048;
    changeCopy = change;
    _os_log_debug_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEBUG, "%s: message %llu", &v18, 0x16u);
  }

  if (PXImportItemViewModelContext == context)
  {
    if ((change & 4) != 0)
    {
      representedImportItem = [(PUCameraImportItemCell *)self representedImportItem];
      -[PUCameraImportItemCell setSelectable:](self, "setSelectable:", [representedImportItem isSelectable]);
    }

    v11 = (change & 5) != 0;
    if ((change & 8) != 0)
    {
      representedImportItem2 = [(PUCameraImportItemCell *)self representedImportItem];
      isDuplicate = [representedImportItem2 isDuplicate];

      if ((change & 5) != 0)
      {
        v11 = 1;
      }

      else
      {
        v11 = isDuplicate;
      }
    }

    v14 = (change & 0x12) != 0 || v11;
    if ((change & 0x80) != 0)
    {
      v15 = _importGridLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315138;
        v19 = "[PUCameraImportItemCell observable:didChange:context:]";
        _os_log_debug_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEBUG, "%s: Cell has been told to remove itself from the grid", &v18, 0xCu);
      }

      [(PUCameraImportItemCell *)self cancelThumbnailLoadIfActive];
    }

    if (v14)
    {
      representedImportItem3 = [(PUCameraImportItemCell *)self representedImportItem];
      -[PUCameraImportItemCell setBadgeType:](self, "setBadgeType:", [representedImportItem3 badgeType]);

      [(PUCameraImportItemCell *)self updateBadgeUIIfNeeded];
    }
  }
}

- (CGRect)_filledPhotosRectForImage:(id)image
{
  [image size];
  v5 = v4;
  v7 = v6;
  [(PUCameraImportItemCell *)self bounds];
  if (v5 >= v7)
  {
    v12 = (v9 - v7 * (*&PUCameraImportItemBadgeSize_1 * 3.0 / v7)) * 0.5;
    v11 = 0.0;
    v10 = v8;
    v9 = v7 * (*&PUCameraImportItemBadgeSize_1 * 3.0 / v7);
  }

  else
  {
    v10 = v5 * (*&PUCameraImportItemBadgeSize_0 * 3.0 / v5);
    v11 = (v8 - v10) * 0.5;
    v12 = 0.0;
  }

  v13 = v10;
  result.size.height = v9;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)clearImage
{
  contentHelper = [(PUPhotoView *)self->_photoView contentHelper];
  [contentHelper setFillMode:0];
  [contentHelper setPhotoSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [contentHelper setPhotoImage:0];
  v4 = *(MEMORY[0x1E69C4840] + 16);
  v5[0] = *MEMORY[0x1E69C4840];
  v5[1] = v4;
  [contentHelper setBadgeInfo:v5];
  [contentHelper setBadgeStyle:0];
  [(PUCameraImportItemCell *)self setNeedsLayout];
}

- (void)cancelThumbnailLoadIfActive
{
  if ([(PUCameraImportItemCell *)self thumbnailRequestID])
  {
    delegate = [(PUCameraImportItemCell *)self delegate];
    [delegate importCell:self didRequestCancellationOfThumbnailRequestWithID:{-[PUCameraImportItemCell thumbnailRequestID](self, "thumbnailRequestID")}];
  }

  [(PUCameraImportItemCell *)self setThumbnailRequestID:0];
}

- (void)setPhotoImage:(id)image withSize:(CGSize)size fillMode:(int64_t)mode videoDuration:(double)duration isPlaceholder:(BOOL)placeholder
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  v14 = MEMORY[0x1E69C4840];
  v15 = *MEMORY[0x1E69C4840];
  if ([MEMORY[0x1E69C3610] hasPanoramaImageDimensions:{width, height}])
  {
    if (mode != 1)
    {
      [(PUCameraImportItemCell *)self _filledPhotosRectForImage:imageCopy];
      [(PUCameraImportItemCell *)self setScaledDisplayRect:?];
    }

    v15 |= 2uLL;
    mode = 1;
  }

  contentHelper = [(PUPhotoView *)self->_photoView contentHelper];
  [contentHelper setFillMode:mode];
  [contentHelper setPhotoSize:{width, height}];
  [contentHelper setPhotoImage:imageCopy];
  v18[0] = v15;
  *&v18[1] = duration;
  v19 = *(v14 + 16);
  [contentHelper setBadgeInfo:v18];
  [contentHelper setBadgeStyle:7];
  if (placeholder)
  {
    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [contentHelper setBackgroundColor:quaternarySystemFillColor];
  }

  else
  {
    [contentHelper setBackgroundColor:0];
  }

  [(PUCameraImportItemCell *)self setNeedsLayout];
  self->_needsThumbnailRefresh = 0;
}

- (void)setCachedImage:(id)image isPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  imageCopy = image;
  representedImportItem = [(PUCameraImportItemCell *)self representedImportItem];
  [representedImportItem duration];

  delegate = [(PUCameraImportItemCell *)self delegate];
  v8 = [delegate contentFillModeForImportCell:self];

  [imageCopy size];
  [PUCameraImportItemCell setPhotoImage:"setPhotoImage:withSize:fillMode:videoDuration:isPlaceholder:" withSize:imageCopy fillMode:v8 videoDuration:placeholderCopy isPlaceholder:?];
}

- (void)_fetchThumbnailReady
{
  location[3] = *MEMORY[0x1E69E9840];
  v4 = _importGridLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(location[0]) = 136315138;
    *(location + 4) = "[PUCameraImportItemCell _fetchThumbnailReady]";
    _os_log_debug_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEBUG, "%s", location, 0xCu);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCameraImportItemCell.m" lineNumber:225 description:@"Expecting main thread only"];
  }

  delegate = [(PUCameraImportItemCell *)self delegate];
  v6 = delegate == 0;

  if (v6)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUCameraImportItemCell.m" lineNumber:226 description:@"Missing thumbnail provider"];
  }

  representedImportItem = [(PUCameraImportItemCell *)self representedImportItem];
  isDeleted = [representedImportItem isDeleted];

  if ((isDeleted & 1) == 0)
  {
    representedImportItem2 = [(PUCameraImportItemCell *)self representedImportItem];
    objc_initWeak(location, self);
    delegate2 = [(PUCameraImportItemCell *)self delegate];
    representedImportItem3 = [(PUCameraImportItemCell *)self representedImportItem];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __46__PUCameraImportItemCell__fetchThumbnailReady__block_invoke;
    v19 = &unk_1E7B760B0;
    objc_copyWeak(&v21, location);
    v12 = representedImportItem2;
    v20 = v12;
    v13 = [delegate2 importCell:self requestImageForImportItem:representedImportItem3 ofSize:0 completion:&v16];
    [(PUCameraImportItemCell *)self setThumbnailRequestID:v13, v16, v17, v18, v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }
}

void __46__PUCameraImportItemCell__fetchThumbnailReady__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (v6)
  {
    v11 = v6;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [WeakRetained representedImportItem];
    v9 = *(a1 + 32);

    v6 = v11;
    if (v8 == v9)
    {
      v10 = objc_loadWeakRetained((a1 + 40));
      [v10 setCachedImage:v11 isPlaceholder:a4];

      v6 = v11;
    }
  }
}

- (void)refreshThumbnail
{
  v11 = *MEMORY[0x1E69E9840];
  representedImportItem = [(PUCameraImportItemCell *)self representedImportItem];
  isMediaAsset = [representedImportItem isMediaAsset];

  if (isMediaAsset)
  {
    v5 = _importGridLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      representedImportItem2 = [(PUCameraImportItemCell *)self representedImportItem];
      v7 = 136315394;
      v8 = "[PUCameraImportItemCell refreshThumbnail]";
      v9 = 2112;
      v10 = representedImportItem2;
      _os_log_debug_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "%s: public interfacing callig for thumbnail: %@", &v7, 0x16u);
    }

    [(PUCameraImportItemCell *)self _fetchThumbnailReady];
  }
}

- (void)updateBadgeUIIfNeeded
{
  if ([(PUCameraImportItemCell *)self needsBadgeUpdate])
  {
    [(PUCameraImportItemCell *)self setNeedsBadgeUpdate:0];
    badgeType = [(PUCameraImportItemCell *)self badgeType];
    v4 = 1.0;
    if ([(PUCameraImportItemCell *)self badgeType]== 1)
    {
      +[PUCameraImportItemCell alphaForSelectedCells];
      v4 = v5;
    }

    badgeView = [(PUCameraImportItemCell *)self badgeView];
    [badgeView removeFromSuperview];

    [(PUCameraImportItemCell *)self setBadgeView:0];
    [(PUCameraImportItemCell *)self badgeType];
    [(PUCameraImportItemCell *)self selectable];
    v10 = PXImportBadgeViewForTypeAndSelectable();
    if (v10)
    {
      badgeContainerView = [(PUCameraImportItemCell *)self badgeContainerView];
      [badgeContainerView addSubview:v10];

      [(PUCameraImportItemCell *)self setBadgeView:v10];
    }

    [(PUCameraImportItemCell *)self showActivityBadge:badgeType == 2];
    photoView = [(PUCameraImportItemCell *)self photoView];
    contentHelper = [photoView contentHelper];
    [contentHelper setContentAlpha:v4];

    [(PUCameraImportItemCell *)self setNeedsLayout];
  }
}

- (void)setRepresentedImportItem:(id)item
{
  v16 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v6 = _importGridLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "[PUCameraImportItemCell setRepresentedImportItem:]";
    v14 = 2112;
    v15 = itemCopy;
    _os_log_debug_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEBUG, "%s: %@", &v12, 0x16u);
  }

  representedImportItem = self->_representedImportItem;
  if (representedImportItem != itemCopy)
  {
    [(PXImportItemViewModel *)representedImportItem unregisterChangeObserver:self context:PXImportItemViewModelContext];
    objc_storeStrong(&self->_representedImportItem, item);
    [(PXImportItemViewModel *)self->_representedImportItem registerChangeObserver:self context:PXImportItemViewModelContext];
    [(PUCameraImportItemCell *)self setSelectable:[(PXImportItemViewModel *)itemCopy isSelectable]];
    [(PUCameraImportItemCell *)self setBadgeType:[(PXImportItemViewModel *)itemCopy badgeType]];
    self->_needsThumbnailRefresh = 1;
    v8 = self->_representedImportItem;
    if (v8)
    {
      if (([(PXImportItemViewModel *)v8 isMediaAsset]& 1) == 0)
      {
        kind = [(PXImportItemViewModel *)self->_representedImportItem kind];
        v10 = [kind isEqualToString:*MEMORY[0x1E69C4080]];

        if (v10)
        {
          v11 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:@"ImportEllipsis"];
          [v11 size];
          [PUCameraImportItemCell setPhotoImage:"setPhotoImage:withSize:fillMode:videoDuration:isPlaceholder:" withSize:v11 fillMode:0 videoDuration:0 isPlaceholder:?];
        }

        else
        {
          [(PUCameraImportItemCell *)self clearImage];
        }

        self->_needsThumbnailRefresh = 0;
      }
    }
  }
}

- (void)prepareForReuse
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _importGridLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    representedImportItem = [(PUCameraImportItemCell *)self representedImportItem];
    *buf = 136315394;
    v9 = "[PUCameraImportItemCell prepareForReuse]";
    v10 = 2112;
    v11 = representedImportItem;
    _os_log_debug_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEBUG, "%s: clearing item from cell: %@", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = PUCameraImportItemCell;
  [(PUCameraImportItemCell *)&v7 prepareForReuse];
  [(PUCameraImportItemCell *)self setBadgeType:0];
  badgeView = [(PUCameraImportItemCell *)self badgeView];
  [badgeView removeFromSuperview];

  [(PUCameraImportItemCell *)self setBadgeView:0];
  representedImportItem2 = [(PUCameraImportItemCell *)self representedImportItem];
  [representedImportItem2 unregisterChangeObserver:self context:PXImportItemViewModelContext];

  [(PUCameraImportItemCell *)self cancelThumbnailLoadIfActive];
  [(PUCameraImportItemCell *)self setRepresentedImportItem:0];
  [(PUCameraImportItemCell *)self setScaledDisplayRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (void)showActivityBadge:(BOOL)badge
{
  spinner = self->_spinner;
  if (badge)
  {
    if (!spinner)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v6 = self->_spinner;
      self->_spinner = v5;

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(UIActivityIndicatorView *)self->_spinner setColor:whiteColor];

      v8 = self->_spinner;
      badgeContainerView = [(PUCameraImportItemCell *)self badgeContainerView];
      [(PUCameraImportItemCell *)self insertSubview:v8 aboveSubview:badgeContainerView];

      spinner = self->_spinner;
    }

    [(UIActivityIndicatorView *)spinner startAnimating];
  }

  else
  {

    [(UIActivityIndicatorView *)spinner stopAnimating];
  }
}

- (BOOL)shouldBeginGestureForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(PUCameraImportItemCell *)self bounds];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (void)layoutSubviews
{
  v44.receiver = self;
  v44.super_class = PUCameraImportItemCell;
  [(PUCameraImportItemCell *)&v44 layoutSubviews];
  [(PUCameraImportItemCell *)self updateBadgeUIIfNeeded];
  [(PUCameraImportItemCell *)self scaledDisplayRect];
  v3 = NSIsEmptyRect(v45);
  photoView = self->_photoView;
  if (v3)
  {
    [(PUCameraImportItemCell *)self bounds];
  }

  else
  {
    [(PUCameraImportItemCell *)self scaledDisplayRect];
  }

  [(PUPhotoView *)photoView setFrame:?];
  [(PUCameraImportItemCell *)self scaledDisplayRect];
  if (NSIsEmptyRect(v46))
  {
    contentHelper = [(PUPhotoView *)self->_photoView contentHelper];
    [contentHelper imageContentFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    [(PUCameraImportItemCell *)self scaledDisplayRect];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v40 = v13;
  v41 = v11;
  v42 = v9;
  v43 = v7;
  v47.origin.x = v7;
  v47.origin.y = v9;
  v47.size.width = v11;
  v47.size.height = v13;
  MaxX = CGRectGetMaxX(v47);
  v48.origin.x = v7;
  v48.origin.y = v9;
  v48.size.width = v11;
  v48.size.height = v13;
  MaxY = CGRectGetMaxY(v48);
  v20 = *&PUCameraImportItemBadgeSize_0;
  v21 = MaxX - *&PUCameraImportItemBadgeSize_0 + -6.0;
  v22 = *&PUCameraImportItemBadgeSize_1;
  v23 = MaxY - *&PUCameraImportItemBadgeSize_1 + -6.0;
  badgeContainerView = [(PUCameraImportItemCell *)self badgeContainerView];
  [badgeContainerView setFrame:{v21, v23, v20, v22}];

  badgeView = [(PUCameraImportItemCell *)self badgeView];
  [badgeView frame];
  v27 = v26;
  v29 = v28;

  v30 = *MEMORY[0x1E695EFF8];
  v31 = *(MEMORY[0x1E695EFF8] + 8);
  badgeView2 = [(PUCameraImportItemCell *)self badgeView];
  [badgeView2 setFrame:{v30, v31, v27, v29}];

  v49.origin.x = v21;
  v49.origin.y = v23;
  v49.size.width = v20;
  v49.size.height = v22;
  MidX = CGRectGetMidX(v49);
  v50.origin.x = v21;
  v50.origin.y = v23;
  v50.size.width = v20;
  v50.size.height = v22;
  MidY = CGRectGetMidY(v50);
  [(UIActivityIndicatorView *)self->_spinner sizeToFit];
  [(UIActivityIndicatorView *)self->_spinner setCenter:MidX, MidY];
  spinner = self->_spinner;
  [(UIActivityIndicatorView *)spinner frame];
  v52 = CGRectIntegral(v51);
  [(UIActivityIndicatorView *)spinner setFrame:v52.origin.x, v52.origin.y, v52.size.width, v52.size.height];
  v53.origin.x = v43;
  v53.origin.y = v42;
  v53.size.width = v41;
  v53.size.height = v40;
  v36 = CGRectGetMidX(v53);
  v54.origin.x = v43;
  v54.origin.y = v42;
  v54.size.width = v41;
  v54.size.height = v40;
  v37 = CGRectGetMidY(v54);
  v55.origin.x = v43;
  v55.origin.y = v42;
  v55.size.width = v41;
  v55.size.height = v40;
  v38 = CGRectGetWidth(v55) * 0.5;
  v56.origin.x = v43;
  v56.origin.y = v42;
  v56.size.width = v41;
  v56.size.height = v40;
  Height = CGRectGetHeight(v56);
  self->_badgeTapZone.origin.x = v36;
  self->_badgeTapZone.origin.y = v37;
  self->_badgeTapZone.size.width = v38;
  self->_badgeTapZone.size.height = Height * 0.5;
  if (self->_debugTextField)
  {
    [(PUCameraImportItemCell *)self frame];
    [(UITextField *)self->_debugTextField setFrame:0.0, 0.0, CGRectGetWidth(v57), 18.0];
  }
}

- (void)dealloc
{
  [(PUCameraImportItemCell *)self cancelThumbnailLoadIfActive];
  v3.receiver = self;
  v3.super_class = PUCameraImportItemCell;
  [(PUCameraImportItemCell *)&v3 dealloc];
}

- (PUCameraImportItemCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PUCameraImportItemCell;
  v3 = [(PUCameraImportItemCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (initWithFrame__onceToken != -1)
    {
      dispatch_once(&initWithFrame__onceToken, &__block_literal_global_17576);
    }

    v4 = [PUPhotoView alloc];
    [(PUCameraImportItemCell *)v3 bounds];
    v5 = [(PUPhotoView *)v4 initWithFrame:?];
    photoView = v3->_photoView;
    v3->_photoView = v5;

    [(PUCameraImportItemCell *)v3 addSubview:v3->_photoView];
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    badgeContainerView = v3->_badgeContainerView;
    v3->_badgeContainerView = v7;

    [(PUCameraImportItemCell *)v3 insertSubview:v3->_badgeContainerView aboveSubview:v3->_photoView];
    v3->_thumbnailRequestID = 0;
  }

  return v3;
}

void __40__PUCameraImportItemCell_initWithFrame___block_invoke()
{
  v2 = PXImportBadgeViewForTypeAndSelectable();
  [v2 frame];
  PUCameraImportItemBadgeSize_0 = v0;
  PUCameraImportItemBadgeSize_1 = v1;
}

@end