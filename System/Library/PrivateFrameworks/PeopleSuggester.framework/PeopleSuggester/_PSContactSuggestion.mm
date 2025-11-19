@interface _PSContactSuggestion
- (BOOL)isEqual:(id)a3;
- (_PSContactSuggestion)initWithCoder:(id)a3;
- (_PSContactSuggestion)initWithContact:(id)a3 andScore:(double)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSContactSuggestion

- (_PSContactSuggestion)initWithContact:(id)a3 andScore:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _PSContactSuggestion;
  v8 = [(_PSContactSuggestion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contact, a3);
    v9->_peopleWidgetScore = a4;
  }

  return v9;
}

- (_PSContactSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = _PSContactSuggestion;
  v5 = [(_PSContactSuggestion *)&v34 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"givenName"];
    givenName = v5->_givenName;
    v5->_givenName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"familyName"];
    familyName = v5->_familyName;
    v5->_familyName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestedHandle"];
    suggestedHandle = v5->_suggestedHandle;
    v5->_suggestedHandle = v12;

    [v4 decodeDoubleForKey:@"regularityScore"];
    v5->_regularityScore = v14;
    v5->_totalFrequency = [v4 decodeIntegerForKey:@"totalFrequency"];
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"daysInteracted"];
    daysInteracted = v5->_daysInteracted;
    v5->_daysInteracted = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"handleAndAppFrequencies"];
    handleAndAppFrequencies = v5->_handleAndAppFrequencies;
    v5->_handleAndAppFrequencies = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = [v26 setWithObjects:{v27, v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"handleAndAppRegularityScores"];
    handleAndAppRegularityScores = v5->_handleAndAppRegularityScores;
    v5->_handleAndAppRegularityScores = v30;

    v32 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contactIdentifier = self->_contactIdentifier;
  v5 = a3;
  [v5 encodeObject:contactIdentifier forKey:@"contactIdentifier"];
  [v5 encodeObject:self->_givenName forKey:@"givenName"];
  [v5 encodeObject:self->_familyName forKey:@"familyName"];
  [v5 encodeObject:self->_suggestedHandle forKey:@"suggestedHandle"];
  [v5 encodeDouble:@"regularityScore" forKey:self->_regularityScore];
  [v5 encodeInteger:self->_totalFrequency forKey:@"totalFrequency"];
  [v5 encodeObject:self->_handleAndAppFrequencies forKey:@"handleAndAppFrequencies"];
  [v5 encodeObject:self->_handleAndAppRegularityScores forKey:@"handleAndAppRegularityScores"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(_PSContactSuggestion *)self contactIdentifier];
    if (v7 && (v8 = v7, [(_PSContactSuggestion *)v6 contactIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      v10 = [(_PSContactSuggestion *)self contactIdentifier];
      v11 = [(_PSContactSuggestion *)v6 contactIdentifier];
      v12 = [v10 isEqualToString:v11];
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
  v5 = [(_PSContactSuggestion *)self contactIdentifier];
  v6 = [(_PSContactSuggestion *)self suggestedHandle];
  v7 = [v3 stringWithFormat:@"<%@ %p> contactIdentifier: %@, suggestedHandle: %@", v4, self, v5, v6];

  return v7;
}

@end