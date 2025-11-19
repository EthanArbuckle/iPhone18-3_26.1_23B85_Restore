@interface UIPrintRangeView
- (UIPrintRangeView)initWithFrame:(CGRect)a3 printInfo:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)loadViews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)reloadTableView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updatePageRangeView;
@end

@implementation UIPrintRangeView

- (UIPrintRangeView)initWithFrame:(CGRect)a3 printInfo:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = UIPrintRangeView;
  v10 = [(UIPrintRangeView *)&v17 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [(UIPrintRangeView *)v10 setBackgroundColor:v11];

    [(UIPrintRangeView *)v10 setPrintInfo:v9];
    v12 = [v9 pageRanges];
    v13 = [v12 count];

    if (v13 >= 2)
    {
      v14 = [v9 pageRanges];
      [(UIPrintRangeView *)v10 setSavedMultiPageRanges:v14];
    }

    [(UIPrintRangeView *)v10 loadViews];
    v15 = [(UIPrintRangeView *)v10 printInfo];
    [v15 addObserver:v10 forKeyPath:0x2871AF1B0 options:0 context:0];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [(UIPrintRangeView *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF1B0];

  v4.receiver = self;
  v4.super_class = UIPrintRangeView;
  [(UIPrintRangeView *)&v4 dealloc];
}

- (void)loadViews
{
  v65[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D75B40];
  v3 = self;
  v4 = [v2 alloc];
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [v4 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
  [v9 setDataSource:v3];
  [v9 setDelegate:v3];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setEstimatedSectionFooterHeight:100.0];
  [(UIPrintRangeView *)v3 setTableView:v9];

  v10 = [(UIPrintRangeView *)v3 tableView];
  [(UIPrintRangeView *)v3 addSubview:v10];

  v11 = MEMORY[0x277D75840];
  v12 = v3;
  v13 = [[v11 alloc] initWithFrame:{v5, v6, v7, v8}];
  [v13 setDataSource:v12];
  [v13 setDelegate:v12];

  [v13 setBackgroundColor:0];
  [v13 setOpaque:0];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIPrintRangeView *)v12 setFromPicker:v13];

  v14 = MEMORY[0x277D75840];
  v15 = v12;
  v16 = [[v14 alloc] initWithFrame:{v5, v6, v7, v8}];
  [v16 setDataSource:v15];
  [v16 setDelegate:v15];

  [v16 setBackgroundColor:0];
  [v16 setOpaque:0];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIPrintRangeView *)v15 setToPicker:v16];

  v17 = objc_alloc_init(MEMORY[0x277D756B8]);
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"to" value:@"to" table:@"Localizable"];
  [v17 setText:v19];

  [v17 setOpaque:0];
  [v17 setBackgroundColor:0];
  v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  [v17 setFont:v20];

  v21 = [MEMORY[0x277D75348] labelColor];
  [v17 setTextColor:v21];

  [v17 setTextAlignment:1];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v22) = 1148846080;
  [v17 setContentHuggingPriority:0 forAxis:v22];
  v23 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [(UIPrintRangeView *)v15 fromPicker];
  [v23 addSubview:v24];

  v25 = [(UIPrintRangeView *)v15 toPicker];
  [v23 addSubview:v25];

  [v23 addSubview:v17];
  v64[0] = @"table";
  v26 = [(UIPrintRangeView *)v15 tableView];
  v65[0] = v26;
  v65[1] = v23;
  v64[1] = @"pickers";
  v64[2] = @"from";
  v27 = [(UIPrintRangeView *)v15 fromPicker];
  v65[2] = v27;
  v64[3] = @"to";
  v28 = [(UIPrintRangeView *)v15 toPicker];
  v64[4] = @"label";
  v65[3] = v28;
  v65[4] = v17;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:5];

  v30 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-20-[from]|" options:0 metrics:0 views:v29];
  [v23 addConstraints:v30];

  v31 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-20-[label]|" options:0 metrics:0 views:v29];
  [v23 addConstraints:v31];

  v32 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-20-[to]|" options:0 metrics:0 views:v29];
  [v23 addConstraints:v32];

  v33 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[table]|" options:0 metrics:0 views:v29];
  [(UIPrintRangeView *)v15 addConstraints:v33];

  v34 = objc_alloc(MEMORY[0x277D75D18]);
  v35 = [(UIPrintRangeView *)v15 toPicker];
  [v35 frame];
  v36 = [v34 initWithFrame:?];
  [(UIPrintRangeView *)v15 setPickerView:v36];

  v37 = [(UIPrintRangeView *)v15 pickerView];
  [v37 addSubview:v23];

  v38 = [(UIPrintRangeView *)v15 pickerView];
  v39 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[pickers]|" options:0 metrics:0 views:v29];
  [v38 addConstraints:v39];

  v40 = [(UIPrintRangeView *)v15 pickerView];
  v41 = [v23 centerXAnchor];
  v42 = [(UIPrintRangeView *)v15 pickerView];
  v43 = [v42 centerXAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];
  [v40 addConstraint:v44];

  v45 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-(-16.0)-[table]|" options:0 metrics:0 views:v29];
  [(UIPrintRangeView *)v15 addConstraints:v45];

  v46 = objc_opt_new();
  v47 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
  [v46 setFont:v47];

  v48 = [(UIPrintRangeView *)v15 printInfo];
  v49 = [v48 pageCount];

  if (v49 < 1)
  {
    v57 = 32.0;
  }

  else
  {
    v50 = 0;
    v51 = 0.0;
    do
    {
      v52 = LocalizedInteger(++v50);
      [v46 setText:v52];

      [v46 intrinsicContentSize];
      v54 = ceil(v53);
      if (v54 >= v51)
      {
        v51 = v54;
      }

      v55 = [(UIPrintRangeView *)v15 printInfo];
      v56 = [v55 pageCount];
    }

    while (v50 < v56);
    v57 = v51 + 32.0;
  }

  if (v57 < 72.0)
  {
    v57 = 72.0;
  }

  [(UIPrintRangeView *)v15 setPickerWidth:v57];
  v58 = MEMORY[0x277CCACA8];
  [(UIPrintRangeView *)v15 pickerWidth];
  v60 = v59;
  [(UIPrintRangeView *)v15 pickerWidth];
  v62 = [v58 stringWithFormat:@"H:|-[from(==%f)]-%f-[label]-%f-[to(==%f)]-|", v60, 0x4020000000000000, 0x4020000000000000, v61];
  v63 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v62 options:0 metrics:0 views:v29];
  [v23 addConstraints:v63];

  [(UIPrintRangeView *)v15 updatePageRangeView];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__UIPrintRangeView_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updatePageRangeView
{
  v3 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  v5 = dispatch_get_current_queue();
  if (v5 != v3)
  {
    [UIPrintRangeView updatePageRangeView];
  }

  v6 = [(UIPrintRangeView *)self printInfo];
  v29 = [v6 pageRanges];

  if (v29 && [v29 count] >= 2)
  {
    [(UIPrintRangeView *)self setSavedMultiPageRanges:v29];
  }

  v7 = [(UIPrintRangeView *)self tableView];
  [v7 reloadData];

  v8 = [(UIPrintRangeView *)self fromPicker];
  [v8 reloadAllComponents];

  v9 = [(UIPrintRangeView *)self toPicker];
  [v9 reloadAllComponents];

  v10 = [(UIPrintRangeView *)self printInfo];
  v11 = [v10 pageRanges];
  v12 = [v11 count];
  v13 = [(UIPrintRangeView *)self printInfo];
  v14 = v13;
  if (v12 > 1)
  {
    v19 = [v13 pageCount];
    v17 = 0;
  }

  else
  {
    v15 = [v13 pageRanges];
    v16 = [v15 firstObject];
    v17 = [v16 rangeValue];
    v19 = v18;
  }

  v20 = [(UIPrintRangeView *)self printInfo];
  v21 = [v20 pageCount];

  if (v17 > v21)
  {
    v22 = [(UIPrintRangeView *)self printInfo];
    v17 = [v22 pageCount];
  }

  v23 = v17;
  if (v19 >= 1)
  {
    v23 = v19 + v17 - 1;
    v24 = [(UIPrintRangeView *)self printInfo];
    v25 = [v24 pageCount];

    if (v23 > v25)
    {
      v26 = [(UIPrintRangeView *)self printInfo];
      v23 = [v26 pageCount];
    }
  }

  v27 = [(UIPrintRangeView *)self fromPicker];
  [v27 selectRow:v17 inComponent:0 animated:0];

  v28 = [(UIPrintRangeView *)self toPicker];
  [v28 selectRow:v23 inComponent:0 animated:0];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(UIPrintRangeView *)self savedMultiPageRanges:a3];
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v45 = a4;
  v6 = [a3 dequeueReusableCellWithIdentifier:@"PageRangeViewCell"];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"PageRangeViewCell"];
  }

  v44 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v7 = [(UIPrintRangeView *)self printInfo];
  v8 = [v7 pageRanges];
  v9 = [v8 count];
  v10 = [(UIPrintRangeView *)self printInfo];
  v11 = v10;
  if (v9 > 1)
  {
    v17 = [v10 pageCount];
    v18 = 0;
  }

  else
  {
    v12 = [v10 pageRanges];
    v13 = [v12 firstObject];
    v14 = self;
    v15 = [v13 rangeValue];
    v17 = v16;

    v18 = v15;
    self = v14;
  }

  if (![v45 row])
  {
    v35 = [(UIPrintRangeView *)self printInfo];
    if (v17 == [v35 pageCount])
    {
      v36 = [(UIPrintRangeView *)self printInfo];
      v37 = [v36 pageRanges];
      v22 = [v37 count] < 2;
    }

    else
    {
      v22 = 0;
    }

    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v40 = [v39 localizedStringForKey:@"All Pages" value:@"All Pages" table:@"Localizable"];
    [v44 setText:v40];

    [v44 setSecondaryText:0];
    goto LABEL_18;
  }

  if ([v45 row] == 1)
  {
    v19 = [(UIPrintRangeView *)self savedMultiPageRanges];

    if (v19)
    {
      v20 = [(UIPrintRangeView *)self printInfo];
      v21 = [v20 pageRanges];
      v22 = [v21 count] > 1;

      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"Custom Range" value:@"Custom Range" table:@"Localizable"];
      [v44 setText:v24];

      v25 = [(UIPrintRangeView *)self savedMultiPageRanges];
      v26 = SummaryForRange(v25);
      [v44 setSecondaryText:v26];

      v27 = [v44 secondaryTextProperties];
      [v27 setNumberOfLines:0];

LABEL_18:
      [v6 setSelectionStyle:3];
      goto LABEL_19;
    }
  }

  v28 = [(UIPrintRangeView *)self printInfo];
  v22 = v17 < [v28 pageCount];

  v29 = LocalizedUnsignedInteger(v18 + 1);
  v30 = LocalizedUnsignedInteger(v17 + v18);
  v31 = MEMORY[0x277CCACA8];
  v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v33 = v32;
  if (v17 == 1)
  {
    v34 = [v32 localizedStringForKey:@"Page %@" value:@"Page %@" table:@"Localizable"];
  }

  else
  {
    v34 = [v32 localizedStringForKey:@"Pages %@-%@" value:@"Pages %@-%@" table:@"Localizable"];
    v43 = v30;
  }

  v38 = [v31 stringWithFormat:v34, v29, v43];
  [v44 setText:v38];

  [v44 setSecondaryText:0];
  [v6 setSelectionStyle:0];

