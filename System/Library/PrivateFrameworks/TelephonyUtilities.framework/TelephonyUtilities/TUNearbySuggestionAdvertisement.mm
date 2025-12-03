@interface TUNearbySuggestionAdvertisement
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSuggestionAdvertisement:(id)advertisement;
- (TUNearbySuggestionAdvertisement)initWithCoder:(id)coder;
- (TUNearbySuggestionAdvertisement)initWithSuggestion:(id)suggestion;
- (TUNearbySuggestionAdvertisement)initWithSuggestionIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier type:(int64_t)type;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUNearbySuggestionAdvertisement

- (TUNearbySuggestionAdvertisement)initWithSuggestionIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier type:(int64_t)type
{
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;
  v14.receiver = self;
  v14.super_class = TUNearbySuggestionAdvertisement;
  v11 = [(TUNearbySuggestionAdvertisement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_suggestionIdentifier, identifier);
    objc_storeStrong(&v12->_deviceIdentifier, deviceIdentifier);
    v12->_type = type;
  }

  return v12;
}

- (TUNearbySuggestionAdvertisement)initWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  deviceHandle = [suggestionCopy deviceHandle];
  v6 = [deviceHandle identifierWithType:2];

  identifier = [suggestionCopy identifier];
  type = [suggestionCopy type];

  v9 = [(TUNearbySuggestionAdvertisement *)self initWithSuggestionIdentifier:identifier deviceIdentifier:v6 type:type];
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

- (TUNearbySuggestionAdvertisement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_suggestionIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_deviceIdentifier);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = NSStringFromSelector(sel_type);
  v12 = [coderCopy decodeIntegerForKey:v11];

  v13 = [(TUNearbySuggestionAdvertisement *)self initWithSuggestionIdentifier:v7 deviceIdentifier:v10 type:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  suggestionIdentifier = self->_suggestionIdentifier;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_suggestionIdentifier);
  [coderCopy encodeObject:suggestionIdentifier forKey:v6];

  deviceIdentifier = self->_deviceIdentifier;
  v8 = NSStringFromSelector(sel_deviceIdentifier);
  [coderCopy encodeObject:deviceIdentifier forKey:v8];

  type = self->_type;
  v10 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v10];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUNearbySuggestionAdvertisement *)self isEqualToSuggestionAdvertisement:equalCopy];

  return v5;
}

- (BOOL)isEqualToSuggestionAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  suggestionIdentifier = [(TUNearbySuggestionAdvertisement *)self suggestionIdentifier];
  suggestionIdentifier2 = [advertisementCopy suggestionIdentifier];

  LOBYTE(advertisementCopy) = [suggestionIdentifier isEqual:suggestionIdentifier2];
  return advertisementCopy;
}

- (unint64_t)hash
{
  suggestionIdentifier = [(TUNearbySuggestionAdvertisement *)self suggestionIdentifier];
  v3 = [suggestionIdentifier hash];

  return v3;
}

@end