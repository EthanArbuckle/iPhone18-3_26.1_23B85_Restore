@interface WFValueListViewController
- (WFValueListViewController)initWithTitles:(id)a3 switchTitle:(id)a4 sublist:(id)a5;
- (WFValueListViewController)initWithTitles:(id)a3 switchTitle:(id)a4 sublist:(id)a5 appearanceProxy:(id)a6;
- (id)cellForTitleAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFValueListViewController

- (WFValueListViewController)initWithTitles:(id)a3 switchTitle:(id)a4 sublist:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[WFAppearanceProxy defaultAppearanceProxy];
  v12 = [(WFValueListViewController *)self initWithTitles:v10 switchTitle:v9 sublist:v8 appearanceProxy:v11];

  return v12;
}

- (WFValueListViewController)initWithTitles:(id)a3 switchTitle:(id)a4 sublist:(id)a5 appearanceProxy:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v24.receiver = self;
  v24.super_class = WFValueListViewController;
  v14 = -[WFValueListViewController initWithStyle:](&v24, sel_initWithStyle_, [a6 tableViewStyle]);
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_titles, a3);
    v15->_hasSwitch = v12 != 0;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sections = v15->_sections;
    v15->_sections = v16;

    objc_storeStrong(&v15->_switchTitle, a4);
    if (v15->_hasSwitch)
    {
      [(NSMutableArray *)v15->_sections addObject:&unk_288322678];
      v18 = objc_alloc(MEMORY[0x277D75AE8]);
      v19 = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      configSwitch = v15->_configSwitch;
      v15->_configSwitch = v19;

      [(UISwitch *)v15->_configSwitch setOn:1];
    }

    if (v13)
    {
      [(NSMutableArray *)v15->_sections addObject:&unk_288322690];
      [(WFValueListViewController *)v15 setSublist:v13];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __80__WFValueListViewController_initWithTitles_switchTitle_sublist_appearanceProxy___block_invoke;
      v22[3] = &unk_279EC5718;
      v23 = v15;
      [v13 setCompletionHandler:v22];
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
  v4 = [(WFValueListViewController *)self tableView];
  [v4 setRowHeight:v3];

  v5 = [(WFValueListViewController *)self tableView];
  [v5 setEstimatedRowHeight:44.0];

  v6 = [(WFValueListViewController *)self tableView];
  [v6 setEstimatedSectionHeaderHeight:0.0];

  v7 = [(WFValueListViewController *)self tableView];
  [v7 setEstimatedSectionFooterHeight:0.0];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(NSMutableArray *)self->_sections indexOfObject:&unk_288322678];
  v7 = [(NSMutableArray *)self->_sections indexOfObject:&unk_2883226A8];
  v8 = [(NSMutableArray *)self->_sections indexOfObject:&unk_288322690];
  if (v6 == a4)
  {
    return a4 != 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 == a4)
  {
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
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
    return v8 == a4 && a4 != 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableArray *)self->_sections indexOfObject:&unk_288322678];
  v9 = [(NSMutableArray *)self->_sections indexOfObject:&unk_2883226A8];
  v10 = [(NSMutableArray *)self->_sections indexOfObject:&unk_288322690];
  if ([v7 section] == v8)
  {
    v11 = [v6 dequeueReusableCellWithIdentifier:@"kWFValueListCellRandomMACSwitchCellIdentifier"];
    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"kWFValueListCellRandomMACSwitchCellIdentifier"];
    }

    v12 = [(WFValueListViewController *)self switchTitle];
    v13 = [v11 textLabel];
    [v13 setText:v12];

    [v11 setAccessoryView:self->_configSwitch];
    [v11 setSelectionStyle:0];
  }

  else if ([v7 section] == v9)
  {
    v11 = [(WFValueListViewController *)self cellForTitleAtIndexPath:v7];
  }

  else if ([v7 section] == v10)
  {
    v11 = [v6 dequeueReusableCellWithIdentifier:@"kWFValueListCellPrivateAddressCellIdentifier"];
    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"kWFValueListCellPrivateAddressCellIdentifier"];
      [v11 setSelectionStyle:0];
      v14 = [MEMORY[0x277D75348] altTextColor];
      v15 = [v11 detailTextLabel];
      [v15 setTextColor:v14];

      [v11 setAccessoryType:1];
    }

    v16 = [(WFValueListViewController *)self->_sublist navigationItem];
    v17 = [v16 title];
    v18 = [v11 textLabel];
    [v18 setText:v17];

    v19 = [(WFValueListViewController *)self->_sublist selectedTitle];
    v20 = [v11 detailTextLabel];
    [v20 setText:v19];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)cellForTitleAtIndexPath:(id)a3
{
  v4 = MEMORY[0x277D75B48];
  v5 = a3;
  v6 = [[v4 alloc] initWithStyle:1 reuseIdentifier:0];
  v7 = [(WFValueListViewController *)self titles];
  v8 = [v5 row];

  v9 = [v7 objectAtIndex:v8];

  v10 = [v6 textLabel];
  [v10 setText:v9];

  v11 = [(WFValueListViewController *)self selectedTitle];
  if ([v9 isEqualToString:v11])
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v21 = a4;
  [a3 deselectRowAtIndexPath:v21 animated:1];
  v6 = [(WFValueListViewController *)self sections];
  v7 = [v6 objectAtIndex:{objc_msgSend(v21, "section")}];
  v8 = [v7 integerValue];

  if (v8 == 1)
  {
    if (!self->_sublist)
    {
      goto LABEL_8;
    }

    v10 = [(WFValueListViewController *)self navigationController];
    [v10 pushViewController:self->_sublist animated:1];
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_8;
    }

    v9 = [(WFValueListViewController *)self titles];
    v10 = [v9 objectAtIndex:{objc_msgSend(v21, "row")}];

    v11 = [(WFValueListViewController *)self selectedTitle];
    v12 = [v10 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      [(WFValueListViewController *)self setSelectedTitle:v10];
      v13 = [(WFValueListViewController *)self tableView];
      v14 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v21, "section")}];
      [v13 reloadSections:v14 withRowAnimation:5];

      v15 = [(WFValueListViewController *)self tableView];
      v16 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v21, "section")}];
      [v15 _reloadSectionHeaderFooters:v16 withRowAnimation:5];
    }
  }

LABEL_8:
  v17 = [(WFValueListViewController *)self completionHandler];

  if (v17)
  {
    v18 = [(WFValueListViewController *)self completionHandler];
    v19 = [(WFValueListViewController *)self selectedTitle];
    v20 = [(WFValueListViewController *)self configSwitch];
    (v18)[2](v18, v19, [v20 isOn]);
  }
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(WFValueListViewController *)self footerHandler:a3];

  if (v5)
  {
    v6 = [(WFValueListViewController *)self footerHandler];
    v7 = [(WFValueListViewController *)self selectedTitle];
    v8 = (v6)[2](v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end