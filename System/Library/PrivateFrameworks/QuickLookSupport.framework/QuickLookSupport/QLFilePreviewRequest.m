@interface QLFilePreviewRequest
- (QLFilePreviewRequest)initWithURL:(id)a3 contentType:(id)a4;
@end

@implementation QLFilePreviewRequest

- (QLFilePreviewRequest)initWithURL:(id)a3 contentType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = QLFilePreviewRequest;
  v9 = [(QLFilePreviewRequest *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileURL, a3);
    if (v8)
    {
      v11 = v8;
      contentType = v10->_contentType;
      v10->_contentType = v11;
    }

    else
    {
      v13 = MEMORY[0x277CE1CB8];
      contentType = [MEMORY[0x277CDAB20] UTIForURL:v7];
      v14 = [v13 typeWithIdentifier:contentType];
      v15 = v10->_contentType;
      v10->_contentType = v14;
    }
  }

  return v10;
}

@end