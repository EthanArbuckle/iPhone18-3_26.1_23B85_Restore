@interface ATXGEOTileDataReader
- (id)appAndClipEntryForTileData:(id)data;
@end

@implementation ATXGEOTileDataReader

- (id)appAndClipEntryForTileData:(id)data
{
  dataCopy = data;
  data = [dataCopy data];

  if (data)
  {
    data2 = [dataCopy data];
    v7 = [(ATXGEOTileDataReader *)self readTileData:data2];
LABEL_5:
    v9 = v7;

    goto LABEL_6;
  }

  fileURL = [dataCopy fileURL];

  if (fileURL)
  {
    data2 = [dataCopy fileURL];
    v7 = [(ATXGEOTileDataReader *)self readFileURL:data2];
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