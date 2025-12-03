@interface SFContactInfo
- (SFContactInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFContactInfo

- (SFContactInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SFContactInfo;
  v5 = [(SFContactInfo *)&v11 init];
  if (v5)
  {
    v6 = coderCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contactIdentifier = self->_contactIdentifier;
  v8 = coderCopy;
  if (contactIdentifier)
  {
    [coderCopy encodeObject:contactIdentifier forKey:@"cnID"];
    coderCopy = v8;
  }

  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    [v8 encodeObject:emailAddress forKey:@"email"];
    coderCopy = v8;
  }

  phoneNumber = self->_phoneNumber;
  if (phoneNumber)
  {
    [v8 encodeObject:phoneNumber forKey:@"phone"];
    coderCopy = v8;
  }
}

@end