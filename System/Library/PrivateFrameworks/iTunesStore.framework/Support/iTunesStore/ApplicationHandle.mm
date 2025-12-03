@interface ApplicationHandle
- (ApplicationHandle)initWithDownloadHandle:(id)handle bundleIdentifier:(id)identifier;
- (ApplicationHandle)initWithTransactionIdentifier:(int64_t)identifier downloadIdentifier:(int64_t)downloadIdentifier bundleIdentifier:(id)bundleIdentifier;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation ApplicationHandle

- (ApplicationHandle)initWithDownloadHandle:(id)handle bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  handleCopy = handle;
  transactionID = [handleCopy transactionID];
  downloadID = [handleCopy downloadID];

  v10 = [(ApplicationHandle *)self initWithTransactionIdentifier:transactionID downloadIdentifier:downloadID bundleIdentifier:identifierCopy];
  return v10;
}

- (ApplicationHandle)initWithTransactionIdentifier:(int64_t)identifier downloadIdentifier:(int64_t)downloadIdentifier bundleIdentifier:(id)bundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  v13.receiver = self;
  v13.super_class = ApplicationHandle;
  v9 = [(DownloadHandle *)&v13 initWithTransactionIdentifier:identifier downloadIdentifier:downloadIdentifier];
  if (v9)
  {
    v10 = [bundleIdentifierCopy copy];
    bundleID = v9->_bundleID;
    v9->_bundleID = v10;
  }

  return v9;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = ApplicationHandle;
  v3 = [(DownloadHandle *)&v5 hash];
  return [(NSString *)self->_bundleID hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = ApplicationHandle;
  if ([(DownloadHandle *)&v9 isEqual:equalCopy])
  {
    bundleID = self->_bundleID;
    bundleID = [equalCopy bundleID];
    v7 = [(NSString *)bundleID isEqual:bundleID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end