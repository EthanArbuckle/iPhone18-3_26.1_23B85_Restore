@interface PKAccountEnhancedMerchantDisclosurePresentationInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccountEnhancedMerchantDisclosure:(id)disclosure;
- (NSCopying)identifier;
- (PKAccountEnhancedMerchantDisclosurePresentationInfo)initWithAccountEnhancedMerchant:(id)merchant;
- (unint64_t)hash;
@end

@implementation PKAccountEnhancedMerchantDisclosurePresentationInfo

- (PKAccountEnhancedMerchantDisclosurePresentationInfo)initWithAccountEnhancedMerchant:(id)merchant
{
  merchantCopy = merchant;
  v16.receiver = self;
  v16.super_class = PKAccountEnhancedMerchantDisclosurePresentationInfo;
  v6 = [(PKAccountEnhancedMerchantDisclosurePresentationInfo *)&v16 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_enhancedMerchant, merchant), [merchantCopy name], v8 = objc_claimAutoreleasedReturnValue(), name = v7->_name, v7->_name = v8, name, objc_msgSend(merchantCopy, "disclosures"), v10 = objc_claimAutoreleasedReturnValue(), disclosures = v7->_disclosures, v7->_disclosures = v10, disclosures, (v12 = v7->_name) != 0) && -[NSString length](v12, "length") && (v13 = v7->_disclosures) != 0 && -[NSString length](v13, "length"))
  {
    v14 = v7;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSCopying)identifier
{
  v2 = MEMORY[0x1E696AEC0];
  privateIdentifier = [(PKAccountEnhancedMerchant *)self->_enhancedMerchant privateIdentifier];
  v4 = [v2 stringWithFormat:@"%@_disclosures", privateIdentifier];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountEnhancedMerchantDisclosurePresentationInfo *)self isEqualToAccountEnhancedMerchantDisclosure:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountEnhancedMerchantDisclosure:(id)disclosure
{
  disclosureCopy = disclosure;
  v5 = disclosureCopy;
  if (!disclosureCopy)
  {
    goto LABEL_14;
  }

  v6 = disclosureCopy[1];
  v7 = self->_name;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {
LABEL_13:

      goto LABEL_14;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v11 = v5[2];
  v7 = self->_disclosures;
  v12 = v11;
  v9 = v12;
  if (v7 == v12)
  {

LABEL_17:
    v14 = PKEqualObjects();
    goto LABEL_15;
  }

  if (!v7 || !v12)
  {
    goto LABEL_13;
  }

  v13 = [(NSString *)v7 isEqualToString:v12];

  if (v13)
  {
    goto LABEL_17;
  }

LABEL_14:
  v14 = 0;
LABEL_15:

  return v14;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_name];
  [v3 safelyAddObject:self->_disclosures];
  [v3 safelyAddObject:self->_enhancedMerchant];
  v4 = PKCombinedHash();

  return v4;
}

@end