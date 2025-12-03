@interface PREditingColorItemView
- (PREditingColorItemView)initWithColorItem:(id)item;
- (void)updateForChangedColor;
@end

@implementation PREditingColorItemView

- (PREditingColorItemView)initWithColorItem:(id)item
{
  v36[4] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v35.receiver = self;
  v35.super_class = PREditingColorItemView;
  v6 = [(PRSelectableEditingItemView *)&v35 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_colorItem, item);
    itemView = [itemCopy itemView];
    if (!itemView)
    {
      itemView = objc_alloc_init(MEMORY[0x1E69DD250]);
      displayColor = [itemCopy displayColor];
      color = [displayColor color];
      [(UIView *)itemView setBackgroundColor:color];
    }

    layer = [(UIView *)itemView layer];
    [layer setCornerRadius:17.0];

    layer2 = [(UIView *)itemView layer];
    v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    [layer2 setBorderColor:{objc_msgSend(v13, "CGColor")}];

    layer3 = [(UIView *)itemView layer];
    [layer3 setBorderWidth:2.0];

    [(UIView *)itemView setUserInteractionEnabled:0];
    [(UIView *)itemView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v15) = 1112014848;
    [(UIView *)itemView setContentCompressionResistancePriority:0 forAxis:v15];
    LODWORD(v16) = 1112014848;
    [(UIView *)itemView setContentCompressionResistancePriority:1 forAxis:v16];
    selectionView = [(PRSelectableEditingItemView *)v7 selectionView];
    [(PREditingColorItemView *)v7 insertSubview:itemView aboveSubview:selectionView];

    itemView = v7->_itemView;
    v7->_itemView = itemView;
    v19 = itemView;

    v29 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIView *)v19 topAnchor];
    topAnchor2 = [(PREditingColorItemView *)v7 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    v36[0] = v32;
    leadingAnchor = [(UIView *)v19 leadingAnchor];
    leadingAnchor2 = [(PREditingColorItemView *)v7 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
    v36[1] = v28;
    trailingAnchor = [(UIView *)v19 trailingAnchor];
    trailingAnchor2 = [(PREditingColorItemView *)v7 trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
    v36[2] = v22;
    bottomAnchor = [(UIView *)v19 bottomAnchor];
    bottomAnchor2 = [(PREditingColorItemView *)v7 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
    v36[3] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
    [v29 activateConstraints:v26];
  }

  return v7;
}

- (void)updateForChangedColor
{
  itemView = [(PREditingColorItem *)self->_colorItem itemView];

  if (!itemView)
  {
    itemView = self->_itemView;
    displayColor = [(PREditingColorItem *)self->_colorItem displayColor];
    color = [displayColor color];
    [(UIView *)itemView setBackgroundColor:color];
  }
}

@end