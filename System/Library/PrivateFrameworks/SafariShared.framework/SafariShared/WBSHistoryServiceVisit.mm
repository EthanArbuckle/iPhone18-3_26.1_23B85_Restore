@interface WBSHistoryServiceVisit
- (WBSHistoryServiceVisit)initWithCoder:(id)coder;
- (WBSHistoryServiceVisit)initWithSQLRow:(id)row;
- (WBSHistoryServiceVisit)initWithVisit:(id)visit;
- (WBSHistoryServiceVisit)visitWithUpdatedID:(int64_t)d updatedItemID:(int64_t)iD;
- (id)_initWithDatabaseID:(int64_t)d serviceVisit:(id)visit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSHistoryServiceVisit

- (WBSHistoryServiceVisit)initWithVisit:(id)visit
{
  visitCopy = visit;
  v14.receiver = self;
  v14.super_class = WBSHistoryServiceVisit;
  v5 = -[WBSHistoryServiceObject initWithDatabaseID:](&v14, sel_initWithDatabaseID_, [visitCopy databaseID]);
  if (v5)
  {
    item = [visitCopy item];
    v5->_itemID = [item databaseID];

    title = [visitCopy title];
    title = v5->_title;
    v5->_title = title;

    [visitCopy visitTime];
    v5->_visitTime = v9;
    v5->_loadSuccessful = [visitCopy loadWasSuccessful];
    v5->_httpNonGet = [visitCopy wasHTTPNonGet];
    v5->_synthesized = [visitCopy isSynthesized];
    redirectSource = [visitCopy redirectSource];
    v5->_redirectSource = [redirectSource databaseID];

    redirectDestination = [visitCopy redirectDestination];
    v5->_redirectDestination = [redirectDestination databaseID];

    v5->_origin = [visitCopy origin];
    v5->_attributes = [visitCopy attributes];
    v12 = v5;
  }

  return v5;
}

- (WBSHistoryServiceVisit)initWithSQLRow:(id)row
{
  rowCopy = row;
  v11.receiver = self;
  v11.super_class = WBSHistoryServiceVisit;
  v5 = -[WBSHistoryServiceObject initWithDatabaseID:](&v11, sel_initWithDatabaseID_, [rowCopy int64AtIndex:0]);
  if (v5)
  {
    v5->_itemID = [rowCopy int64AtIndex:1];
    [rowCopy doubleAtIndex:2];
    v5->_visitTime = v6;
    v7 = [rowCopy stringAtIndex:3];
    title = v5->_title;
    v5->_title = v7;

    v5->_loadSuccessful = [rowCopy BOOLAtIndex:4];
    v5->_httpNonGet = [rowCopy BOOLAtIndex:5];
    v5->_synthesized = [rowCopy BOOLAtIndex:6];
    v5->_redirectSource = [rowCopy int64AtIndex:7];
    v5->_redirectDestination = [rowCopy int64AtIndex:8];
    v5->_origin = [rowCopy int64AtIndex:9];
    v5->_attributes = [rowCopy int64AtIndex:11];
    v5->_score = [rowCopy intAtIndex:12];
    v9 = v5;
  }

  return v5;
}

- (id)_initWithDatabaseID:(int64_t)d serviceVisit:(id)visit
{
  visitCopy = visit;
  v14.receiver = self;
  v14.super_class = WBSHistoryServiceVisit;
  v7 = [(WBSHistoryServiceObject *)&v14 initWithDatabaseID:d];
  if (v7)
  {
    v7->_itemID = [visitCopy itemID];
    title = [visitCopy title];
    v9 = [title copy];
    title = v7->_title;
    v7->_title = v9;

    [visitCopy visitTime];
    v7->_visitTime = v11;
    v7->_loadSuccessful = [visitCopy loadSuccessful];
    v7->_httpNonGet = [visitCopy httpNonGet];
    v7->_synthesized = [visitCopy synthesized];
    v7->_redirectSource = [visitCopy redirectSource];
    v7->_redirectDestination = [visitCopy redirectDestination];
    v7->_origin = [visitCopy origin];
    v7->_attributes = [visitCopy attributes];
    v7->_score = [visitCopy score];
    v12 = v7;
  }

  return v7;
}

- (WBSHistoryServiceVisit)visitWithUpdatedID:(int64_t)d updatedItemID:(int64_t)iD
{
  v5 = [[WBSHistoryServiceVisit alloc] _initWithDatabaseID:d serviceVisit:self];
  v5[3] = iD;

  return v5;
}

- (WBSHistoryServiceVisit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = WBSHistoryServiceVisit;
  v5 = [(WBSHistoryServiceObject *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_itemID = [coderCopy decodeInt64ForKey:@"itemID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    [coderCopy decodeDoubleForKey:@"visitTime"];
    v5->_visitTime = v8;
    v5->_loadSuccessful = [coderCopy decodeBoolForKey:@"loadSuccessful"];
    v5->_httpNonGet = [coderCopy decodeBoolForKey:@"httpNonGet"];
    v5->_synthesized = [coderCopy decodeBoolForKey:@"synthesized"];
    v5->_redirectSource = [coderCopy decodeInt64ForKey:@"redirectSource"];
    v5->_redirectDestination = [coderCopy decodeInt64ForKey:@"redirectDestination"];
    v5->_origin = [coderCopy decodeInt64ForKey:@"origin"];
    v5->_attributes = [coderCopy decodeInt64ForKey:@"attributes"];
    v5->_score = [coderCopy decodeInt64ForKey:@"score"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = WBSHistoryServiceVisit;
  [(WBSHistoryServiceObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_itemID forKey:@"itemID"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeDouble:@"visitTime" forKey:self->_visitTime];
  [coderCopy encodeBool:self->_loadSuccessful forKey:@"loadSuccessful"];
  [coderCopy encodeBool:self->_httpNonGet forKey:@"httpNonGet"];
  [coderCopy encodeBool:self->_synthesized forKey:@"synthesized"];
  [coderCopy encodeInt64:self->_redirectSource forKey:@"redirectSource"];
  [coderCopy encodeInt64:self->_redirectDestination forKey:@"redirectDestination"];
  [coderCopy encodeInt64:self->_origin forKey:@"origin"];
  [coderCopy encodeInt64:self->_attributes forKey:@"attributes"];
  [coderCopy encodeInt64:self->_score forKey:@"score"];
}

@end