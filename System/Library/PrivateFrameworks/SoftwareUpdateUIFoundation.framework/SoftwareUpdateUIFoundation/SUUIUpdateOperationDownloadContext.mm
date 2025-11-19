@interface SUUIUpdateOperationDownloadContext
- (SUUIUpdateOperationDownloadContext)initWithUnattendedPurge:(BOOL)a3;
@end

@implementation SUUIUpdateOperationDownloadContext

- (SUUIUpdateOperationDownloadContext)initWithUnattendedPurge:(BOOL)a3
{
  v8 = a2;
  v7 = a3;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = SUUIUpdateOperationDownloadContext;
  v5 = [(SUUIUpdateOperationDownloadContext *)&v6 init];
  v9 = v5;
  objc_storeStrong(&v9, v5);
  if (v5)
  {
    v9->_unattendedPurge = v7;
  }

  v4 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v4;
}

@end