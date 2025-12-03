@interface NCNotificationListBaseContentView
- (BOOL)adjustForContentSizeCategoryChange;
- (NCNotificationListBaseContentView)initWithFrame:(CGRect)frame;
- (double)_sizeMeasuringHeightForLabel:(id)label withNumberOfLines:(unint64_t)lines;
- (id)_preferredFont:(BOOL)font textStyle:(id)style weight:(double)weight additionalTraits:(unsigned int)traits;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_updateTextAttributesForLabel:(id)label withTextStyle:(id)style fontWeight:(double)weight additionalTraits:(unsigned int)traits maximumNumberOfLines:(unint64_t)lines;
- (void)_updateVisualStylingOfImageView:(id)view ifSymbolImageWithStyle:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider;
- (void)_updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider;
- (void)didMoveToWindow;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
@end

@implementation NCNotificationListBaseContentView

- (void)didMoveToWindow
{
  window = [(NCNotificationListBaseContentView *)self window];

  if (window)
  {

    [(NCNotificationListBaseContentView *)self adjustForContentSizeCategoryChange];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

  v5 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, self->_preferredContentSizeCategory);
  if (v5)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, preferredContentSizeCategory);
    [(NCNotificationListBaseContentView *)self _updateTextAttributes];
    [(NCNotificationListBaseContentView *)self setNeedsLayout];
  }

  return v5 != NSOrderedSame;
}

- (NCNotificationListBaseContentView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = NCNotificationListBaseContentView;
  v3 = [(NCNotificationListBaseContentView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_adjustsFontForContentSizeCategory = 1;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    preferredContentSizeCategory = v4->_preferredContentSizeCategory;
    v4->_preferredContentSizeCategory = preferredContentSizeCategory;

    layer = [(NCNotificationListBaseContentView *)v4 layer];
    [layer setAllowsGroupOpacity:0];
  }

  return v4;
}

- (id)visualStylingProviderForCategory:(int64_t)category
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
    v4 = [(NCNotificationListBaseContentView *)&v6 visualStylingProviderForCategory:category];
  }

  return v4;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  strokeVisualStylingProvider = self->_strokeVisualStylingProvider;
  if (strokeVisualStylingProvider != providerCopy)
  {
    v11 = providerCopy;
    v8 = providerCopy;
    v9 = self->_strokeVisualStylingProvider;
    self->_strokeVisualStylingProvider = v8;
    v10 = strokeVisualStylingProvider;

    [(NCNotificationListBaseContentView *)self _visualStylingProviderDidChange:self->_strokeVisualStylingProvider forCategory:category outgoingProvider:v10];
    providerCopy = v11;
  }
}

- (void)_updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider
{
  if (view)
  {
    providerCopy = provider;
    viewCopy = view;
    [outgoingProvider stopAutomaticallyUpdatingView:viewCopy];
    [providerCopy automaticallyUpdateView:viewCopy withStyle:style];
  }
}

- (void)_updateVisualStylingOfImageView:(id)view ifSymbolImageWithStyle:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider
{
  outgoingProviderCopy = outgoingProvider;
  providerCopy = provider;
  viewCopy = view;
  image = [viewCopy image];
  if ([image isSymbolImage])
  {
    v13 = providerCopy;
  }

  else
  {
    v13 = 0;
  }

  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:viewCopy style:style visualStylingProvider:v13 outgoingProvider:outgoingProviderCopy];
}

- (void)_updateTextAttributesForLabel:(id)label withTextStyle:(id)style fontWeight:(double)weight additionalTraits:(unsigned int)traits maximumNumberOfLines:(unint64_t)lines
{
  if (label)
  {
    labelCopy = label;
    v12 = [(NCNotificationListBaseContentView *)self _preferredFont:1 textStyle:style weight:0 additionalTraits:weight];
    [labelCopy setFont:v12];

    [labelCopy setNumberOfLines:lines];

    [(NCNotificationListBaseContentView *)self setNeedsLayout];
  }
}

- (id)_preferredFont:(BOOL)font textStyle:(id)style weight:(double)weight additionalTraits:(unsigned int)traits
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (font)
  {
    [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:*&traits options:0];
  }

  else
  {
    [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:style addingSymbolicTraits:*&traits options:0];
  }
  v7 = ;
  v16 = *MEMORY[0x277D74380];
  v14 = *MEMORY[0x277D74430];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:weight];
  v15 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];

  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];

  return v12;
}

- (double)_sizeMeasuringHeightForLabel:(id)label withNumberOfLines:(unint64_t)lines
{
  labelCopy = label;
  [labelCopy unui_measuringHeightWithNumberOfLines:lines];
  v7 = v6;
  [labelCopy unui_drawingHeightWithNumberOfLines:lines];
  v9 = v8;

  return v7 + (v9 - v7) * 0.5;
}

@end