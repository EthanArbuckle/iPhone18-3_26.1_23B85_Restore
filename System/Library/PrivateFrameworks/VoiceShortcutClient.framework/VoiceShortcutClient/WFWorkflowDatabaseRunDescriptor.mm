@interface WFWorkflowDatabaseRunDescriptor
- (WFWorkflowDatabaseRunDescriptor)initWithCoder:(id)coder;
- (WFWorkflowDatabaseRunDescriptor)initWithIdentifier:(id)identifier;
- (WFWorkflowDatabaseRunDescriptor)initWithIdentifier:(id)identifier name:(id)name;
- (WFWorkflowDatabaseRunDescriptor)initWithName:(id)name;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWorkflowDatabaseRunDescriptor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFWorkflowDatabaseRunDescriptor *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  name = [(WFWorkflowDatabaseRunDescriptor *)self name];
  [coderCopy encodeObject:name forKey:@"name"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WFWorkflowDatabaseRunDescriptor *)self identifier];
  name = [(WFWorkflowDatabaseRunDescriptor *)self name];
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, name: %@>", v5, self, identifier, name];

  return v8;
}

- (WFWorkflowDatabaseRunDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];

  v7 = [(WFWorkflowDatabaseRunDescriptor *)self initWithIdentifier:v5 name:v6];
  return v7;
}

- (WFWorkflowDatabaseRunDescriptor)initWithIdentifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = WFWorkflowDatabaseRunDescriptor;
  v8 = [(WFWorkflowDatabaseRunDescriptor *)&v15 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v11;

    v13 = v8;
  }

  return v8;
}

- (WFWorkflowDatabaseRunDescriptor)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v6 = [(WFWorkflowDatabaseRunDescriptor *)self initWithIdentifier:identifierCopy name:0];

  return v6;
}

- (WFWorkflowDatabaseRunDescriptor)initWithName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v6 = [(WFWorkflowDatabaseRunDescriptor *)self initWithIdentifier:0 name:nameCopy];

  return v6;
}

@end