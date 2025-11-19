@interface SUPolicyDownload
- (BOOL)allowExpensiveNetwork;
- (BOOL)allowsCellular;
- (BOOL)discretionary;
- (SUPolicyDownload)initWithDownloadOptions:(id)a3;
- (int64_t)maxPreSUStagingOptionalSize;
@end

@implementation SUPolicyDownload

- (SUPolicyDownload)initWithDownloadOptions:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUPolicyDownload;
  v5 = [(SUPolicyDownload *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SUPolicyDownload *)v5 setDownloadOptions:v4];
  }

  return v6;
}

- (BOOL)discretionary
{
  v2 = [(SUPolicyDownload *)self downloadOptions];
  v3 = [v2 isAutoDownload];

  return v3;
}

- (BOOL)allowsCellular
{
  v2 = [(SUPolicyDownload *)self downloadOptions];
  v3 = [v2 isEnabledForCellular];

  return v3;
}

- (BOOL)allowExpensiveNetwork
{
  v2 = [(SUPolicyDownload *)self downloadOptions];
  v3 = [v2 isEnabledForExpensiveNetwork];

  return v3;
}

- (int64_t)maxPreSUStagingOptionalSize
{
  v2 = [(SUPolicyDownload *)self downloadOptions];
  v3 = [v2 descriptor];
  v4 = [SUSpace maxPreSUStagingOptionalSpaceForUpdate:v3];

  return v4;
}

@end