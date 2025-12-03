@interface PXMessagesStackAdditionalItemsView
- (CGRect)clippingRect;
- (PXMessagesStackAdditionalItemsView)initWithFrame:(CGRect)frame;
- (id)_localizedTitleForAdditionalItemsCount:(id)count;
- (void)layoutSubviews;
- (void)setUserData:(id)data;
@end

@implementation PXMessagesStackAdditionalItemsView

- (CGRect)clippingRect
{
  x = self->clippingRect.origin.x;
  y = self->clippingRect.origin.y;
  width = self->clippingRect.size.width;
  height = self->clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)data
{
  if (self->_userData != data)
  {
    dataCopy = data;
    v5 = [dataCopy copy];
    userData = self->_userData;
    self->_userData = v5;

    additionalItemsCount = [dataCopy additionalItemsCount];
    v9 = v8;

    v10 = [(PXMessagesStackAdditionalItemsView *)self _localizedTitleForAdditionalItemsCount:additionalItemsCount, v9];
    [(UILabel *)self->_label setText:v10];
    [(PXMessagesStackAdditionalItemsView *)self setNeedsLayout];
  }
}

- (id)_localizedTitleForAdditionalItemsCount:(id)count
{
  if (count.var0)
  {
    v3 = PXLocalizationKeyForMediaType(count.var1, @"PXMessagesStackAdditionalNumberOfPhotosTitle", @"PXMessagesStackAdditionalNumberOfVideosTitle ", @"PXMessagesStackAdditionalNumberOfItemsTitle");
    PXLocalizedStringFromTable(v3, @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  return &stru_1F1741150;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PXMessagesStackAdditionalItemsView;
  [(PXMessagesStackAdditionalItemsView *)&v11 layoutSubviews];
  [(PXMessagesStackAdditionalItemsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIVisualEffectView *)self->_visualEffectView setFrame:?];
  v12.origin.x = v4;
  v12.origin.y = v6;
  v12.size.width = v8;
  v12.size.height = v10;
  v13 = CGRectInset(v12, v8 * -0.05, v10 * -0.05);
  [(UILabel *)self->_label sizeThatFits:v13.size.width, v13.size.height];
  PXRectGetCenter();
}

- (PXMessagesStackAdditionalItemsView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = PXMessagesStackAdditionalItemsView;
  v3 = [(PXMessagesStackAdditionalItemsView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PXMessagesStackAdditionalItemsView *)v3 setBackgroundColor:clearColor];

    [(PXMessagesStackAdditionalItemsView *)v3 setUserInteractionEnabled:0];
    [MEMORY[0x1E69DC730] effectWithStyle:10];
    v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:objc_claimAutoreleasedReturnValue()];
    visualEffectView = v3->_visualEffectView;
    v3->_visualEffectView = v5;

    [(UIVisualEffectView *)v3->_visualEffectView setUserInteractionEnabled:0];
    [(PXMessagesStackAdditionalItemsView *)v3 addSubview:v3->_visualEffectView];
    v7 = objc_alloc(MEMORY[0x1E69DCC10]);
    v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    label = v3->_label;
    v3->_label = v8;

    [(UILabel *)v3->_label setNumberOfLines:0];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [(UILabel *)v3->_label setTextColor:systemBlueColor];

    [(UILabel *)v3->_label setText:&stru_1F1741150];
    PXCappedFontWithTextStyleAndWeight();
  }

  return 0;
}

@end