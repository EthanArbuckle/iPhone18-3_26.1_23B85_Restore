@interface OKMediaResourceItem
+ (id)urlForMediaObject:(id)object;
- (OKMediaResourceItem)initWithFilename:(id)filename andExtension:(id)extension;
@end

@implementation OKMediaResourceItem

+ (id)urlForMediaObject:(id)object
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([objc_msgSend(object "scheme")] & 1) == 0)
  {
    return 0;
  }

  return object;
}

- (OKMediaResourceItem)initWithFilename:(id)filename andExtension:(id)extension
{
  v5.receiver = self;
  v5.super_class = OKMediaResourceItem;
  return -[OKMediaItem initWithUniqueURL:](&v5, sel_initWithUniqueURL_, [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"resource://%@.%@", objc_msgSend(filename, "stringByAddingPercentEscapesForURLPath"), objc_msgSend(extension, "stringByAddingPercentEscapesForURLPath"))}]);
}

@end