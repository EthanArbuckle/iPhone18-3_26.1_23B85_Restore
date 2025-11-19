@interface PNPersonSuggestion
+ (id)suggestionWithPersonLocalIdentifier:(id)a3 meContactIdentifier:(id)a4;
+ (id)suggestionWithPersonLocalIdentifier:(id)a3 personView:(id)a4;
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
  v3 = [(PNPersonSuggestion *)self personLocalIdentifier];
  v4 = [(PNPersonSuggestion *)self nameComponents];
  if (v4)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  v6 = v5;
  v7 = [(PNPersonSuggestion *)self nameString];
  if (v7)
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v9 = v8;
  v10 = [(PNPersonSuggestion *)self contactIdentifier];
  if (v10)
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
  v15 = [v18 stringWithFormat:@"<%@ personLocalIdentifier:%@ nameComponents:%@ nameString:%@ contactIdentifier:%@ isMe:%@ source:%ld attribution:%ld>", v17, v3, v6, v9, v12, v14, -[PNPersonSuggestion suggestionSource](self, "suggestionSource"), -[PNPersonSuggestion attribution](self, "attribution")];

  return v15;
}

- (NSString)autonamingFeedbackStandardNameRepresentation
{
  v3 = [(PNPersonSuggestion *)self nameComponents];
  v4 = [v3 autonamingFeedbackStandardizedRepresentation];
  v5 = [v4 copy];

  if (!v5)
  {
    v5 = [(PNPersonSuggestion *)self nameString];
  }

  return v5;
}

+ (id)suggestionWithPersonLocalIdentifier:(id)a3 personView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PNPersonSuggestion);
  [(PNPersonSuggestion *)v7 setPersonLocalIdentifier:v6];

  v8 = [v5 suggestedNameComponents];
  [(PNPersonSuggestion *)v7 setNameComponents:v8];

  v9 = [v5 suggestedNameString];
  [(PNPersonSuggestion *)v7 setNameString:v9];

  v10 = [v5 contactIdentifier];
  [(PNPersonSuggestion *)v7 setContactIdentifier:v10];

  [(PNPersonSuggestion *)v7 setSuggestionSource:1];
  v11 = [v5 autonamingSuggestionReason];

  if ((v11 - 2) >= 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11 - 1;
  }

  [(PNPersonSuggestion *)v7 setAttribution:v12];

  return v7;
}

+ (id)suggestionWithPersonLocalIdentifier:(id)a3 meContactIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PNPersonSuggestion);
  [(PNPersonSuggestion *)v7 setPersonLocalIdentifier:v6];

  [(PNPersonSuggestion *)v7 setContactIdentifier:v5];
  [(PNPersonSuggestion *)v7 setIsMe:1];
  [(PNPersonSuggestion *)v7 setSuggestionSource:0];
  [(PNPersonSuggestion *)v7 setAttribution:3];

  return v7;
}

@end