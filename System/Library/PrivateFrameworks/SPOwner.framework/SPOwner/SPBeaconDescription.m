@interface SPBeaconDescription
- (SPBeaconDescription)initWithCoder:(id)a3;
- (SPBeaconDescription)initWithStableIdentifier:(id)a3 name:(id)a4 model:(id)a5 systemVersion:(id)a6 vendorId:(int64_t)a7 productId:(int64_t)a8 role:(int64_t)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconDescription

- (SPBeaconDescription)initWithStableIdentifier:(id)a3 name:(id)a4 model:(id)a5 systemVersion:(id)a6 vendorId:(int64_t)a7 productId:(int64_t)a8 role:(int64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v22.receiver = self;
  v22.super_class = SPBeaconDescription;
  v19 = [(SPBeaconDescription *)&v22 init];
  if (v19)
  {
    if ([v15 length])
    {
      objc_storeStrong(&v19->_stableIdentifier, a3);
      objc_storeStrong(&v19->_name, a4);
      objc_storeStrong(&v19->_model, a5);
      objc_storeStrong(&v19->_systemVersion, a6);
      v19->_vendorId = a7;
      v19->_productId = a8;
      v19->_role = a9;
    }

    else
    {

      v19 = 0;
    }
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPBeaconDescription alloc];
  v5 = [(SPBeaconDescription *)self stableIdentifier];
  v6 = [(SPBeaconDescription *)self name];
  v7 = [(SPBeaconDescription *)self model];
  v8 = [(SPBeaconDescription *)self systemVersion];
  v9 = [(SPBeaconDescription *)v4 initWithStableIdentifier:v5 name:v6 model:v7 systemVersion:v8 vendorId:[(SPBeaconDescription *)self vendorId] productId:[(SPBeaconDescription *)self productId] role:[(SPBeaconDescription *)self role]];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  stableIdentifier = self->_stableIdentifier;
  v5 = a3;
  [v5 encodeObject:stableIdentifier forKey:@"stableIdentifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_model forKey:@"model"];
  [v5 encodeObject:self->_systemVersion forKey:@"systemVersion"];
  [v5 encodeInteger:self->_vendorId forKey:@"vendorId"];
  [v5 encodeInteger:self->_productId forKey:@"productId"];
  [v5 encodeInteger:self->_role forKey:@"role"];
}

- (SPBeaconDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stableIdentifier"];
  stableIdentifier = self->_stableIdentifier;
  self->_stableIdentifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
  model = self->_model;
  self->_model = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemVersion"];
  systemVersion = self->_systemVersion;
  self->_systemVersion = v11;

  self->_vendorId = [v4 decodeIntegerForKey:@"vendorId"];
  self->_productId = [v4 decodeIntegerForKey:@"productId"];
  v13 = [v4 decodeIntegerForKey:@"role"];

  self->_role = v13;
  return self;
}

@end