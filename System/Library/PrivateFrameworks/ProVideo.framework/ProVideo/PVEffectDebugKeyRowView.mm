@interface PVEffectDebugKeyRowView
- (PVEffectDebugKeyRowView)initWithFrame:(CGRect)frame config:(id)config;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation PVEffectDebugKeyRowView

- (PVEffectDebugKeyRowView)initWithFrame:(CGRect)frame config:(id)config
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v56[4] = *MEMORY[0x277D85DE8];
  configCopy = config;
  v54.receiver = self;
  v54.super_class = PVEffectDebugKeyRowView;
  height = [(PVEffectDebugKeyRowView *)&v54 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    height->_enabled = 1;
    v12 = objc_alloc(MEMORY[0x277D75A68]);
    [(PVEffectDebugKeyRowView *)v11 bounds];
    v13 = [v12 initWithFrame:?];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 setAlignment:3];
    [v13 setAxis:0];
    [v13 setDistribution:0];
    [v13 setSpacing:8.0];
    [(PVEffectDebugKeyRowView *)v11 addSubview:v13];
    v47 = MEMORY[0x277CCAAD0];
    leftAnchor = [(PVEffectDebugKeyRowView *)v11 leftAnchor];
    leftAnchor2 = [v13 leftAnchor];
    v50 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v56[0] = v50;
    rightAnchor = [(PVEffectDebugKeyRowView *)v11 rightAnchor];
    rightAnchor2 = [v13 rightAnchor];
    v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v56[1] = v14;
    topAnchor = [(PVEffectDebugKeyRowView *)v11 topAnchor];
    [v13 topAnchor];
    v16 = v53 = configCopy;
    v17 = [topAnchor constraintEqualToAnchor:v16];
    v56[2] = v17;
    bottomAnchor = [(PVEffectDebugKeyRowView *)v11 bottomAnchor];
    bottomAnchor2 = [v13 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v56[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
    [v47 activateConstraints:v21];

    configCopy = v53;
    v22 = [v53 objectForKeyedSubscript:@"icon"];
    [(PVEffectDebugKeyRowView *)v11 setIconView:v22];
    image = [v22 image];
    [(PVEffectDebugKeyRowView *)v11 setIcon:image];

    image2 = [v22 image];
    v25 = [image2 imageWithRenderingMode:2];
    [(PVEffectDebugKeyRowView *)v11 setIconTemplate:v25];

    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 addArrangedSubview:v22];
    v26 = MEMORY[0x277CCAAD0];
    widthAnchor = [v22 widthAnchor];
    [v22 frame];
    v29 = [widthAnchor constraintEqualToConstant:v28];
    v55[0] = v29;
    heightAnchor = [v22 heightAnchor];
    [v22 frame];
    v32 = [heightAnchor constraintEqualToConstant:v31];
    v55[1] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    [v26 activateConstraints:v33];

    v34 = objc_alloc(MEMORY[0x277D756B8]);
    v35 = *MEMORY[0x277CBF3A0];
    v36 = *(MEMORY[0x277CBF3A0] + 8);
    v37 = *(MEMORY[0x277CBF3A0] + 16);
    v38 = *(MEMORY[0x277CBF3A0] + 24);
    v39 = [v34 initWithFrame:{*MEMORY[0x277CBF3A0], v36, v37, v38}];
    [(PVEffectDebugKeyRowView *)v11 setLabelView:v39];
    font = [v39 font];
    v41 = [font fontWithSize:15.0];
    [v39 setFont:v41];

    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    v42 = [v53 objectForKeyedSubscript:@"title"];
    [v39 setText:v42];

    [v39 sizeToFit];
    [v13 addArrangedSubview:v39];
    v43 = [v53 objectForKeyedSubscript:@"action"];
    if (v43)
    {
      v44 = [objc_alloc(MEMORY[0x277D75AE8]) initWithFrame:v43 primaryAction:{v35, v36, v37, v38}];
      [(PVEffectDebugKeyRowView *)v11 setSwitchView:v44];
      v45 = [v53 objectForKeyedSubscript:@"on"];
      [v44 setOn:{objc_msgSend(v45, "BOOLValue")}];

      [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v13 addArrangedSubview:v44];
    }
  }

  return v11;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    self->_enabled = enabled;
    if (enabled)
    {
      icon = [(PVEffectDebugKeyRowView *)self icon];
      v7 = 1;
    }

    else
    {
      icon = [(PVEffectDebugKeyRowView *)self iconTemplate];
      v7 = 2;
    }

    iconView = [(PVEffectDebugKeyRowView *)self iconView];
    [iconView setImage:icon];

    iconView2 = [(PVEffectDebugKeyRowView *)self iconView];
    [iconView2 setTintAdjustmentMode:v7];

    labelView = [(PVEffectDebugKeyRowView *)self labelView];
    [labelView setEnabled:enabledCopy];

    switchView = [(PVEffectDebugKeyRowView *)self switchView];
    [switchView setEnabled:enabledCopy];
  }
}

@end