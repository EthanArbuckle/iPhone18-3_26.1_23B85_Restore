@interface PUIStyleItemView
- (PUIStyleItemView)initWithStyleCoordinator:(id)a3;
- (id)localizedName;
@end

@implementation PUIStyleItemView

- (PUIStyleItemView)initWithStyleCoordinator:(id)a3
{
  v52[8] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v51.receiver = self;
  v51.super_class = PUIStyleItemView;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(PUIStyleSelectableItemView *)&v51 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_styleCoordinator, a3);
    v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    [(UIView *)v12 setClipsToBounds:1];
    v13 = [(UIView *)v12 layer];
    [v13 setCornerRadius:17.0];

    v14 = [(UIView *)v12 layer];
    v15 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    [v14 setBorderColor:{objc_msgSend(v15, "CGColor")}];

    v16 = [(UIView *)v12 layer];
    [v16 setBorderWidth:2.0];

    [(UIView *)v12 setUserInteractionEnabled:0];
    [(UIView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(PUIStyleSelectableItemView *)v11 selectionView];
    [(PUIStyleItemView *)v11 insertSubview:v12 aboveSubview:v17];

    itemView = v11->_itemView;
    v11->_itemView = v12;
    v19 = v12;

    v20 = [v5 itemView];
    [(UIView *)v19 setUserInteractionEnabled:0];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v21) = 1112014848;
    [v20 setContentCompressionResistancePriority:0 forAxis:v21];
    LODWORD(v22) = 1112014848;
    [v20 setContentCompressionResistancePriority:1 forAxis:v22];
    [(UIView *)v19 addSubview:v20];
    v41 = MEMORY[0x1E696ACD8];
    v50 = [(UIView *)v19 topAnchor];
    v49 = [(PUIStyleItemView *)v11 topAnchor];
    v48 = [v50 constraintEqualToAnchor:v49 constant:5.0];
    v52[0] = v48;
    v47 = [(UIView *)v19 leadingAnchor];
    v46 = [(PUIStyleItemView *)v11 leadingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46 constant:5.0];
    v52[1] = v45;
    v44 = [(UIView *)v19 trailingAnchor];
    v43 = [(PUIStyleItemView *)v11 trailingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43 constant:-5.0];
    v52[2] = v42;
    v40 = [(UIView *)v19 bottomAnchor];
    v39 = [(PUIStyleItemView *)v11 bottomAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:-5.0];
    v52[3] = v38;
    v37 = [v20 topAnchor];
    v36 = [(UIView *)v19 topAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v52[4] = v35;
    v34 = [v20 leadingAnchor];
    v33 = [(UIView *)v19 leadingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v52[5] = v32;
    v31 = [v20 trailingAnchor];
    v23 = [(UIView *)v19 trailingAnchor];
    v24 = [v31 constraintEqualToAnchor:v23];
    v52[6] = v24;
    v25 = [v20 bottomAnchor];
    [(UIView *)v19 bottomAnchor];
    v27 = v26 = v5;
    v28 = [v25 constraintEqualToAnchor:v27];
    v52[7] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:8];
    [v41 activateConstraints:v29];

    v5 = v26;
  }

  return v11;
}

- (id)localizedName
{
  v2 = [(PUIStyleUICoordinator *)self->_styleCoordinator style];
  v3 = [v2 localizedName];

  return v3;
}

@end