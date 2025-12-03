@interface PUOutlineCell
- (BOOL)_hasEditSpecificAccessories;
- (PUOutlineCellDelegate)delegate;
- (id)_editingConfigurationForState:(id)state;
- (void)_renameItem:(id)item toTitle:(id)title;
- (void)prepareForReuse;
- (void)setImage:(id)image;
- (void)setItem:(id)item;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation PUOutlineCell

- (PUOutlineCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_renameItem:(id)item toTitle:(id)title
{
  titleCopy = title;
  itemCopy = item;
  delegate = [(PUOutlineCell *)self delegate];
  [delegate outlineCell:self updatedTitle:titleCopy forItem:itemCopy];
}

- (id)_editingConfigurationForState:(id)state
{
  stateCopy = state;
  item = [(PUOutlineCell *)self item];
  if ([stateCopy isEditing] && (-[PUOutlineCell delegate](self, "delegate"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, v8 = objc_msgSend(item, "isRenamable"), v7, v8))
  {
    objc_initWeak(&location, self);
    v9 = objc_alloc(MEMORY[0x1E69DD420]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__PUOutlineCell__editingConfigurationForState___block_invoke;
    v12[3] = &unk_1E7B779C8;
    objc_copyWeak(&v14, &location);
    v13 = item;
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
  accessories = [(PUOutlineCell *)self accessories];
  v3 = [accessories countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(accessories);
        }

        if ([*(*(&v7 + 1) + 8 * i) displayedState] == 1)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [accessories countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  v51.receiver = self;
  v51.super_class = PUOutlineCell;
  [(PUOutlineCell *)&v51 updateConfigurationUsingState:stateCopy];
  item = [(PUOutlineCell *)self item];
  array = [MEMORY[0x1E695DF70] array];
  if ([item isExpandable])
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DC7C8]);
    [array addObject:v7];
  }

  if ([item isReorderable] && (objc_msgSend(item, "isGroup") & 1) == 0)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DC7D0]);
    [array addObject:v8];
  }

  if ([item isDeletable])
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DC798]);
    [array addObject:v9];
  }

  accessoryTitle = [item accessoryTitle];
  if ([accessoryTitle length])
  {
    v11 = [objc_alloc(MEMORY[0x1E69DC7B8]) initWithText:accessoryTitle];
    [array addObject:v11];
  }

  accessoryGlyphImageName = [item accessoryGlyphImageName];
  if ([accessoryGlyphImageName length])
  {
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:accessoryGlyphImageName];
    v14 = [v13 imageWithRenderingMode:2];

    accessoryImageView = [(PUOutlineCell *)self accessoryImageView];

    if (accessoryImageView)
    {
      accessoryImageView2 = [(PUOutlineCell *)self accessoryImageView];
      [accessoryImageView2 setImage:v14];
    }

    else
    {
      accessoryImageView2 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v14];
      [(PUOutlineCell *)self setAccessoryImageView:accessoryImageView2];
    }

    accessoryImageView3 = [(PUOutlineCell *)self accessoryImageView];
    [accessoryImageView3 setTintAdjustmentMode:1];

    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    accessoryImageView4 = [(PUOutlineCell *)self accessoryImageView];
    [accessoryImageView4 setTintColor:systemGrayColor];

    accessoryImageView5 = [(PUOutlineCell *)self accessoryImageView];
    [accessoryImageView5 sizeToFit];

    v21 = objc_alloc(MEMORY[0x1E69DC790]);
    accessoryImageView6 = [(PUOutlineCell *)self accessoryImageView];
    v23 = [v21 initWithCustomView:accessoryImageView6 placement:1];

    [v23 setMaintainsFixedSize:1];
    [array addObject:v23];
  }

  [(PUOutlineCell *)self setAccessories:array];
  defaultContentConfiguration = [(PUOutlineCell *)self defaultContentConfiguration];
  v25 = [defaultContentConfiguration updatedConfigurationForState:stateCopy];

  if (objc_opt_respondsToSelector())
  {
    v26 = [(PUOutlineCell *)self _editingConfigurationForState:stateCopy];
    [v25 _setTextEditingConfiguration:v26];
  }

  title = [item title];
  [v25 setText:title];

  textProperties = [v25 textProperties];
  traitCollection = [(PUOutlineCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v31 = 3;
  }

  else
  {
    v31 = 2;
  }

  [textProperties setNumberOfLines:v31];

  [textProperties setLineBreakMode:4];
  imageProperties = [v25 imageProperties];
  image = [(PUOutlineCell *)self image];
  [v25 setImage:image];

  defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
  [defaultMetrics scaledValueForValue:28.0];
  v36 = v35;

  [imageProperties setReservedLayoutSize:{v36, v36}];
  [imageProperties reservedLayoutSize];
  [imageProperties setMaximumSize:?];
  [imageProperties setCornerRadius:v36 / 9.3];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PUOutlineCell_updateConfigurationUsingState___block_invoke;
  aBlock[3] = &unk_1E7B80798;
  v50 = array;
  v37 = array;
  v38 = _Block_copy(aBlock);
  if ([stateCopy isEditing] && (v38[2](v38) & 1) == 0)
  {
    v48 = item;
    v39 = stateCopy;
    v40 = accessoryGlyphImageName;
    v41 = accessoryTitle;
    v42 = *MEMORY[0x1E69DDC18];
    [textProperties setColorTransformer:*MEMORY[0x1E69DDC18]];
    v43 = v42;
    accessoryTitle = v41;
    accessoryGlyphImageName = v40;
    stateCopy = v39;
    item = v48;
    [imageProperties setTintColorTransformer:v43];
  }

  [v25 directionalLayoutMargins];
  v45 = v44;
  v47 = v46;
  [v25 setAxesPreservingSuperviewLayoutMargins:3];
  [v25 setDirectionalLayoutMargins:{8.0, v45, 8.0, v47}];
  [(PUOutlineCell *)self setContentConfiguration:v25];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  v5 = self->_image;
  v6 = v5;
  if (v5 == imageCopy)
  {
  }

  else
  {
    v7 = [(UIImage *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_image, image);
      [(PUOutlineCell *)self setNeedsUpdateConfiguration];
    }
  }
}

- (void)setItem:(id)item
{
  itemCopy = item;
  v5 = self->_item;
  v6 = v5;
  if (v5 == itemCopy)
  {
  }

  else
  {
    v7 = [(PXNavigationListItem *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_item, item);
      [(PUOutlineCell *)self setNeedsUpdateConfiguration];
    }
  }
}

@end