@interface WFColorCell
- (UIView)selectedRingView;
- (WFColorCell)initWithFrame:(CGRect)a3;
- (WFGradient)gradient;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)setGradient:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation WFColorCell

- (UIView)selectedRingView
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedRingView);

  return WeakRetained;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x277D76548];
  v3 = [(WFColorCell *)self isSelected];
  v4 = *MEMORY[0x277D76598];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = WFColorCell;
  [(WFColorCell *)&v6 setHighlighted:?];
  v5 = [(WFColorCell *)self floatingView];
  [v5 setPressed:v3];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = WFColorCell;
  [(WFColorCell *)&v6 setSelected:?];
  v5 = [(WFColorCell *)self selectedRingView];
  [v5 setHidden:!v3];
}

- (void)setGradient:(id)a3
{
  v4 = a3;
  v5 = [(WFColorCell *)self floatingView];
  [v5 setGradient:v4];
}

- (WFGradient)gradient
{
  v2 = [(WFColorCell *)self floatingView];
  v3 = [v2 gradient];

  return v3;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = WFColorCell;
  [(WFColorCell *)&v9 layoutSubviews];
  [(WFColorCell *)self frame];
  v4 = (v3 + -4.0) * 0.5;
  v5 = [(WFColorCell *)self selectedRingView];
  v6 = [v5 layer];
  [v6 setCornerRadius:v4];

  v7 = [(WFColorCell *)self selectedRingView];
  v8 = [v7 layer];
  [v8 setMasksToBounds:1];
}

- (WFColorCell)initWithFrame:(CGRect)a3
{
  v47[8] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = WFColorCell;
  v3 = [(WFColorCell *)&v46 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(WFColorCell *)v3 contentView];
    v6 = objc_alloc(MEMORY[0x277D7D748]);
    v7 = [MEMORY[0x277D7D750] paletteColorConfiguration];
    v8 = [v6 initWithConfiguration:v7];

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = v4;
    floatingView = v4->_floatingView;
    v45->_floatingView = v8;
    v10 = v8;

    [v5 addSubview:v10];
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v11 setHidden:1];
    v12 = [v11 layer];
    [v12 setBorderWidth:1.0];

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [MEMORY[0x277D75348] systemBackgroundColor];
    v14 = [v13 CGColor];
    v15 = [v11 layer];
    [v15 setBorderColor:v14];

    [v10 addSubview:v11];
    objc_storeWeak(&v45->_selectedRingView, v11);
    v32 = MEMORY[0x277CCAAD0];
    v44 = [v10 topAnchor];
    v43 = [v5 topAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v47[0] = v42;
    v41 = [v10 leadingAnchor];
    v39 = [v5 leadingAnchor];
    v38 = [v41 constraintEqualToAnchor:v39];
    v47[1] = v38;
    v37 = [v10 bottomAnchor];
    v40 = v5;
    v36 = [v5 bottomAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v47[2] = v35;
    v34 = [v10 trailingAnchor];
    v33 = [v5 trailingAnchor];
    v31 = [v34 constraintEqualToAnchor:v33];
    v47[3] = v31;
    v30 = [v11 topAnchor];
    v29 = [v10 topAnchor];
    v28 = [v30 constraintEqualToAnchor:v29 constant:2.0];
    v47[4] = v28;
    v27 = [v11 leadingAnchor];
    v26 = [v10 leadingAnchor];
    v16 = [v27 constraintEqualToAnchor:v26 constant:2.0];
    v47[5] = v16;
    v17 = [v11 bottomAnchor];
    v18 = [v10 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:-2.0];
    v47[6] = v19;
    v20 = [v11 trailingAnchor];
    v21 = [v10 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:-2.0];
    v47[7] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:8];
    [v32 activateConstraints:v23];

    v4 = v45;
    v24 = v45;
  }

  return v4;
}

@end