@interface SFClientSubCredentialParams
- (SFClientSubCredentialParams)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFClientSubCredentialParams

- (SFClientSubCredentialParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SFClientSubCredentialParams;
  v5 = [(SFClientSubCredentialParams *)&v12 init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  adamID = self->_adamID;
  v10 = coderCopy;
  if (adamID)
  {
    [coderCopy encodeObject:adamID forKey:@"aID"];
    coderCopy = v10;
  }

  adamIDs = self->_adamIDs;
  if (adamIDs)
  {
    [v10 encodeObject:adamIDs forKey:@"aIDs"];
    coderCopy = v10;
  }

  title = self->_title;
  if (title)
  {
    [v10 encodeObject:title forKey:@"tle"];
    coderCopy = v10;
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v10 encodeObject:subtitle forKey:@"subt"];
    coderCopy = v10;
  }

  issuerID = self->_issuerID;
  if (issuerID)
  {
    [v10 encodeObject:issuerID forKey:@"issID"];
    coderCopy = v10;
  }
}

@end