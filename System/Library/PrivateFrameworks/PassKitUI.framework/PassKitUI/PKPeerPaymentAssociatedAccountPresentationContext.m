@interface PKPeerPaymentAssociatedAccountPresentationContext
- (PKPeerPaymentAssociatedAccountPresentationContext)initWithFAFamilyMember:(id)a3 options:(id)a4;
- (PKPeerPaymentAssociatedAccountPresentationContext)initWithPKFamilyMember:(id)a3 options:(id)a4;
- (PKPeerPaymentAssociatedAccountPresentationContext)initWithPKFamilyMember:(id)a3 setupType:(int64_t)a4;
- (PKPeerPaymentAssociatedAccountPresentationContext)initWithPKFamilyMember:(id)a3 transaction:(id)a4;
- (id)description;
@end

@implementation PKPeerPaymentAssociatedAccountPresentationContext

- (PKPeerPaymentAssociatedAccountPresentationContext)initWithFAFamilyMember:(id)a3 options:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = MEMORY[0x1E69B8898];
    v8 = a3;
    a3 = [[v7 alloc] initWithFAFamilyMember:v8];
  }

  v9 = [(PKPeerPaymentAssociatedAccountPresentationContext *)self initWithPKFamilyMember:a3 options:v6];

  return v9;
}

- (PKPeerPaymentAssociatedAccountPresentationContext)initWithPKFamilyMember:(id)a3 options:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PKPeerPaymentAssociatedAccountPresentationContext;
  v9 = [(PKPeerPaymentAssociatedAccountPresentationContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_member, a3);
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Creating PKPeerPaymentAssociatedAccountPresentationContext with options %@", buf, 0xCu);
    }
  }

  return v10;
}

- (PKPeerPaymentAssociatedAccountPresentationContext)initWithPKFamilyMember:(id)a3 transaction:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(PKPeerPaymentAssociatedAccountPresentationContext *)self initWithPKFamilyMember:a3 options:0];
  if (v8)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Creating PKPeerPaymentAssociatedAccountPresentationContext with transaction %@", &v11, 0xCu);
    }

    objc_storeStrong(&v8->_transaction, a4);
  }

  return v8;
}

- (PKPeerPaymentAssociatedAccountPresentationContext)initWithPKFamilyMember:(id)a3 setupType:(int64_t)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [(PKPeerPaymentAssociatedAccountPresentationContext *)self initWithPKFamilyMember:a3 options:0];
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PKPeerPaymentAssociatedAccountSetupTypeToString();
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Creating PKPeerPaymentAssociatedAccountPresentationContext with setupType %@", &v9, 0xCu);
    }

    v5->_setupType = a4;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"familyMember: '%@'; ", self->_member];
  if (self->_transaction)
  {
    [v3 appendFormat:@"transaction: '%@'; ", self->_transaction];
  }

  v4 = PKPeerPaymentAssociatedAccountSetupTypeToString();
  [v3 appendFormat:@"setupType: '%@'; ", v4];

  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

@end