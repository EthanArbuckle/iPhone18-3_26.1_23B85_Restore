@interface _SBSystemStatusStatusItemDataProviderOperation
- (_SBSystemStatusStatusItemDataProviderOperation)initWithEnabling:(BOOL)enabling completion:(id)completion;
@end

@implementation _SBSystemStatusStatusItemDataProviderOperation

- (_SBSystemStatusStatusItemDataProviderOperation)initWithEnabling:(BOOL)enabling completion:(id)completion
{
  completionCopy = completion;
  v12.receiver = self;
  v12.super_class = _SBSystemStatusStatusItemDataProviderOperation;
  v7 = [(_SBSystemStatusStatusItemDataProviderOperation *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_enabling = enabling;
    v9 = [completionCopy copy];
    completion = v8->_completion;
    v8->_completion = v9;
  }

  return v8;
}

@end