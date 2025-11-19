@interface PVEffectDebugKeyRowView
- (PVEffectDebugKeyRowView)initWithFrame:(CGRect)a3 config:(id)a4;
- (void)setEnabled:(BOOL)a3;
@end

@implementation PVEffectDebugKeyRowView

- (PVEffectDebugKeyRowView)initWithFrame:(CGRect)a3 config:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v56[4] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v54.receiver = self;
  v54.super_class = PVEffectDebugKeyRowView;
  v10 = [(PVEffectDebugKeyRowView *)&v54 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    v10->_enabled = 1;
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
    v52 = [(PVEffectDebugKeyRowView *)v11 leftAnchor];
    v51 = [v13 leftAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v56[0] = v50;
    v49 = [(PVEffectDebugKeyRowView *)v11 rightAnchor];
    v48 = [v13 rightAnchor];
    v14 = [v49 constraintEqualToAnchor:v48];
    v56[1] = v14;
    v15 = [(PVEffectDebugKeyRowView *)v11 topAnchor];
    [v13 topAnchor];
    v16 = v53 = v9;
    v17 = [v15 constraintEqualToAnchor:v16];
    v56[2] = v17;
    v18 = [(PVEffectDebugKeyRowView *)v11 bottomAnchor];
    v19 = [v13 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v56[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
    [v47 activateConstraints:v21];

    v9 = v53;
    v22 = [v53 objectForKeyedSubscript:@"icon"];
    [(PVEffectDebugKeyRowView *)v11 setIconView:v22];
    v23 = [v22 image];
    [(PVEffectDebugKeyRowView *)v11 setIcon:v23];

    v24 = [v22 image];
    v25 = [v24 imageWithRenderingMode:2];
    [(PVEffectDebugKeyRowView *)v11 setIconTemplate:v25];

    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 addArrangedSubview:v22];
    v26 = MEMORY[0x277CCAAD0];
    v27 = [v22 widthAnchor];
    [v22 frame];
    v29 = [v27 constraintEqualToConstant:v28];
    v55[0] = v29;
    v30 = [v22 heightAnchor];
    [v22 frame];
    v32 = [v30 constraintEqualToConstant:v31];
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
    v40 = [v39 font];
    v41 = [v40 fontWithSize:15.0];
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

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v4 = a3;
    self->_enabled = a3;
    if (a3)
    {
      v6 = [(PVEffectDebugKeyRowView *)self icon];
      v7 = 1;
    }

    else
    {
      v6 = [(PVEffectDebugKeyRowView *)self iconTemplate];
      v7 = 2;
    }

    v8 = [(PVEffectDebugKeyRowView *)self iconView];
    [v8 setImage:v6];

    v9 = [(PVEffectDebugKeyRowView *)self iconView];
    [v9 setTintAdjustmentMode:v7];

    v10 = [(PVEffectDebugKeyRowView *)self labelView];
    [v10 setEnabled:v4];

    v11 = [(PVEffectDebugKeyRowView *)self switchView];
    [v11 setEnabled:v4];
  }
}

@end