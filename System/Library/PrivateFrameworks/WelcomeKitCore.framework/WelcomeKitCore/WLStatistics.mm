@interface WLStatistics
+ (id)_statisticsWithContentType:(id)a3;
- (id)description;
- (id)fetchLogString;
- (int64_t)importBytesUsed;
- (unint64_t)downloadBytesPerSecond;
@end

@implementation WLStatistics

+ (id)_statisticsWithContentType:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(WLStatistics);
  contentType = v4->_contentType;
  v4->_contentType = v3;

  return v4;
}

- (unint64_t)downloadBytesPerSecond
{
  result = [(WLStatistics *)self downloadDuration];
  if (result)
  {
    downloadByteCount = self->_downloadByteCount;
    return (downloadByteCount / [(WLStatistics *)self downloadDuration]);
  }

  return result;
}

- (int64_t)importBytesUsed
{
  importStartBytesFree = self->_importStartBytesFree;
  importEndBytesFree = self->_importEndBytesFree;
  v4 = importStartBytesFree >= importEndBytesFree;
  v5 = importStartBytesFree - importEndBytesFree;
  if (v4)
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  contentType = self->_contentType;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_selectedForMigration];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_downloadByteCount];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WLStatistics downloadDuration](self, "downloadDuration")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[WLStatistics downloadBytesPerSecond](self, "downloadBytesPerSecond")}];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_importRecordCount];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_importFailedRecordCount];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WLStatistics importDuration](self, "importDuration")}];
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[WLStatistics importBytesUsed](self, "importBytesUsed")}];
  v12 = [v14 stringWithFormat:@"%@ : selected %@ download bytes %@, time %@, B/s %@; records imported %@, failed %@, time %@, space used %@", contentType, v4, v5, v6, v7, v8, v9, v10, v11];;

  return v12;
}

- (id)fetchLogString
{
  v3 = MEMORY[0x277CCACA8];
  contentType = self->_contentType;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_downloadByteCount];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WLStatistics downloadDuration](self, "downloadDuration")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[WLStatistics downloadBytesPerSecond](self, "downloadBytesPerSecond")}];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_importRecordCount];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_importFailedRecordCount];
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[WLStatistics importBytesUsed](self, "importBytesUsed")}];
  v11 = [v3 stringWithFormat:@"%@ : fetch bytes %@, time %@, B/s %@ requests succeeded %@, failed %@, space used %@", contentType, v5, v6, v7, v8, v9, v10];;

  return v11;
}

@end