@interface SKUIReportAConcernReasonDataSource
- (SKUIReportAConcernReasonDataSource)init;
- (SKUIReportAConcernReasonDataSource)initWithTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
@end

@implementation SKUIReportAConcernReasonDataSource

- (SKUIReportAConcernReasonDataSource)init
{
  v3 = objc_alloc_init(MEMORY[0x277D75B40]);
  v4 = [(SKUIReportAConcernReasonDataSource *)self initWithTableView:v3];

  return v4;
}

- (SKUIReportAConcernReasonDataSource)initWithTableView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = SKUIReportAConcernReasonDataSource;
  v6 = [(SKUIReportAConcernReasonDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, view);
    [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"SKUIConcernReasonCell"];
  }

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(SKUIReportAConcernReasonDataSource *)self reasons:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  reasons = [(SKUIReportAConcernReasonDataSource *)self reasons];
  v9 = [pathCopy row];

  v10 = [reasons objectAtIndexedSubscript:v9];

  v11 = [viewCopy dequeueReusableCellWithIdentifier:@"SKUIConcernReasonCell"];

  name = [v10 name];
  textLabel = [v11 textLabel];
  [textLabel setText:name];

  [v11 setAccessoryType:1];

  return v11;
}

@end