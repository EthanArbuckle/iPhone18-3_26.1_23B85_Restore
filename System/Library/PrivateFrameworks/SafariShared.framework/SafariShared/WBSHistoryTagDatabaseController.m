@interface WBSHistoryTagDatabaseController
- (BOOL)assignURLString:(id)a3 toTopicTagsWithIDs:(id)a4 error:(id *)a5;
- (BOOL)clearAllTagsWithError:(id *)a3;
- (BOOL)clearTagsFromStartDate:(id)a3 endDate:(id)a4 error:(id *)a5;
- (BOOL)renameTagWithID:(int64_t)a3 toTitle:(id)a4 error:(id *)a5;
- (WBSHistoryTagDatabaseController)initWithDatabase:(id)a3;
- (id)createTagsForIdentifiers:(id)a3 withTitles:(id)a4 type:(unint64_t)a5 level:(int64_t)a6 error:(id *)a7;
@end

@implementation WBSHistoryTagDatabaseController

- (WBSHistoryTagDatabaseController)initWithDatabase:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSHistoryTagDatabaseController;
  v6 = [(WBSHistoryTagDatabaseController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, a3);
    v8 = v7;
  }

  return v7;
}

- (id)createTagsForIdentifiers:(id)a3 withTitles:(id)a4 type:(unint64_t)a5 level:(int64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [MEMORY[0x1E695DF70] array];
  database = self->_database;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __88__WBSHistoryTagDatabaseController_createTagsForIdentifiers_withTitles_type_level_error___block_invoke;
  v23[3] = &unk_1E7FC8298;
  v16 = v12;
  v24 = v16;
  v17 = v13;
  v25 = v17;
  v26 = self;
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v18 = v14;
  v27 = v18;
  v19 = [(WBSSQLiteDatabase *)database tryToPerformTransactionInBlock:v23];
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  if (v19)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t __88__WBSHistoryTagDatabaseController_createTagsForIdentifiers_withTitles_type_level_error___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) count])
  {
    return 1;
  }

  v2 = 0;
  while (1)
  {
    v12 = [*(a1 + 40) objectAtIndexedSubscript:v2];
    v11 = [*(a1 + 32) objectAtIndexedSubscript:v2];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(a1 + 64);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v10 = v5;
    v6 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&,unsigned long const&,long long const&,double>(v3, v4, @"INSERT INTO history_tags (identifier, title, type, level, modification_timestamp) VALUES (?, ?, ?, ?, ?)", &v11, &v12, (a1 + 72), (a1 + 80), &v10);
    if (v6)
    {
      if (v6 != 101)
      {
        break;
      }
    }

    v7 = *(a1 + 56);
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(a1 + 48) + 8), "lastInsertRowID")}];
    [v7 addObject:v8];

    if (++v2 >= [*(a1 + 32) count])
    {
      return 1;
    }
  }

  return 0;
}

- (BOOL)assignURLString:(id)a3 toTopicTagsWithIDs:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  database = self->_database;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__WBSHistoryTagDatabaseController_assignURLString_toTopicTagsWithIDs_error___block_invoke;
  v14[3] = &unk_1E7FC82C0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a5;
  v11 = v9;
  v12 = v8;
  LOBYTE(self) = [(WBSSQLiteDatabase *)database tryToPerformTransactionInBlock:v14];

  return self;
}

uint64_t __76__WBSHistoryTagDatabaseController_assignURLString_toTopicTagsWithIDs_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a1 + 56);
  v11 = &v12;
  v12 = 0;
  result = SafariShared::WBSSQLiteDatabaseEnumerate<NSString * const {__strong}&,std::tuple<long long &>>(v2, v3, @"SELECT id FROM history_items WHERE url = ?", (a1 + 40), &v11);
  if (result)
  {
    v5 = *([*(a1 + 48) set] + 16);
    if (v5)
    {
      while (1)
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v11 = v6;
        v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long long &,long long const&,double &>(*(*(a1 + 32) + 8), *(a1 + 56), @"INSERT INTO history_items_to_tags (history_item, tag_id, timestamp) VALUES (?, ?, ?)", &v12, v5 + 2, &v11);
        if (v7 != 101 && v7 != 0)
        {
          break;
        }

        v9 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double &,long long const&>(*(*(a1 + 32) + 8), *(a1 + 56), @"UPDATE history_tags SET modification_timestamp = ? WHERE id = ?", &v11, v5 + 2);
        if (v9 != 101 && v9 != 0)
        {
          break;
        }

        v5 = *v5;
        if (!v5)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)renameTagWithID:(int64_t)a3 toTitle:(id)a4 error:(id *)a5
{
  v8 = a4;
  database = self->_database;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__WBSHistoryTagDatabaseController_renameTagWithID_toTitle_error___block_invoke;
  v12[3] = &unk_1E7FC82E8;
  v12[4] = self;
  v13 = v8;
  v14 = a5;
  v15 = a3;
  v10 = v8;
  LOBYTE(a3) = [(WBSSQLiteDatabase *)database tryToPerformTransactionInBlock:v12];

  return a3;
}

- (BOOL)clearAllTagsWithError:(id *)a3
{
  database = self->_database;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__WBSHistoryTagDatabaseController_clearAllTagsWithError___block_invoke;
  v5[3] = &unk_1E7FC8310;
  v5[4] = self;
  v5[5] = a3;
  return [(WBSSQLiteDatabase *)database tryToPerformTransactionInBlock:v5];
}

BOOL __57__WBSHistoryTagDatabaseController_clearAllTagsWithError___block_invoke(uint64_t a1)
{
  v2 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 8), *(a1 + 40), @"DELETE FROM history_items_to_tags");
  if (v2 != 101 && v2 != 0)
  {
    return 0;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 8), *(a1 + 40), @"DELETE FROM history_tags");
  return v4 == 101 || v4 == 0;
}

- (BOOL)clearTagsFromStartDate:(id)a3 endDate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  [v8 timeIntervalSinceReferenceDate];
  v11 = v10;
  [v9 timeIntervalSinceReferenceDate];
  database = self->_database;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__WBSHistoryTagDatabaseController_clearTagsFromStartDate_endDate_error___block_invoke;
  v15[3] = &unk_1E7FC8338;
  v15[4] = self;
  v15[5] = a5;
  v15[6] = v11;
  v15[7] = v13;
  LOBYTE(a5) = [(WBSSQLiteDatabase *)database tryToPerformTransactionInBlock:v15];

  return a5;
}

BOOL __72__WBSHistoryTagDatabaseController_clearTagsFromStartDate_endDate_error___block_invoke(uint64_t a1)
{
  v2 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double const&,double const&>(*(*(a1 + 32) + 8), *(a1 + 40), @"DELETE FROM history_items_to_tags WHERE timestamp > ? AND timestamp < ?", (a1 + 48), (a1 + 56));
  if (v2 != 101 && v2 != 0)
  {
    return 0;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double const&,double const&>(*(*(a1 + 32) + 8), *(a1 + 40), @"DELETE FROM history_tags WHERE modification_timestamp > ? AND modification_timestamp < ?", (a1 + 48), (a1 + 56));
  return v4 == 101 || v4 == 0;
}

@end