@interface PUOutlineCell
- (BOOL)_hasEditSpecificAccessories;
- (PUOutlineCellDelegate)delegate;
- (id)_editingConfigurationForState:(id)a3;
- (void)_renameItem:(id)a3 toTitle:(id)a4;
- (void)prepareForReuse;
- (void)setImage:(id)a3;
- (void)setItem:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation PUOutlineCell

- (PUOutlineCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_renameItem:(id)a3 toTitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUOutlineCell *)self delegate];
  [v8 outlineCell:self updatedTitle:v6 forItem:v7];
}

- (id)_editingConfigurationForState:(id)a3
{
  v4 = a3;
  v5 = [(PUOutlineCell *)self item];
  if ([v4 isEditing] && (-[PUOutlineCell delegate](self, "delegate"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, v8 = objc_msgSend(v5, "isRenamable"), v7, v8))
  {
    objc_initWeak(&location, self);
    v9 = objc_alloc(MEMORY[0x1E69DD420]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__PUOutlineCell__editingConfigurationForState___block_invoke;
    v12[3] = &unk_1E7B779C8;
    objc_copyWeak(&v14, &location);
    v13 = v5;
    v10 = [v9 initWithDidEndHandler:v12];
    [v10 setUseTextInputAsLabel:1];
    [v10 setShouldEndHandler:&__block_literal_global_20];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __47__PUOutlineCell__editingConfigurationForState___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 proposedReplacementRange];
  v5 = v4;
  v6 = [v12 text];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v12 proposedReplacementText];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_1F2AC6818;
    }

    v10 = [v6 stringByReplacingCharactersInRange:v3 withString:{v5, v9}];

    v6 = v10;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _renameItem:*(a1 + 32) toTitle:v6];
}

BOOL __47__PUOutlineCell__editingConfigurationForState___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 text];
  v3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];
  v5 = [v4 length] != 0;

  return v5;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PUOutlineCell;
  [(PUOutlineCell *)&v4 prepareForReuse];
  [(PUOutlineCell *)self setItem:0];
  image = self->_image;
  self->_image = 0;
}

- (BOOL)_hasEditSpecificAccessories
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(PUOutlineCell *)self accessories];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) displayedState] == 1)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = PUOutlineCell;
  [(PUOutlineCell *)&v51 updateConfigurationUsingState:v4];
  v5 = [(PUOutlineCell *)self item];
  v6 = [MEMORY[0x1E695DF70] array];
  if ([v5 isExpandable])
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DC7C8]);
    [v6 addObject:v7];
  }

  if ([v5 isReorderable] && (objc_msgSend(v5, "isGroup") & 1) == 0)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DC7D0]);
    [v6 addObject:v8];
  }

  if ([v5 isDeletable])
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DC798]);
    [v6 addObject:v9];
  }

  v10 = [v5 accessoryTitle];
  if ([v10 length])
  {
    v11 = [objc_alloc(MEMORY[0x1E69DC7B8]) initWithText:v10];
    [v6 addObject:v11];
  }

  v12 = [v5 accessoryGlyphImageName];
  if ([v12 length])
  {
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:v12];
    v14 = [v13 imageWithRenderingMode:2];

    v15 = [(PUOutlineCell *)self accessoryImageView];

    if (v15)
    {
      v16 = [(PUOutlineCell *)self accessoryImageView];
      [v16 setImage:v14];
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v14];
      [(PUOutlineCell *)self setAccessoryImageView:v16];
    }

    v17 = [(PUOutlineCell *)self accessoryImageView];
    [v17 setTintAdjustmentMode:1];

    v18 = [MEMORY[0x1E69DC888] systemGrayColor];
    v19 = [(PUOutlineCell *)self accessoryImageView];
    [v19 setTintColor:v18];

    v20 = [(PUOutlineCell *)self accessoryImageView];
    [v20 sizeToFit];

    v21 = objc_alloc(MEMORY[0x1E69DC790]);
    v22 = [(PUOutlineCell *)self accessoryImageView];
    v23 = [v21 initWithCustomView:v22 placement:1];

    [v23 setMaintainsFixedSize:1];
    [v6 addObject:v23];
  }

  [(PUOutlineCell *)self setAccessories:v6];
  v24 = [(PUOutlineCell *)self defaultContentConfiguration];
  v25 = [v24 updatedConfigurationForState:v4];

  if (objc_opt_respondsToSelector())
  {
    v26 = [(PUOutlineCell *)self _editingConfigurationForState:v4];
    [v25 _setTextEditingConfiguration:v26];
  }

  v27 = [v5 title];
  [v25 setText:v27];

  v28 = [v25 textProperties];
  v29 = [(PUOutlineCell *)self traitCollection];
  v30 = [v29 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v30))
  {
    v31 = 3;
  }

  else
  {
    v31 = 2;
  }

  [v28 setNumberOfLines:v31];

  [v28 setLineBreakMode:4];
  v32 = [v25 imageProperties];
  v33 = [(PUOutlineCell *)self image];
  [v25 setImage:v33];

  v34 = [MEMORY[0x1E69DCA40] defaultMetrics];
  [v34 scaledValueForValue:28.0];
  v36 = v35;

  [v32 setReservedLayoutSize:{v36, v36}];
  [v32 reservedLayoutSize];
  [v32 setMaximumSize:?];
  [v32 setCornerRadius:v36 / 9.3];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PUOutlineCell_updateConfigurationUsingState___block_invoke;
  aBlock[3] = &unk_1E7B80798;
  v50 = v6;
  v37 = v6;
  v38 = _Block_copy(aBlock);
  if ([v4 isEditing] && (v38[2](v38) & 1) == 0)
  {
    v48 = v5;
    v39 = v4;
    v40 = v12;
    v41 = v10;
    v42 = *MEMORY[0x1E69DDC18];
    [v28 setColorTransformer:*MEMORY[0x1E69DDC18]];
    v43 = v42;
    v10 = v41;
    v12 = v40;
    v4 = v39;
    v5 = v48;
    [v32 setTintColorTransformer:v43];
  }

  [v25 directionalLayoutMargins];
  v45 = v44;
  v47 = v46;
  [v25 setAxesPreservingSuperviewLayoutMargins:3];
  [v25 setDirectionalLayoutMargins:{8.0, v45, 8.0, v47}];
  [(PUOutlineCell *)self setContentConfiguration:v25];
}

- (void)setImage:(id)a3
{
  v8 = a3;
  v5 = self->_image;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(UIImage *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_image, a3);
      [(PUOutlineCell *)self setNeedsUpdateConfiguration];
    }
  }
}

- (void)setItem:(id)a3
{
  v8 = a3;
  v5 = self->_item;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXNavigationListItem *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_item, a3);
      [(PUOutlineCell *)self setNeedsUpdateConfiguration];
    }
  }
}

@end