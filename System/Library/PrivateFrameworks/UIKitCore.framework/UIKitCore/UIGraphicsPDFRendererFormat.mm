@interface UIGraphicsPDFRendererFormat
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIGraphicsPDFRendererFormat

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = UIGraphicsPDFRendererFormat;
  v4 = [(UIGraphicsRendererFormat *)&v10 copyWithZone:a3];
  v5 = [(UIGraphicsPDFRendererFormat *)self documentInfo];
  v6 = [v5 copy];
  [v4 setDocumentInfo:v6];

  v7 = [(UIGraphicsPDFRendererFormat *)self outputURL];
  [v4 setOutputURL:v7];

  v8 = [(UIGraphicsPDFRendererFormat *)self pdfData];
  [v4 setPdfData:v8];

  return v4;
}

@end