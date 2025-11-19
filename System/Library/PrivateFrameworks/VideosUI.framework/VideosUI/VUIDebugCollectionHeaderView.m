@interface VUIDebugCollectionHeaderView
- (VUIDebugCollectionHeaderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation VUIDebugCollectionHeaderView

- (VUIDebugCollectionHeaderView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = VUIDebugCollectionHeaderView;
  v3 = [(VUIDebugCollectionHeaderView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v4 setTextStyle:14];
    [(VUITextLayout *)v4 setTextTransform:2];
    [(VUITextLayout *)v4 setNumberOfLines:1];
    [(VUITextLayout *)v4 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v4 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v4 setMaximumContentSizeCategory:3];
    v5 = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v4 setColor:v5];

    titleLayout = v3->_titleLayout;
    v3->_titleLayout = v4;
    v7 = v4;

    v8 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v7 existingLabel:0];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v8;

    [(VUIDebugCollectionHeaderView *)v3 addSubview:v3->_titleLabel];
    v10 = objc_alloc_init(VUISeparatorView);
    separatorView = v3->_separatorView;
    v3->_separatorView = v10;

    [(VUIDebugCollectionHeaderView *)v3 addSubview:v3->_separatorView];
    v12 = [MEMORY[0x1E69DC888] clearColor];

    [(VUIDebugCollectionHeaderView *)v3 setBackgroundColor:v12];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(VUIDebugCollectionHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [MEMORY[0x1E69DD2E8] vui_padding];
  v12 = v11;
  v14 = v13;
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  v15 = CGRectGetWidth(v26) - v12 - v14;
  rect = *(MEMORY[0x1E695F058] + 8);
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  [(VUILabel *)self->_titleLabel sizeThatFits:v15, CGRectGetHeight(v27)];
  v17 = v16;
  v19 = v18;
  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  Height = CGRectGetHeight(v28);
  v29.origin.x = v12;
  v29.origin.y = rect;
  v29.size.width = v17;
  v29.size.height = v19;
  [(VUILabel *)self->_titleLabel setFrame:v12, Height - CGRectGetHeight(v29) + -5.0, v17, v19];
  separatorView = self->_separatorView;
  [(VUIDebugCollectionHeaderView *)self bounds];
  v22 = CGRectGetHeight(v30) + -1.0;
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  Width = CGRectGetWidth(v31);

  [(VUISeparatorView *)separatorView setFrame:0.0, v22, Width, 1.0];
}

@end