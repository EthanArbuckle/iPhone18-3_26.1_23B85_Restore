@interface _PSMapsFeedbackAction
+ (id)engagementWithNonSuggestionWithContactIdentifier:(id)a3 handle:(id)a4;
+ (id)engagementWithSuggestionWithContactIdentifier:(id)a3 handle:(id)a4;
- (_PSMapsFeedbackAction)initWithContactIdentifier:(id)a3 handle:(id)a4 type:(int64_t)a5;
@end

@implementation _PSMapsFeedbackAction

+ (id)engagementWithSuggestionWithContactIdentifier:(id)a3 handle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithContactIdentifier:v7 handle:v6 type:0];

  return v8;
}

+ (id)engagementWithNonSuggestionWithContactIdentifier:(id)a3 handle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithContactIdentifier:v7 handle:v6 type:1];

  return v8;
}

- (_PSMapsFeedbackAction)initWithContactIdentifier:(id)a3 handle:(id)a4 type:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _PSMapsFeedbackAction;
  v11 = [(_PSFeedbackAction *)&v14 initWithType:a5 suggestion:0 transportBundleID:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contactId, a3);
    objc_storeStrong(&v12->_handle, a4);
  }

  return v12;
}

@end