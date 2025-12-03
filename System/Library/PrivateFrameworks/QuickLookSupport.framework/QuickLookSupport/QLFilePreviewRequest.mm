@interface QLFilePreviewRequest
- (QLFilePreviewRequest)initWithURL:(id)l contentType:(id)type;
@end

@implementation QLFilePreviewRequest

- (QLFilePreviewRequest)initWithURL:(id)l contentType:(id)type
{
  lCopy = l;
  typeCopy = type;
  v17.receiver = self;
  v17.super_class = QLFilePreviewRequest;
  v9 = [(QLFilePreviewRequest *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileURL, l);
    if (typeCopy)
    {
      v11 = typeCopy;
      contentType = v10->_contentType;
      v10->_contentType = v11;
    }

    else
    {
      v13 = MEMORY[0x277CE1CB8];
      contentType = [MEMORY[0x277CDAB20] UTIForURL:lCopy];
      v14 = [v13 typeWithIdentifier:contentType];
      v15 = v10->_contentType;
      v10->_contentType = v14;
    }
  }

  return v10;
}

@end