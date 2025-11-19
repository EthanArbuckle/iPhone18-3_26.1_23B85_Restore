@interface _SCDAAssertionProxy
- (NSString)description;
- (_SCDAAssertionProxy)initWithImpl:(id)a3 coordinator:(id)a4;
- (void)dealloc;
- (void)relinquishWithContext:(id)a3 options:(unint64_t)a4;
- (void)relinquishWithError:(id)a3 options:(unint64_t)a4;
@end

@implementation _SCDAAssertionProxy

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v4 = [(_SCDAAssertionImpl *)self->_impl uuid];
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kSCDAErrorDomain" code:41 userInfo:0];
  [WeakRetained relinquishAssertionWithUUID:v4 error:v5 options:0];

  v6.receiver = self;
  v6.super_class = _SCDAAssertionProxy;
  [(_SCDAAssertionProxy *)&v6 dealloc];
}

- (void)relinquishWithError:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v7 = [(_SCDAAssertionImpl *)self->_impl uuid];
  [WeakRetained relinquishAssertionWithUUID:v7 error:v6 options:a4];
}

- (void)relinquishWithContext:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v7 = [(_SCDAAssertionImpl *)self->_impl uuid];
  [WeakRetained relinquishAssertionWithUUID:v7 context:v6 options:a4];
}

- (_SCDAAssertionProxy)initWithImpl:(id)a3 coordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _SCDAAssertionProxy;
  v9 = [(_SCDAAssertionProxy *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_impl, a3);
    objc_storeWeak(&v10->_coordinator, v8);
  }

  return v10;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = _SCDAAssertionProxy;
  v4 = [(_SCDAAssertionProxy *)&v8 description];
  v5 = _SCDAAssertionCreateDescriptionOfProperties(self->_impl);
  v6 = [v3 initWithFormat:@"%@ {%@}", v4, v5];

  return v6;
}

@end