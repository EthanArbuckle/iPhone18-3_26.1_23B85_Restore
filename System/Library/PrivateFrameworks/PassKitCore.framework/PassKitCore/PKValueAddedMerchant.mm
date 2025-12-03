@interface PKValueAddedMerchant
- (PKValueAddedMerchant)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKValueAddedMerchant

- (PKValueAddedMerchant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKValueAddedMerchant;
  v5 = [(PKValueAddedMerchant *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedMerchantIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_timesPresented = [coderCopy decodeIntegerForKey:@"PKValueAddedMerchantTimesPresentedKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"PKValueAddedMerchantIdentifierKey"];
  [coderCopy encodeInteger:self->_timesPresented forKey:@"PKValueAddedMerchantTimesPresentedKey"];
}

@end