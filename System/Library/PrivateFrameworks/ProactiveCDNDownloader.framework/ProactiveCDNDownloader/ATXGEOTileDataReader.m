@interface ATXGEOTileDataReader
- (id)appAndClipEntryForTileData:(id)a3;
@end

@implementation ATXGEOTileDataReader

- (id)appAndClipEntryForTileData:(id)a3
{
  v4 = a3;
  v5 = [v4 data];

  if (v5)
  {
    v6 = [v4 data];
    v7 = [(ATXGEOTileDataReader *)self readTileData:v6];
LABEL_5:
    v9 = v7;

    goto LABEL_6;
  }

  v8 = [v4 fileURL];

  if (v8)
  {
    v6 = [v4 fileURL];
    v7 = [(ATXGEOTileDataReader *)self readFileURL:v6];
    goto LABEL_5;
  }

  v11 = __atxlog_handle_hero();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [ATXGEOTileDataReader appAndClipEntryForTileData:v11];
  }

  v9 = 0;
LABEL_6:

  return v9;
}

@end