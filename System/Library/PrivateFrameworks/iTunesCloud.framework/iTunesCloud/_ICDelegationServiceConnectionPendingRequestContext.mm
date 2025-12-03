@interface _ICDelegationServiceConnectionPendingRequestContext
- (_ICDelegationServiceConnectionPendingRequestContext)initWithRequest:(id)request responseHandler:(id)handler;
@end

@implementation _ICDelegationServiceConnectionPendingRequestContext

- (_ICDelegationServiceConnectionPendingRequestContext)initWithRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = _ICDelegationServiceConnectionPendingRequestContext;
  v9 = [(_ICDelegationServiceConnectionPendingRequestContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    v11 = MEMORY[0x1B8C781E0](handlerCopy);
    responseHandler = v10->_responseHandler;
    v10->_responseHandler = v11;
  }

  return v10;
}

@end