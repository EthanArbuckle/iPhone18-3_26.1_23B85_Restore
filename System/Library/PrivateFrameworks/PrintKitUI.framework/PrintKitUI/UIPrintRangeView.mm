@interface UIPrintRangeView
- (UIPrintRangeView)initWithFrame:(CGRect)frame printInfo:(id)info;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)loadViews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)reloadTableView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updatePageRangeView;
@end

@implementation UIPrintRangeView

- (UIPrintRangeView)initWithFrame:(CGRect)frame printInfo:(id)info
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = UIPrintRangeView;
  height = [(UIPrintRangeView *)&v17 initWithFrame:x, y, width, height];
  if (height)
  {
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [(UIPrintRangeView *)height setBackgroundColor:systemGroupedBackgroundColor];

    [(UIPrintRangeView *)height setPrintInfo:infoCopy];
    pageRanges = [infoCopy pageRanges];
    v13 = [pageRanges count];

    if (v13 >= 2)
    {
      pageRanges2 = [infoCopy pageRanges];
      [(UIPrintRangeView *)height setSavedMultiPageRanges:pageRanges2];
    }

    [(UIPrintRangeView *)height loadViews];
    printInfo = [(UIPrintRangeView *)height printInfo];
    [printInfo addObserver:height forKeyPath:0x2871AF1B0 options:0 context:0];
  }

  return height;
}

