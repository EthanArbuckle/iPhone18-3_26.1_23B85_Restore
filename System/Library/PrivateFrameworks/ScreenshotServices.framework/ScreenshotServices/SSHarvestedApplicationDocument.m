@interface SSHarvestedApplicationDocument
- (CGRect)PDFVisibleRect;
- (NSString)loggableDescription;
- (SSHarvestedApplicationDocument)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SSHarvestedApplicationDocument

- (SSHarvestedApplicationDocument)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSHarvestedApplicationDocument *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSSHarvestedApplicationMetadataPDFDataKey"];
  PDFData = v5->_PDFData;
  v5->_PDFData = v6;

  v5->_PDFPage = [v4 decodeInt64ForKey:@"kSSHarvestedApplicationMetadataPDFPageKey"];
  [v4 decodeCGRectForKey:@"kSSHarvestedApplicationMetadataPDFVisibleRectKey"];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v5->_PDFVisibleRect.origin.x = v9;
  v5->_PDFVisibleRect.origin.y = v11;
  v5->_PDFVisibleRect.size.width = v13;
  v5->_PDFVisibleRect.size.height = v15;
  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5 = a3;
  v4 = [(SSHarvestedApplicationDocument *)self PDFData];
  [v5 encodeObject:v4 forKey:@"kSSHarvestedApplicationMetadataPDFDataKey"];

  [v5 encodeInt64:-[SSHarvestedApplicationDocument PDFPage](self forKey:{"PDFPage"), @"kSSHarvestedApplicationMetadataPDFPageKey"}];
  [(SSHarvestedApplicationDocument *)self PDFVisibleRect];
  [v5 encodeCGRect:@"kSSHarvestedApplicationMetadataPDFVisibleRectKey" forKey:?];
}

- (NSString)loggableDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(SSHarvestedApplicationDocument *)self PDFData];
  v6 = [(SSHarvestedApplicationDocument *)self PDFPage];
  [(SSHarvestedApplicationDocument *)self PDFVisibleRect];
  v7 = NSStringFromCGRect(v11);
  v8 = [v4 stringWithFormat:@" has pdfData: %d, page:%d, visibleRect:%@", v5 != 0, v6, v7];
  [v3 appendString:v8];

  return v3;
}

- (CGRect)PDFVisibleRect
{
  x = self->_PDFVisibleRect.origin.x;
  y = self->_PDFVisibleRect.origin.y;
  width = self->_PDFVisibleRect.size.width;
  height = self->_PDFVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end