@interface TUNearbySuggestion
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSuggestion:(id)suggestion;
- (BOOL)isEquivalentToSuggestion:(id)suggestion;
- (TUNearbySuggestion)initWithCoder:(id)coder;
- (TUNearbySuggestion)initWithIdentifier:(id)identifier deviceHandle:(id)handle activity:(id)activity type:(int64_t)type;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUNearbySuggestion

- (TUNearbySuggestion)initWithIdentifier:(id)identifier deviceHandle:(id)handle activity:(id)activity type:(int64_t)type
{
  identifierCopy = identifier;
  handleCopy = handle;
  activityCopy = activity;
  v17.receiver = self;
  v17.super_class = TUNearbySuggestion;
  v14 = [(TUNearbySuggestion *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    objc_storeStrong(&v15->_deviceHandle, handle);
    objc_storeStrong(&v15->_activity, activity);
    v15->_type = type;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" identifier=%@", self->_identifier];
  [v6 appendFormat:@" deviceHandle=%@", self->_deviceHandle];
  [v6 appendFormat:@" activity=%@", self->_activity];
  type = self->_type;
  v8 = @"pullRequest";
  if (type == 1)
  {
    v8 = @"intelligentRoutingRecommendation";
  }

  if (type == 2)
  {
    v9 = @"systemWake";
  }

  else
  {
    v9 = v8;
  }

  [v6 appendFormat:@" type=%@", v9];
  [v6 appendString:@">"];
  v10 = [v6 copy];

  return v10;
}

- (TUNearbySuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_identifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_deviceHandle);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_activity);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = NSStringFromSelector(sel_type);
  v15 = [coderCopy decodeIntegerForKey:v14];

  v16 = [(TUNearbySuggestion *)self initWithIdentifier:v7 deviceHandle:v10 activity:v13 type:v15];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:identifier forKey:v6];

  deviceHandle = self->_deviceHandle;
  v8 = NSStringFromSelector(sel_deviceHandle);
  [coderCopy encodeObject:deviceHandle forKey:v8];

  activity = self->_activity;
  v10 = NSStringFromSelector(sel_activity);
  [coderCopy encodeObject:activity forKey:v10];

  type = self->_type;
  v12 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v12];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUNearbySuggestion *)self isEqualToSuggestion:equalCopy];

  return v5;
}

- (BOOL)isEqualToSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  identifier = [(TUNearbySuggestion *)self identifier];
  identifier2 = [suggestionCopy identifier];

  LOBYTE(suggestionCopy) = [identifier isEqual:identifier2];
  return suggestionCopy;
}

- (BOOL)isEquivalentToSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  deviceHandle = [(TUNearbySuggestion *)self deviceHandle];
  deviceHandle2 = [suggestionCopy deviceHandle];
  if ([deviceHandle isEquivalentToDeviceHandle:deviceHandle2])
  {
    activity = [(TUNearbySuggestion *)self activity];
    activity2 = [suggestionCopy activity];
    if (TUObjectsAreEqualOrNil(activity, activity2))
    {
      type = [(TUNearbySuggestion *)self type];
      v10 = type == [suggestionCopy type];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  identifier = [(TUNearbySuggestion *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end