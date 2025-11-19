@interface PSIInitialSuggestion
- (PSIInitialSuggestion)initWithSuggestionTemplate:(id)a3 firstGroup:(id)a4 secondGroup:(id)a5 dateLastUsed:(double)a6;
- (id)groups;
@end

@implementation PSIInitialSuggestion

- (id)groups
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PSIInitialSuggestion *)self firstGroup];

  if (v4)
  {
    v5 = [(PSIInitialSuggestion *)self firstGroup];
    [v3 addObject:v5];
  }

  v6 = [(PSIInitialSuggestion *)self secondGroup];

  if (v6)
  {
    v7 = [(PSIInitialSuggestion *)self secondGroup];
    [v3 addObject:v7];
  }

  v8 = [v3 copy];

  return v8;
}

- (PSIInitialSuggestion)initWithSuggestionTemplate:(id)a3 firstGroup:(id)a4 secondGroup:(id)a5 dateLastUsed:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = PSIInitialSuggestion;
  v14 = [(PSIInitialSuggestion *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_suggestionTemplate, a3);
    objc_storeStrong(&v15->_firstGroup, a4);
    objc_storeStrong(&v15->_secondGroup, a5);
    v15->_dateLastUsed = a6;
    v16 = v15;
  }

  return v15;
}

@end