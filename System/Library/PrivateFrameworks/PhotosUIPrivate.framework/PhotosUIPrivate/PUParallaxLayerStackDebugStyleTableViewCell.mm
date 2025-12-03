@interface PUParallaxLayerStackDebugStyleTableViewCell
- (PUParallaxLayerStackDebugStyleTableViewCellDelegate)styleCellDelegate;
- (id)colorButtonWithColor:(id)color title:(id)title;
- (id)intensitySliderWithWidth:(double)width;
- (id)newTonalityControl;
- (void)applyToStyle:(id)style;
- (void)rebuildControlsViewForStyle:(id)style;
- (void)updateColor:(id)color;
- (void)updateDelegate:(id)delegate;
- (void)updateSlider:(id)slider;
@end

@implementation PUParallaxLayerStackDebugStyleTableViewCell

- (PUParallaxLayerStackDebugStyleTableViewCellDelegate)styleCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_styleCellDelegate);

  return WeakRetained;
}

- (void)updateDelegate:(id)delegate
{
  styleCellDelegate = [(PUParallaxLayerStackDebugStyleTableViewCell *)self styleCellDelegate];
  [styleCellDelegate cellValueUpdated:self];
}

- (void)updateSlider:(id)slider
{
  sliderCopy = slider;
  if ([(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0AF0]])
  {
    v4 = MEMORY[0x1E69C0750];
    selectedColor = [(UIColorWell *)self->_colorButton1 selectedColor];
    v6 = [v4 colorWithCGColor:{objc_msgSend(selectedColor, "CGColor")}];

    v7 = objc_alloc(MEMORY[0x1E69C0750]);
    [v6 hue];
    v9 = v8;
    [(UISlider *)self->_colorSlider value];
    v11 = [v7 initWithHue:v9 tone:v10];
    v12 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(v11, "CGColor")}];
    [(UIColorWell *)self->_colorButton1 setSelectedColor:v12];
  }

  [(PUParallaxLayerStackDebugStyleTableViewCell *)self updateDelegate:sliderCopy];
}

- (void)updateColor:(id)color
{
  colorCopy = color;
  if ([(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0AF0]])
  {
    v4 = MEMORY[0x1E69C0750];
    selectedColor = [colorCopy selectedColor];
    v6 = [v4 colorWithCGColor:{objc_msgSend(selectedColor, "CGColor")}];

    [v6 tone];
    *&v7 = v7;
    [(UISlider *)self->_colorSlider setValue:v7];
  }

  [(PUParallaxLayerStackDebugStyleTableViewCell *)self updateDelegate:colorCopy];
}

- (void)applyToStyle:(id)style
{
  styleCopy = style;
  if ([(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0B30]]|| [(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0AE0]])
  {
    tonalityControl = self->_tonalityControl;
    selectedColor2 = styleCopy;
    if ([(UISegmentedControl *)tonalityControl selectedSegmentIndex])
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    [selectedColor2 setTonality:v6];
    goto LABEL_14;
  }

  if ([(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0AF0]])
  {
    v7 = MEMORY[0x1E69C0750];
    colorButton1 = self->_colorButton1;
    v9 = styleCopy;
    selectedColor = [(UIColorWell *)colorButton1 selectedColor];
    selectedColor2 = [v7 colorWithCGColor:{objc_msgSend(selectedColor, "CGColor")}];

    [selectedColor2 hue];
    v12 = v11;
    v13 = objc_alloc(MEMORY[0x1E69C0750]);
    [(UISlider *)self->_colorSlider value];
    v15 = [v13 initWithHue:v12 tone:v14];
    [v9 setColor:v15];

LABEL_13:
LABEL_14:

    goto LABEL_15;
  }

  if ([(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0B00]]|| [(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0B08]]|| [(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0B20]])
  {
    v16 = MEMORY[0x1E69C0750];
    selectedColor2 = [(UIColorWell *)self->_colorButton1 selectedColor];
    v15 = [v16 colorWithCGColor:{objc_msgSend(selectedColor2, "CGColor")}];
    [styleCopy setColor:v15];
    goto LABEL_13;
  }

  if ([(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0AF8]])
  {
    v17 = MEMORY[0x1E69C0750];
    selectedColor3 = [(UIColorWell *)self->_colorButton1 selectedColor];
    v19 = [v17 colorWithCGColor:{objc_msgSend(selectedColor3, "CGColor")}];
    [styleCopy setPrimaryColor:v19];

    v20 = MEMORY[0x1E69C0750];
    selectedColor2 = [(UIColorWell *)self->_colorButton2 selectedColor];
    v15 = [v20 colorWithCGColor:{objc_msgSend(selectedColor2, "CGColor")}];
    [styleCopy setSecondaryColor:v15];
    goto LABEL_13;
  }

LABEL_15:
}

