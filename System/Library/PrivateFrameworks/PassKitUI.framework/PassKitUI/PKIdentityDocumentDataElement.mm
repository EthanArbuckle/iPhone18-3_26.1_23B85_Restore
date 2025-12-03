@interface PKIdentityDocumentDataElement
- (PKIdentityDocumentDataElement)initWithImage:(id)image;
- (PKIdentityDocumentDataElement)initWithLocalizedLabel:(id)label attributedText:(id)text isCopyable:(BOOL)copyable;
- (PKIdentityDocumentDataElement)initWithLocalizedLabel:(id)label text:(id)text isCopyable:(BOOL)copyable;
- (void)setOverrideCopyableText:(id)text;
@end

@implementation PKIdentityDocumentDataElement

- (PKIdentityDocumentDataElement)initWithLocalizedLabel:(id)label text:(id)text isCopyable:(BOOL)copyable
{
  labelCopy = label;
  textCopy = text;
  v14.receiver = self;
  v14.super_class = PKIdentityDocumentDataElement;
  v11 = [(PKIdentityDocumentDataElement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = 0;
    objc_storeStrong(&v11->_localizedLabel, label);
    objc_storeStrong(&v12->_text, text);
    v12->_isCopyable = copyable;
  }

  return v12;
}

- (PKIdentityDocumentDataElement)initWithLocalizedLabel:(id)label attributedText:(id)text isCopyable:(BOOL)copyable
{
  labelCopy = label;
  textCopy = text;
  v14.receiver = self;
  v14.super_class = PKIdentityDocumentDataElement;
  v11 = [(PKIdentityDocumentDataElement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = 0;
    objc_storeStrong(&v11->_localizedLabel, label);
    objc_storeStrong(&v12->_attributedText, text);
    v12->_isCopyable = copyable;
  }

  return v12;
}

- (PKIdentityDocumentDataElement)initWithImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = PKIdentityDocumentDataElement;
  v6 = [(PKIdentityDocumentDataElement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_image, image);
    v7->_isCopyable = 0;
  }

  return v7;
}

- (void)setOverrideCopyableText:(id)text
{
  textCopy = text;
  if ([(PKIdentityDocumentDataElement *)self isCopyable])
  {
    objc_storeStrong(&self->_overrideCopyableText, text);
  }
}

@end