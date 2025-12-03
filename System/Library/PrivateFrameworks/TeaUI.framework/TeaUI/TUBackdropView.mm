@interface TUBackdropView
- (TUBackdropView)initWithFrame:(CGRect)frame;
- (UIView)contentView;
- (void)layoutSubviews;
@end

@implementation TUBackdropView

- (TUBackdropView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = TUBackdropView;
  v3 = [(TUBackdropView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC730] effectWithStyle:7];
    v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v4];
    backdropView = v3->_backdropView;
    v3->_backdropView = v5;

    [(TUBackdropView *)v3 addSubview:v3->_backdropView];
    [(TUBackdropView *)v3 setOpaque:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(TUBackdropView *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

- (UIView)contentView
{
  backdropView = [(TUBackdropView *)self backdropView];
  contentView = [backdropView contentView];

  return contentView;
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
  backdropView = [(TUBackdropView *)self backdropView];
  [backdropView setFrame:{v4, v6, v8, v10}];
}

@end