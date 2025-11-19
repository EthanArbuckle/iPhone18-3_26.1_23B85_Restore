@interface VCSleepWorkflow
- (NSString)bundleIdentifierForDisplay;
- (VCSleepWorkflow)initWithActions:(id)a3;
- (VCSleepWorkflow)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VCSleepWorkflow

- (VCSleepWorkflow)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = [v5 decodeObjectOfClasses:v10 forKey:@"actions"];

  if (v11)
  {
    self = [(VCSleepWorkflow *)self initWithActions:v11];
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VCSleepWorkflow *)self actions];
  [v4 encodeObject:v5 forKey:@"actions"];

  v6 = [(VCSleepWorkflow *)self bundleIdentifierForDisplay];
  [v4 encodeObject:v6 forKey:@"bundleIdentifierForDisplay"];

  v7 = [(VCSleepWorkflow *)self summaryString];
  [v4 encodeObject:v7 forKey:@"summaryString"];
}

- (NSString)bundleIdentifierForDisplay
{
  v3 = [(VCSleepWorkflow *)self actions];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(VCSleepWorkflow *)self actions];
    v6 = [v5 firstObject];
    v7 = [v6 bundleIdentifierForDisplay];
    v8 = v7;
    v9 = @"com.apple.shortcuts";
    if (v7)
    {
      v9 = v7;
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

- (VCSleepWorkflow)initWithActions:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = VCSleepWorkflow;
  v5 = [(VCSleepWorkflow *)&v19 init];
  if (v5)
  {
    v6 = [v4 copy];
    actions = v5->_actions;
    v5->_actions = v6;

    v8 = [v4 firstObject];
    v9 = [v8 title];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = WFLocalizedString(@"New Shortcut");
    }

    name = v5->_name;
    v5->_name = v11;

    v13 = [v4 firstObject];
    v14 = [v13 subtitle];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
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