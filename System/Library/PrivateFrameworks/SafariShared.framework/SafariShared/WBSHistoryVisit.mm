@interface WBSHistoryVisit
+ (id)synthesizedVisitWithHistoryItem:(id)item visitTime:(double)time;
- (WBSHistoryItem)item;
- (WBSHistoryVisit)endOfRedirectChain;
- (WBSHistoryVisit)initWithHistoryItem:(id)item serviceVisit:(id)visit;
- (WBSHistoryVisit)initWithHistoryItem:(id)item sqliteRow:(id)row baseColumnIndex:(unint64_t)index;
- (WBSHistoryVisit)initWithHistoryItem:(id)item streamedVisit:(const _HistoryStreamedVisit *)visit;
- (WBSHistoryVisit)initWithHistoryItem:(id)item visitTime:(double)time loadWasSuccesful:(BOOL)succesful wasHTTPNonGet:(BOOL)get origin:(int64_t)origin attributes:(unint64_t)attributes;
- (void)setAttributes:(unint64_t)attributes;
@end

@implementation WBSHistoryVisit

- (WBSHistoryVisit)initWithHistoryItem:(id)item visitTime:(double)time loadWasSuccesful:(BOOL)succesful wasHTTPNonGet:(BOOL)get origin:(int64_t)origin attributes:(unint64_t)attributes
{
  v18.receiver = self;
  v18.super_class = WBSHistoryVisit;
  v14 = [(WBSHistoryVisit *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_item, item);
    v15->_visitTime = time;
    v15->_loadSuccessful = succesful;
    v15->_httpNonGet = get;
    v15->_origin = origin;
    v15->_attributes = attributes;
    v16 = v15;
  }

  return v15;
}

+ (id)synthesizedVisitWithHistoryItem:(id)item visitTime:(double)time
{
  v4 = [[self alloc] initWithHistoryItem:item visitTime:time];
  v4[10] = 1;

  return v4;
}

- (WBSHistoryVisit)initWithHistoryItem:(id)item sqliteRow:(id)row baseColumnIndex:(unint64_t)index
{
  v17.receiver = self;
  v17.super_class = WBSHistoryVisit;
  v8 = [(WBSHistoryVisit *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_item, item);
    v9->_databaseID = [row int64AtIndex:index];
    [row doubleAtIndex:index + 2];
    v9->_visitTime = v10;
    v11 = [row stringAtIndex:index + 3];
    title = v9->_title;
    v9->_title = v11;

    v9->_loadSuccessful = [row intAtIndex:index + 4] != 0;
    v9->_httpNonGet = [row intAtIndex:index + 5] != 0;
    v9->_synthesized = [row intAtIndex:index + 6] != 0;
    v9->_attributes = [row int64AtIndex:index + 11];
    v13 = [row int64AtIndex:index + 9];
    if (v13 >= 4)
    {
      v14 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [WBSHistoryVisit initWithHistoryItem:v13 sqliteRow:v14 baseColumnIndex:?];
      }

      v13 = 0;
    }

    v9->_origin = v13;
    v15 = v9;
  }

  return v9;
}

- (WBSHistoryVisit)initWithHistoryItem:(id)item serviceVisit:(id)visit
{
  itemCopy = item;
  visitCopy = visit;
  v16.receiver = self;
  v16.super_class = WBSHistoryVisit;
  v8 = [(WBSHistoryVisit *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_item, itemCopy);
    v9->_databaseID = [visitCopy databaseID];
    [visitCopy visitTime];
    v9->_visitTime = v10;
    title = [visitCopy title];
    v12 = [title copy];
    title = v9->_title;
    v9->_title = v12;

    v9->_loadSuccessful = [visitCopy loadSuccessful];
    v9->_httpNonGet = [visitCopy httpNonGet];
    v9->_synthesized = [visitCopy synthesized];
    v9->_attributes = [visitCopy attributes];
    v9->_origin = [visitCopy origin];
    v14 = v9;
  }

  return v9;
}

- (WBSHistoryVisit)endOfRedirectChain
{
  for (i = self; ; i = redirectDestination2)
  {
    redirectDestination = [(WBSHistoryVisit *)i redirectDestination];

    if (!redirectDestination)
    {
      break;
    }

    redirectDestination2 = [(WBSHistoryVisit *)i redirectDestination];
  }

  return i;
}

- (WBSHistoryItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (void)setAttributes:(unint64_t)attributes
{
  if (self->_attributes != attributes)
  {
    self->_attributes = attributes;
  }
}

- (WBSHistoryVisit)initWithHistoryItem:(id)item streamedVisit:(const _HistoryStreamedVisit *)visit
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = WBSHistoryVisit;
  v7 = [(WBSHistoryVisit *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_item, itemCopy);
    v8->_databaseID = visit->var1;
    v8->_visitTime = visit->var3;
    if (visit->var13)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    }

    else
    {
      v9 = 0;
    }

    title = v8->_title;
    v8->_title = v9;

    v8->_loadSuccessful = visit->var4 != 0;
    v8->_httpNonGet = visit->var5 != 0;
    v8->_synthesized = visit->var6 != 0;
    v8->_attributes = visit->var12;
    var10 = visit->var10;
    if (var10 >= 4)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [WBSHistoryVisit initWithHistoryItem:v12 sqliteRow:? baseColumnIndex:?];
      }

      var10 = 0;
    }

    v8->_origin = var10;
    v13 = v8;
  }

  return v8;
}

- (void)initWithHistoryItem:(uint64_t)a1 sqliteRow:(NSObject *)a2 baseColumnIndex:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Encountered unexpected visit of origin %ld, treating as WBSHistoryVisitOriginNormal", &v2, 0xCu);
}

@end