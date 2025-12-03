@interface SSHarvestedApplicationDocument
- (CGRect)PDFVisibleRect;
- (NSString)loggableDescription;
- (SSHarvestedApplicationDocument)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SSHarvestedApplicationDocument

- (SSHarvestedApplicationDocument)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSHarvestedApplicationDocument *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSSHarvestedApplicationMetadataPDFDataKey"];
  PDFData = v5->_PDFData;
  v5->_PDFData = v6;

  v5->_PDFPage = [coderCopy decodeInt64ForKey:@"kSSHarvestedApplicationMetadataPDFPageKey"];
  [coderCopy decodeCGRectForKey:@"kSSHarvestedApplicationMetadataPDFVisibleRectKey"];
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

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  pDFData = [(SSHarvestedApplicationDocument *)self PDFData];
  [coderCopy encodeObject:pDFData forKey:@"kSSHarvestedApplicationMetadataPDFDataKey"];

  [coderCopy encodeInt64:-[SSHarvestedApplicationDocument PDFPage](self forKey:{"PDFPage"), @"kSSHarvestedApplicationMetadataPDFPageKey"}];
  [(SSHarvestedApplicationDocument *)self PDFVisibleRect];
  [coderCopy encodeCGRect:@"kSSHarvestedApplicationMetadataPDFVisibleRectKey" forKey:?];
}

- (NSString)loggableDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = MEMORY[0x1E696AEC0];
  pDFData = [(SSHarvestedApplicationDocument *)self PDFData];
  pDFPage = [(SSHarvestedApplicationDocument *)self PDFPage];
  [(SSHarvestedApplicationDocument *)self PDFVisibleRect];
  v7 = NSStringFromCGRect(v11);
  v8 = [v4 stringWithFormat:@" has pdfData: %d, page:%d, visibleRect:%@", pDFData != 0, pDFPage, v7];
  [string appendString:v8];

  return string;
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