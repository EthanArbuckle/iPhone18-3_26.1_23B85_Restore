@interface PXCMMTranscriptBubbleStatusView
- (CGSize)_performLayoutInSize:(CGSize)a3 minimizingSize:(BOOL)a4 updateSubviewFrames:(BOOL)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXCMMTranscriptBubbleStatusView)initWithCoder:(id)a3;
- (PXCMMTranscriptBubbleStatusView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)bubbleSafeAreaInsets;
- (void)_updateActivityIndicator;
- (void)_updateRoundedCornerOverlayView;
- (void)layoutSubviews;
- (void)setShowsActivityIndicator:(BOOL)a3;
- (void)setSpec:(id)a3;
@end

@implementation PXCMMTranscriptBubbleStatusView

- (UIEdgeInsets)bubbleSafeAreaInsets
{
  top = self->_bubbleSafeAreaInsets.top;
  left = self->_bubbleSafeAreaInsets.left;
  bottom = self->_bubbleSafeAreaInsets.bottom;
  right = self->_bubbleSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updateRoundedCornerOverlayView
{
  roundedCornerOverlay = self->_roundedCornerOverlay;
  if (!roundedCornerOverlay)
  {
    v4 = objc_alloc_init(PXRoundedCornerOverlayView);
    v5 = self->_roundedCornerOverlay;
    self->_roundedCornerOverlay = v4;

    [(PXCMMTranscriptBubbleStatusView *)self addSubview:self->_roundedCornerOverlay];
    roundedCornerOverlay = self->_roundedCornerOverlay;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PXCMMTranscriptBubbleStatusView__updateRoundedCornerOverlayView__block_invoke;
  v6[3] = &unk_1E7736BA0;
  v6[4] = self;
  [(PXRoundedCornerOverlayView *)roundedCornerOverlay performChanges:v6];
}

void __66__PXCMMTranscriptBubbleStatusView__updateRoundedCornerOverlayView__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 456);
  v5 = a2;
  v4 = [v3 bubbleBackgroundColor];
  [v5 setOverlayColor:v4];

  [*(*(a1 + 32) + 456) bubbleStatusIconCornerRadius];
  [v5 setCornerRadius:?];
  [*(*(a1 + 32) + 456) displayScale];
  [v5 setDisplayScale:?];
}

- (void)_updateActivityIndicator
{
  if (!self->_activityIndicator && [(PXCMMTranscriptBubbleStatusView *)self showsActivityIndicator])
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    activityIndicator = self->_activityIndicator;
    self->_activityIndicator = v3;

    [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
    [(PXCMMTranscriptBubbleStatusView *)self addSubview:self->_activityIndicator];
  }

  if ([(PXCMMTranscriptBubbleStatusView *)self showsActivityIndicator]&& ![(UIActivityIndicatorView *)self->_activityIndicator isAnimating])
  {
    v6 = self->_activityIndicator;

    [(UIActivityIndicatorView *)v6 startAnimating];
  }

  else if (![(PXCMMTranscriptBubbleStatusView *)self showsActivityIndicator]&& [(UIActivityIndicatorView *)self->_activityIndicator isAnimating])
  {
    v5 = self->_activityIndicator;

    [(UIActivityIndicatorView *)v5 stopAnimating];
  }
}

- (CGSize)_performLayoutInSize:(CGSize)a3 minimizingSize:(BOOL)a4 updateSubviewFrames:(BOOL)a5
{
  [(PXUpdater *)self->_updater updateIfNeeded];
  [(PXCMMTranscriptBubbleStatusView *)self bubbleSafeAreaInsets];
  UIEdgeInsetsAdd();
  PXEdgeInsetsInsetSize();
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PXCMMTranscriptBubbleStatusView;
  [(PXCMMTranscriptBubbleStatusView *)&v5 layoutSubviews];
  [(PXCMMTranscriptBubbleStatusView *)self bounds];
  [(PXCMMTranscriptBubbleStatusView *)self _performLayoutInSize:1 minimizingSize:1 updateSubviewFrames:v3, v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(PXCMMTranscriptBubbleStatusView *)self _performLayoutInSize:0 minimizingSize:0 updateSubviewFrames:a3.width, a3.height];
  v6 = v5;
  spec = self->_spec;
  if (spec)
  {
    [(PXCMMSpec *)spec displayScale];
  }

  else
  {
    [(PXCMMTranscriptBubbleStatusView *)self px_screenScale];
  }

  [PXCMMSpec maxBubbleWidthForDisplayScale:?];
  v9 = fmin(width, v8);
  v10 = v6;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setShowsActivityIndicator:(BOOL)a3
{
  if (self->_showsActivityIndicator != a3)
  {
    self->_showsActivityIndicator = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateActivityIndicator];
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_spec, a3);
    v6 = [(PXCMMTranscriptBubbleStatusView *)self spec];
    v7 = [v6 bubbleBackgroundColor];
    [(PXCMMTranscriptBubbleStatusView *)self setBackgroundColor:v7];

    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateRoundedCornerOverlayView];
    v5 = v8;
  }
}

- (PXCMMTranscriptBubbleStatusView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = PXCMMTranscriptBubbleStatusView;
  v3 = [(PXCMMTranscriptBubbleStatusView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[off_1E7721940 alloc] initWithTarget:v3 needsUpdateSelector:sel_setNeedsLayout];
    updater = v3->_updater;
    v3->_updater = v4;

    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateActivityIndicator needsUpdate:0];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateRoundedCornerOverlayView needsUpdate:1];
    v6 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXMessagesPlaceholderIcon"];
    v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v7;

    [(UIImageView *)v3->_iconImageView setClipsToBounds:1];
    [(UIImageView *)v3->_iconImageView setContentMode:1];
    [(PXCMMTranscriptBubbleStatusView *)v3 addSubview:v3->_iconImageView];
    v9 = [PXCMMTranscriptTextView alloc];
    v10 = [(PXCMMTranscriptTextView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    textView = v3->_textView;
    v3->_textView = v10;

    [(PXCMMTranscriptBubbleStatusView *)v3 addSubview:v3->_textView];
  }

  return v3;
}

- (PXCMMTranscriptBubbleStatusView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptBubbleStatusView.m" lineNumber:37 description:{@"%s is not available as initializer", "-[PXCMMTranscriptBubbleStatusView initWithCoder:]"}];

  abort();
}

@end