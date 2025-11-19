@interface TUNearbySuggestionResult
- (TUNearbySuggestionResult)initWithCoder:(id)a3;
- (TUNearbySuggestionResult)initWithSuggestion:(id)a3 selectedActivity:(id)a4 type:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUNearbySuggestionResult

- (TUNearbySuggestionResult)initWithSuggestion:(id)a3 selectedActivity:(id)a4 type:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = TUNearbySuggestionResult;
  v11 = [(TUNearbySuggestionResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_suggestion, a3);
    objc_storeStrong(&v12->_selectedActivity, a4);
    v12->_type = a5;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" suggestion=%@", self->_suggestion];
  [v6 appendFormat:@" selectedActivity=%@", self->_selectedActivity];
  v7 = self->_type - 1;
  if (v7 > 2)
  {
    v8 = @"cancelled";
  }

  else
  {
    v8 = off_1E7425CC8[v7];
  }

  [v6 appendFormat:@" type=%@", v8];
  [v6 appendString:@">"];
  v9 = [v6 copy];

  return v9;
}

- (TUNearbySuggestionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_suggestion);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_selectedActivity);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = NSStringFromSelector(sel_type);
  v12 = [v4 decodeIntegerForKey:v11];

  v13 = [(TUNearbySuggestionResult *)self initWithSuggestion:v7 selectedActivity:v10 type:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  suggestion = self->_suggestion;
  v5 = a3;
  v6 = NSStringFromSelector(sel_suggestion);
  [v5 encodeObject:suggestion forKey:v6];

  selectedActivity = self->_selectedActivity;
  v8 = NSStringFromSelector(sel_selectedActivity);
  [v5 encodeObject:selectedActivity forKey:v8];

  type = self->_type;
  v10 = NSStringFromSelector(sel_type);
  [v5 encodeInteger:type forKey:v10];
}

@end