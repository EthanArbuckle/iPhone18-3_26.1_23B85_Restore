@interface WFShowActionInterfaceDialogResponse
- (NSString)description;
- (WFShowActionInterfaceDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFShowActionInterfaceDialogResponse)initWithCoder:(id)coder;
- (WFShowActionInterfaceDialogResponse)initWithListenerEndpoint:(id)endpoint userInterfaceType:(id)type;
- (WFShowActionInterfaceDialogResponse)initWithUnsupported:(BOOL)unsupported;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFShowActionInterfaceDialogResponse

- (WFShowActionInterfaceDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFShowActionInterfaceDialogResponse;
  v5 = [(WFDialogResponse *)&v14 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"listenerEndpoint"];
    v7 = objc_alloc_init(MEMORY[0x1E696B0E0]);
    [(NSXPCListenerEndpoint *)v7 _setEndpoint:v6];
    listenerEndpoint = v5->_listenerEndpoint;
    v5->_listenerEndpoint = v7;
    v9 = v7;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userInterfaceType"];
    userInterfaceType = v5->_userInterfaceType;
    v5->_userInterfaceType = v10;

    v5->_unsupported = [coderCopy decodeBoolForKey:@"unsupported"];
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = WFShowActionInterfaceDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v8 encodeWithBSXPCCoder:coderCopy];
  v5 = [(WFShowActionInterfaceDialogResponse *)self listenerEndpoint:v8.receiver];
  _endpoint = [v5 _endpoint];
  [coderCopy encodeXPCObject:_endpoint forKey:@"listenerEndpoint"];

  userInterfaceType = [(WFShowActionInterfaceDialogResponse *)self userInterfaceType];
  [coderCopy encodeObject:userInterfaceType forKey:@"userInterfaceType"];

  [coderCopy encodeBool:-[WFShowActionInterfaceDialogResponse isUnsupported](self forKey:{"isUnsupported"), @"unsupported"}];
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFShowActionInterfaceDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFShowActionInterfaceDialogResponse *)self listenerEndpoint:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"listenerEndpoint"];

  userInterfaceType = [(WFShowActionInterfaceDialogResponse *)self userInterfaceType];
  [coderCopy encodeObject:userInterfaceType forKey:@"userInterfaceType"];

  [coderCopy encodeBool:-[WFShowActionInterfaceDialogResponse isUnsupported](self forKey:{"isUnsupported"), @"unsupported"}];
}

- (NSString)description
{
  isUnsupported = [(WFShowActionInterfaceDialogResponse *)self isUnsupported];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (isUnsupported)
  {
    v8 = [v4 stringWithFormat:@"<%@: %p, unsupported: YES>", v6, self];
  }

  else
  {
    listenerEndpoint = [(WFShowActionInterfaceDialogResponse *)self listenerEndpoint];
    userInterfaceType = [(WFShowActionInterfaceDialogResponse *)self userInterfaceType];
    v8 = [v4 stringWithFormat:@"<%@: %p, listenerEndpoint: %@, userInterfaceType: %@>", v7, self, listenerEndpoint, userInterfaceType];
  }

  return v8;
}

- (WFShowActionInterfaceDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFShowActionInterfaceDialogResponse;
  v5 = [(WFDialogResponse *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listenerEndpoint"];
    listenerEndpoint = v5->_listenerEndpoint;
    v5->_listenerEndpoint = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userInterfaceType"];
    userInterfaceType = v5->_userInterfaceType;
    v5->_userInterfaceType = v8;

    v5->_unsupported = [coderCopy decodeBoolForKey:@"unsupported"];
    v10 = v5;
  }

  return v5;
}

- (WFShowActionInterfaceDialogResponse)initWithListenerEndpoint:(id)endpoint userInterfaceType:(id)type
{
  endpointCopy = endpoint;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = WFShowActionInterfaceDialogResponse;
  v9 = [(WFDialogResponse *)&v15 initWithCancelled:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_listenerEndpoint, endpoint);
    v11 = [typeCopy copy];
    userInterfaceType = v10->_userInterfaceType;
    v10->_userInterfaceType = v11;

    v13 = v10;
  }

  return v10;
}

- (WFShowActionInterfaceDialogResponse)initWithUnsupported:(BOOL)unsupported
{
  v8.receiver = self;
  v8.super_class = WFShowActionInterfaceDialogResponse;
  v4 = [(WFDialogResponse *)&v8 initWithCancelled:0];
  v5 = v4;
  if (v4)
  {
    v4->_unsupported = unsupported;
    v6 = v4;
  }

  return v5;
}

@end