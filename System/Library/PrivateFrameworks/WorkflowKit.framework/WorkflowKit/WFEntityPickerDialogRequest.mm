@interface WFEntityPickerDialogRequest
- (WFEntityPickerDialogRequest)initWithActionIdentifier:(id)identifier parameterKey:(id)key items:(id)items attribution:(id)attribution prompt:(id)prompt;
- (WFEntityPickerDialogRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFEntityPickerDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = WFEntityPickerDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(WFEntityPickerDialogRequest *)self actionIdentifier:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"actionIdentifier"];

  parameterKey = [(WFEntityPickerDialogRequest *)self parameterKey];
  [coderCopy encodeObject:parameterKey forKey:@"parameterKey"];

  items = [(WFEntityPickerDialogRequest *)self items];
  [coderCopy encodeObject:items forKey:@"items"];
}

- (WFEntityPickerDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = WFEntityPickerDialogRequest;
  v5 = [(WFDialogRequest *)&v17 initWithCoder:coderCopy];
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
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"items"];
    items = v5->_items;
    v5->_items = v13;

    v15 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  actionIdentifier = [(WFEntityPickerDialogRequest *)self actionIdentifier];
  parameterKey = [(WFEntityPickerDialogRequest *)self parameterKey];
  items = [(WFEntityPickerDialogRequest *)self items];
  v9 = [v3 stringWithFormat:@"<%@: %p, actionId: %@, parameterKey: %@, items: %@", v5, self, actionIdentifier, parameterKey, items];

  return v9;
}

- (WFEntityPickerDialogRequest)initWithActionIdentifier:(id)identifier parameterKey:(id)key items:(id)items attribution:(id)attribution prompt:(id)prompt
{
  identifierCopy = identifier;
  keyCopy = key;
  itemsCopy = items;
  v22.receiver = self;
  v22.super_class = WFEntityPickerDialogRequest;
  v15 = [(WFDialogRequest *)&v22 initWithAttribution:attribution prompt:prompt];
  if (v15)
  {
    v16 = [identifierCopy copy];
    actionIdentifier = v15->_actionIdentifier;
    v15->_actionIdentifier = v16;

    v18 = [keyCopy copy];
    parameterKey = v15->_parameterKey;
    v15->_parameterKey = v18;

    objc_storeStrong(&v15->_items, items);
    v20 = v15;
  }

  return v15;
}

@end