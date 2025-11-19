@interface WFIconComposeViewController
- (UIView)bottomSeparator;
- (UIView)topSeperator;
- (WFColorPicker)colorPicker;
- (WFGlyphPicker)glyphPicker;
- (WFIconComposePreviewView)iconView;
- (WFIconComposeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)colorPicker:(id)a3 didSelectColor:(id)a4;
- (void)glyphPicker:(id)a3 didSelectGlyphWithCharacter:(unsigned __int16)a4;
- (void)loadView;
- (void)pickedSegment:(id)a3;
- (void)saveIcon:(id)a3;
- (void)setWorkflow:(id)a3;
- (void)updateAccessibilityValue;
@end

@implementation WFIconComposeViewController

- (UIView)bottomSeparator
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomSeparator);

  return WeakRetained;
}

- (UIView)topSeperator
{
  WeakRetained = objc_loadWeakRetained(&self->_topSeperator);

  return WeakRetained;
}

- (WFGlyphPicker)glyphPicker
{
  WeakRetained = objc_loadWeakRetained(&self->_glyphPicker);

  return WeakRetained;
}

- (WFColorPicker)colorPicker
{
  WeakRetained = objc_loadWeakRetained(&self->_colorPicker);

  return WeakRetained;
}

- (WFIconComposePreviewView)iconView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconView);

  return WeakRetained;
}

- (void)colorPicker:(id)a3 didSelectColor:(id)a4
{
  v5 = MEMORY[0x277D7A1E0];
  v6 = a4;
  v7 = [v5 alloc];
  v8 = [v6 RGBAValue];

  v9 = v8;
  v10 = [(WFIconComposeViewController *)self workflow];
  v11 = [v10 icon];
  v12 = [v11 glyphCharacter];
  v13 = [(WFIconComposeViewController *)self workflow];
  v14 = [v13 icon];
  v15 = [v14 customImageData];
  v16 = [v7 initWithBackgroundColorValue:v9 glyphCharacter:v12 customImageData:v15];

  [(WFIconComposeViewController *)self saveIcon:v16];
}

- (void)glyphPicker:(id)a3 didSelectGlyphWithCharacter:(unsigned __int16)a4
{
  v4 = a4;
  v6 = objc_alloc(MEMORY[0x277D7A1E0]);
  v7 = [(WFIconComposeViewController *)self workflow];
  v8 = [v7 icon];
  v9 = [v8 backgroundColorValue];
  v10 = [(WFIconComposeViewController *)self workflow];
  v11 = [v10 icon];
  v12 = [v11 customImageData];
  v13 = [v6 initWithBackgroundColorValue:v9 glyphCharacter:v4 customImageData:v12];

  [(WFIconComposeViewController *)self saveIcon:v13];
}

- (void)updateAccessibilityValue
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [MEMORY[0x277D79E20] workflowPalette];
    v4 = [(WFIconComposeViewController *)self workflow];
    v5 = [v4 icon];
    v6 = [v5 backgroundColor];
    v7 = [v3 indexOfObject:v6];

    v8 = [MEMORY[0x277D79E20] workflowPaletteNames];
    v16 = [v8 objectAtIndex:v7];

    v9 = [(WFIconComposeViewController *)self workflow];
    v10 = [v9 icon];
    [v10 glyphCharacter];
    v11 = WFNameForGlyphCharacter();

    v12 = MEMORY[0x277CCACA8];
    v13 = WFLocalizedString(@"%1$@ glyph, %2$@ background color");
    v14 = [v12 localizedStringWithFormat:v13, v11, v16];
    v15 = [(WFIconComposeViewController *)self iconView];
    [v15 setAccessibilityValue:v14];
  }
}

- (void)saveIcon:(id)a3
{
  v4 = a3;
  v5 = [(WFIconComposeViewController *)self workflow];
  [v5 setIcon:v4];

  v6 = [(WFIconComposeViewController *)self iconView];
  [v6 setIcon:v4];

  [(WFIconComposeViewController *)self updateAccessibilityValue];
  v7 = [(WFIconComposeViewController *)self workflow];
  [v7 save];
}

- (void)pickedSegment:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFIconComposeViewController *)self colorPicker];
  v11[0] = v5;
  v6 = [(WFIconComposeViewController *)self glyphPicker];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__WFIconComposeViewController_pickedSegment___block_invoke;
  v9[3] = &unk_279EE7FB8;
  v10 = v4;
  v8 = v4;
  [v7 enumerateObjectsUsingBlock:v9];
}

