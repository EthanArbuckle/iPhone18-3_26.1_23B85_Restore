@interface PTUIModifiedChangesViewController
- (PTUIModifiedChangesViewController)initWithParameterRecords:(id)records withTitle:(id)title;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_populateTableDataAndChildren;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PTUIModifiedChangesViewController

- (void)_populateTableDataAndChildren
{
  v3 = objc_alloc_init(NSMutableArray);
  tableData = self->_tableData;
  self->_tableData = v3;

  v5 = objc_alloc_init(NSMutableArray);
  children = self->_children;
  self->_children = v5;

  recordDictionary = [(PTParameterRecords *)self->_parameterRecords recordDictionary];
  allKeys = [recordDictionary allKeys];

  if ([allKeys count])
  {
    v8 = 0;
    do
    {
      v9 = [allKeys objectAtIndexedSubscript:v8];
      recordDictionary2 = [(PTParameterRecords *)self->_parameterRecords recordDictionary];
      v11 = [recordDictionary2 objectForKey:v9];

      v12 = [[NSMutableArray alloc] initWithObjects:{v9, 0}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        while (1)
        {
          allKeys2 = [v11 allKeys];
          v14 = [allKeys2 count];

          if (v14 != 1)
          {
            break;
          }

          allKeys3 = [v11 allKeys];
          firstObject = [allKeys3 firstObject];

          [v12 addObject:firstObject];
          v17 = [v11 objectForKey:firstObject];

          objc_opt_class();
          v11 = v17;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_8;
          }
        }
      }

      v17 = v11;
LABEL_8:
      v18 = [v12 componentsJoinedByString:@"."];
      [(NSMutableArray *)self->_tableData addObject:v18];
      [(NSMutableArray *)self->_children addObject:v17];

      ++v8;
    }

    while ([allKeys count] > v8);
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PTUIModifiedChangesViewController;
  [(PTUIModifiedChangesViewController *)&v7 viewDidLoad];
  v3 = [UITableView alloc];
  view = [(PTUIModifiedChangesViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:2 style:?];

  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"ParameterRecordStandardCell"];
  [v5 setDelegate:self];
  [v5 setDataSource:self];
  [v5 reloadData];
  view2 = [(PTUIModifiedChangesViewController *)self view];
  [view2 addSubview:v5];
}

- (PTUIModifiedChangesViewController)initWithParameterRecords:(id)records withTitle:(id)title
{
  recordsCopy = records;
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = PTUIModifiedChangesViewController;
  v9 = [(PTUIModifiedChangesViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parameterRecords, records);
    [(PTUIModifiedChangesViewController *)v10 _populateTableDataAndChildren];
    [(PTUIModifiedChangesViewController *)v10 setTitle:titleCopy];
  }

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[NSMutableArray objectAtIndex:](self->_tableData, "objectAtIndex:", [pathCopy row]);
  v8 = -[NSMutableArray objectAtIndex:](self->_children, "objectAtIndex:", [pathCopy row]);
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      v9 = [[PTParameterRecords alloc] initWithDictionary:v8];
      v10 = [[PTUIModifiedChangesViewController alloc] initWithParameterRecords:v9 withTitle:v7];
      navigationController = [(PTUIModifiedChangesViewController *)self navigationController];
      [navigationController pushViewController:v10 animated:1];
    }
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  result = [(NSMutableArray *)self->_tableData count:view];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"ParameterRecordStandardCell"];
  defaultContentConfiguration = [v7 defaultContentConfiguration];
  if ([(NSMutableArray *)self->_tableData count])
  {
    v9 = -[NSMutableArray objectAtIndex:](self->_tableData, "objectAtIndex:", [pathCopy row]);
    [defaultContentConfiguration setText:v9];
    v10 = -[NSMutableArray objectAtIndex:](self->_children, "objectAtIndex:", [pathCopy row]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setAccessoryType:1];
    }

    else
    {
      [v7 setSelectionStyle:0];
      changedValue = [v10 changedValue];
      [changedValue doubleValue];
      v13 = v12;

      v14 = [NSString stringWithFormat:@"%.3f", v13];
      [defaultContentConfiguration setSecondaryText:v14];
    }
  }

  else
  {
    [defaultContentConfiguration setText:@"Hey there! 👋 It looks like you haven't changed any parameters from their default values in this prototyping session.\n\nAny settings changes that you make will eventually be viewable here. Feel free to consult this section later whenever you're curious about how your new settings differ from default settings. 😊"];
  }

  [v7 setContentConfiguration:defaultContentConfiguration];

  return v7;
}

@end