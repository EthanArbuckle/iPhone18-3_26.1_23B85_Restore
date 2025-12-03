@interface STExceptionApp
- (STExceptionApp)initWithCoder:(id)coder;
- (STExceptionApp)initWithRequesterDSID:(id)d bundleIdentifier:(id)identifier adamID:(unint64_t)iD distributorID:(id)distributorID ratingValue:(unint64_t)value;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STExceptionApp

- (STExceptionApp)initWithRequesterDSID:(id)d bundleIdentifier:(id)identifier adamID:(unint64_t)iD distributorID:(id)distributorID ratingValue:(unint64_t)value
{
  dCopy = d;
  identifierCopy = identifier;
  distributorIDCopy = distributorID;
  v23.receiver = self;
  v23.super_class = STExceptionApp;
  v15 = [(STExceptionApp *)&v23 init];
  if (v15)
  {
    v16 = [dCopy copy];
    requesterDSID = v15->_requesterDSID;
    v15->_requesterDSID = v16;

    v18 = [identifierCopy copy];
    bundleIdentifier = v15->_bundleIdentifier;
    v15->_bundleIdentifier = v18;

    v15->_adamID = iD;
    v20 = [distributorIDCopy copy];
    distributorID = v15->_distributorID;
    v15->_distributorID = v20;

    v15->_ratingValue = value;
  }

  return v15;
}

- (STExceptionApp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requesterDSID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distributorID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adamID"];
  unsignedLongLongValue = [v8 unsignedLongLongValue];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ratingValue"];

  v11 = -[STExceptionApp initWithRequesterDSID:bundleIdentifier:adamID:distributorID:ratingValue:](self, "initWithRequesterDSID:bundleIdentifier:adamID:distributorID:ratingValue:", v5, v6, unsignedLongLongValue, v7, [v10 unsignedLongLongValue]);
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  requesterDSID = self->_requesterDSID;
  coderCopy = coder;
  [coderCopy encodeObject:requesterDSID forKey:@"requesterDSID"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_distributorID forKey:@"distributorID"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_adamID];
  [coderCopy encodeObject:v6 forKey:@"adamID"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_ratingValue];
  [coderCopy encodeObject:v7 forKey:@"ratingValue"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  distributorID = self->_distributorID;
  bundleIdentifier = self->_bundleIdentifier;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_adamID];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_ratingValue];
  v8 = [v3 stringWithFormat:@"STExceptionApp(bundleIdentifier:%@ distributorID:%@, adamID:%@, rating:%@)", bundleIdentifier, distributorID, v6, v7];

  return v8;
}

@end