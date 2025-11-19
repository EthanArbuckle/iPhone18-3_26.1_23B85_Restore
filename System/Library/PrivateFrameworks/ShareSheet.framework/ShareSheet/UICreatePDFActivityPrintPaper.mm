@interface UICreatePDFActivityPrintPaper
- (CGRect)printableRect;
- (CGSize)_paperSize;
- (UICreatePDFActivityPrintPaper)initWithPaperSize:(CGSize)a3;
@end

@implementation UICreatePDFActivityPrintPaper

- (UICreatePDFActivityPrintPaper)initWithPaperSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7.receiver = self;
  v7.super_class = UICreatePDFActivityPrintPaper;
  v5 = [(UICreatePDFActivityPrintPaper *)&v7 init];
  [(UICreatePDFActivityPrintPaper *)v5 set_paperSize:width, height];
  return v5;
}

- (CGRect)printableRect
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [(UICreatePDFActivityPrintPaper *)self paperSize];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGSize)_paperSize
{
  width = self->__paperSize.width;
  height = self->__paperSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end