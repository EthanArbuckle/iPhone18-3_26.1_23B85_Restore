@interface NCNotificationListBaseContentView
- (BOOL)adjustForContentSizeCategoryChange;
- (NCNotificationListBaseContentView)initWithFrame:(CGRect)a3;
- (double)_sizeMeasuringHeightForLabel:(id)a3 withNumberOfLines:(unint64_t)a4;
- (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5 additionalTraits:(unsigned int)a6;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)_updateTextAttributesForLabel:(id)a3 withTextStyle:(id)a4 fontWeight:(double)a5 additionalTraits:(unsigned int)a6 maximumNumberOfLines:(unint64_t)a7;
- (void)_updateVisualStylingOfImageView:(id)a3 ifSymbolImageWithStyle:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6;
- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6;
- (void)didMoveToWindow;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation NCNotificationListBaseContentView

- (void)didMoveToWindow
{
  v3 = [(NCNotificationListBaseContentView *)self window];

  if (v3)
  {

    [(NCNotificationListBaseContentView *)self adjustForContentSizeCategoryChange];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  v5 = UIContentSizeCategoryCompareToCategory(v4, self->_preferredContentSizeCategory);
  if (v5)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, v4);
    [(NCNotificationListBaseContentView *)self _updateTextAttributes];
    [(NCNotificationListBaseContentView *)self setNeedsLayout];
  }

  return v5 != NSOrderedSame;
}

- (NCNotificationListBaseContentView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = NCNotificationListBaseContentView;
  v3 = [(NCNotificationListBaseContentView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_adjustsFontForContentSizeCategory = 1;
    v5 = [MEMORY[0x277D75128] sharedApplication];
    v6 = [v5 preferredContentSizeCategory];
    preferredContentSizeCategory = v4->_preferredContentSizeCategory;
    v4->_preferredContentSizeCategory = v6;

    v8 = [(NCNotificationListBaseContentView *)v4 layer];
    [v8 setAllowsGroupOpacity:0];
  }

  return v4;
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  strokeVisualStylingProvider = self->_strokeVisualStylingProvider;
  if (strokeVisualStylingProvider)
  {
    v4 = strokeVisualStylingProvider;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NCNotificationListBaseContentView;
    v4 = [(NCNotificationListBaseContentView *)&v6 visualStylingProviderForCategory:a3];
  }

  return v4;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v6 = a3;
  strokeVisualStylingProvider = self->_strokeVisualStylingProvider;
  if (strokeVisualStylingProvider != v6)
  {
    v11 = v6;
    v8 = v6;
    v9 = self->_strokeVisualStylingProvider;
    self->_strokeVisualStylingProvider = v8;
    v10 = strokeVisualStylingProvider;

    [(NCNotificationListBaseContentView *)self _visualStylingProviderDidChange:self->_strokeVisualStylingProvider forCategory:a4 outgoingProvider:v10];
    v6 = v11;
  }
}

- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6
{
  if (a3)
  {
    v9 = a5;
    v10 = a3;
    [a6 stopAutomaticallyUpdatingView:v10];
    [v9 automaticallyUpdateView:v10 withStyle:a4];
  }
}

- (void)_updateVisualStylingOfImageView:(id)a3 ifSymbolImageWithStyle:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v14 = [v12 image];
  if ([v14 isSymbolImage])
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:v12 style:a4 visualStylingProvider:v13 outgoingProvider:v10];
}

- (void)_updateTextAttributesForLabel:(id)a3 withTextStyle:(id)a4 fontWeight:(double)a5 additionalTraits:(unsigned int)a6 maximumNumberOfLines:(unint64_t)a7
{
  if (a3)
  {
    v11 = a3;
    v12 = [(NCNotificationListBaseContentView *)self _preferredFont:1 textStyle:a4 weight:0 additionalTraits:a5];
    [v11 setFont:v12];

    [v11 setNumberOfLines:a7];

    [(NCNotificationListBaseContentView *)self setNeedsLayout];
  }
}

- (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5 additionalTraits:(unsigned int)a6
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:a4 addingSymbolicTraits:*&a6 options:0];
  }

  else
  {
    [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:a4 addingSymbolicTraits:*&a6 options:0];
  }
  v7 = ;
  v16 = *MEMORY[0x277D74380];
  v14 = *MEMORY[0x277D74430];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v15 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];

  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];

  return v12;
}

- (double)_sizeMeasuringHeightForLabel:(id)a3 withNumberOfLines:(unint64_t)a4
{
  v5 = a3;
  [v5 unui_measuringHeightWithNumberOfLines:a4];
  v7 = v6;
  [v5 unui_drawingHeightWithNumberOfLines:a4];
  v9 = v8;

  return v7 + (v9 - v7) * 0.5;
}

@end