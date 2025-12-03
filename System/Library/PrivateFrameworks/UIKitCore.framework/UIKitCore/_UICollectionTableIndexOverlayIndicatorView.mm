@interface _UICollectionTableIndexOverlayIndicatorView
- (_UICollectionTableIndexOverlayIndicatorView)initWithHost:(id)host;
- (void)_tapGestureChanged:(id)changed;
- (void)_willChangeToIdiom:(int64_t)idiom onScreen:(id)screen;
- (void)layoutSubviews;
@end

@implementation _UICollectionTableIndexOverlayIndicatorView

- (void)layoutSubviews
{
  label = self->_label;
  [(UIView *)self bounds];

  [(UILabel *)label setFrame:?];
}

- (_UICollectionTableIndexOverlayIndicatorView)initWithHost:(id)host
{
  hostCopy = host;
  v11.receiver = self;
  v11.super_class = _UICollectionTableIndexOverlayIndicatorView;
  v5 = [(UIView *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(UILabel);
    label = v5->_label;
    v5->_label = v6;

    [(UIView *)v5 addSubview:v5->_label];
    v8 = [[UITapGestureRecognizer alloc] initWithTarget:v5 action:sel__tapGestureChanged_];
    tapGestureRecognizer = v5->_tapGestureRecognizer;
    v5->_tapGestureRecognizer = v8;

    [(UIView *)v5 addGestureRecognizer:v5->_tapGestureRecognizer];
    objc_storeWeak(&v5->_host, hostCopy);
  }

  return v5;
}

- (void)_tapGestureChanged:(id)changed
{
  if ([changed state] == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_host);
    [WeakRetained _hideIndexOverlay];
  }
}

- (void)_willChangeToIdiom:(int64_t)idiom onScreen:(id)screen
{
  if (idiom == 3)
  {
    label = self->_label;
    v7 = [UIColor whiteColor:idiom];
    [(UILabel *)label setTextColor:v7];

    v8 = self->_label;
    v9 = [off_1E70ECC18 _ultraLightSystemFontOfSize:150.0];
    [(UILabel *)v8 setFont:v9];

    [(UILabel *)self->_label setTextAlignment:1];
    v10 = [UIColor colorWithWhite:0.0 alpha:0.85];
    [(UIView *)self setBackgroundColor:v10];
  }
}

@end