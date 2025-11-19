@interface WFAskParameterDialogRequest
- (WFAskParameterDialogRequest)initWithActionIdentifier:(id)a3 parameterKey:(id)a4 serializedParameterStates:(id)a5 style:(int64_t)a6 attribution:(id)a7 prompt:(id)a8 doneButton:(id)a9 focusImmediatelyWhenPresented:(BOOL)a10;
- (WFAskParameterDialogRequest)initWithActionIdentifier:(id)a3 parameterKey:(id)a4 serializedParameterStates:(id)a5 style:(int64_t)a6 attribution:(id)a7 prompt:(id)a8 focusImmediatelyWhenPresented:(BOOL)a9;
- (WFAskParameterDialogRequest)initWithCoder:(id)a3;
- (id)description;
- (id)requestBySettingFocusImmediatelyWhenPresented:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAskParameterDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = WFAskParameterDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v10 encodeWithCoder:v4];
  v5 = [(WFAskParameterDialogRequest *)self actionIdentifier:v10.receiver];
  [v4 encodeObject:v5 forKey:@"actionIdentifier"];

  v6 = [(WFAskParameterDialogRequest *)self parameterKey];
  [v4 encodeObject:v6 forKey:@"parameterKey"];

  v7 = [(WFAskParameterDialogRequest *)self serializedParameterStates];
  [v4 encodeObject:v7 forKey:@"serializedParameterStates"];

  [v4 encodeInteger:-[WFAskParameterDialogRequest style](self forKey:{"style"), @"style"}];
  v8 = [(WFAskParameterDialogRequest *)self cancelButton];
  [v4 encodeObject:v8 forKey:@"cancelButton"];

  v9 = [(WFAskParameterDialogRequest *)self doneButton];
  [v4 encodeObject:v9 forKey:@"doneButton"];

  [v4 encodeBool:-[WFAskParameterDialogRequest focusImmediatelyWhenPresented](self forKey:{"focusImmediatelyWhenPresented"), @"focusImmediatelyWhenPresented"}];
}

- (WFAskParameterDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = WFAskParameterDialogRequest;
  v5 = [(WFDialogRequest *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    actionIdentifier = v5->_actionIdentifier;
    v5->_actionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterKey"];
    parameterKey = v5->_parameterKey;
    v5->_parameterKey = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v10 setWithObjects:{v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"serializedParameterStates"];
    serializedParameterStates = v5->_serializedParameterStates;
    v5->_serializedParameterStates = v17;

    v5->_style = [v4 decodeIntegerForKey:@"style"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cancelButton"];
    cancelButton = v5->_cancelButton;
    v5->_cancelButton = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doneButton"];
    doneButton = v5->_doneButton;
    v5->_doneButton = v21;

    v5->_focusImmediatelyWhenPresented = [v4 decodeBoolForKey:@"focusImmediatelyWhenPresented"];
    v23 = v5;
  }

  return v5;
}

- (id)requestBySettingFocusImmediatelyWhenPresented:(BOOL)a3
{
  v5 = [WFAskParameterDialogRequest alloc];
  v6 = [(WFAskParameterDialogRequest *)self actionIdentifier];
  v7 = [(WFAskParameterDialogRequest *)self parameterKey];
  v8 = [(WFAskParameterDialogRequest *)self serializedParameterStates];
  v9 = [(WFAskParameterDialogRequest *)self style];
  v10 = [(WFDialogRequest *)self attribution];
  v11 = [(WFDialogRequest *)self prompt];
  LOBYTE(v14) = a3;
  v12 = [(WFAskParameterDialogRequest *)v5 initWithActionIdentifier:v6 parameterKey:v7 serializedParameterStates:v8 style:v9 attribution:v10 prompt:v11 focusImmediatelyWhenPresented:v14];

  return v12;
}

- (id)description
{
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v18 = [(WFDialogRequest *)self attribution];
  v5 = [v18 title];
  v6 = [(WFDialogRequest *)self prompt];
  v7 = [(WFAskParameterDialogRequest *)self actionIdentifier];
  v8 = [(WFAskParameterDialogRequest *)self parameterKey];
  v9 = [(WFAskParameterDialogRequest *)self serializedParameterStates];
  v10 = [(WFAskParameterDialogRequest *)self style];
  v11 = @"Inline";
  if (v10 == 1)
  {
    v11 = @"Modal";
  }

  v12 = v11;
  v13 = [(WFAskParameterDialogRequest *)self cancelButton];
  v14 = [(WFAskParameterDialogRequest *)self doneButton];
  v15 = [v17 stringWithFormat:@"<%@: %p, title: %@, prompt: %@, actionIdentifier: %@, parameterKey: %@, serializedParameterStates: %@, style: %@, cancelButton: %@, doneButton: %@>", v4, self, v5, v6, v7, v8, v9, v12, v13, v14];

  return v15;
}

- (WFAskParameterDialogRequest)initWithActionIdentifier:(id)a3 parameterKey:(id)a4 serializedParameterStates:(id)a5 style:(int64_t)a6 attribution:(id)a7 prompt:(id)a8 focusImmediatelyWhenPresented:(BOOL)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = +[WFDialogButton doneButton];
  LOBYTE(v23) = a9;
  v21 = [(WFAskParameterDialogRequest *)self initWithActionIdentifier:v19 parameterKey:v18 serializedParameterStates:v17 style:a6 attribution:v16 prompt:v15 doneButton:v20 focusImmediatelyWhenPresented:v23];

  return v21;
}

- (WFAskParameterDialogRequest)initWithActionIdentifier:(id)a3 parameterKey:(id)a4 serializedParameterStates:(id)a5 style:(int64_t)a6 attribution:(id)a7 prompt:(id)a8 doneButton:(id)a9 focusImmediatelyWhenPresented:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a9;
  v29.receiver = self;
  v29.super_class = WFAskParameterDialogRequest;
  v20 = [(WFDialogRequest *)&v29 initWithAttribution:a7 prompt:a8];
  if (v20)
  {
    v21 = [v16 copy];
    actionIdentifier = v20->_actionIdentifier;
    v20->_actionIdentifier = v21;

    v23 = [v17 copy];
    parameterKey = v20->_parameterKey;
    v20->_parameterKey = v23;

    objc_storeStrong(&v20->_serializedParameterStates, a5);
    v20->_style = a6;
    v25 = +[WFDialogButton cancelButton];
    cancelButton = v20->_cancelButton;
    v20->_cancelButton = v25;

    objc_storeStrong(&v20->_doneButton, a9);
    v20->_focusImmediatelyWhenPresented = a10;
    v27 = v20;
  }

  return v20;
}

@end