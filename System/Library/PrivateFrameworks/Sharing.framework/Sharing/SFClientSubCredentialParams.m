@interface SFClientSubCredentialParams
- (SFClientSubCredentialParams)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFClientSubCredentialParams

- (SFClientSubCredentialParams)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFClientSubCredentialParams;
  v5 = [(SFClientSubCredentialParams *)&v12 init];
  if (v5)
  {
    v6 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  adamID = self->_adamID;
  v10 = v4;
  if (adamID)
  {
    [v4 encodeObject:adamID forKey:@"aID"];
    v4 = v10;
  }

  adamIDs = self->_adamIDs;
  if (adamIDs)
  {
    [v10 encodeObject:adamIDs forKey:@"aIDs"];
    v4 = v10;
  }

  title = self->_title;
  if (title)
  {
    [v10 encodeObject:title forKey:@"tle"];
    v4 = v10;
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v10 encodeObject:subtitle forKey:@"subt"];
    v4 = v10;
  }

  issuerID = self->_issuerID;
  if (issuerID)
  {
    [v10 encodeObject:issuerID forKey:@"issID"];
    v4 = v10;
  }
}

@end