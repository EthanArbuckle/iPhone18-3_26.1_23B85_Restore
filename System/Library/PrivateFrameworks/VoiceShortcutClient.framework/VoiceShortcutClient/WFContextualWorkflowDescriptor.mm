@interface WFContextualWorkflowDescriptor
- (WFContextualWorkflowDescriptor)initWithCoder:(id)a3;
- (WFContextualWorkflowDescriptor)initWithDescriptor:(id)a3 serializedRepresentation:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFContextualWorkflowDescriptor

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFContextualWorkflowDescriptor *)self descriptor];
  [v4 encodeObject:v5 forKey:@"descriptor"];

  v6 = [(WFContextualWorkflowDescriptor *)self serializedRepresentation];
  [v4 encodeObject:v6 forKey:@"serializedRepresentation"];
}

- (WFContextualWorkflowDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = WFContextualWorkflowDescriptor;
  v5 = [(WFContextualWorkflowDescriptor *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v8 setWithObjects:{v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"serializedRepresentation"];
    serializedRepresentation = v5->_serializedRepresentation;
    v5->_serializedRepresentation = v15;

    v17 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WFContextualWorkflowDescriptor alloc];
  v5 = [(WFContextualWorkflowDescriptor *)self descriptor];
  v6 = [(WFContextualWorkflowDescriptor *)self serializedRepresentation];
  v7 = [(WFContextualWorkflowDescriptor *)v4 initWithDescriptor:v5 serializedRepresentation:v6];

  return v7;
}

- (WFContextualWorkflowDescriptor)initWithDescriptor:(id)a3 serializedRepresentation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WFContextualWorkflowDescriptor;
  v9 = [(WFContextualWorkflowDescriptor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, a3);
    objc_storeStrong(&v10->_serializedRepresentation, a4);
    v11 = v10;
  }

  return v10;
}

@end