@interface WSWebSheetDownloadManager
- (BOOL)removeFromDisk;
- (void)download:(id)download decideDestinationUsingResponse:(id)response suggestedFilename:(id)filename completionHandler:(id)handler;
@end

@implementation WSWebSheetDownloadManager

- (BOOL)removeFromDisk
{
  if (!self->_fileDownloadPath)
  {
    return 1;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager _web_removeFileOnlyAtPath:self->_fileDownloadPath];

  fileDownloadPath = self->_fileDownloadPath;
  self->_fileDownloadPath = 0;

  return v4;
}

- (void)download:(id)download decideDestinationUsingResponse:(id)response suggestedFilename:(id)filename completionHandler:(id)handler
{
  handlerCopy = handler;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = NSTemporaryDirectory();
  v9 = [v8 stringByAppendingPathComponent:@"ConfigurationProfile"];

  if (v9 && ([defaultManager _web_pathWithUniqueFilenameForPath:v9], v10 = objc_claimAutoreleasedReturnValue(), fileDownloadPath = self->_fileDownloadPath, self->_fileDownloadPath = v10, fileDownloadPath, self->_fileDownloadPath))
  {
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    handlerCopy[2](handlerCopy, v12);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

@end