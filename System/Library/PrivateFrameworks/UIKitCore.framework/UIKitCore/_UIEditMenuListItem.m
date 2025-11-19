@interface _UIEditMenuListItem
+ (id)itemWithMenuElement:(id)a3 preferredDisplayMode:(unint64_t)a4;
+ (id)itemWithTitle:(id)a3;
- (BOOL)hidesImageForTraitCollection:(id)a3;
- (BOOL)hidesTitleForTraitCollection:(id)a3;
- (id)description;
@end

@implementation _UIEditMenuListItem

+ (id)itemWithMenuElement:(id)a3 preferredDisplayMode:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__150;
  v37 = __Block_byref_object_dispose__150;
  v38 = 0;
  if ([v5 _isLeaf])
  {
    v7 = v5;
    v8 = [v7 attributes];
    v9 = [v7 attributes];
    if ([v7 state] == 1)
    {
      v10 = [v7 selectedImage];
    }

    else
    {
      v10 = 0;
    }

    v11 = v9 & 2 | (v8 & 1);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v5;
    v13 = [v12 contentView];
  }

  else
  {
    v13 = 0;
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
  [v5 _acceptMenuVisit:0 commandVisit:v32 actionVisit:v31 deferredElementVisit:0];
  v14 = [v34[5] localizedStringForLocalization:0];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [v5 title];
  }

  v17 = v16;

  v18 = [v5 image];
  v19 = v34[5];
  if (v19)
  {
    v20 = [v19 glyph];
    v21 = [UIImage systemImageNamed:v20];

    v18 = v21;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_18;
    }

    v20 = v18;
    v18 = v10;
  }

LABEL_18:
  if ([v5 _preferredDisplayMode])
  {
    a4 = [v5 _preferredDisplayMode];
  }

  if (a4 == 1)
  {
    v22 = 2;
  }

  else
  {
    v22 = a4 == 3;
  }

  v23 = *(v6 + 16);
  *(v6 + 16) = v5;
  v24 = v5;

  objc_storeStrong((v6 + 40), v34[5]);
  v25 = *(v6 + 24);
  *(v6 + 24) = v17;
  v26 = v17;

  v27 = *(v6 + 32);
  *(v6 + 32) = v18;
  v28 = v18;

  *(v6 + 72) = v22;
  v29 = *(v6 + 56);
  *(v6 + 48) = v11;
  *(v6 + 56) = v13;

  *(v6 + 9) = 0;
  _Block_object_dispose(&v33, 8);

  return v6;
}

+ (id)itemWithTitle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  *(v4 + 72) = 0;
  *(v4 + 9) = 0;

  return v4;
}

- (BOOL)hidesTitleForTraitCollection:(id)a3
{
  v4 = [a3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

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

- (BOOL)hidesImageForTraitCollection:(id)a3
{
  v4 = [a3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

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
  v4 = [(_UIEditMenuListItem *)self title];

  if (v4)
  {
    v5 = [(_UIEditMenuListItem *)self title];
    v6 = [v3 appendName:@"title" object:v5];
  }

  v7 = [(_UIEditMenuListItem *)self image];

  if (v7)
  {
    v8 = [(_UIEditMenuListItem *)self image];
    v9 = [v3 appendName:@"image" object:v8 usingLightweightDescription:1];
  }

  v10 = [(_UIEditMenuListItem *)self pasteVariant];

  if (v10)
  {
    v11 = [(_UIEditMenuListItem *)self pasteVariant];
    v12 = [v3 appendName:@"pasteVariant" object:v11];
  }

  if ([(_UIEditMenuListItem *)self options])
  {
    v13 = [(_UIEditMenuListItem *)self options];
    v14 = [MEMORY[0x1E695DF70] array];
    v15 = v14;
    if (v13)
    {
      [v14 addObject:@".disabled"];
    }

    if ((v13 & 2) != 0)
    {
      [v15 addObject:@".destructive"];
    }

    v16 = MEMORY[0x1E696AEC0];
    v17 = [v15 componentsJoinedByString:@"|"];
    v18 = [v16 stringWithFormat:@"(%@)", v17];

    v19 = [v3 appendName:@"options" object:v18];
  }

  v20 = [(_UIEditMenuListItem *)self displayMode];
  v21 = @".titleOnly";
  if (v20 == 1)
  {
    v21 = @".imageOnly";
  }

  if (v20 == 2)
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

  v26 = [(_UIEditMenuListItem *)self customView];

  if (v26)
  {
    v27 = [(_UIEditMenuListItem *)self customView];
    v28 = [v3 appendName:@"customView" object:v27 usingLightweightDescription:1];
  }

  v29 = [(_UIEditMenuListItem *)self menuElement];
  v30 = [v3 appendName:@"menuElement" object:v29 usingLightweightDescription:1];

  v31 = [v3 string];

  return v31;
}

@end