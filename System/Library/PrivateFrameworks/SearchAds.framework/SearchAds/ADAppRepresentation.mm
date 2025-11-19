@interface ADAppRepresentation
- (ADAppRepresentation)initWithAdamID:(id)a3;
- (ADAppRepresentation)initWithAdamID:(id)a3 assetInformation:(id)a4;
@end

@implementation ADAppRepresentation

- (ADAppRepresentation)initWithAdamID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADAppRepresentation;
  v6 = [(ADAppRepresentation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_adamID, a3);
  }

  return v7;
}

- (ADAppRepresentation)initWithAdamID:(id)a3 assetInformation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ADAppRepresentation;
  v9 = [(ADAppRepresentation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_adamID, a3);
    objc_storeStrong(&v10->_assetInformation, a4);
  }

  return v10;
}

@end