@interface SFUIImageRequest
- (SFUIImageRequest)initWithRequestID:(int)d identifier:(id)identifier synchronous:(BOOL)synchronous resultHandler:(id)handler;
@end

@implementation SFUIImageRequest

- (SFUIImageRequest)initWithRequestID:(int)d identifier:(id)identifier synchronous:(BOOL)synchronous resultHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = SFUIImageRequest;
  v12 = [(SFUIImageRequest *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_requestID = d;
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_synchronous = synchronous;
    v16 = [handlerCopy copy];
    resultHandler = v13->_resultHandler;
    v13->_resultHandler = v16;
  }

  return v13;
}

@end