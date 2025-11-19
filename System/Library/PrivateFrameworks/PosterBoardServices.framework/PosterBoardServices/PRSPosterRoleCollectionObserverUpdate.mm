@interface PRSPosterRoleCollectionObserverUpdate
- (PRSPosterRoleCollectionObserverUpdate)initWithBSXPCCoder:(id)a3;
- (PRSPosterRoleCollectionObserverUpdate)initWithRole:(id)a3 posterCollection:(id)a4;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRSPosterRoleCollectionObserverUpdate

- (PRSPosterRoleCollectionObserverUpdate)initWithRole:(id)a3 posterCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PRSPosterRoleCollectionObserverUpdate;
  v8 = [(PRSPosterRoleCollectionObserverUpdate *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    role = v8->_role;
    v8->_role = v9;

    v11 = [v7 copy];
    posterCollection = v8->_posterCollection;
    v8->_posterCollection = v11;
  }

  return v8;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  posterCollection = self->_posterCollection;
  v5 = a3;
  [v5 encodeObject:posterCollection forKey:@"c"];
  [v5 encodeObject:self->_role forKey:@"r"];
}

- (PRSPosterRoleCollectionObserverUpdate)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PRSPosterRoleCollectionObserverUpdate;
  v5 = [(PRSPosterRoleCollectionObserverUpdate *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"r"];
    role = v5->_role;
    v5->_role = v6;

    v8 = objc_opt_self();
    v9 = [v4 decodeCollectionOfClass:v8 containingClass:objc_opt_class() forKey:@"c"];
    posterCollection = v5->_posterCollection;
    v5->_posterCollection = v9;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  role = self->_role;
  v7 = [(NSArray *)self->_posterCollection bs_mapNoNulls:&__block_literal_global];
  v8 = [v3 stringWithFormat:@"<%@: role=(%@) postersCollection=(%@)>", v5, role, v7];

  return v8;
}

@end