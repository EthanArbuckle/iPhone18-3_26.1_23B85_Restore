@interface TUNearbySuggestionAdvertisement
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSuggestionAdvertisement:(id)a3;
- (TUNearbySuggestionAdvertisement)initWithCoder:(id)a3;
- (TUNearbySuggestionAdvertisement)initWithSuggestion:(id)a3;
- (TUNearbySuggestionAdvertisement)initWithSuggestionIdentifier:(id)a3 deviceIdentifier:(id)a4 type:(int64_t)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUNearbySuggestionAdvertisement

- (TUNearbySuggestionAdvertisement)initWithSuggestionIdentifier:(id)a3 deviceIdentifier:(id)a4 type:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = TUNearbySuggestionAdvertisement;
  v11 = [(TUNearbySuggestionAdvertisement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_suggestionIdentifier, a3);
    objc_storeStrong(&v12->_deviceIdentifier, a4);
    v12->_type = a5;
  }

  return v12;
}

- (TUNearbySuggestionAdvertisement)initWithSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceHandle];
  v6 = [v5 identifierWithType:2];

  v7 = [v4 identifier];
  v8 = [v4 type];

  v9 = [(TUNearbySuggestionAdvertisement *)self initWithSuggestionIdentifier:v7 deviceIdentifier:v6 type:v8];
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" suggestionIdentifier=%@", self->_suggestionIdentifier];
  [v6 appendFormat:@" deviceIdentifier=%@", self->_deviceIdentifier];
  [v6 appendFormat:@" type=%zu", self->_type];
  [v6 appendString:@">"];
  v7 = [v6 copy];

  return v7;
}

- (TUNearbySuggestionAdvertisement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_suggestionIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_deviceIdentifier);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = NSStringFromSelector(sel_type);
  v12 = [v4 decodeIntegerForKey:v11];

  v13 = [(TUNearbySuggestionAdvertisement *)self initWithSuggestionIdentifier:v7 deviceIdentifier:v10 type:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  suggestionIdentifier = self->_suggestionIdentifier;
  v5 = a3;
  v6 = NSStringFromSelector(sel_suggestionIdentifier);
  [v5 encodeObject:suggestionIdentifier forKey:v6];

  deviceIdentifier = self->_deviceIdentifier;
  v8 = NSStringFromSelector(sel_deviceIdentifier);
  [v5 encodeObject:deviceIdentifier forKey:v8];

  type = self->_type;
  v10 = NSStringFromSelector(sel_type);
  [v5 encodeInteger:type forKey:v10];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUNearbySuggestionAdvertisement *)self isEqualToSuggestionAdvertisement:v4];

  return v5;
}

- (BOOL)isEqualToSuggestionAdvertisement:(id)a3
{
  v4 = a3;
  v5 = [(TUNearbySuggestionAdvertisement *)self suggestionIdentifier];
  v6 = [v4 suggestionIdentifier];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(TUNearbySuggestionAdvertisement *)self suggestionIdentifier];
  v3 = [v2 hash];

  return v3;
}

@end