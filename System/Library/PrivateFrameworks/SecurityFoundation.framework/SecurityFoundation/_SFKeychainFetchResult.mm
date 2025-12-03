@interface _SFKeychainFetchResult
+ (id)fetchResultWithError:(id)error;
+ (id)fetchResultWithValue:(id)value;
- (_SFKeychainFetchResult)initWithError:(id)error;
- (_SFKeychainFetchResult)initWithValue:(id)value;
@end

@implementation _SFKeychainFetchResult

+ (id)fetchResultWithValue:(id)value
{
  valueCopy = value;
  v5 = [[self alloc] initWithValue:valueCopy];

  return v5;
}

+ (id)fetchResultWithError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] initWithError:errorCopy];

  return v5;
}

- (_SFKeychainFetchResult)initWithValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = _SFKeychainFetchResult;
  v6 = [(_SFKeychainFetchResult *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(SFKeychainFetchResult_Ivars);
    keychainFetchResultInternal = v6->_keychainFetchResultInternal;
    v6->_keychainFetchResultInternal = v7;

    objc_storeStrong(v6->_keychainFetchResultInternal + 2, value);
    *(v6->_keychainFetchResultInternal + 1) = 0;
  }

  return v6;
}

- (_SFKeychainFetchResult)initWithError:(id)error
{
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = _SFKeychainFetchResult;
  v6 = [(_SFKeychainFetchResult *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(SFKeychainFetchResult_Ivars);
    keychainFetchResultInternal = v6->_keychainFetchResultInternal;
    v6->_keychainFetchResultInternal = v7;

    objc_storeStrong(v6->_keychainFetchResultInternal + 3, error);
    *(v6->_keychainFetchResultInternal + 1) = 2;
  }

  return v6;
}

@end