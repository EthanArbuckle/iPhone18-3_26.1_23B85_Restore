@interface iWorkFileFormat
- (id)prepareFileForUploadingAtURL:(id)l originalURLExtension:(id)extension inDirectory:(id)directory destinationSandboxExtension:(id)sandboxExtension completionHandler:(id)handler;
@end

@implementation iWorkFileFormat

- (id)prepareFileForUploadingAtURL:(id)l originalURLExtension:(id)extension inDirectory:(id)directory destinationSandboxExtension:(id)sandboxExtension completionHandler:(id)handler
{
  handlerCopy = handler;
  sandboxExtensionCopy = sandboxExtension;
  directoryCopy = directory;
  extensionCopy = extension;
  lCopy = l;
  v16 = objc_alloc_init(IWXPCPackageConverter);
  v17 = [(IWXPCPackageConverter *)v16 prepareFileForUploadingAtURL:lCopy originalURLExtension:extensionCopy inDirectory:directoryCopy destinationSandboxExtension:sandboxExtensionCopy completionHandler:handlerCopy];

  return v17;
}

@end