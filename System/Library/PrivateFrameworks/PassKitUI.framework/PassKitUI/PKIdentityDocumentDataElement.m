@interface PKIdentityDocumentDataElement
- (PKIdentityDocumentDataElement)initWithImage:(id)a3;
- (PKIdentityDocumentDataElement)initWithLocalizedLabel:(id)a3 attributedText:(id)a4 isCopyable:(BOOL)a5;
- (PKIdentityDocumentDataElement)initWithLocalizedLabel:(id)a3 text:(id)a4 isCopyable:(BOOL)a5;
- (void)setOverrideCopyableText:(id)a3;
@end

@implementation PKIdentityDocumentDataElement

- (PKIdentityDocumentDataElement)initWithLocalizedLabel:(id)a3 text:(id)a4 isCopyable:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PKIdentityDocumentDataElement;
  v11 = [(PKIdentityDocumentDataElement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = 0;
    objc_storeStrong(&v11->_localizedLabel, a3);
    objc_storeStrong(&v12->_text, a4);
    v12->_isCopyable = a5;
  }

  return v12;
}

- (PKIdentityDocumentDataElement)initWithLocalizedLabel:(id)a3 attributedText:(id)a4 isCopyable:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PKIdentityDocumentDataElement;
  v11 = [(PKIdentityDocumentDataElement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = 0;
    objc_storeStrong(&v11->_localizedLabel, a3);
    objc_storeStrong(&v12->_attributedText, a4);
    v12->_isCopyable = a5;
  }

  return v12;
}

- (PKIdentityDocumentDataElement)initWithImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKIdentityDocumentDataElement;
  v6 = [(PKIdentityDocumentDataElement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_image, a3);
    v7->_isCopyable = 0;
  }

  return v7;
}

- (void)setOverrideCopyableText:(id)a3
{
  v5 = a3;
  if ([(PKIdentityDocumentDataElement *)self isCopyable])
  {
    objc_storeStrong(&self->_overrideCopyableText, a3);
  }
}

@end