@interface _UIInterfaceActionSystemRepresentationView
- (_UIInterfaceActionSystemRepresentationView)initWithAction:(id)a3;
- (id)_constraintForBaselineAligningOrVerticallyCenteringImageViewToLabelsView:(id)a3;
- (id)_constraintForVerticallyCenteringLabelsView;
- (id)_constraintsForHorizontallyCenteringLabelsView;
- (id)_constraintsForInsettingImageViewsLeadingAndTrailingEdge;
- (id)_constraintsForInsettingLabelsViewLeadingAndTrailing;
- (id)_constraintsForInsettingLabelsViewLeadingAndTrailingHorizontalEdgeReferenceExact:(BOOL)a3;
- (id)_constraintsForInsettingLabelsViewLeadingAndTrailingToImageViewsExact:(BOOL)a3;
- (id)_constraintsToEnsureContainerHeightTallEnoughForViews:(id)a3;
- (void)_activateDisplayedViewsConstraints;
- (void)_applyVisualStyle;
- (void)_arrangeDisplayedViews;
- (void)_invalidateDisplayedViewsConstraints;
- (void)_loadConstraintsForDisplayedViews;
- (void)_loadConstraintsForLabelsAndImagesDisplay;
- (void)_loadConstraintsForLabelsOnlyDisplay;
- (void)_reloadHierarchyWithViewsToDisplayWhenContentsVisible;
- (void)_reloadViewsToDisplayWhenContentsVisible;
- (void)_removeAllDisplayedViews;
- (void)_updateDisplayedViewsConstraintsVisualStyleConstants;
- (void)interfaceAction:(id)a3 reloadDisplayedContentActionProperties:(id)a4;
- (void)interfaceAction:(id)a3 reloadDisplayedContentVisualStyle:(id)a4;
- (void)loadContents;
- (void)setViewsToDisplayWhenContentsVisible:(id)a3;
- (void)updateConstraints;
@end

@implementation _UIInterfaceActionSystemRepresentationView

- (_UIInterfaceActionSystemRepresentationView)initWithAction:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UIInterfaceActionSystemRepresentationView;
  v3 = [(UIInterfaceActionRepresentationView *)&v9 initWithAction:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFD8] set];
    viewsToDisplayWhenContentsVisible = v3->_viewsToDisplayWhenContentsVisible;
    v3->_viewsToDisplayWhenContentsVisible = v4;

    v6 = [MEMORY[0x1E695DFD8] set];
    displayedViews = v3->_displayedViews;
    v3->_displayedViews = v6;

    [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(_UIInterfaceActionSystemRepresentationView *)v3 _invalidateDisplayedViewsConstraints];
    [(_UIInterfaceActionSystemRepresentationView *)v3 _reloadViewsToDisplayWhenContentsVisible];
  }

  return v3;
}

- (void)setViewsToDisplayWhenContentsVisible:(id)a3
{
  v5 = a3;
  if (([(NSSet *)self->_viewsToDisplayWhenContentsVisible isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewsToDisplayWhenContentsVisible, a3);
    [(_UIInterfaceActionSystemRepresentationView *)self _arrangeDisplayedViews];
  }
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = _UIInterfaceActionSystemRepresentationView;
  [(UIInterfaceActionRepresentationView *)&v3 updateConstraints];
  [(_UIInterfaceActionSystemRepresentationView *)self _loadConstraintsForDisplayedViews];
}

- (void)loadContents
{
  v3 = [_UIInterfaceActionImagePropertyView alloc];
  v4 = [(UIInterfaceActionRepresentationView *)self action];
  v5 = [(_UIInterfaceActionImagePropertyView *)v3 initWithAction:v4 imageProperty:0x1EFB16430];
  leadingImageView = self->_leadingImageView;
  self->_leadingImageView = v5;

  [(UIView *)self->_leadingImageView _setLayoutDebuggingIdentifier:@"actionRep.leadingImageView"];
  v7 = [_UIInterfaceActionImagePropertyView alloc];
  v8 = [(UIInterfaceActionRepresentationView *)self action];
  v9 = [(_UIInterfaceActionImagePropertyView *)v7 initWithAction:v8 imageProperty:0x1EFB16470];
  trailingImageView = self->_trailingImageView;
  self->_trailingImageView = v9;

  [(UIView *)self->_trailingImageView _setLayoutDebuggingIdentifier:@"actionRep.trailingImageView"];
  v11 = [_UIInterfaceActionLabelsPropertyView alloc];
  v12 = [(UIInterfaceActionRepresentationView *)self action];
  v13 = [(_UIInterfaceActionLabelsPropertyView *)v11 initWithAction:v12];
  labelsView = self->_labelsView;
  self->_labelsView = v13;

  [(UIView *)self->_labelsView _setLayoutDebuggingIdentifier:@"actionRep.labelsView"];
  [(_UIInterfaceActionSystemRepresentationView *)self _reloadViewsToDisplayWhenContentsVisible];
  [(_UIInterfaceActionSystemRepresentationView *)self _applyVisualStyleToDisplayedViews];

  [(_UIInterfaceActionSystemRepresentationView *)self _arrangeDisplayedViews];
}

- (void)interfaceAction:(id)a3 reloadDisplayedContentActionProperties:(id)a4
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIInterfaceActionSystemRepresentationView;
  v6 = a4;
  [(UIInterfaceActionRepresentationView *)&v8 interfaceAction:a3 reloadDisplayedContentActionProperties:v6];
  v9[0] = 0x1EFB16430;
  v9[1] = 0x1EFB16450;
  v9[2] = 0x1EFB16470;
  v9[3] = 0x1EFB16490;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  LODWORD(a3) = [UIInterfaceAction changedProperties:v6 containsAny:v7];

  if (a3)
  {
    [(_UIInterfaceActionSystemRepresentationView *)self _reloadViewsToDisplayWhenContentsVisible];
  }
}

