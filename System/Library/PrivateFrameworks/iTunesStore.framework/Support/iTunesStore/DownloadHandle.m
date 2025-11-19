@interface DownloadHandle
- (BOOL)isEqual:(id)a3;
- (DownloadHandle)initWithTransactionIdentifier:(int64_t)a3 downloadIdentifier:(int64_t)a4;
@end

@implementation DownloadHandle

- (DownloadHandle)initWithTransactionIdentifier:(int64_t)a3 downloadIdentifier:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = DownloadHandle;
  result = [(DownloadHandle *)&v7 init];
  if (result)
  {
    result->_downloadID = a4;
    result->_transactionID = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  transactionID = self->_transactionID;
  if (transactionID == [v4 transactionID])
  {
    downloadID = self->_downloadID;
    v7 = downloadID == [v4 downloadID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end