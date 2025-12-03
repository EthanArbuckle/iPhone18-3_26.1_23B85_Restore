@interface REMGrocerySuggestions
- (BOOL)isEqual:(id)equal;
- (REMGrocerySuggestions)initWithCoder:(id)coder;
- (REMGrocerySuggestions)initWithSuggestedSectionsByReminderTitle:(id)title;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMGrocerySuggestions

- (REMGrocerySuggestions)initWithSuggestedSectionsByReminderTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = REMGrocerySuggestions;
  v6 = [(REMGrocerySuggestions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestedSectionsByReminderTitle, title);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, equalCopy);

  suggestedSectionsByReminderTitle = [(REMGrocerySuggestions *)self suggestedSectionsByReminderTitle];
  suggestedSectionsByReminderTitle2 = [v6 suggestedSectionsByReminderTitle];
  if (suggestedSectionsByReminderTitle == suggestedSectionsByReminderTitle2)
  {
    v11 = 1;
  }

  else
  {
    suggestedSectionsByReminderTitle3 = [(REMGrocerySuggestions *)self suggestedSectionsByReminderTitle];
    suggestedSectionsByReminderTitle4 = [v6 suggestedSectionsByReminderTitle];
    v11 = [suggestedSectionsByReminderTitle3 isEqual:suggestedSectionsByReminderTitle4];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  suggestedSectionsByReminderTitle = [(REMGrocerySuggestions *)self suggestedSectionsByReminderTitle];
  v7 = [suggestedSectionsByReminderTitle copyWithZone:zone];
  v8 = [v5 initWithSuggestedSectionsByReminderTitle:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  suggestedSectionsByReminderTitle = [(REMGrocerySuggestions *)self suggestedSectionsByReminderTitle];
  [coderCopy encodeObject:suggestedSectionsByReminderTitle forKey:@"suggestedSectionsByReminderTitle"];
}

- (REMGrocerySuggestions)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"suggestedSectionsByReminderTitle"];

  v11 = [(REMGrocerySuggestions *)self initWithSuggestedSectionsByReminderTitle:v10];
  return v11;
}

@end