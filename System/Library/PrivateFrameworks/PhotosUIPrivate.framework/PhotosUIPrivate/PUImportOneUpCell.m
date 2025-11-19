@interface PUImportOneUpCell
- (PUImportOneUpCell)initWithCoder:(id)a3;
- (PUImportOneUpCell)initWithFrame:(CGRect)a3;
- (PUImportOneUpCellDisplayDelegate)displayDelegate;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)prepareForReuse;
- (void)refreshThumbnail;
- (void)setImage:(id)a3 isPlaceholder:(BOOL)a4;
- (void)setImportItem:(id)a3;
- (void)updateBadge;
- (void)updateDebugLabel:(id)a3;
- (void)updatePhotoViewForImportItem:(id)a3;
- (void)updateSelectedVisualAppearance;
@end

@implementation PUImportOneUpCell

- (PUImportOneUpCellDisplayDelegate)displayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_displayDelegate);

  return WeakRetained;
}

- (void)updateDebugLabel:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4)
  {
    v5 = v4;
    if (!self->_debugTextField)
    {
      v6 = objc_alloc(MEMORY[0x1E69DD0B0]);
      v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      debugTextField = self->_debugTextField;
      self->_debugTextField = v7;

      [(UITextField *)self->_debugTextField setTextAlignment:1];
      [(UITextField *)self->_debugTextField setAdjustsFontSizeToFitWidth:1];
      v9 = [MEMORY[0x1E69DC888] whiteColor];
      [(UITextField *)self->_debugTextField setBackgroundColor:v9];

      [(UITextField *)self->_debugTextField setEnabled:0];
      [(PUImportOneUpCell *)self addSubview:self->_debugTextField];
      [(PUImportOneUpCell *)self setNeedsLayout];
      v4 = v10;
      v5 = v10;
    }
  }

  else
  {
    v5 = &stru_1F2AC6818;
  }

  [(UITextField *)self->_debugTextField setHidden:[(__CFString *)v4 length]== 0];
  [(UITextField *)self->_debugTextField setText:v5];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUImportOneUpCell.m" lineNumber:211 description:@"Expecting main thread only for cell signals"];
  }

  if ([(PUImportOneUpCell *)self contextForObservingViewModelChanges]== a5)
  {
    if (a4)
    {
      v9 = [(PUImportOneUpCell *)self importItem];
      -[PUImportOneUpCell setSelected:](self, "setSelected:", [v9 isSelected]);

      LOBYTE(v10) = 1;
    }

    else
    {
      v10 = (a4 >> 2) & 1;
    }

    v11 = a4 & 1;
    if ((a4 & 8) != 0)
    {
      v12 = [(PUImportOneUpCell *)self importItem];
      v13 = [v12 isDuplicate];

      LOBYTE(v10) = v10 | v13;
    }

    if ((a4 & 2) != 0)
    {
      v14 = [(PUImportOneUpCell *)self importItem];
      -[PUImportOneUpCell setSelected:](self, "setSelected:", [v14 isSelected]);

      LOBYTE(v10) = 1;
      v11 = 1;
    }

    v15 = ((a4 & 0x10) != 0) | v10;
    if ((a4 & 0x80) != 0 && [(PUImportOneUpCell *)self thumbnailRequestID])
    {
      v16 = [(PUImportOneUpCell *)self displayDelegate];
      [v16 importOneUpCell:self didRequestCancellationOfThumbnailRequestWithID:{-[PUImportOneUpCell thumbnailRequestID](self, "thumbnailRequestID")}];

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
  v3 = [(PUImportOneUpCell *)self importItem];
  v4 = [v3 isDeleted];

  if ((v4 & 1) == 0)
  {
    v6 = [(PUImportOneUpCell *)self displayDelegate];
    v5 = [(PUImportOneUpCell *)self importItem];
    [v6 importOneUpCell:self requestedBadgeUpdateForImportItem:v5];
  }
}

- (void)setImage:(id)a3 isPlaceholder:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(PUPhotosSharingGridCell *)self photoView];
  v7 = [v6 contentHelper];

  [v10 size];
  [v7 setPhotoSize:?];
  [v7 setFillMode:!v4];
  if (v4)
  {
    v8 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    [v7 setBackgroundColor:0];
  }

  [v7 setPhotoImage:v10];
  v9 = [(PUImportOneUpCell *)self importItem];
  [(PUImportOneUpCell *)self updatePhotoViewForImportItem:v9];
}

- (void)refreshThumbnail
{
  v4 = [(PUImportOneUpCell *)self importItem];
  v5 = [v4 isDeleted];

  if ((v5 & 1) == 0)
  {
    v6 = [(PUImportOneUpCell *)self displayDelegate];

    if (!v6)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PUImportOneUpCell.m" lineNumber:162 description:@"Missing thumbnail provider"];
    }

    v7 = [(PUImportOneUpCell *)self importItem];
    objc_initWeak(&location, self);
    v8 = [(PUImportOneUpCell *)self displayDelegate];
    v9 = [(PUImportOneUpCell *)self importItem];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__PUImportOneUpCell_refreshThumbnail__block_invoke;
    v12[3] = &unk_1E7B77848;
    objc_copyWeak(&v14, &location);
    v10 = v7;
    v13 = v10;
    -[PUImportOneUpCell setThumbnailRequestID:](self, "setThumbnailRequestID:", [v8 importOneUpCell:self requestedThumbnailForImportItem:v9 completion:v12]);

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
  v3 = [(PUImportOneUpCell *)self importItem];
  v4 = [v3 isSelected];

  v5 = 1.0;
  if (v4)
  {
    +[PUImportOneUpCell alphaForSelectedCells];
    v5 = v6;
  }

  v8 = [(PUPhotosSharingGridCell *)self photoView];
  v7 = [v8 contentHelper];
  [v7 setContentAlpha:v5];
}

