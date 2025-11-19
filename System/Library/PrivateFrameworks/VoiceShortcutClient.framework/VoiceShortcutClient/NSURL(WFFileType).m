@interface NSURL(WFFileType)
- (id)wfFileType;
@end

@implementation NSURL(WFFileType)

- (id)wfFileType
{
  if (![a1 isFileURL] || (v5 = 0, objc_msgSend(a1, "getResourceValue:forKey:error:", &v5, *MEMORY[0x1E695DC68], 0), +[WFFileType typeWithString:](WFFileType, "typeWithString:", v5), (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = [a1 lastPathComponent];
    v2 = [WFFileType typeFromFilename:v3];
  }

  return v2;
}

@end