- (void)interfaceAction:(id)a3 reloadDisplayedContentVisualStyle:(id)a4
{
  v4.receiver = self;
  v4.super_class = _UIInterfaceActionSystemRepresentationView;
  [(UIInterfaceActionRepresentationView *)&v4 interfaceAction:a3 reloadDisplayedContentVisualStyle:a4];
}

- (void)_applyVisualStyle
{
  v3.receiver = self;
  v3.super_class = _UIInterfaceActionSystemRepresentationView;
  [(UIInterfaceActionRepresentationView *)&v3 _applyVisualStyle];
  [(_UIInterfaceActionSystemRepresentationView *)self _applyVisualStyleToDisplayedViews];
}

- (void)_reloadViewsToDisplayWhenContentsVisible
{
  if ([(_UIInterfaceActionSystemRepresentationView *)self _hasLoadedContents])
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    if ([(_UIInterfaceActionImagePropertyView *)self->_leadingImageView isUsedToOccupySpaceIfNoImage])
    {
      [v3 addObject:self->_leadingImageView];
    }

    [v3 addObject:self->_labelsView];
    if ([(_UIInterfaceActionImagePropertyView *)self->_trailingImageView isUsedToOccupySpaceIfNoImage])
    {
      [v3 addObject:self->_trailingImageView];
    }

    [(_UIInterfaceActionSystemRepresentationView *)self setViewsToDisplayWhenContentsVisible:v3];
  }
}

- (void)_arrangeDisplayedViews
{
  [(_UIInterfaceActionSystemRepresentationView *)self _invalidateDisplayedViewsConstraints];
  if ([(UIInterfaceActionRepresentationView *)self _contentsInsertedIntoViewHierarchy])
  {

    [(_UIInterfaceActionSystemRepresentationView *)self _reloadHierarchyWithViewsToDisplayWhenContentsVisible];
  }

  else
  {

    [(_UIInterfaceActionSystemRepresentationView *)self _removeAllDisplayedViews];
  }
}

- (void)_removeAllDisplayedViews
{
  [(NSSet *)self->_displayedViews enumerateObjectsUsingBlock:&__block_literal_global_13];
  v3 = [MEMORY[0x1E695DFD8] set];
  displayedViews = self->_displayedViews;
  self->_displayedViews = v3;
}

- (void)_reloadHierarchyWithViewsToDisplayWhenContentsVisible
{
  v3 = [(NSSet *)self->_viewsToDisplayWhenContentsVisible copy];
  v4 = [(NSSet *)self->_displayedViews mutableCopy];
  [v4 minusSet:v3];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_22];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99___UIInterfaceActionSystemRepresentationView__reloadHierarchyWithViewsToDisplayWhenContentsVisible__block_invoke_2;
  v7[3] = &unk_1E70F3E50;
  v7[4] = self;
  [(NSSet *)v3 enumerateObjectsWithOptions:2 usingBlock:v7];
  displayedViews = self->_displayedViews;
  self->_displayedViews = v3;
  v6 = v3;
}

