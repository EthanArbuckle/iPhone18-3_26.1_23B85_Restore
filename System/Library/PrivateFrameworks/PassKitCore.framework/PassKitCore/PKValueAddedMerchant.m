@interface PKValueAddedMerchant
- (PKValueAddedMerchant)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKValueAddedMerchant

- (PKValueAddedMerchant)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKValueAddedMerchant;
  v5 = [(PKValueAddedMerchant *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedMerchantIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_timesPresented = [v4 decodeIntegerForKey:@"PKValueAddedMerchantTimesPresentedKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"PKValueAddedMerchantIdentifierKey"];
  [v5 encodeInteger:self->_timesPresented forKey:@"PKValueAddedMerchantTimesPresentedKey"];
}

@end