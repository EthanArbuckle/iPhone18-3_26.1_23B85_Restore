@interface STBackgroundActivitiesStatusDomainBackgroundActivityAttribution
- (BOOL)isEqual:(id)equal;
- (STBackgroundActivitiesStatusDomainBackgroundActivityAttribution)initWithBackgroundActivityIdentifier:(id)identifier activityAttribution:(id)attribution showsWhenForeground:(BOOL)foreground;
- (STBackgroundActivitiesStatusDomainBackgroundActivityAttribution)initWithCoder:(id)coder;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STBackgroundActivitiesStatusDomainBackgroundActivityAttribution

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  backgroundActivityIdentifier = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self backgroundActivityIdentifier];
  v5 = [builder appendString:backgroundActivityIdentifier];

  activityAttribution = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self activityAttribution];
  v7 = [builder appendObject:activityAttribution];

  v8 = [builder appendBool:{-[STBackgroundActivitiesStatusDomainBackgroundActivityAttribution showsWhenForeground](self, "showsWhenForeground")}];
  v9 = [builder hash];

  return v9;
}

- (STBackgroundActivitiesStatusDomainBackgroundActivityAttribution)initWithBackgroundActivityIdentifier:(id)identifier activityAttribution:(id)attribution showsWhenForeground:(BOOL)foreground
{
  identifierCopy = identifier;
  attributionCopy = attribution;
  v16.receiver = self;
  v16.super_class = STBackgroundActivitiesStatusDomainBackgroundActivityAttribution;
  v10 = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    backgroundActivityIdentifier = v10->_backgroundActivityIdentifier;
    v10->_backgroundActivityIdentifier = v11;

    v13 = [attributionCopy copy];
    activityAttribution = v10->_activityAttribution;
    v10->_activityAttribution = v13;

    v10->_showsWhenForeground = foreground;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  backgroundActivityIdentifier = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self backgroundActivityIdentifier];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__STBackgroundActivitiesStatusDomainBackgroundActivityAttribution_isEqual___block_invoke;
  v20[3] = &unk_1E85DDD28;
  v7 = equalCopy;
  v21 = v7;
  v8 = [v5 appendString:backgroundActivityIdentifier counterpart:v20];

  activityAttribution = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self activityAttribution];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__STBackgroundActivitiesStatusDomainBackgroundActivityAttribution_isEqual___block_invoke_2;
  v18[3] = &unk_1E85DDCD8;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendObject:activityAttribution counterpart:v18];

  showsWhenForeground = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self showsWhenForeground];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__STBackgroundActivitiesStatusDomainBackgroundActivityAttribution_isEqual___block_invoke_3;
  v16[3] = &unk_1E85DDD50;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendBool:showsWhenForeground counterpart:v16];
  LOBYTE(showsWhenForeground) = [v5 isEqual];

  return showsWhenForeground;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

id __115__STBackgroundActivitiesStatusDomainBackgroundActivityAttribution__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) backgroundActivityIdentifier];
  v4 = STBackgroundActivityIdentifierDescription(v3);
  [v2 appendString:v4 withName:@"backgroundActivity"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) activityAttribution];
  v7 = [v5 appendObject:v6 withName:@"activityAttribution"];

  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"showsWhenForeground") ifEqualTo:{@"showsWhenForeground", 1}];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  backgroundActivityIdentifier = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self backgroundActivityIdentifier];
  [coderCopy encodeObject:backgroundActivityIdentifier forKey:@"backgroundActivityIdentifier"];

  activityAttribution = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self activityAttribution];
  [coderCopy encodeObject:activityAttribution forKey:@"activityAttribution"];

  [coderCopy encodeBool:-[STBackgroundActivitiesStatusDomainBackgroundActivityAttribution showsWhenForeground](self forKey:{"showsWhenForeground"), @"showsWhenForeground"}];
}

- (STBackgroundActivitiesStatusDomainBackgroundActivityAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundActivityIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityAttribution"];
  v7 = [coderCopy decodeBoolForKey:@"showsWhenForeground"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self initWithBackgroundActivityIdentifier:v5 activityAttribution:v6 showsWhenForeground:v7];
    selfCopy = self;
  }

  return selfCopy;
}

@end