@interface NSURL(WFFileType)
- (id)wfFileType;
@end

@implementation NSURL(WFFileType)

- (id)wfFileType
{
  if (![self isFileURL] || (v5 = 0, objc_msgSend(self, "getResourceValue:forKey:error:", &v5, *MEMORY[0x1E695DC68], 0), +[WFFileType typeWithString:](WFFileType, "typeWithString:", v5), (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    lastPathComponent = [self lastPathComponent];
    v2 = [WFFileType typeFromFilename:lastPathComponent];
  }

  return v2;
}

@end