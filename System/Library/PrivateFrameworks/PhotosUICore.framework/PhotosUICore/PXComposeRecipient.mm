@interface PXComposeRecipient
- (BOOL)isEqual:(id)equal;
- (CNContact)contact;
- (NSDictionary)diagnosticDictionary;
- (NSString)description;
- (NSString)localizedName;
- (PXComposeRecipient)initWithPersonSuggestion:(id)suggestion contact:(id)contact;
- (PXComposeRecipient)initWithRecipient:(id)recipient;
- (unint64_t)hash;
@end

@implementation PXComposeRecipient

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  localizedName = [(PXComposeRecipient *)self localizedName];
  contact = [(PXComposeRecipient *)self contact];
  v7 = [v3 stringWithFormat:@"<%@:%p, localizedName:%@, contact:%@>", v4, self, localizedName, contact];

  return v7;
}

- (unint64_t)hash
{
  recipient = [(PXComposeRecipient *)self recipient];
  v4 = recipient;
  if (recipient)
  {
    v5 = [recipient hash];
  }

  else
  {
    personSuggestion = [(PXComposeRecipient *)self personSuggestion];
    v5 = [personSuggestion hash];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    personSuggestion = [(PXComposeRecipient *)self personSuggestion];
    personSuggestion2 = [v5 personSuggestion];
    v8 = personSuggestion2;
    if (personSuggestion && personSuggestion2)
    {
      v9 = [personSuggestion isEqual:personSuggestion2];
    }

    else
    {
      recipient = [(PXComposeRecipient *)self recipient];
      recipient2 = [v5 recipient];
      v9 = [recipient isEqual:recipient2];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSDictionary)diagnosticDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  localizedName = [(PXComposeRecipient *)self localizedName];
  [dictionary setObject:localizedName forKeyedSubscript:@"Localized Name"];

  contact = [(PXComposeRecipient *)self contact];
  [dictionary setObject:contact forKeyedSubscript:@"Contact"];

  personSuggestion = [(PXComposeRecipient *)self personSuggestion];
  v7 = @"YES";
  if (!personSuggestion)
  {
    v7 = @"NO";
  }

  v8 = v7;
  [dictionary setObject:v8 forKeyedSubscript:@"isSuggestion"];

  return dictionary;
}

- (CNContact)contact
{
  recipient = self->_recipient;
  if (recipient)
  {
    recipient = [recipient contact];
    v2 = vars8;
  }

  return recipient;
}

- (NSString)localizedName
{
  recipient = self->_recipient;
  if (!recipient)
  {
    recipient = self->_personSuggestion;
  }

  localizedName = [recipient localizedName];

  return localizedName;
}

- (PXComposeRecipient)initWithPersonSuggestion:(id)suggestion contact:(id)contact
{
  suggestionCopy = suggestion;
  contactCopy = contact;
  if (!suggestionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipient.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"personSuggestion"}];
  }

  v16.receiver = self;
  v16.super_class = PXComposeRecipient;
  v10 = [(PXComposeRecipient *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_personSuggestion, suggestion);
    v12 = PXRecipientWithPersonSuggestion(v11->_personSuggestion, contactCopy);
    recipient = v11->_recipient;
    v11->_recipient = v12;
  }

  return v11;
}

- (PXComposeRecipient)initWithRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (!recipientCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipient.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"recipient"}];
  }

  v11.receiver = self;
  v11.super_class = PXComposeRecipient;
  v7 = [(PXComposeRecipient *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_recipient, recipient);
  }

  return v8;
}

@end