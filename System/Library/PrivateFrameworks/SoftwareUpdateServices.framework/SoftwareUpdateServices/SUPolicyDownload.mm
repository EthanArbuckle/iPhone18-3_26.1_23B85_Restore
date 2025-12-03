@interface SUPolicyDownload
- (BOOL)allowExpensiveNetwork;
- (BOOL)allowsCellular;
- (BOOL)discretionary;
- (SUPolicyDownload)initWithDownloadOptions:(id)options;
- (int64_t)maxPreSUStagingOptionalSize;
@end

@implementation SUPolicyDownload

- (SUPolicyDownload)initWithDownloadOptions:(id)options
{
  optionsCopy = options;
  v8.receiver = self;
  v8.super_class = SUPolicyDownload;
  v5 = [(SUPolicyDownload *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SUPolicyDownload *)v5 setDownloadOptions:optionsCopy];
  }

  return v6;
}

- (BOOL)discretionary
{
  downloadOptions = [(SUPolicyDownload *)self downloadOptions];
  isAutoDownload = [downloadOptions isAutoDownload];

  return isAutoDownload;
}

- (BOOL)allowsCellular
{
  downloadOptions = [(SUPolicyDownload *)self downloadOptions];
  isEnabledForCellular = [downloadOptions isEnabledForCellular];

  return isEnabledForCellular;
}

- (BOOL)allowExpensiveNetwork
{
  downloadOptions = [(SUPolicyDownload *)self downloadOptions];
  isEnabledForExpensiveNetwork = [downloadOptions isEnabledForExpensiveNetwork];

  return isEnabledForExpensiveNetwork;
}

- (int64_t)maxPreSUStagingOptionalSize
{
  downloadOptions = [(SUPolicyDownload *)self downloadOptions];
  descriptor = [downloadOptions descriptor];
  v4 = [SUSpace maxPreSUStagingOptionalSpaceForUpdate:descriptor];

  return v4;
}

@end