@interface PUImportOneUpScrubberCell
+ (id)emptyThumbnailBackgroundColor;
- (PUImportOneUpScrubberCell)initWithCoder:(id)coder;
- (PUImportOneUpScrubberCell)initWithFrame:(CGRect)frame;
- (PUImportOneUpScrubberCellDisplayDelegate)displayDelegate;
- (void)_commonPUImportOneUpScrubberCellInitialization;
- (void)_createSpinnerIfNecessary;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareForReuse;
- (void)refreshThumbnail;
- (void)setImportItem:(id)item;
- (void)updateBadgeUIIfNeeded;
- (void)updateToThumbnail:(id)thumbnail;
@end

@implementation PUImportOneUpScrubberCell

- (PUImportOneUpScrubberCellDisplayDelegate)displayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_displayDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUImportOneUpScrubberCell.m" lineNumber:203 description:@"Expecting main thread only for cell signals"];
  }

  if (PXImportItemViewModelOneUpScrubberCellContext == context)
  {
    if ((changeCopy & 4) != 0)
    {
      importItem = [(PUImportOneUpScrubberCell *)self importItem];
      -[PUImportOneUpScrubberCell setSelectable:](self, "setSelectable:", [importItem isSelectable]);
    }

    v10 = (changeCopy & 5) != 0;
    if ((changeCopy & 8) != 0)
    {
      importItem2 = [(PUImportOneUpScrubberCell *)self importItem];
      isDuplicate = [importItem2 isDuplicate];

      if ((changeCopy & 5) != 0)
      {
        v10 = 1;
      }

      else
      {
        v10 = isDuplicate;
      }
    }

    if ((changeCopy & 0x12) != 0 || v10)
    {
      importItem3 = [(PUImportOneUpScrubberCell *)self importItem];
      -[PUImportOneUpScrubberCell setBadgeType:](self, "setBadgeType:", [importItem3 badgeType]);

      [(PUImportOneUpScrubberCell *)self updateBadgeUIIfNeeded];
    }
  }
}

- (void)_createSpinnerIfNecessary
{
  if (!self->_spinner)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v3;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIActivityIndicatorView *)self->_spinner setColor:whiteColor];

    [(UIActivityIndicatorView *)self->_spinner sizeToFit];
    v6 = self->_spinner;
    _checkmarkImageView = [(PUReviewScrubberCell *)self _checkmarkImageView];
    [(PUImportOneUpScrubberCell *)self insertSubview:v6 aboveSubview:_checkmarkImageView];

    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&v10.a = *MEMORY[0x1E695EFD0];
    *&v10.c = v8;
    *&v10.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGAffineTransformScale(&v11, &v10, 0.5, 0.5);
    v9 = self->_spinner;
    v10 = v11;
    [(UIActivityIndicatorView *)v9 setTransform:&v10];
  }
}

- (void)updateToThumbnail:(id)thumbnail
{
  [(PUReviewScrubberCell *)self setImage:?];
  if (thumbnail)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    +[PUImportOneUpScrubberCell emptyThumbnailBackgroundColor];
  }
  v6 = ;
  _thumbnailImageView = [(PUReviewScrubberCell *)self _thumbnailImageView];
  [_thumbnailImageView setBackgroundColor:v6];
}

- (void)refreshThumbnail
{
  displayDelegate = [(PUImportOneUpScrubberCell *)self displayDelegate];

  if (!displayDelegate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUImportOneUpScrubberCell.m" lineNumber:159 description:@"Missing thumbnail provider"];
  }

  importItem = [(PUImportOneUpScrubberCell *)self importItem];
  objc_initWeak(&location, self);
  displayDelegate2 = [(PUImportOneUpScrubberCell *)self displayDelegate];
  importItem2 = [(PUImportOneUpScrubberCell *)self importItem];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__PUImportOneUpScrubberCell_refreshThumbnail__block_invoke;
  v10[3] = &unk_1E7B77848;
  objc_copyWeak(&v12, &location);
  v8 = importItem;
  v11 = v8;
  -[PUImportOneUpScrubberCell setThumbnailRequestID:](self, "setThumbnailRequestID:", [displayDelegate2 importOneUpScrubberCell:self requestedThumbnailForImportItem:importItem2 completion:v10]);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __45__PUImportOneUpScrubberCell_refreshThumbnail__block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    v10 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained importItem];
    v8 = *(a1 + 32);

    if (v7 == v8)
    {
      if (a3)
      {

        v10 = 0;
      }

      v9 = objc_loadWeakRetained((a1 + 40));
      [v9 updateToThumbnail:v10];
    }

    v5 = v10;
  }
}