- (void)updatePhotoViewForImportItem:(id)a3
{
  v4 = [a3 importAsset];
  if ([v4 isHDR])
  {
    if ([v4 isImage])
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

  v6 = [v4 isBurst];
  v7 = [v4 isSDOF];
  v8 = 0;
  if ([v4 isMovie])
  {
    v9 = [v4 durationTimeInterval];
    [v9 doubleValue];
    v8 = v10;
  }

  v11 = *MEMORY[0x1E695F060];
  v12 = *(MEMORY[0x1E695F060] + 8);
  v13 = [(PUPhotosSharingGridCell *)self photoView];
  v14 = [v13 contentHelper];
  v15 = [v14 photoImage];

  v16 = v12;
  v17 = v11;
  if (v15)
  {
    v18 = [(PUPhotosSharingGridCell *)self photoView];
    v19 = [v18 contentHelper];
    v20 = [v19 photoImage];
    [v20 size];
    v17 = v21;
    v16 = v22;
  }

  if (v17 == v11 && v16 == v12)
  {
    v25 = [(PUImportOneUpCell *)self importItem];
    v24 = [v25 isPanoramicImage];
  }

  else
  {
    v24 = [MEMORY[0x1E69C3610] hasPanoramaImageDimensions:{v17, v16}];
  }

  v26 = v5 | 8;
  if (!v6)
  {
    v26 = v5;
  }

  if (v7)
  {
    v26 |= 0x10uLL;
  }

  if (v24)
  {
    v27 = v26 | 2;
  }

  else
  {
    v27 = v26;
  }

  v28 = [(PUPhotosSharingGridCell *)self photoView];
  v29 = [v28 contentHelper];
  v32[0] = v27;
  v32[1] = v8;
  v32[2] = 0;
  v32[3] = 0;
  [v29 setBadgeInfo:v32];

  v30 = [(PUPhotosSharingGridCell *)self photoView];
  v31 = [v30 contentHelper];
  [v31 setBadgeStyle:7];
}

- (void)setImportItem:(id)a3
{
  v5 = a3;
  importItem = self->_importItem;
  if (importItem != v5)
  {
    v9 = v5;
    [(PXImportItemViewModel *)importItem unregisterChangeObserver:self context:[(PUImportOneUpCell *)self contextForObservingViewModelChanges]];
    objc_storeStrong(&self->_importItem, a3);
    v7 = [(PUImportOneUpCell *)self importItem];
    -[PUImportOneUpCell setSelected:](self, "setSelected:", [v7 isSelected]);

    v8 = [(PUImportOneUpCell *)self importItem];
    [(PUImportOneUpCell *)self updatePhotoViewForImportItem:v8];

    [(PUImportOneUpCell *)self updateSelectedVisualAppearance];
    [(PXImportItemViewModel *)self->_importItem registerChangeObserver:self context:[(PUImportOneUpCell *)self contextForObservingViewModelChanges]];
    v5 = v9;
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
    v4 = [(PUImportOneUpCell *)self displayDelegate];
    [v4 importOneUpCell:self didRequestCancellationOfThumbnailRequestWithID:{-[PUImportOneUpCell thumbnailRequestID](self, "thumbnailRequestID")}];

    [(PUImportOneUpCell *)self setThumbnailRequestID:0];
  }
}

- (void)dealloc
{
  importItem = self->_importItem;
  self->_importItem = 0;

  if ([(PUImportOneUpCell *)self thumbnailRequestID])
  {
    v4 = [(PUImportOneUpCell *)self displayDelegate];
    [v4 importOneUpCell:self didRequestCancellationOfThumbnailRequestWithID:{-[PUImportOneUpCell thumbnailRequestID](self, "thumbnailRequestID")}];

    [(PUImportOneUpCell *)self setThumbnailRequestID:0];
  }

  v5.receiver = self;
  v5.super_class = PUImportOneUpCell;
  [(PUImportOneUpCell *)&v5 dealloc];
}

- (PUImportOneUpCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = PUImportOneUpCell;
  v3 = [(PUImportOneUpCell *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PUImportOneUpCell *)v3 _commonPUImportOneUpCellInitialization];
    v5 = v4;
  }

  return v4;
}

- (PUImportOneUpCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PUImportOneUpCell;
  v3 = [(PUPhotosSharingGridCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUImportOneUpCell *)v3 _commonPUImportOneUpCellInitialization];
    v5 = v4;
  }

  return v4;
}

@end