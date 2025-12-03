@interface _UIEditMenuListItem
+ (id)itemWithMenuElement:(id)element preferredDisplayMode:(unint64_t)mode;
+ (id)itemWithTitle:(id)title;
- (BOOL)hidesImageForTraitCollection:(id)collection;
- (BOOL)hidesTitleForTraitCollection:(id)collection;
- (id)description;
@end

@implementation _UIEditMenuListItem

+ (id)itemWithMenuElement:(id)element preferredDisplayMode:(unint64_t)mode
{
  elementCopy = element;
  v6 = objc_opt_new();
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__150;
  v37 = __Block_byref_object_dispose__150;
  v38 = 0;
  if ([elementCopy _isLeaf])
  {
    v7 = elementCopy;
    attributes = [v7 attributes];
    attributes2 = [v7 attributes];
    if ([v7 state] == 1)
    {
      selectedImage = [v7 selectedImage];
    }

    else
    {
      selectedImage = 0;
    }

    v11 = attributes2 & 2 | (attributes & 1);
  }

  else
  {
    selectedImage = 0;
    v11 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = elementCopy;
    contentView = [v12 contentView];
  }

  else
  {
    contentView = 0;
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __64___UIEditMenuListItem_itemWithMenuElement_preferredDisplayMode___block_invoke;
  v32[3] = &unk_1E711A0B0;
  v32[4] = &v33;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __64___UIEditMenuListItem_itemWithMenuElement_preferredDisplayMode___block_invoke_2;
  v31[3] = &unk_1E711A0D8;
  v31[4] = &v33;
  [elementCopy _acceptMenuVisit:0 commandVisit:v32 actionVisit:v31 deferredElementVisit:0];
  v14 = [v34[5] localizedStringForLocalization:0];
  v15 = v14;
  if (v14)
  {
    title = v14;
  }

  else
  {
    title = [elementCopy title];
  }

  v17 = title;

  image = [elementCopy image];
  v19 = v34[5];
  if (v19)
  {
    glyph = [v19 glyph];
    v21 = [UIImage systemImageNamed:glyph];

    image = v21;
  }

  else
  {
    if (!selectedImage)
    {
      goto LABEL_18;
    }

    glyph = image;
    image = selectedImage;
  }

LABEL_18:
  if ([elementCopy _preferredDisplayMode])
  {
    mode = [elementCopy _preferredDisplayMode];
  }

  if (mode == 1)
  {
    v22 = 2;
  }

  else
  {
    v22 = mode == 3;
  }

  v23 = *(v6 + 16);
  *(v6 + 16) = elementCopy;
  v24 = elementCopy;

  objc_storeStrong((v6 + 40), v34[5]);
  v25 = *(v6 + 24);
  *(v6 + 24) = v17;
  v26 = v17;

  v27 = *(v6 + 32);
  *(v6 + 32) = image;
  v28 = image;

  *(v6 + 72) = v22;
  v29 = *(v6 + 56);
  *(v6 + 48) = v11;
  *(v6 + 56) = contentView;

  *(v6 + 9) = 0;
  _Block_object_dispose(&v33, 8);

  return v6;
}

+ (id)itemWithTitle:(id)title
{
  titleCopy = title;
  v4 = objc_opt_new();
  v5 = *(v4 + 24);
  *(v4 + 24) = titleCopy;

  *(v4 + 72) = 0;
  *(v4 + 9) = 0;

  return v4;
}

- (BOOL)hidesTitleForTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (![(NSString *)self->_title length])
  {
    return 1;
  }

  if (self->_image)
  {
    return self->_displayMode == 1 && !IsAccessibilityCategory;
  }

  return 0;
}

- (BOOL)hidesImageForTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  image = self->_image;
  v7 = [(NSString *)self->_title length];
  if (IsAccessibilityCategory)
  {
    v8 = v7 != 0;
  }

  else if (v7)
  {
    v8 = self->_displayMode == 0;
  }

  else
  {
    v8 = 0;
  }

  return !image || v8;
}

- (id)description
{
  v3 = [UIDescriptionBuilder descriptionBuilderWithObject:self];
  title = [(_UIEditMenuListItem *)self title];

  if (title)
  {
    title2 = [(_UIEditMenuListItem *)self title];
    v6 = [v3 appendName:@"title" object:title2];
  }

  image = [(_UIEditMenuListItem *)self image];

  if (image)
  {
    image2 = [(_UIEditMenuListItem *)self image];
    v9 = [v3 appendName:@"image" object:image2 usingLightweightDescription:1];
  }

  pasteVariant = [(_UIEditMenuListItem *)self pasteVariant];

  if (pasteVariant)
  {
    pasteVariant2 = [(_UIEditMenuListItem *)self pasteVariant];
    v12 = [v3 appendName:@"pasteVariant" object:pasteVariant2];
  }

  if ([(_UIEditMenuListItem *)self options])
  {
    options = [(_UIEditMenuListItem *)self options];
    array = [MEMORY[0x1E695DF70] array];
    v15 = array;
    if (options)
    {
      [array addObject:@".disabled"];
    }

    if ((options & 2) != 0)
    {
      [v15 addObject:@".destructive"];
    }

    v16 = MEMORY[0x1E696AEC0];
    v17 = [v15 componentsJoinedByString:@"|"];
    v18 = [v16 stringWithFormat:@"(%@)", v17];

    v19 = [v3 appendName:@"options" object:v18];
  }

  displayMode = [(_UIEditMenuListItem *)self displayMode];
  v21 = @".titleOnly";
  if (displayMode == 1)
  {
    v21 = @".imageOnly";
  }

  if (displayMode == 2)
  {
    v22 = @".imageAndTitle";
  }

  else
  {
    v22 = v21;
  }

  v23 = [v3 appendName:@"displayMode" object:v22];
  [(_UIEditMenuListItem *)self overrideMinimumWidth];
  if (v24 > 0.0)
  {
    [(_UIEditMenuListItem *)self overrideMinimumWidth];
    v25 = [v3 appendName:@"overrideMinimumWidth" doubleValue:?];
  }

  customView = [(_UIEditMenuListItem *)self customView];

  if (customView)
  {
    customView2 = [(_UIEditMenuListItem *)self customView];
    v28 = [v3 appendName:@"customView" object:customView2 usingLightweightDescription:1];
  }

  menuElement = [(_UIEditMenuListItem *)self menuElement];
  v30 = [v3 appendName:@"menuElement" object:menuElement usingLightweightDescription:1];

  string = [v3 string];

  return string;
}

@end