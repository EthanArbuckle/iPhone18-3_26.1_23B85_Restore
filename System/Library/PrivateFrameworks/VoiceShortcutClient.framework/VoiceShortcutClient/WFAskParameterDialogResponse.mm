@interface WFAskParameterDialogResponse
- (WFAskParameterDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFAskParameterDialogResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAskParameterDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFAskParameterDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v8 encodeWithBSXPCCoder:v4];
  v5 = MEMORY[0x1E696ACC8];
  v6 = [(WFAskParameterDialogResponse *)self serializedParameterState:v8.receiver];
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];

  [v4 encodeObject:v7 forKey:@"serializedParameterState"];
}

- (WFAskParameterDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = WFAskParameterDialogResponse;
  v5 = [(WFDialogResponse *)&v19 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serializedParameterState"];
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

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFAskParameterDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v6 encodeWithCoder:v4];
  v5 = [(WFAskParameterDialogResponse *)self serializedParameterState:v6.receiver];
  [v4 encodeObject:v5 forKey:@"serializedParameterState"];
}

- (WFAskParameterDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WFAskParameterDialogResponse;
  v5 = [(WFDialogResponse *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"serializedParameterState"];
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
  v6 = [(WFAskParameterDialogResponse *)self serializedParameterState];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFDialogResponse isCancelled](self, "isCancelled")}];
  v8 = [v3 stringWithFormat:@"<%@: %p, serializedParameterState: %@, cancelled: %@>", v5, self, v6, v7];

  return v8;
}

@end