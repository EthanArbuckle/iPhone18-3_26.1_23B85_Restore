@interface QLPreviewReply
- (CGSize)contentSize;
- (CGSize)minimumSize;
- (QLPreviewReply)init;
- (QLPreviewReply)initForPDFWithPageSize:(CGSize)defaultPageSize documentCreationBlock:(void *)documentCreationBlock;
- (QLPreviewReply)initWithCoder:(id)coder;
- (QLPreviewReply)initWithContextSize:(CGSize)contextSize isBitmap:(BOOL)isBitmap drawingBlock:(void *)drawingBlock;
- (QLPreviewReply)initWithDataOfContentType:(UTType *)contentType contentSize:(CGSize)contentSize dataCreationBlock:(void *)dataCreationBlock;
- (QLPreviewReply)initWithFileURL:(id)l forcedContentType:(id)type;
- (QLPreviewReply)initWithViewControllerOfPreferredContentSize:(CGSize)size minimumSize:(CGSize)minimumSize title:(id)title wantsBorder:(BOOL)border;
- (id)drawWithContext:(CGContext *)context;
- (id)updateFromDataCreationBlock;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithImageData:(id)data bitmapFormat:(id)format;
@end

@implementation QLPreviewReply

- (QLPreviewReply)init
{
  v8.receiver = self;
  v8.super_class = QLPreviewReply;
  v2 = [(QLPreviewReply *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_wantsBorder = 1;
    attachments = v2->_attachments;
    v5 = MEMORY[0x277CBEC10];
    v2->_stringEncoding = 4;
    v2->_attachments = v5;

    title = v3->_title;
    v3->_title = &stru_2873DE480;
  }

  return v3;
}

- (QLPreviewReply)initWithViewControllerOfPreferredContentSize:(CGSize)size minimumSize:(CGSize)minimumSize title:(id)title wantsBorder:(BOOL)border
{
  borderCopy = border;
  height = minimumSize.height;
  width = minimumSize.width;
  v9 = size.height;
  v10 = size.width;
  titleCopy = title;
  v13 = objc_opt_new();
  [(QLPreviewReply *)v13 setTitle:titleCopy];

  [(QLPreviewReply *)v13 setContentSize:v10, v9];
  [(QLPreviewReply *)v13 setMinimumSize:width, height];
  [(QLPreviewReply *)v13 setWantsBorder:borderCopy];
  [(QLPreviewReply *)v13 setReplyType:5];

  return v13;
}

- (QLPreviewReply)initWithContextSize:(CGSize)contextSize isBitmap:(BOOL)isBitmap drawingBlock:(void *)drawingBlock
{
  v5 = isBitmap;
  height = contextSize.height;
  width = contextSize.width;
  v9 = drawingBlock;
  v10 = objc_opt_new();
  [(QLPreviewReply *)v10 setReplyType:!v5];
  [(QLPreviewReply *)v10 setDrawInContextBlock:v9];

  [(QLPreviewReply *)v10 setContentSize:width, height];
  v11 = MEMORY[0x277CE1DB0];
  if (!v5)
  {
    v11 = MEMORY[0x277CE1E08];
  }

  [(QLPreviewReply *)v10 setContentType:*v11];

  return v10;
}

- (QLPreviewReply)initForPDFWithPageSize:(CGSize)defaultPageSize documentCreationBlock:(void *)documentCreationBlock
{
  height = defaultPageSize.height;
  width = defaultPageSize.width;
  v7 = documentCreationBlock;
  v8 = objc_opt_new();
  [(QLPreviewReply *)v8 setReplyType:2];
  [(QLPreviewReply *)v8 setContentSize:width, height];
  [(QLPreviewReply *)v8 setDocumentCreationBlock:v7];

  [(QLPreviewReply *)v8 setContentType:*MEMORY[0x277CE1E08]];
  return v8;
}

- (QLPreviewReply)initWithFileURL:(id)l forcedContentType:(id)type
{
  lCopy = l;
  typeCopy = type;
  v8 = objc_opt_new();
  [(QLPreviewReply *)v8 setReplyType:3];
  if (lCopy)
  {
    v9 = objc_alloc(MEMORY[0x277CDAB18]);
    v10 = [v9 initWithURL:lCopy sandboxType:*MEMORY[0x277D861B8]];
    [(QLPreviewReply *)v8 setFileURLHandler:v10];

    if (typeCopy)
    {
      [(QLPreviewReply *)v8 setContentType:typeCopy];
    }

    else
    {
      v11 = MEMORY[0x277CE1CB8];
      v12 = [MEMORY[0x277CDAB20] UTIForURL:lCopy];
      v13 = [v11 typeWithIdentifier:v12];
      [(QLPreviewReply *)v8 setContentType:v13];
    }
  }

  return v8;
}

- (QLPreviewReply)initWithDataOfContentType:(UTType *)contentType contentSize:(CGSize)contentSize dataCreationBlock:(void *)dataCreationBlock
{
  height = contentSize.height;
  width = contentSize.width;
  v9 = dataCreationBlock;
  v10 = contentType;
  v11 = objc_opt_new();
  [(QLPreviewReply *)v11 setReplyType:4];
  [(QLPreviewReply *)v11 setContentType:v10];

  [(QLPreviewReply *)v11 setContentSize:width, height];
  [(QLPreviewReply *)v11 setDataCreationBlock:v9];

  return v11;
}

- (void)updateWithImageData:(id)data bitmapFormat:(id)format
{
  formatCopy = format;
  [(QLPreviewReply *)self setData:data];
  [(QLPreviewReply *)self setBitmapFormat:formatCopy];
}

- (id)updateFromDataCreationBlock
{
  dataCreationBlock = [(QLPreviewReply *)self dataCreationBlock];

  if (dataCreationBlock)
  {
    dataCreationBlock2 = [(QLPreviewReply *)self dataCreationBlock];
    v7 = 0;
    v5 = (dataCreationBlock2)[2](dataCreationBlock2, self, &v7);
    dataCreationBlock = v7;
    [(QLPreviewReply *)self setData:v5];
  }

  return dataCreationBlock;
}

- (id)drawWithContext:(CGContext *)context
{
  v14[1] = *MEMORY[0x277D85DE8];
  drawInContextBlock = [(QLPreviewReply *)self drawInContextBlock];

  if (!drawInContextBlock)
  {
    v10 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"Unable to render preview";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v10 errorWithDomain:@"QuickLookPreviewErrors" code:3 userInfo:v8];
    goto LABEL_5;
  }

  drawInContextBlock2 = [(QLPreviewReply *)self drawInContextBlock];
  v12 = 0;
  v7 = (drawInContextBlock2)[2](drawInContextBlock2, context, self, &v12);
  v8 = v12;

  v9 = 0;
  if (v7)
  {
LABEL_5:

    v8 = v9;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contentType = [(QLPreviewReply *)self contentType];
  [coderCopy encodeObject:contentType forKey:@"contentType"];

  data = [(QLPreviewReply *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  [coderCopy encodeInteger:-[QLPreviewReply stringEncoding](self forKey:{"stringEncoding"), @"stringEncoding"}];
  attachments = [(QLPreviewReply *)self attachments];
  [coderCopy encodeObject:attachments forKey:@"attachments"];

  fileURLHandler = [(QLPreviewReply *)self fileURLHandler];
  [coderCopy encodeObject:fileURLHandler forKey:@"fileURL"];

  bitmapFormat = [(QLPreviewReply *)self bitmapFormat];
  [coderCopy encodeObject:bitmapFormat forKey:@"bitmapFormat"];

  title = [(QLPreviewReply *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  [(QLPreviewReply *)self contentSize];
  *&v10 = v10;
  [coderCopy encodeFloat:@"contentWidth" forKey:v10];
  [(QLPreviewReply *)self contentSize];
  *&v12 = v11;
  [coderCopy encodeFloat:@"contentHeight" forKey:v12];
  [(QLPreviewReply *)self minimumSize];
  *&v13 = v13;
  [coderCopy encodeFloat:@"minimumWidth" forKey:v13];
  [(QLPreviewReply *)self minimumSize];
  *&v15 = v14;
  [coderCopy encodeFloat:@"minimumHeight" forKey:v15];
  [coderCopy encodeBool:-[QLPreviewReply wantsBorder](self forKey:{"wantsBorder"), @"wantsBorder"}];
  [coderCopy encodeInteger:-[QLPreviewReply replyType](self forKey:{"replyType"), @"replyType"}];
}

- (QLPreviewReply)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = QLPreviewReply;
  v5 = [(QLPreviewReply *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    [(QLPreviewReply *)v5 setContentType:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(QLPreviewReply *)v5 setData:v7];

    -[QLPreviewReply setStringEncoding:](v5, "setStringEncoding:", [coderCopy decodeIntegerForKey:@"stringEncoding"]);
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"attachments"];
    [(QLPreviewReply *)v5 setAttachments:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    [(QLPreviewReply *)v5 setFileURLHandler:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bitmapFormat"];
    [(QLPreviewReply *)v5 setBitmapFormat:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(QLPreviewReply *)v5 setTitle:v15];

    [coderCopy decodeFloatForKey:@"contentWidth"];
    v17 = v16;
    [coderCopy decodeFloatForKey:@"contentHeight"];
    [(QLPreviewReply *)v5 setContentSize:v17, v18];
    [coderCopy decodeFloatForKey:@"minimumWidth"];
    v20 = v19;
    [coderCopy decodeFloatForKey:@"minimumHeight"];
    [(QLPreviewReply *)v5 setMinimumSize:v20, v21];
    -[QLPreviewReply setWantsBorder:](v5, "setWantsBorder:", [coderCopy decodeBoolForKey:@"wantsBorder"]);
    -[QLPreviewReply setReplyType:](v5, "setReplyType:", [coderCopy decodeIntegerForKey:@"replyType"]);
  }

  return v5;
}

- (CGSize)contentSize
{
  objc_copyStruct(v4, &self->_contentSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)minimumSize
{
  objc_copyStruct(v4, &self->_minimumSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end