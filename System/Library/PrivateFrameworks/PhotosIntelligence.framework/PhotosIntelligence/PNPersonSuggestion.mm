@interface PNPersonSuggestion
+ (id)suggestionWithPersonLocalIdentifier:(id)identifier meContactIdentifier:(id)contactIdentifier;
+ (id)suggestionWithPersonLocalIdentifier:(id)identifier personView:(id)view;
- (NSString)autonamingFeedbackStandardNameRepresentation;
- (id)description;
@end

@implementation PNPersonSuggestion

- (id)description
{
  v18 = MEMORY[0x1E696AEC0];
  v19.receiver = self;
  v19.super_class = PNPersonSuggestion;
  v17 = [(PNPersonSuggestion *)&v19 description];
  personLocalIdentifier = [(PNPersonSuggestion *)self personLocalIdentifier];
  nameComponents = [(PNPersonSuggestion *)self nameComponents];
  if (nameComponents)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  v6 = v5;
  nameString = [(PNPersonSuggestion *)self nameString];
  if (nameString)
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v9 = v8;
  contactIdentifier = [(PNPersonSuggestion *)self contactIdentifier];
  if (contactIdentifier)
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v12 = v11;
  if ([(PNPersonSuggestion *)self isMe])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v14 = v13;
  v15 = [v18 stringWithFormat:@"<%@ personLocalIdentifier:%@ nameComponents:%@ nameString:%@ contactIdentifier:%@ isMe:%@ source:%ld attribution:%ld>", v17, personLocalIdentifier, v6, v9, v12, v14, -[PNPersonSuggestion suggestionSource](self, "suggestionSource"), -[PNPersonSuggestion attribution](self, "attribution")];

  return v15;
}

- (NSString)autonamingFeedbackStandardNameRepresentation
{
  nameComponents = [(PNPersonSuggestion *)self nameComponents];
  autonamingFeedbackStandardizedRepresentation = [nameComponents autonamingFeedbackStandardizedRepresentation];
  nameString = [autonamingFeedbackStandardizedRepresentation copy];

  if (!nameString)
  {
    nameString = [(PNPersonSuggestion *)self nameString];
  }

  return nameString;
}

+ (id)suggestionWithPersonLocalIdentifier:(id)identifier personView:(id)view
{
  viewCopy = view;
  identifierCopy = identifier;
  v7 = objc_alloc_init(PNPersonSuggestion);
  [(PNPersonSuggestion *)v7 setPersonLocalIdentifier:identifierCopy];

  suggestedNameComponents = [viewCopy suggestedNameComponents];
  [(PNPersonSuggestion *)v7 setNameComponents:suggestedNameComponents];

  suggestedNameString = [viewCopy suggestedNameString];
  [(PNPersonSuggestion *)v7 setNameString:suggestedNameString];

  contactIdentifier = [viewCopy contactIdentifier];
  [(PNPersonSuggestion *)v7 setContactIdentifier:contactIdentifier];

  [(PNPersonSuggestion *)v7 setSuggestionSource:1];
  autonamingSuggestionReason = [viewCopy autonamingSuggestionReason];

  if ((autonamingSuggestionReason - 2) >= 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = autonamingSuggestionReason - 1;
  }

  [(PNPersonSuggestion *)v7 setAttribution:v12];

  return v7;
}

+ (id)suggestionWithPersonLocalIdentifier:(id)identifier meContactIdentifier:(id)contactIdentifier
{
  contactIdentifierCopy = contactIdentifier;
  identifierCopy = identifier;
  v7 = objc_alloc_init(PNPersonSuggestion);
  [(PNPersonSuggestion *)v7 setPersonLocalIdentifier:identifierCopy];

  [(PNPersonSuggestion *)v7 setContactIdentifier:contactIdentifierCopy];
  [(PNPersonSuggestion *)v7 setIsMe:1];
  [(PNPersonSuggestion *)v7 setSuggestionSource:0];
  [(PNPersonSuggestion *)v7 setAttribution:3];

  return v7;
}

@end