@interface WFValueListViewController
- (WFValueListViewController)initWithTitles:(id)titles switchTitle:(id)title sublist:(id)sublist;
- (WFValueListViewController)initWithTitles:(id)titles switchTitle:(id)title sublist:(id)sublist appearanceProxy:(id)proxy;
- (id)cellForTitleAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WFValueListViewController

- (WFValueListViewController)initWithTitles:(id)titles switchTitle:(id)title sublist:(id)sublist
{
  sublistCopy = sublist;
  titleCopy = title;
  titlesCopy = titles;
  v11 = +[WFAppearanceProxy defaultAppearanceProxy];
  v12 = [(WFValueListViewController *)self initWithTitles:titlesCopy switchTitle:titleCopy sublist:sublistCopy appearanceProxy:v11];

  return v12;
}

- (WFValueListViewController)initWithTitles:(id)titles switchTitle:(id)title sublist:(id)sublist appearanceProxy:(id)proxy
{
  titlesCopy = titles;
  titleCopy = title;
  sublistCopy = sublist;
  v24.receiver = self;
  v24.super_class = WFValueListViewController;
  v14 = -[WFValueListViewController initWithStyle:](&v24, sel_initWithStyle_, [proxy tableViewStyle]);
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_titles, titles);
    v15->_hasSwitch = titleCopy != 0;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sections = v15->_sections;
    v15->_sections = v16;

    objc_storeStrong(&v15->_switchTitle, title);
    if (v15->_hasSwitch)
    {
      [(NSMutableArray *)v15->_sections addObject:&unk_288322678];
      v18 = objc_alloc(MEMORY[0x277D75AE8]);
      v19 = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      configSwitch = v15->_configSwitch;
      v15->_configSwitch = v19;

      [(UISwitch *)v15->_configSwitch setOn:1];
    }

    if (sublistCopy)
    {
      [(NSMutableArray *)v15->_sections addObject:&unk_288322690];
      [(WFValueListViewController *)v15 setSublist:sublistCopy];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __80__WFValueListViewController_initWithTitles_switchTitle_sublist_appearanceProxy___block_invoke;
      v22[3] = &unk_279EC5718;
      v23 = v15;
      [sublistCopy setCompletionHandler:v22];
    }

    if ([(NSArray *)v15->_titles count])
    {
      [(NSMutableArray *)v15->_sections addObject:&unk_2883226A8];
    }
  }

  return v15;
}

