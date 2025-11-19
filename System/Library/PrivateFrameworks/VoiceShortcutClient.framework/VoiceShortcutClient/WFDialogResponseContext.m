@interface WFDialogResponseContext
- (NSString)description;
- (WFDialogResponseContext)initWithBSXPCCoder:(id)a3;
- (WFDialogResponseContext)initWithCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFDialogResponseContext

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFDialogResponseContext *)self turnIdentifier];
  [v4 encodeObject:v5 forKey:@"turnIdentifier"];
}

- (WFDialogResponseContext)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFDialogResponseContext;
  v5 = [(WFDialogResponseContext *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"turnIdentifier"];
    turnIdentifier = v5->_turnIdentifier;
    v5->_turnIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFDialogResponseContext *)self turnIdentifier];
  [v4 encodeObject:v5 forKey:@"turnIdentifier"];
}

- (WFDialogResponseContext)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFDialogResponseContext;
  v5 = [(WFDialogResponseContext *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"turnIdentifier"];
    turnIdentifier = v5->_turnIdentifier;
    v5->_turnIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFDialogResponseContext *)self turnIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, turnIdentifier: %@>", v5, self, v6];

  return v7;
}

@end