void __45__WFIconComposeViewController_pickedSegment___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v5 setHidden:{objc_msgSend(v4, "selectedSegmentIndex") != a3}];
}

- (void)setWorkflow:(id)a3
{
  objc_storeStrong(&self->_workflow, a3);

  [(WFIconComposeViewController *)self updateAccessibilityValue];
}

- (void)loadView
{
  v80[2] = *MEMORY[0x277D85DE8];
  v77.receiver = self;
  v77.super_class = WFIconComposeViewController;
  [(WFIconComposeViewController *)&v77 loadView];
  v3 = [MEMORY[0x277D75348] wf_settingsBackgroundColor];
  v4 = [(WFIconComposeViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(WFIconComposeViewController *)self view];
  firstValue = v5;
  [v6 addSubview:v5];

  v7 = objc_alloc_init(WFIconComposePreviewView);
  [(WFIconComposePreviewView *)v7 setIsAccessibilityElement:1];
  [(WFIconComposePreviewView *)v7 setAccessibilityTraits:*MEMORY[0x277D76560]];
  v8 = WFLocalizedString(@"Icon Preview");
  [(WFIconComposePreviewView *)v7 setAccessibilityLabel:v8];

  [(WFIconComposePreviewView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(WFIconComposeViewController *)self workflow];
  v10 = [v9 icon];
  [(WFIconComposePreviewView *)v7 setIcon:v10];

  v11 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:7 relatedBy:0 toItem:v7 attribute:8 multiplier:1.0 constant:0.0];
  [(WFIconComposePreviewView *)v7 addConstraint:v11];

  LODWORD(v12) = 1132068864;
  v72 = v7;
  [(WFIconComposePreviewView *)v7 setContentCompressionResistancePriority:1 forAxis:v12];
  [v5 addSubview:v7];
  [(WFIconComposeViewController *)self setIconView:v7];
  v13 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v13 setBackgroundColor:v14];

  v15 = [(WFIconComposeViewController *)self view];
  [v15 addSubview:v13];

  v76 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v76 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [MEMORY[0x277D75348] separatorColor];
  [v76 setBackgroundColor:v16];

  [v13 addSubview:v76];
  [(WFIconComposeViewController *)self setTopSeperator:v76];
  v17 = objc_alloc(MEMORY[0x277D75A08]);
  v18 = WFLocalizedString(@"Color");
  v80[0] = v18;
  v19 = WFLocalizedString(@"Glyph");
  v80[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
  v21 = [v17 initWithItems:v20];

  [v21 addTarget:self action:sel_pickedSegment_ forControlEvents:4096];
  [v21 setSelectedSegmentIndex:0];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v74 = v21;
  [v13 addSubview:v21];
  v22 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [MEMORY[0x277D75348] separatorColor];
  [v22 setBackgroundColor:v23];

  [v13 addSubview:v22];
  v24 = v22;
  v71 = v22;
  [(WFIconComposeViewController *)self setBottomSeparator:v22];
  v25 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v25 setBackgroundColor:v26];

  v27 = [(WFIconComposeViewController *)self view];
  [v27 addSubview:v25];

  v28 = [[WFGlyphPicker alloc] initWithControl:0 glyphDimension:36.0 sectionInset:15.0, 15.0, 15.0, 15.0];
  [(WFGlyphPicker *)v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WFGlyphPicker *)v28 setHidden:1];
  [(WFGlyphPicker *)v28 setDelegate:self];
  v29 = [(WFIconComposeViewController *)self workflow];
  v30 = [v29 icon];
  -[WFGlyphPicker setSelectedGlyphCharacter:](v28, "setSelectedGlyphCharacter:", [v30 glyphCharacter]);

  [v25 addSubview:v28];
  v70 = v28;
  [(WFIconComposeViewController *)self setGlyphPicker:v28];
  v31 = objc_alloc_init(WFColorPicker);
  [(WFColorPicker *)v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WFColorPicker *)v31 setHidden:0];
  [(WFColorPicker *)v31 setDelegate:self];
  v32 = [(WFIconComposeViewController *)self workflow];
  v33 = [v32 icon];
  v34 = [v33 backgroundColor];
  [(WFColorPicker *)v31 setSelectedColor:v34];

  [v25 addSubview:v31];
  [(WFIconComposeViewController *)self setColorPicker:v31];
  [(WFIconComposeViewController *)self updateAccessibilityValue];
  v35 = [(WFIconComposeViewController *)self view];
  v75 = [v35 safeAreaLayoutGuide];

  v36 = _NSDictionaryOfVariableBindings(&cfstr_PreviewviewCon.isa, firstValue, v13, v76, v21, v24, v25, v28, v31, v75, 0);
  v78 = @"separator";
  v37 = MEMORY[0x277CCABB0];
  v38 = [MEMORY[0x277D759A0] mainScreen];
  [v38 scale];
  v40 = [v37 numberWithDouble:1.0 / v39];
  v79 = v40;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];

  v42 = [(WFIconComposeViewController *)self view];
  v43 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[previewView]|" options:0 metrics:0 views:v36];
  [v42 addConstraints:v43];

  v44 = [(WFIconComposeViewController *)self view];
  v45 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[previewView(>=50)][controlView(44)][pickerView]|" options:6 metrics:v41 views:v36];
  [v44 addConstraints:v45];

  v46 = [(WFIconComposeViewController *)self view];
  v47 = [MEMORY[0x277CCAAD0] constraintWithItem:firstValue attribute:3 relatedBy:0 toItem:v75 attribute:3 multiplier:1.0 constant:0.0];
  [v46 addConstraint:v47];

  v48 = [(WFIconComposeViewController *)self view];
  v49 = [v25 topAnchor];
  v50 = [v75 bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:-205.0];
  [v48 addConstraint:v51];

  v52 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[glyphPicker]|" options:0 metrics:v41 views:v36];
  [v25 addConstraints:v52];

  v53 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[glyphPicker]|" options:0 metrics:v41 views:v36];
  [v25 addConstraints:v53];

  v54 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:[colorPicker(320)]" options:0 metrics:v41 views:v36];
  [v25 addConstraints:v54];

  v55 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[colorPicker]|" options:0 metrics:v41 views:v36];
  [v25 addConstraints:v55];

  v56 = [MEMORY[0x277CCAAD0] constraintWithItem:v31 attribute:9 relatedBy:0 toItem:v25 attribute:9 multiplier:1.0 constant:0.0];
  [v25 addConstraint:v56];

  v57 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[topSeparator(separator)]" options:0 metrics:v41 views:v36];
  [v13 addConstraints:v57];

  v58 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[bottomSeparator(separator)]|" options:0 metrics:v41 views:v36];
  [v13 addConstraints:v58];

  v59 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[topSeparator]|" options:0 metrics:v41 views:v36];
  [v13 addConstraints:v59];

  v60 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[bottomSeparator]|" options:0 metrics:v41 views:v36];
  [v13 addConstraints:v60];

  v61 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:[segmentedControl(300)]" options:0 metrics:v41 views:v36];
  [v13 addConstraints:v61];

  v62 = [MEMORY[0x277CCAAD0] constraintWithItem:v74 attribute:9 relatedBy:0 toItem:v13 attribute:9 multiplier:1.0 constant:0.0];
  [v13 addConstraint:v62];

  v63 = [MEMORY[0x277CCAAD0] constraintWithItem:v74 attribute:10 relatedBy:0 toItem:v13 attribute:10 multiplier:1.0 constant:0.0];
  [v13 addConstraint:v63];

  v64 = [MEMORY[0x277CCAAD0] constraintWithItem:v72 attribute:9 relatedBy:0 toItem:firstValue attribute:9 multiplier:1.0 constant:0.0];
  [firstValue addConstraint:v64];

  v65 = [MEMORY[0x277CCAAD0] constraintWithItem:v72 attribute:10 relatedBy:0 toItem:firstValue attribute:10 multiplier:1.0 constant:0.0];
  [firstValue addConstraint:v65];

  v66 = [MEMORY[0x277CCAAD0] constraintWithItem:v72 attribute:8 relatedBy:-1 toItem:firstValue attribute:8 multiplier:1.0 constant:-20.0];
  [firstValue addConstraint:v66];

  v67 = MEMORY[0x277CCAAD0];
  v68 = [(WFIconComposeViewController *)self glyphPicker];
  v69 = [v67 constraintWithItem:v68 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:205.0];
  [(WFGlyphPicker *)v70 addConstraint:v69];
}

- (WFIconComposeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = WFIconComposeViewController;
  v4 = [(WFIconComposeViewController *)&v10 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = WFLocalizedString(@"Icon");
    [(WFIconComposeViewController *)v4 setTitle:v5];

    v6 = WFLocalizedString(@"Shortcut icon editor");
    v7 = [(WFIconComposeViewController *)v4 navigationItem];
    [v7 setAccessibilityLabel:v6];

    v8 = v4;
  }

  return v4;
}

@end