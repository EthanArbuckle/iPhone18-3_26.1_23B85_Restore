@interface TUBackdropView
- (TUBackdropView)initWithFrame:(CGRect)a3;
- (UIView)contentView;
- (void)layoutSubviews;
@end

@implementation TUBackdropView

- (TUBackdropView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = TUBackdropView;
  v3 = [(TUBackdropView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC730] effectWithStyle:7];
    v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v4];
    backdropView = v3->_backdropView;
    v3->_backdropView = v5;

    [(TUBackdropView *)v3 addSubview:v3->_backdropView];
    [(TUBackdropView *)v3 setOpaque:0];
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(TUBackdropView *)v3 setBackgroundColor:v7];
  }

  return v3;
}

- (UIView)contentView
{
  v2 = [(TUBackdropView *)self backdropView];
  v3 = [v2 contentView];

  return v3;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = TUBackdropView;
  [(TUBackdropView *)&v12 layoutSubviews];
  [(TUBackdropView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TUBackdropView *)self backdropView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

@end