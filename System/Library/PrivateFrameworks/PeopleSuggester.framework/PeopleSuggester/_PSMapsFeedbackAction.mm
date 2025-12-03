@interface _PSMapsFeedbackAction
+ (id)engagementWithNonSuggestionWithContactIdentifier:(id)identifier handle:(id)handle;
+ (id)engagementWithSuggestionWithContactIdentifier:(id)identifier handle:(id)handle;
- (_PSMapsFeedbackAction)initWithContactIdentifier:(id)identifier handle:(id)handle type:(int64_t)type;
@end

@implementation _PSMapsFeedbackAction

+ (id)engagementWithSuggestionWithContactIdentifier:(id)identifier handle:(id)handle
{
  handleCopy = handle;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithContactIdentifier:identifierCopy handle:handleCopy type:0];

  return v8;
}

+ (id)engagementWithNonSuggestionWithContactIdentifier:(id)identifier handle:(id)handle
{
  handleCopy = handle;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithContactIdentifier:identifierCopy handle:handleCopy type:1];

  return v8;
}

- (_PSMapsFeedbackAction)initWithContactIdentifier:(id)identifier handle:(id)handle type:(int64_t)type
{
  identifierCopy = identifier;
  handleCopy = handle;
  v14.receiver = self;
  v14.super_class = _PSMapsFeedbackAction;
  v11 = [(_PSFeedbackAction *)&v14 initWithType:type suggestion:0 transportBundleID:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contactId, identifier);
    objc_storeStrong(&v12->_handle, handle);
  }

  return v12;
}

@end