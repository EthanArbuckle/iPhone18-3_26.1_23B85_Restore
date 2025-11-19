@interface SPAccessoryLayoutTemplate
- (SPAccessoryLayoutTemplate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPAccessoryLayoutTemplate

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setPartIdentifier:{-[SPAccessoryLayoutTemplate partIdentifier](self, "partIdentifier")}];
  v5 = [(SPAccessoryLayoutTemplate *)self partType];
  v6 = [v5 copy];
  [v4 setPartType:v6];

  v7 = [(SPAccessoryLayoutTemplate *)self partName];
  v8 = [v7 copy];
  [v4 setPartName:v8];

  v9 = [(SPAccessoryLayoutTemplate *)self partSymbol];
  v10 = [v9 copy];
  [v4 setPartSymbol:v10];

  [v4 setIsPrimary:{-[SPAccessoryLayoutTemplate isPrimary](self, "isPrimary")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInteger:-[SPAccessoryLayoutTemplate partIdentifier](self forKey:{"partIdentifier"), @"partIdentifier"}];
  v4 = [(SPAccessoryLayoutTemplate *)self partType];
  [v7 encodeObject:v4 forKey:@"partType"];

  v5 = [(SPAccessoryLayoutTemplate *)self partName];
  [v7 encodeObject:v5 forKey:@"partName"];

  v6 = [(SPAccessoryLayoutTemplate *)self partSymbol];
  [v7 encodeObject:v6 forKey:@"partSymbol"];

  [v7 encodeBool:-[SPAccessoryLayoutTemplate isPrimary](self forKey:{"isPrimary"), @"isPrimary"}];
}

- (SPAccessoryLayoutTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  self->_partIdentifier = [v4 decodeIntegerForKey:@"partIdentifier"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partType"];
  partType = self->_partType;
  self->_partType = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partName"];
  partName = self->_partName;
  self->_partName = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partSymbol"];
  partSymbol = self->_partSymbol;
  self->_partSymbol = v9;

  v11 = [v4 decodeBoolForKey:@"isPrimary"];
  self->_isPrimary = v11;
  return self;
}

@end