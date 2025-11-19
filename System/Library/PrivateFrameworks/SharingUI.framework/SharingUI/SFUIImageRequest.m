@interface SFUIImageRequest
- (SFUIImageRequest)initWithRequestID:(int)a3 identifier:(id)a4 synchronous:(BOOL)a5 resultHandler:(id)a6;
@end

@implementation SFUIImageRequest

- (SFUIImageRequest)initWithRequestID:(int)a3 identifier:(id)a4 synchronous:(BOOL)a5 resultHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = SFUIImageRequest;
  v12 = [(SFUIImageRequest *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_requestID = a3;
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_synchronous = a5;
    v16 = [v11 copy];
    resultHandler = v13->_resultHandler;
    v13->_resultHandler = v16;
  }

  return v13;
}

@end