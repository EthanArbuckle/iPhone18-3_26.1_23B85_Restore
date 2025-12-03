@interface PXCMMImageView
- (PXCMMImageView)initWithFrame:(CGRect)frame;
- (void)_updateContentsRect;
- (void)_updateHighlighted;
- (void)_updateImage;
- (void)_updateImageRequestHelper;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setFrame:(CGRect)frame;
- (void)setViewModel:(id)model;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXCMMImageView

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXCMMImageViewModelObservationContext == context)
  {
    if ((changeCopy & 3) != 0)
    {
      [(PXCMMImageView *)self _updateImageRequestHelper];
    }

    if ((changeCopy & 4) != 0)
    {
      [(PXCMMImageView *)self _updateHighlighted];
    }
  }

  else
  {
    if (PXImageRequesterHelperObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMImageView.m" lineNumber:147 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((changeCopy & 0x20) != 0)
    {
      [(PXCMMImageView *)self _updateImage];
    }

    if ((changeCopy & 8) != 0)
    {
      [(PXCMMImageView *)self _updateContentsRect];
    }
  }
}

- (void)_updateContentsRect
{
  [(PXImageRequesterHelper *)self->_imageRequesterHelper contentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  layer = [(UIImageView *)self->_imageView layer];
  [layer setContentsRect:{v4, v6, v8, v10}];
}

- (void)_updateImage
{
  image = [(PXImageRequesterHelper *)self->_imageRequesterHelper image];
  [(UIImageView *)self->_imageView setImage:image];
}

- (void)_updateHighlighted
{
  v3 = [(PXCMMImageViewModel *)self->_viewModel isHighlighted]^ 1;
  highlightView = self->_highlightView;

  [(UIView *)highlightView setHidden:v3];
}

- (void)_updateImageRequestHelper
{
  [(PXCMMImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  traitCollection = [(PXCMMImageView *)self traitCollection];
  [traitCollection displayScale];
  if (v8 == 0.0)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = v8;
  }

  imageRequesterHelper = self->_imageRequesterHelper;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__PXCMMImageView__updateImageRequestHelper__block_invoke;
  v11[3] = &unk_1E7740F48;
  v11[4] = self;
  v11[5] = v4;
  v11[6] = v6;
  *&v11[7] = v9;
  [(PXImageRequesterHelper *)imageRequesterHelper performChanges:v11];
}

void __43__PXCMMImageView__updateImageRequestHelper__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 432);
  v6 = a2;
  v4 = [v3 asset];
  [v6 setAsset:v4];

  [v6 setContentSize:{*(a1 + 40), *(a1 + 48)}];
  v5 = [*(*(a1 + 32) + 432) mediaProvider];
  [v6 setMediaProvider:v5];

  [v6 setScale:*(a1 + 56)];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PXCMMImageView;
  [(PXCMMImageView *)&v4 traitCollectionDidChange:change];
  [(PXCMMImageView *)self _updateImageRequestHelper];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = PXCMMImageView;
  [(PXCMMImageView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PXCMMImageView *)self _updateImageRequestHelper];
}

- (PXCMMImageView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = PXCMMImageView;
  v3 = [(PXCMMImageView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(PXImageRequesterHelper);
    imageRequesterHelper = v3->_imageRequesterHelper;
    v3->_imageRequesterHelper = v4;

    [(PXImageRequesterHelper *)v3->_imageRequesterHelper registerChangeObserver:v3 context:PXImageRequesterHelperObservationContext];
    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(PXCMMImageView *)v3 bounds];
    v7 = [v6 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v7;

    [(UIImageView *)v3->_imageView setAutoresizingMask:18];
    [(UIImageView *)v3->_imageView setContentMode:2];
    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [(UIImageView *)v3->_imageView setBackgroundColor:quaternarySystemFillColor];

    [(PXCMMImageView *)v3 addSubview:v3->_imageView];
    v10 = objc_alloc(MEMORY[0x1E69DD250]);
    [(PXCMMImageView *)v3 bounds];
    v11 = [v10 initWithFrame:?];
    highlightView = v3->_highlightView;
    v3->_highlightView = v11;

    [(UIView *)v3->_highlightView setAutoresizingMask:18];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIView *)v3->_highlightView setBackgroundColor:labelColor];

    [(UIView *)v3->_highlightView setAlpha:0.3];
    [(UIView *)v3->_highlightView setHidden:1];
    [(PXCMMImageView *)v3 addSubview:v3->_highlightView];
    v14 = objc_alloc_init(PXCMMImageViewModel);
    [(PXCMMImageView *)v3 setViewModel:v14];

    [(PXCMMImageView *)v3 setAccessibilityIgnoresInvertColors:1];
  }

  return v3;
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMImageView.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  viewModel = self->_viewModel;
  v8 = modelCopy;
  v11 = v8;
  if (viewModel == v8)
  {
  }

  else
  {
    v9 = [(PXCMMImageViewModel *)v8 isEqual:viewModel];

    if ((v9 & 1) == 0)
    {
      [(PXCMMImageViewModel *)self->_viewModel unregisterChangeObserver:self context:PXCMMImageViewModelObservationContext];
      objc_storeStrong(&self->_viewModel, model);
      [(PXCMMImageViewModel *)self->_viewModel registerChangeObserver:self context:PXCMMImageViewModelObservationContext];
      [(PXCMMImageView *)self _updateImageRequestHelper];
      [(PXCMMImageView *)self _updateHighlighted];
    }
  }
}

@end