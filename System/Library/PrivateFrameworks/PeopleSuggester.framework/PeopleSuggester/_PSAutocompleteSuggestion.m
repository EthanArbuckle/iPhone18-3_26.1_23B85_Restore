@interface _PSAutocompleteSuggestion
- (BOOL)isEqual:(id)a3;
- (_PSAutocompleteSuggestion)initWithChatGuid:(id)a3 chatHandles:(id)a4 displayName:(id)a5 handle:(id)a6 contactIdentifier:(id)a7 resultSourceType:(unint64_t)a8 autocompleteResult:(id)a9 recipients:(id)a10;
- (_PSAutocompleteSuggestion)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSAutocompleteSuggestion

- (_PSAutocompleteSuggestion)initWithChatGuid:(id)a3 chatHandles:(id)a4 displayName:(id)a5 handle:(id)a6 contactIdentifier:(id)a7 resultSourceType:(unint64_t)a8 autocompleteResult:(id)a9 recipients:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v36.receiver = self;
  v36.super_class = _PSAutocompleteSuggestion;
  v22 = [(_PSAutocompleteSuggestion *)&v36 init];
  if (v22)
  {
    v23 = [v16 copy];
    chatGuid = v22->_chatGuid;
    v22->_chatGuid = v23;

    v25 = [v17 copy];
    chatHandles = v22->_chatHandles;
    v22->_chatHandles = v25;

    v27 = [v18 copy];
    displayName = v22->_displayName;
    v22->_displayName = v27;

    v29 = [v19 copy];
    handle = v22->_handle;
    v22->_handle = v29;

    v31 = [v20 copy];
    contactIdentifier = v22->_contactIdentifier;
    v22->_contactIdentifier = v31;

    v22->_resultSourceType = a8;
    v33 = [v21 copy];
    recipients = v22->_recipients;
    v22->_recipients = v33;
  }

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [(_PSAutocompleteSuggestion *)self chatGuid];
  if (!v6)
  {
LABEL_7:
    v13 = [v5 handle];
    v14 = [(_PSAutocompleteSuggestion *)self handle];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      goto LABEL_8;
    }

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v5 chatGuid];
  if (!v8)
  {

    goto LABEL_7;
  }

  v9 = v8;
  v10 = [v5 chatGuid];
  v11 = [(_PSAutocompleteSuggestion *)self chatGuid];
  v12 = [v10 isEqualToString:v11];

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
  v3 = [(_PSAutocompleteSuggestion *)self chatGuid];
  if (v3)
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

- (_PSAutocompleteSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = _PSAutocompleteSuggestion;
  v5 = [(_PSAutocompleteSuggestion *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chatGuid"];
    chatGuid = v5->_chatGuid;
    v5->_chatGuid = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"chatHandles"];
    chatHandles = v5->_chatHandles;
    v5->_chatHandles = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v17;

    v5->_resultSourceType = [v4 decodeIntegerForKey:@"resultSourceType"];
    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v22;

    v24 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  handle = self->_handle;
  v5 = a3;
  [v5 encodeObject:handle forKey:@"handle"];
  [v5 encodeObject:self->_chatGuid forKey:@"chatGuid"];
  [v5 encodeObject:self->_chatHandles forKey:@"chatHandles"];
  [v5 encodeInteger:self->_resultSourceType forKey:@"resultSourceType"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
  [v5 encodeObject:self->_recipients forKey:@"recipients"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_PSAutocompleteSuggestion *)self chatGuid];
  v6 = [(_PSAutocompleteSuggestion *)self chatHandles];
  v7 = [(_PSAutocompleteSuggestion *)self handle];
  v8 = [(_PSAutocompleteSuggestion *)self displayName];
  v9 = [(_PSAutocompleteSuggestion *)self contactIdentifier];
  v10 = [v3 stringWithFormat:@"<%@ %p> chatGuid: %@, chatHandles: %@, handle: %@, displayName: %@, contactIdentifier: %@", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

@end