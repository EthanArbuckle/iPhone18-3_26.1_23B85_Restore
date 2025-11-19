@interface PKUnifiedAccessHomeAuxiliaryCapabilityDescriptor
- (PKUnifiedAccessHomeAuxiliaryCapabilityDescriptor)initWithCoder:(id)a3;
- (PKUnifiedAccessHomeAuxiliaryCapabilityDescriptor)initWithReaderGroupIdentifier:(id)a3 readerGroupPublicKey:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKUnifiedAccessHomeAuxiliaryCapabilityDescriptor

- (PKUnifiedAccessHomeAuxiliaryCapabilityDescriptor)initWithReaderGroupIdentifier:(id)a3 readerGroupPublicKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKUnifiedAccessHomeAuxiliaryCapabilityDescriptor;
  v9 = [(PKUnifiedAccessHomeAuxiliaryCapabilityDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_readerGroupIdentifier, a3);
    objc_storeStrong(&v10->_readerGroupPublicKey, a4);
  }

  return v10;
}

- (PKUnifiedAccessHomeAuxiliaryCapabilityDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKUnifiedAccessHomeAuxiliaryCapabilityDescriptor;
  v5 = [(PKUnifiedAccessHomeAuxiliaryCapabilityDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerGroupIdentifier"];
    readerGroupIdentifier = v5->_readerGroupIdentifier;
    v5->_readerGroupIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerGroupPublicKey"];
    readerGroupPublicKey = v5->_readerGroupPublicKey;
    v5->_readerGroupPublicKey = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  readerGroupIdentifier = self->_readerGroupIdentifier;
  v5 = a3;
  [v5 encodeObject:readerGroupIdentifier forKey:@"readerGroupIdentifier"];
  [v5 encodeObject:self->_readerGroupPublicKey forKey:@"readerGroupPublicKey"];
}

@end