@interface UIGraphicsPDFRendererFormat
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIGraphicsPDFRendererFormat

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = UIGraphicsPDFRendererFormat;
  v4 = [(UIGraphicsRendererFormat *)&v10 copyWithZone:zone];
  documentInfo = [(UIGraphicsPDFRendererFormat *)self documentInfo];
  v6 = [documentInfo copy];
  [v4 setDocumentInfo:v6];

  outputURL = [(UIGraphicsPDFRendererFormat *)self outputURL];
  [v4 setOutputURL:outputURL];

  pdfData = [(UIGraphicsPDFRendererFormat *)self pdfData];
  [v4 setPdfData:pdfData];

  return v4;
}

@end