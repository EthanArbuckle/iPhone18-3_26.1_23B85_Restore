@interface _PSFeedbackAction
+ (id)abandonment;
+ (id)engagementWithAppSuggestion:(id)suggestion transportBundleID:(id)d;
+ (id)engagementWithNonSuggestionWithEngagementIdentifier:(id)identifier;
+ (id)engagementWithSharingSuggestion:(id)suggestion transportBundleID:(id)d;
- (_PSFeedbackAction)initWithType:(int64_t)type suggestion:(id)suggestion transportBundleID:(id)d;
@end

@implementation _PSFeedbackAction

+ (id)engagementWithNonSuggestionWithEngagementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithType:1 suggestion:0 transportBundleID:identifierCopy];

  return v5;
}

+ (id)engagementWithSharingSuggestion:(id)suggestion transportBundleID:(id)d
{
  suggestionCopy = suggestion;
  dCopy = d;
  v8 = [self alloc];
  v9 = v8;
  if (dCopy)
  {
    v10 = [v8 initWithType:0 suggestion:suggestionCopy transportBundleID:dCopy];
  }

  else
  {
    bundleID = [suggestionCopy bundleID];
    v10 = [v9 initWithType:0 suggestion:suggestionCopy transportBundleID:bundleID];
  }

  return v10;
}

+ (id)engagementWithAppSuggestion:(id)suggestion transportBundleID:(id)d
{
  suggestionCopy = suggestion;
  dCopy = d;
  v8 = [self alloc];
  v9 = v8;
  if (dCopy)
  {
    v10 = [v8 initWithType:4 suggestion:suggestionCopy transportBundleID:dCopy];
  }

  else
  {
    bundleID = [suggestionCopy bundleID];
    v10 = [v9 initWithType:4 suggestion:suggestionCopy transportBundleID:bundleID];
  }

  return v10;
}

+ (id)abandonment
{
  v2 = [[self alloc] initWithType:2 suggestion:0 transportBundleID:0];

  return v2;
}

- (_PSFeedbackAction)initWithType:(int64_t)type suggestion:(id)suggestion transportBundleID:(id)d
{
  suggestionCopy = suggestion;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = _PSFeedbackAction;
  v11 = [(_PSFeedbackAction *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_suggestion, suggestion);
    v13 = [dCopy copy];
    transportBundleID = v12->_transportBundleID;
    v12->_transportBundleID = v13;
  }

  return v12;
}

@end