@interface WFAskParameterDialogResponse
- (WFAskParameterDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFAskParameterDialogResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAskParameterDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = WFAskParameterDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v8 encodeWithBSXPCCoder:coderCopy];
  v5 = MEMORY[0x1E696ACC8];
  v6 = [(WFAskParameterDialogResponse *)self serializedParameterState:v8.receiver];
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];

  [coderCopy encodeObject:v7 forKey:@"serializedParameterState"];
}

- (WFAskParameterDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = WFAskParameterDialogResponse;
  v5 = [(WFDialogResponse *)&v19 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedParameterState"];
    v7 = MEMORY[0x1E696ACD0];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v8 setWithObjects:{v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v7 unarchivedObjectOfClasses:v14 fromData:v6 error:0];
    serializedParameterState = v5->_serializedParameterState;
    v5->_serializedParameterState = v15;

    v17 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFAskParameterDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFAskParameterDialogResponse *)self serializedParameterState:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"serializedParameterState"];
}

- (WFAskParameterDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = WFAskParameterDialogResponse;
  v5 = [(WFDialogResponse *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"serializedParameterState"];
    serializedParameterState = v5->_serializedParameterState;
    v5->_serializedParameterState = v13;

    v15 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  serializedParameterState = [(WFAskParameterDialogResponse *)self serializedParameterState];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFDialogResponse isCancelled](self, "isCancelled")}];
  v8 = [v3 stringWithFormat:@"<%@: %p, serializedParameterState: %@, cancelled: %@>", v5, self, serializedParameterState, v7];

  return v8;
}

@end