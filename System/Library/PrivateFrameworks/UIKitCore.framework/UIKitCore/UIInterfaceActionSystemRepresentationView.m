@interface UIInterfaceActionSystemRepresentationView
@end

@implementation UIInterfaceActionSystemRepresentationView

void __99___UIInterfaceActionSystemRepresentationView__reloadHierarchyWithViewsToDisplayWhenContentsVisible__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 32) insertSubview:v3 atIndex:0];
}

void __82___UIInterfaceActionSystemRepresentationView__loadConstraintsForLabelsOnlyDisplay__block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _constraintForVerticallyCenteringLabelsView];
  [v4 addObject:v5];

  v6 = *(a1 + 32);
  v10[0] = v6[64];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v6 _constraintsToEnsureContainerHeightTallEnoughForViews:v7];
  [v4 addObjectsFromArray:v8];

  v9 = [*(a1 + 32) _constraintsForInsettingLabelsViewLeadingAndTrailing];
  [v4 addObjectsFromArray:v9];
}

void __87___UIInterfaceActionSystemRepresentationView__loadConstraintsForLabelsAndImagesDisplay__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) _constraintForVerticallyCenteringLabelsView];
  [v13 addObject:v3];

  if ([*(a1 + 32) _isDisplayingLeadingImageView])
  {
    v4 = [*(a1 + 32) _constraintForBaselineAligningOrVerticallyCenteringImageViewToLabelsView:*(*(a1 + 32) + 496)];
    [v13 addObject:v4];
  }

  if ([*(a1 + 32) _isDisplayingTrailingImageView])
  {
    v5 = [*(a1 + 32) _constraintForBaselineAligningOrVerticallyCenteringImageViewToLabelsView:*(*(a1 + 32) + 504)];
    [v13 addObject:v5];
  }

  v6 = *(a1 + 32);
  v7 = [v6[66] allObjects];
  v8 = [v6 _constraintsToEnsureContainerHeightTallEnoughForViews:v7];
  [v13 addObjectsFromArray:v8];

  v9 = [*(a1 + 32) _constraintsForInsettingImageViewsLeadingAndTrailingEdge];
  [v13 addObjectsFromArray:v9];

  if (*(a1 + 40) == 1)
  {
    v10 = [*(a1 + 32) _constraintsForHorizontallyCenteringLabelsView];
    [v13 addObjectsFromArray:v10];

    v11 = *(a1 + 40) ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = [*(a1 + 32) _constraintsForInsettingLabelsViewLeadingAndTrailingHorizontalEdgeReferenceExact:v11 & 1];
  [v13 addObjectsFromArray:v12];
}

void __87___UIInterfaceActionSystemRepresentationView__loadConstraintsForLabelsAndImagesDisplay__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _constraintsForInsettingLabelsViewLeadingAndTrailingToImageViewsExact:(v3 & 1) == 0];
  [v4 addObjectsFromArray:v5];
}

void __100___UIInterfaceActionSystemRepresentationView__constraintsToEnsureContainerHeightTallEnoughForViews___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [*(a1 + 40) topAnchor];
        v10 = [v8 topAnchor];
        v11 = [v9 constraintLessThanOrEqualToAnchor:v10];

        v12 = [*(a1 + 40) bottomAnchor];
        v13 = [v8 bottomAnchor];
        v14 = [v12 constraintGreaterThanOrEqualToAnchor:v13];

        v21[0] = v11;
        v21[1] = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
        [v3 addObjectsFromArray:v15];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }
}

void __98___UIInterfaceActionSystemRepresentationView__constraintsForInsettingLabelsViewLeadingAndTrailing__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _isDisplayingLeadingImageView];
  v6 = *(a1 + 32);
  if (v5)
  {
    v16 = [v6[62] trailingAnchor];
  }

  else
  {
    v7 = [v6 _horizontalEdgeReference];
    v16 = [v7 leadingAnchor];
  }

  v8 = [*(a1 + 32) _isDisplayingTrailingImageView];
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = [v9[63] leadingAnchor];
  }

  else
  {
    v11 = [v9 _horizontalEdgeReference];
    v10 = [v11 trailingAnchor];
  }

  v12 = [*(*(a1 + 32) + 512) leadingAnchor];
  v13 = [v12 constraintEqualToAnchor:v16];
  [v4 addObject:v13];

  v14 = [*(*(a1 + 32) + 512) trailingAnchor];
  v15 = [v10 constraintEqualToAnchor:v14];
  [v4 addObject:v15];
}

