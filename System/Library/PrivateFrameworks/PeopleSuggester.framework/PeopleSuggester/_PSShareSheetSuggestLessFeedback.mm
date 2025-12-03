@interface _PSShareSheetSuggestLessFeedback
- (_PSShareSheetSuggestLessFeedback)initWithBundleId:(id)id conversationId:(id)conversationId derivedIntentId:(id)intentId handle:(id)handle contactId:(id)contactId;
@end

@implementation _PSShareSheetSuggestLessFeedback

- (_PSShareSheetSuggestLessFeedback)initWithBundleId:(id)id conversationId:(id)conversationId derivedIntentId:(id)intentId handle:(id)handle contactId:(id)contactId
{
  idCopy = id;
  conversationIdCopy = conversationId;
  intentIdCopy = intentId;
  handleCopy = handle;
  contactIdCopy = contactId;
  v29.receiver = self;
  v29.super_class = _PSShareSheetSuggestLessFeedback;
  v17 = [(_PSShareSheetSuggestLessFeedback *)&v29 init];
  if (v17)
  {
    v18 = [idCopy copy];
    bundleId = v17->_bundleId;
    v17->_bundleId = v18;

    v20 = [conversationIdCopy copy];
    conversationId = v17->_conversationId;
    v17->_conversationId = v20;

    v22 = [intentIdCopy copy];
    derivedIntentId = v17->_derivedIntentId;
    v17->_derivedIntentId = v22;

    v24 = [handleCopy copy];
    handle = v17->_handle;
    v17->_handle = v24;

    v26 = [contactIdCopy copy];
    contactId = v17->_contactId;
    v17->_contactId = v26;
  }

  return v17;
}

@end