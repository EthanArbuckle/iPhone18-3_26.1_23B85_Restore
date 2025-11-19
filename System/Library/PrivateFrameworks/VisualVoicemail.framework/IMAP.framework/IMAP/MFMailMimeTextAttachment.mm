@interface MFMailMimeTextAttachment
- (BOOL)shouldDownloadAttachmentOnDisplay;
@end

@implementation MFMailMimeTextAttachment

- (BOOL)shouldDownloadAttachmentOnDisplay
{
  if ([(MFMimeTextAttachment *)self hasBeenDownloaded])
  {
    return 1;
  }

  v4 = +[MFNetworkController sharedInstance];
  v5 = [v4 isOnWWAN];

  if (v5)
  {
    v6 = 0x20000;
  }

  else
  {
    v6 = 0x100000;
  }

  v7 = [(MFMimeTextAttachment *)self _displayedMimePart];
  v3 = [v7 approximateRawSize] < v6;

  return v3;
}

@end