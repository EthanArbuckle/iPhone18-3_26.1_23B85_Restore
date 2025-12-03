@interface DownloadHandle
- (BOOL)isEqual:(id)equal;
- (DownloadHandle)initWithTransactionIdentifier:(int64_t)identifier downloadIdentifier:(int64_t)downloadIdentifier;
@end

@implementation DownloadHandle

- (DownloadHandle)initWithTransactionIdentifier:(int64_t)identifier downloadIdentifier:(int64_t)downloadIdentifier
{
  v7.receiver = self;
  v7.super_class = DownloadHandle;
  result = [(DownloadHandle *)&v7 init];
  if (result)
  {
    result->_downloadID = downloadIdentifier;
    result->_transactionID = identifier;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  transactionID = self->_transactionID;
  if (transactionID == [equalCopy transactionID])
  {
    downloadID = self->_downloadID;
    v7 = downloadID == [equalCopy downloadID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end