@interface PUIStyleItemView
- (PUIStyleItemView)initWithStyleCoordinator:(id)coordinator;
- (id)localizedName;
@end

@implementation PUIStyleItemView

- (PUIStyleItemView)initWithStyleCoordinator:(id)coordinator
{
  v52[8] = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
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
    objc_storeStrong(&v10->_styleCoordinator, coordinator);
    v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    [(UIView *)v12 setClipsToBounds:1];
    layer = [(UIView *)v12 layer];
    [layer setCornerRadius:17.0];

    layer2 = [(UIView *)v12 layer];
    v15 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    [layer2 setBorderColor:{objc_msgSend(v15, "CGColor")}];

    layer3 = [(UIView *)v12 layer];
    [layer3 setBorderWidth:2.0];

    [(UIView *)v12 setUserInteractionEnabled:0];
    [(UIView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    selectionView = [(PUIStyleSelectableItemView *)v11 selectionView];
    [(PUIStyleItemView *)v11 insertSubview:v12 aboveSubview:selectionView];

    itemView = v11->_itemView;
    v11->_itemView = v12;
    v19 = v12;

    itemView = [coordinatorCopy itemView];
    [(UIView *)v19 setUserInteractionEnabled:0];
    [itemView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v21) = 1112014848;
    [itemView setContentCompressionResistancePriority:0 forAxis:v21];
    LODWORD(v22) = 1112014848;
    [itemView setContentCompressionResistancePriority:1 forAxis:v22];
    [(UIView *)v19 addSubview:itemView];
    v41 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIView *)v19 topAnchor];
    topAnchor2 = [(PUIStyleItemView *)v11 topAnchor];
    v48 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    v52[0] = v48;
    leadingAnchor = [(UIView *)v19 leadingAnchor];
    leadingAnchor2 = [(PUIStyleItemView *)v11 leadingAnchor];
    v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
    v52[1] = v45;
    trailingAnchor = [(UIView *)v19 trailingAnchor];
    trailingAnchor2 = [(PUIStyleItemView *)v11 trailingAnchor];
    v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
    v52[2] = v42;
    bottomAnchor = [(UIView *)v19 bottomAnchor];
    bottomAnchor2 = [(PUIStyleItemView *)v11 bottomAnchor];
    v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
    v52[3] = v38;
    topAnchor3 = [itemView topAnchor];
    topAnchor4 = [(UIView *)v19 topAnchor];
    v35 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v52[4] = v35;
    leadingAnchor3 = [itemView leadingAnchor];
    leadingAnchor4 = [(UIView *)v19 leadingAnchor];
    v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v52[5] = v32;
    trailingAnchor3 = [itemView trailingAnchor];
    trailingAnchor4 = [(UIView *)v19 trailingAnchor];
    v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v52[6] = v24;
    bottomAnchor3 = [itemView bottomAnchor];
    [(UIView *)v19 bottomAnchor];
    v27 = v26 = coordinatorCopy;
    v28 = [bottomAnchor3 constraintEqualToAnchor:v27];
    v52[7] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:8];
    [v41 activateConstraints:v29];

    coordinatorCopy = v26;
  }

  return v11;
}

- (id)localizedName
{
  style = [(PUIStyleUICoordinator *)self->_styleCoordinator style];
  localizedName = [style localizedName];

  return localizedName;
}

@end