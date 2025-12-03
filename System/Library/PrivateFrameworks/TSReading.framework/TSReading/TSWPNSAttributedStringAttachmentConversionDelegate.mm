@interface TSWPNSAttributedStringAttachmentConversionDelegate
- (TSWPNSAttributedStringAttachmentConversionDelegate)initWithConvertHyperlinks:(BOOL)hyperlinks convertGraphicalAttachments:(BOOL)attachments;
- (id)urlForHyperlinkField:(id)field;
@end

@implementation TSWPNSAttributedStringAttachmentConversionDelegate

- (TSWPNSAttributedStringAttachmentConversionDelegate)initWithConvertHyperlinks:(BOOL)hyperlinks convertGraphicalAttachments:(BOOL)attachments
{
  v7.receiver = self;
  v7.super_class = TSWPNSAttributedStringAttachmentConversionDelegate;
  result = [(TSWPNSAttributedStringAttachmentConversionDelegate *)&v7 init];
  if (result)
  {
    result->mConvertHyperlinks = hyperlinks;
    result->mConvertAttachments = attachments;
  }

  return result;
}

- (id)urlForHyperlinkField:(id)field
{
  if (!self->mConvertHyperlinks)
  {
    return 0;
  }

  canonicalRepresentationURL = [field canonicalRepresentationURL];
  if ([field scheme] > 2)
  {
    return canonicalRepresentationURL;
  }

  return [field url];
}

@end