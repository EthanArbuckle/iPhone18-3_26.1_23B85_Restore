@interface PUImportOneUpCell
- (PUImportOneUpCell)initWithCoder:(id)coder;
- (PUImportOneUpCell)initWithFrame:(CGRect)frame;
- (PUImportOneUpCellDisplayDelegate)displayDelegate;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareForReuse;
- (void)refreshThumbnail;
- (void)setImage:(id)image isPlaceholder:(BOOL)placeholder;
- (void)setImportItem:(id)item;
- (void)updateBadge;
- (void)updateDebugLabel:(id)label;
- (void)updatePhotoViewForImportItem:(id)item;
- (void)updateSelectedVisualAppearance;
@end

@implementation PUImportOneUpCell

- (PUImportOneUpCellDisplayDelegate)displayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_displayDelegate);

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
      [(PUImportOneUpCell *)self addSubview:self->_debugTextField];
      [(PUImportOneUpCell *)self setNeedsLayout];
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUImportOneUpCell.m" lineNumber:211 description:@"Expecting main thread only for cell signals"];
  }

  if ([(PUImportOneUpCell *)self contextForObservingViewModelChanges]== context)
  {
    if (change)
    {
      importItem = [(PUImportOneUpCell *)self importItem];
      -[PUImportOneUpCell setSelected:](self, "setSelected:", [importItem isSelected]);

      LOBYTE(v10) = 1;
    }

    else
    {
      v10 = (change >> 2) & 1;
    }

    v11 = change & 1;
    if ((change & 8) != 0)
    {
      importItem2 = [(PUImportOneUpCell *)self importItem];
      isDuplicate = [importItem2 isDuplicate];

      LOBYTE(v10) = v10 | isDuplicate;
    }

    if ((change & 2) != 0)
    {
      importItem3 = [(PUImportOneUpCell *)self importItem];
      -[PUImportOneUpCell setSelected:](self, "setSelected:", [importItem3 isSelected]);

      LOBYTE(v10) = 1;
      v11 = 1;
    }

    v15 = ((change & 0x10) != 0) | v10;
    if ((change & 0x80) != 0 && [(PUImportOneUpCell *)self thumbnailRequestID])
    {
      displayDelegate = [(PUImportOneUpCell *)self displayDelegate];
      [displayDelegate importOneUpCell:self didRequestCancellationOfThumbnailRequestWithID:{-[PUImportOneUpCell thumbnailRequestID](self, "thumbnailRequestID")}];

      [(PUImportOneUpCell *)self setThumbnailRequestID:0];
    }

    if (v15)
    {
      [(PUImportOneUpCell *)self updateBadge];
    }

    if (v11)
    {

      [(PUImportOneUpCell *)self updateSelectedVisualAppearance];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUImportOneUpCell;
  [(PUPhotosSharingGridCell *)&v3 layoutSubviews];
  if (self->_debugTextField)
  {
    [(PUImportOneUpCell *)self bounds];
    [(UITextField *)self->_debugTextField setFrame:0.0, 0.0, CGRectGetWidth(v4), 18.0];
  }
}

- (void)updateBadge
{
  importItem = [(PUImportOneUpCell *)self importItem];
  isDeleted = [importItem isDeleted];

  if ((isDeleted & 1) == 0)
  {
    displayDelegate = [(PUImportOneUpCell *)self displayDelegate];
    importItem2 = [(PUImportOneUpCell *)self importItem];
    [displayDelegate importOneUpCell:self requestedBadgeUpdateForImportItem:importItem2];
  }
}

- (void)setImage:(id)image isPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  imageCopy = image;
  photoView = [(PUPhotosSharingGridCell *)self photoView];
  contentHelper = [photoView contentHelper];

  [imageCopy size];
  [contentHelper setPhotoSize:?];
  [contentHelper setFillMode:!placeholderCopy];
  if (placeholderCopy)
  {
    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [contentHelper setBackgroundColor:quaternarySystemFillColor];
  }

  else
  {
    [contentHelper setBackgroundColor:0];
  }

  [contentHelper setPhotoImage:imageCopy];
  importItem = [(PUImportOneUpCell *)self importItem];
  [(PUImportOneUpCell *)self updatePhotoViewForImportItem:importItem];
}

- (void)refreshThumbnail
{
  importItem = [(PUImportOneUpCell *)self importItem];
  isDeleted = [importItem isDeleted];

  if ((isDeleted & 1) == 0)
  {
    displayDelegate = [(PUImportOneUpCell *)self displayDelegate];

    if (!displayDelegate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUImportOneUpCell.m" lineNumber:162 description:@"Missing thumbnail provider"];
    }

    importItem2 = [(PUImportOneUpCell *)self importItem];
    objc_initWeak(&location, self);
    displayDelegate2 = [(PUImportOneUpCell *)self displayDelegate];
    importItem3 = [(PUImportOneUpCell *)self importItem];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__PUImportOneUpCell_refreshThumbnail__block_invoke;
    v12[3] = &unk_1E7B77848;
    objc_copyWeak(&v14, &location);
    v10 = importItem2;
    v13 = v10;
    -[PUImportOneUpCell setThumbnailRequestID:](self, "setThumbnailRequestID:", [displayDelegate2 importOneUpCell:self requestedThumbnailForImportItem:importItem3 completion:v12]);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __37__PUImportOneUpCell_refreshThumbnail__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v10 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained importItem];
    v8 = *(a1 + 32);

    v5 = v10;
    if (v7 == v8)
    {
      v9 = objc_loadWeakRetained((a1 + 40));
      [v9 setImage:v10 isPlaceholder:a3];

      v5 = v10;
    }
  }
}

