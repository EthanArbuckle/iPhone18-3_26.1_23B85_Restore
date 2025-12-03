@interface WFContextualWorkflowDescriptor
- (WFContextualWorkflowDescriptor)initWithCoder:(id)coder;
- (WFContextualWorkflowDescriptor)initWithDescriptor:(id)descriptor serializedRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContextualWorkflowDescriptor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  descriptor = [(WFContextualWorkflowDescriptor *)self descriptor];
  [coderCopy encodeObject:descriptor forKey:@"descriptor"];

  serializedRepresentation = [(WFContextualWorkflowDescriptor *)self serializedRepresentation];
  [coderCopy encodeObject:serializedRepresentation forKey:@"serializedRepresentation"];
}

- (WFContextualWorkflowDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = WFContextualWorkflowDescriptor;
  v5 = [(WFContextualWorkflowDescriptor *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v8 setWithObjects:{v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"serializedRepresentation"];
    serializedRepresentation = v5->_serializedRepresentation;
    v5->_serializedRepresentation = v15;

    v17 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WFContextualWorkflowDescriptor alloc];
  descriptor = [(WFContextualWorkflowDescriptor *)self descriptor];
  serializedRepresentation = [(WFContextualWorkflowDescriptor *)self serializedRepresentation];
  v7 = [(WFContextualWorkflowDescriptor *)v4 initWithDescriptor:descriptor serializedRepresentation:serializedRepresentation];

  return v7;
}

- (WFContextualWorkflowDescriptor)initWithDescriptor:(id)descriptor serializedRepresentation:(id)representation
{
  descriptorCopy = descriptor;
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = WFContextualWorkflowDescriptor;
  v9 = [(WFContextualWorkflowDescriptor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, descriptor);
    objc_storeStrong(&v10->_serializedRepresentation, representation);
    v11 = v10;
  }

  return v10;
}

@end