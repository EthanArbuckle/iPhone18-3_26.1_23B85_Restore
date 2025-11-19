@interface WFEntityPickerDialogRequest
- (WFEntityPickerDialogRequest)initWithActionIdentifier:(id)a3 parameterKey:(id)a4 items:(id)a5 attribution:(id)a6 prompt:(id)a7;
- (WFEntityPickerDialogRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFEntityPickerDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFEntityPickerDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v8 encodeWithCoder:v4];
  v5 = [(WFEntityPickerDialogRequest *)self actionIdentifier:v8.receiver];
  [v4 encodeObject:v5 forKey:@"actionIdentifier"];

  v6 = [(WFEntityPickerDialogRequest *)self parameterKey];
  [v4 encodeObject:v6 forKey:@"parameterKey"];

  v7 = [(WFEntityPickerDialogRequest *)self items];
  [v4 encodeObject:v7 forKey:@"items"];
}

- (WFEntityPickerDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WFEntityPickerDialogRequest;
  v5 = [(WFDialogRequest *)&v17 initWithCoder:v4];
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
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"items"];
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
  v6 = [(WFEntityPickerDialogRequest *)self actionIdentifier];
  v7 = [(WFEntityPickerDialogRequest *)self parameterKey];
  v8 = [(WFEntityPickerDialogRequest *)self items];
  v9 = [v3 stringWithFormat:@"<%@: %p, actionId: %@, parameterKey: %@, items: %@", v5, self, v6, v7, v8];

  return v9;
}

- (WFEntityPickerDialogRequest)initWithActionIdentifier:(id)a3 parameterKey:(id)a4 items:(id)a5 attribution:(id)a6 prompt:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v22.receiver = self;
  v22.super_class = WFEntityPickerDialogRequest;
  v15 = [(WFDialogRequest *)&v22 initWithAttribution:a6 prompt:a7];
  if (v15)
  {
    v16 = [v12 copy];
    actionIdentifier = v15->_actionIdentifier;
    v15->_actionIdentifier = v16;

    v18 = [v13 copy];
    parameterKey = v15->_parameterKey;
    v15->_parameterKey = v18;

    objc_storeStrong(&v15->_items, a5);
    v20 = v15;
  }

  return v15;
}

@end