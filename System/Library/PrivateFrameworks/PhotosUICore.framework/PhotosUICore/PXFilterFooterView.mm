@interface PXFilterFooterView
- (CGSize)_performLayoutInRect:(CGRect)rect updateSubviewFrames:(BOOL)frames;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFitsCaption:(CGSize)caption;
- (PXFilterFooterView)initWithFrame:(CGRect)frame;
- (PXFilterFooterViewDelegate)delegate;
- (void)_showFilterUI:(id)i;
- (void)_updateDisplay;
- (void)layoutSubviews;
- (void)setContentFilterState:(id)state;
- (void)setLibraryFilterState:(id)state;
- (void)setSharedLibraryStatusProvider:(id)provider;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXFilterFooterView

- (PXFilterFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setContentFilterState:(id)state
{
  stateCopy = state;
  v4 = self->_contentFilterState;
  contentFilterState = v4;
  if (v4 != stateCopy)
  {
    v6 = [(PXContentFilterState *)v4 isEqual:stateCopy];

    if (v6)
    {
      goto LABEL_5;
    }

    v7 = stateCopy;
    contentFilterState = self->_contentFilterState;
    self->_contentFilterState = v7;
  }

LABEL_5:
  [(PXFilterFooterView *)self _updateDisplay];
}

- (void)setLibraryFilterState:(id)state
{
  stateCopy = state;
  v4 = self->_libraryFilterState;
  libraryFilterState = v4;
  if (v4 != stateCopy)
  {
    v6 = [(PXLibraryFilterState *)v4 isEqual:stateCopy];

    if (v6)
    {
      goto LABEL_5;
    }

    v7 = stateCopy;
    libraryFilterState = self->_libraryFilterState;
    self->_libraryFilterState = v7;
  }

LABEL_5:
  [(PXFilterFooterView *)self _updateDisplay];
}

- (void)setSharedLibraryStatusProvider:(id)provider
{
  providerCopy = provider;
  v5 = self->_sharedLibraryStatusProvider;
  libraryFilterState = v5;
  if (v5 != providerCopy)
  {
    v7 = [(PXSharedLibraryStatusProvider *)v5 isEqual:providerCopy];

    if (v7)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_sharedLibraryStatusProvider, provider);
    v8 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:providerCopy];
    libraryFilterState = self->_libraryFilterState;
    self->_libraryFilterState = v8;
  }

LABEL_5:
  [(PXFilterFooterView *)self _updateDisplay];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PXFilterFooterView;
  changeCopy = change;
  [(PXFilterFooterView *)&v8 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(PXFilterFooterView *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(PXFilterFooterView *)self _updateDisplay];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXFilterFooterView;
  [(PXFilterFooterView *)&v3 layoutSubviews];
  [(PXFilterFooterView *)self bounds];
  [(PXFilterFooterView *)self _performLayoutInRect:1 updateSubviewFrames:?];
}

- (CGSize)sizeThatFitsCaption:(CGSize)caption
{
  [(UILabel *)self->_captionLabel sizeThatFits:caption.width, caption.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PXFilterFooterView *)self _performLayoutInRect:0 updateSubviewFrames:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PXFilterFooterView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = PXFilterFooterView;
  v3 = [(PXFilterFooterView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = MEMORY[0x1A590C430](10, 0x8000, 9);
    [(UILabel *)v5 setFont:v6];

    [(UILabel *)v5 setLineBreakMode:4];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v5 setTextColor:secondaryLabelColor];

    [(PXFilterFooterView *)v3 addSubview:v5];
    captionLabel = v3->_captionLabel;
    v3->_captionLabel = v5;
    v9 = v5;

    v10 = [MEMORY[0x1E69DC738] buttonWithType:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIButton *)v10 setBackgroundColor:clearColor];

    [(UIButton *)v10 setContentHorizontalAlignment:1];
    [(UIButton *)v10 addTarget:v3 action:sel__showFilterUI_ forControlEvents:64];
    [(PXFilterFooterView *)v3 addSubview:v10];
    filterButton = v3->_filterButton;
    v3->_filterButton = v10;
  }

  return v3;
}

