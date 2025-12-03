@interface VUIDebugMetricsEventViewController
- (VUIDebugMetricsEventViewController)initWithEvent:(id)event;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)performValidation;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation VUIDebugMetricsEventViewController

- (VUIDebugMetricsEventViewController)initWithEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = VUIDebugMetricsEventViewController;
  v6 = [(VUIDebugMetricsEventViewController *)&v9 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, event);
  }

  return v7;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = VUIDebugMetricsEventViewController;
  [(VUIDebugMetricsEventViewController *)&v10 viewDidLoad];
  event = [(VUIDebugMetricsEventViewController *)self event];
  eventType = [event eventType];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"eventType: %@", eventType];
  [(VUIDebugMetricsEventViewController *)self setTitle:v5];

  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Validate" style:0 target:self action:sel_performValidation];
  navigationItem = [(VUIDebugMetricsEventViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  navigationItem2 = [(VUIDebugMetricsEventViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v6];

  tableView = [(VUIDebugMetricsEventViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"VUIDebugMetricsEventCellReuseIdentifier"];
}

- (void)performValidation
{
  v3 = [VUIDebugMetricsEventValidatorTableViewController alloc];
  rawEvent = [(VUIDebugMetricsEvent *)self->_event rawEvent];
  v6 = [(VUIDebugMetricsEventValidatorTableViewController *)v3 initWithEvent:rawEvent];

  navigationController = [(VUIDebugMetricsEventViewController *)self navigationController];
  [navigationController pushViewController:v6 animated:1];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  eventData = [(VUIDebugMetricsEvent *)self->_event eventData];
  v4 = [eventData count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  eventData = [(VUIDebugMetricsEvent *)self->_event eventData];
  v6 = [eventData objectAtIndex:section];
  v7 = [v6 valueForKey:@"keys"];
  v8 = [v7 count];

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  event = self->_event;
  pathCopy = path;
  viewCopy = view;
  eventData = [(VUIDebugMetricsEvent *)event eventData];
  v10 = [eventData objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v11 = [v10 valueForKey:@"keys"];
  v12 = [v11 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  v13 = [(VUIDebugMetricsEvent *)self->_event objectForKeyedSubscript:v12];
  v14 = [viewCopy dequeueReusableCellWithIdentifier:@"VUIDebugMetricsEventCellReuseIdentifier" forIndexPath:pathCopy];

  v15 = [v14 initWithStyle:1 reuseIdentifier:@"VUIDebugMetricsEventCellReuseIdentifier"];
  objc_opt_class();
  LOBYTE(viewCopy) = objc_opt_isKindOfClass();
  textLabel = [v15 textLabel];
  [textLabel setText:v12];

  if (viewCopy)
  {
    detailTextLabel = [v15 detailTextLabel];
    [detailTextLabel setText:v13];

    [v15 setAccessoryType:0];
    [v15 setSelectionStyle:0];
    goto LABEL_18;
  }

  v18 = (objc_opt_respondsToSelector() & 1) != 0 && [v13 count] == 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [v13 description];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v21 = [v19 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

    v22 = [v21 componentsJoinedByString:&stru_1F5DB25C0];

    goto LABEL_13;
  }

  if ([v12 isEqualToString:@"impressions"])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu impressions", objc_msgSend(v13, "count")];
    v22 = LABEL_12:;
    goto LABEL_13;
  }

  if ([v12 isEqualToString:@"location"])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu locations", objc_msgSend(v13, "count")];
    goto LABEL_12;
  }

  v25 = [v13 valueForKey:@"description"];
  v22 = [v25 componentsJoinedByString:{@", "}];

  if (![(__CFString *)v22 length])
  {

    v22 = @"[]";
    goto LABEL_14;
  }

LABEL_13:
  if (v22)
  {
LABEL_14:
    detailTextLabel2 = [v15 detailTextLabel];
    [detailTextLabel2 setText:v22];

    if (v18)
    {
      [v15 setSelectionStyle:0];
    }

    else
    {
      [v15 setAccessoryType:1];
    }
  }

LABEL_18:

  return v15;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  eventData = [(VUIDebugMetricsEvent *)self->_event eventData];
  v6 = [eventData objectAtIndexedSubscript:section];
  v7 = [v6 valueForKey:@"header"];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  event = self->_event;
  pathCopy = path;
  eventData = [(VUIDebugMetricsEvent *)event eventData];
  v8 = [eventData objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v9 = [v8 valueForKey:@"keys"];
  v10 = [pathCopy row];

  v14 = [v9 objectAtIndex:v10];

  v11 = [(VUIDebugMetricsEvent *)self->_event objectForKeyedSubscript:v14];
  if ([v14 isEqual:@"impressions"])
  {
    v12 = objc_alloc_init(VUIDebugMetricsImpressionViewController);
    [(VUIDebugMetricsImpressionViewController *)v12 setArray:v11];
    v13 = v12;
LABEL_3:
    [(VUIDebugMetricsDictionaryViewController *)v13 setTitle:v14];
LABEL_7:
    [(VUIDebugMetricsEventViewController *)self showViewController:v12 sender:0];

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count])
  {
    v12 = objc_alloc_init(VUIDebugMetricsArrayViewController);
    [(VUIDebugMetricsImpressionViewController *)v12 setTitle:v14];
    [(VUIDebugMetricsImpressionViewController *)v12 setArray:v11];
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count])
  {
    v13 = [[VUIDebugMetricsDictionaryViewController alloc] initWithDictionary:v11];
    v12 = v13;
    goto LABEL_3;
  }

LABEL_8:
}

@end