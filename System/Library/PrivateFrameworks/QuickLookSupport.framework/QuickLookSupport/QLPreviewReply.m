@interface QLPreviewReply
- (CGSize)contentSize;
- (CGSize)minimumSize;
- (QLPreviewReply)init;
- (QLPreviewReply)initForPDFWithPageSize:(CGSize)defaultPageSize documentCreationBlock:(void *)documentCreationBlock;
- (QLPreviewReply)initWithCoder:(id)a3;
- (QLPreviewReply)initWithContextSize:(CGSize)contextSize isBitmap:(BOOL)isBitmap drawingBlock:(void *)drawingBlock;
- (QLPreviewReply)initWithDataOfContentType:(UTType *)contentType contentSize:(CGSize)contentSize dataCreationBlock:(void *)dataCreationBlock;
- (QLPreviewReply)initWithFileURL:(id)a3 forcedContentType:(id)a4;
- (QLPreviewReply)initWithViewControllerOfPreferredContentSize:(CGSize)a3 minimumSize:(CGSize)a4 title:(id)a5 wantsBorder:(BOOL)a6;
- (id)drawWithContext:(CGContext *)a3;
- (id)updateFromDataCreationBlock;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithImageData:(id)a3 bitmapFormat:(id)a4;
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

- (QLPreviewReply)initWithViewControllerOfPreferredContentSize:(CGSize)a3 minimumSize:(CGSize)a4 title:(id)a5 wantsBorder:(BOOL)a6
{
  v6 = a6;
  height = a4.height;
  width = a4.width;
  v9 = a3.height;
  v10 = a3.width;
  v12 = a5;
  v13 = objc_opt_new();
  [(QLPreviewReply *)v13 setTitle:v12];

  [(QLPreviewReply *)v13 setContentSize:v10, v9];
  [(QLPreviewReply *)v13 setMinimumSize:width, height];
  [(QLPreviewReply *)v13 setWantsBorder:v6];
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

- (QLPreviewReply)initWithFileURL:(id)a3 forcedContentType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [(QLPreviewReply *)v8 setReplyType:3];
  if (v6)
  {
    v9 = objc_alloc(MEMORY[0x277CDAB18]);
    v10 = [v9 initWithURL:v6 sandboxType:*MEMORY[0x277D861B8]];
    [(QLPreviewReply *)v8 setFileURLHandler:v10];

    if (v7)
    {
      [(QLPreviewReply *)v8 setContentType:v7];
    }

    else
    {
      v11 = MEMORY[0x277CE1CB8];
      v12 = [MEMORY[0x277CDAB20] UTIForURL:v6];
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

- (void)updateWithImageData:(id)a3 bitmapFormat:(id)a4
{
  v6 = a4;
  [(QLPreviewReply *)self setData:a3];
  [(QLPreviewReply *)self setBitmapFormat:v6];
}

- (id)updateFromDataCreationBlock
{
  v3 = [(QLPreviewReply *)self dataCreationBlock];

  if (v3)
  {
    v4 = [(QLPreviewReply *)self dataCreationBlock];
    v7 = 0;
    v5 = (v4)[2](v4, self, &v7);
    v3 = v7;
    [(QLPreviewReply *)self setData:v5];
  }

  return v3;
}

- (id)drawWithContext:(CGContext *)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [(QLPreviewReply *)self drawInContextBlock];

  if (!v5)
  {
    v10 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"Unable to render preview";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v10 errorWithDomain:@"QuickLookPreviewErrors" code:3 userInfo:v8];
    goto LABEL_5;
  }

  v6 = [(QLPreviewReply *)self drawInContextBlock];
  v12 = 0;
  v7 = (v6)[2](v6, a3, self, &v12);
  v8 = v12;

  v9 = 0;
  if (v7)
  {
LABEL_5:

    v8 = v9;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  v4 = [(QLPreviewReply *)self contentType];
  [v16 encodeObject:v4 forKey:@"contentType"];

  v5 = [(QLPreviewReply *)self data];
  [v16 encodeObject:v5 forKey:@"data"];

  [v16 encodeInteger:-[QLPreviewReply stringEncoding](self forKey:{"stringEncoding"), @"stringEncoding"}];
  v6 = [(QLPreviewReply *)self attachments];
  [v16 encodeObject:v6 forKey:@"attachments"];

  v7 = [(QLPreviewReply *)self fileURLHandler];
  [v16 encodeObject:v7 forKey:@"fileURL"];

  v8 = [(QLPreviewReply *)self bitmapFormat];
  [v16 encodeObject:v8 forKey:@"bitmapFormat"];

  v9 = [(QLPreviewReply *)self title];
  [v16 encodeObject:v9 forKey:@"title"];

  [(QLPreviewReply *)self contentSize];
  *&v10 = v10;
  [v16 encodeFloat:@"contentWidth" forKey:v10];
  [(QLPreviewReply *)self contentSize];
  *&v12 = v11;
  [v16 encodeFloat:@"contentHeight" forKey:v12];
  [(QLPreviewReply *)self minimumSize];
  *&v13 = v13;
  [v16 encodeFloat:@"minimumWidth" forKey:v13];
  [(QLPreviewReply *)self minimumSize];
  *&v15 = v14;
  [v16 encodeFloat:@"minimumHeight" forKey:v15];
  [v16 encodeBool:-[QLPreviewReply wantsBorder](self forKey:{"wantsBorder"), @"wantsBorder"}];
  [v16 encodeInteger:-[QLPreviewReply replyType](self forKey:{"replyType"), @"replyType"}];
}

- (QLPreviewReply)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = QLPreviewReply;
  v5 = [(QLPreviewReply *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    [(QLPreviewReply *)v5 setContentType:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(QLPreviewReply *)v5 setData:v7];

    -[QLPreviewReply setStringEncoding:](v5, "setStringEncoding:", [v4 decodeIntegerForKey:@"stringEncoding"]);
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"attachments"];
    [(QLPreviewReply *)v5 setAttachments:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    [(QLPreviewReply *)v5 setFileURLHandler:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bitmapFormat"];
    [(QLPreviewReply *)v5 setBitmapFormat:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(QLPreviewReply *)v5 setTitle:v15];

    [v4 decodeFloatForKey:@"contentWidth"];
    v17 = v16;
    [v4 decodeFloatForKey:@"contentHeight"];
    [(QLPreviewReply *)v5 setContentSize:v17, v18];
    [v4 decodeFloatForKey:@"minimumWidth"];
    v20 = v19;
    [v4 decodeFloatForKey:@"minimumHeight"];
    [(QLPreviewReply *)v5 setMinimumSize:v20, v21];
    -[QLPreviewReply setWantsBorder:](v5, "setWantsBorder:", [v4 decodeBoolForKey:@"wantsBorder"]);
    -[QLPreviewReply setReplyType:](v5, "setReplyType:", [v4 decodeIntegerForKey:@"replyType"]);
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