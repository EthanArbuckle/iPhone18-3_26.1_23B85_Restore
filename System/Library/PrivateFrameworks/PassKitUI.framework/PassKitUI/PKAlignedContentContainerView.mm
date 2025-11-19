@interface PKAlignedContentContainerView
- (PKAlignedContentContainerView)initWithContentView:(id)a3 alignment:(id)a4 size:(CGSize)a5;
- (void)layoutSubviews;
@end

@implementation PKAlignedContentContainerView

- (PKAlignedContentContainerView)initWithContentView:(id)a3 alignment:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = PKAlignedContentContainerView;
  v11 = [(PKAlignedContentContainerView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contentView, a3);
    v12->_alignment = a4;
    v12->_size.width = width;
    v12->_size.height = height;
    [(PKAlignedContentContainerView *)v12 addSubview:v10];
  }

  return v12;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKAlignedContentContainerView;
  [(PKAlignedContentContainerView *)&v4 layoutSubviews];
  contentView = self->_contentView;
  [(PKAlignedContentContainerView *)self bounds];
  PKSizeAlignedInRectWithScale();
  [(UIView *)contentView setFrame:?];
}

@end