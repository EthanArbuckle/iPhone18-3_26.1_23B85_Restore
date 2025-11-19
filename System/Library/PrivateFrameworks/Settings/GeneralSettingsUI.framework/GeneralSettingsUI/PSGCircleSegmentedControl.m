@interface PSGCircleSegmentedControl
- (PSGCircleSegmentedControl)init;
- (PSGCircleSegmentedControlDelegate)delegate;
- (id)_circleImageWithColor:(id)a3 fillColor:(id)a4 diameter:(double)a5;
- (id)styleSensitiveImage:(id)a3;
- (void)addSegmentWithTitle:(id)a3;
- (void)segmentTapped:(id)a3;
- (void)selectSegmentAtIndex:(unint64_t)a3;
- (void)setSelectedSegmentIndex:(unint64_t)a3;
@end

@implementation PSGCircleSegmentedControl

- (id)_circleImageWithColor:(id)a3 fillColor:(id)a4 diameter:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  v11 = v10;
  v16.width = a5;
  v16.height = a5;
  UIGraphicsBeginImageContextWithOptions(v16, 0, v11);

  v12 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{1.0, 1.0, a5 + -2.0, a5 + -2.0}];
  if (v8)
  {
    [v8 set];
    [v12 fill];
  }

  [v7 set];
  [v12 stroke];
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

- (PSGCircleSegmentedControl)init
{
  v61.receiver = self;
  v61.super_class = PSGCircleSegmentedControl;
  v2 = [(PSGCircleSegmentedControl *)&v61 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = [(PSGCircleSegmentedControl *)v2 styleSensitiveImage:&__block_literal_global_3];
    activeImage = v2->_activeImage;
    v2->_activeImage = v3;

    v5 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
    [(UIImage *)v2->_activeImage size];
    v6 = [(PSGCircleSegmentedControl *)v2 _circleImageWithColor:v5 fillColor:0 diameter:?];
    placeholderImage = v2->_placeholderImage;
    v2->_placeholderImage = v6;

    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __33__PSGCircleSegmentedControl_init__block_invoke_2;
    v57[3] = &unk_2783255E8;
    objc_copyWeak(&v59, &location);
    v8 = v2;
    v58 = v8;
    v9 = [(PSGCircleSegmentedControl *)v8 styleSensitiveImage:v57];
    buttonImage = v8->_buttonImage;
    v8->_buttonImage = v9;

    v52 = MEMORY[0x277D85DD0];
    v53 = 3221225472;
    v54 = __33__PSGCircleSegmentedControl_init__block_invoke_3;
    v55 = &unk_278325610;
    v11 = v8;
    v56 = v11;
    v12 = [(PSGCircleSegmentedControl *)v11 styleSensitiveImage:&v52];
    highlightedImage = v11->_highlightedImage;
    v11->_highlightedImage = v12;

    v14 = objc_opt_new();
    segmentPlaceholders = v11->_segmentPlaceholders;
    v11->_segmentPlaceholders = v14;

    v16 = objc_opt_new();
    segments = v11->_segments;
    v11->_segments = v16;

    v18 = objc_opt_new();
    selectedSegmentConstraints = v11->_selectedSegmentConstraints;
    v11->_selectedSegmentConstraints = v18;

    v20 = objc_opt_new();
    segmentConstraints = v11->_segmentConstraints;
    v11->_segmentConstraints = v20;

    v22 = objc_opt_new();
    stack = v11->_stack;
    v11->_stack = v22;

    [(UIStackView *)v11->_stack setTranslatesAutoresizingMaskIntoConstraints:0, v52, v53, v54, v55];
    [(UIStackView *)v11->_stack setDistribution:3];
    [(UIStackView *)v11->_stack setAlignment:3];
    [(PSGCircleSegmentedControl *)v11 addSubview:v11->_stack];
    v24 = objc_alloc(MEMORY[0x277D756B8]);
    v25 = [v24 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v11->_label;
    v11->_label = v25;

    [(UILabel *)v11->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v11->_label setTextAlignment:1];
    v27 = v11->_label;
    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v27 setFont:v28];

    [(UILabel *)v11->_label setNumberOfLines:0];
    [(UILabel *)v11->_label setAdjustsFontSizeToFitWidth:1];
    [(PSGCircleSegmentedControl *)v11 addSubview:v11->_label];
    v29 = [(UIStackView *)v11->_stack topAnchor];
    v30 = [(PSGCircleSegmentedControl *)v11 topAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [v31 setActive:1];

    v32 = [(UIStackView *)v11->_stack leadingAnchor];
    v33 = [(PSGCircleSegmentedControl *)v11 leadingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v34 setActive:1];

    v35 = [(UIStackView *)v11->_stack trailingAnchor];
    v36 = [(PSGCircleSegmentedControl *)v11 trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    [v37 setActive:1];

    v38 = [(UIStackView *)v11->_stack bottomAnchor];
    v39 = [(UILabel *)v11->_label topAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    [v40 setActive:1];

    v41 = [(UILabel *)v11->_label leadingAnchor];
    v42 = [(PSGCircleSegmentedControl *)v11 leadingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    [v43 setActive:1];

    v44 = [(UILabel *)v11->_label trailingAnchor];
    v45 = [(PSGCircleSegmentedControl *)v11 trailingAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];
    [v46 setActive:1];

    v47 = [(UILabel *)v11->_label bottomAnchor];
    v48 = [(PSGCircleSegmentedControl *)v11 bottomAnchor];
    [(UIImage *)v2->_activeImage size];
    v50 = [v47 constraintEqualToAnchor:v48 constant:-(v49 + 20.0)];
    [v50 setActive:1];

    objc_destroyWeak(&v59);
    objc_destroyWeak(&location);
  }

  return v2;
}

id __33__PSGCircleSegmentedControl_init__block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v1 = PSG_BundleForGeneralSettingsUIFramework();
  v2 = [v0 imageNamed:@"HomeButtonSelector-sshb" inBundle:v1 compatibleWithTraitCollection:0];
  v3 = [MEMORY[0x277D75348] systemBlueColor];
  v4 = [v2 _flatImageWithColor:v3];

  return v4;
}

id __33__PSGCircleSegmentedControl_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277D75348] systemBlueColor];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [*(*(a1 + 32) + 528) size];
  v5 = [WeakRetained _circleImageWithColor:v3 fillColor:v4 diameter:?];

  return v5;
}

