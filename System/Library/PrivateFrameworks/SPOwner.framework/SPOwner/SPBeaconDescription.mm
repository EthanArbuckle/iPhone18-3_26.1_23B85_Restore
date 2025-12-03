@interface SPBeaconDescription
- (SPBeaconDescription)initWithCoder:(id)coder;
- (SPBeaconDescription)initWithStableIdentifier:(id)identifier name:(id)name model:(id)model systemVersion:(id)version vendorId:(int64_t)id productId:(int64_t)productId role:(int64_t)role;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconDescription

- (SPBeaconDescription)initWithStableIdentifier:(id)identifier name:(id)name model:(id)model systemVersion:(id)version vendorId:(int64_t)id productId:(int64_t)productId role:(int64_t)role
{
  identifierCopy = identifier;
  nameCopy = name;
  modelCopy = model;
  versionCopy = version;
  v22.receiver = self;
  v22.super_class = SPBeaconDescription;
  v19 = [(SPBeaconDescription *)&v22 init];
  if (v19)
  {
    if ([identifierCopy length])
    {
      objc_storeStrong(&v19->_stableIdentifier, identifier);
      objc_storeStrong(&v19->_name, name);
      objc_storeStrong(&v19->_model, model);
      objc_storeStrong(&v19->_systemVersion, version);
      v19->_vendorId = id;
      v19->_productId = productId;
      v19->_role = role;
    }

    else
    {

      v19 = 0;
    }
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPBeaconDescription alloc];
  stableIdentifier = [(SPBeaconDescription *)self stableIdentifier];
  name = [(SPBeaconDescription *)self name];
  model = [(SPBeaconDescription *)self model];
  systemVersion = [(SPBeaconDescription *)self systemVersion];
  v9 = [(SPBeaconDescription *)v4 initWithStableIdentifier:stableIdentifier name:name model:model systemVersion:systemVersion vendorId:[(SPBeaconDescription *)self vendorId] productId:[(SPBeaconDescription *)self productId] role:[(SPBeaconDescription *)self role]];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  stableIdentifier = self->_stableIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:stableIdentifier forKey:@"stableIdentifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_model forKey:@"model"];
  [coderCopy encodeObject:self->_systemVersion forKey:@"systemVersion"];
  [coderCopy encodeInteger:self->_vendorId forKey:@"vendorId"];
  [coderCopy encodeInteger:self->_productId forKey:@"productId"];
  [coderCopy encodeInteger:self->_role forKey:@"role"];
}

- (SPBeaconDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stableIdentifier"];
  stableIdentifier = self->_stableIdentifier;
  self->_stableIdentifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
  model = self->_model;
  self->_model = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemVersion"];
  systemVersion = self->_systemVersion;
  self->_systemVersion = v11;

  self->_vendorId = [coderCopy decodeIntegerForKey:@"vendorId"];
  self->_productId = [coderCopy decodeIntegerForKey:@"productId"];
  v13 = [coderCopy decodeIntegerForKey:@"role"];

  self->_role = v13;
  return self;
}

@end