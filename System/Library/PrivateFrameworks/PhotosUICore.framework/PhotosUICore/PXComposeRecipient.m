@interface PXComposeRecipient
- (BOOL)isEqual:(id)a3;
- (CNContact)contact;
- (NSDictionary)diagnosticDictionary;
- (NSString)description;
- (NSString)localizedName;
- (PXComposeRecipient)initWithPersonSuggestion:(id)a3 contact:(id)a4;
- (PXComposeRecipient)initWithRecipient:(id)a3;
- (unint64_t)hash;
@end

@implementation PXComposeRecipient

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PXComposeRecipient *)self localizedName];
  v6 = [(PXComposeRecipient *)self contact];
  v7 = [v3 stringWithFormat:@"<%@:%p, localizedName:%@, contact:%@>", v4, self, v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(PXComposeRecipient *)self recipient];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hash];
  }

  else
  {
    v6 = [(PXComposeRecipient *)self personSuggestion];
    v5 = [v6 hash];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXComposeRecipient *)self personSuggestion];
    v7 = [v5 personSuggestion];
    v8 = v7;
    if (v6 && v7)
    {
      v9 = [v6 isEqual:v7];
    }

    else
    {
      v10 = [(PXComposeRecipient *)self recipient];
      v11 = [v5 recipient];
      v9 = [v10 isEqual:v11];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(PXComposeRecipient *)self localizedName];
  [v3 setObject:v4 forKeyedSubscript:@"Localized Name"];

  v5 = [(PXComposeRecipient *)self contact];
  [v3 setObject:v5 forKeyedSubscript:@"Contact"];

  v6 = [(PXComposeRecipient *)self personSuggestion];
  v7 = @"YES";
  if (!v6)
  {
    v7 = @"NO";
  }

  v8 = v7;
  [v3 setObject:v8 forKeyedSubscript:@"isSuggestion"];

  return v3;
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

  v4 = [recipient localizedName];

  return v4;
}

- (PXComposeRecipient)initWithPersonSuggestion:(id)a3 contact:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXComposeRecipient.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"personSuggestion"}];
  }

  v16.receiver = self;
  v16.super_class = PXComposeRecipient;
  v10 = [(PXComposeRecipient *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_personSuggestion, a3);
    v12 = PXRecipientWithPersonSuggestion(v11->_personSuggestion, v9);
    recipient = v11->_recipient;
    v11->_recipient = v12;
  }

  return v11;
}

- (PXComposeRecipient)initWithRecipient:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXComposeRecipient.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"recipient"}];
  }

  v11.receiver = self;
  v11.super_class = PXComposeRecipient;
  v7 = [(PXComposeRecipient *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_recipient, a3);
  }

  return v8;
}

@end