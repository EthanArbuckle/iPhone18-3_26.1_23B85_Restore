@interface PREditingColorItemView
- (PREditingColorItemView)initWithColorItem:(id)a3;
- (void)updateForChangedColor;
@end

@implementation PREditingColorItemView

- (PREditingColorItemView)initWithColorItem:(id)a3
{
  v36[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v35.receiver = self;
  v35.super_class = PREditingColorItemView;
  v6 = [(PRSelectableEditingItemView *)&v35 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_colorItem, a3);
    v8 = [v5 itemView];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v9 = [v5 displayColor];
      v10 = [v9 color];
      [(UIView *)v8 setBackgroundColor:v10];
    }

    v11 = [(UIView *)v8 layer];
    [v11 setCornerRadius:17.0];

    v12 = [(UIView *)v8 layer];
    v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    [v12 setBorderColor:{objc_msgSend(v13, "CGColor")}];

    v14 = [(UIView *)v8 layer];
    [v14 setBorderWidth:2.0];

    [(UIView *)v8 setUserInteractionEnabled:0];
    [(UIView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v15) = 1112014848;
    [(UIView *)v8 setContentCompressionResistancePriority:0 forAxis:v15];
    LODWORD(v16) = 1112014848;
    [(UIView *)v8 setContentCompressionResistancePriority:1 forAxis:v16];
    v17 = [(PRSelectableEditingItemView *)v7 selectionView];
    [(PREditingColorItemView *)v7 insertSubview:v8 aboveSubview:v17];

    itemView = v7->_itemView;
    v7->_itemView = v8;
    v19 = v8;

    v29 = MEMORY[0x1E696ACD8];
    v34 = [(UIView *)v19 topAnchor];
    v33 = [(PREditingColorItemView *)v7 topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33 constant:5.0];
    v36[0] = v32;
    v31 = [(UIView *)v19 leadingAnchor];
    v30 = [(PREditingColorItemView *)v7 leadingAnchor];
    v28 = [v31 constraintEqualToAnchor:v30 constant:5.0];
    v36[1] = v28;
    v20 = [(UIView *)v19 trailingAnchor];
    v21 = [(PREditingColorItemView *)v7 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:-5.0];
    v36[2] = v22;
    v23 = [(UIView *)v19 bottomAnchor];
    v24 = [(PREditingColorItemView *)v7 bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:-5.0];
    v36[3] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
    [v29 activateConstraints:v26];
  }

  return v7;
}

- (void)updateForChangedColor
{
  v3 = [(PREditingColorItem *)self->_colorItem itemView];

  if (!v3)
  {
    itemView = self->_itemView;
    v6 = [(PREditingColorItem *)self->_colorItem displayColor];
    v5 = [v6 color];
    [(UIView *)itemView setBackgroundColor:v5];
  }
}

@end