- (CGSize)_performLayoutInRect:(CGRect)rect updateSubviewFrames:(BOOL)frames
{
  framesCopy = frames;
  height = rect.size.height;
  width = rect.size.width;
  v8 = self->_captionLabel;
  v9 = self->_filterButton;
  [(UILabel *)v8 sizeThatFits:width, height];
  UISizeRoundToViewScale();
  v11 = v10;
  v13 = v12;
  [(UIButton *)v9 sizeThatFits:width, height];
  UISizeRoundToViewScale();
  titleLabel = [(UIButton *)v9 titleLabel];
  [titleLabel sizeToFit];
  [titleLabel frame];
  v16 = v15;
  [titleLabel frame];
  if (v13 >= v17)
  {
    v18 = v13;
  }

  else
  {
    v18 = v17;
  }

  if (framesCopy)
  {
    v19 = v17;
    if (v16 >= width - v11 + -2.0)
    {
      v16 = width - v11 + -2.0;
    }

    v27 = (v18 - v17) * 0.5;
    v20 = (width - (v11 + 2.0 + v16)) * 0.5;
    effectiveUserInterfaceLayoutDirection = [(PXFilterFooterView *)self effectiveUserInterfaceLayoutDirection];
    v22 = v16 + v20 + 2.0;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v23 = (width - (v11 + 2.0 + v16)) * 0.5;
    }

    else
    {
      v23 = v11 + v20 + 2.0;
    }

    if (effectiveUserInterfaceLayoutDirection != 1)
    {
      v22 = (width - (v11 + 2.0 + v16)) * 0.5;
    }

    [(UILabel *)v8 setFrame:v22, v26, v11, v13];
    [(UIButton *)v9 setFrame:v23, v27, v16, v19];
  }

  v24 = width;
  v25 = v18;
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)_updateDisplay
{
  v18[3] = *MEMORY[0x1E69E9840];
  isFiltering = [(PXContentFilterState *)self->_contentFilterState isFiltering];
  libraryFilterState = [(PXFilterFooterView *)self libraryFilterState];
  if ([libraryFilterState isFiltering])
  {
    localizedFooterDescription = [libraryFilterState localizedFooterDescription];
    sharedLibraryStatusProvider = [(PXFilterFooterView *)self sharedLibraryStatusProvider];
    if (!(isFiltering | (([sharedLibraryStatusProvider hasPreview] & 1) == 0)))
    {
      viewMode = [libraryFilterState viewMode];

      if (viewMode != 2)
      {
        goto LABEL_7;
      }

      PXLocalizedSharedLibraryString(@"PXSharedLibrary_FilterFooter_Previewing");
      localizedFooterDescription = sharedLibraryStatusProvider = localizedFooterDescription;
    }
  }

  else
  {
    localizedFooterDescription = 0;
  }

LABEL_7:
  [(UILabel *)self->_captionLabel setText:0];
  if (localizedFooterDescription != 0 && isFiltering)
  {
    PXLocalizedStringFromTable(@"PXContentFilterFooterCaptionFilteredBy_Lowercase", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedSharedLibraryString(@"PXSharedLibrary_FilterFooterFormat");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  if (localizedFooterDescription)
  {
    [(UILabel *)self->_captionLabel setText:localizedFooterDescription];
    if (!isFiltering)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!isFiltering)
    {
LABEL_15:
      [(UIButton *)self->_filterButton setAttributedTitle:0 forState:0];
      titleLabel = [(UIButton *)self->_filterButton titleLabel];
      [titleLabel setText:0];
      goto LABEL_16;
    }

    v8 = PXLocalizedStringFromTable(@"PXContentFilterFooterCaptionFilteredBy", @"PhotosUICore");
    [(UILabel *)self->_captionLabel setText:v8];
  }

  titleLabel = [(PXContentFilterState *)self->_contentFilterState localizedFooterDescription];
  v10 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v10 setLineBreakMode:4];
  v17[0] = *MEMORY[0x1E69DB648];
  v11 = MEMORY[0x1A590C430](10, 0x8000, 9);
  v12 = *MEMORY[0x1E69DB688];
  v18[0] = v11;
  v18[1] = v10;
  v13 = *MEMORY[0x1E69DB650];
  v17[1] = v12;
  v17[2] = v13;
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v18[2] = systemBlueColor;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:titleLabel attributes:v15];
  [(UIButton *)self->_filterButton setAttributedTitle:v16 forState:0];

LABEL_16:
  [(PXFilterFooterView *)self setNeedsLayout];
}

- (void)_showFilterUI:(id)i
{
  iCopy = i;
  delegate = [(PXFilterFooterView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate filterFooterViewDidTapShowFilter:self sender:iCopy];
  }
}

@end