@interface _ICDelegationServiceConnectionPendingRequestContext
- (_ICDelegationServiceConnectionPendingRequestContext)initWithRequest:(id)a3 responseHandler:(id)a4;
@end

@implementation _ICDelegationServiceConnectionPendingRequestContext

- (_ICDelegationServiceConnectionPendingRequestContext)initWithRequest:(id)a3 responseHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _ICDelegationServiceConnectionPendingRequestContext;
  v9 = [(_ICDelegationServiceConnectionPendingRequestContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    v11 = MEMORY[0x1B8C781E0](v8);
    responseHandler = v10->_responseHandler;
    v10->_responseHandler = v11;
  }

  return v10;
}

@end