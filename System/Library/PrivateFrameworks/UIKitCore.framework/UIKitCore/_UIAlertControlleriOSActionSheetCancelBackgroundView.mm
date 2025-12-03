@interface _UIAlertControlleriOSActionSheetCancelBackgroundView
- (_UIAlertControlleriOSActionSheetCancelBackgroundView)initWithFrame:(CGRect)frame;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)setCornerRadius:(double)radius;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setRoundedCornerPosition:(unint64_t)position;
@end

@implementation _UIAlertControlleriOSActionSheetCancelBackgroundView

- (_UIAlertControlleriOSActionSheetCancelBackgroundView)initWithFrame:(CGRect)frame
{
  v29.receiver = self;
  v29.super_class = _UIAlertControlleriOSActionSheetCancelBackgroundView;
  v3 = [(UIView *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    [(UIView *)v3 bounds];
    v5 = [(UIView *)v4 initWithFrame:?];
    backgroundView = v3->backgroundView;
    v3->backgroundView = v5;

    v7 = v3->backgroundView;
    v8 = +[UIColor secondarySystemGroupedBackgroundColor];
    [(UIView *)v7 setBackgroundColor:v8];

    v9 = [UIView alloc];
    [(UIView *)v3 bounds];
    v10 = [(UIView *)v9 initWithFrame:?];
    highlightBackgroundView = v3->highlightBackgroundView;
    v3->highlightBackgroundView = v10;

    v12 = v3->highlightBackgroundView;
    v13 = +[UIColor secondarySystemGroupedBackgroundColor];
    [(UIView *)v12 setBackgroundColor:v13];

    v14 = [UIBlurEffect effectWithStyle:1200];
    v15 = [UIVibrancyEffect _effectForBlurEffect:v14 vibrancyStyle:112];
    v16 = [[UIVisualEffectView alloc] initWithEffect:v15];
    v17 = +[UIColor whiteColor];
    contentView = [(UIVisualEffectView *)v16 contentView];
    [contentView setBackgroundColor:v17];

    highlightView = v3->highlightView;
    v3->highlightView = &v16->super;

    [(UIView *)v3 addSubview:v3->backgroundView];
    [(UIView *)v3 addSubview:v3->highlightBackgroundView];
    [(UIView *)v3 addSubview:v3->highlightView];
    [(_UIAlertControlleriOSActionSheetCancelBackgroundView *)v3 setHighlighted:0];
    [(UIView *)v3 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [(UIView *)v3->backgroundView setFrame:?];
    [(UIView *)v3->highlightBackgroundView setFrame:v21, v23, v25, v27];
    [(UIView *)v3->highlightView setFrame:v21, v23, v25, v27];
    [(UIView *)v3->backgroundView setAutoresizingMask:18];
    [(UIView *)v3->highlightBackgroundView setAutoresizingMask:18];
    [(UIView *)v3->highlightView setAutoresizingMask:18];
  }

  return v3;
}

- (void)setCornerRadius:(double)radius
{
  [(UIView *)self->backgroundView _setContinuousCornerRadius:?];
  [(UIView *)self->highlightBackgroundView _setContinuousCornerRadius:radius];
  highlightView = self->highlightView;

  [(UIView *)highlightView _setContinuousCornerRadius:radius];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  [(UIView *)self->backgroundView _setContinuousCornerRadius:?];
  [(UIView *)self->highlightBackgroundView _setContinuousCornerRadius:radius];
  highlightView = self->highlightView;

  [(UIView *)highlightView _setContinuousCornerRadius:radius];
}

- (void)setRoundedCornerPosition:(unint64_t)position
{
  layer = [(UIView *)self->backgroundView layer];
  [layer setMaskedCorners:position];

  layer2 = [(UIView *)self->highlightBackgroundView layer];
  [layer2 setMaskedCorners:position];

  layer3 = [(UIView *)self->highlightView layer];
  [layer3 setMaskedCorners:position];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  [(UIView *)self->backgroundView setHidden:?];
  [(UIView *)self->highlightBackgroundView setHidden:!highlightedCopy];
  highlightView = self->highlightView;

  [(UIView *)highlightView setHidden:!highlightedCopy];
}

@end