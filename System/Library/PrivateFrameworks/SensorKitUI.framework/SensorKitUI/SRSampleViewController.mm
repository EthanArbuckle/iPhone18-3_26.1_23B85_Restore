@interface SRSampleViewController
+ (id)sampleViewControllerForAuthGroup:(id)group;
+ (void)initialize;
- (SRSampleViewController)init;
- (id)prepareEndRowWithText:(id)text detailText:(id)detailText;
- (id)prepareExtendedRowWithText:(id)text;
- (id)sortedKeysForDictionary:(id)dictionary;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SRSampleViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogSampleViewController = os_log_create("com.apple.SensorKit", "SRSampleViewController");
  }
}

- (SRSampleViewController)init
{
  v3.receiver = self;
  v3.super_class = SRSampleViewController;
  result = [(SRSampleViewController *)&v3 initWithStyle:1];
  if (result)
  {
    result->_sampleDataEntries = 0;
    result->_note = 0;
  }

  return result;
}

- (void)dealloc
{
  [(SRSampleViewController *)self setSampleDataEntries:0];
  [(SRSampleViewController *)self setNote:0];
  [(SRSampleViewController *)self setAuthGroup:0];
  v3.receiver = self;
  v3.super_class = SRSampleViewController;
  [(SRSampleViewController *)&v3 dealloc];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)[(SRSampleViewController *)self sampleDataEntries] objectAtIndex:section];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  allKeys = [v4 allKeys];

  return [allKeys count];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sampleDataEntries = [(SRSampleViewController *)self sampleDataEntries];

  return [(NSArray *)sampleDataEntries count];
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if ([(SRSampleViewController *)self numberOfSectionsInTableView:view]- 1 != section)
  {
    return 0;
  }

  return [(SRSampleViewController *)self note];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = -[NSArray objectAtIndex:](-[SRSampleViewController sampleDataEntries](self, "sampleDataEntries", view), "objectAtIndex:", [path section]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *MEMORY[0x277D85DE8];
    selfCopy2 = self;
    v9 = v6;
    v10 = 0;
LABEL_3:

    return [(SRSampleViewController *)selfCopy2 prepareEndRowWithText:v9 detailText:v10];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [-[SRSampleViewController sortedKeysForDictionary:](self sortedKeysForDictionary:{v6), "objectAtIndex:", objc_msgSend(path, "row")}];
    v13 = [v6 objectForKeyedSubscript:v12];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = *MEMORY[0x277D85DE8];
      selfCopy2 = self;
      v9 = v12;
      v10 = v13;
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v19 = *MEMORY[0x277D85DE8];

      return [(SRSampleViewController *)self prepareExtendedRowWithText:v12];
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_19:
    v20 = objc_opt_new();
    v21 = *MEMORY[0x277D85DE8];

    return v20;
  }

  v15 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:5];
  v22 = 0;
  v16 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v15 validFormatSpecifiers:@"%ld" error:&v22, objc_msgSend(path, "section")];
  if (!v16)
  {
    v17 = SRLogSampleViewController;
    if (os_log_type_enabled(SRLogSampleViewController, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v24 = v22;
      _os_log_fault_impl(&dword_265602000, v17, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
    }
  }

  result = [(SRSampleViewController *)self prepareExtendedRowWithText:v16];
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v7 = -[NSArray objectAtIndex:](-[SRSampleViewController sampleDataEntries](self, "sampleDataEntries"), "objectAtIndex:", [path section]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v7 objectForKeyedSubscript:{objc_msgSend(-[SRSampleViewController sortedKeysForDictionary:](self, "sortedKeysForDictionary:", v7), "objectAtIndex:", objc_msgSend(path, "row"))}];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = objc_alloc_init(SRSampleViewController);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
    }

    [(SRSampleViewController *)v8 setSampleDataEntries:v7];
    [(SRSampleViewController *)v8 setAuthGroup:self->_authGroup];
    -[SRSampleViewController setTitle:](v8, "setTitle:", [objc_msgSend(objc_msgSend(view cellForRowAtIndexPath:{path), "textLabel"), "text"}]);
    [(UIViewController *)self sk_showViewController:v8 animated:1];
  }
}

- (id)prepareEndRowWithText:(id)text detailText:(id)detailText
{
  v6 = [-[SRSampleViewController tableView](self "tableView")];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"SRSampleTableEndRowReuseIdentifier"];
    [v6 setAccessoryType:0];
    [v6 setSelectionStyle:0];
    [v6 setLayoutManager:{objc_msgSend(MEMORY[0x277D75B50], "layoutManagerForTableViewCellStyle:", 3)}];
  }

  [objc_msgSend(v6 "textLabel")];
  [objc_msgSend(v6 "textLabel")];
  [objc_msgSend(v6 "textLabel")];
  [objc_msgSend(v6 "detailTextLabel")];
  [objc_msgSend(v6 "detailTextLabel")];
  [objc_msgSend(v6 "detailTextLabel")];
  return v6;
}

- (id)prepareExtendedRowWithText:(id)text
{
  v4 = [-[SRSampleViewController tableView](self "tableView")];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"SRSampleTableExpandableRowReuseIdentifier"];
    [v4 setAccessoryType:1];
    [v4 setSelectionStyle:3];
  }

  [objc_msgSend(v4 "textLabel")];
  [objc_msgSend(v4 "textLabel")];
  [objc_msgSend(v4 "textLabel")];
  return v4;
}

- (id)sortedKeysForDictionary:(id)dictionary
{
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:{objc_msgSend(dictionary, "allKeys")}];
  [v3 sortUsingComparator:&__block_literal_global_0];
  return v3;
}

+ (id)sampleViewControllerForAuthGroup:(id)group
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  [v4 setTitle:{objc_msgSend(MEMORY[0x277CCACA8], "srui_localizedStringForCode:", 8)}];
  [v4 setAuthGroup:group];
  v21 = v4;
  [v4 setSampleDataEntries:{objc_msgSend(group, "localizedSampleData")}];
  v5 = [MEMORY[0x277CDC638] sensorDescriptionsForAuthorizationService:{objc_msgSend(group, "authorizationService")}];
  string = [MEMORY[0x277CCAB68] string];
  v7 = [MEMORY[0x277CBEB58] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (([v7 containsObject:{objc_msgSend(v12, "name")}] & 1) == 0)
        {
          localizedAdditionalSampleDataNote = [v12 localizedAdditionalSampleDataNote];
          if ([localizedAdditionalSampleDataNote length])
          {
            -[__CFString appendString:](string, "appendString:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", localizedAdditionalSampleDataNote]);
          }

          [v7 addObject:{objc_msgSend(v12, "name")}];
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v14 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:9];
  v15 = MEMORY[0x277CCACA8];
  if ([(__CFString *)string length])
  {
    v16 = string;
  }

  else
  {
    v16 = &stru_2876FBDF0;
  }

  v17 = [(__CFString *)string length];
  v18 = @"\n";
  if (!v17)
  {
    v18 = &stru_2876FBDF0;
  }

  [v21 setNote:{objc_msgSend(v15, "stringWithFormat:", @"%@%@%@", v16, v18, v14)}];
  v19 = *MEMORY[0x277D85DE8];
  return v21;
}

@end