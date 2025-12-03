@interface WFAskParameterDialogRequest
- (WFAskParameterDialogRequest)initWithActionIdentifier:(id)identifier parameterKey:(id)key serializedParameterStates:(id)states style:(int64_t)style attribution:(id)attribution prompt:(id)prompt doneButton:(id)button focusImmediatelyWhenPresented:(BOOL)self0;
- (WFAskParameterDialogRequest)initWithActionIdentifier:(id)identifier parameterKey:(id)key serializedParameterStates:(id)states style:(int64_t)style attribution:(id)attribution prompt:(id)prompt focusImmediatelyWhenPresented:(BOOL)presented;
- (WFAskParameterDialogRequest)initWithCoder:(id)coder;
- (id)description;
- (id)requestBySettingFocusImmediatelyWhenPresented:(BOOL)presented;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAskParameterDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = WFAskParameterDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v10 encodeWithCoder:coderCopy];
  v5 = [(WFAskParameterDialogRequest *)self actionIdentifier:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"actionIdentifier"];

  parameterKey = [(WFAskParameterDialogRequest *)self parameterKey];
  [coderCopy encodeObject:parameterKey forKey:@"parameterKey"];

  serializedParameterStates = [(WFAskParameterDialogRequest *)self serializedParameterStates];
  [coderCopy encodeObject:serializedParameterStates forKey:@"serializedParameterStates"];

  [coderCopy encodeInteger:-[WFAskParameterDialogRequest style](self forKey:{"style"), @"style"}];
  cancelButton = [(WFAskParameterDialogRequest *)self cancelButton];
  [coderCopy encodeObject:cancelButton forKey:@"cancelButton"];

  doneButton = [(WFAskParameterDialogRequest *)self doneButton];
  [coderCopy encodeObject:doneButton forKey:@"doneButton"];

  [coderCopy encodeBool:-[WFAskParameterDialogRequest focusImmediatelyWhenPresented](self forKey:{"focusImmediatelyWhenPresented"), @"focusImmediatelyWhenPresented"}];
}

- (WFAskParameterDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = WFAskParameterDialogRequest;
  v5 = [(WFDialogRequest *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    actionIdentifier = v5->_actionIdentifier;
    v5->_actionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterKey"];
    parameterKey = v5->_parameterKey;
    v5->_parameterKey = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v10 setWithObjects:{v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"serializedParameterStates"];
    serializedParameterStates = v5->_serializedParameterStates;
    v5->_serializedParameterStates = v17;

    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancelButton"];
    cancelButton = v5->_cancelButton;
    v5->_cancelButton = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"doneButton"];
    doneButton = v5->_doneButton;
    v5->_doneButton = v21;

    v5->_focusImmediatelyWhenPresented = [coderCopy decodeBoolForKey:@"focusImmediatelyWhenPresented"];
    v23 = v5;
  }

  return v5;
}

- (id)requestBySettingFocusImmediatelyWhenPresented:(BOOL)presented
{
  v5 = [WFAskParameterDialogRequest alloc];
  actionIdentifier = [(WFAskParameterDialogRequest *)self actionIdentifier];
  parameterKey = [(WFAskParameterDialogRequest *)self parameterKey];
  serializedParameterStates = [(WFAskParameterDialogRequest *)self serializedParameterStates];
  style = [(WFAskParameterDialogRequest *)self style];
  attribution = [(WFDialogRequest *)self attribution];
  prompt = [(WFDialogRequest *)self prompt];
  LOBYTE(v14) = presented;
  v12 = [(WFAskParameterDialogRequest *)v5 initWithActionIdentifier:actionIdentifier parameterKey:parameterKey serializedParameterStates:serializedParameterStates style:style attribution:attribution prompt:prompt focusImmediatelyWhenPresented:v14];

  return v12;
}

- (id)description
{
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  attribution = [(WFDialogRequest *)self attribution];
  title = [attribution title];
  prompt = [(WFDialogRequest *)self prompt];
  actionIdentifier = [(WFAskParameterDialogRequest *)self actionIdentifier];
  parameterKey = [(WFAskParameterDialogRequest *)self parameterKey];
  serializedParameterStates = [(WFAskParameterDialogRequest *)self serializedParameterStates];
  style = [(WFAskParameterDialogRequest *)self style];
  v11 = @"Inline";
  if (style == 1)
  {
    v11 = @"Modal";
  }

  v12 = v11;
  cancelButton = [(WFAskParameterDialogRequest *)self cancelButton];
  doneButton = [(WFAskParameterDialogRequest *)self doneButton];
  v15 = [v17 stringWithFormat:@"<%@: %p, title: %@, prompt: %@, actionIdentifier: %@, parameterKey: %@, serializedParameterStates: %@, style: %@, cancelButton: %@, doneButton: %@>", v4, self, title, prompt, actionIdentifier, parameterKey, serializedParameterStates, v12, cancelButton, doneButton];

  return v15;
}

- (WFAskParameterDialogRequest)initWithActionIdentifier:(id)identifier parameterKey:(id)key serializedParameterStates:(id)states style:(int64_t)style attribution:(id)attribution prompt:(id)prompt focusImmediatelyWhenPresented:(BOOL)presented
{
  promptCopy = prompt;
  attributionCopy = attribution;
  statesCopy = states;
  keyCopy = key;
  identifierCopy = identifier;
  v20 = +[WFDialogButton doneButton];
  LOBYTE(v23) = presented;
  v21 = [(WFAskParameterDialogRequest *)self initWithActionIdentifier:identifierCopy parameterKey:keyCopy serializedParameterStates:statesCopy style:style attribution:attributionCopy prompt:promptCopy doneButton:v20 focusImmediatelyWhenPresented:v23];

  return v21;
}

- (WFAskParameterDialogRequest)initWithActionIdentifier:(id)identifier parameterKey:(id)key serializedParameterStates:(id)states style:(int64_t)style attribution:(id)attribution prompt:(id)prompt doneButton:(id)button focusImmediatelyWhenPresented:(BOOL)self0
{
  identifierCopy = identifier;
  keyCopy = key;
  statesCopy = states;
  buttonCopy = button;
  v29.receiver = self;
  v29.super_class = WFAskParameterDialogRequest;
  v20 = [(WFDialogRequest *)&v29 initWithAttribution:attribution prompt:prompt];
  if (v20)
  {
    v21 = [identifierCopy copy];
    actionIdentifier = v20->_actionIdentifier;
    v20->_actionIdentifier = v21;

    v23 = [keyCopy copy];
    parameterKey = v20->_parameterKey;
    v20->_parameterKey = v23;

    objc_storeStrong(&v20->_serializedParameterStates, states);
    v20->_style = style;
    v25 = +[WFDialogButton cancelButton];
    cancelButton = v20->_cancelButton;
    v20->_cancelButton = v25;

    objc_storeStrong(&v20->_doneButton, button);
    v20->_focusImmediatelyWhenPresented = presented;
    v27 = v20;
  }

  return v20;
}

@end