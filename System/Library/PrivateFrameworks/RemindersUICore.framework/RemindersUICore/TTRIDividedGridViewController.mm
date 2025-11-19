@interface TTRIDividedGridViewController
+ (id)dividerColor;
- (CGSize)intrinsicContentSize;
- (TTRIDividedGridViewController)initWithType:(int64_t)a3 buttonTitles:(id)a4 buttonAccessibilityLabels:(id)a5 cellBackgroundColor:(id)a6;
- (TTRIDividedGridViewControllerDelegate)delegate;
- (double)_neededHeight;
- (id)_newDividerView;
- (void)cellTapped:(id)a3;
- (void)loadView;
- (void)setPreferredWidth:(double)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRIDividedGridViewController

+ (id)dividerColor
{
  if (dividerColor_onceToken != -1)
  {
    +[TTRIDividedGridViewController dividerColor];
  }

  v3 = dividerColor___dividerColor;

  return v3;
}

void __45__TTRIDividedGridViewController_dividerColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] separatorColor];
  v1 = dividerColor___dividerColor;
  dividerColor___dividerColor = v0;
}

- (TTRIDividedGridViewController)initWithType:(int64_t)a3 buttonTitles:(id)a4 buttonAccessibilityLabels:(id)a5 cellBackgroundColor:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = TTRIDividedGridViewController;
  v14 = [(TTRIDividedGridViewController *)&v17 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    v14->_type = a3;
    objc_storeStrong(&v14->_buttonTitles, a4);
    objc_storeStrong(&v15->_cellBackgroundColor, a6);
    objc_storeStrong(&v15->_buttonAccessibilityLabels, a5);
  }

  return v15;
}

