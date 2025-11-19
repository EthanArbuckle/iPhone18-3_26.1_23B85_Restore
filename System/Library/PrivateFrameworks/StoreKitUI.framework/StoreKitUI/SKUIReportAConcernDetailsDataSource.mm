@interface SKUIReportAConcernDetailsDataSource
- (SKUIReportAConcernDetailsDataSource)init;
- (SKUIReportAConcernDetailsDataSource)initWithTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
@end

@implementation SKUIReportAConcernDetailsDataSource

- (SKUIReportAConcernDetailsDataSource)init
{
  v3 = objc_alloc_init(MEMORY[0x277D75B40]);
  v4 = [(SKUIReportAConcernDetailsDataSource *)self initWithTableView:v3];

  return v4;
}

- (SKUIReportAConcernDetailsDataSource)initWithTableView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKUIReportAConcernDetailsDataSource;
  v6 = [(SKUIReportAConcernDetailsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, a3);
    [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"SKUIConcernDetailsCell"];
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"SKUIConcernDetailsCell", a4}];
  v6 = [(SKUIReportAConcernDetailsDataSource *)self placeholder];
  [v5 setPlaceholderText:v6];

  return v5;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(SKUIReportAConcernDetailsDataSource *)self selectedReason:a3];
  v5 = [v4 uppercaseString];

  return v5;
}

@end