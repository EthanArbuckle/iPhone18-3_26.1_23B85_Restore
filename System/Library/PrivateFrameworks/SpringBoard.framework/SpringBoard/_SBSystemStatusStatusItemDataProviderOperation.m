@interface _SBSystemStatusStatusItemDataProviderOperation
- (_SBSystemStatusStatusItemDataProviderOperation)initWithEnabling:(BOOL)a3 completion:(id)a4;
@end

@implementation _SBSystemStatusStatusItemDataProviderOperation

- (_SBSystemStatusStatusItemDataProviderOperation)initWithEnabling:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = _SBSystemStatusStatusItemDataProviderOperation;
  v7 = [(_SBSystemStatusStatusItemDataProviderOperation *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_enabling = a3;
    v9 = [v6 copy];
    completion = v8->_completion;
    v8->_completion = v9;
  }

  return v8;
}

@end