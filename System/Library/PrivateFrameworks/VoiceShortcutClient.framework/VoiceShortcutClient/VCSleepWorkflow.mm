@interface VCSleepWorkflow
- (NSString)bundleIdentifierForDisplay;
- (VCSleepWorkflow)initWithActions:(id)actions;
- (VCSleepWorkflow)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VCSleepWorkflow

- (VCSleepWorkflow)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"actions"];

  if (v11)
  {
    self = [(VCSleepWorkflow *)self initWithActions:v11];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actions = [(VCSleepWorkflow *)self actions];
  [coderCopy encodeObject:actions forKey:@"actions"];

  bundleIdentifierForDisplay = [(VCSleepWorkflow *)self bundleIdentifierForDisplay];
  [coderCopy encodeObject:bundleIdentifierForDisplay forKey:@"bundleIdentifierForDisplay"];

  summaryString = [(VCSleepWorkflow *)self summaryString];
  [coderCopy encodeObject:summaryString forKey:@"summaryString"];
}

- (NSString)bundleIdentifierForDisplay
{
  actions = [(VCSleepWorkflow *)self actions];
  v4 = [actions count];

  if (v4 == 1)
  {
    actions2 = [(VCSleepWorkflow *)self actions];
    firstObject = [actions2 firstObject];
    bundleIdentifierForDisplay = [firstObject bundleIdentifierForDisplay];
    v8 = bundleIdentifierForDisplay;
    v9 = @"com.apple.shortcuts";
    if (bundleIdentifierForDisplay)
    {
      v9 = bundleIdentifierForDisplay;
    }

    v10 = v9;
  }

  else
  {
    v10 = @"com.apple.shortcuts";
    v11 = @"com.apple.shortcuts";
  }

  return v10;
}

- (VCSleepWorkflow)initWithActions:(id)actions
{
  actionsCopy = actions;
  v19.receiver = self;
  v19.super_class = VCSleepWorkflow;
  v5 = [(VCSleepWorkflow *)&v19 init];
  if (v5)
  {
    v6 = [actionsCopy copy];
    actions = v5->_actions;
    v5->_actions = v6;

    firstObject = [actionsCopy firstObject];
    title = [firstObject title];
    v10 = title;
    if (title)
    {
      v11 = title;
    }

    else
    {
      v11 = WFLocalizedString(@"New Shortcut");
    }

    name = v5->_name;
    v5->_name = v11;

    firstObject2 = [actionsCopy firstObject];
    subtitle = [firstObject2 subtitle];
    v15 = subtitle;
    if (subtitle)
    {
      v16 = subtitle;
    }

    else
    {
      v16 = &stru_1F28FBBB8;
    }

    objc_storeStrong(&v5->_summaryString, v16);

    v17 = v5;
  }

  return v5;
}

@end