void __80__WFValueListViewController_initWithTitles_switchTitle_sublist_appearanceProxy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sections];
  v3 = [v2 indexOfObject:&unk_288322690];

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(a1 + 32) tableView];
    v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:v3];
    [v5 reloadSections:v4 withRowAnimation:5];
  }
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = WFValueListViewController;
  [(WFValueListViewController *)&v8 viewDidLoad];
  v3 = *MEMORY[0x277D76F30];
  tableView = [(WFValueListViewController *)self tableView];
  [tableView setRowHeight:v3];

  tableView2 = [(WFValueListViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:44.0];

  tableView3 = [(WFValueListViewController *)self tableView];
  [tableView3 setEstimatedSectionHeaderHeight:0.0];

  tableView4 = [(WFValueListViewController *)self tableView];
  [tableView4 setEstimatedSectionFooterHeight:0.0];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v6 = [(NSMutableArray *)self->_sections indexOfObject:&unk_288322678];
  v7 = [(NSMutableArray *)self->_sections indexOfObject:&unk_2883226A8];
  v8 = [(NSMutableArray *)self->_sections indexOfObject:&unk_288322690];
  if (v6 == section)
  {
    return section != 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 == section)
  {
    if (section == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      titles = self->_titles;

      return [(NSArray *)titles count];
    }
  }

  else
  {
    return v8 == section && section != 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(NSMutableArray *)self->_sections indexOfObject:&unk_288322678];
  v9 = [(NSMutableArray *)self->_sections indexOfObject:&unk_2883226A8];
  v10 = [(NSMutableArray *)self->_sections indexOfObject:&unk_288322690];
  if ([pathCopy section] == v8)
  {
    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"kWFValueListCellRandomMACSwitchCellIdentifier"];
    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"kWFValueListCellRandomMACSwitchCellIdentifier"];
    }

    switchTitle = [(WFValueListViewController *)self switchTitle];
    textLabel = [v11 textLabel];
    [textLabel setText:switchTitle];

    [v11 setAccessoryView:self->_configSwitch];
    [v11 setSelectionStyle:0];
  }

  else if ([pathCopy section] == v9)
  {
    v11 = [(WFValueListViewController *)self cellForTitleAtIndexPath:pathCopy];
  }

  else if ([pathCopy section] == v10)
  {
    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"kWFValueListCellPrivateAddressCellIdentifier"];
    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"kWFValueListCellPrivateAddressCellIdentifier"];
      [v11 setSelectionStyle:0];
      altTextColor = [MEMORY[0x277D75348] altTextColor];
      detailTextLabel = [v11 detailTextLabel];
      [detailTextLabel setTextColor:altTextColor];

      [v11 setAccessoryType:1];
    }

    navigationItem = [(WFValueListViewController *)self->_sublist navigationItem];
    title = [navigationItem title];
    textLabel2 = [v11 textLabel];
    [textLabel2 setText:title];

    selectedTitle = [(WFValueListViewController *)self->_sublist selectedTitle];
    detailTextLabel2 = [v11 detailTextLabel];
    [detailTextLabel2 setText:selectedTitle];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)cellForTitleAtIndexPath:(id)path
{
  v4 = MEMORY[0x277D75B48];
  pathCopy = path;
  v6 = [[v4 alloc] initWithStyle:1 reuseIdentifier:0];
  titles = [(WFValueListViewController *)self titles];
  v8 = [pathCopy row];

  v9 = [titles objectAtIndex:v8];

  textLabel = [v6 textLabel];
  [textLabel setText:v9];

  selectedTitle = [(WFValueListViewController *)self selectedTitle];
  if ([v9 isEqualToString:selectedTitle])
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v6 setAccessoryType:v12];

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  sections = [(WFValueListViewController *)self sections];
  v7 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];
  integerValue = [v7 integerValue];

  if (integerValue == 1)
  {
    if (!self->_sublist)
    {
      goto LABEL_8;
    }

    navigationController = [(WFValueListViewController *)self navigationController];
    [navigationController pushViewController:self->_sublist animated:1];
  }

  else
  {
    if (integerValue != 2)
    {
      goto LABEL_8;
    }

    titles = [(WFValueListViewController *)self titles];
    navigationController = [titles objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    selectedTitle = [(WFValueListViewController *)self selectedTitle];
    v12 = [navigationController isEqualToString:selectedTitle];

    if ((v12 & 1) == 0)
    {
      [(WFValueListViewController *)self setSelectedTitle:navigationController];
      tableView = [(WFValueListViewController *)self tableView];
      v14 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(pathCopy, "section")}];
      [tableView reloadSections:v14 withRowAnimation:5];

      tableView2 = [(WFValueListViewController *)self tableView];
      v16 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(pathCopy, "section")}];
      [tableView2 _reloadSectionHeaderFooters:v16 withRowAnimation:5];
    }
  }

LABEL_8:
  completionHandler = [(WFValueListViewController *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFValueListViewController *)self completionHandler];
    selectedTitle2 = [(WFValueListViewController *)self selectedTitle];
    configSwitch = [(WFValueListViewController *)self configSwitch];
    (completionHandler2)[2](completionHandler2, selectedTitle2, [configSwitch isOn]);
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = [(WFValueListViewController *)self footerHandler:view];

  if (v5)
  {
    footerHandler = [(WFValueListViewController *)self footerHandler];
    selectedTitle = [(WFValueListViewController *)self selectedTitle];
    v8 = (footerHandler)[2](footerHandler, selectedTitle);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end