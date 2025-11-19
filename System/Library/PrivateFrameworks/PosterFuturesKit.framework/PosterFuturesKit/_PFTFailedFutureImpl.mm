@interface _PFTFailedFutureImpl
- (_PFTFailedFutureImpl)initWithError:(id)a3;
- (id)resultBeforeDate:(id)a3 error:(id *)a4;
@end

@implementation _PFTFailedFutureImpl

- (_PFTFailedFutureImpl)initWithError:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _PFTFailedFutureImpl;
  v6 = [(_PFTFailedFutureImpl *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
    v8 = v7;
  }

  return v7;
}

- (id)resultBeforeDate:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = self->_error;
  }

  return 0;
}

@end