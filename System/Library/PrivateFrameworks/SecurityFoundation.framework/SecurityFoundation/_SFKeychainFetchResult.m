@interface _SFKeychainFetchResult
+ (id)fetchResultWithError:(id)a3;
+ (id)fetchResultWithValue:(id)a3;
- (_SFKeychainFetchResult)initWithError:(id)a3;
- (_SFKeychainFetchResult)initWithValue:(id)a3;
@end

@implementation _SFKeychainFetchResult

+ (id)fetchResultWithValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithValue:v4];

  return v5;
}

+ (id)fetchResultWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithError:v4];

  return v5;
}

- (_SFKeychainFetchResult)initWithValue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _SFKeychainFetchResult;
  v6 = [(_SFKeychainFetchResult *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(SFKeychainFetchResult_Ivars);
    keychainFetchResultInternal = v6->_keychainFetchResultInternal;
    v6->_keychainFetchResultInternal = v7;

    objc_storeStrong(v6->_keychainFetchResultInternal + 2, a3);
    *(v6->_keychainFetchResultInternal + 1) = 0;
  }

  return v6;
}

- (_SFKeychainFetchResult)initWithError:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _SFKeychainFetchResult;
  v6 = [(_SFKeychainFetchResult *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(SFKeychainFetchResult_Ivars);
    keychainFetchResultInternal = v6->_keychainFetchResultInternal;
    v6->_keychainFetchResultInternal = v7;

    objc_storeStrong(v6->_keychainFetchResultInternal + 3, a3);
    *(v6->_keychainFetchResultInternal + 1) = 2;
  }

  return v6;
}

@end