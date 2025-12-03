@interface PREditingContentStyleItemView
- (PREditingContentStyleItemView)initWithContentStyleCoordinator:(id)coordinator applyGlassStyle:(BOOL)style;
- (id)localizedName;
@end

@implementation PREditingContentStyleItemView

- (PREditingContentStyleItemView)initWithContentStyleCoordinator:(id)coordinator applyGlassStyle:(BOOL)style
{
  styleCopy = style;
  v55[8] = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  v54.receiver = self;
  v54.super_class = PREditingContentStyleItemView;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [(PRSelectableEditingItemView *)&v54 initWithFrame:*MEMORY[0x1E695F058], v9, v10, v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contentStyleCoordinator, coordinator);
    v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    [(UIView *)v14 setClipsToBounds:1];
    layer = [(UIView *)v14 layer];
    [layer setCornerRadius:17.0];

    layer2 = [(UIView *)v14 layer];
    [layer2 setCornerCurve:*MEMORY[0x1E69796E8]];

    if (!styleCopy)
    {
      layer3 = [(UIView *)v14 layer];
      v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
      [layer3 setBorderColor:{objc_msgSend(v18, "CGColor")}];

      layer4 = [(UIView *)v14 layer];
      [layer4 setBorderWidth:2.0];
    }

    [(UIView *)v14 setUserInteractionEnabled:0];
    [(UIView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    selectionView = [(PRSelectableEditingItemView *)v13 selectionView];
    [(PREditingContentStyleItemView *)v13 insertSubview:v14 aboveSubview:selectionView];

    itemView = v13->_itemView;
    v13->_itemView = v14;
    v22 = v14;

    v23 = [coordinatorCopy itemViewWithGlassStyleApplied:styleCopy];
    [(UIView *)v22 setUserInteractionEnabled:0];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v24) = 1112014848;
    [v23 setContentCompressionResistancePriority:0 forAxis:v24];
    LODWORD(v25) = 1112014848;
    [v23 setContentCompressionResistancePriority:1 forAxis:v25];
    [(UIView *)v22 addSubview:v23];
    v44 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIView *)v22 topAnchor];
    topAnchor2 = [(PREditingContentStyleItemView *)v13 topAnchor];
    v51 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    v55[0] = v51;
    leadingAnchor = [(UIView *)v22 leadingAnchor];
    leadingAnchor2 = [(PREditingContentStyleItemView *)v13 leadingAnchor];
    v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
    v55[1] = v48;
    trailingAnchor = [(UIView *)v22 trailingAnchor];
    trailingAnchor2 = [(PREditingContentStyleItemView *)v13 trailingAnchor];
    v45 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
    v55[2] = v45;
    bottomAnchor = [(UIView *)v22 bottomAnchor];
    bottomAnchor2 = [(PREditingContentStyleItemView *)v13 bottomAnchor];
    v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
    v55[3] = v41;
    topAnchor3 = [v23 topAnchor];
    topAnchor4 = [(UIView *)v22 topAnchor];
    v38 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v55[4] = v38;
    leadingAnchor3 = [v23 leadingAnchor];
    leadingAnchor4 = [(UIView *)v22 leadingAnchor];
    v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v55[5] = v35;
    trailingAnchor3 = [v23 trailingAnchor];
    trailingAnchor4 = [(UIView *)v22 trailingAnchor];
    v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v55[6] = v27;
    bottomAnchor3 = [v23 bottomAnchor];
    bottomAnchor4 = [(UIView *)v22 bottomAnchor];
    [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v31 = v30 = coordinatorCopy;
    v55[7] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:8];
    [v44 activateConstraints:v32];

    coordinatorCopy = v30;
  }

  return v13;
}

- (id)localizedName
{
  style = [(PREditingPosterContentStyleCoordinator *)self->_contentStyleCoordinator style];
  localizedName = [style localizedName];

  return localizedName;
}

@end