@interface WFShowActionInterfaceDialogResponse
- (NSString)description;
- (WFShowActionInterfaceDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFShowActionInterfaceDialogResponse)initWithCoder:(id)a3;
- (WFShowActionInterfaceDialogResponse)initWithListenerEndpoint:(id)a3 userInterfaceType:(id)a4;
- (WFShowActionInterfaceDialogResponse)initWithUnsupported:(BOOL)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFShowActionInterfaceDialogResponse

- (WFShowActionInterfaceDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFShowActionInterfaceDialogResponse;
  v5 = [(WFDialogResponse *)&v14 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"listenerEndpoint"];
    v7 = objc_alloc_init(MEMORY[0x1E696B0E0]);
    [(NSXPCListenerEndpoint *)v7 _setEndpoint:v6];
    listenerEndpoint = v5->_listenerEndpoint;
    v5->_listenerEndpoint = v7;
    v9 = v7;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userInterfaceType"];
    userInterfaceType = v5->_userInterfaceType;
    v5->_userInterfaceType = v10;

    v5->_unsupported = [v4 decodeBoolForKey:@"unsupported"];
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFShowActionInterfaceDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v8 encodeWithBSXPCCoder:v4];
  v5 = [(WFShowActionInterfaceDialogResponse *)self listenerEndpoint:v8.receiver];
  v6 = [v5 _endpoint];
  [v4 encodeXPCObject:v6 forKey:@"listenerEndpoint"];

  v7 = [(WFShowActionInterfaceDialogResponse *)self userInterfaceType];
  [v4 encodeObject:v7 forKey:@"userInterfaceType"];

  [v4 encodeBool:-[WFShowActionInterfaceDialogResponse isUnsupported](self forKey:{"isUnsupported"), @"unsupported"}];
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFShowActionInterfaceDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v7 encodeWithCoder:v4];
  v5 = [(WFShowActionInterfaceDialogResponse *)self listenerEndpoint:v7.receiver];
  [v4 encodeObject:v5 forKey:@"listenerEndpoint"];

  v6 = [(WFShowActionInterfaceDialogResponse *)self userInterfaceType];
  [v4 encodeObject:v6 forKey:@"userInterfaceType"];

  [v4 encodeBool:-[WFShowActionInterfaceDialogResponse isUnsupported](self forKey:{"isUnsupported"), @"unsupported"}];
}

- (NSString)description
{
  v3 = [(WFShowActionInterfaceDialogResponse *)self isUnsupported];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (v3)
  {
    v8 = [v4 stringWithFormat:@"<%@: %p, unsupported: YES>", v6, self];
  }

  else
  {
    v9 = [(WFShowActionInterfaceDialogResponse *)self listenerEndpoint];
    v10 = [(WFShowActionInterfaceDialogResponse *)self userInterfaceType];
    v8 = [v4 stringWithFormat:@"<%@: %p, listenerEndpoint: %@, userInterfaceType: %@>", v7, self, v9, v10];
  }

  return v8;
}

- (WFShowActionInterfaceDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFShowActionInterfaceDialogResponse;
  v5 = [(WFDialogResponse *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listenerEndpoint"];
    listenerEndpoint = v5->_listenerEndpoint;
    v5->_listenerEndpoint = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userInterfaceType"];
    userInterfaceType = v5->_userInterfaceType;
    v5->_userInterfaceType = v8;

    v5->_unsupported = [v4 decodeBoolForKey:@"unsupported"];
    v10 = v5;
  }

  return v5;
}

- (WFShowActionInterfaceDialogResponse)initWithListenerEndpoint:(id)a3 userInterfaceType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WFShowActionInterfaceDialogResponse;
  v9 = [(WFDialogResponse *)&v15 initWithCancelled:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_listenerEndpoint, a3);
    v11 = [v8 copy];
    userInterfaceType = v10->_userInterfaceType;
    v10->_userInterfaceType = v11;

    v13 = v10;
  }

  return v10;
}

- (WFShowActionInterfaceDialogResponse)initWithUnsupported:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = WFShowActionInterfaceDialogResponse;
  v4 = [(WFDialogResponse *)&v8 initWithCancelled:0];
  v5 = v4;
  if (v4)
  {
    v4->_unsupported = a3;
    v6 = v4;
  }

  return v5;
}

@end