@interface WFWorkflowDatabaseRunDescriptor
- (WFWorkflowDatabaseRunDescriptor)initWithCoder:(id)a3;
- (WFWorkflowDatabaseRunDescriptor)initWithIdentifier:(id)a3;
- (WFWorkflowDatabaseRunDescriptor)initWithIdentifier:(id)a3 name:(id)a4;
- (WFWorkflowDatabaseRunDescriptor)initWithName:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWorkflowDatabaseRunDescriptor

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowDatabaseRunDescriptor *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(WFWorkflowDatabaseRunDescriptor *)self name];
  [v4 encodeObject:v6 forKey:@"name"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFWorkflowDatabaseRunDescriptor *)self identifier];
  v7 = [(WFWorkflowDatabaseRunDescriptor *)self name];
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, name: %@>", v5, self, v6, v7];

  return v8;
}

- (WFWorkflowDatabaseRunDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];

  v7 = [(WFWorkflowDatabaseRunDescriptor *)self initWithIdentifier:v5 name:v6];
  return v7;
}

- (WFWorkflowDatabaseRunDescriptor)initWithIdentifier:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFWorkflowDatabaseRunDescriptor;
  v8 = [(WFWorkflowDatabaseRunDescriptor *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    name = v8->_name;
    v8->_name = v11;

    v13 = v8;
  }

  return v8;
}

- (WFWorkflowDatabaseRunDescriptor)initWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v6 = [(WFWorkflowDatabaseRunDescriptor *)self initWithIdentifier:v5 name:0];

  return v6;
}

- (WFWorkflowDatabaseRunDescriptor)initWithName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v6 = [(WFWorkflowDatabaseRunDescriptor *)self initWithIdentifier:0 name:v5];

  return v6;
}

@end