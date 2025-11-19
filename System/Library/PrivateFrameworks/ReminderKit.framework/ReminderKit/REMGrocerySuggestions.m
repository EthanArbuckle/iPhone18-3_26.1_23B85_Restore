@interface REMGrocerySuggestions
- (BOOL)isEqual:(id)a3;
- (REMGrocerySuggestions)initWithCoder:(id)a3;
- (REMGrocerySuggestions)initWithSuggestedSectionsByReminderTitle:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMGrocerySuggestions

- (REMGrocerySuggestions)initWithSuggestedSectionsByReminderTitle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMGrocerySuggestions;
  v6 = [(REMGrocerySuggestions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestedSectionsByReminderTitle, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, v4);

  v7 = [(REMGrocerySuggestions *)self suggestedSectionsByReminderTitle];
  v8 = [v6 suggestedSectionsByReminderTitle];
  if (v7 == v8)
  {
    v11 = 1;
  }

  else
  {
    v9 = [(REMGrocerySuggestions *)self suggestedSectionsByReminderTitle];
    v10 = [v6 suggestedSectionsByReminderTitle];
    v11 = [v9 isEqual:v10];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(REMGrocerySuggestions *)self suggestedSectionsByReminderTitle];
  v7 = [v6 copyWithZone:a3];
  v8 = [v5 initWithSuggestedSectionsByReminderTitle:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMGrocerySuggestions *)self suggestedSectionsByReminderTitle];
  [v4 encodeObject:v5 forKey:@"suggestedSectionsByReminderTitle"];
}

- (REMGrocerySuggestions)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [v5 decodeObjectOfClasses:v9 forKey:@"suggestedSectionsByReminderTitle"];

  v11 = [(REMGrocerySuggestions *)self initWithSuggestedSectionsByReminderTitle:v10];
  return v11;
}

@end