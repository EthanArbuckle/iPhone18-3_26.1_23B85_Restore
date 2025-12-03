@interface BAManagedDownloaderExtensionInfo
- (BAManagedDownloaderExtensionInfo)initWithCoder:(id)coder;
- (BAManagedDownloaderExtensionInfo)initWithManifestDataSource:(int64_t)source;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BAManagedDownloaderExtensionInfo

- (BAManagedDownloaderExtensionInfo)initWithManifestDataSource:(int64_t)source
{
  v5.receiver = self;
  v5.super_class = BAManagedDownloaderExtensionInfo;
  result = [(BAAppExtensionInfo *)&v5 initPrivately];
  if (result)
  {
    result->_manifestDataSource = source;
  }

  return result;
}

- (BAManagedDownloaderExtensionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BAManagedDownloaderExtensionInfo;
  v5 = [(BAAppExtensionInfo *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_manifestDataSource = [coderCopy decodeIntegerForKey:@"manifestDataSource"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BAManagedDownloaderExtensionInfo;
  coderCopy = coder;
  [(BAAppExtensionInfo *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_manifestDataSource forKey:{@"manifestDataSource", v5.receiver, v5.super_class}];
}

@end