- (void)_loadConstraintsForDisplayedViews
{
  if ([(NSSet *)self->_displayedViews count]== 1)
  {
    [(_UIInterfaceActionSystemRepresentationView *)self _loadConstraintsForLabelsOnlyDisplay];
  }

  else if ([(NSSet *)self->_displayedViews count]>= 2)
  {
    [(_UIInterfaceActionSystemRepresentationView *)self _loadConstraintsForLabelsAndImagesDisplay];
  }

  [(_UIInterfaceActionSystemRepresentationView *)self _updateDisplayedViewsConstraintsVisualStyleConstants];

  [(_UIInterfaceActionSystemRepresentationView *)self _activateDisplayedViewsConstraints];
}

- (void)_loadConstraintsForLabelsOnlyDisplay
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82___UIInterfaceActionSystemRepresentationView__loadConstraintsForLabelsOnlyDisplay__block_invoke;
  v8[3] = &unk_1E70F3E78;
  v8[4] = self;
  v3 = [MEMORY[0x1E695DF70] array];
  __82___UIInterfaceActionSystemRepresentationView__loadConstraintsForLabelsOnlyDisplay__block_invoke(v8, v3);
  v5 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v3, v4);

  displayedViewsPositioningConstraints = self->_displayedViewsPositioningConstraints;
  self->_displayedViewsPositioningConstraints = v5;

  displayedViewsSpacingConstraints = self->_displayedViewsSpacingConstraints;
  self->_displayedViewsSpacingConstraints = MEMORY[0x1E695E0F0];
}

- (void)_loadConstraintsForLabelsAndImagesDisplay
{
  v3 = [(UIInterfaceActionRepresentationView *)self action];
  v4 = [v3 titleAlignment] == 1;

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v19 = __87___UIInterfaceActionSystemRepresentationView__loadConstraintsForLabelsAndImagesDisplay__block_invoke;
  v20 = &unk_1E70F3EA0;
  v21 = self;
  v22 = v4;
  v5 = [MEMORY[0x1E695DF70] array];
  v19(v18, v5);
  v7 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v5, v6);

  displayedViewsPositioningConstraints = self->_displayedViewsPositioningConstraints;
  self->_displayedViewsPositioningConstraints = v7;

  v14 = __87___UIInterfaceActionSystemRepresentationView__loadConstraintsForLabelsAndImagesDisplay__block_invoke_2;
  v15 = &unk_1E70F3EA0;
  v16 = self;
  v17 = v4;
  v9 = [MEMORY[0x1E695DF70] array];
  v14(&v13, v9);
  v11 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v9, v10);

  displayedViewsSpacingConstraints = self->_displayedViewsSpacingConstraints;
  self->_displayedViewsSpacingConstraints = v11;
}

- (id)_constraintForVerticallyCenteringLabelsView
{
  v3 = [(UIView *)self->_labelsView centerYAnchor];
  v4 = [(UIView *)self centerYAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  return v5;
}

- (id)_constraintForBaselineAligningOrVerticallyCenteringImageViewToLabelsView:(id)a3
{
  v4 = a3;
  v5 = [v4 image];
  v6 = [v5 hasBaseline];

  if (v6)
  {
    v7 = [v4 lastBaselineAnchor];

    [(UIView *)self->_labelsView lastBaselineAnchor];
  }

  else
  {
    v7 = [v4 centerYAnchor];

    [(UIView *)self->_labelsView centerYAnchor];
  }
  v8 = ;
  v9 = [v7 constraintEqualToAnchor:v8];

  return v9;
}

- (id)_constraintsToEnsureContainerHeightTallEnoughForViews:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[2] = __100___UIInterfaceActionSystemRepresentationView__constraintsToEnsureContainerHeightTallEnoughForViews___block_invoke;
  v11[3] = &unk_1E70F3EC8;
  v12 = v4;
  v13 = self;
  v5 = MEMORY[0x1E695DF70];
  v6 = v4;
  v7 = [v5 array];
  __100___UIInterfaceActionSystemRepresentationView__constraintsToEnsureContainerHeightTallEnoughForViews___block_invoke(v11, v7);
  v9 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v7, v8);

  return v9;
}

