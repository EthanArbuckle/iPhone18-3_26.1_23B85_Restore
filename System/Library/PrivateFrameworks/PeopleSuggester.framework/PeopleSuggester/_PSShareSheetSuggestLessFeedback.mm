@interface _PSShareSheetSuggestLessFeedback
- (_PSShareSheetSuggestLessFeedback)initWithBundleId:(id)a3 conversationId:(id)a4 derivedIntentId:(id)a5 handle:(id)a6 contactId:(id)a7;
@end

@implementation _PSShareSheetSuggestLessFeedback

- (_PSShareSheetSuggestLessFeedback)initWithBundleId:(id)a3 conversationId:(id)a4 derivedIntentId:(id)a5 handle:(id)a6 contactId:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = _PSShareSheetSuggestLessFeedback;
  v17 = [(_PSShareSheetSuggestLessFeedback *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    bundleId = v17->_bundleId;
    v17->_bundleId = v18;

    v20 = [v13 copy];
    conversationId = v17->_conversationId;
    v17->_conversationId = v20;

    v22 = [v14 copy];
    derivedIntentId = v17->_derivedIntentId;
    v17->_derivedIntentId = v22;

    v24 = [v15 copy];
    handle = v17->_handle;
    v17->_handle = v24;

    v26 = [v16 copy];
    contactId = v17->_contactId;
    v17->_contactId = v26;
  }

  return v17;
}

@end