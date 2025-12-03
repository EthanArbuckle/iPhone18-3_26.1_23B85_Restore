@interface PSIInitialSuggestion
- (PSIInitialSuggestion)initWithSuggestionTemplate:(id)template firstGroup:(id)group secondGroup:(id)secondGroup dateLastUsed:(double)used;
- (id)groups;
@end

@implementation PSIInitialSuggestion

- (id)groups
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  firstGroup = [(PSIInitialSuggestion *)self firstGroup];

  if (firstGroup)
  {
    firstGroup2 = [(PSIInitialSuggestion *)self firstGroup];
    [v3 addObject:firstGroup2];
  }

  secondGroup = [(PSIInitialSuggestion *)self secondGroup];

  if (secondGroup)
  {
    secondGroup2 = [(PSIInitialSuggestion *)self secondGroup];
    [v3 addObject:secondGroup2];
  }

  v8 = [v3 copy];

  return v8;
}

- (PSIInitialSuggestion)initWithSuggestionTemplate:(id)template firstGroup:(id)group secondGroup:(id)secondGroup dateLastUsed:(double)used
{
  templateCopy = template;
  groupCopy = group;
  secondGroupCopy = secondGroup;
  v18.receiver = self;
  v18.super_class = PSIInitialSuggestion;
  v14 = [(PSIInitialSuggestion *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_suggestionTemplate, template);
    objc_storeStrong(&v15->_firstGroup, group);
    objc_storeStrong(&v15->_secondGroup, secondGroup);
    v15->_dateLastUsed = used;
    v16 = v15;
  }

  return v15;
}

@end