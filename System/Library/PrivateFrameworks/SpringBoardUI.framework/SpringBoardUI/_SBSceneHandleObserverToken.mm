@interface _SBSceneHandleObserverToken
- (NSMutableDictionary)owner;
- (_SBSceneHandleObserverToken)initWithOwner:(id)owner;
@end

@implementation _SBSceneHandleObserverToken

- (_SBSceneHandleObserverToken)initWithOwner:(id)owner
{
  ownerCopy = owner;
  v8.receiver = self;
  v8.super_class = _SBSceneHandleObserverToken;
  v5 = [(_SBSceneHandleObserverToken *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owner, ownerCopy);
  }

  return v6;
}

- (NSMutableDictionary)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end