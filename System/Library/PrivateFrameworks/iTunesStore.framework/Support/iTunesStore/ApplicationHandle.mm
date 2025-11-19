@interface ApplicationHandle
- (ApplicationHandle)initWithDownloadHandle:(id)a3 bundleIdentifier:(id)a4;
- (ApplicationHandle)initWithTransactionIdentifier:(int64_t)a3 downloadIdentifier:(int64_t)a4 bundleIdentifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation ApplicationHandle

- (ApplicationHandle)initWithDownloadHandle:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 transactionID];
  v9 = [v7 downloadID];

  v10 = [(ApplicationHandle *)self initWithTransactionIdentifier:v8 downloadIdentifier:v9 bundleIdentifier:v6];
  return v10;
}

- (ApplicationHandle)initWithTransactionIdentifier:(int64_t)a3 downloadIdentifier:(int64_t)a4 bundleIdentifier:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = ApplicationHandle;
  v9 = [(DownloadHandle *)&v13 initWithTransactionIdentifier:a3 downloadIdentifier:a4];
  if (v9)
  {
    v10 = [v8 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ApplicationHandle;
  if ([(DownloadHandle *)&v9 isEqual:v4])
  {
    bundleID = self->_bundleID;
    v6 = [v4 bundleID];
    v7 = [(NSString *)bundleID isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end