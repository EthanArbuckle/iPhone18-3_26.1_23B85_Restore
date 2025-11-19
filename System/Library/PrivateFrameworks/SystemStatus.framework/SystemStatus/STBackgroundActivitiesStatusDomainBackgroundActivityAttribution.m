@interface STBackgroundActivitiesStatusDomainBackgroundActivityAttribution
- (BOOL)isEqual:(id)a3;
- (STBackgroundActivitiesStatusDomainBackgroundActivityAttribution)initWithBackgroundActivityIdentifier:(id)a3 activityAttribution:(id)a4 showsWhenForeground:(BOOL)a5;
- (STBackgroundActivitiesStatusDomainBackgroundActivityAttribution)initWithCoder:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STBackgroundActivitiesStatusDomainBackgroundActivityAttribution

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self backgroundActivityIdentifier];
  v5 = [v3 appendString:v4];

  v6 = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self activityAttribution];
  v7 = [v3 appendObject:v6];

  v8 = [v3 appendBool:{-[STBackgroundActivitiesStatusDomainBackgroundActivityAttribution showsWhenForeground](self, "showsWhenForeground")}];
  v9 = [v3 hash];

  return v9;
}

- (STBackgroundActivitiesStatusDomainBackgroundActivityAttribution)initWithBackgroundActivityIdentifier:(id)a3 activityAttribution:(id)a4 showsWhenForeground:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = STBackgroundActivitiesStatusDomainBackgroundActivityAttribution;
  v10 = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    backgroundActivityIdentifier = v10->_backgroundActivityIdentifier;
    v10->_backgroundActivityIdentifier = v11;

    v13 = [v9 copy];
    activityAttribution = v10->_activityAttribution;
    v10->_activityAttribution = v13;

    v10->_showsWhenForeground = a5;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self backgroundActivityIdentifier];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__STBackgroundActivitiesStatusDomainBackgroundActivityAttribution_isEqual___block_invoke;
  v20[3] = &unk_1E85DDD28;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendString:v6 counterpart:v20];

  v9 = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self activityAttribution];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__STBackgroundActivitiesStatusDomainBackgroundActivityAttribution_isEqual___block_invoke_2;
  v18[3] = &unk_1E85DDCD8;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendObject:v9 counterpart:v18];

  v12 = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self showsWhenForeground];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__STBackgroundActivitiesStatusDomainBackgroundActivityAttribution_isEqual___block_invoke_3;
  v16[3] = &unk_1E85DDD50;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendBool:v12 counterpart:v16];
  LOBYTE(v12) = [v5 isEqual];

  return v12;
}

- (id)succinctDescription
{
  v2 = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self backgroundActivityIdentifier];
  [v6 encodeObject:v4 forKey:@"backgroundActivityIdentifier"];

  v5 = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self activityAttribution];
  [v6 encodeObject:v5 forKey:@"activityAttribution"];

  [v6 encodeBool:-[STBackgroundActivitiesStatusDomainBackgroundActivityAttribution showsWhenForeground](self forKey:{"showsWhenForeground"), @"showsWhenForeground"}];
}

- (STBackgroundActivitiesStatusDomainBackgroundActivityAttribution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundActivityIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityAttribution"];
  v7 = [v4 decodeBoolForKey:@"showsWhenForeground"];

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
    v9 = 0;
  }

  else
  {
    self = [(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution *)self initWithBackgroundActivityIdentifier:v5 activityAttribution:v6 showsWhenForeground:v7];
    v9 = self;
  }

  return v9;
}

@end