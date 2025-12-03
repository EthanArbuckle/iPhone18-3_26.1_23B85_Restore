@interface SPAccessoryLayoutTemplate
- (SPAccessoryLayoutTemplate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPAccessoryLayoutTemplate

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setPartIdentifier:{-[SPAccessoryLayoutTemplate partIdentifier](self, "partIdentifier")}];
  partType = [(SPAccessoryLayoutTemplate *)self partType];
  v6 = [partType copy];
  [v4 setPartType:v6];

  partName = [(SPAccessoryLayoutTemplate *)self partName];
  v8 = [partName copy];
  [v4 setPartName:v8];

  partSymbol = [(SPAccessoryLayoutTemplate *)self partSymbol];
  v10 = [partSymbol copy];
  [v4 setPartSymbol:v10];

  [v4 setIsPrimary:{-[SPAccessoryLayoutTemplate isPrimary](self, "isPrimary")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SPAccessoryLayoutTemplate partIdentifier](self forKey:{"partIdentifier"), @"partIdentifier"}];
  partType = [(SPAccessoryLayoutTemplate *)self partType];
  [coderCopy encodeObject:partType forKey:@"partType"];

  partName = [(SPAccessoryLayoutTemplate *)self partName];
  [coderCopy encodeObject:partName forKey:@"partName"];

  partSymbol = [(SPAccessoryLayoutTemplate *)self partSymbol];
  [coderCopy encodeObject:partSymbol forKey:@"partSymbol"];

  [coderCopy encodeBool:-[SPAccessoryLayoutTemplate isPrimary](self forKey:{"isPrimary"), @"isPrimary"}];
}

- (SPAccessoryLayoutTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_partIdentifier = [coderCopy decodeIntegerForKey:@"partIdentifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partType"];
  partType = self->_partType;
  self->_partType = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partName"];
  partName = self->_partName;
  self->_partName = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partSymbol"];
  partSymbol = self->_partSymbol;
  self->_partSymbol = v9;

  v11 = [coderCopy decodeBoolForKey:@"isPrimary"];
  self->_isPrimary = v11;
  return self;
}

@end