- (id)_constraintsForInsettingLabelsViewLeadingAndTrailing
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __98___UIInterfaceActionSystemRepresentationView__constraintsForInsettingLabelsViewLeadingAndTrailing__block_invoke;
  v6[3] = &unk_1E70F3E78;
  v6[4] = self;
  v2 = [MEMORY[0x1E695DF70] array];
  __98___UIInterfaceActionSystemRepresentationView__constraintsForInsettingLabelsViewLeadingAndTrailing__block_invoke(v6, v2);
  v4 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v2, v3);

  return v4;
}

- (id)_constraintsForInsettingLabelsViewLeadingAndTrailingToImageViewsExact:(BOOL)a3
{
  v7[2] = __116___UIInterfaceActionSystemRepresentationView__constraintsForInsettingLabelsViewLeadingAndTrailingToImageViewsExact___block_invoke;
  v7[3] = &unk_1E70F3EA0;
  v8 = a3;
  v7[4] = self;
  v3 = [MEMORY[0x1E695DF70] array];
  __116___UIInterfaceActionSystemRepresentationView__constraintsForInsettingLabelsViewLeadingAndTrailingToImageViewsExact___block_invoke(v7, v3);
  v5 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v3, v4);

  return v5;
}

- (id)_constraintsForInsettingLabelsViewLeadingAndTrailingHorizontalEdgeReferenceExact:(BOOL)a3
{
  v7[2] = __127___UIInterfaceActionSystemRepresentationView__constraintsForInsettingLabelsViewLeadingAndTrailingHorizontalEdgeReferenceExact___block_invoke;
  v7[3] = &unk_1E70F3EA0;
  v8 = a3;
  v7[4] = self;
  v3 = [MEMORY[0x1E695DF70] array];
  __127___UIInterfaceActionSystemRepresentationView__constraintsForInsettingLabelsViewLeadingAndTrailingHorizontalEdgeReferenceExact___block_invoke(v7, v3);
  v5 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v3, v4);

  return v5;
}

- (id)_constraintsForInsettingImageViewsLeadingAndTrailingEdge
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __102___UIInterfaceActionSystemRepresentationView__constraintsForInsettingImageViewsLeadingAndTrailingEdge__block_invoke;
  v6[3] = &unk_1E70F3E78;
  v6[4] = self;
  v2 = [MEMORY[0x1E695DF70] array];
  __102___UIInterfaceActionSystemRepresentationView__constraintsForInsettingImageViewsLeadingAndTrailingEdge__block_invoke(v6, v2);
  v4 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v2, v3);

  return v4;
}

- (id)_constraintsForHorizontallyCenteringLabelsView
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self->_labelsView centerXAnchor];
  v4 = [(_UIInterfaceActionSystemRepresentationView *)self _horizontalEdgeReference];
  v5 = [v4 centerXAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v7;
}

- (void)_updateDisplayedViewsConstraintsVisualStyleConstants
{
  v3 = [(UIInterfaceActionRepresentationView *)self visualStyle];
  [v3 horizontalImageContentSpacing];
  displayedViewsSpacingConstraints = self->_displayedViewsSpacingConstraints;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __98___UIInterfaceActionSystemRepresentationView__updateDisplayedViewsConstraintsVisualStyleConstants__block_invoke;
  v6[3] = &__block_descriptor_40_e35_v32__0__NSLayoutConstraint_8Q16_B24l;
  v6[4] = v5;
  [(NSArray *)displayedViewsSpacingConstraints enumerateObjectsUsingBlock:v6];
}

- (void)_invalidateDisplayedViewsConstraints
{
  [MEMORY[0x1E69977A0] deactivateConstraints:self->_displayedViewsSpacingConstraints];
  displayedViewsSpacingConstraints = self->_displayedViewsSpacingConstraints;
  self->_displayedViewsSpacingConstraints = 0;

  [MEMORY[0x1E69977A0] deactivateConstraints:self->_displayedViewsPositioningConstraints];
  displayedViewsPositioningConstraints = self->_displayedViewsPositioningConstraints;
  self->_displayedViewsPositioningConstraints = 0;

  [(UIView *)self setNeedsUpdateConstraints];
}

- (void)_activateDisplayedViewsConstraints
{
  v2 = MEMORY[0x1E69977A0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80___UIInterfaceActionSystemRepresentationView__activateDisplayedViewsConstraints__block_invoke;
  v6[3] = &unk_1E70F3E78;
  v6[4] = self;
  v3 = [MEMORY[0x1E695DF70] array];
  __80___UIInterfaceActionSystemRepresentationView__activateDisplayedViewsConstraints__block_invoke(v6, v3);
  v5 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v3, v4);

  [v2 activateConstraints:v5];
}

@end