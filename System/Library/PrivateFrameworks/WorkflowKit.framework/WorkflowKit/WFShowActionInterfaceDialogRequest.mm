@interface WFShowActionInterfaceDialogRequest
- (NSString)catalystInterfaceClassName;
- (WFShowActionInterfaceDialogRequest)initWithActionClassName:(id)name classNamesByType:(id)type attribution:(id)attribution;
- (WFShowActionInterfaceDialogRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFShowActionInterfaceDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFShowActionInterfaceDialogRequest *)self actionClassName:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"actionClassName"];

  classNamesByType = [(WFShowActionInterfaceDialogRequest *)self classNamesByType];
  [coderCopy encodeObject:classNamesByType forKey:@"classNamesByType"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  actionClassName = [(WFShowActionInterfaceDialogRequest *)self actionClassName];
  classNamesByType = [(WFShowActionInterfaceDialogRequest *)self classNamesByType];
  v8 = [v3 stringWithFormat:@"<%@: %p, actionClassName: %@, classNamesByType: %@>", v5, self, actionClassName, classNamesByType];

  return v8;
}

- (WFShowActionInterfaceDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = WFShowActionInterfaceDialogRequest;
  v5 = [(WFDialogRequest *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionClassName"];
    actionClassName = v5->_actionClassName;
    v5->_actionClassName = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"classNamesByType"];
    classNamesByType = v5->_classNamesByType;
    v5->_classNamesByType = v11;

    v13 = v5;
  }

  return v5;
}

- (WFShowActionInterfaceDialogRequest)initWithActionClassName:(id)name classNamesByType:(id)type attribution:(id)attribution
{
  nameCopy = name;
  typeCopy = type;
  v17.receiver = self;
  v17.super_class = WFShowActionInterfaceDialogRequest;
  v10 = [(WFDialogRequest *)&v17 initWithAttribution:attribution prompt:0];
  if (v10)
  {
    v11 = [nameCopy copy];
    actionClassName = v10->_actionClassName;
    v10->_actionClassName = v11;

    v13 = [typeCopy copy];
    classNamesByType = v10->_classNamesByType;
    v10->_classNamesByType = v13;

    v15 = v10;
  }

  return v10;
}

@end