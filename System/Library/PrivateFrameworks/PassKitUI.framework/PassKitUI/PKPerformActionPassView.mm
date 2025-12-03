@interface PKPerformActionPassView
- (CGSize)_passImageSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPerformActionPassView)init;
- (PKPerformActionPassView)initWithPass:(id)pass frame:(CGRect)frame;
- (void)_createSubviews;
- (void)_loadSnapshotView;
- (void)configureWithPass:(id)pass frame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PKPerformActionPassView

- (PKPerformActionPassView)init
{
  v3.receiver = self;
  v3.super_class = PKPerformActionPassView;
  return [(PKPerformActionBackdropView *)&v3 init];
}

- (PKPerformActionPassView)initWithPass:(id)pass frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  passCopy = pass;
  v18.receiver = self;
  v18.super_class = PKPerformActionPassView;
  v9 = [(PKPerformActionBackdropView *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pass, pass);
    v11 = objc_alloc_init(PKPassSnapshotter);
    snapshotter = v10->_snapshotter;
    v10->_snapshotter = v11;

    [(PKPerformActionPassView *)v10 _createSubviews];
    [(PKPerformActionPassView *)v10 _loadSnapshotView];
    v13 = *MEMORY[0x1E695EFF8];
    v14 = *(MEMORY[0x1E695EFF8] + 8);
    [(PKPerformActionPassView *)v10 sizeThatFits:width, width];
    [(PKPerformActionPassView *)v10 setFrame:v13, v14, v15, v16];
    [(PKPerformActionPassView *)v10 sizeThatFits:width, height];
    [(PKPerformActionPassView *)v10 setUserInteractionEnabled:1];
  }

  return v10;
}

- (void)configureWithPass:(id)pass frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  objc_storeStrong(&self->_pass, pass);
  passCopy = pass;
  v9 = objc_alloc_init(PKPassSnapshotter);
  snapshotter = self->_snapshotter;
  self->_snapshotter = v9;

  [(PKPerformActionPassView *)self _createSubviews];
  [(PKPerformActionPassView *)self _loadSnapshotView];
  v11 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  [(PKPerformActionPassView *)self sizeThatFits:width, width];
  [(PKPerformActionPassView *)self setFrame:v11, v12, v13, v14];
  [(PKPerformActionPassView *)self sizeThatFits:width, height];

  [(PKPerformActionPassView *)self setUserInteractionEnabled:1];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PKPerformActionPassView;
  [(PKPerformActionBackdropView *)&v7 layoutSubviews];
  [(PKPerformActionPassView *)self bounds];
  v4 = v3;
  [(PKPerformActionPassView *)self _passImageSize];
  [(UIImageView *)self->_passView setFrame:v4 * 0.5 - v5 * 0.5, 0.0, v5, v6];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PKPerformActionPassView *)self _passImageSize:fits.width];
  v5 = fmax(v4, 88.0);
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)_createSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  passView = self->_passView;
  self->_passView = v3;

  layer = [(UIImageView *)self->_passView layer];
  [layer setShadowRadius:12.0];

  layer2 = [(UIImageView *)self->_passView layer];
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
  [layer2 setShadowColor:{objc_msgSend(v7, "CGColor")}];

  layer3 = [(UIImageView *)self->_passView layer];
  [layer3 setShadowOffset:{0.0, 12.0}];

  layer4 = [(UIImageView *)self->_passView layer];
  LODWORD(v10) = 1.0;
  [layer4 setShadowOpacity:v10];

  layer5 = [(UIImageView *)self->_passView layer];
  [layer5 setMasksToBounds:0];

  [(UIImageView *)self->_passView setAccessibilityIgnoresInvertColors:1];
  v12 = self->_passView;

  [(PKPerformActionPassView *)self addSubview:v12];
}

- (void)_loadSnapshotView
{
  snapshotter = self->_snapshotter;
  pass = self->_pass;
  [(PKPerformActionPassView *)self _passImageSize];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__PKPerformActionPassView__loadSnapshotView__block_invoke;
  v5[3] = &unk_1E8010A38;
  v5[4] = self;
  [(PKPassSnapshotter *)snapshotter snapshotWithPass:pass size:v5 completion:?];
}

void __44__PKPerformActionPassView__loadSnapshotView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__PKPerformActionPassView__loadSnapshotView__block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (CGSize)_passImageSize
{
  passType = [(PKPass *)self->_pass passType];
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  if (passType == PKPassTypeSecureElement)
  {
    v3 = 190.0;
    v4 = 121.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

@end