id __33__PSGCircleSegmentedControl_init__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D75348] systemBlueColor];
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  v5 = [v4 colorWithAlphaComponent:0.3];
  [*(*(a1 + 32) + 528) size];
  v6 = [v2 _circleImageWithColor:v3 fillColor:v5 diameter:?];

  return v6;
}

- (id)styleSensitiveImage:(id)a3
{
  v22 = self;
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277D75C80];
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v6 = [v4 traitCollectionWithDisplayScale:?];

  v7 = objc_alloc_init(MEMORY[0x277D755C0]);
  v8 = 0;
  v9 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:{*(&xmmword_21CF58B40 + v8), v22}];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __49__PSGCircleSegmentedControl_styleSensitiveImage___block_invoke;
    v23[3] = &unk_278325638;
    v25 = &v26;
    v13 = v3;
    v24 = v13;
    [v12 performAsCurrentTraitCollection:v23];
    v14 = v27[5];
    v15 = MEMORY[0x277D75C80];
    v32[0] = v6;
    v32[1] = v12;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v17 = [v15 traitCollectionWithTraitsFromCollections:v16];
    [v7 registerImage:v14 withTraitCollection:v17];

    v10 = 0;
    v8 = 1;
    v9 = v12;
  }

  while ((v11 & 1) != 0);
  v18 = [(PSGCircleSegmentedControl *)v22 traitCollection];
  v19 = [v7 imageWithTraitCollection:v18];

  _Block_object_dispose(&v26, 8);
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __49__PSGCircleSegmentedControl_styleSensitiveImage___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)addSegmentWithTitle:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D755E8];
  v5 = a3;
  v6 = [[v4 alloc] initWithImage:self->_placeholderImage];
  [(NSMutableArray *)self->_segmentPlaceholders addObject:v6];
  [(UIStackView *)self->_stack addArrangedSubview:v6];
  v7 = [PSGCircleSegment buttonWithType:0];
  [v7 setImage:self->_buttonImage animated:0];
  [v7 setImage:self->_highlightedImage forState:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTitle:v5 forState:0];

  [v7 addTarget:self action:sel_segmentTapped_ forControlEvents:0x2000];
  [(NSMutableArray *)self->_segments addObject:v7];
  [(PSGCircleSegmentedControl *)self addSubview:v7];
  v8 = [v7 centerXAnchor];
  v9 = [v6 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  v11 = [v7 centerYAnchor];
  v12 = [v6 centerYAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  segmentConstraints = self->_segmentConstraints;
  v17[0] = v10;
  v17[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [(NSMutableArray *)segmentConstraints addObject:v15];

  [(PSGCircleSegmentedControl *)self setPositionConstraintsActive:1 forButtonAtIndex:[(NSMutableArray *)self->_segmentConstraints count]- 1];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)setSelectedSegmentIndex:(unint64_t)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:?];
  if (v5 != self->_selectedSegment)
  {
    v6 = [(NSMutableArray *)self->_segments indexOfObject:?];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v6;
      [(PSGCircleSegment *)self->_selectedSegment setSelected:0];
      [(PSGCircleSegment *)self->_selectedSegment setUserInteractionEnabled:1];
      [(PSGCircleSegmentedControl *)self setPositionConstraintsActive:1 forButtonAtIndex:v7];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = self->_selectedSegmentConstraints;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v23 + 1) + 8 * i) setActive:0];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v10);
    }

    [(NSMutableArray *)self->_selectedSegmentConstraints removeAllObjects];
    objc_storeStrong(&self->_selectedSegment, v5);
    [(PSGCircleSegment *)self->_selectedSegment setSelected:1];
    [(PSGCircleSegment *)self->_selectedSegment setUserInteractionEnabled:0];
    [(PSGCircleSegmentedControl *)self setPositionConstraintsActive:0 forButtonAtIndex:a3];
    selectedSegmentConstraints = self->_selectedSegmentConstraints;
    v13 = [(PSGCircleSegment *)self->_selectedSegment centerXAnchor];
    v14 = [(PSGCircleSegmentedControl *)self centerXAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v27[0] = v15;
    v16 = [(PSGCircleSegment *)self->_selectedSegment bottomAnchor];
    v17 = [(PSGCircleSegmentedControl *)self bottomAnchor];
    [v16 constraintEqualToAnchor:v17];
    v19 = v18 = v5;
    v27[1] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    [(NSMutableArray *)selectedSegmentConstraints addObjectsFromArray:v20];

    v5 = v18;
    [MEMORY[0x277CCAAD0] activateConstraints:self->_selectedSegmentConstraints];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)segmentTapped:(id)a3
{
  v4 = [(NSMutableArray *)self->_segments indexOfObject:a3];
  if (v4 < [(NSMutableArray *)self->_segments count])
  {
    [(PSGCircleSegmentedControl *)self selectSegmentAtIndex:v4];
    v5 = [(PSGCircleSegmentedControl *)self delegate];
    [v5 segmentedControl:self didSelectSegmentAtIndex:v4];
  }
}

- (void)selectSegmentAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_segments indexOfObject:self->_selectedSegment]!= a3)
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:a3];
    selectedSegment = self->_selectedSegment;
    v7 = MEMORY[0x277D75D18];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __50__PSGCircleSegmentedControl_selectSegmentAtIndex___block_invoke;
    v12 = &unk_278325218;
    v13 = self;
    v14 = a3;
    v8 = selectedSegment;
    [v7 animateWithDuration:0 delay:&v9 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:0.7 completion:0.0];
    [v5 setImage:self->_activeImage animated:{1, v9, v10, v11, v12, v13, v14}];
    [(PSGCircleSegment *)v8 setImage:self->_buttonImage animated:1];
  }
}

uint64_t __50__PSGCircleSegmentedControl_selectSegmentAtIndex___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSelectedSegmentIndex:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (PSGCircleSegmentedControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end