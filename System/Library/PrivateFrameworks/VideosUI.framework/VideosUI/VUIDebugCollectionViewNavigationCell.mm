@interface VUIDebugCollectionViewNavigationCell
- (VUIDebugCollectionViewNavigationCell)initWithFrame:(CGRect)a3;
- (void)configureWithTitle:(id)a3;
- (void)layoutSubviews;
@end

@implementation VUIDebugCollectionViewNavigationCell

- (VUIDebugCollectionViewNavigationCell)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = VUIDebugCollectionViewNavigationCell;
  v3 = [(VUIDebugCollectionViewNavigationCell *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v4 setNumberOfLines:1];
    [(VUITextLayout *)v4 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v4 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v4 setTextStyle:3];
    [(VUITextLayout *)v4 setMaximumContentSizeCategory:3];
    v5 = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v4 setColor:v5];

    titleLayout = v3->_titleLayout;
    v3->_titleLayout = v4;
    v7 = v4;

    v8 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v7 existingLabel:0];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v8;

    v10 = [(VUIDebugCollectionViewNavigationCell *)v3 contentView];
    [v10 addSubview:v3->_titleLabel];

    v11 = [VUIImageResourceMap imageForResourceName:@"list-chevron"];
    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v11];
    accessoryView = v3->_accessoryView;
    v3->_accessoryView = v12;

    [(UIImageView *)v3->_accessoryView sizeToFit];
    v14 = [(VUIDebugCollectionViewNavigationCell *)v3 contentView];
    [v14 addSubview:v3->_accessoryView];

    v15 = [(VUIDebugCollectionViewNavigationCell *)v3 contentView];
    v16 = [MEMORY[0x1E69DC888] whiteColor];
    [v15 setBackgroundColor:v16];

    v17 = [MEMORY[0x1E69DC888] systemLightGrayColor];
    [(VUIListCollectionViewCell *)v3 setHighlightedBackgroundColor:v17];

    v18 = objc_alloc_init(VUISeparatorView);
    separatorView = v3->_separatorView;
    v3->_separatorView = v18;

    [(VUIDebugCollectionViewNavigationCell *)v3 addSubview:v3->_separatorView];
  }

  return v3;
}

- (void)configureWithTitle:(id)a3
{
  v7 = a3;
  v4 = [(VUIDebugCollectionViewNavigationCell *)self titleLayout];
  v5 = [(VUIDebugCollectionViewNavigationCell *)self titleLabel];
  v6 = [VUILabel labelWithString:v7 textLayout:v4 existingLabel:v5];
}

- (void)layoutSubviews
{
  [(VUIDebugCollectionViewNavigationCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [MEMORY[0x1E69DD2E8] vui_padding];
  v12 = v11;
  v14 = v13;
  v35 = v13;
  v38.origin.x = v4;
  v38.origin.y = v6;
  v38.size.width = v8;
  v38.size.height = v10;
  Width = CGRectGetWidth(v38);
  v16 = MEMORY[0x1E695F058];
  v17 = Width - v12 - v14;
  v18 = *(MEMORY[0x1E695F058] + 8);
  v39.origin.x = v4;
  rect = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  [(VUILabel *)self->_titleLabel sizeThatFits:v17, CGRectGetHeight(v39)];
  v20 = v19;
  v22 = v21;
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  Height = CGRectGetHeight(v40);
  v41.origin.x = v12;
  v41.origin.y = v18;
  v41.size.width = v20;
  v41.size.height = v22;
  [(VUILabel *)self->_titleLabel setFrame:v12, (Height - CGRectGetHeight(v41)) * 0.5, v20, v22];
  v24 = *v16;
  [(UIImageView *)self->_accessoryView bounds];
  v26 = v25;
  v28 = v27;
  [(VUIDebugCollectionViewNavigationCell *)self bounds];
  v29 = CGRectGetWidth(v42) - v35;
  v43.origin.x = v24;
  v43.origin.y = v18;
  v43.size.width = v26;
  v43.size.height = v28;
  v30 = v29 - CGRectGetWidth(v43);
  v44.origin.x = rect;
  v44.origin.y = v6;
  v44.size.width = v8;
  v44.size.height = v10;
  v31 = CGRectGetHeight(v44);
  v45.origin.x = v30;
  v45.origin.y = v18;
  v45.size.width = v26;
  v45.size.height = v28;
  [(UIImageView *)self->_accessoryView setFrame:v30, (v31 - CGRectGetHeight(v45)) * 0.5, v26, v28];
  separatorView = self->_separatorView;
  [(VUIDebugCollectionViewNavigationCell *)self bounds];
  v33 = CGRectGetHeight(v46) + -1.0;
  v47.origin.x = rect;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  v34 = CGRectGetWidth(v47);

  [(VUISeparatorView *)separatorView setFrame:0.0, v33, v34, 1.0];
}

@end