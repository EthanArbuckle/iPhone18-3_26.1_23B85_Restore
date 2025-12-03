@interface _PFTFailedFutureImpl
- (_PFTFailedFutureImpl)initWithError:(id)error;
- (id)resultBeforeDate:(id)date error:(id *)error;
@end

@implementation _PFTFailedFutureImpl

- (_PFTFailedFutureImpl)initWithError:(id)error
{
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = _PFTFailedFutureImpl;
  v6 = [(_PFTFailedFutureImpl *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
    v8 = v7;
  }

  return v7;
}

- (id)resultBeforeDate:(id)date error:(id *)error
{
  if (error)
  {
    *error = self->_error;
  }

  return 0;
}

@end