@interface WSWebSheetDownloadManager
- (BOOL)removeFromDisk;
- (void)download:(id)a3 decideDestinationUsingResponse:(id)a4 suggestedFilename:(id)a5 completionHandler:(id)a6;
@end

@implementation WSWebSheetDownloadManager

- (BOOL)removeFromDisk
{
  if (!self->_fileDownloadPath)
  {
    return 1;
  }

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 _web_removeFileOnlyAtPath:self->_fileDownloadPath];

  fileDownloadPath = self->_fileDownloadPath;
  self->_fileDownloadPath = 0;

  return v4;
}

- (void)download:(id)a3 decideDestinationUsingResponse:(id)a4 suggestedFilename:(id)a5 completionHandler:(id)a6
{
  v13 = a6;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = NSTemporaryDirectory();
  v9 = [v8 stringByAppendingPathComponent:@"ConfigurationProfile"];

  if (v9 && ([v7 _web_pathWithUniqueFilenameForPath:v9], v10 = objc_claimAutoreleasedReturnValue(), fileDownloadPath = self->_fileDownloadPath, self->_fileDownloadPath = v10, fileDownloadPath, self->_fileDownloadPath))
  {
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    v13[2](v13, v12);
  }

  else
  {
    v13[2](v13, 0);
  }
}

@end