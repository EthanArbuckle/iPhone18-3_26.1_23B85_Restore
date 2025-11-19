@interface WFShowActionInterfaceDialogRequest
- (NSString)catalystInterfaceClassName;
- (WFShowActionInterfaceDialogRequest)initWithActionClassName:(id)a3 classNamesByType:(id)a4 attribution:(id)a5;
- (WFShowActionInterfaceDialogRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFShowActionInterfaceDialogRequest

- (NSString)catalystInterfaceClassName
{
  if ([(WFShowActionInterfaceDialogRequest *)self isCatalystInterfaceRequest])
  {
    v3 = [(NSDictionary *)self->_classNamesByType objectForKey:*MEMORY[0x1E6997170]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFShowActionInterfaceDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v7 encodeWithCoder:v4];
  v5 = [(WFShowActionInterfaceDialogRequest *)self actionClassName:v7.receiver];
  [v4 encodeObject:v5 forKey:@"actionClassName"];

  v6 = [(WFShowActionInterfaceDialogRequest *)self classNamesByType];
  [v4 encodeObject:v6 forKey:@"classNamesByType"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFShowActionInterfaceDialogRequest *)self actionClassName];
  v7 = [(WFShowActionInterfaceDialogRequest *)self classNamesByType];
  v8 = [v3 stringWithFormat:@"<%@: %p, actionClassName: %@, classNamesByType: %@>", v5, self, v6, v7];

  return v8;
}

- (WFShowActionInterfaceDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = WFShowActionInterfaceDialogRequest;
  v5 = [(WFDialogRequest *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionClassName"];
    actionClassName = v5->_actionClassName;
    v5->_actionClassName = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"classNamesByType"];
    classNamesByType = v5->_classNamesByType;
    v5->_classNamesByType = v11;

    v13 = v5;
  }

  return v5;
}

- (WFShowActionInterfaceDialogRequest)initWithActionClassName:(id)a3 classNamesByType:(id)a4 attribution:(id)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = WFShowActionInterfaceDialogRequest;
  v10 = [(WFDialogRequest *)&v17 initWithAttribution:a5 prompt:0];
  if (v10)
  {
    v11 = [v8 copy];
    actionClassName = v10->_actionClassName;
    v10->_actionClassName = v11;

    v13 = [v9 copy];
    classNamesByType = v10->_classNamesByType;
    v10->_classNamesByType = v13;

    v15 = v10;
  }

  return v10;
}

@end