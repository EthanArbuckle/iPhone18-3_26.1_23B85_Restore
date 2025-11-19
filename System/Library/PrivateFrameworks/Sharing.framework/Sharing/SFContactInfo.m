@interface SFContactInfo
- (SFContactInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFContactInfo

- (SFContactInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SFContactInfo;
  v5 = [(SFContactInfo *)&v11 init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  contactIdentifier = self->_contactIdentifier;
  v8 = v4;
  if (contactIdentifier)
  {
    [v4 encodeObject:contactIdentifier forKey:@"cnID"];
    v4 = v8;
  }

  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    [v8 encodeObject:emailAddress forKey:@"email"];
    v4 = v8;
  }

  phoneNumber = self->_phoneNumber;
  if (phoneNumber)
  {
    [v8 encodeObject:phoneNumber forKey:@"phone"];
    v4 = v8;
  }
}

@end