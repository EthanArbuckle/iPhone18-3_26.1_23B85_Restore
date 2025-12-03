@interface WFUIKitActionInterfaceRequest
- (CGSize)presentationSize;
- (WFUIKitActionInterfaceRequest)initWithActionClassName:(id)name userInterfaceClassName:(id)className presentationSize:(CGSize)size;
- (WFUIKitActionInterfaceRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFUIKitActionInterfaceRequest

- (CGSize)presentationSize
{
  width = self->_presentationSize.width;
  height = self->_presentationSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionClassName = [(WFUIKitActionInterfaceRequest *)self actionClassName];
  [coderCopy encodeObject:actionClassName forKey:@"actionClassName"];

  userInterfaceClassName = [(WFUIKitActionInterfaceRequest *)self userInterfaceClassName];
  [coderCopy encodeObject:userInterfaceClassName forKey:@"userInterfaceClassName"];

  v7 = [MEMORY[0x277CCAE60] value:&self->_presentationSize withObjCType:"{CGSize=dd}"];
  [coderCopy encodeObject:v7 forKey:@"presentationSize"];
}

- (WFUIKitActionInterfaceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionClassName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userInterfaceClassName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentationSize"];

  [v7 wf_CGSizeValue];
  v9 = v8;
  v11 = v10;

  if (v5)
  {
    v12 = v6 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || (v9 == *MEMORY[0x277CBF3A8] ? (v13 = v11 == *(MEMORY[0x277CBF3A8] + 8)) : (v13 = 0), v13))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(WFUIKitActionInterfaceRequest *)self initWithActionClassName:v5 userInterfaceClassName:v6 presentationSize:v9, v11];
    selfCopy = self;
  }

  return selfCopy;
}

- (WFUIKitActionInterfaceRequest)initWithActionClassName:(id)name userInterfaceClassName:(id)className presentationSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  classNameCopy = className;
  v12 = classNameCopy;
  if (nameCopy)
  {
    if (classNameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFUIKitActionInterfaceRequest.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"actionClassName"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFUIKitActionInterfaceRequest.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"userInterfaceClassName"}];

LABEL_3:
  v22.receiver = self;
  v22.super_class = WFUIKitActionInterfaceRequest;
  v13 = [(WFUIKitActionInterfaceRequest *)&v22 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    actionClassName = v13->_actionClassName;
    v13->_actionClassName = v14;

    v16 = [v12 copy];
    userInterfaceClassName = v13->_userInterfaceClassName;
    v13->_userInterfaceClassName = v16;

    v13->_presentationSize.width = width;
    v13->_presentationSize.height = height;
    v18 = v13;
  }

  return v13;
}

@end