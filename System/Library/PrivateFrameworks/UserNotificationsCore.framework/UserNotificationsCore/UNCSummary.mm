@interface UNCSummary
- (UNCSummary)initWithBundleIdentifier:(id)a3 requestIdentifiers:(id)a4 spotlightIdentifier:(id)a5 groupSummary:(BOOL)a6 content:(id)a7 threadIdentifier:(id)a8;
- (UNCSummary)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNCSummary

- (UNCSummary)initWithBundleIdentifier:(id)a3 requestIdentifiers:(id)a4 spotlightIdentifier:(id)a5 groupSummary:(BOOL)a6 content:(id)a7 threadIdentifier:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v31.receiver = self;
  v31.super_class = UNCSummary;
  v19 = [(UNCSummary *)&v31 init];
  if (v19)
  {
    v20 = [v14 copy];
    bundleIdentifier = v19->_bundleIdentifier;
    v19->_bundleIdentifier = v20;

    v22 = [v15 copy];
    requestIdentifiers = v19->_requestIdentifiers;
    v19->_requestIdentifiers = v22;

    v24 = [v16 copy];
    spotlightIdentifier = v19->_spotlightIdentifier;
    v19->_spotlightIdentifier = v24;

    v19->_groupSummary = a6;
    v26 = [v17 copy];
    content = v19->_content;
    v19->_content = v26;

    v28 = [v18 copy];
    threadIdentifier = v19->_threadIdentifier;
    v19->_threadIdentifier = v28;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNCSummary *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(UNCSummary *)self requestIdentifiers];
  [v4 encodeObject:v6 forKey:@"requestIdentifiers"];

  v7 = [(UNCSummary *)self spotlightIdentifier];
  [v4 encodeObject:v7 forKey:@"spotlightIdentifier"];

  [v4 encodeBool:-[UNCSummary isGroupSummary](self forKey:{"isGroupSummary"), @"isGroupSummary"}];
  v8 = [(UNCSummary *)self content];
  [v4 encodeObject:v8 forKey:@"content"];

  v9 = [(UNCSummary *)self threadIdentifier];
  [v4 encodeObject:v9 forKey:@"threadIdentifier"];
}

- (UNCSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"requestIdentifiers"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spotlightIdentifier"];
  v11 = [v4 decodeBoolForKey:@"isGroupSummary"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];

  v14 = [(UNCSummary *)self initWithBundleIdentifier:v5 requestIdentifiers:v9 spotlightIdentifier:v10 groupSummary:v11 content:v12 threadIdentifier:v13];
  return v14;
}

@end