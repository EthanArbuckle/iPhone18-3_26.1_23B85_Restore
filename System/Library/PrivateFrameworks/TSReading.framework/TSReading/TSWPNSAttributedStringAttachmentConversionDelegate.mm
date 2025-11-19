@interface TSWPNSAttributedStringAttachmentConversionDelegate
- (TSWPNSAttributedStringAttachmentConversionDelegate)initWithConvertHyperlinks:(BOOL)a3 convertGraphicalAttachments:(BOOL)a4;
- (id)urlForHyperlinkField:(id)a3;
@end

@implementation TSWPNSAttributedStringAttachmentConversionDelegate

- (TSWPNSAttributedStringAttachmentConversionDelegate)initWithConvertHyperlinks:(BOOL)a3 convertGraphicalAttachments:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = TSWPNSAttributedStringAttachmentConversionDelegate;
  result = [(TSWPNSAttributedStringAttachmentConversionDelegate *)&v7 init];
  if (result)
  {
    result->mConvertHyperlinks = a3;
    result->mConvertAttachments = a4;
  }

  return result;
}

- (id)urlForHyperlinkField:(id)a3
{
  if (!self->mConvertHyperlinks)
  {
    return 0;
  }

  v4 = [a3 canonicalRepresentationURL];
  if ([a3 scheme] > 2)
  {
    return v4;
  }

  return [a3 url];
}

@end