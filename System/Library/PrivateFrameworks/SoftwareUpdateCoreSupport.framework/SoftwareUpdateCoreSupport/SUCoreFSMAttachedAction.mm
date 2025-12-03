@interface SUCoreFSMAttachedAction
- (SUCoreFSMAttachedAction)initWithAction:(id)action usingDelegate:(id)delegate withInfoClass:(Class)class;
- (id)actionDelegate;
- (id)description;
@end

@implementation SUCoreFSMAttachedAction

- (id)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (SUCoreFSMAttachedAction)initWithAction:(id)action usingDelegate:(id)delegate withInfoClass:(Class)class
{
  actionCopy = action;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = SUCoreFSMAttachedAction;
  v11 = [(SUCoreFSMAttachedAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fsmAction, action);
    objc_storeWeak(&v12->_actionDelegate, delegateCopy);
    objc_storeStrong(&v12->_eventInfoClass, class);
  }

  return v12;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  fsmAction = [(SUCoreFSMAttachedAction *)self fsmAction];
  actionDelegate = [(SUCoreFSMAttachedAction *)self actionDelegate];
  v6 = [v3 initWithFormat:@"action(%@), delegate(%@), class(%@)", fsmAction, actionDelegate, -[SUCoreFSMAttachedAction eventInfoClass](self, "eventInfoClass")];

  return v6;
}

@end