void __116___UIInterfaceActionSystemRepresentationView__constraintsForInsettingLabelsViewLeadingAndTrailingToImageViewsExact___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 40);
  if ([*(a1 + 32) _isDisplayingLeadingImageView])
  {
    v4 = [*(*(a1 + 32) + 512) leadingAnchor];
    v5 = [*(*(a1 + 32) + 496) trailingAnchor];
    v6 = constraintWithAnchorRelatedToAnchor(v4, v3 ^ 1);
    [v10 addObject:v6];
  }

  if ([*(a1 + 32) _isDisplayingTrailingImageView])
  {
    v7 = [*(*(a1 + 32) + 504) leadingAnchor];
    v8 = [*(*(a1 + 32) + 512) trailingAnchor];
    v9 = constraintWithAnchorRelatedToAnchor(v7, v3 ^ 1);
    [v10 addObject:v9];
  }
}

void __127___UIInterfaceActionSystemRepresentationView__constraintsForInsettingLabelsViewLeadingAndTrailingHorizontalEdgeReferenceExact___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = *(a1 + 40);
  if (([*(a1 + 32) _isDisplayingLeadingImageView] & 1) == 0)
  {
    v4 = [*(*(a1 + 32) + 512) leadingAnchor];
    v5 = [*(a1 + 32) _horizontalEdgeReference];
    v6 = [v5 leadingAnchor];
    v7 = constraintWithAnchorRelatedToAnchor(v4, v3 ^ 1);
    [v12 addObject:v7];
  }

  if (([*(a1 + 32) _isDisplayingTrailingImageView] & 1) == 0)
  {
    v8 = [*(a1 + 32) _horizontalEdgeReference];
    v9 = [v8 trailingAnchor];
    v10 = [*(*(a1 + 32) + 512) trailingAnchor];
    v11 = constraintWithAnchorRelatedToAnchor(v9, v3 ^ 1);
    [v12 addObject:v11];
  }
}

void __102___UIInterfaceActionSystemRepresentationView__constraintsForInsettingImageViewsLeadingAndTrailingEdge__block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  if ([*(a1 + 32) _isDisplayingLeadingImageView])
  {
    v3 = [*(a1 + 32) action];
    v4 = [*(*(a1 + 32) + 496) imageProperty];
    [v3 _layoutSizeForImageProperty:v4];
    v6 = v5;

    v7 = [*(*(a1 + 32) + 496) centerXAnchor];
    v8 = [*(a1 + 32) _horizontalEdgeReference];
    v9 = [v8 leadingAnchor];
    v10 = [v7 constraintEqualToAnchor:v9 constant:v6 * 0.5];
    [v19 addObject:v10];
  }

  if ([*(a1 + 32) _isDisplayingTrailingImageView])
  {
    v11 = [*(a1 + 32) action];
    v12 = [*(*(a1 + 32) + 504) imageProperty];
    [v11 _layoutSizeForImageProperty:v12];
    v14 = v13;

    v15 = [*(*(a1 + 32) + 504) centerXAnchor];
    v16 = [*(a1 + 32) _horizontalEdgeReference];
    v17 = [v16 trailingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:v14 * -0.5];
    [v19 addObject:v18];
  }
}

void __80___UIInterfaceActionSystemRepresentationView__activateDisplayedViewsConstraints__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 536) count])
  {
    [v3 addObjectsFromArray:*(*(a1 + 32) + 536)];
  }

  if ([*(*(a1 + 32) + 544) count])
  {
    [v3 addObjectsFromArray:*(*(a1 + 32) + 544)];
  }
}

@end