- (void)loadView
{
  v2 = self;
  v97[1] = *MEMORY[0x277D85DE8];
  type = self->_type;
  v4 = 7;
  if (type != 1)
  {
    v4 = 0;
  }

  v5 = type == 0;
  v6 = 4;
  if (!v5)
  {
    v6 = v4;
  }

  obj = v6;
  v81 = objc_opt_new();
  v80 = objc_opt_new();
  v96 = @"dividerWidth";
  v7 = MEMORY[0x277CCABB0];
  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  v10 = [v7 numberWithDouble:1.0 / v9];
  v97[0] = v10;
  v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:&v96 count:1];

  v11 = [(TTRIDividedGridViewController *)v2 buttonTitles];
  v12 = [v11 count];

  v89 = v2;
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v82 = v13;
      v84 = v14;
      v17 = [(TTRIDividedGridViewController *)v2 buttonTitles];
      v18 = [v17 count];

      if (!(v16 % obj))
      {
        v19 = objc_opt_new();

        v20 = objc_opt_new();
        [v80 addObject:v19];
        v82 = v19;
        v84 = v20;
      }

      v21 = [TTRIUIDividedGridViewCell alloc];
      v22 = v21;
      if (v2->_cellBackgroundColor)
      {
        v23 = [(TTRIUIDividedGridViewCell *)v21 initWithBackgroundColor:?];
      }

      else
      {
        v24 = [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
        v23 = [(TTRIUIDividedGridViewCell *)v22 initWithBackgroundColor:v24];
      }

      [(TTRIUIDividedGridViewCell *)v23 setViewController:v2];
      [(TTRIUIDividedGridViewCell *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
      v25 = [(TTRIDividedGridViewController *)v2 buttonTitles];
      v26 = [v25 objectAtIndexedSubscript:v16];
      v27 = [(TTRIUIDividedGridViewCell *)v23 label];
      [v27 setText:v26];

      v28 = [(TTRIDividedGridViewController *)v2 buttonAccessibilityLabels];
      if ([v28 count] > v16)
      {
        [(TTRIDividedGridViewController *)v2 buttonAccessibilityLabels];
      }

      else
      {
        [(TTRIDividedGridViewController *)v2 buttonTitles];
      }
      v29 = ;
      v30 = v16 + 1;
      v31 = [v29 objectAtIndexedSubscript:v16];
      [(TTRIUIDividedGridViewCell *)v23 setAccessibilityLabel:v31];

      [v81 addObject:v23];
      [v82 addSubview:v23];
      v32 = [MEMORY[0x277CCAAD0] constraintWithItem:v23 attribute:8 relatedBy:0 toItem:v82 attribute:8 multiplier:1.0 constant:0.0];
      v14 = v84;
      [v84 addObject:v32];

      v33 = [MEMORY[0x277CCAAD0] constraintWithItem:v23 attribute:3 relatedBy:0 toItem:v82 attribute:3 multiplier:1.0 constant:0.0];
      [v84 addObject:v33];

      v34 = [MEMORY[0x277CCAAD0] constraintWithItem:v23 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
      [(TTRIUIDividedGridViewCell *)v23 setWidthConstraint:v34];

      v35 = [(TTRIUIDividedGridViewCell *)v23 widthConstraint];
      LODWORD(v36) = 1148846080;
      [v35 setPriority:v36];

      v37 = [(TTRIUIDividedGridViewCell *)v23 widthConstraint];
      [v82 addConstraint:v37];

      if (!(v16 % obj))
      {
        break;
      }

      v38 = v30 % obj;
      v39 = [(TTRIDividedGridViewController *)v89 _newDividerView];
      [v82 addSubview:v39];
      v40 = [MEMORY[0x277CCAAD0] constraintWithItem:v39 attribute:8 relatedBy:0 toItem:v82 attribute:8 multiplier:1.0 constant:0.0];
      [v84 addObject:v40];

      v41 = MEMORY[0x277CCAAD0];
      v42 = _NSDictionaryOfVariableBindings(&cfstr_Previousbutton.isa, v15, v39, v23, 0);
      v43 = [v41 constraintsWithVisualFormat:@"H:[previousButton][dividerView(==dividerWidth)][buttonView]" options:1024 metrics:v88 views:v42];
      [v84 addObjectsFromArray:v43];

      if (v16 == v18 - 1 && v38)
      {
        v44 = [(TTRIDividedGridViewController *)v89 _newDividerView];
        v13 = v82;
        [v82 addSubview:v44];
        v45 = [MEMORY[0x277CCAAD0] constraintWithItem:v44 attribute:8 relatedBy:0 toItem:v82 attribute:8 multiplier:1.0 constant:0.0];
        v14 = v84;
        [v84 addObject:v45];

        v46 = MEMORY[0x277CCAAD0];
        v47 = _NSDictionaryOfVariableBindings(&cfstr_ButtonviewEndo.isa, v23, v44, 0);
        v48 = [v46 constraintsWithVisualFormat:@"H:[buttonView][endOfWeekDivider(==dividerWidth)]|" options:1024 metrics:v88 views:v47];
        [v84 addObjectsFromArray:v48];

        goto LABEL_23;
      }

      if (!v38)
      {
        v50 = MEMORY[0x277CCAAD0];
        v44 = _NSDictionaryOfVariableBindings(&cfstr_Previousbutton.isa, v15, v39, v23, 0);
        v47 = [v50 constraintsWithVisualFormat:@"H:[buttonView]|" options:1024 metrics:v88 views:v44];
        v14 = v84;
        [v84 addObjectsFromArray:v47];
        v13 = v82;
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      v13 = v82;
      v14 = v84;
LABEL_25:

      v51 = [v13 buttonViews];
      [v51 addObject:v23];

      [v13 addConstraints:v14];
      v52 = [(TTRIDividedGridViewController *)v89 buttonTitles];
      v53 = [v52 count];

      v15 = v23;
      ++v16;
      v54 = v30 >= v53;
      v2 = v89;
      if (v54)
      {

        goto LABEL_29;
      }
    }

    v49 = MEMORY[0x277CCAAD0];
    v39 = _NSDictionaryOfVariableBindings(&cfstr_Buttonview.isa, v23, 0);
    v44 = [v49 constraintsWithVisualFormat:@"H:|[buttonView]" options:1024 metrics:v88 views:v39];
    [v84 addObjectsFromArray:v44];
    v13 = v82;
    goto LABEL_24;
  }

  v14 = 0;
  v13 = 0;
LABEL_29:
  v83 = v13;
  v85 = v14;
  v55 = objc_opt_new();
  [v55 setViewController:v2];
  v56 = objc_opt_new();
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obja = v80;
  v57 = [obja countByEnumeratingWithState:&v91 objects:v95 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = 0;
    firstValue = *v92;
    do
    {
      v60 = 0;
      v61 = v59;
      do
      {
        if (*v92 != firstValue)
        {
          objc_enumerationMutation(obja);
        }

        v62 = *(*(&v91 + 1) + 8 * v60);
        [v62 setTranslatesAutoresizingMaskIntoConstraints:0];
        v63 = [MEMORY[0x277CCAAD0] constraintWithItem:v62 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:43.5];
        [v62 setHeightConstraint:v63];

        v64 = [v62 heightConstraint];
        [v62 addConstraint:v64];

        [v55 addSubview:v62];
        v65 = MEMORY[0x277CCAAD0];
        v66 = _NSDictionaryOfVariableBindings(&cfstr_Weekview.isa, v62, 0);
        v67 = [v65 constraintsWithVisualFormat:@"H:|[weekView]" options:0 metrics:0 views:v66];
        [v56 addObjectsFromArray:v67];

        v68 = [MEMORY[0x277CCAAD0] constraintWithItem:v55 attribute:7 relatedBy:1 toItem:v62 attribute:7 multiplier:1.0 constant:0.0];
        [v56 addObject:v68];

        if (v61)
        {
          v69 = [(TTRIDividedGridViewController *)v2 _newDividerView];
          [v55 addSubview:v69];
          v70 = MEMORY[0x277CCAAD0];
          v71 = _NSDictionaryOfVariableBindings(&cfstr_Dividerview.isa, v69, 0);
          v72 = [v70 constraintsWithVisualFormat:@"H:|[dividerView]|" options:0 metrics:0 views:v71];
          [v56 addObjectsFromArray:v72];

          v73 = MEMORY[0x277CCAAD0];
          v74 = _NSDictionaryOfVariableBindings(&cfstr_PreviousviewWe.isa, v61, v62, v69, 0);
          v75 = [v73 constraintsWithVisualFormat:@"V:[previousView][dividerView(==dividerWidth)][weekView]" options:0 metrics:v88 views:v74];
          [v56 addObjectsFromArray:v75];

          v2 = v89;
        }

        v59 = v62;

        ++v60;
        v61 = v59;
      }

      while (v58 != v60);
      v58 = [obja countByEnumeratingWithState:&v91 objects:v95 count:16];
    }

    while (v58);
  }

  else
  {
    v59 = 0;
  }

  v76 = MEMORY[0x277CCAAD0];
  v77 = [obja objectAtIndexedSubscript:0];
  v78 = [v76 constraintWithItem:v55 attribute:3 relatedBy:0 toItem:v77 attribute:3 multiplier:1.0 constant:0.0];
  [v56 addObject:v78];

  v79 = [MEMORY[0x277CCAAD0] constraintWithItem:v55 attribute:4 relatedBy:0 toItem:v59 attribute:4 multiplier:1.0 constant:0.0];
  [v56 addObject:v79];

  [v55 addConstraints:v56];
  [(TTRIDividedGridViewController *)v2 setView:v55];
  [(TTRIDividedGridViewController *)v2 setAllCells:v81];
  [(TTRIDividedGridViewController *)v2 setWeekViews:obja];
}

- (id)_newDividerView
{
  v2 = objc_opt_new();
  v3 = +[TTRIDividedGridViewController dividerColor];
  [v2 setBackgroundColor:v3];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v2;
}

- (void)cellTapped:(id)a3
{
  v4 = a3;
  v6 = [(TTRIDividedGridViewController *)self delegate];
  v5 = [(TTRIDividedGridViewController *)self allCells];
  [v6 dividedGridViewController:self didSelectCell:v4 atIndex:{objc_msgSend(v5, "indexOfObject:", v4)}];
}

- (void)viewWillLayoutSubviews
{
  v56 = *MEMORY[0x277D85DE8];
  [(TTRIDividedGridViewController *)self preferredWidth];
  v4 = v3;
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = 1.0 / v6;

  type = self->_type;
  if (type == 1)
  {
    v9 = v4 + v7 * -6.0;
    v10 = 7.0;
  }

  else if (type)
  {
    v10 = 0.0;
    v9 = v4;
  }

  else
  {
    v9 = v4 + v7 * -3.0;
    v10 = 4.0;
  }

  [(TTRIDividedGridViewController *)self preferredInset];
  CalFloorToScreenScale();
  v12 = v11;
  CalCeilToScreenScale();
  v14 = v13;
  v15 = objc_opt_new();
  if (v10 > 0.0)
  {
    v16 = 1;
    do
    {
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
      [v15 addObject:v17];

      v18 = v16++;
    }

    while (v10 > v18);
  }

  v19 = [v15 valueForKeyPath:@"@sum.self"];
  [v19 doubleValue];
  v21 = v20;

  if (v21 < v9)
  {
    v22 = 0;
    v23 = 0;
    v24 = (v10 + -1.0);
    do
    {
      if (v10 <= v23 || v24 < 1 || v23 >= v24)
      {
        break;
      }

      v27 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
      if (v22)
      {
        [v15 setObject:v27 atIndexedSubscript:v23];

        ++v23;
      }

      else
      {
        [v15 setObject:v27 atIndexedSubscript:v24];

        --v24;
      }

      v22 ^= 1u;
      v28 = [v15 valueForKeyPath:@"@sum.self"];
      [v28 doubleValue];
      v30 = v29;
    }

    while (v30 < v9);
  }

  [(TTRIDividedGridViewController *)self _rowHeightForWidth:v14];
  v32 = v31;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v33 = [(TTRIDividedGridViewController *)self weekViews];
  v34 = [v33 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v52;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v52 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v51 + 1) + 8 * i);
        v39 = [v38 buttonViews];
        v40 = [v39 count];

        if (v40)
        {
          v41 = 0;
          do
          {
            v42 = [v38 buttonViews];
            v43 = [v42 objectAtIndexedSubscript:v41];

            v44 = [v15 objectAtIndexedSubscript:v41];
            [v44 doubleValue];
            v46 = v45;
            v47 = [v43 widthConstraint];
            [v47 setConstant:v46];

            ++v41;
            v48 = [v38 buttonViews];
            v49 = [v48 count];
          }

          while (v49 > v41);
        }

        v50 = [v38 heightConstraint];
        [v50 setConstant:v32];
      }

      v35 = [v33 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v35);
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(TTRIDividedGridViewController *)self delegate];
  [v3 dividedGridViewControllerDidLayout:self];
}

- (double)_neededHeight
{
  v3 = [(TTRIDividedGridViewController *)self weekViews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = v4;
    v6 = [(TTRIDividedGridViewController *)self weekViews];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 heightConstraint];
    [v8 constant];
    v10 = v9;
    v11 = (v4 + 1);
    v12 = [MEMORY[0x277D759A0] mainScreen];
    [v12 scale];
    v14 = 1.0 / v13 * v11 + v5 * v10;
  }

  else
  {
    [(TTRIDividedGridViewController *)self preferredWidth];
    v16 = v15;
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 scale];
    v14 = v16 + 1.0 / v17 * 2.0;
  }

  return v14;
}

- (CGSize)intrinsicContentSize
{
  [(TTRIDividedGridViewController *)self preferredWidth];
  v4 = v3;
  [(TTRIDividedGridViewController *)self _neededHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)setPreferredWidth:(double)a3
{
  if (self->_preferredWidth != a3)
  {
    self->_preferredWidth = a3;
    v5 = [(TTRIDividedGridViewController *)self view];
    [v5 setNeedsLayout];

    v6 = [(TTRIDividedGridViewController *)self view];
    [v6 invalidateIntrinsicContentSize];
  }
}

- (TTRIDividedGridViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end