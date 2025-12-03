@interface _PSAutocompleteSuggestion
- (BOOL)isEqual:(id)equal;
- (_PSAutocompleteSuggestion)initWithChatGuid:(id)guid chatHandles:(id)handles displayName:(id)name handle:(id)handle contactIdentifier:(id)identifier resultSourceType:(unint64_t)type autocompleteResult:(id)result recipients:(id)self0;
- (_PSAutocompleteSuggestion)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSAutocompleteSuggestion

- (_PSAutocompleteSuggestion)initWithChatGuid:(id)guid chatHandles:(id)handles displayName:(id)name handle:(id)handle contactIdentifier:(id)identifier resultSourceType:(unint64_t)type autocompleteResult:(id)result recipients:(id)self0
{
  guidCopy = guid;
  handlesCopy = handles;
  nameCopy = name;
  handleCopy = handle;
  identifierCopy = identifier;
  recipientsCopy = recipients;
  v36.receiver = self;
  v36.super_class = _PSAutocompleteSuggestion;
  v22 = [(_PSAutocompleteSuggestion *)&v36 init];
  if (v22)
  {
    v23 = [guidCopy copy];
    chatGuid = v22->_chatGuid;
    v22->_chatGuid = v23;

    v25 = [handlesCopy copy];
    chatHandles = v22->_chatHandles;
    v22->_chatHandles = v25;

    v27 = [nameCopy copy];
    displayName = v22->_displayName;
    v22->_displayName = v27;

    v29 = [handleCopy copy];
    handle = v22->_handle;
    v22->_handle = v29;

    v31 = [identifierCopy copy];
    contactIdentifier = v22->_contactIdentifier;
    v22->_contactIdentifier = v31;

    v22->_resultSourceType = type;
    v33 = [recipientsCopy copy];
    recipients = v22->_recipients;
    v22->_recipients = v33;
  }

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = equalCopy;
  chatGuid = [(_PSAutocompleteSuggestion *)self chatGuid];
  if (!chatGuid)
  {
LABEL_7:
    handle = [v5 handle];
    handle2 = [(_PSAutocompleteSuggestion *)self handle];
    v15 = [handle isEqualToString:handle2];

    if (v15)
    {
      goto LABEL_8;
    }

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v7 = chatGuid;
  chatGuid2 = [v5 chatGuid];
  if (!chatGuid2)
  {

    goto LABEL_7;
  }

  v9 = chatGuid2;
  chatGuid3 = [v5 chatGuid];
  chatGuid4 = [(_PSAutocompleteSuggestion *)self chatGuid];
  v12 = [chatGuid3 isEqualToString:chatGuid4];

  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v16 = 1;
LABEL_10:

  return v16;
}

- (unint64_t)hash
{
  chatGuid = [(_PSAutocompleteSuggestion *)self chatGuid];
  if (chatGuid)
  {
    [(_PSAutocompleteSuggestion *)self chatGuid];
  }

  else
  {
    [(_PSAutocompleteSuggestion *)self handle];
  }
  v4 = ;
  v5 = [v4 hash];

  return v5;
}

- (_PSAutocompleteSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = _PSAutocompleteSuggestion;
  v5 = [(_PSAutocompleteSuggestion *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chatGuid"];
    chatGuid = v5->_chatGuid;
    v5->_chatGuid = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"chatHandles"];
    chatHandles = v5->_chatHandles;
    v5->_chatHandles = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v17;

    v5->_resultSourceType = [coderCopy decodeIntegerForKey:@"resultSourceType"];
    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v22;

    v24 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  handle = self->_handle;
  coderCopy = coder;
  [coderCopy encodeObject:handle forKey:@"handle"];
  [coderCopy encodeObject:self->_chatGuid forKey:@"chatGuid"];
  [coderCopy encodeObject:self->_chatHandles forKey:@"chatHandles"];
  [coderCopy encodeInteger:self->_resultSourceType forKey:@"resultSourceType"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
  [coderCopy encodeObject:self->_recipients forKey:@"recipients"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  chatGuid = [(_PSAutocompleteSuggestion *)self chatGuid];
  chatHandles = [(_PSAutocompleteSuggestion *)self chatHandles];
  handle = [(_PSAutocompleteSuggestion *)self handle];
  displayName = [(_PSAutocompleteSuggestion *)self displayName];
  contactIdentifier = [(_PSAutocompleteSuggestion *)self contactIdentifier];
  v10 = [v3 stringWithFormat:@"<%@ %p> chatGuid: %@, chatHandles: %@, handle: %@, displayName: %@, contactIdentifier: %@", v4, self, chatGuid, chatHandles, handle, displayName, contactIdentifier];

  return v10;
}

@end