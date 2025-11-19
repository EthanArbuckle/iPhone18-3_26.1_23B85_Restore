@interface SCROBrailleUIAction
- (SCROBrailleUIAction)initWithType:(unint64_t)a3 originator:(id)a4;
- (SCROBrailleUIView)originator;
@end

@implementation SCROBrailleUIAction

- (SCROBrailleUIAction)initWithType:(unint64_t)a3 originator:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SCROBrailleUIAction;
  v7 = [(SCROBrailleUIAction *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    objc_storeWeak(&v7->_originator, v6);
  }

  return v8;
}

- (SCROBrailleUIView)originator
{
  WeakRetained = objc_loadWeakRetained(&self->_originator);

  return WeakRetained;
}

@end