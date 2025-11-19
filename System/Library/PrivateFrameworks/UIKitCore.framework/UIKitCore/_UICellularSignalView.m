@interface _UICellularSignalView
- (CGSize)intrinsicContentSize;
- (_UICellularSignalView)initWithCoder:(id)a3;
- (_UICellularSignalView)initWithFrame:(CGRect)a3;
- (_UICellularSignalView)initWithSizeCategory:(int64_t)a3;
- (void)_commonInit;
- (void)layoutSubviews;
- (void)setSizeCategory:(int64_t)a3;
@end

@implementation _UICellularSignalView

- (void)_commonInit
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = _MergedGlobals_1368;
  v14 = _MergedGlobals_1368;
  if (!_MergedGlobals_1368)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getSTUIStatusBarCellularSignalViewClass_block_invoke;
    v10[3] = &unk_1E70F2F20;
    v10[4] = &v11;
    __getSTUIStatusBarCellularSignalViewClass_block_invoke(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  v5 = objc_alloc_init(v3);
  signalView = self->_signalView;
  self->_signalView = v5;

  v7 = [(UIView *)self traitCollection];
  [v7 displayScale];
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

- (_UICellularSignalView)initWithSizeCategory:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = _UICellularSignalView;
  v4 = [(UIView *)&v6 init];
  [(_UICellularSignalView *)v4 _commonInit];
  [(_UICellularSignalView *)v4 setSizeCategory:a3];
  return v4;
}

- (_UICellularSignalView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _UICellularSignalView;
  v3 = [(UIView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UICellularSignalView *)v3 _commonInit];
  return v3;
}

- (_UICellularSignalView)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UICellularSignalView;
  v3 = [(UIView *)&v5 initWithCoder:a3];
  [(_UICellularSignalView *)v3 _commonInit];
  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UICellularSignalView;
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

- (void)setSizeCategory:(int64_t)a3
{
  v6 = [(UIView *)self traitCollection];
  v7 = v6;
  if (a3 == 1)
  {
    [v6 displayScale];
    if (v9 <= 2.5)
    {
      v3 = 9;
    }

    else
    {
      v3 = 10;
    }
  }

  else if (!a3)
  {
    [v6 displayScale];
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