@interface _PSContactSuggestion
- (BOOL)isEqual:(id)equal;
- (_PSContactSuggestion)initWithCoder:(id)coder;
- (_PSContactSuggestion)initWithContact:(id)contact andScore:(double)score;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSContactSuggestion

- (_PSContactSuggestion)initWithContact:(id)contact andScore:(double)score
{
  contactCopy = contact;
  v11.receiver = self;
  v11.super_class = _PSContactSuggestion;
  v8 = [(_PSContactSuggestion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contact, contact);
    v9->_peopleWidgetScore = score;
  }

  return v9;
}

- (_PSContactSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = _PSContactSuggestion;
  v5 = [(_PSContactSuggestion *)&v34 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"givenName"];
    givenName = v5->_givenName;
    v5->_givenName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"familyName"];
    familyName = v5->_familyName;
    v5->_familyName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestedHandle"];
    suggestedHandle = v5->_suggestedHandle;
    v5->_suggestedHandle = v12;

    [coderCopy decodeDoubleForKey:@"regularityScore"];
    v5->_regularityScore = v14;
    v5->_totalFrequency = [coderCopy decodeIntegerForKey:@"totalFrequency"];
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"daysInteracted"];
    daysInteracted = v5->_daysInteracted;
    v5->_daysInteracted = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"handleAndAppFrequencies"];
    handleAndAppFrequencies = v5->_handleAndAppFrequencies;
    v5->_handleAndAppFrequencies = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = [v26 setWithObjects:{v27, v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"handleAndAppRegularityScores"];
    handleAndAppRegularityScores = v5->_handleAndAppRegularityScores;
    v5->_handleAndAppRegularityScores = v30;

    v32 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contactIdentifier = self->_contactIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:contactIdentifier forKey:@"contactIdentifier"];
  [coderCopy encodeObject:self->_givenName forKey:@"givenName"];
  [coderCopy encodeObject:self->_familyName forKey:@"familyName"];
  [coderCopy encodeObject:self->_suggestedHandle forKey:@"suggestedHandle"];
  [coderCopy encodeDouble:@"regularityScore" forKey:self->_regularityScore];
  [coderCopy encodeInteger:self->_totalFrequency forKey:@"totalFrequency"];
  [coderCopy encodeObject:self->_handleAndAppFrequencies forKey:@"handleAndAppFrequencies"];
  [coderCopy encodeObject:self->_handleAndAppRegularityScores forKey:@"handleAndAppRegularityScores"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    contactIdentifier = [(_PSContactSuggestion *)self contactIdentifier];
    if (contactIdentifier && (v8 = contactIdentifier, [(_PSContactSuggestion *)v6 contactIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      contactIdentifier2 = [(_PSContactSuggestion *)self contactIdentifier];
      contactIdentifier3 = [(_PSContactSuggestion *)v6 contactIdentifier];
      v12 = [contactIdentifier2 isEqualToString:contactIdentifier3];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  contactIdentifier = [(_PSContactSuggestion *)self contactIdentifier];
  suggestedHandle = [(_PSContactSuggestion *)self suggestedHandle];
  v7 = [v3 stringWithFormat:@"<%@ %p> contactIdentifier: %@, suggestedHandle: %@", v4, self, contactIdentifier, suggestedHandle];

  return v7;
}

@end