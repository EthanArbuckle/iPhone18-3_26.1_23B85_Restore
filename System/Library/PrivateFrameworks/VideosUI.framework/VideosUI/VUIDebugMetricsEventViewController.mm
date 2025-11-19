@interface VUIDebugMetricsEventViewController
- (VUIDebugMetricsEventViewController)initWithEvent:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)performValidation;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation VUIDebugMetricsEventViewController

- (VUIDebugMetricsEventViewController)initWithEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VUIDebugMetricsEventViewController;
  v6 = [(VUIDebugMetricsEventViewController *)&v9 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = VUIDebugMetricsEventViewController;
  [(VUIDebugMetricsEventViewController *)&v10 viewDidLoad];
  v3 = [(VUIDebugMetricsEventViewController *)self event];
  v4 = [v3 eventType];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"eventType: %@", v4];
  [(VUIDebugMetricsEventViewController *)self setTitle:v5];

  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Validate" style:0 target:self action:sel_performValidation];
  v7 = [(VUIDebugMetricsEventViewController *)self navigationItem];
  [v7 setLargeTitleDisplayMode:2];

  v8 = [(VUIDebugMetricsEventViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v6];

  v9 = [(VUIDebugMetricsEventViewController *)self tableView];
  [v9 registerClass:objc_opt_class() forCellReuseIdentifier:@"VUIDebugMetricsEventCellReuseIdentifier"];
}

- (void)performValidation
{
  v3 = [VUIDebugMetricsEventValidatorTableViewController alloc];
  v4 = [(VUIDebugMetricsEvent *)self->_event rawEvent];
  v6 = [(VUIDebugMetricsEventValidatorTableViewController *)v3 initWithEvent:v4];

  v5 = [(VUIDebugMetricsEventViewController *)self navigationController];
  [v5 pushViewController:v6 animated:1];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(VUIDebugMetricsEvent *)self->_event eventData];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(VUIDebugMetricsEvent *)self->_event eventData];
  v6 = [v5 objectAtIndex:a4];
  v7 = [v6 valueForKey:@"keys"];
  v8 = [v7 count];

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  event = self->_event;
  v7 = a4;
  v8 = a3;
  v9 = [(VUIDebugMetricsEvent *)event eventData];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];
  v11 = [v10 valueForKey:@"keys"];
  v12 = [v11 objectAtIndex:{objc_msgSend(v7, "row")}];

  v13 = [(VUIDebugMetricsEvent *)self->_event objectForKeyedSubscript:v12];
  v14 = [v8 dequeueReusableCellWithIdentifier:@"VUIDebugMetricsEventCellReuseIdentifier" forIndexPath:v7];

  v15 = [v14 initWithStyle:1 reuseIdentifier:@"VUIDebugMetricsEventCellReuseIdentifier"];
  objc_opt_class();
  LOBYTE(v8) = objc_opt_isKindOfClass();
  v16 = [v15 textLabel];
  [v16 setText:v12];

  if (v8)
  {
    v17 = [v15 detailTextLabel];
    [v17 setText:v13];

    [v15 setAccessoryType:0];
    [v15 setSelectionStyle:0];
    goto LABEL_18;
  }

  v18 = (objc_opt_respondsToSelector() & 1) != 0 && [v13 count] == 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [v13 description];
    v20 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v21 = [v19 componentsSeparatedByCharactersInSet:v20];

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
    v23 = [v15 detailTextLabel];
    [v23 setText:v22];

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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(VUIDebugMetricsEvent *)self->_event eventData];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 valueForKey:@"header"];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  event = self->_event;
  v6 = a4;
  v7 = [(VUIDebugMetricsEvent *)event eventData];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
  v9 = [v8 valueForKey:@"keys"];
  v10 = [v6 row];

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