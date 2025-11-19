@interface OKMediaResourceItem
+ (id)urlForMediaObject:(id)a3;
- (OKMediaResourceItem)initWithFilename:(id)a3 andExtension:(id)a4;
@end

@implementation OKMediaResourceItem

+ (id)urlForMediaObject:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([objc_msgSend(a3 "scheme")] & 1) == 0)
  {
    return 0;
  }

  return a3;
}

- (OKMediaResourceItem)initWithFilename:(id)a3 andExtension:(id)a4
{
  v5.receiver = self;
  v5.super_class = OKMediaResourceItem;
  return -[OKMediaItem initWithUniqueURL:](&v5, sel_initWithUniqueURL_, [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"resource://%@.%@", objc_msgSend(a3, "stringByAddingPercentEscapesForURLPath"), objc_msgSend(a4, "stringByAddingPercentEscapesForURLPath"))}]);
}

@end