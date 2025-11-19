@interface PKDataReleaseEntityLookupSource
- (PKDataReleaseEntityLookupSource)initWithEntityIdentifier:(id)a3;
- (id)mapsMerchantLookupRequest;
@end

@implementation PKDataReleaseEntityLookupSource

- (PKDataReleaseEntityLookupSource)initWithEntityIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKDataReleaseEntityLookupSource;
  v6 = [(PKDataReleaseEntityLookupSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entity, a3);
  }

  return v7;
}

- (id)mapsMerchantLookupRequest
{
  v3 = objc_alloc_init(getMKWalletMerchantLookupRequestClass());
  [v3 setTransactionType:6];
  v4 = [MEMORY[0x1E695DF00] date];
  [v3 setTransactionDate:v4];

  [v3 setRelyingPartyIdentifier:self->_entity];

  return v3;
}

@end