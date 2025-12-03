@interface UNCSummary
- (UNCSummary)initWithBundleIdentifier:(id)identifier requestIdentifiers:(id)identifiers spotlightIdentifier:(id)spotlightIdentifier groupSummary:(BOOL)summary content:(id)content threadIdentifier:(id)threadIdentifier;
- (UNCSummary)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNCSummary

- (UNCSummary)initWithBundleIdentifier:(id)identifier requestIdentifiers:(id)identifiers spotlightIdentifier:(id)spotlightIdentifier groupSummary:(BOOL)summary content:(id)content threadIdentifier:(id)threadIdentifier
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  spotlightIdentifierCopy = spotlightIdentifier;
  contentCopy = content;
  threadIdentifierCopy = threadIdentifier;
  v31.receiver = self;
  v31.super_class = UNCSummary;
  v19 = [(UNCSummary *)&v31 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    bundleIdentifier = v19->_bundleIdentifier;
    v19->_bundleIdentifier = v20;

    v22 = [identifiersCopy copy];
    requestIdentifiers = v19->_requestIdentifiers;
    v19->_requestIdentifiers = v22;

    v24 = [spotlightIdentifierCopy copy];
    spotlightIdentifier = v19->_spotlightIdentifier;
    v19->_spotlightIdentifier = v24;

    v19->_groupSummary = summary;
    v26 = [contentCopy copy];
    content = v19->_content;
    v19->_content = v26;

    v28 = [threadIdentifierCopy copy];
    threadIdentifier = v19->_threadIdentifier;
    v19->_threadIdentifier = v28;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(UNCSummary *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  requestIdentifiers = [(UNCSummary *)self requestIdentifiers];
  [coderCopy encodeObject:requestIdentifiers forKey:@"requestIdentifiers"];

  spotlightIdentifier = [(UNCSummary *)self spotlightIdentifier];
  [coderCopy encodeObject:spotlightIdentifier forKey:@"spotlightIdentifier"];

  [coderCopy encodeBool:-[UNCSummary isGroupSummary](self forKey:{"isGroupSummary"), @"isGroupSummary"}];
  content = [(UNCSummary *)self content];
  [coderCopy encodeObject:content forKey:@"content"];

  threadIdentifier = [(UNCSummary *)self threadIdentifier];
  [coderCopy encodeObject:threadIdentifier forKey:@"threadIdentifier"];
}

- (UNCSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"requestIdentifiers"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spotlightIdentifier"];
  v11 = [coderCopy decodeBoolForKey:@"isGroupSummary"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];

  v14 = [(UNCSummary *)self initWithBundleIdentifier:v5 requestIdentifiers:v9 spotlightIdentifier:v10 groupSummary:v11 content:v12 threadIdentifier:v13];
  return v14;
}

@end