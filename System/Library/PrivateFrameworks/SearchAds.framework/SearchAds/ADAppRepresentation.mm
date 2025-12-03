@interface ADAppRepresentation
- (ADAppRepresentation)initWithAdamID:(id)d;
- (ADAppRepresentation)initWithAdamID:(id)d assetInformation:(id)information;
@end

@implementation ADAppRepresentation

- (ADAppRepresentation)initWithAdamID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ADAppRepresentation;
  v6 = [(ADAppRepresentation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_adamID, d);
  }

  return v7;
}

- (ADAppRepresentation)initWithAdamID:(id)d assetInformation:(id)information
{
  dCopy = d;
  informationCopy = information;
  v12.receiver = self;
  v12.super_class = ADAppRepresentation;
  v9 = [(ADAppRepresentation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_adamID, d);
    objc_storeStrong(&v10->_assetInformation, information);
  }

  return v10;
}

@end