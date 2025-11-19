@interface iWorkFileFormat
- (id)prepareFileForUploadingAtURL:(id)a3 originalURLExtension:(id)a4 inDirectory:(id)a5 destinationSandboxExtension:(id)a6 completionHandler:(id)a7;
@end

@implementation iWorkFileFormat

- (id)prepareFileForUploadingAtURL:(id)a3 originalURLExtension:(id)a4 inDirectory:(id)a5 destinationSandboxExtension:(id)a6 completionHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(IWXPCPackageConverter);
  v17 = [(IWXPCPackageConverter *)v16 prepareFileForUploadingAtURL:v15 originalURLExtension:v14 inDirectory:v13 destinationSandboxExtension:v12 completionHandler:v11];

  return v17;
}

@end