- (void)updateSelectedVisualAppearance
{
  importItem = [(PUImportOneUpCell *)self importItem];
  isSelected = [importItem isSelected];

  v5 = 1.0;
  if (isSelected)
  {
    +[PUImportOneUpCell alphaForSelectedCells];
    v5 = v6;
  }

  photoView = [(PUPhotosSharingGridCell *)self photoView];
  contentHelper = [photoView contentHelper];
  [contentHelper setContentAlpha:v5];
}

- (void)updatePhotoViewForImportItem:(id)item
{
  importAsset = [item importAsset];
  if ([importAsset isHDR])
  {
    if ([importAsset isImage])
    {
      v5 = 4;
    }

    else
    {
      v5 = 1024;
    }
  }

  else
  {
    v5 = 0;
  }

  isBurst = [importAsset isBurst];
  isSDOF = [importAsset isSDOF];
  v8 = 0;
  if ([importAsset isMovie])
  {
    durationTimeInterval = [importAsset durationTimeInterval];
    [durationTimeInterval doubleValue];
    v8 = v10;
  }

  v11 = *MEMORY[0x1E695F060];
  v12 = *(MEMORY[0x1E695F060] + 8);
  photoView = [(PUPhotosSharingGridCell *)self photoView];
  contentHelper = [photoView contentHelper];
  photoImage = [contentHelper photoImage];

  v16 = v12;
  v17 = v11;
  if (photoImage)
  {
    photoView2 = [(PUPhotosSharingGridCell *)self photoView];
    contentHelper2 = [photoView2 contentHelper];
    photoImage2 = [contentHelper2 photoImage];
    [photoImage2 size];
    v17 = v21;
    v16 = v22;
  }

  if (v17 == v11 && v16 == v12)
  {
    importItem = [(PUImportOneUpCell *)self importItem];
    isPanoramicImage = [importItem isPanoramicImage];
  }

  else
  {
    isPanoramicImage = [MEMORY[0x1E69C3610] hasPanoramaImageDimensions:{v17, v16}];
  }

  v26 = v5 | 8;
  if (!isBurst)
  {
    v26 = v5;
  }

  if (isSDOF)
  {
    v26 |= 0x10uLL;
  }

  if (isPanoramicImage)
  {
    v27 = v26 | 2;
  }

  else
  {
    v27 = v26;
  }

  photoView3 = [(PUPhotosSharingGridCell *)self photoView];
  contentHelper3 = [photoView3 contentHelper];
  v32[0] = v27;
  v32[1] = v8;
  v32[2] = 0;
  v32[3] = 0;
  [contentHelper3 setBadgeInfo:v32];

  photoView4 = [(PUPhotosSharingGridCell *)self photoView];
  contentHelper4 = [photoView4 contentHelper];
  [contentHelper4 setBadgeStyle:7];
}

- (void)setImportItem:(id)item
{
  itemCopy = item;
  importItem = self->_importItem;
  if (importItem != itemCopy)
  {
    v9 = itemCopy;
    [(PXImportItemViewModel *)importItem unregisterChangeObserver:self context:[(PUImportOneUpCell *)self contextForObservingViewModelChanges]];
    objc_storeStrong(&self->_importItem, item);
    importItem = [(PUImportOneUpCell *)self importItem];
    -[PUImportOneUpCell setSelected:](self, "setSelected:", [importItem isSelected]);

    importItem2 = [(PUImportOneUpCell *)self importItem];
    [(PUImportOneUpCell *)self updatePhotoViewForImportItem:importItem2];

    [(PUImportOneUpCell *)self updateSelectedVisualAppearance];
    [(PXImportItemViewModel *)self->_importItem registerChangeObserver:self context:[(PUImportOneUpCell *)self contextForObservingViewModelChanges]];
    itemCopy = v9;
  }
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PUImportOneUpCell;
  [(PUPhotosSharingGridCell *)&v5 prepareForReuse];
  [(PXImportItemViewModel *)self->_importItem unregisterChangeObserver:self context:[(PUImportOneUpCell *)self contextForObservingViewModelChanges]];
  importItem = self->_importItem;
  self->_importItem = 0;

  if ([(PUImportOneUpCell *)self thumbnailRequestID])
  {
    displayDelegate = [(PUImportOneUpCell *)self displayDelegate];
    [displayDelegate importOneUpCell:self didRequestCancellationOfThumbnailRequestWithID:{-[PUImportOneUpCell thumbnailRequestID](self, "thumbnailRequestID")}];

    [(PUImportOneUpCell *)self setThumbnailRequestID:0];
  }
}

- (void)dealloc
{
  importItem = self->_importItem;
  self->_importItem = 0;

  if ([(PUImportOneUpCell *)self thumbnailRequestID])
  {
    displayDelegate = [(PUImportOneUpCell *)self displayDelegate];
    [displayDelegate importOneUpCell:self didRequestCancellationOfThumbnailRequestWithID:{-[PUImportOneUpCell thumbnailRequestID](self, "thumbnailRequestID")}];

    [(PUImportOneUpCell *)self setThumbnailRequestID:0];
  }

  v5.receiver = self;
  v5.super_class = PUImportOneUpCell;
  [(PUImportOneUpCell *)&v5 dealloc];
}

- (PUImportOneUpCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PUImportOneUpCell;
  v3 = [(PUImportOneUpCell *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PUImportOneUpCell *)v3 _commonPUImportOneUpCellInitialization];
    v5 = v4;
  }

  return v4;
}

- (PUImportOneUpCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PUImportOneUpCell;
  v3 = [(PUPhotosSharingGridCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUImportOneUpCell *)v3 _commonPUImportOneUpCellInitialization];
    v5 = v4;
  }

  return v4;
}

@end