- (void)dealloc
{
  printInfo = [(UIPrintRangeView *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF1B0];

  v4.receiver = self;
  v4.super_class = UIPrintRangeView;
  [(UIPrintRangeView *)&v4 dealloc];
}

- (void)loadViews
{
  v65[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D75B40];
  selfCopy = self;
  v4 = [v2 alloc];
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [v4 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
  [v9 setDataSource:selfCopy];
  [v9 setDelegate:selfCopy];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setEstimatedSectionFooterHeight:100.0];
  [(UIPrintRangeView *)selfCopy setTableView:v9];

  tableView = [(UIPrintRangeView *)selfCopy tableView];
  [(UIPrintRangeView *)selfCopy addSubview:tableView];

  v11 = MEMORY[0x277D75840];
  v12 = selfCopy;
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

  labelColor = [MEMORY[0x277D75348] labelColor];
  [v17 setTextColor:labelColor];

  [v17 setTextAlignment:1];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v22) = 1148846080;
  [v17 setContentHuggingPriority:0 forAxis:v22];
  v23 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  fromPicker = [(UIPrintRangeView *)v15 fromPicker];
  [v23 addSubview:fromPicker];

  toPicker = [(UIPrintRangeView *)v15 toPicker];
  [v23 addSubview:toPicker];

  [v23 addSubview:v17];
  v64[0] = @"table";
  tableView2 = [(UIPrintRangeView *)v15 tableView];
  v65[0] = tableView2;
  v65[1] = v23;
  v64[1] = @"pickers";
  v64[2] = @"from";
  fromPicker2 = [(UIPrintRangeView *)v15 fromPicker];
  v65[2] = fromPicker2;
  v64[3] = @"to";
  toPicker2 = [(UIPrintRangeView *)v15 toPicker];
  v64[4] = @"label";
  v65[3] = toPicker2;
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
  toPicker3 = [(UIPrintRangeView *)v15 toPicker];
  [toPicker3 frame];
  v36 = [v34 initWithFrame:?];
  [(UIPrintRangeView *)v15 setPickerView:v36];

  pickerView = [(UIPrintRangeView *)v15 pickerView];
  [pickerView addSubview:v23];

  pickerView2 = [(UIPrintRangeView *)v15 pickerView];
  v39 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[pickers]|" options:0 metrics:0 views:v29];
  [pickerView2 addConstraints:v39];

  pickerView3 = [(UIPrintRangeView *)v15 pickerView];
  centerXAnchor = [v23 centerXAnchor];
  pickerView4 = [(UIPrintRangeView *)v15 pickerView];
  centerXAnchor2 = [pickerView4 centerXAnchor];
  v44 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [pickerView3 addConstraint:v44];

  v45 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-(-16.0)-[table]|" options:0 metrics:0 views:v29];
  [(UIPrintRangeView *)v15 addConstraints:v45];

  v46 = objc_opt_new();
  v47 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
  [v46 setFont:v47];

  printInfo = [(UIPrintRangeView *)v15 printInfo];
  pageCount = [printInfo pageCount];

  if (pageCount < 1)
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

      printInfo2 = [(UIPrintRangeView *)v15 printInfo];
      pageCount2 = [printInfo2 pageCount];
    }

    while (v50 < pageCount2);
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
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

  printInfo = [(UIPrintRangeView *)self printInfo];
  pageRanges = [printInfo pageRanges];

  if (pageRanges && [pageRanges count] >= 2)
  {
    [(UIPrintRangeView *)self setSavedMultiPageRanges:pageRanges];
  }

  tableView = [(UIPrintRangeView *)self tableView];
  [tableView reloadData];

  fromPicker = [(UIPrintRangeView *)self fromPicker];
  [fromPicker reloadAllComponents];

  toPicker = [(UIPrintRangeView *)self toPicker];
  [toPicker reloadAllComponents];

  printInfo2 = [(UIPrintRangeView *)self printInfo];
  pageRanges2 = [printInfo2 pageRanges];
  v12 = [pageRanges2 count];
  printInfo3 = [(UIPrintRangeView *)self printInfo];
  v14 = printInfo3;
  if (v12 > 1)
  {
    pageCount = [printInfo3 pageCount];
    rangeValue = 0;
  }

  else
  {
    pageRanges3 = [printInfo3 pageRanges];
    firstObject = [pageRanges3 firstObject];
    rangeValue = [firstObject rangeValue];
    pageCount = v18;
  }

  printInfo4 = [(UIPrintRangeView *)self printInfo];
  pageCount2 = [printInfo4 pageCount];

  if (rangeValue > pageCount2)
  {
    printInfo5 = [(UIPrintRangeView *)self printInfo];
    rangeValue = [printInfo5 pageCount];
  }

  pageCount4 = rangeValue;
  if (pageCount >= 1)
  {
    pageCount4 = pageCount + rangeValue - 1;
    printInfo6 = [(UIPrintRangeView *)self printInfo];
    pageCount3 = [printInfo6 pageCount];

    if (pageCount4 > pageCount3)
    {
      printInfo7 = [(UIPrintRangeView *)self printInfo];
      pageCount4 = [printInfo7 pageCount];
    }
  }

  fromPicker2 = [(UIPrintRangeView *)self fromPicker];
  [fromPicker2 selectRow:rangeValue inComponent:0 animated:0];

  toPicker2 = [(UIPrintRangeView *)self toPicker];
  [toPicker2 selectRow:pageCount4 inComponent:0 animated:0];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(UIPrintRangeView *)self savedMultiPageRanges:view];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view dequeueReusableCellWithIdentifier:@"PageRangeViewCell"];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"PageRangeViewCell"];
  }

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  printInfo = [(UIPrintRangeView *)self printInfo];
  pageRanges = [printInfo pageRanges];
  v9 = [pageRanges count];
  printInfo2 = [(UIPrintRangeView *)self printInfo];
  v11 = printInfo2;
  if (v9 > 1)
  {
    pageCount = [printInfo2 pageCount];
    v18 = 0;
  }

  else
  {
    pageRanges2 = [printInfo2 pageRanges];
    firstObject = [pageRanges2 firstObject];
    selfCopy = self;
    rangeValue = [firstObject rangeValue];
    pageCount = v16;

    v18 = rangeValue;
    self = selfCopy;
  }

  if (![pathCopy row])
  {
    printInfo3 = [(UIPrintRangeView *)self printInfo];
    if (pageCount == [printInfo3 pageCount])
    {
      printInfo4 = [(UIPrintRangeView *)self printInfo];
      pageRanges3 = [printInfo4 pageRanges];
      v22 = [pageRanges3 count] < 2;
    }

    else
    {
      v22 = 0;
    }

    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v40 = [v39 localizedStringForKey:@"All Pages" value:@"All Pages" table:@"Localizable"];
    [valueCellConfiguration setText:v40];

    [valueCellConfiguration setSecondaryText:0];
    goto LABEL_18;
  }

  if ([pathCopy row] == 1)
  {
    savedMultiPageRanges = [(UIPrintRangeView *)self savedMultiPageRanges];

    if (savedMultiPageRanges)
    {
      printInfo5 = [(UIPrintRangeView *)self printInfo];
      pageRanges4 = [printInfo5 pageRanges];
      v22 = [pageRanges4 count] > 1;

      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"Custom Range" value:@"Custom Range" table:@"Localizable"];
      [valueCellConfiguration setText:v24];

      savedMultiPageRanges2 = [(UIPrintRangeView *)self savedMultiPageRanges];
      v26 = SummaryForRange(savedMultiPageRanges2);
      [valueCellConfiguration setSecondaryText:v26];

      secondaryTextProperties = [valueCellConfiguration secondaryTextProperties];
      [secondaryTextProperties setNumberOfLines:0];

LABEL_18:
      [v6 setSelectionStyle:3];
      goto LABEL_19;
    }
  }

  printInfo6 = [(UIPrintRangeView *)self printInfo];
  v22 = pageCount < [printInfo6 pageCount];

  v29 = LocalizedUnsignedInteger(v18 + 1);
  v30 = LocalizedUnsignedInteger(pageCount + v18);
  v31 = MEMORY[0x277CCACA8];
  v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v33 = v32;
  if (pageCount == 1)
  {
    v34 = [v32 localizedStringForKey:@"Page %@" value:@"Page %@" table:@"Localizable"];
  }

  else
  {
    v34 = [v32 localizedStringForKey:@"Pages %@-%@" value:@"Pages %@-%@" table:@"Localizable"];
    v43 = v30;
  }

  v38 = [v31 stringWithFormat:v34, v29, v43];
  [valueCellConfiguration setText:v38];

  [valueCellConfiguration setSecondaryText:0];
  [v6 setSelectionStyle:0];

