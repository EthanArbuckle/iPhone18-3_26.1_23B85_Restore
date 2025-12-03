@interface WBSHistoryServiceItem
- (WBSHistoryServiceItem)initWithCoder:(id)coder;
- (WBSHistoryServiceItem)initWithItem:(id)item;
- (WBSHistoryServiceItem)initWithSQLRow:(id)row;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSHistoryServiceItem

- (WBSHistoryServiceItem)initWithItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = WBSHistoryServiceItem;
  v5 = -[WBSHistoryServiceObject initWithDatabaseID:](&v11, sel_initWithDatabaseID_, [itemCopy databaseID]);
  if (v5)
  {
    urlString = [itemCopy urlString];
    v7 = [urlString copy];
    url = v5->_url;
    v5->_url = v7;

    v5->_statusCode = [itemCopy statusCode];
    v9 = v5;
  }

  return v5;
}

- (WBSHistoryServiceItem)initWithSQLRow:(id)row
{
  rowCopy = row;
  v10.receiver = self;
  v10.super_class = WBSHistoryServiceItem;
  v5 = -[WBSHistoryServiceObject initWithDatabaseID:](&v10, sel_initWithDatabaseID_, [rowCopy int64AtIndex:0]);
  if (v5)
  {
    v6 = [rowCopy stringAtIndex:1];
    url = v5->_url;
    v5->_url = v6;

    v5->_visitCount = [rowCopy int64AtIndex:3];
    v5->_statusCode = [rowCopy int64AtIndex:9];
    v8 = v5;
  }

  return v5;
}

- (WBSHistoryServiceItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WBSHistoryServiceItem;
  v5 = [(WBSHistoryServiceObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v5->_visitCount = [coderCopy decodeInt64ForKey:@"visitCount"];
    v5->_statusCode = [coderCopy decodeInt64ForKey:@"statusCode"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = WBSHistoryServiceItem;
  [(WBSHistoryServiceObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_url forKey:@"url"];
  [coderCopy encodeInt64:self->_visitCount forKey:@"visitCount"];
  [coderCopy encodeInt64:self->_statusCode forKey:@"statusCode"];
}

@end