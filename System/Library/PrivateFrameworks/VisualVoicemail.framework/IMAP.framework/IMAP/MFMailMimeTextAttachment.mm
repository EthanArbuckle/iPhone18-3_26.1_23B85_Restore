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
  isOnWWAN = [v4 isOnWWAN];

  if (isOnWWAN)
  {
    v6 = 0x20000;
  }

  else
  {
    v6 = 0x100000;
  }

  _displayedMimePart = [(MFMimeTextAttachment *)self _displayedMimePart];
  v3 = [_displayedMimePart approximateRawSize] < v6;

  return v3;
}

@end