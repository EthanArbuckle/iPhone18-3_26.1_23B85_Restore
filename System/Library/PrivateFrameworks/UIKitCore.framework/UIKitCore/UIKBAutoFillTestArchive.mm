@interface UIKBAutoFillTestArchive
+ (id)autoFillTestArchiveWithData:(id)data;
- (UIKBAutoFillTestArchive)init;
- (UIKBAutoFillTestArchive)initWithCoder:(id)coder;
- (id)autoFillTestArchiveData;
- (id)copyWithZone:(_NSZone *)zone;
- (id)tableViewDataSourceWithTag:(int64_t)tag;
- (void)encodeWithCoder:(id)coder;
- (void)setTableViewDataSource:(id)source forTableViewWithTag:(int64_t)tag;
@end

@implementation UIKBAutoFillTestArchive

- (UIKBAutoFillTestArchive)init
{
  v7.receiver = self;
  v7.super_class = UIKBAutoFillTestArchive;
  v2 = [(UIKBAutoFillTestArchive *)&v7 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    tableViewTagToDataSource = v2->_tableViewTagToDataSource;
    v2->_tableViewTagToDataSource = dictionary;

    v5 = v2;
  }

  return v2;
}

- (UIKBAutoFillTestArchive)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = UIKBAutoFillTestArchive;
  v5 = [(UIKBAutoFillTestArchive *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"snapshotView"];
    snapshotView = v5->_snapshotView;
    v5->_snapshotView = v6;

    v8 = [coderCopy decodeObjectForKey:@"tableViewTagToDataSource"];
    v9 = [v8 mutableCopy];
    tableViewTagToDataSource = v5->_tableViewTagToDataSource;
    v5->_tableViewTagToDataSource = v9;

    v11 = [coderCopy decodeObjectForKey:@"viewControllerClassName"];
    v12 = [v11 copy];
    viewControllerClassName = v5->_viewControllerClassName;
    v5->_viewControllerClassName = v12;

    v14 = [coderCopy decodeObjectForKey:@"viewControllerTitle"];
    v15 = [v14 copy];
    viewControllerTitle = v5->_viewControllerTitle;
    v5->_viewControllerTitle = v15;

    v17 = [coderCopy decodeObjectForKey:@"viewControllerNavigationItem"];
    viewControllerNavigationItem = v5->_viewControllerNavigationItem;
    v5->_viewControllerNavigationItem = v17;

    v5->_requiresNavigationControllerNesting = [coderCopy decodeBoolForKey:@"requiresNavigationControllerNesting"];
    v19 = [coderCopy decodeObjectForKey:@"navigationControllerClassName"];
    navigationControllerClassName = v5->_navigationControllerClassName;
    v5->_navigationControllerClassName = v19;

    v21 = [coderCopy decodeObjectForKey:@"presentingViewControllerClassName"];
    presentingViewControllerClassName = v5->_presentingViewControllerClassName;
    v5->_presentingViewControllerClassName = v21;

    v23 = [coderCopy decodeObjectForKey:@"expectedResult"];
    expectedResult = v5->_expectedResult;
    v5->_expectedResult = v23;

    v25 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  snapshotView = self->_snapshotView;
  v6 = coderCopy;
  if (snapshotView)
  {
    [coderCopy encodeObject:snapshotView forKey:@"snapshotView"];
    coderCopy = v6;
  }

  [coderCopy encodeObject:self->_tableViewTagToDataSource forKey:@"tableViewTagToDataSource"];
  [v6 encodeObject:self->_viewControllerClassName forKey:@"viewControllerClassName"];
  [v6 encodeObject:self->_viewControllerTitle forKey:@"viewControllerTitle"];
  [v6 encodeObject:self->_viewControllerNavigationItem forKey:@"viewControllerNavigationItem"];
  [v6 encodeBool:self->_requiresNavigationControllerNesting forKey:@"requiresNavigationControllerNesting"];
  [v6 encodeObject:self->_navigationControllerClassName forKey:@"navigationControllerClassName"];
  [v6 encodeObject:self->_presentingViewControllerClassName forKey:@"presentingViewControllerClassName"];
  [v6 encodeObject:self->_expectedResult forKey:@"expectedResult"];
}

+ (id)autoFillTestArchiveWithData:(id)data
{
  v3 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v9 = 0;
  v5 = [[v3 alloc] initForReadingFromData:dataCopy error:&v9];

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
  encodedData = [v3 encodedData];

  return encodedData;
}

- (id)copyWithZone:(_NSZone *)zone
{
  autoFillTestArchiveData = [(UIKBAutoFillTestArchive *)self autoFillTestArchiveData];
  v4 = [UIKBAutoFillTestArchive autoFillTestArchiveWithData:autoFillTestArchiveData];

  return v4;
}

- (id)tableViewDataSourceWithTag:(int64_t)tag
{
  tableViewTagToDataSource = self->_tableViewTagToDataSource;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:tag];
  v5 = [(NSMutableDictionary *)tableViewTagToDataSource objectForKeyedSubscript:v4];

  return v5;
}

- (void)setTableViewDataSource:(id)source forTableViewWithTag:(int64_t)tag
{
  tableViewTagToDataSource = self->_tableViewTagToDataSource;
  v6 = MEMORY[0x1E696AD98];
  sourceCopy = source;
  v8 = [v6 numberWithInteger:tag];
  [(NSMutableDictionary *)tableViewTagToDataSource setObject:sourceCopy forKeyedSubscript:v8];
}

@end