- (void)rebuildControlsViewForStyle:(id)style
{
  v54[2] = *MEMORY[0x1E69E9840];
  styleCopy = style;
  kind = [styleCopy kind];
  styleKind = self->_styleKind;
  self->_styleKind = kind;

  controlsView = [(PUParallaxLayerStackDebugStyleTableViewCell *)self controlsView];
  [controlsView removeFromSuperview];

  [(PUParallaxLayerStackDebugStyleTableViewCell *)self setControlsView:0];
  if ([(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0B30]]|| [(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0AE0]])
  {
    v8 = styleCopy;
    v9 = StackView(1);
    [v9 setAlignment:1];
    newTonalityControl = [(PUParallaxLayerStackDebugStyleTableViewCell *)self newTonalityControl];
    tonalityControl = self->_tonalityControl;
    self->_tonalityControl = newTonalityControl;

    tonality = [v8 tonality];
    [(UISegmentedControl *)self->_tonalityControl setSelectedSegmentIndex:tonality != 3];
    [v9 addArrangedSubview:self->_tonalityControl];
    [(PUParallaxLayerStackDebugStyleTableViewCell *)self setControlsView:v9];
LABEL_17:

    goto LABEL_18;
  }

  if ([(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0AF0]])
  {
    v13 = styleCopy;
    v9 = StackView(1);
    [v9 setAlignment:1];
    v14 = StackView(0);
    color = [v13 color];
    [color tone];
    v17 = v16;

    [MEMORY[0x1E69BDE90] lowKeyTone];
    v19 = v18;
    [MEMORY[0x1E69BDE90] highKeyTone];
    v21 = v20;
    v22 = [(PUParallaxLayerStackDebugStyleTableViewCell *)self intensitySliderWithWidth:100.0];
    colorSlider = self->_colorSlider;
    self->_colorSlider = v22;

    *&v24 = v19;
    [(UISlider *)self->_colorSlider setMinimumValue:v24];
    *&v25 = v21;
    [(UISlider *)self->_colorSlider setMaximumValue:v25];
    if (v17 >= v21)
    {
      v26 = v21;
    }

    else
    {
      v26 = v17;
    }

    if (v19 >= v26)
    {
      v26 = v19;
    }

    *&v26 = v26;
    [(UISlider *)self->_colorSlider setValue:v26];
    [v14 addArrangedSubview:self->_colorSlider];
    v27 = objc_alloc(MEMORY[0x1E69DC888]);
    color2 = [v13 color];

    v29 = [v27 initWithCGColor:{objc_msgSend(color2, "CGColor")}];
    goto LABEL_15;
  }

  if ([(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0B00]]|| [(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0B08]]|| [(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0B20]])
  {
    v9 = StackView(1);
    [v9 setAlignment:1];
    v14 = StackView(0);
    v30 = MEMORY[0x1E69DC888];
    color3 = [styleCopy color];
    v29 = [v30 colorWithCGColor:{objc_msgSend(color3, "CGColor")}];

LABEL_15:
    v32 = [(PUParallaxLayerStackDebugStyleTableViewCell *)self colorButtonWithColor:v29 title:@"Color"];
    colorButton1 = self->_colorButton1;
    self->_colorButton1 = v32;

    [v14 addArrangedSubview:self->_colorButton1];
    [v9 addArrangedSubview:v14];
    [(PUParallaxLayerStackDebugStyleTableViewCell *)self setControlsView:v9];
LABEL_16:

    goto LABEL_17;
  }

  if ([(NSString *)self->_styleKind isEqualToString:*MEMORY[0x1E69C0AF8]])
  {
    v44 = styleCopy;
    v9 = StackView(1);
    [v9 setAlignment:1];
    v14 = StackView(0);
    v45 = MEMORY[0x1E69DC888];
    primaryColor = [v44 primaryColor];
    v29 = [v45 colorWithCGColor:{objc_msgSend(primaryColor, "CGColor")}];

    v47 = [(PUParallaxLayerStackDebugStyleTableViewCell *)self colorButtonWithColor:v29 title:@"Primary Color"];
    v48 = self->_colorButton1;
    self->_colorButton1 = v47;

    [v14 addArrangedSubview:self->_colorButton1];
    v49 = MEMORY[0x1E69DC888];
    secondaryColor = [v44 secondaryColor];

    v51 = [v49 colorWithCGColor:{objc_msgSend(secondaryColor, "CGColor")}];

    v52 = [(PUParallaxLayerStackDebugStyleTableViewCell *)self colorButtonWithColor:v51 title:@"Secondary Color"];
    colorButton2 = self->_colorButton2;
    self->_colorButton2 = v52;

    [v14 addArrangedSubview:self->_colorButton2];
    [v9 addArrangedSubview:v14];
    [(PUParallaxLayerStackDebugStyleTableViewCell *)self setControlsView:v9];

    goto LABEL_16;
  }

LABEL_18:
  if (self->_controlsView)
  {
    contentView = [(PUParallaxLayerStackDebugStyleTableViewCell *)self contentView];
    [contentView addSubview:self->_controlsView];

    [(UIView *)self->_controlsView setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = MEMORY[0x1E696ACD8];
    trailingAnchor = [(UIView *)self->_controlsView trailingAnchor];
    trailingAnchor2 = [(PUParallaxLayerStackDebugStyleTableViewCell *)self trailingAnchor];
    v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-50.0];
    v54[0] = v38;
    centerYAnchor = [(UIView *)self->_controlsView centerYAnchor];
    contentView2 = [(PUParallaxLayerStackDebugStyleTableViewCell *)self contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v42 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v54[1] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    [v35 activateConstraints:v43];
  }
}

- (id)intensitySliderWithWidth:(double)width
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E69DCF60]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v6 setMinimumValue:0.0];
  LODWORD(v7) = 1.0;
  [v6 setMaximumValue:v7];
  LODWORD(v8) = 1.0;
  [v6 setValue:v8];
  [v6 addTarget:self action:sel_updateSlider_ forControlEvents:4096];
  v9 = MEMORY[0x1E696ACD8];
  widthAnchor = [v6 widthAnchor];
  v11 = [widthAnchor constraintEqualToConstant:width];
  v14[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v9 activateConstraints:v12];

  return v6;
}

- (id)colorButtonWithColor:(id)color title:(id)title
{
  v6 = MEMORY[0x1E69DC8A8];
  titleCopy = title;
  colorCopy = color;
  v9 = [v6 alloc];
  v10 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v10 setSupportsAlpha:0];
  [v10 setSelectedColor:colorCopy];

  [v10 setTitle:titleCopy];
  [v10 addTarget:self action:sel_updateColor_ forControlEvents:4096];

  return v10;
}

- (id)newTonalityControl
{
  v3 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:&unk_1F2B7D058];
  [v3 addTarget:self action:sel_updateDelegate_ forControlEvents:4096];
  return v3;
}

@end