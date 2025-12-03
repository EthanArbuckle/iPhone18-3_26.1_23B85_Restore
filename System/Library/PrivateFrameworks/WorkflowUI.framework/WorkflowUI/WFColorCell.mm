@interface WFColorCell
- (UIView)selectedRingView;
- (WFColorCell)initWithFrame:(CGRect)frame;
- (WFGradient)gradient;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)setGradient:(id)gradient;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
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
  isSelected = [(WFColorCell *)self isSelected];
  v4 = *MEMORY[0x277D76598];
  if (!isSelected)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = WFColorCell;
  [(WFColorCell *)&v6 setHighlighted:?];
  floatingView = [(WFColorCell *)self floatingView];
  [floatingView setPressed:highlightedCopy];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = WFColorCell;
  [(WFColorCell *)&v6 setSelected:?];
  selectedRingView = [(WFColorCell *)self selectedRingView];
  [selectedRingView setHidden:!selectedCopy];
}

- (void)setGradient:(id)gradient
{
  gradientCopy = gradient;
  floatingView = [(WFColorCell *)self floatingView];
  [floatingView setGradient:gradientCopy];
}

- (WFGradient)gradient
{
  floatingView = [(WFColorCell *)self floatingView];
  gradient = [floatingView gradient];

  return gradient;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = WFColorCell;
  [(WFColorCell *)&v9 layoutSubviews];
  [(WFColorCell *)self frame];
  v4 = (v3 + -4.0) * 0.5;
  selectedRingView = [(WFColorCell *)self selectedRingView];
  layer = [selectedRingView layer];
  [layer setCornerRadius:v4];

  selectedRingView2 = [(WFColorCell *)self selectedRingView];
  layer2 = [selectedRingView2 layer];
  [layer2 setMasksToBounds:1];
}

- (WFColorCell)initWithFrame:(CGRect)frame
{
  v47[8] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = WFColorCell;
  v3 = [(WFColorCell *)&v46 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(WFColorCell *)v3 contentView];
    v6 = objc_alloc(MEMORY[0x277D7D748]);
    paletteColorConfiguration = [MEMORY[0x277D7D750] paletteColorConfiguration];
    v8 = [v6 initWithConfiguration:paletteColorConfiguration];

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = v4;
    floatingView = v4->_floatingView;
    v45->_floatingView = v8;
    v10 = v8;

    [contentView addSubview:v10];
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v11 setHidden:1];
    layer = [v11 layer];
    [layer setBorderWidth:1.0];

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    cGColor = [systemBackgroundColor CGColor];
    layer2 = [v11 layer];
    [layer2 setBorderColor:cGColor];

    [v10 addSubview:v11];
    objc_storeWeak(&v45->_selectedRingView, v11);
    v32 = MEMORY[0x277CCAAD0];
    topAnchor = [v10 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v47[0] = v42;
    leadingAnchor = [v10 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v47[1] = v38;
    bottomAnchor = [v10 bottomAnchor];
    v40 = contentView;
    bottomAnchor2 = [contentView bottomAnchor];
    v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v47[2] = v35;
    trailingAnchor = [v10 trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v47[3] = v31;
    topAnchor3 = [v11 topAnchor];
    topAnchor4 = [v10 topAnchor];
    v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:2.0];
    v47[4] = v28;
    leadingAnchor3 = [v11 leadingAnchor];
    leadingAnchor4 = [v10 leadingAnchor];
    v16 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:2.0];
    v47[5] = v16;
    bottomAnchor3 = [v11 bottomAnchor];
    bottomAnchor4 = [v10 bottomAnchor];
    v19 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-2.0];
    v47[6] = v19;
    trailingAnchor3 = [v11 trailingAnchor];
    trailingAnchor4 = [v10 trailingAnchor];
    v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-2.0];
    v47[7] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:8];
    [v32 activateConstraints:v23];

    v4 = v45;
    v24 = v45;
  }

  return v4;
}

@end