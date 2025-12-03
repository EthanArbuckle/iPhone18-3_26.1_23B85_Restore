@interface WFDialogResponseContext
- (NSString)description;
- (WFDialogResponseContext)initWithBSXPCCoder:(id)coder;
- (WFDialogResponseContext)initWithCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFDialogResponseContext

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  turnIdentifier = [(WFDialogResponseContext *)self turnIdentifier];
  [coderCopy encodeObject:turnIdentifier forKey:@"turnIdentifier"];
}

- (WFDialogResponseContext)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFDialogResponseContext;
  v5 = [(WFDialogResponseContext *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"turnIdentifier"];
    turnIdentifier = v5->_turnIdentifier;
    v5->_turnIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  turnIdentifier = [(WFDialogResponseContext *)self turnIdentifier];
  [coderCopy encodeObject:turnIdentifier forKey:@"turnIdentifier"];
}

- (WFDialogResponseContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFDialogResponseContext;
  v5 = [(WFDialogResponseContext *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"turnIdentifier"];
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
  turnIdentifier = [(WFDialogResponseContext *)self turnIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, turnIdentifier: %@>", v5, self, turnIdentifier];

  return v7;
}

@end