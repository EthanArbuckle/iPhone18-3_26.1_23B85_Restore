@interface NFAccessoryTag
- (NFAccessoryTag)initWithDelegate:(id)delegate;
- (NFAccessoryTagDelegate)delegate;
@end

@implementation NFAccessoryTag

- (NFAccessoryTag)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = NFAccessoryTag;
  v5 = [(NFAccessoryTag *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (NFAccessoryTagDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end