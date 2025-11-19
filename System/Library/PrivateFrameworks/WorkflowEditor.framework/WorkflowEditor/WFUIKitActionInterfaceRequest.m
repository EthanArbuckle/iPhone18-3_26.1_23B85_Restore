@interface WFUIKitActionInterfaceRequest
- (CGSize)presentationSize;
- (WFUIKitActionInterfaceRequest)initWithActionClassName:(id)a3 userInterfaceClassName:(id)a4 presentationSize:(CGSize)a5;
- (WFUIKitActionInterfaceRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFUIKitActionInterfaceRequest *)self actionClassName];
  [v4 encodeObject:v5 forKey:@"actionClassName"];

  v6 = [(WFUIKitActionInterfaceRequest *)self userInterfaceClassName];
  [v4 encodeObject:v6 forKey:@"userInterfaceClassName"];

  v7 = [MEMORY[0x277CCAE60] value:&self->_presentationSize withObjCType:"{CGSize=dd}"];
  [v4 encodeObject:v7 forKey:@"presentationSize"];
}

- (WFUIKitActionInterfaceRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionClassName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userInterfaceClassName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentationSize"];

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
    v14 = 0;
  }

  else
  {
    self = [(WFUIKitActionInterfaceRequest *)self initWithActionClassName:v5 userInterfaceClassName:v6 presentationSize:v9, v11];
    v14 = self;
  }

  return v14;
}

- (WFUIKitActionInterfaceRequest)initWithActionClassName:(id)a3 userInterfaceClassName:(id)a4 presentationSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"WFUIKitActionInterfaceRequest.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"actionClassName"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"WFUIKitActionInterfaceRequest.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"userInterfaceClassName"}];

LABEL_3:
  v22.receiver = self;
  v22.super_class = WFUIKitActionInterfaceRequest;
  v13 = [(WFUIKitActionInterfaceRequest *)&v22 init];
  if (v13)
  {
    v14 = [v10 copy];
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