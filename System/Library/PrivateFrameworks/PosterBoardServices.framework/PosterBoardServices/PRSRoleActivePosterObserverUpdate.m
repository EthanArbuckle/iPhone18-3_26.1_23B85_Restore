@interface PRSRoleActivePosterObserverUpdate
- (NSString)description;
- (PRSRoleActivePosterObserverUpdate)initWithBSXPCCoder:(id)a3;
- (PRSRoleActivePosterObserverUpdate)initWithRole:(id)a3 activePath:(id)a4 suggestionDescriptors:(id)a5;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRSRoleActivePosterObserverUpdate

- (PRSRoleActivePosterObserverUpdate)initWithRole:(id)a3 activePath:(id)a4 suggestionDescriptors:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PRSRoleActivePosterObserverUpdate;
  v11 = [(PRSRoleActivePosterObserverUpdate *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    role = v11->_role;
    v11->_role = v12;

    objc_storeStrong(&v11->_activePath, a4);
    v14 = [v10 copy];
    suggestionDescriptors = v11->_suggestionDescriptors;
    v11->_suggestionDescriptors = v14;
  }

  return v11;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  activePath = self->_activePath;
  v5 = a3;
  [v5 encodeObject:activePath forKey:@"p"];
  [v5 encodeObject:self->_role forKey:@"r"];
  [v5 encodeObject:self->_suggestionDescriptors forKey:@"sd"];
}

- (PRSRoleActivePosterObserverUpdate)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PRSRoleActivePosterObserverUpdate;
  v5 = [(PRSRoleActivePosterObserverUpdate *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"r"];
    role = v5->_role;
    v5->_role = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    activePath = v5->_activePath;
    v5->_activePath = v8;

    v10 = objc_opt_self();
    v11 = objc_opt_self();
    v12 = [v4 decodeCollectionOfClass:v10 containingClass:v11 forKey:@"sd"];
    suggestionDescriptors = v5->_suggestionDescriptors;
    v5->_suggestionDescriptors = v12;
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_role withName:@"role"];
  v5 = [v3 appendObject:self->_activePath withName:@"activePath"];
  [v3 appendArraySection:self->_suggestionDescriptors withName:@"suggestionDescriptors" skipIfEmpty:1];
  v6 = [v3 build];

  return v6;
}

@end