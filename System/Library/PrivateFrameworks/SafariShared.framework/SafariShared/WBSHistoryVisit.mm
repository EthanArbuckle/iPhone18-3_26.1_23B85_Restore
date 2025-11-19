@interface WBSHistoryVisit
+ (id)synthesizedVisitWithHistoryItem:(id)a3 visitTime:(double)a4;
- (WBSHistoryItem)item;
- (WBSHistoryVisit)endOfRedirectChain;
- (WBSHistoryVisit)initWithHistoryItem:(id)a3 serviceVisit:(id)a4;
- (WBSHistoryVisit)initWithHistoryItem:(id)a3 sqliteRow:(id)a4 baseColumnIndex:(unint64_t)a5;
- (WBSHistoryVisit)initWithHistoryItem:(id)a3 streamedVisit:(const _HistoryStreamedVisit *)a4;
- (WBSHistoryVisit)initWithHistoryItem:(id)a3 visitTime:(double)a4 loadWasSuccesful:(BOOL)a5 wasHTTPNonGet:(BOOL)a6 origin:(int64_t)a7 attributes:(unint64_t)a8;
- (void)setAttributes:(unint64_t)a3;
@end

@implementation WBSHistoryVisit

- (WBSHistoryVisit)initWithHistoryItem:(id)a3 visitTime:(double)a4 loadWasSuccesful:(BOOL)a5 wasHTTPNonGet:(BOOL)a6 origin:(int64_t)a7 attributes:(unint64_t)a8
{
  v18.receiver = self;
  v18.super_class = WBSHistoryVisit;
  v14 = [(WBSHistoryVisit *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_item, a3);
    v15->_visitTime = a4;
    v15->_loadSuccessful = a5;
    v15->_httpNonGet = a6;
    v15->_origin = a7;
    v15->_attributes = a8;
    v16 = v15;
  }

  return v15;
}

+ (id)synthesizedVisitWithHistoryItem:(id)a3 visitTime:(double)a4
{
  v4 = [[a1 alloc] initWithHistoryItem:a3 visitTime:a4];
  v4[10] = 1;

  return v4;
}

- (WBSHistoryVisit)initWithHistoryItem:(id)a3 sqliteRow:(id)a4 baseColumnIndex:(unint64_t)a5
{
  v17.receiver = self;
  v17.super_class = WBSHistoryVisit;
  v8 = [(WBSHistoryVisit *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_item, a3);
    v9->_databaseID = [a4 int64AtIndex:a5];
    [a4 doubleAtIndex:a5 + 2];
    v9->_visitTime = v10;
    v11 = [a4 stringAtIndex:a5 + 3];
    title = v9->_title;
    v9->_title = v11;

    v9->_loadSuccessful = [a4 intAtIndex:a5 + 4] != 0;
    v9->_httpNonGet = [a4 intAtIndex:a5 + 5] != 0;
    v9->_synthesized = [a4 intAtIndex:a5 + 6] != 0;
    v9->_attributes = [a4 int64AtIndex:a5 + 11];
    v13 = [a4 int64AtIndex:a5 + 9];
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

- (WBSHistoryVisit)initWithHistoryItem:(id)a3 serviceVisit:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = WBSHistoryVisit;
  v8 = [(WBSHistoryVisit *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_item, v6);
    v9->_databaseID = [v7 databaseID];
    [v7 visitTime];
    v9->_visitTime = v10;
    v11 = [v7 title];
    v12 = [v11 copy];
    title = v9->_title;
    v9->_title = v12;

    v9->_loadSuccessful = [v7 loadSuccessful];
    v9->_httpNonGet = [v7 httpNonGet];
    v9->_synthesized = [v7 synthesized];
    v9->_attributes = [v7 attributes];
    v9->_origin = [v7 origin];
    v14 = v9;
  }

  return v9;
}

- (WBSHistoryVisit)endOfRedirectChain
{
  for (i = self; ; i = v4)
  {
    v3 = [(WBSHistoryVisit *)i redirectDestination];

    if (!v3)
    {
      break;
    }

    v4 = [(WBSHistoryVisit *)i redirectDestination];
  }

  return i;
}

- (WBSHistoryItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (void)setAttributes:(unint64_t)a3
{
  if (self->_attributes != a3)
  {
    self->_attributes = a3;
  }
}

- (WBSHistoryVisit)initWithHistoryItem:(id)a3 streamedVisit:(const _HistoryStreamedVisit *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = WBSHistoryVisit;
  v7 = [(WBSHistoryVisit *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_item, v6);
    v8->_databaseID = a4->var1;
    v8->_visitTime = a4->var3;
    if (a4->var13)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    }

    else
    {
      v9 = 0;
    }

    title = v8->_title;
    v8->_title = v9;

    v8->_loadSuccessful = a4->var4 != 0;
    v8->_httpNonGet = a4->var5 != 0;
    v8->_synthesized = a4->var6 != 0;
    v8->_attributes = a4->var12;
    var10 = a4->var10;
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