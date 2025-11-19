@interface PREditingContentStyleItemView
- (PREditingContentStyleItemView)initWithContentStyleCoordinator:(id)a3 applyGlassStyle:(BOOL)a4;
- (id)localizedName;
@end

@implementation PREditingContentStyleItemView

- (PREditingContentStyleItemView)initWithContentStyleCoordinator:(id)a3 applyGlassStyle:(BOOL)a4
{
  v4 = a4;
  v55[8] = *MEMORY[0x1E69E9840];
  v7 = a3;
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
    objc_storeStrong(&v12->_contentStyleCoordinator, a3);
    v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    [(UIView *)v14 setClipsToBounds:1];
    v15 = [(UIView *)v14 layer];
    [v15 setCornerRadius:17.0];

    v16 = [(UIView *)v14 layer];
    [v16 setCornerCurve:*MEMORY[0x1E69796E8]];

    if (!v4)
    {
      v17 = [(UIView *)v14 layer];
      v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
      [v17 setBorderColor:{objc_msgSend(v18, "CGColor")}];

      v19 = [(UIView *)v14 layer];
      [v19 setBorderWidth:2.0];
    }

    [(UIView *)v14 setUserInteractionEnabled:0];
    [(UIView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [(PRSelectableEditingItemView *)v13 selectionView];
    [(PREditingContentStyleItemView *)v13 insertSubview:v14 aboveSubview:v20];

    itemView = v13->_itemView;
    v13->_itemView = v14;
    v22 = v14;

    v23 = [v7 itemViewWithGlassStyleApplied:v4];
    [(UIView *)v22 setUserInteractionEnabled:0];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v24) = 1112014848;
    [v23 setContentCompressionResistancePriority:0 forAxis:v24];
    LODWORD(v25) = 1112014848;
    [v23 setContentCompressionResistancePriority:1 forAxis:v25];
    [(UIView *)v22 addSubview:v23];
    v44 = MEMORY[0x1E696ACD8];
    v53 = [(UIView *)v22 topAnchor];
    v52 = [(PREditingContentStyleItemView *)v13 topAnchor];
    v51 = [v53 constraintEqualToAnchor:v52 constant:5.0];
    v55[0] = v51;
    v50 = [(UIView *)v22 leadingAnchor];
    v49 = [(PREditingContentStyleItemView *)v13 leadingAnchor];
    v48 = [v50 constraintEqualToAnchor:v49 constant:5.0];
    v55[1] = v48;
    v47 = [(UIView *)v22 trailingAnchor];
    v46 = [(PREditingContentStyleItemView *)v13 trailingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46 constant:-5.0];
    v55[2] = v45;
    v43 = [(UIView *)v22 bottomAnchor];
    v42 = [(PREditingContentStyleItemView *)v13 bottomAnchor];
    v41 = [v43 constraintEqualToAnchor:v42 constant:-5.0];
    v55[3] = v41;
    v40 = [v23 topAnchor];
    v39 = [(UIView *)v22 topAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v55[4] = v38;
    v37 = [v23 leadingAnchor];
    v36 = [(UIView *)v22 leadingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v55[5] = v35;
    v34 = [v23 trailingAnchor];
    v26 = [(UIView *)v22 trailingAnchor];
    v27 = [v34 constraintEqualToAnchor:v26];
    v55[6] = v27;
    v28 = [v23 bottomAnchor];
    v29 = [(UIView *)v22 bottomAnchor];
    [v28 constraintEqualToAnchor:v29];
    v31 = v30 = v7;
    v55[7] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:8];
    [v44 activateConstraints:v32];

    v7 = v30;
  }

  return v13;
}

- (id)localizedName
{
  v2 = [(PREditingPosterContentStyleCoordinator *)self->_contentStyleCoordinator style];
  v3 = [v2 localizedName];

  return v3;
}

@end