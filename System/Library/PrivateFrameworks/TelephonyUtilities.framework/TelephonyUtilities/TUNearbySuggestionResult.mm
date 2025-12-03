@interface TUNearbySuggestionResult
- (TUNearbySuggestionResult)initWithCoder:(id)coder;
- (TUNearbySuggestionResult)initWithSuggestion:(id)suggestion selectedActivity:(id)activity type:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUNearbySuggestionResult

- (TUNearbySuggestionResult)initWithSuggestion:(id)suggestion selectedActivity:(id)activity type:(int64_t)type
{
  suggestionCopy = suggestion;
  activityCopy = activity;
  v14.receiver = self;
  v14.super_class = TUNearbySuggestionResult;
  v11 = [(TUNearbySuggestionResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_suggestion, suggestion);
    objc_storeStrong(&v12->_selectedActivity, activity);
    v12->_type = type;
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

- (TUNearbySuggestionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_suggestion);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_selectedActivity);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = NSStringFromSelector(sel_type);
  v12 = [coderCopy decodeIntegerForKey:v11];

  v13 = [(TUNearbySuggestionResult *)self initWithSuggestion:v7 selectedActivity:v10 type:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  suggestion = self->_suggestion;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_suggestion);
  [coderCopy encodeObject:suggestion forKey:v6];

  selectedActivity = self->_selectedActivity;
  v8 = NSStringFromSelector(sel_selectedActivity);
  [coderCopy encodeObject:selectedActivity forKey:v8];

  type = self->_type;
  v10 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v10];
}

@end