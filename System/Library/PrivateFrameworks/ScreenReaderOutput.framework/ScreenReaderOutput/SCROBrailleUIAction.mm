@interface SCROBrailleUIAction
- (SCROBrailleUIAction)initWithType:(unint64_t)type originator:(id)originator;
- (SCROBrailleUIView)originator;
@end

@implementation SCROBrailleUIAction

- (SCROBrailleUIAction)initWithType:(unint64_t)type originator:(id)originator
{
  originatorCopy = originator;
  v10.receiver = self;
  v10.super_class = SCROBrailleUIAction;
  v7 = [(SCROBrailleUIAction *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    objc_storeWeak(&v7->_originator, originatorCopy);
  }

  return v8;
}

- (SCROBrailleUIView)originator
{
  WeakRetained = objc_loadWeakRetained(&self->_originator);

  return WeakRetained;
}

@end