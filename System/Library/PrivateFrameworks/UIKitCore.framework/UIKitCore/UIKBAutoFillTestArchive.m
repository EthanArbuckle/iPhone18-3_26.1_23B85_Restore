@interface UIKBAutoFillTestArchive
+ (id)autoFillTestArchiveWithData:(id)a3;
- (UIKBAutoFillTestArchive)init;
- (UIKBAutoFillTestArchive)initWithCoder:(id)a3;
- (id)autoFillTestArchiveData;
- (id)copyWithZone:(_NSZone *)a3;
- (id)tableViewDataSourceWithTag:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setTableViewDataSource:(id)a3 forTableViewWithTag:(int64_t)a4;
@end

@implementation UIKBAutoFillTestArchive

- (UIKBAutoFillTestArchive)init
{
  v7.receiver = self;
  v7.super_class = UIKBAutoFillTestArchive;
  v2 = [(UIKBAutoFillTestArchive *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    tableViewTagToDataSource = v2->_tableViewTagToDataSource;
    v2->_tableViewTagToDataSource = v3;

    v5 = v2;
  }

  return v2;
}

- (UIKBAutoFillTestArchive)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = UIKBAutoFillTestArchive;
  v5 = [(UIKBAutoFillTestArchive *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"snapshotView"];
    snapshotView = v5->_snapshotView;
    v5->_snapshotView = v6;

    v8 = [v4 decodeObjectForKey:@"tableViewTagToDataSource"];
    v9 = [v8 mutableCopy];
    tableViewTagToDataSource = v5->_tableViewTagToDataSource;
    v5->_tableViewTagToDataSource = v9;

    v11 = [v4 decodeObjectForKey:@"viewControllerClassName"];
    v12 = [v11 copy];
    viewControllerClassName = v5->_viewControllerClassName;
    v5->_viewControllerClassName = v12;

    v14 = [v4 decodeObjectForKey:@"viewControllerTitle"];
    v15 = [v14 copy];
    viewControllerTitle = v5->_viewControllerTitle;
    v5->_viewControllerTitle = v15;

    v17 = [v4 decodeObjectForKey:@"viewControllerNavigationItem"];
    viewControllerNavigationItem = v5->_viewControllerNavigationItem;
    v5->_viewControllerNavigationItem = v17;

    v5->_requiresNavigationControllerNesting = [v4 decodeBoolForKey:@"requiresNavigationControllerNesting"];
    v19 = [v4 decodeObjectForKey:@"navigationControllerClassName"];
    navigationControllerClassName = v5->_navigationControllerClassName;
    v5->_navigationControllerClassName = v19;

    v21 = [v4 decodeObjectForKey:@"presentingViewControllerClassName"];
    presentingViewControllerClassName = v5->_presentingViewControllerClassName;
    v5->_presentingViewControllerClassName = v21;

    v23 = [v4 decodeObjectForKey:@"expectedResult"];
    expectedResult = v5->_expectedResult;
    v5->_expectedResult = v23;

    v25 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  snapshotView = self->_snapshotView;
  v6 = v4;
  if (snapshotView)
  {
    [v4 encodeObject:snapshotView forKey:@"snapshotView"];
    v4 = v6;
  }

  [v4 encodeObject:self->_tableViewTagToDataSource forKey:@"tableViewTagToDataSource"];
  [v6 encodeObject:self->_viewControllerClassName forKey:@"viewControllerClassName"];
  [v6 encodeObject:self->_viewControllerTitle forKey:@"viewControllerTitle"];
  [v6 encodeObject:self->_viewControllerNavigationItem forKey:@"viewControllerNavigationItem"];
  [v6 encodeBool:self->_requiresNavigationControllerNesting forKey:@"requiresNavigationControllerNesting"];
  [v6 encodeObject:self->_navigationControllerClassName forKey:@"navigationControllerClassName"];
  [v6 encodeObject:self->_presentingViewControllerClassName forKey:@"presentingViewControllerClassName"];
  [v6 encodeObject:self->_expectedResult forKey:@"expectedResult"];
}

+ (id)autoFillTestArchiveWithData:(id)a3
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = a3;
  v9 = 0;
  v5 = [[v3 alloc] initForReadingFromData:v4 error:&v9];

  v6 = 0;
  if (!v9)
  {
    [v5 setRequiresSecureCoding:0];
    v7 = [v5 decodeObjectForKey:@"testArchive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)autoFillTestArchiveData
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:0];
  [v3 encodeObject:self forKey:@"testArchive"];
  v4 = [v3 encodedData];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(UIKBAutoFillTestArchive *)self autoFillTestArchiveData];
  v4 = [UIKBAutoFillTestArchive autoFillTestArchiveWithData:v3];

  return v4;
}

- (id)tableViewDataSourceWithTag:(int64_t)a3
{
  tableViewTagToDataSource = self->_tableViewTagToDataSource;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)tableViewTagToDataSource objectForKeyedSubscript:v4];

  return v5;
}

- (void)setTableViewDataSource:(id)a3 forTableViewWithTag:(int64_t)a4
{
  tableViewTagToDataSource = self->_tableViewTagToDataSource;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  [(NSMutableDictionary *)tableViewTagToDataSource setObject:v7 forKeyedSubscript:v8];
}

@end