LABEL_19:
  [v6 setContentConfiguration:v44];
  if (v22)
  {
    v41 = 3;
  }

  else
  {
    v41 = 0;
  }

  [v6 setAccessoryType:v41];

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (![v5 row])
  {
    v6 = [(UIPrintRangeView *)self printInfo];
    v7 = [v6 pageCount];

    v8 = [MEMORY[0x277CCAE60] valueWithRange:{0, v7}];
    v16[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v10 = [(UIPrintRangeView *)self printInfo];
    [v10 setPageRanges:v9];

    v11 = [(UIPrintRangeView *)self fromPicker];
    [v11 selectRow:0 inComponent:0 animated:1];

    v12 = [(UIPrintRangeView *)self toPicker];
    [v12 selectRow:v7 - 1 inComponent:0 animated:1];

    [(UIPrintRangeView *)self reloadTableView];
  }

  if ([v5 row] == 1)
  {
    v13 = [(UIPrintRangeView *)self savedMultiPageRanges];

    if (v13)
    {
      v14 = [(UIPrintRangeView *)self savedMultiPageRanges];
      v15 = [(UIPrintRangeView *)self printInfo];
      [v15 setPageRanges:v14];

      [(UIPrintRangeView *)self reloadTableView];
    }
  }
}

- (void)reloadTableView
{
  v3 = [(UIPrintRangeView *)self tableView];
  [v3 reloadData];

  v4 = [(UIPrintRangeView *)self tableView];
  [v4 layoutIfNeeded];
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v4 = [(UIPrintRangeView *)self printInfo:a3];
  v5 = [v4 pageCount];

  return v5;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(UIPrintRangeView *)self fromPicker];
  v8 = [v7 selectedRowInComponent:0];

  v9 = [(UIPrintRangeView *)self toPicker];
  v10 = [v9 selectedRowInComponent:0];

  v11 = [(UIPrintRangeView *)self fromPicker];

  v12 = [(UIPrintRangeView *)self toPicker];
  v13 = v12;
  if (v11 == v6 && v8 > v10)
  {
    [v12 selectRow:v8 inComponent:0 animated:1];
    v10 = v8;
LABEL_7:

    goto LABEL_8;
  }

  if (v13 == v6 && v8 > v10)
  {
    v13 = [(UIPrintRangeView *)self fromPicker];
    [v13 selectRow:v10 inComponent:0 animated:1];
    v8 = v10;
    goto LABEL_7;
  }

LABEL_8:
  v14 = [(UIPrintRangeView *)self printInfo];
  v15 = [v14 pageRanges];
  v16 = [v15 firstObject];
  [v16 rangeValue];

  v17 = [MEMORY[0x277CCAE60] valueWithRange:{v8, v10 - v8 + 1}];
  v20[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v19 = [(UIPrintRangeView *)self printInfo];
  [v19 setPageRanges:v18];

  [(UIPrintRangeView *)self reloadTableView];
}

@end