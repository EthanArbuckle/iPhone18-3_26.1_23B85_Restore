@interface PRSRoleActivePosterObserverUpdate
- (NSString)description;
- (PRSRoleActivePosterObserverUpdate)initWithBSXPCCoder:(id)coder;
- (PRSRoleActivePosterObserverUpdate)initWithRole:(id)role activePath:(id)path suggestionDescriptors:(id)descriptors;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation PRSRoleActivePosterObserverUpdate

- (PRSRoleActivePosterObserverUpdate)initWithRole:(id)role activePath:(id)path suggestionDescriptors:(id)descriptors
{
  roleCopy = role;
  pathCopy = path;
  descriptorsCopy = descriptors;
  v17.receiver = self;
  v17.super_class = PRSRoleActivePosterObserverUpdate;
  v11 = [(PRSRoleActivePosterObserverUpdate *)&v17 init];
  if (v11)
  {
    v12 = [roleCopy copy];
    role = v11->_role;
    v11->_role = v12;

    objc_storeStrong(&v11->_activePath, path);
    v14 = [descriptorsCopy copy];
    suggestionDescriptors = v11->_suggestionDescriptors;
    v11->_suggestionDescriptors = v14;
  }

  return v11;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  activePath = self->_activePath;
  coderCopy = coder;
  [coderCopy encodeObject:activePath forKey:@"p"];
  [coderCopy encodeObject:self->_role forKey:@"r"];
  [coderCopy encodeObject:self->_suggestionDescriptors forKey:@"sd"];
}

- (PRSRoleActivePosterObserverUpdate)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PRSRoleActivePosterObserverUpdate;
  v5 = [(PRSRoleActivePosterObserverUpdate *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"r"];
    role = v5->_role;
    v5->_role = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    activePath = v5->_activePath;
    v5->_activePath = v8;

    v10 = objc_opt_self();
    v11 = objc_opt_self();
    v12 = [coderCopy decodeCollectionOfClass:v10 containingClass:v11 forKey:@"sd"];
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
  build = [v3 build];

  return build;
}

@end