- (void)updateBadgeUIIfNeeded
{
  if (![(PUImportOneUpScrubberCell *)self needsBadgeUpdate])
  {
    return;
  }

  [(PUImportOneUpScrubberCell *)self setNeedsBadgeUpdate:0];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  badgeType = self->_badgeType;
  v5 = 1;
  v10 = systemBlueColor;
  if (badgeType <= 2)
  {
    if (badgeType)
    {
      v5 = badgeType != 2;
    }

    else
    {
      v5 = 0;
    }

    if (badgeType)
    {
      v6 = badgeType == 2;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_15;
  }

  if (badgeType == 3)
  {
    systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
  }

  else
  {
    if (badgeType != 4)
    {
      v6 = 0;
      goto LABEL_15;
    }

    systemGreenColor = [MEMORY[0x1E69DC888] systemRedColor];
  }

  v8 = systemGreenColor;

  v6 = 0;
  v10 = v8;
LABEL_15:
  _checkmarkImageView = [(PUReviewScrubberCell *)self _checkmarkImageView];
  [_checkmarkImageView setTintColor:v10];

  [(PUReviewScrubberCell *)self setFavorite:v5];
  if (v6)
  {
    [(PUImportOneUpScrubberCell *)self _createSpinnerIfNecessary];
    [(UIActivityIndicatorView *)self->_spinner startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  }

  [(PUImportOneUpScrubberCell *)self setNeedsLayout];
}

- (void)setImportItem:(id)item
{
  itemCopy = item;
  if (self->_importItem != itemCopy)
  {
    v7 = itemCopy;
    objc_storeStrong(&self->_importItem, item);
    importItem = [(PUImportOneUpScrubberCell *)self importItem];
    -[PUImportOneUpScrubberCell setSelectable:](self, "setSelectable:", [importItem isSelectable]);

    [(PUImportOneUpScrubberCell *)self setBadgeType:[(PXImportItemViewModel *)v7 badgeType]];
    [(PUImportOneUpScrubberCell *)self updateBadgeUIIfNeeded];
    [(PUImportOneUpScrubberCell *)self updateToThumbnail:0];
    [(PXImportItemViewModel *)self->_importItem registerChangeObserver:self context:PXImportItemViewModelOneUpScrubberCellContext];
    itemCopy = v7;
  }
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PUImportOneUpScrubberCell;
  [(PUImportOneUpScrubberCell *)&v5 prepareForReuse];
  [(PXImportItemViewModel *)self->_importItem unregisterChangeObserver:self context:PXImportItemViewModelOneUpScrubberCellContext];
  if ([(PUImportOneUpScrubberCell *)self thumbnailRequestID])
  {
    displayDelegate = [(PUImportOneUpScrubberCell *)self displayDelegate];
    [displayDelegate importOneUpScrubberCell:self didRequestCancellationOfThumbnailRequestWithID:{-[PUImportOneUpScrubberCell thumbnailRequestID](self, "thumbnailRequestID")}];

    [(PUImportOneUpScrubberCell *)self setThumbnailRequestID:0];
  }

  importItem = self->_importItem;
  self->_importItem = 0;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PUImportOneUpScrubberCell;
  [(PUReviewScrubberCell *)&v8 layoutSubviews];
  [(PUImportOneUpScrubberCell *)self bounds];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  MidX = CGRectGetMidX(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  [(UIActivityIndicatorView *)self->_spinner setCenter:MidX, CGRectGetMidY(v10)];
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  if ([(PUImportOneUpScrubberCell *)self thumbnailRequestID])
  {
    displayDelegate = [(PUImportOneUpScrubberCell *)self displayDelegate];
    [displayDelegate importOneUpScrubberCell:self didRequestCancellationOfThumbnailRequestWithID:{-[PUImportOneUpScrubberCell thumbnailRequestID](self, "thumbnailRequestID")}];

    [(PUImportOneUpScrubberCell *)self setThumbnailRequestID:0];
  }

  v4.receiver = self;
  v4.super_class = PUImportOneUpScrubberCell;
  [(PUImportOneUpScrubberCell *)&v4 dealloc];
}

- (PUImportOneUpScrubberCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PUImportOneUpScrubberCell;
  v3 = [(PUReviewScrubberCell *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PUImportOneUpScrubberCell *)v3 _commonPUImportOneUpScrubberCellInitialization];
    v5 = v4;
  }

  return v4;
}

- (PUImportOneUpScrubberCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PUImportOneUpScrubberCell;
  v3 = [(PUReviewScrubberCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUImportOneUpScrubberCell *)v3 _commonPUImportOneUpScrubberCellInitialization];
    v5 = v4;
  }

  return v4;
}

- (void)_commonPUImportOneUpScrubberCellInitialization
{
  [(PUReviewScrubberCell *)self setSuggested:0];
  [(PUReviewScrubberCell *)self setWantsSmallSuggestionIndicators:0];

  [(PUImportOneUpScrubberCell *)self setThumbnailRequestID:0];
}

+ (id)emptyThumbnailBackgroundColor
{
  if (emptyThumbnailBackgroundColor_onceToken != -1)
  {
    dispatch_once(&emptyThumbnailBackgroundColor_onceToken, &__block_literal_global_30774);
  }

  v3 = emptyThumbnailBackgroundColor_emptyBackgroundColor;

  return v3;
}

uint64_t __58__PUImportOneUpScrubberCell_emptyThumbnailBackgroundColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  v1 = emptyThumbnailBackgroundColor_emptyBackgroundColor;
  emptyThumbnailBackgroundColor_emptyBackgroundColor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end