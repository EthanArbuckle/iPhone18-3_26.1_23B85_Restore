@interface _PSFeedbackAction
+ (id)abandonment;
+ (id)engagementWithAppSuggestion:(id)a3 transportBundleID:(id)a4;
+ (id)engagementWithNonSuggestionWithEngagementIdentifier:(id)a3;
+ (id)engagementWithSharingSuggestion:(id)a3 transportBundleID:(id)a4;
- (_PSFeedbackAction)initWithType:(int64_t)a3 suggestion:(id)a4 transportBundleID:(id)a5;
@end

@implementation _PSFeedbackAction

+ (id)engagementWithNonSuggestionWithEngagementIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:1 suggestion:0 transportBundleID:v4];

  return v5;
}

+ (id)engagementWithSharingSuggestion:(id)a3 transportBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 initWithType:0 suggestion:v6 transportBundleID:v7];
  }

  else
  {
    v11 = [v6 bundleID];
    v10 = [v9 initWithType:0 suggestion:v6 transportBundleID:v11];
  }

  return v10;
}

+ (id)engagementWithAppSuggestion:(id)a3 transportBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 initWithType:4 suggestion:v6 transportBundleID:v7];
  }

  else
  {
    v11 = [v6 bundleID];
    v10 = [v9 initWithType:4 suggestion:v6 transportBundleID:v11];
  }

  return v10;
}

+ (id)abandonment
{
  v2 = [[a1 alloc] initWithType:2 suggestion:0 transportBundleID:0];

  return v2;
}

- (_PSFeedbackAction)initWithType:(int64_t)a3 suggestion:(id)a4 transportBundleID:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _PSFeedbackAction;
  v11 = [(_PSFeedbackAction *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_suggestion, a4);
    v13 = [v10 copy];
    transportBundleID = v12->_transportBundleID;
    v12->_transportBundleID = v13;
  }

  return v12;
}

@end