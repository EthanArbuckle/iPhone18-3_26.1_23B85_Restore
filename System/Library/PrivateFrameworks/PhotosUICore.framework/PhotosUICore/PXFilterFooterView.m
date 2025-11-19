@interface PXFilterFooterView
- (CGSize)_performLayoutInRect:(CGRect)a3 updateSubviewFrames:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFitsCaption:(CGSize)a3;
- (PXFilterFooterView)initWithFrame:(CGRect)a3;
- (PXFilterFooterViewDelegate)delegate;
- (void)_showFilterUI:(id)a3;
- (void)_updateDisplay;
- (void)layoutSubviews;
- (void)setContentFilterState:(id)a3;
- (void)setLibraryFilterState:(id)a3;
- (void)setSharedLibraryStatusProvider:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PXFilterFooterView

- (PXFilterFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setContentFilterState:(id)a3
{
  v8 = a3;
  v4 = self->_contentFilterState;
  contentFilterState = v4;
  if (v4 != v8)
  {
    v6 = [(PXContentFilterState *)v4 isEqual:v8];

    if (v6)
    {
      goto LABEL_5;
    }

    v7 = v8;
    contentFilterState = self->_contentFilterState;
    self->_contentFilterState = v7;
  }

LABEL_5:
  [(PXFilterFooterView *)self _updateDisplay];
}

- (void)setLibraryFilterState:(id)a3
{
  v8 = a3;
  v4 = self->_libraryFilterState;
  libraryFilterState = v4;
  if (v4 != v8)
  {
    v6 = [(PXLibraryFilterState *)v4 isEqual:v8];

    if (v6)
    {
      goto LABEL_5;
    }

    v7 = v8;
    libraryFilterState = self->_libraryFilterState;
    self->_libraryFilterState = v7;
  }

LABEL_5:
  [(PXFilterFooterView *)self _updateDisplay];
}

- (void)setSharedLibraryStatusProvider:(id)a3
{
  v9 = a3;
  v5 = self->_sharedLibraryStatusProvider;
  libraryFilterState = v5;
  if (v5 != v9)
  {
    v7 = [(PXSharedLibraryStatusProvider *)v5 isEqual:v9];

    if (v7)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_sharedLibraryStatusProvider, a3);
    v8 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v9];
    libraryFilterState = self->_libraryFilterState;
    self->_libraryFilterState = v8;
  }

LABEL_5:
  [(PXFilterFooterView *)self _updateDisplay];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PXFilterFooterView;
  v4 = a3;
  [(PXFilterFooterView *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(PXFilterFooterView *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (v5 != v7)
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

- (CGSize)sizeThatFitsCaption:(CGSize)a3
{
  [(UILabel *)self->_captionLabel sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PXFilterFooterView *)self _performLayoutInRect:0 updateSubviewFrames:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PXFilterFooterView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = PXFilterFooterView;
  v3 = [(PXFilterFooterView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = MEMORY[0x1A590C430](10, 0x8000, 9);
    [(UILabel *)v5 setFont:v6];

    [(UILabel *)v5 setLineBreakMode:4];
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v5 setTextColor:v7];

    [(PXFilterFooterView *)v3 addSubview:v5];
    captionLabel = v3->_captionLabel;
    v3->_captionLabel = v5;
    v9 = v5;

    v10 = [MEMORY[0x1E69DC738] buttonWithType:0];
    v11 = [MEMORY[0x1E69DC888] clearColor];
    [(UIButton *)v10 setBackgroundColor:v11];

    [(UIButton *)v10 setContentHorizontalAlignment:1];
    [(UIButton *)v10 addTarget:v3 action:sel__showFilterUI_ forControlEvents:64];
    [(PXFilterFooterView *)v3 addSubview:v10];
    filterButton = v3->_filterButton;
    v3->_filterButton = v10;
  }

  return v3;
}

- (CGSize)_performLayoutInRect:(CGRect)a3 updateSubviewFrames:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  v8 = self->_captionLabel;
  v9 = self->_filterButton;
  [(UILabel *)v8 sizeThatFits:width, height];
  UISizeRoundToViewScale();
  v11 = v10;
  v13 = v12;
  [(UIButton *)v9 sizeThatFits:width, height];
  UISizeRoundToViewScale();
  v14 = [(UIButton *)v9 titleLabel];
  [v14 sizeToFit];
  [v14 frame];
  v16 = v15;
  [v14 frame];
  if (v13 >= v17)
  {
    v18 = v13;
  }

  else
  {
    v18 = v17;
  }

  if (v4)
  {
    v19 = v17;
    if (v16 >= width - v11 + -2.0)
    {
      v16 = width - v11 + -2.0;
    }

    v27 = (v18 - v17) * 0.5;
    v20 = (width - (v11 + 2.0 + v16)) * 0.5;
    v21 = [(PXFilterFooterView *)self effectiveUserInterfaceLayoutDirection];
    v22 = v16 + v20 + 2.0;
    if (v21 == 1)
    {
      v23 = (width - (v11 + 2.0 + v16)) * 0.5;
    }

    else
    {
      v23 = v11 + v20 + 2.0;
    }

    if (v21 != 1)
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
  v3 = [(PXContentFilterState *)self->_contentFilterState isFiltering];
  v4 = [(PXFilterFooterView *)self libraryFilterState];
  if ([v4 isFiltering])
  {
    v5 = [v4 localizedFooterDescription];
    v6 = [(PXFilterFooterView *)self sharedLibraryStatusProvider];
    if (!(v3 | (([v6 hasPreview] & 1) == 0)))
    {
      v7 = [v4 viewMode];

      if (v7 != 2)
      {
        goto LABEL_7;
      }

      PXLocalizedSharedLibraryString(@"PXSharedLibrary_FilterFooter_Previewing");
      v5 = v6 = v5;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_7:
  [(UILabel *)self->_captionLabel setText:0];
  if (v5 != 0 && v3)
  {
    PXLocalizedStringFromTable(@"PXContentFilterFooterCaptionFilteredBy_Lowercase", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedSharedLibraryString(@"PXSharedLibrary_FilterFooterFormat");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  if (v5)
  {
    [(UILabel *)self->_captionLabel setText:v5];
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
LABEL_15:
      [(UIButton *)self->_filterButton setAttributedTitle:0 forState:0];
      v9 = [(UIButton *)self->_filterButton titleLabel];
      [v9 setText:0];
      goto LABEL_16;
    }

    v8 = PXLocalizedStringFromTable(@"PXContentFilterFooterCaptionFilteredBy", @"PhotosUICore");
    [(UILabel *)self->_captionLabel setText:v8];
  }

  v9 = [(PXContentFilterState *)self->_contentFilterState localizedFooterDescription];
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
  v14 = [MEMORY[0x1E69DC888] systemBlueColor];
  v18[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9 attributes:v15];
  [(UIButton *)self->_filterButton setAttributedTitle:v16 forState:0];

LABEL_16:
  [(PXFilterFooterView *)self setNeedsLayout];
}

- (void)_showFilterUI:(id)a3
{
  v5 = a3;
  v4 = [(PXFilterFooterView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 filterFooterViewDidTapShowFilter:self sender:v5];
  }
}

@end