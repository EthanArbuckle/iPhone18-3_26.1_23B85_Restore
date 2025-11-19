@interface STExceptionApp
- (STExceptionApp)initWithCoder:(id)a3;
- (STExceptionApp)initWithRequesterDSID:(id)a3 bundleIdentifier:(id)a4 adamID:(unint64_t)a5 distributorID:(id)a6 ratingValue:(unint64_t)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STExceptionApp

- (STExceptionApp)initWithRequesterDSID:(id)a3 bundleIdentifier:(id)a4 adamID:(unint64_t)a5 distributorID:(id)a6 ratingValue:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = STExceptionApp;
  v15 = [(STExceptionApp *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    requesterDSID = v15->_requesterDSID;
    v15->_requesterDSID = v16;

    v18 = [v13 copy];
    bundleIdentifier = v15->_bundleIdentifier;
    v15->_bundleIdentifier = v18;

    v15->_adamID = a5;
    v20 = [v14 copy];
    distributorID = v15->_distributorID;
    v15->_distributorID = v20;

    v15->_ratingValue = a7;
  }

  return v15;
}

- (STExceptionApp)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requesterDSID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distributorID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adamID"];
  v9 = [v8 unsignedLongLongValue];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ratingValue"];

  v11 = -[STExceptionApp initWithRequesterDSID:bundleIdentifier:adamID:distributorID:ratingValue:](self, "initWithRequesterDSID:bundleIdentifier:adamID:distributorID:ratingValue:", v5, v6, v9, v7, [v10 unsignedLongLongValue]);
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  requesterDSID = self->_requesterDSID;
  v5 = a3;
  [v5 encodeObject:requesterDSID forKey:@"requesterDSID"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeObject:self->_distributorID forKey:@"distributorID"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_adamID];
  [v5 encodeObject:v6 forKey:@"adamID"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_ratingValue];
  [v5 encodeObject:v7 forKey:@"ratingValue"];
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