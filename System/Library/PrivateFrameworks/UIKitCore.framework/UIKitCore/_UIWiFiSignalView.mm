@interface _UIWiFiSignalView
- (CGSize)intrinsicContentSize;
- (_UIWiFiSignalView)initWithCoder:(id)coder;
- (_UIWiFiSignalView)initWithFrame:(CGRect)frame;
- (_UIWiFiSignalView)initWithSizeCategory:(int64_t)category;
- (void)_commonInit;
- (void)layoutSubviews;
- (void)setSizeCategory:(int64_t)category;
@end

@implementation _UIWiFiSignalView

- (void)_commonInit
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = _MergedGlobals_1007;
  v14 = _MergedGlobals_1007;
  if (!_MergedGlobals_1007)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getSTUIStatusBarWifiSignalViewClass_block_invoke;
    v10[3] = &unk_1E70F2F20;
    v10[4] = &v11;
    __getSTUIStatusBarWifiSignalViewClass_block_invoke(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  v5 = objc_alloc_init(v3);
  signalView = self->_signalView;
  self->_signalView = v5;

  traitCollection = [(UIView *)self traitCollection];
  [traitCollection displayScale];
  if (v8 <= 2.5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [(_UISignalViewImplementation *)self->_signalView setIconSize:v9];

  [(_UISignalViewImplementation *)self->_signalView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self addSubview:self->_signalView];
}

- (_UIWiFiSignalView)initWithSizeCategory:(int64_t)category
{
  v6.receiver = self;
  v6.super_class = _UIWiFiSignalView;
  v4 = [(UIView *)&v6 init];
  [(_UIWiFiSignalView *)v4 _commonInit];
  [(_UIWiFiSignalView *)v4 setSizeCategory:category];
  return v4;
}

- (_UIWiFiSignalView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UIWiFiSignalView;
  v3 = [(UIView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_UIWiFiSignalView *)v3 _commonInit];
  return v3;
}

- (_UIWiFiSignalView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIWiFiSignalView;
  v3 = [(UIView *)&v5 initWithCoder:coder];
  [(_UIWiFiSignalView *)v3 _commonInit];
  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIWiFiSignalView;
  [(UIView *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  [(_UISignalViewImplementation *)self->_signalView setFrame:?];
}

- (CGSize)intrinsicContentSize
{
  [(_UISignalViewImplementation *)self->_signalView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setSizeCategory:(int64_t)category
{
  traitCollection = [(UIView *)self traitCollection];
  v7 = traitCollection;
  if (category == 1)
  {
    [traitCollection displayScale];
    if (v9 <= 2.5)
    {
      v3 = 9;
    }

    else
    {
      v3 = 10;
    }
  }

  else if (!category)
  {
    [traitCollection displayScale];
    if (v8 <= 2.5)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  [(_UISignalViewImplementation *)self->_signalView setIconSize:v3];

  [(UIView *)self invalidateIntrinsicContentSize];
}

@end