LABEL_19:
  [v6 setContentConfiguration:valueCellConfiguration];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (![pathCopy row])
  {
    printInfo = [(UIPrintRangeView *)self printInfo];
    pageCount = [printInfo pageCount];

    v8 = [MEMORY[0x277CCAE60] valueWithRange:{0, pageCount}];
    v16[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    printInfo2 = [(UIPrintRangeView *)self printInfo];
    [printInfo2 setPageRanges:v9];

    fromPicker = [(UIPrintRangeView *)self fromPicker];
    [fromPicker selectRow:0 inComponent:0 animated:1];

    toPicker = [(UIPrintRangeView *)self toPicker];
    [toPicker selectRow:pageCount - 1 inComponent:0 animated:1];

    [(UIPrintRangeView *)self reloadTableView];
  }

  if ([pathCopy row] == 1)
  {
    savedMultiPageRanges = [(UIPrintRangeView *)self savedMultiPageRanges];

    if (savedMultiPageRanges)
    {
      savedMultiPageRanges2 = [(UIPrintRangeView *)self savedMultiPageRanges];
      printInfo3 = [(UIPrintRangeView *)self printInfo];
      [printInfo3 setPageRanges:savedMultiPageRanges2];

      [(UIPrintRangeView *)self reloadTableView];
    }
  }
}

- (void)reloadTableView
{
  tableView = [(UIPrintRangeView *)self tableView];
  [tableView reloadData];

  tableView2 = [(UIPrintRangeView *)self tableView];
  [tableView2 layoutIfNeeded];
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = [(UIPrintRangeView *)self printInfo:view];
  pageCount = [v4 pageCount];

  return pageCount;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v20[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  fromPicker = [(UIPrintRangeView *)self fromPicker];
  v8 = [fromPicker selectedRowInComponent:0];

  toPicker = [(UIPrintRangeView *)self toPicker];
  v10 = [toPicker selectedRowInComponent:0];

  fromPicker2 = [(UIPrintRangeView *)self fromPicker];

  toPicker2 = [(UIPrintRangeView *)self toPicker];
  fromPicker3 = toPicker2;
  if (fromPicker2 == viewCopy && v8 > v10)
  {
    [toPicker2 selectRow:v8 inComponent:0 animated:1];
    v10 = v8;
LABEL_7:

    goto LABEL_8;
  }

  if (fromPicker3 == viewCopy && v8 > v10)
  {
    fromPicker3 = [(UIPrintRangeView *)self fromPicker];
    [fromPicker3 selectRow:v10 inComponent:0 animated:1];
    v8 = v10;
    goto LABEL_7;
  }

LABEL_8:
  printInfo = [(UIPrintRangeView *)self printInfo];
  pageRanges = [printInfo pageRanges];
  firstObject = [pageRanges firstObject];
  [firstObject rangeValue];

  v17 = [MEMORY[0x277CCAE60] valueWithRange:{v8, v10 - v8 + 1}];
  v20[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  printInfo2 = [(UIPrintRangeView *)self printInfo];
  [printInfo2 setPageRanges:v18];

  [(UIPrintRangeView *)self reloadTableView];
}

@end