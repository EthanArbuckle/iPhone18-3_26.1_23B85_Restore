@interface PKAlignedContentContainerView
- (PKAlignedContentContainerView)initWithContentView:(id)view alignment:(id)alignment size:(CGSize)size;
- (void)layoutSubviews;
@end

@implementation PKAlignedContentContainerView

- (PKAlignedContentContainerView)initWithContentView:(id)view alignment:(id)alignment size:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = PKAlignedContentContainerView;
  v11 = [(PKAlignedContentContainerView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contentView, view);
    v12->_alignment = alignment;
    v12->_size.width = width;
    v12->_size.height = height;
    [(PKAlignedContentContainerView *)v12 addSubview:viewCopy];
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